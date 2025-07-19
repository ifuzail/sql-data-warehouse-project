-- COPY work only with absolute path

BEGIN;

-- CRM SOURCE FILES EXTRACTION

TRUNCATE TABLE bronze.crm_cust_info;
COPY bronze.crm_cust_info FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_crm/cust_info.csv' DELIMITER ',' CSV HEADER;

TRUNCATE TABLE bronze.crm_prd_info;
COPY bronze.crm_prd_info FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_crm/prd_info.csv' DELIMITER ',' CSV HEADER;

TRUNCATE TABLE bronze.crm_sales_details;
COPY bronze.crm_sales_details FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_crm/sales_details.csv' DELIMITER ',' CSV HEADER;

-- ERP SOURCE FILES EXTRACTION

TRUNCATE TABLE bronze.erp_loc_a101;
COPY bronze.erp_loc_a101 FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_erp/CUST_AZ12.csv' DELIMITER ',' CSV HEADER;

TRUNCATE TABLE bronze.erp_cust_az12;
COPY bronze.erp_cust_az12 FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_erp/LOC_A101.csv' DELIMITER ',' CSV HEADER;

TRUNCATE TABLE bronze.erp_px_cat_g1v2;
COPY bronze.erp_px_cat_g1v2 FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_erp/PX_CAT_G1V2.csv' DELIMITER ',' CSV HEADER;

COMMIT;

-- use \copy to full load csv files from client side/local use

TRUNCATE TABLE bronze.crm_cust_info;
\copy bronze.crm_cust_info FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_crm/cust_info.csv' DELIMITER ',' CSV HEADER;

TRUNCATE TABLE bronze.crm_prd_info;
\copy bronze.crm_prd_info FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_crm/prd_info.csv' DELIMITER ',' CSV HEADER;

TRUNCATE TABLE bronze.crm_sales_details;
\copy bronze.crm_sales_details FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_crm/sales_details.csv' DELIMITER ',' CSV HEADER;

-- ERP SOURCE FILES EXTRACTION

TRUNCATE TABLE bronze.erp_loc_a101;
\copy bronze.erp_loc_a101 FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_erp/CUST_AZ12.csv' DELIMITER ',' CSV HEADER;

TRUNCATE TABLE bronze.erp_cust_az12;
\copy bronze.erp_cust_az12 FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_erp/LOC_A101.csv' DELIMITER ',' CSV HEADER;

TRUNCATE TABLE bronze.erp_px_cat_g1v2;
\copy bronze.erp_px_cat_g1v2 FROM '/home/fuzail/Documents/dhw-project/dwh-project/datasets/source_erp/PX_CAT_G1V2.csv' DELIMITER ',' CSV HEADER;
