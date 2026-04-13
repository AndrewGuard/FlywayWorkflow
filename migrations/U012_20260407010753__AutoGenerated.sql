SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[Customers]'
GO
ALTER TABLE [dbo].[Customers] DROP
COLUMN [bar],
COLUMN [featureA]
GO
PRINT N'Altering [dbo].[Categories]'
GO
ALTER TABLE [dbo].[Categories] DROP
COLUMN [foo],
COLUMN [foo2],
COLUMN [foo3],
COLUMN [foo4],
COLUMN [foo5],
COLUMN [foo6],
COLUMN [foo7],
COLUMN [foo8],
COLUMN [foo9],
COLUMN [foo10],
COLUMN [foo11],
COLUMN [FeatureB],
COLUMN [foo12],
COLUMN [foo13],
COLUMN [foo14],
COLUMN [foo15],
COLUMN [foo16],
COLUMN [foo17],
COLUMN [foo18],
COLUMN [foo19]
GO
PRINT N'Refreshing [dbo].[Customer and Suppliers by City]'
GO
EXEC sp_refreshview N'[dbo].[Customer and Suppliers by City]'
GO
PRINT N'Refreshing [dbo].[Alphabetical list of products]'
GO
EXEC sp_refreshview N'[dbo].[Alphabetical list of products]'
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
PRINT N'Refreshing [dbo].[Invoices]'
GO
EXEC sp_refreshview N'[dbo].[Invoices]'
GO
PRINT N'Refreshing [dbo].[Product Sales for 1997]'
GO
EXEC sp_refreshview N'[dbo].[Product Sales for 1997]'
GO
PRINT N'Refreshing [dbo].[Sales by Category]'
GO
EXEC sp_refreshview N'[dbo].[Sales by Category]'
GO
PRINT N'Refreshing [dbo].[Sales Totals by Amount]'
GO
EXEC sp_refreshview N'[dbo].[Sales Totals by Amount]'
GO

