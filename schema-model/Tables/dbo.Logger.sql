CREATE TABLE [dbo].[Logger]
(
[LoggerID] [int] NOT NULL IDENTITY(1, 1),
[LogDate] [datetime] NULL CONSTRAINT [DF__Logger__LogDate__4F47C5E3] DEFAULT (getdate()),
[LogerThread] [nvarchar] (50) NULL,
[LoggerLevel] [nvarchar] (50) NULL,
[LogMessage] [nvarchar] (1000) NULL
)
GO
ALTER TABLE [dbo].[Logger] ADD CONSTRAINT [PK__Logger__0ABCCA66CAFF2D4D] PRIMARY KEY CLUSTERED ([LoggerID])
GO
