SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[Vendors]'
GO
CREATE TABLE [dbo].[Vendors]
(
[VendorID] [int] NOT NULL IDENTITY(1, 1),
[CompanyName] [nvarchar] (40) NOT NULL,
[ContactName] [nvarchar] (30) NULL,
[ContactTitle] [nvarchar] (30) NULL,
[Address] [nvarchar] (60) NULL,
[City] [nvarchar] (15) NULL,
[Region] [nvarchar] (15) NULL,
[PostalCode] [nvarchar] (10) NULL,
[Country] [nvarchar] (15) NULL,
[Phone] [nvarchar] (24) NULL,
[Fax] [nvarchar] (24) NULL
)
GO
PRINT N'Creating primary key [PK_Vendors] on [dbo].[Vendors]'
GO
ALTER TABLE [dbo].[Vendors] ADD CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED ([VendorID])
GO
PRINT N'Creating index [CompanyName] on [dbo].[Vendors]'
GO
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Vendors] ([CompanyName])
GO
PRINT N'Creating index [PostalCode] on [dbo].[Vendors]'
GO
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Vendors] ([PostalCode])
GO

