


use Datawarehouses
go

IF OBJECT_ID('silver.crm_customer', 'U') IS NOT NULL 
    DROP TABLE silver.crm_customer;
create
GO 
create table  silver.crm_customercst_id
	(
	cst_id		int,
	cst_key				nvarchar(50),
	cst_firstname		nvarchar(50),
	cst_lastname		nvarchar(50),
	cst_materialstatus  nvarchar(50),
	cst_gndr			nvarchar(50),
	
	cst_create_date     DATE,
    dwh_create_date     DATETIME2 DEFAULT GETDATE()
	);
GO

IF OBJECT_ID('silver.crm_product', 'U') IS NOT NULL 
    DROP TABLE silver.crm_product;
GO 
create TABLE silver.crm_product
	(
	prd_id		 int,
	cat_id nvarchar(50),
	prd_key		 nvarchar(50),
	prd_name	 nvarchar(50),
	prd_cost	 int ,
	prd_line	 nvarchar(50),
	prd_start_dt DATE,
	prd_end_date DATE,
	dwh_create_date     DATETIME2 DEFAULT GETDATE()
	);
GO

IF OBJECT_ID('silver.crm_sale', 'U') IS NOT NULL 
    DROP TABLE silver.crm_sale;
GO 
create TABLE silver.crm_sale
	(
	sls_ord_num	  nvarchar(50),
	sls_prd_key	  nvarchar(50),
	sls_cust_id	  int,
	sls_order_dt  date,
	sls_ship_dt   date,
	sls_due_dt    date,
	sls_sales	  int,
	sls_quantity  int,
	sls_price     int,
	dwh_create_date     DATETIME2 DEFAULT GETDATE()
	);
GO

IF OBJECT_ID('silver.erp_loc_a101', 'U') IS NOT NULL 
    DROP TABLE silver.erp_loc_a101;
GO 
create TABLE silver.erp_loc_a101
	(
	cid	   nvarchar(50),
	cntry   nvarchar(50),
	dwh_create_date     DATETIME2 DEFAULT GETDATE()
	);
GO

IF OBJECT_ID('silver.erp_cust_az12', 'U') IS NOT NULL 
    DROP TABLE silver.erp_cust_az12;
GO 
CREATE TABLE silver.erp_cust_az12 
	(
    cid    NVARCHAR(50),
    bdate  DATE,
    gen    NVARCHAR(50),
	dwh_create_date     DATETIME2 DEFAULT GETDATE()
	);
GO

IF OBJECT_ID('silver.erp_px_cat_g1v2', 'U') IS NOT NULL 
    DROP TABLE silver.erp_px_cat_g1v2;
GO 
create TABLE silver.erp_px_cat_g1v2
	(
	id				nvarchar(50),
	cat				nvarchar(50),
	subcat			nvarchar(50),
	maintenance 	nvarchar(50),
	dwh_create_date     DATETIME2 DEFAULT GETDATE()
	);
GO