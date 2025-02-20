CREATE or ALTER PROCEDURE bronze.load_bronze as
BEGIN
	  begin try

		PRINT '================================================';
		PRINT 'Loading Bronze Layer';
		
		PRINT 'Loading CRM Tables';
		PRINT '================================================';



		--truncate data if exsist on table
		PRINT '>> Truncating Table: bronze.crm_customer';
		truncate table bronze.crm_customer;

		PRINT '>> Inserting Data Into: bronze.crm_customer';
		bulk insert bronze.crm_customer
		from 'F:\Data Engineering project\DataWarehouse with Baraa\Dataset\crm\cust_info.csv'
		with (
		firstrow =2,
		fieldterminator =',',
		tablock

		);

		--select count(*) from bronze.crm_customer;

		------------------------------------------product_info Load-------------------------------
	
		PRINT '>> Truncating Table: bronze.crm_product';
		truncate table bronze.crm_product;

		PRINT '>> Inserting Data Into: bronze.crm_product';
		bulk insert bronze.crm_product
		from 'F:\Data Engineering project\DataWarehouse with Baraa\Dataset\crm\prd_info.csv'
		with (
		firstrow =2,
		fieldterminator =',',
		tablock

		);

		--select count(*) from bronze.crm_product;
		-------------------------------------------sales_details Load--------------------------------------

		PRINT '>> Truncating Table: bronze.crm_sales';
		truncate table bronze.crm_sales;

		PRINT '>> Inserting Data Into: bronze.crm_sales';
		bulk insert bronze.crm_sales
		from 'F:\Data Engineering project\DataWarehouse with Baraa\Dataset\crm\sales_details.csv'
		with (
		firstrow =2,
		fieldterminator =',',
		tablock

		);

		--select count(*) from bronze.crm_sales;

		------------------------------------erp_loc_a101 Load-------------------------------------------------------
		PRINT '>> Truncating Table: bronze.erp_loc_a101';
		truncate table bronze.erp_loc_a101;

		PRINT '>> Inserting Data Into: bronze.erp_loc_a101';
		bulk insert bronze.erp_loc_a101
		from 'F:\Data Engineering project\DataWarehouse with Baraa\Dataset\ERP\LOC_A101.csv'
		with (
		firstrow =2,
		fieldterminator =',',
		tablock
		);

		--select count(*) from bronze.erp_loc_a101;

		------------------------------------CUST_AZ12 Load-------------------------------------------------------
		PRINT '>> Truncating Table: bronze.erp_cust_az12';
		truncate table bronze.erp_cust_az12;

		PRINT '>> Inserting Data Into: bronze.erp_cust_az12';
		bulk insert bronze.erp_cust_az12
		from 'F:\Data Engineering project\DataWarehouse with Baraa\Dataset\ERP\CUST_AZ12.csv'
		with (
		firstrow =2,
		fieldterminator =',',
		tablock
		);

		--select count(*) from bronze.erp_cust_az12;

		------------------------------------px_cat_g1v2 Load-------------------------------------------------------
		PRINT '>> Truncating Table: bronze.erp_px_cat_g1v2';
		truncate table bronze.erp_px_cat_g1v2;

		PRINT '>> Inserting Data Into: bronze.erp_px_cat_g1v2';
		bulk insert bronze.erp_px_cat_g1v2
		from 'F:\Data Engineering project\DataWarehouse with Baraa\Dataset\ERP\PX_CAT_G1V2.csv'
		with (
		firstrow =2,
		fieldterminator =',',
		tablock
		);
	End try
	BEGIN CATCH
		PRINT '=========================================='
		PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER'
		PRINT 'Error Message' + ERROR_MESSAGE();
		PRINT 'Error Message' + CAST (ERROR_NUMBER() AS NVARCHAR);
		PRINT 'Error Message' + CAST (ERROR_STATE() AS NVARCHAR);
		PRINT '=========================================='
	END CATCH
END
--select count(*) from bronze.erp_px_cat_g1v2;

-- TO run the procedure
EXEC bronze.load_bronze