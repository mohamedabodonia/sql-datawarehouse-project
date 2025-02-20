/*
1*OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL

OBJECT_ID('bronze.crm_cust_info', 'U') checks if the table bronze.crm_cust_info exists.
'U' specifies that we are checking for a User Table (not a view, procedure, etc.).
If the result is NOT NULL, that means the table exists.

2* DROP TABLE bronze.crm_cust_info;
If the table exists, it will be deleted from the database.
This prevents issues like trying to create a table that already exists.

3* GO (Optional Statement)
GO is a batch separator in SQL Server (not standard SQL).
It ensures the previous statements are executed before proceeding with new commands.
*/



use Datawarehouses
go

IF OBJECT_ID('bronze.crm_customer', 'U') IS NOT NULL 
    DROP TABLE bronze.crm_customer;
GO 

create table bronze.crm_customer
	(
	cst_id				int,
	cst_key				nvarchar(50),
	cst_firstname		nvarchar(50),
	cst_lastname		nvarchar(50),
	cst_materialstatus  nvarchar(50),
	cst_gndr			nvarchar(50),
	cst_crearedate		date 
	);
GO

IF OBJECT_ID('bronze.crm_product', 'U') IS NOT NULL 
    DROP TABLE bronze.crm_product;
GO 
create TABLE bronze.crm_product
	(
	prd_id		 int,
	prd_key		 nvarchar(50),
	prd_name	 nvarchar(50),
	prd_cost	 int ,
	prd_line	 nvarchar(50),
	prd_start_dt datetime ,
	prd_end_date datetime 
	);
GO

IF OBJECT_ID('bronze.crm_sales', 'U') IS NOT NULL 
    DROP TABLE bronze.crm_sales;
GO 
create TABLE bronze.crm_sales
	(
	sls_ord_num	  nvarchar(50),
	sls_prd_key	  nvarchar(50),
	sls_cust_id	  int,
	sls_order_dt  int,
	sls_ship_dt   int,
	sls_due_dt    int,
	sls_sales	  int,
	sls_quantity  int,
	sls_price     int
	);
GO

IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL 
    DROP TABLE bronze.erp_loc_a101;
GO 
create TABLE bronze.erp_loc_a101
	(
	cid	   nvarchar(50),
	cntry   nvarchar(50)
	);
GO

IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL 
    DROP TABLE bronze.erp_cust_az12;
GO 
CREATE TABLE bronze.erp_cust_az12 
	(
    cid    NVARCHAR(50),
    bdate  DATE,
    gen    NVARCHAR(50)
	);
GO

IF OBJECT_ID('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL 
    DROP TABLE bronze.erp_px_cat_g1v2;
GO 
create TABLE bronze.erp_px_cat_g1v2
	(
	id				nvarchar(50),
	cat				nvarchar(50),
	subcat			nvarchar(50),
	maintenance 	nvarchar(50)
	);
GO
