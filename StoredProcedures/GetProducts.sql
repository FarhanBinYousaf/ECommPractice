USE [ECommPractice]
GO

/****** Object:  StoredProcedure [dbo].[GetProducts]    Script Date: 02/14/2023 22:46:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetProducts]
	@CategoryId int
AS
BEGIN
	select * from tblProduct where CatID = @CategoryId
END

GO

