CREATE TABLE [dbo].[LaureadoIndividuo](
	[LaureadoId] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[DataNascimento] [date] NOT NULL,
	[DataMorte] [date] NULL,
	[CidadeNascimentoId] [int] NOT NULL,
	[CidadeMorteId] [int] NULL,
	[Sexo] [char](1) NOT NULL,
 CONSTRAINT [PK_Individuo] PRIMARY KEY CLUSTERED 
(
	[LaureadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LaureadoIndividuo]  WITH CHECK ADD  CONSTRAINT [FK_Individuo_Cidade] FOREIGN KEY([CidadeNascimentoId])
REFERENCES [dbo].[Cidade] ([CidadeId])
GO

ALTER TABLE [dbo].[LaureadoIndividuo] CHECK CONSTRAINT [FK_Individuo_Cidade]
GO
ALTER TABLE [dbo].[LaureadoIndividuo]  WITH CHECK ADD  CONSTRAINT [FK_Individuo_Cidade1] FOREIGN KEY([CidadeMorteId])
REFERENCES [dbo].[Cidade] ([CidadeId])
GO

ALTER TABLE [dbo].[LaureadoIndividuo] CHECK CONSTRAINT [FK_Individuo_Cidade1]
GO
ALTER TABLE [dbo].[LaureadoIndividuo]  WITH CHECK ADD  CONSTRAINT [FK_Individuo_Laureado] FOREIGN KEY([LaureadoId])
REFERENCES [dbo].[Laureado] ([LaureadoId])
GO

ALTER TABLE [dbo].[LaureadoIndividuo] CHECK CONSTRAINT [FK_Individuo_Laureado]