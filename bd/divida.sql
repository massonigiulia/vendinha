USE [db_vendinha]
GO

/****** Object:  Table [dbo].[divida]    Script Date: 10/04/2023 14:13:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[divida](
	[id] [int] NOT NULL,
	[valor] [varchar](50) NOT NULL,
	[situacao] [bit] NOT NULL,
	[dataCriacao] [varchar](10) NOT NULL,
	[dataPagto] [varchar](10) NULL,
 CONSTRAINT [PK_divida] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


