# Data Warehouse Project (Medallion Architecture)
Building Datawarehouse sing SQL server, including ETL process, data modeling and data analytics.


# 📌 Project Overview

This project implements a Data Warehouse using SQL Server following the Medallion Architecture (Bronze, Silver, Gold layers).  
The goal is to process CRM and ERP data efficiently using ETL processes, ensuring clean, structured, and optimized data for reporting and analysis.

# 🏗️ DATA Architecture

The project follows the Medallion Architecture:
<img src="https://github.com/mohamedabodonia/sql-datawarehouse-project/blob/main/docs/data_architecture.png?raw=true">

**1-Bronze Layer** (Raw Data Ingestion)

Source: CRM & ERP CSV Files  
Loading method: BULK INSERT  
Actions: Raw data storage without modifications  

**2-Silver Layer** (Data Cleaning & Transformation)  

Actions: Data cleaning, deduplication, enrichment, derived columns, type casting  
Quality checks: Null value detection, duplicate handling, and standardization  

**3-Gold Layer**(Data Aggregation & Reporting)  

Structure: Dimension Tables & Fact Tables  
Actions: Aggregations, summarization, and indexing for reporting  
Ensures referential integrity between Fact and Dimension tables  

# 🔄  Project Flow

**Extract Data (Bronze Layer)**

Load raw CRM & ERP data using BULK INSERT.  
Store data without modifications in the Bronze schema.  

**Clean & Transform Data (Silver Layer)**

Remove duplicates and handle missing values.  
Standardize data types and perform necessary transformations.  
Store cleaned data in the Silver schema.  

**Aggregate & Optimize Data (Gold Layer)**

Data Modeling
<img src="https://github.com/mohamedabodonia/sql-datawarehouse-project/blob/main/docs/data_model.png?raw=true">

Create Fact and Dimension tables for reporting.  
Implement aggregations and indexing for performance.  
Ensure referential integrity between tables. 

**Data Quality Checks**

Validate uniqueness of primary keys.  
Ensure no orphan records exist in Fact tables.  
Verify consistency of calculated fields.  

# 📝 Key Implementations

✅ Data Quality Checks

Bronze Layer: only load the data (Row Data).
Silver Layer:  Detecting null values, duplicate records Cleaning and transforming data before loading into Gold tables.
Gold Layer: Ensuring uniqueness in Dimension Tables and referential integrity between Fact & Dimension Tables.

✅ SQL Scripts Used

Data Loading (BULK INSERT for Bronze Layer)
Transformations & Cleaning (Stored Procedures in Silver Layer)
Aggregations & Indexing (Optimization in Gold Layer)

# 🛠️ Tech Tools

SQL Server for database management.  
ETL processes.  
Stored Procedures & Scripting for automation.  
