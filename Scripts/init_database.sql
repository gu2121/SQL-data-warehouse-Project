/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse'.
    If the database exists, it is dropped and recreated.
    In MySQL, schemas are treated as databases, so bronze,
    silver, and gold are created as separate databases.
=============================================================
WARNING:
    Running this script will drop the entire 'DataWarehouse' 
    database if it exists. All data will be permanently deleted.
=============================================================
*/

-- Drop and recreate the main database
DROP DATABASE IF EXISTS DataWarehouse;
CREATE DATABASE DataWarehouse;

-- Use the database
USE DataWarehouse;

-- In MySQL, schemas = databases, so create separately
CREATE DATABASE IF NOT EXISTS bronze;
CREATE DATABASE IF NOT EXISTS silver;
CREATE DATABASE IF NOT EXISTS gold;
