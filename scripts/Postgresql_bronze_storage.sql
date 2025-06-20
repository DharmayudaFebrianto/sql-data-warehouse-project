-- Menghapus prosedur jika sudah ada
DROP PROCEDURE IF EXISTS bronze.load_bronze;

-- Membuat prosedur baru
CREATE PROCEDURE bronze.load_bronze()
LANGUAGE plpgsql AS
$$
BEGIN
    -- Menyalin data CSV ke dalam tabel bronze.crm_cust_info
    TRUNCATE TABLE bronze.crm_cust_info;
    COPY bronze.crm_cust_info
    FROM '/tmp/source_crm/cust_info.csv'
    DELIMITER ','
    CSV HEADER;

    -- Menyalin data CSV ke dalam tabel bronze.crm_prd_info
    TRUNCATE TABLE bronze.crm_prd_info;
    COPY bronze.crm_prd_info
    FROM '/tmp/source_crm/prd_info.csv'
    DELIMITER ','
    CSV HEADER;

    -- Menyalin data CSV ke dalam tabel bronze.crm_sales_details
    TRUNCATE TABLE bronze.crm_sales_details;
    COPY bronze.crm_sales_details
    FROM '/tmp/source_crm/sales_details.csv'
    DELIMITER ','
    CSV HEADER;

    -- Menyalin data CSV ke dalam tabel bronze.erp_cust_az12
    TRUNCATE TABLE bronze.erp_cust_az12;
    COPY bronze.erp_cust_az12
    FROM '/tmp/source_erp/CUST_AZ12.csv'
    DELIMITER ','
    CSV HEADER;

    -- Menyalin data CSV ke dalam tabel bronze.erp_loc_a101
    TRUNCATE TABLE bronze.erp_loc_a101;
    COPY bronze.erp_loc_a101
    FROM '/tmp/source_erp/LOC_A101.csv'
    DELIMITER ','
    CSV HEADER;

    -- Menyalin data CSV ke dalam tabel bronze.erp_px_catg1v2
    TRUNCATE TABLE bronze.erp_px_catg1v2;
    COPY bronze.erp_px_catg1v2
    FROM '/tmp/source_erp/PX_CAT_G1V2.csv'
    DELIMITER ','
    CSV HEADER;

END;
$$;
