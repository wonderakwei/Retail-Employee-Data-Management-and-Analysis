-- Creating table [dbo].[Departments]
CREATE TABLE [dbo].[Departments](
   [DeptID] [int] PRIMARY KEY,
   [DeptName] [nvarchar](50) NOT NULL
);
GO

-- Creating table [dbo].[Employees]
CREATE TABLE [dbo].[Employees](
   [EmpNum] [int] PRIMARY KEY,
   [FirstName] [nvarchar](30) NOT NULL,
   [LastName] [nvarchar](30) NOT NULL,
   [MiddleInitial] [nchar](1) NULL,
   [Job] [int] NOT NULL,
   [DeptID] [int] FOREIGN KEY REFERENCES [dbo].[Departments]([DeptID])
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
