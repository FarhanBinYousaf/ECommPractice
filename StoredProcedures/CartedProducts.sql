USE [ECommPractice]
GO

/****** Object:  StoredProcedure [dbo].[CartedProducts]    Script Date: 02/14/2023 22:46:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CartedProducts]
	@uniqueId bigint
AS
BEGIN
	
	SET NOCOUNT ON;

    select * from tblProduct p inner join tblMyTemp t on p.ProID = t.ProductID where Random = @uniqueId
END

GO

