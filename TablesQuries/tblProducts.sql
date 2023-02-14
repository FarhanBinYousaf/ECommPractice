USE [ECommPractice]
GO

/****** Object:  Table [dbo].[tblProduct]    Script Date: 02/14/2023 22:45:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[tblProduct](
	[ProID] [int] IDENTITY(1,1) NOT NULL,
	[ProName] [varchar](50) NOT NULL,
	[ProQuantity] [int] NOT NULL,
	[ProPrice] [money] NOT NULL,
	[ProImageName] [varchar](50) NOT NULL,
	[CatID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblCategory] FOREIGN KEY([CatID])
REFERENCES [dbo].[tblCategory] ([CatID])
GO

ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblCategory]
GO

ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblCompany] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[tblCompany] ([CompanyID])
GO

ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblCompany]
GO

ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblProduct] FOREIGN KEY([ProID])
REFERENCES [dbo].[tblProduct] ([ProID])
GO

ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblProduct]
GO

