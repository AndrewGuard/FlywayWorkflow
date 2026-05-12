SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[Logger]'
GO
CREATE TABLE [dbo].[Logger]
(
[LoggerID] [int] NOT NULL IDENTITY(1, 1),
[LogDate] [datetime] NULL CONSTRAINT [DF__Logger__LogDate__4F47C5E3] DEFAULT (getdate()),
[LogerThread] [nvarchar] (50) NULL,
[LoggerLevel] [nvarchar] (50) NULL,
[LogMessage] [nvarchar] (1000) NULL
)
GO
PRINT N'Creating primary key [PK__Logger__0ABCCA66CAFF2D4D] on [dbo].[Logger]'
GO
ALTER TABLE [dbo].[Logger] ADD CONSTRAINT [PK__Logger__0ABCCA66CAFF2D4D] PRIMARY KEY CLUSTERED ([LoggerID])
GO
PRINT N'Creating [dbo].[usp_Logger_Insert]'
GO
CREATE PROCEDURE [dbo].[usp_Logger_Insert]
	@LogerThread  [nvarchar](50)  = NULL,
	@LoggerLevel  [nvarchar](50)  = NULL,
	@LogMessage   [nvarchar](1000) = NULL
AS
INSERT INTO [dbo].[Logger] ([LogerThread], [LoggerLevel], [LogMessage])
VALUES (@LogerThread, @LoggerLevel, @LogMessage)
GO
PRINT N'Creating [dbo].[LoggerView]'
GO
CREATE VIEW [dbo].[LoggerView]
AS
SELECT TOP 20
       LogDate,
       LogerThread,
       LogMessage,
       LoggerLevel,
       LoggerID
FROM dbo.Logger
ORDER BY LogDate DESC;
GO

