/*
===============================
--  Create initial database
-- =============================== 

Warning: Running this will drop 'DataWarehouse' database.
If there's already database named, DataWarehouse will be deleted.
*/
USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO

-- Create Schema for Warehouse (Medallion Architecture)
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

