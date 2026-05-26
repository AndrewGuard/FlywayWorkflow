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
ALTER TABLE [dbo].[Vendors] ADD CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED ([VendorID])
GO
CREATE NONCLUSTERED INDEX [CompanyName] ON [dbo].[Vendors] ([CompanyName])
GO
CREATE NONCLUSTERED INDEX [PostalCode] ON [dbo].[Vendors] ([PostalCode])
GO
