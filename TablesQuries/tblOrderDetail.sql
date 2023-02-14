USE [ECommPractice]
GO

/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 02/14/2023 22:45:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblOrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductPrice] [money] NOT NULL,
	[OrderID] [int] NOT NULL,
 CONSTRAINT [PK_tblOrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetail_tblOrderMain] FOREIGN KEY([OrderID])
REFERENCES [dbo].[tblOrderMain] ([OrderID])
GO

ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [FK_tblOrderDetail_tblOrderMain]
GO

