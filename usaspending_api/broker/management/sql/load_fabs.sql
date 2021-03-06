DROP TABLE IF EXISTS transaction_fabs_new;

CREATE TABLE transaction_fabs_new AS
(

    SELECT
        *
    FROM
        dblink ('broker_server', '(
            SELECT
                published_award_financial_assistance_id,
                NULLIF(action_date, '''') AS action_date,
                UPPER(action_type) AS action_type,
                UPPER(assistance_type) AS assistance_type,
                UPPER(award_description) AS award_description,
                UPPER(awardee_or_recipient_legal) AS awardee_or_recipient_legal,
                UPPER(awardee_or_recipient_uniqu) AS awardee_or_recipient_uniqu,
                UPPER(awarding_agency_code) AS awarding_agency_code,
                UPPER(awarding_office_code) AS awarding_office_code,
                UPPER(awarding_sub_tier_agency_c) AS awarding_sub_tier_agency_c,
                UPPER(award_modification_amendme) AS award_modification_amendme,
                UPPER(business_funds_indicator) AS business_funds_indicator,
                UPPER(business_types) AS business_types,
                UPPER(cfda_number) AS cfda_number,
                UPPER(correction_late_delete_ind) AS correction_late_delete_ind,
                face_value_loan_guarantee,
                UPPER(fain) AS fain,
                federal_action_obligation,
                UPPER(fiscal_year_and_quarter_co) AS fiscal_year_and_quarter_co,
                UPPER(funding_agency_code) AS funding_agency_code,
                UPPER(funding_office_code) AS funding_office_code,
                UPPER(funding_sub_tier_agency_co) AS funding_sub_tier_agency_co,
                UPPER(legal_entity_address_line1) AS legal_entity_address_line1,
                UPPER(legal_entity_address_line2) AS legal_entity_address_line2,
                UPPER(legal_entity_address_line3) AS legal_entity_address_line3,
                UPPER(legal_entity_country_code) AS legal_entity_country_code,
                UPPER(legal_entity_foreign_city) AS legal_entity_foreign_city,
                UPPER(legal_entity_foreign_posta) AS legal_entity_foreign_posta,
                UPPER(legal_entity_foreign_provi) AS legal_entity_foreign_provi,
                UPPER(legal_entity_zip5) AS legal_entity_zip5,
                UPPER(legal_entity_zip_last4) AS legal_entity_zip_last4,
                non_federal_funding_amount,
                original_loan_subsidy_cost,
                UPPER(period_of_performance_curr) AS period_of_performance_curr,
                UPPER(period_of_performance_star) AS period_of_performance_star,
                UPPER(place_of_performance_code) AS place_of_performance_code,
                UPPER(place_of_performance_congr) AS place_of_performance_congr,
                UPPER(place_of_perform_country_c) AS place_of_perform_country_c,
                UPPER(place_of_performance_forei) AS place_of_performance_forei,
                UPPER(place_of_performance_zip4a) AS place_of_performance_zip4a,
                record_type,
                UPPER(sai_number) AS sai_number,
                UPPER(uri) AS uri,
                UPPER(legal_entity_congressional) AS legal_entity_congressional,
                UPPER(total_funding_amount) AS total_funding_amount,
                UPPER(cfda_title) AS cfda_title,
                UPPER(awarding_agency_name) AS awarding_agency_name,
                UPPER(awarding_sub_tier_agency_n) AS awarding_sub_tier_agency_n,
                UPPER(funding_agency_name) AS funding_agency_name,
                UPPER(funding_sub_tier_agency_na) AS funding_sub_tier_agency_na,
                is_historical,
                UPPER(place_of_perform_county_na) AS place_of_perform_county_na,
                UPPER(place_of_perform_state_nam) AS place_of_perform_state_nam,
                UPPER(place_of_performance_city) AS place_of_performance_city,
                UPPER(legal_entity_city_name) AS legal_entity_city_name,
                UPPER(legal_entity_county_code) AS legal_entity_county_code,
                UPPER(legal_entity_county_name) AS legal_entity_county_name,
                UPPER(legal_entity_state_code) AS legal_entity_state_code,
                UPPER(legal_entity_state_name) AS legal_entity_state_name,
                modified_at,
                UPPER(afa_generated_unique) AS afa_generated_unique,
                is_active,
                UPPER(legal_entity_country_name) AS legal_entity_country_name,
                UPPER(place_of_perform_country_n) AS place_of_perform_country_n,
                UPPER(place_of_perform_county_co) AS place_of_perform_county_co,
                UPPER(awarding_office_name) AS awarding_office_name,
                UPPER(funding_office_name) AS funding_office_name,
                UPPER(legal_entity_city_code) AS legal_entity_city_code,
                UPPER(legal_entity_foreign_descr) AS legal_entity_foreign_descr,
                submission_id,
                UPPER(place_of_perfor_state_code) AS place_of_perfor_state_code,
                UPPER(place_of_performance_zip5) AS place_of_performance_zip5,
                UPPER(place_of_perform_zip_last4) AS place_of_perform_zip_last4,
                created_at,
                updated_at
            FROM published_award_financial_assistance
            WHERE is_active = True
        )') AS transaction_assistance
    (
        published_award_financial_assistance_id integer,
        action_date text,
        action_type text,
        assistance_type text,
        award_description text,
        awardee_or_recipient_legal text,
        awardee_or_recipient_uniqu text,
        awarding_agency_code text,
        awarding_office_code text,
        awarding_sub_tier_agency_c text,
        award_modification_amendme text,
        business_funds_indicator text,
        business_types text,
        cfda_number text,
        correction_late_delete_ind text,
        face_value_loan_guarantee numeric,
        fain text,
        federal_action_obligation numeric,
        fiscal_year_and_quarter_co text,
        funding_agency_code text,
        funding_office_code text,
        funding_sub_tier_agency_co text,
        legal_entity_address_line1 text,
        legal_entity_address_line2 text,
        legal_entity_address_line3 text,
        legal_entity_country_code text,
        legal_entity_foreign_city text,
        legal_entity_foreign_posta text,
        legal_entity_foreign_provi text,
        legal_entity_zip5 text,
        legal_entity_zip_last4 text,
        non_federal_funding_amount numeric,
        original_loan_subsidy_cost numeric,
        period_of_performance_curr text,
        period_of_performance_star text,
        place_of_performance_code text,
        place_of_performance_congr text,
        place_of_perform_country_c text,
        place_of_performance_forei text,
        place_of_performance_zip4a text,
        record_type integer,
        sai_number text,
        uri text,
        legal_entity_congressional text,
        total_funding_amount text,
        cfda_title text,
        awarding_agency_name text,
        awarding_sub_tier_agency_n text,
        funding_agency_name text,
        funding_sub_tier_agency_na text,
        is_historical boolean,
        place_of_perform_county_na text,
        place_of_perform_state_nam text,
        place_of_performance_city text,
        legal_entity_city_name text,
        legal_entity_county_code text,
        legal_entity_county_name text,
        legal_entity_state_code text,
        legal_entity_state_name text,
        modified_at timestamp without time zone,
        afa_generated_unique text,
        is_active boolean,
        legal_entity_country_name text,
        place_of_perform_country_n text,
        place_of_perform_county_co text,
        awarding_office_name text,
        funding_office_name text,
        legal_entity_city_code text,
        legal_entity_foreign_descr text,
        submission_id numeric,
        place_of_perfor_state_code text,
        place_of_performance_zip5 text,
        place_of_perform_zip_last4 text,
        created_at timestamp without time zone,
        updated_at timestamp without time zone
    )
);