USE [gram4]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[DilosanPosoi]
		@year = 2011,
		@period = 2,
		@tmima = 269

SELECT	'Return Value' = @return_value

GO
