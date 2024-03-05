-- Use master;
-- GO
-- The "USE master;" command is typically used to switch to the master database, but it's unnecessary in this context as you are already in the master database by default when running the script.

-- Create database
CREATE DATABASE [RetailStores];
GO

-- Switching to the newly created database
USE [RetailStores];
GO

-- Creating SQL Server Tables

-- Creating table [dbo].[Employees]
CREATE TABLE [dbo].[Employees](
   [EmpNum] [int] PRIMARY KEY,
   [FirstName] [nvarchar](30) NOT NULL,
   [LastName] [nvarchar](30) NOT NULL,
   [MiddleInitial] [nchar](1) NULL,
   [Job] [int] NOT NULL
);
GO

-- Creating table [dbo].[Jobs]
CREATE TABLE [dbo].[Jobs](
   [JobNum] [int] PRIMARY KEY,
   [Title] [nvarchar](30) NOT NULL
);
GO

-- Creating table [dbo].[Stores]
CREATE TABLE [dbo].[Stores](
   [StoreNum] [int] PRIMARY KEY,
   [Address] [nvarchar](50) NOT NULL,
   [Address2] [nvarchar](50) NULL,
   [City] [nvarchar](50) NOT NULL,
   [State] [nchar](2) NOT NULL,
   [Zipcode] [nchar](5) NOT NULL,
   [Phone] [nchar](12) NOT NULL
);
GO



-- Populating SQL Server Tables with INSERT INTO Syntax
-- Use the INSERT INTO syntax to populate the tables with sample data:

-- Populating the [dbo].[Employees] table
INSERT INTO [dbo].[Employees] ([EmpNum], [FirstName], [LastName], [MiddleInitial], [Job])
VALUES (1001, 'Robert', 'Smith', '', 1);

INSERT INTO [dbo].[Employees] ([EmpNum], [FirstName], [LastName], [MiddleInitial], [Job])
VALUES (1002, 'Sue', 'Jones', '', 5);

INSERT INTO [dbo].[Employees] ([EmpNum], [FirstName], [LastName], [MiddleInitial], [Job])
VALUES (1003, 'Alan', 'Doe', 'A', 3);

INSERT INTO [dbo].[Employees] ([EmpNum], [FirstName], [LastName], [MiddleInitial], [Job])
VALUES (1004, 'Tim', 'Kelly', '', 2);

INSERT INTO [dbo].[Employees] ([EmpNum], [FirstName], [LastName], [MiddleInitial], [Job])
VALUES (1005, 'Louis', 'Sullivan', '', 2);

-- Populating the [dbo].[Jobs] table
INSERT INTO [dbo].[Jobs] ([JobNum], [Title])
VALUES (1, 'Store Manager');

INSERT INTO [dbo].[Jobs] ([JobNum], [Title])
VALUES (2, 'Assistant Store Manager');

INSERT INTO [dbo].[Jobs] ([JobNum], [Title])
VALUES (3, 'Cashier');

INSERT INTO [dbo].[Jobs] ([JobNum], [Title])
VALUES (4, 'Warehouse Supervisor');

INSERT INTO [dbo].[Jobs] ([JobNum], [Title])
VALUES (5, 'Warehouse Picker');

-- Populating the [dbo].[Stores] table
INSERT INTO [dbo].[Stores] ([StoreNum], [Address], [Address2], [City], [State], [Zipcode], [Phone])
VALUES (1, '100 Main St', '#2', 'Sometown', 'TX', '12345', '123-456-7890');

INSERT INTO [dbo].[Stores] ([StoreNum], [Address], [Address2], [City], [State], [Zipcode], [Phone])
VALUES (2, '220 Elms St', '', 'Anothertown', 'TX', '23456', '123-455-7891');

INSERT INTO [dbo].[Stores] ([StoreNum], [Address], [Address2], [City], [State], [Zipcode], [Phone])
VALUES (3, '5 Cherry St', '#6', 'Mayberry', 'NC', '75986', '552-123-4567');

INSERT INTO [dbo].[Stores] ([StoreNum], [Address], [Address2], [City], [State], [Zipcode], [Phone])
VALUES (4, '1 Broadway St', '', 'Bigcity', 'NY', '58463', '212-598-5897');

INSERT INTO [dbo].[Stores] ([StoreNum], [Address], [Address2], [City], [State], [Zipcode], [Phone])
VALUES (5, '45 Fifth St', '', 'Smalltown', 'NY', '56987', '123-555-7890');




-- Querying SQL Server Tables

-- Select all fields from the [dbo].[Employees] table
SELECT [EmpNum], [FirstName], [LastName], [MiddleInitial], [Job]
FROM [dbo].[Employees];

-- Select fields from the [dbo].[Jobs] table
SELECT [JobNum], [Title] 
FROM [dbo].[Jobs];

-- Select fields from the [dbo].[Stores] table
SELECT [StoreNum], [Address], [Address2], [City], [State], [Zipcode], [Phone]
FROM [dbo].[Stores];

-- Select all fields for the stores that are in Texas using the WHERE clause
SELECT [StoreNum], [Address], [Address2], [City], [State], [Zipcode], [Phone]
FROM [dbo].[Stores]
WHERE [State] = 'TX';

-- Select all fields for the stores that have a '123' area code using the WHERE clause
SELECT [StoreNum], [Address], [Address2], [City], [State], [Zipcode], [Phone]
FROM [dbo].[Stores]
WHERE [Phone] LIKE '123%';


