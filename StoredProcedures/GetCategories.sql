USE [ECommPractice]
GO

/****** Object:  StoredProcedure [dbo].[GetCategories]    Script Date: 02/14/2023 22:46:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetCategories]
AS
BEGIN
	select * from tblCategory
END

GO

