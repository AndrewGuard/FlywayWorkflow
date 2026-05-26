SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping constraints from [dbo].[Vendors]'
GO
ALTER TABLE [dbo].[Vendors] DROP CONSTRAINT [PK_Vendors]
GO
PRINT N'Dropping index [CompanyName] from [dbo].[Vendors]'
GO
DROP INDEX [CompanyName] ON [dbo].[Vendors]
GO
PRINT N'Dropping index [PostalCode] from [dbo].[Vendors]'
GO
DROP INDEX [PostalCode] ON [dbo].[Vendors]
GO
PRINT N'Dropping [dbo].[Vendors]'
GO
DROP TABLE [dbo].[Vendors]
GO

