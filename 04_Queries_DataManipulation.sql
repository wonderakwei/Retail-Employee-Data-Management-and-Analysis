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

-- Select all full names and job titles from Employees and Tables, including job titles where no one has that job with a FULL JOIN.
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
