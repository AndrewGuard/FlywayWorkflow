SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_Logger_Insert]
	@LogerThread  [nvarchar](50)  = NULL,
	@LoggerLevel  [nvarchar](50)  = NULL,
	@LogMessage   [nvarchar](1000) = NULL
AS
INSERT INTO [dbo].[Logger] ([LogerThread], [LoggerLevel], [LogMessage])
VALUES (@LogerThread, @LoggerLevel, @LogMessage)
GO
