USE [gram4]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[DilPerasanErgTheoAkB]
		@year = 2011,
		@period = 1
GO
