USE [ECommPractice]
GO

/****** Object:  StoredProcedure [dbo].[GetTempsData]    Script Date: 02/14/2023 22:46:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetTempsData]
	@random bigint
AS
BEGIN
	select * from tblMyTemp where Random = @random
END

GO

