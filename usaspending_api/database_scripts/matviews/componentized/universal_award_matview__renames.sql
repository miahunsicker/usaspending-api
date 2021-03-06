--------------------------------------------------------
-- Created using matview_sql_generator.py             --
--    The SQL definition is stored in a json file     --
--    Look in matview_generator for the code.         --
--                                                    --
--         !!DO NOT DIRECTLY EDIT THIS FILE!!         --
--------------------------------------------------------
ALTER MATERIALIZED VIEW IF EXISTS universal_award_matview RENAME TO universal_award_matview_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_id RENAME TO idx_2b3678a9$379_id_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_category RENAME TO idx_2b3678a9$379_category_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_type RENAME TO idx_2b3678a9$379_type_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_ordered_type RENAME TO idx_2b3678a9$379_ordered_type_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_ordered_type_desc RENAME TO idx_2b3678a9$379_ordered_type_desc_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_ordered_fain RENAME TO idx_2b3678a9$379_ordered_fain_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_ordered_piid RENAME TO idx_2b3678a9$379_ordered_piid_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_total_obligation RENAME TO idx_2b3678a9$379_total_obligation_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_ordered_total_obligation RENAME TO idx_2b3678a9$379_ordered_total_obligation_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_total_obl_bin RENAME TO idx_2b3678a9$379_total_obl_bin_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_total_subsidy_cost RENAME TO idx_2b3678a9$379_total_subsidy_cost_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_total_loan_value RENAME TO idx_2b3678a9$379_total_loan_value_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_ordered_total_subsidy_cost RENAME TO idx_2b3678a9$379_ordered_total_subsidy_cost_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_ordered_total_loan_value RENAME TO idx_2b3678a9$379_ordered_total_loan_value_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_period_of_performance_start_date RENAME TO idx_2b3678a9$379_period_of_performance_start_date_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_period_of_performance_current_end_date RENAME TO idx_2b3678a9$379_period_of_performance_current_end_date_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_gin_recipient_name RENAME TO idx_2b3678a9$379_gin_recipient_name_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_recipient_name RENAME TO idx_2b3678a9$379_recipient_name_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_recipient_unique_id RENAME TO idx_2b3678a9$379_recipient_unique_id_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_parent_recipient_unique_id RENAME TO idx_2b3678a9$379_parent_recipient_unique_id_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_action_date RENAME TO idx_2b3678a9$379_action_date_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_fiscal_year RENAME TO idx_2b3678a9$379_fiscal_year_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_awarding_agency_id RENAME TO idx_2b3678a9$379_awarding_agency_id_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_funding_agency_id RENAME TO idx_2b3678a9$379_funding_agency_id_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_ordered_awarding_toptier_agency_name RENAME TO idx_2b3678a9$379_ordered_awarding_toptier_agency_name_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_ordered_awarding_subtier_agency_name RENAME TO idx_2b3678a9$379_ordered_awarding_subtier_agency_name_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_awarding_toptier_agency_name RENAME TO idx_2b3678a9$379_awarding_toptier_agency_name_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_awarding_subtier_agency_name RENAME TO idx_2b3678a9$379_awarding_subtier_agency_name_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_funding_toptier_agency_name RENAME TO idx_2b3678a9$379_funding_toptier_agency_name_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_funding_subtier_agency_name RENAME TO idx_2b3678a9$379_funding_subtier_agency_name_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_recipient_location_country_code RENAME TO idx_2b3678a9$379_recipient_location_country_code_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_recipient_location_state_code RENAME TO idx_2b3678a9$379_recipient_location_state_code_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_recipient_location_county_code RENAME TO idx_2b3678a9$379_recipient_location_county_code_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_recipient_location_zip5 RENAME TO idx_2b3678a9$379_recipient_location_zip5_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_recipient_location_cong_code RENAME TO idx_2b3678a9$379_recipient_location_cong_code_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_pop_country_code RENAME TO idx_2b3678a9$379_pop_country_code_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_pop_state_code RENAME TO idx_2b3678a9$379_pop_state_code_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_pop_county_code RENAME TO idx_2b3678a9$379_pop_county_code_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_pop_zip5 RENAME TO idx_2b3678a9$379_pop_zip5_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_pop_congressional_code RENAME TO idx_2b3678a9$379_pop_congressional_code_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_cfda_number RENAME TO idx_2b3678a9$379_cfda_number_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_pulled_from RENAME TO idx_2b3678a9$379_pulled_from_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_type_of_contract_pricing RENAME TO idx_2b3678a9$379_type_of_contract_pricing_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_extent_competed RENAME TO idx_2b3678a9$379_extent_competed_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_type_set_aside RENAME TO idx_2b3678a9$379_type_set_aside_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_product_or_service_code RENAME TO idx_2b3678a9$379_product_or_service_code_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_gin_product_or_service_description RENAME TO idx_2b3678a9$379_gin_product_or_service_description_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_naics RENAME TO idx_2b3678a9$379_naics_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_gin_naics_code RENAME TO idx_2b3678a9$379_gin_naics_code_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_gin_naics_description RENAME TO idx_2b3678a9$379_gin_naics_description_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_gin_business_categories RENAME TO idx_2b3678a9$379_gin_business_categories_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_keyword_ts_vector RENAME TO idx_2b3678a9$379_keyword_ts_vector_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_award_ts_vector RENAME TO idx_2b3678a9$379_award_ts_vector_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_recipient_name_ts_vector RENAME TO idx_2b3678a9$379_recipient_name_ts_vector_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_keyword_id RENAME TO idx_2b3678a9$379_keyword_id_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_award_id_string RENAME TO idx_2b3678a9$379_award_id_string_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_compound_psc_fy RENAME TO idx_2b3678a9$379_compound_psc_fy_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_compound_naics_fy RENAME TO idx_2b3678a9$379_compound_naics_fy_old;
ALTER INDEX IF EXISTS idx_2b3678a9$379_compound_cfda_fy RENAME TO idx_2b3678a9$379_compound_cfda_fy_old;

