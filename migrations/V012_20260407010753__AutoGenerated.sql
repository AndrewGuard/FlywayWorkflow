SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[Customers]'
GO
ALTER TABLE [dbo].[Customers] ADD
[bar] [nchar] (10) NULL,
[featureA] [nchar] (10) NULL
GO
PRINT N'Altering [dbo].[Categories]'
GO
ALTER TABLE [dbo].[Categories] ADD
[foo] [nchar] (10) NULL,
[foo2] [nchar] (10) NULL,
[foo3] [nchar] (10) NULL,
[foo4] [nchar] (10) NULL,
[foo5] [nchar] (10) NULL,
[foo6] [nchar] (10) NULL,
[foo7] [nchar] (10) NULL,
[foo8] [nchar] (10) NULL,
[foo9] [nchar] (10) NULL,
[foo10] [nchar] (10) NULL,
[foo11] [nchar] (10) NULL,
[FeatureB] [int] NULL,
[foo12] [nchar] (10) NULL,
[foo13] [nchar] (10) NULL,
[foo14] [nchar] (10) NULL,
[foo15] [nchar] (10) NULL,
[foo16] [nchar] (10) NULL,
[foo17] [nchar] (10) NULL,
[foo18] [nchar] (10) NULL,
[foo19] [int] NULL
GO
PRINT N'Refreshing [dbo].[Alphabetical list of products]'
GO
EXEC sp_refreshview N'[dbo].[Alphabetical list of products]'
GO
PRINT N'Refreshing [dbo].[Product Sales for 1997]'
GO
EXEC sp_refreshview N'[dbo].[Product Sales for 1997]'
GO
PRINT N'Refreshing [dbo].[Customer and Suppliers by City]'
GO
EXEC sp_refreshview N'[dbo].[Customer and Suppliers by City]'
GO
PRINT N'Refreshing [dbo].[Invoices]'
GO
EXEC sp_refreshview N'[dbo].[Invoices]'
GO
PRINT N'Refreshing [dbo].[Orders Qry]'
GO
EXEC sp_refreshview N'[dbo].[Orders Qry]'
GO
PRINT N'Refreshing [dbo].[Products by Category]'
GO
EXEC sp_refreshview N'[dbo].[Products by Category]'
GO
PRINT N'Refreshing [dbo].[Quarterly Orders]'
GO
EXEC sp_refreshview N'[dbo].[Quarterly Orders]'
GO
PRINT N'Refreshing [dbo].[Sales by Category]'
GO
EXEC sp_refreshview N'[dbo].[Sales by Category]'
GO
PRINT N'Refreshing [dbo].[Sales Totals by Amount]'
GO
EXEC sp_refreshview N'[dbo].[Sales Totals by Amount]'
GO

