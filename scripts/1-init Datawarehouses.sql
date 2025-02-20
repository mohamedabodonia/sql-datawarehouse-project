use master;
Go


--Drop the 'DataWarehouse' database if exsist

if exists (select * from sys.databases where name = 'Datawarehouses')
drop database Datawarehouses
go


-- Create the 'DataWarehouse' database
create database Datawarehouses;
go

USE Datawarehouses;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO