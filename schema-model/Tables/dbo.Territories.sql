CREATE TABLE [dbo].[Territories]
(
[TerritoryID] [nvarchar] (20) NOT NULL,
[TerritoryDescription] [nchar] (50) NOT NULL,
[RegionID] [int] NOT NULL,
[foo] [nchar] (10) NULL,
[bar] [int] NULL,
[wat] [nchar] (10) NULL,
[foo2] [nchar] (10) NULL,
[foo3] [nchar] (10) NULL,
[foo4] [nchar] (10) NULL,
[foo5] [nchar] (10) NULL,
[foo6] [nchar] (10) NULL
)
GO
ALTER TABLE [dbo].[Territories] ADD CONSTRAINT [PK_Territories] PRIMARY KEY NONCLUSTERED ([TerritoryID])
GO
ALTER TABLE [dbo].[Territories] ADD CONSTRAINT [FK_Territories_Region] FOREIGN KEY ([RegionID]) REFERENCES [dbo].[Region] ([RegionID])
GO
