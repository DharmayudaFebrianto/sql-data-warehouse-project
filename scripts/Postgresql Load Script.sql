CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN
	-- copy csv dataset (crm_cust_info) from local computer to datawarehouse
	TRUNCATE TABLE bronze.crm_cust_info;
	
	COPY bronze.crm_cust_info
	FROM '/Users/Documents/Vs-Code Project/Data Warehouse Project/sql-data-warehouse-project/datasets/source_crm/cust_info.csv'
	DELIMITER ','
	CSV HEADER;
	
	
	-- copy using PSQL Tools
	-- (\copy bronze.crm_prd_info FROM '/Users/Documents/Vs-Code Project/Data Warehouse Project/sql-data-warehouse-project/datasets/source_crm/prd_info.csv' DELIMITER ',' CSV HEADER;)
	TRUNCATE TABLE bronze.crm_prd_info;
	
	COPY bronze.crm_prd_info
	FROM '/Users/Documents/Vs-Code Project/Data Warehouse Project/sql-data-warehouse-project/datasets/source_crm/prd_info.csv'
	DELIMITER ','
	CSV HEADER;
	
	
	-- Copy using PSQL Tools
	-- (\copy bronze.crm_sales_details FROM '/Users/Documents/Vs-Code Project/Data Warehouse Project/sql-data-warehouse-project/datasets/source_crm/sales_details.csv' DELIMITER ',' CSV HEADER;)
	TRUNCATE TABLE bronze.crm_sales_details;
	
	COPY bronze.crm_sales_details
	FROM '/Users/Documents/Vs-Code Project/Data Warehouse Project/sql-data-warehouse-project/datasets/source_crm/sales_details.csv'
	DELIMITER ','
	CSV HEADER;
	
	
	-- Copy using PSQL Tools
	-- (\copy bronze.erp_cust_az12 FROM '/Users/Documents/Vs-Code Project/Data Warehouse Project/sql-data-warehouse-project/datasets/source_erp/CUST_AZ12.csv' DELIMITER ',' CSV HEADER;)
	TRUNCATE TABLE bronze.erp_cust_az12;
	
	COPY bronze.erp_cust_az12
	FROM '/Users/Documents/Vs-Code Project/Data Warehouse Project/sql-data-warehouse-project/datasets/source_erp/CUST_AZ12.csv'
	DELIMITER ','
	CSV HEADER;
	
	
	-- Copy using PSQL Tools
	-- (\copy bronze.erp_loc_a101 FROM '/Users/Documents/Vs-Code Project/Data Warehouse Project/sql-data-warehouse-project/datasets/source_erp/LOC_A101.csv' DELIMITER ',' CSV HEADER;)
	TRUNCATE TABLE bronze.erp_loc_a101;
	
	COPY bronze.erp_loc_a101
	FROM '/Users/Documents/Vs-Code Project/Data Warehouse Project/sql-data-warehouse-project/datasets/source_erp/LOC_A101.csv'
	DELIMITER ','
	CSV HEADER;
	
	
	-- Copy using PSQL Tools
	-- (\copy bronze.erp_px_catg1v2 FROM '/Users/Documents/Vs-Code Project/Data Warehouse Project/sql-data-warehouse-project/datasets/source_erp/PX_CAT_G1V2.csv' DELIMITER ',' CSV HEADER;)
	TRUNCATE TABLE bronze.erp_px_catg1v2;
	
	COPY bronze.erp_px_catg1v2
	FROM '/Users/Documents/Vs-Code Project/Data Warehouse Project/sql-data-warehouse-project/datasets/source_erp/PX_CAT_G1V2.csv'
	DELIMITER ','
	CSV HEADER;
END
