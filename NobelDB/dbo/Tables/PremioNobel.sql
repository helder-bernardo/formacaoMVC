CREATE TABLE [dbo].[PremioNobel](
	[PremioNobelId] [int] IDENTITY(1,1) NOT NULL,
	[Ano] [int] NOT NULL,
	[CategoriaId] [int] NOT NULL,
	[Titulo] [varchar](200) NOT NULL,
	[Motivacao] [varchar](max) NULL,
 CONSTRAINT [PK_PremioNobel] PRIMARY KEY CLUSTERED 
(
	[PremioNobelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[PremioNobel]  WITH CHECK ADD  CONSTRAINT [FK_PremioNobel_Categoria] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[Categoria] ([CategoriaId])
GO

ALTER TABLE [dbo].[PremioNobel] CHECK CONSTRAINT [FK_PremioNobel_Categoria]