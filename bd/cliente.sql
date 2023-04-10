USE [db_vendinha]
GO

/****** Object:  Table [dbo].[cliente]    Script Date: 10/04/2023 14:12:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[cliente](
	[id] [int] NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[cpf] [varchar](14) NOT NULL,
	[dataNasc] [varchar](10) NOT NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[cliente]  WITH CHECK ADD  CONSTRAINT [FK_cliente_divida] FOREIGN KEY([id])
REFERENCES [dbo].[divida] ([id])
GO

ALTER TABLE [dbo].[cliente] CHECK CONSTRAINT [FK_cliente_divida]
GO


