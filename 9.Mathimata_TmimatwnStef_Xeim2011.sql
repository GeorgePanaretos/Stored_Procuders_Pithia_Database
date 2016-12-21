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
-- Description:	Mathimata Xeimerinou 2011 gia kathe Tmima tis Stef
-- =============================================
CREATE PROCEDURE StefMathXeim2011 
	-- Add the parameters for the stored procedure here
	@tmima int = 0
AS
BEGIN
	-- тлгла еяцым уподолгс
	IF @tmima=267

	SELECT [courseID]
      ,[classtitle]
	 FROM [dbo].[UniClass]
	 WHERE year=2011 and (courseID like '267-21%' or courseID like '267-23%' or courseID like '267-25%' or courseID like '267-27%' or courseID like '267-28%')
	 GROUP BY courseID, classtitle
	 ORDER BY courseID

  -- тлгла гкейтяомийгс 
  ELSE IF @tmima=268
  
  SELECT [courseID]
      ,[classtitle]
  FROM [dbo].[UniClass]
  WHERE ownerID=268 and year=2011 and (courseID like '268-4-1%' or courseID like '268-4-3%' or courseID like '268-4-5%' or courseID like '268-4-7%') and cnt_studs<>0
  GROUP BY courseID, classtitle
  ORDER BY courseID

  --тлгла пкгяожояийгс
  ELSE IF @tmima=269
  
  SELECT [courseID]
      ,[classtitle]
  FROM [dbo].[UniClass]
  WHERE year=2011 and (courseID like '269-41%' or courseID like '269-43%' or courseID like '269-45%' or courseID like '269-47%' or courseID like '269-48%')
   GROUP BY courseID, classtitle
  ORDER BY courseID

  --тлгла аутолатислоу
  ELSE IF @tmima=270
  
  SELECT [courseID]
      ,[classtitle]
  FROM [dbo].[UniClass]
  WHERE year=2011 and (courseID like '270-1%' or courseID like '270-3%' or courseID like '270-5%' or courseID like '270-7%')
  GROUP BY courseID, classtitle
  ORDER BY courseID

  --тлгла овглатым
  ELSE IF @tmima=271

  SELECT [courseID]
      ,[classtitle]
  FROM [dbo].[UniClass]
  WHERE year=2011 and (courseID like '271-41%' or courseID like '271-43%'or courseID like '271-45%' or courseID like '271-47%') and cnt_studs<>0
  GROUP BY courseID, classtitle
  ORDER BY courseID
	
END
GO
