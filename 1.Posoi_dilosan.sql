-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		George Panaretos
-- Create date: 
-- Description:	Posoi Dilosan Mathimata gia to Eksamino Epilogis
-- =============================================
CREATE PROCEDURE DilosanPosoi 
	-- Add the parameters for the stored procedure here
	@year int = 0, 
	@period int = 0,
	@tmima int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT courseID 
	,[classtitle]
	  ,[cnt_studs]
	  ,[year]
      ,[periodID]
      ,[instructors]	  
  FROM [dbo].[UniClass]
  WHERE ownerID=@tmima and year=@year and periodID=@period

END
GO
