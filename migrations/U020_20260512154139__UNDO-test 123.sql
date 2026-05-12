SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping constraints from [dbo].[Logger]'
GO
ALTER TABLE [dbo].[Logger] DROP CONSTRAINT [PK__Logger__0ABCCA66CAFF2D4D]
GO
PRINT N'Dropping constraints from [dbo].[Logger]'
GO
ALTER TABLE [dbo].[Logger] DROP CONSTRAINT [DF__Logger__LogDate__4F47C5E3]
GO
PRINT N'Dropping [dbo].[LoggerView]'
GO
DROP VIEW [dbo].[LoggerView]
GO
PRINT N'Dropping [dbo].[usp_Logger_Insert]'
GO
DROP PROCEDURE [dbo].[usp_Logger_Insert]
GO
PRINT N'Dropping [dbo].[Logger]'
GO
DROP TABLE [dbo].[Logger]
GO

