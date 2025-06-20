IF OBJECT ID ('bronze.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info (
	cst_id INT,
	cst_key VARCHAR(50),
	cst_firstname VARCHAR(50),
	cst_lastname VARCHAR(50),
	cst_material_status VARCHAR (50),
	cst_gndr VARCHAR(50),
	cst_create_date DATE
);

IF OBJECT ID ('bronze.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE bronze.crm_cust_info;
-- Create Table 
CREATE TABLE bronze.crm_prd_info (
	prd_id 			INT,
	prd_key 		VARCHAR(50),
	prd_nm 			VARCHAR(50),
	prd_cost 		INT,
	prd_line 		VARCHAR (50),
	prd_start_dt 	DATE,
	prd_end_dt 		DATE
);

IF OBJECT ID ('bronze.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE bronze.crm_sales_details;
--Create Table
CREATE TABLE bronze.crm_sales_details (
	sales_details 	VARCHAR(50),
	sls_prd_key 	VARCHAR(50),
	sls_cust_id 	INT,
	sls_order_dt 	INT,
	sls_ship_dt 	INT,
	sls_due_dt 		INT,
	sls_sales 		INT,
	sls_quantity 	INT,
	sls_price 		INT
);

IF OBJECT ID ('bronze.erp_loc_a101', 'U') IS NOT NULL
	DROP TABLE bronze.erp_loc_a101;
--Create Table
CREATE TABLE bronze.erp_loc_a101 (
	CID 	VARCHAR(50),
	CNTRY 	VARCHAR(50)
);

IF OBJECT ID ('bronze.erp_cust_az12', 'U') IS NOT NULL
	DROP TABLE bronze.erp_cust_az12;
-- Create Table 
CREATE TABLE bronze.erp_cust_az12 (
	CID 	VARCHAR(50),
	BDATE 	DATE,
	GEN 	VARCHAR(50)
);

IF OBJECT ID ('bronze.erp_px_catg1v2', 'U') IS NOT NULL
	DROP TABLE bronze.erp_px_catg1v2;
-- Create Table 
CREATE TABLE bronze.erp_px_catg1v2 (
	ID 				VARCHAR(50),
	CAT 			VARCHAR(50),
	SUBCAT 			VARCHAR(50),
	MAINTENANCE 	VARCHAR(50)
);