ALTER MATERIALIZED VIEW universal_award_matview_temp RENAME TO universal_award_matview;
ALTER INDEX idx_2b3678a9$379_id_temp RENAME TO idx_2b3678a9$379_id;
ALTER INDEX idx_2b3678a9$379_category_temp RENAME TO idx_2b3678a9$379_category;
ALTER INDEX idx_2b3678a9$379_type_temp RENAME TO idx_2b3678a9$379_type;
ALTER INDEX idx_2b3678a9$379_ordered_type_temp RENAME TO idx_2b3678a9$379_ordered_type;
ALTER INDEX idx_2b3678a9$379_ordered_type_desc_temp RENAME TO idx_2b3678a9$379_ordered_type_desc;
ALTER INDEX idx_2b3678a9$379_ordered_fain_temp RENAME TO idx_2b3678a9$379_ordered_fain;
ALTER INDEX idx_2b3678a9$379_ordered_piid_temp RENAME TO idx_2b3678a9$379_ordered_piid;
ALTER INDEX idx_2b3678a9$379_total_obligation_temp RENAME TO idx_2b3678a9$379_total_obligation;
ALTER INDEX idx_2b3678a9$379_ordered_total_obligation_temp RENAME TO idx_2b3678a9$379_ordered_total_obligation;
ALTER INDEX idx_2b3678a9$379_total_obl_bin_temp RENAME TO idx_2b3678a9$379_total_obl_bin;
ALTER INDEX idx_2b3678a9$379_total_subsidy_cost_temp RENAME TO idx_2b3678a9$379_total_subsidy_cost;
ALTER INDEX idx_2b3678a9$379_total_loan_value_temp RENAME TO idx_2b3678a9$379_total_loan_value;
ALTER INDEX idx_2b3678a9$379_ordered_total_subsidy_cost_temp RENAME TO idx_2b3678a9$379_ordered_total_subsidy_cost;
ALTER INDEX idx_2b3678a9$379_ordered_total_loan_value_temp RENAME TO idx_2b3678a9$379_ordered_total_loan_value;
ALTER INDEX idx_2b3678a9$379_period_of_performance_start_date_temp RENAME TO idx_2b3678a9$379_period_of_performance_start_date;
ALTER INDEX idx_2b3678a9$379_period_of_performance_current_end_date_temp RENAME TO idx_2b3678a9$379_period_of_performance_current_end_date;
ALTER INDEX idx_2b3678a9$379_gin_recipient_name_temp RENAME TO idx_2b3678a9$379_gin_recipient_name;
ALTER INDEX idx_2b3678a9$379_recipient_name_temp RENAME TO idx_2b3678a9$379_recipient_name;
ALTER INDEX idx_2b3678a9$379_recipient_unique_id_temp RENAME TO idx_2b3678a9$379_recipient_unique_id;
ALTER INDEX idx_2b3678a9$379_parent_recipient_unique_id_temp RENAME TO idx_2b3678a9$379_parent_recipient_unique_id;
ALTER INDEX idx_2b3678a9$379_action_date_temp RENAME TO idx_2b3678a9$379_action_date;
ALTER INDEX idx_2b3678a9$379_fiscal_year_temp RENAME TO idx_2b3678a9$379_fiscal_year;
ALTER INDEX idx_2b3678a9$379_awarding_agency_id_temp RENAME TO idx_2b3678a9$379_awarding_agency_id;
ALTER INDEX idx_2b3678a9$379_funding_agency_id_temp RENAME TO idx_2b3678a9$379_funding_agency_id;
ALTER INDEX idx_2b3678a9$379_ordered_awarding_toptier_agency_name_temp RENAME TO idx_2b3678a9$379_ordered_awarding_toptier_agency_name;
ALTER INDEX idx_2b3678a9$379_ordered_awarding_subtier_agency_name_temp RENAME TO idx_2b3678a9$379_ordered_awarding_subtier_agency_name;
ALTER INDEX idx_2b3678a9$379_awarding_toptier_agency_name_temp RENAME TO idx_2b3678a9$379_awarding_toptier_agency_name;
ALTER INDEX idx_2b3678a9$379_awarding_subtier_agency_name_temp RENAME TO idx_2b3678a9$379_awarding_subtier_agency_name;
ALTER INDEX idx_2b3678a9$379_funding_toptier_agency_name_temp RENAME TO idx_2b3678a9$379_funding_toptier_agency_name;
ALTER INDEX idx_2b3678a9$379_funding_subtier_agency_name_temp RENAME TO idx_2b3678a9$379_funding_subtier_agency_name;
ALTER INDEX idx_2b3678a9$379_recipient_location_country_code_temp RENAME TO idx_2b3678a9$379_recipient_location_country_code;
ALTER INDEX idx_2b3678a9$379_recipient_location_state_code_temp RENAME TO idx_2b3678a9$379_recipient_location_state_code;
ALTER INDEX idx_2b3678a9$379_recipient_location_county_code_temp RENAME TO idx_2b3678a9$379_recipient_location_county_code;
ALTER INDEX idx_2b3678a9$379_recipient_location_zip5_temp RENAME TO idx_2b3678a9$379_recipient_location_zip5;
ALTER INDEX idx_2b3678a9$379_recipient_location_cong_code_temp RENAME TO idx_2b3678a9$379_recipient_location_cong_code;
ALTER INDEX idx_2b3678a9$379_pop_country_code_temp RENAME TO idx_2b3678a9$379_pop_country_code;
ALTER INDEX idx_2b3678a9$379_pop_state_code_temp RENAME TO idx_2b3678a9$379_pop_state_code;
ALTER INDEX idx_2b3678a9$379_pop_county_code_temp RENAME TO idx_2b3678a9$379_pop_county_code;
ALTER INDEX idx_2b3678a9$379_pop_zip5_temp RENAME TO idx_2b3678a9$379_pop_zip5;
ALTER INDEX idx_2b3678a9$379_pop_congressional_code_temp RENAME TO idx_2b3678a9$379_pop_congressional_code;
ALTER INDEX idx_2b3678a9$379_cfda_number_temp RENAME TO idx_2b3678a9$379_cfda_number;
ALTER INDEX idx_2b3678a9$379_pulled_from_temp RENAME TO idx_2b3678a9$379_pulled_from;
ALTER INDEX idx_2b3678a9$379_type_of_contract_pricing_temp RENAME TO idx_2b3678a9$379_type_of_contract_pricing;
ALTER INDEX idx_2b3678a9$379_extent_competed_temp RENAME TO idx_2b3678a9$379_extent_competed;
ALTER INDEX idx_2b3678a9$379_type_set_aside_temp RENAME TO idx_2b3678a9$379_type_set_aside;
ALTER INDEX idx_2b3678a9$379_product_or_service_code_temp RENAME TO idx_2b3678a9$379_product_or_service_code;
ALTER INDEX idx_2b3678a9$379_gin_product_or_service_description_temp RENAME TO idx_2b3678a9$379_gin_product_or_service_description;
ALTER INDEX idx_2b3678a9$379_naics_temp RENAME TO idx_2b3678a9$379_naics;
ALTER INDEX idx_2b3678a9$379_gin_naics_code_temp RENAME TO idx_2b3678a9$379_gin_naics_code;
ALTER INDEX idx_2b3678a9$379_gin_naics_description_temp RENAME TO idx_2b3678a9$379_gin_naics_description;
ALTER INDEX idx_2b3678a9$379_gin_business_categories_temp RENAME TO idx_2b3678a9$379_gin_business_categories;
ALTER INDEX idx_2b3678a9$379_keyword_ts_vector_temp RENAME TO idx_2b3678a9$379_keyword_ts_vector;
ALTER INDEX idx_2b3678a9$379_award_ts_vector_temp RENAME TO idx_2b3678a9$379_award_ts_vector;
ALTER INDEX idx_2b3678a9$379_recipient_name_ts_vector_temp RENAME TO idx_2b3678a9$379_recipient_name_ts_vector;
ALTER INDEX idx_2b3678a9$379_keyword_id_temp RENAME TO idx_2b3678a9$379_keyword_id;
ALTER INDEX idx_2b3678a9$379_award_id_string_temp RENAME TO idx_2b3678a9$379_award_id_string;
ALTER INDEX idx_2b3678a9$379_compound_psc_fy_temp RENAME TO idx_2b3678a9$379_compound_psc_fy;
ALTER INDEX idx_2b3678a9$379_compound_naics_fy_temp RENAME TO idx_2b3678a9$379_compound_naics_fy;
ALTER INDEX idx_2b3678a9$379_compound_cfda_fy_temp RENAME TO idx_2b3678a9$379_compound_cfda_fy;
