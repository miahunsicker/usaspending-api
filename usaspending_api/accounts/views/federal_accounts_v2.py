from datetime import datetime

from django.db.models import F, Sum
from rest_framework.exceptions import ValidationError
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework_extensions.cache.decorators import cache_response

from usaspending_api.accounts.models import AppropriationAccountBalances
from usaspending_api.common.helpers import fy
from usaspending_api.financial_activities.models import \
    FinancialAccountsByProgramActivityObjectClass


def federal_account_filter(queryset, filter):
    for key, value in filter.items():
        if key == 'object_class':
            pass
        elif key == 'program_activity':
            pass
        elif key == 'time_period':
            pass
    return queryset


class ObjectClassFederalAccountsViewSet(APIView):
    """Returns financial spending data by object class."""

    @cache_response()
    def get(self, request, pk, format=None):
        """Return the view's queryset."""
        # create response
        response = {'results': {}}

        # get federal account id from url
        fa_id = int(pk)

        # get FA row
        fa = FederalAccount.objects.filter(id=fa_id).first()
        if fa is None:
            return Response(response)

        # get tas related to FA
        tas_ids = TreasuryAppropriationAccount.objects.filter(federal_account=fa) \
            .values_list('treasury_account_identifier', flat=True)

        # get fin based on tas, select oc, make distinct values
        financial_account_queryset = \
            FinancialAccountsByProgramActivityObjectClass.objects.filter(treasury_account__in=tas_ids) \
            .select_related('object_class').distinct('object_class')

        # Retrieve only unique major class ids and names
        major_classes = set([(obj.object_class.major_object_class, obj.object_class.major_object_class_name)
                             for obj in financial_account_queryset])
        result = [
            {
                'id': maj[0],
                'name': maj[1],
                'minor_object_class':
                    [
                        {'id': obj[0], 'name': obj[1]}
                        for obj in set([(oc.object_class.object_class, oc.object_class.object_class_name)
                                        for oc in financial_account_queryset
                                        if oc.object_class.major_object_class == maj[0]])
                    ]
            }
            for maj in major_classes
        ]
        return Response({'results': result})


class DescriptionFederalAccountsViewSet(APIView):
    @cache_response()
    def get(self, request, pk, format=None):
        return None


class FiscalYearSnapshotFederalAccountsViewSet(APIView):
    @cache_response()
    def get(self, request, pk, format=None):

        queryset = AppropriationAccountBalances.objects.filter(treasury_account_identifier__federal_account_id=int(
            pk)).filter(final_of_fy=True).filter(submission__reporting_fiscal_year=fy(datetime.today()))
        rq = queryset.first()

        if rq:
            result = {
                "results": {
                    "outlay":
                    rq.gross_outlay_amount_by_tas_cpe,
                    "budget_authority":
                    rq.budget_authority_available_amount_total_cpe,
                    "obligated":
                    rq.obligations_incurred_total_by_tas_cpe,
                    "unobligated":
                    rq.unobligated_balance_cpe,
                    "balance_brought_forward":
                    rq.budget_authority_unobligated_balance_brought_forward_fyb
                    +
                    rq.adjustments_to_unobligated_balance_brought_forward_cpe,
                    "other_budgetary_resources":
                    rq.other_budgetary_resources_amount_cpe,
                    "appropriations":
                    rq.budget_authority_appropriated_amount_cpe
                }
            }
        else:
            result = {
                "results": {
                    "outlay": 0,
                    "budget_authority": 0,
                    "obligated": 0,
                    "unobligated": 0,
                    "balance_brought_forward": 0,
                    "other_budgetary_resources": 0,
                    "appropriations": 0,
                }
            }

        return Response(result)


class SpendingOverTimeFederalAccountsViewSet(APIView):
    @cache_response()
    def post(self, request, pk, format=None):
        # create response
        response = {'results': {}}

        # get federal account id from url
        fa_id = int(pk)

        filters = request["filters"]
        time_period = request["time_period"]

        # get fin based on tas, select oc, make distinct values
        financial_account_queryset = \
            FinancialAccountsByProgramActivityObjectClass.objects.filter(treasury_account__federal_account_id=fa_id)

        filtered_fa = federal_account_filter(financial_account_queryset, filters).aggragete(
            outlay=Sum('gross_outlay_amount_by_tas_cpe'),
            obligations_incurred_filtered=Sum('obligations_incurred_total_by_tas_cpe')
        )

        unfiltered_fa = financial_account_queryset.aggragate(
            obligations_incurred_other=Sum('obligations_incurred_total_by_tas_cpe'),
            unobliged_balance=Sum('unobligated_balance_cpe')
        )

        result = {
            'outlay': filtered_fa['outlay'],                                                      # filter
            'obligations_incurred_filtered': filtered_fa['obligations_incurred_filtered'],        # filter
            'obligations_incurred_other': unfiltered_fa['obligations_incurred_other'],            # no filter
            'unobligated_balance': unfiltered_fa['unobligated_balance']                           # no filter
        }

        return Response({'results': result})


class SpendingByCategoryFederalAccountsViewSet(APIView):
    @cache_response()
    def post(self, request, pk, format=None):

        queryset = FinancialAccountsByProgramActivityObjectClass.objects
        queryset = federal_account_filter(queryset, request.data['filters'])

        if request.data.get('category') == 'program_activity':
            queryset = queryset.annotate(
                id=F('program_activity_id'),
                code=F('program_activity__program_activity_code'),
                name=F('program_activity__program_activity_name'))
        elif request.data.get('category') == 'object_class':
            queryset = queryset.annotate(
                id=F('object_class_id'),
                code=F('object_class__object_class'),
                name=F('object_class__object_class_name'))
        elif request.data.get('category') == 'treasury_account':
            queryset = queryset.annotate(
                id=F('treasury_account_id'),
                code=F('treasury_account__treasury_account_identifier'),
                name=F('treasury_account__tas_rendering_label'))
        else:
            raise ValidationError("category must be one of: program_activity, object_class, treasury_account")

        queryset = queryset.values('id', 'code', 'name').annotate(
            Sum('obligations_incurred_by_program_object_class_cpe'))

        result = {"results": {q['name']: q['obligations_incurred_by_program_object_class_cpe__sum'] for q in queryset}}
        # TODO: should code be included, too?

        return Response(result)


class SpendingByAwardCountFederalAccountsViewSet(APIView):
    @cache_response()
    def get(self, request, pk, format=None):
        return None


class SpendingByAwardFederalAccountsViewSet(APIView):
    @cache_response()
    def get(self, request, pk, format=None):
        return None