-- Add a Column to a SQL Server Table

-- Add a column called Salary with data type Money to [dbo].[Employees]
ALTER TABLE [dbo].[Employees]
ADD [Salary] [Money];

-- Updating Data in a SQL Server Table

-- Update [dbo].[Employees] with salaries
UPDATE [dbo].[Employees] SET [Salary] = 100000 WHERE [EmpNum] = 1001;
UPDATE [dbo].[Employees] SET [Salary] =  90000 WHERE [EmpNum] = 1004;
UPDATE [dbo].[Employees] SET [Salary] =  50000 WHERE [EmpNum] = 1005;
UPDATE [dbo].[Employees] SET [Salary] =  45000 WHERE [EmpNum] = 1002;
UPDATE [dbo].[Employees] SET [Salary] =  40000 WHERE [EmpNum] = 1003;


-- SQL WHERE Clause Examples

-- Show all employees with a salary greater than $90,000.
SELECT [FirstName], [LastName]
FROM [dbo].[Employees]
WHERE [Salary] > 90000;

-- Show all employees with a salary greater than or equal to $90,000.
SELECT [FirstName], [LastName]
FROM [dbo].[Employees]
WHERE [Salary] >= 90000;

-- Show all employees with a salary less than $90,000.
SELECT [FirstName], [LastName]
FROM [dbo].[Employees]
WHERE [Salary] < 90000;

-- Show all employees with a salary not equal to $90,000.
SELECT [FirstName], [LastName]
FROM [dbo].[Employees]
WHERE [Salary] != 90000;


-- SQL BETWEEN Clause Example

-- Show all employees with a salary between $49,000 and $51,000.
SELECT [FirstName], [LastName]
FROM [dbo].[Employees]
WHERE [Salary] BETWEEN 49000 AND 51000;


-- SQL ORDER BY Clause Examples

-- Show all Employees in ascending order of salary.
SELECT [FirstName], [LastName], [Salary]
FROM [dbo].[Employees]
ORDER BY [Salary]; -- ASC is default

-- Show all columns in Jobs in descending order of salary.
SELECT [FirstName], [LastName], [Salary]
FROM [dbo].[Employees]
ORDER BY [Salary] DESC;


-- SQL JOIN Examples - INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN

-- Select the full name and job title from Employees and Tables where someone holds the job using an INNER JOIN.
SELECT [e].[FirstName], [e].[LastName], [j].[Title]
FROM [dbo].[Jobs] [j]
INNER JOIN [dbo].[Employees] [e] ON [j].[JobNum] = [e].Job;

-- Select the full name and job title from Employees and Tables, including all job titles using a LEFT JOIN.
SELECT [e].[FirstName], [e].[LastName], [j].[Title]
FROM [dbo].[Jobs] [j]
LEFT JOIN [dbo].[Employees] [e] ON [j].[JobNum] = [e].Job;

-- Select the full name and job title from Employees and Tables, excluding job titles where no one has that job with a RIGHT JOIN.
SELECT [e].[FirstName], [e].[LastName], [j].[Title]
FROM [dbo].[Jobs] [j]
RIGHT JOIN [dbo].[Employees] [e] ON [j].[JobNum] = [e].Job;

-- Select all full names and job titles from Employees and Tables, excluding job titles where no one has that job with a FULL JOIN.
SELECT [e].[FirstName], [e].[LastName], [j].[Title]
FROM [dbo].[Jobs] [j]
FULL JOIN [dbo].[Employees] [e] ON [j].[JobNum] = [e].Job;


-- IS NULL SQL Query Example

-- Show unfilled job titles with IS NULL.
SELECT [e].[FirstName], [e].[LastName], [j].[Title]
FROM [dbo].[Jobs] [j]
FULL JOIN [dbo].[Employees] [e] ON [j].[JobNum] = [e].Job
WHERE [e].[FirstName] IS NULL AND [e].[LastName] IS NULL;


-- SQL Subquery Examples

-- Find any unfilled jobs with a subquery.
SELECT [Title]
FROM [dbo].[Jobs]
WHERE [JobNum] NOT IN (
    SELECT [Job] FROM [dbo].[Employees]
);

-- SQL Function Examples

-- Show the number of employees using COUNT and an alias
SELECT COUNT(*) AS [NumberOfEmployees]
FROM [dbo].[Employees];

-- Show average employee salary with the AVG function.
SELECT AVG(Salary) AS [AverageSalary]
FROM [dbo].[Employees];

-- Combine the Firstname and LastName fields in the Employees table into FullName with the CONCAT function.
SELECT CONCAT([FirstName], ' ', [LastName]) AS [FullName]
FROM [dbo].[Employees];


-- Dropping a Column from a SQL Server Table

-- Drop the MiddleInitial column from the Employees table with ALTER TABLE.
ALTER TABLE [dbo].[Employees]
DROP COLUMN [MiddleInitial];


-- Deleting Data from a SQL Server Table

-- Delete the 'Warehouse Supervisor' record from the Jobs table with DELETE.
DELETE FROM [dbo].[Jobs]
WHERE [Title] = 'Warehouse Supervisor';


-- Truncating a SQL Server Table

-- Delete all the records in the Jobs table without logging the transaction with TRUNCATE TABLE.
TRUNCATE TABLE [dbo].[Jobs];


-- Drop a SQL Server Table

-- Remove the Jobs table structure and data with DROP TABLE.
DROP TABLE [dbo].[Jobs];
