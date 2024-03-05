-- Populating SQL Server Tables with INSERT INTO Syntax
-- Use the INSERT INTO syntax to populate the tables with sample data:

-- Populating the [dbo].[Departments] table
INSERT INTO [dbo].[Departments] ([DeptID], [DeptName])
VALUES (1, 'Sales');

INSERT INTO [dbo].[Departments] ([DeptID], [DeptName])
VALUES (2, 'Human Resources');

-- Populating the [dbo].[Employees] table
INSERT INTO [dbo].[Employees] ([EmpNum], [FirstName], [LastName], [MiddleInitial], [Job], [DeptID])
VALUES (1001, 'Robert', 'Smith', '', 1, 1);

INSERT INTO [dbo].[Employees] ([EmpNum], [FirstName], [LastName], [MiddleInitial], [Job], [DeptID])
VALUES (1002, 'Sue', 'Jones', '', 5, 2);

INSERT INTO [dbo].[Employees] ([EmpNum], [FirstName], [LastName], [MiddleInitial], [Job], [DeptID])
VALUES (1003, 'Alan', 'Doe', 'A', 3, 1);

INSERT INTO [dbo].[Employees] ([EmpNum], [FirstName], [LastName], [MiddleInitial], [Job], [DeptID])
VALUES (1004, 'Tim', 'Kelly', '', 2, 2);

INSERT INTO [dbo].[Employees] ([EmpNum], [FirstName], [LastName], [MiddleInitial], [Job], [DeptID])
VALUES (1005, 'Louis', 'Sullivan', '', 2, 1);

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
