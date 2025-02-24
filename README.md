# Data Warehouse Project (Medallion Architecture)
Building Datawarehouse sing SQL server, including ETL process, data modeling and data analytics.


# 📌 Project Overview

This project implements a Data Warehouse using SQL Server following the Medallion Architecture (Bronze, Silver, Gold layers).  
The goal is to process CRM and ERP data efficiently using ETL processes, ensuring clean, structured, and optimized data for reporting and analysis.

# 🏗️ DATA Architecture

The project follows the Medallion Architecture:

1-Bronze Layer (Raw Data Ingestion)

Source: CRM & ERP CSV Files
Loading method: BULK INSERT
Actions: Raw data storage without modifications

2-Silver Layer (Data Cleaning & Transformation)

Actions: Data cleaning, deduplication, enrichment, derived columns, type casting
Quality checks: Null value detection, duplicate handling, and standardization

3-Gold Layer (Data Aggregation & Reporting)

Structure: Dimension Tables & Fact Tables
Actions: Aggregations, summarization, and indexing for reporting
Ensures referential integrity between Fact and Dimension tables
