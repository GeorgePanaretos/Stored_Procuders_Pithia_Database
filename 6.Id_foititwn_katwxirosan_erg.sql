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
-- Description:	Ta id twn foititvn pou katoxirosan ergastiria gia sigkekrimeni xronia kai periodo
-- =============================================
CREATE PROCEDURE IdFoitoitwnKatoxirosiErg 
	-- Add the parameters for the stored procedure here
	@year int = 0, 
	@period int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  studentID
  FROM [dbo].[UNIStudentCourses]
  WHERE cyear=@year and cperiod=@period  and cgrade=0.4 and courseID like '269-____2'
  Group by studentID
END
GO
