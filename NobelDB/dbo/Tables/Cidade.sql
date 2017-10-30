﻿CREATE TABLE [dbo].[Cidade](
	[CidadeId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[PaisId] [int] NOT NULL,
	[CidadeAtualId] [int] NULL,
 CONSTRAINT [PK_Cidade] PRIMARY KEY CLUSTERED 
(
	[CidadeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD  CONSTRAINT [FK_Cidade_Cidade] FOREIGN KEY([CidadeAtualId])
REFERENCES [dbo].[Cidade] ([CidadeId])
GO

ALTER TABLE [dbo].[Cidade] CHECK CONSTRAINT [FK_Cidade_Cidade]
GO
ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD  CONSTRAINT [FK_Cidade_Pais] FOREIGN KEY([PaisId])
REFERENCES [dbo].[Pais] ([PaisId])
GO

ALTER TABLE [dbo].[Cidade] CHECK CONSTRAINT [FK_Cidade_Pais]