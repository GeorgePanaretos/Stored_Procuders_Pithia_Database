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
-- Description:	Gia ta mathimata toy 1 k 3 examinou posoi dilwsan kai perasan gia kathe exetastiki
-- =============================================
CREATE PROCEDURE DilosanPerasanErg1k3 
	-- Add the parameters for the stored procedure here
	@year int = 0, 
	@period int = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT c.[courseID]
      ,c.[cexperiodID]
	  ,s.classtitle
	  ,s.cnt_studs
	  ,COUNT(c.studentID)
  FROM [dbo].[UNIStudentCourses] as c ,[dbo].[UniClass] as s
  WHERE (c.courseID like '269-41__2' or c.courseID like '269-43__2') and c.cyear=@year and c.cperiod=@period  and (c.cgrade>0.5) and c.courseID=s.courseID and (s.courseID like '269-41__2' or s.courseID like '269-43__2') and s.year=@year and s.periodID=@period
  GROUP BY c.courseID, c.cexperiodID,s.classtitle,s.cnt_studs
END
GO
