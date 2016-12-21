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
-- Description:	Epilogi Tmimatos Stef kai xronia kai antistoixi periodos podoi foitites to dilosan kai to perasan
-- =============================================
CREATE PROCEDURE StefDilPer 
	-- Add the parameters for the stored procedure here
	@year int = 0, 
	@period int = 0,
	@tmima int =0
AS
BEGIN
	IF @tmima=267 
	SELECT c.[courseID]
	  ,s.classtitle
	  ,s.cnt_studs
	  ,COUNT(c.studentID)
  FROM [dbo].[UNIStudentCourses] as c ,[dbo].[UniClass] as s
  WHERE c.courseID like '267-%Å' and c.cyear=@year and c.cperiod=@period and c.cgrade>0.5 and c.courseID=s.courseID and s.courseID like '267-%Å' and s.year=@year and s.periodID=@period
  GROUP BY c.courseID,s.classtitle,s.cnt_studs

  ELSE IF @tmima=268
  
  SELECT c.[courseID]
	  ,s.classtitle
	  ,s.cnt_studs
	  ,COUNT(c.studentID)
  FROM [dbo].[UNIStudentCourses] as c ,[dbo].[UniClass] as s
  WHERE c.courseID like '268-%Å' and c.cyear=@year and c.cperiod=@period and c.cgrade>0.5 and c.courseID=s.courseID and s.courseID like '268-%Å' and s.year=@year and s.periodID=@period
  GROUP BY c.courseID,s.classtitle,s.cnt_studs

  ELSE IF @tmima=269
  SELECT c.[courseID]
	  ,s.classtitle
	  ,s.cnt_studs
	  ,COUNT(c.studentID)
  FROM [dbo].[UNIStudentCourses] as c ,[dbo].[UniClass] as s
  WHERE (c.courseID like '269-____2' or c.courseID like '269-____Å') and c.cyear=@year and c.cperiod=@period and c.cgrade>0.5 and c.courseID=s.courseID and (s.courseID like '269-____2' or s.courseID like '269-____Å') and s.year=@year and s.periodID=@period
  GROUP BY c.courseID,s.classtitle,s.cnt_studs

  ELSE IF @tmima=270
  SELECT c.[courseID]
	  ,s.classtitle
	  ,s.cnt_studs
	  ,COUNT(c.studentID)
  FROM [dbo].[UNIStudentCourses] as c ,[dbo].[UniClass] as s
  WHERE c.courseID like '270-%Å' and c.cyear=@year and c.cperiod=@period and c.cgrade>0.5 and c.courseID=s.courseID and s.courseID like '270-%Å' and s.year=@year and s.periodID=@period
  GROUP BY c.courseID,s.classtitle,s.cnt_studs

  ELSE IF @tmima=271
  SELECT c.[courseID]
	  ,s.classtitle
	  ,s.cnt_studs
	  ,COUNT(c.studentID)
  FROM [dbo].[UNIStudentCourses] as c ,[dbo].[UniClass] as s
  WHERE c.courseID like '271-%2' and c.cyear=@year and c.cperiod=@period and c.cgrade>0.5 and c.courseID=s.courseID and s.courseID like '271-%2' and s.year=@year and s.periodID=@period
  GROUP BY c.courseID,s.classtitle,s.cnt_studs

END
GO
