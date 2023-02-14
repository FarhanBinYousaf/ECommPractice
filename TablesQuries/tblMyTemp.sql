USE [ECommPractice]
GO

/****** Object:  Table [dbo].[tblMyTemp]    Script Date: 02/14/2023 22:45:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblMyTemp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Random] [bigint] NOT NULL,
	[DateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_tblMyTemp] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tblMyTemp]  WITH CHECK ADD  CONSTRAINT [FK_tblMyTemp_tblProduct] FOREIGN KEY([ProductID])
REFERENCES [dbo].[tblProduct] ([ProID])
GO

ALTER TABLE [dbo].[tblMyTemp] CHECK CONSTRAINT [FK_tblMyTemp_tblProduct]
GO

