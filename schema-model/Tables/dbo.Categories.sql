CREATE TABLE [dbo].[Categories]
(
[CategoryID] [int] NOT NULL IDENTITY(1, 1),
[CategoryName] [nvarchar] (15) NOT NULL,
[Description] [ntext] NULL,
[Picture] [image] NULL,
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
[foo19] [int] NULL,
[foo20] [nchar] (10) NULL,
[foo21] [nchar] (10) NULL,
[foo22] [nchar] (10) NULL,
[foo23] [nchar] (10) NULL,
[foo24] [nchar] (10) NULL
)
GO
ALTER TABLE [dbo].[Categories] ADD CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryID])
GO
CREATE NONCLUSTERED INDEX [CategoryName] ON [dbo].[Categories] ([CategoryName])
GO
