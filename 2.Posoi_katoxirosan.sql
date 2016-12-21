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
-- Description:	Posoi Katoxirosan Ergastirio apo Pliroforiki
-- =============================================
CREATE PROCEDURE PosoiKatoxirosan 
	-- Add the parameters for the stored procedure here
	@year int = 0, 
	@period int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [ctitle] 
      ,COUNT(studentID)
  FROM [dbo].[UNIStudentCourses]
  WHERE cyear=@year and cperiod=@period and (courseID like'269-%_2'or courseID like'269-%_Å') and cgrade=0.4
  GROUP BY ctitle
END
GO
