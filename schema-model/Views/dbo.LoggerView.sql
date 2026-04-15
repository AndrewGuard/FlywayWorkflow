SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
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
