USE [gram4]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[StefDilPer]
		@year = 2011,
		@period = 1,
		@tmima = 267
GO
