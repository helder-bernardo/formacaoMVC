CREATE TABLE [dbo].[LaureadoIndividuoFiliacao](
	[LaureadoId] [int] NOT NULL,
	[FiliacaoId] [int] NOT NULL,
 CONSTRAINT [PK_LaureadoIndividuoFiliacao] PRIMARY KEY CLUSTERED 
(
	[LaureadoId] ASC,
	[FiliacaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LaureadoIndividuoFiliacao]  WITH CHECK ADD  CONSTRAINT [FK_LaureadoIndividuoFiliacao_Filiacao] FOREIGN KEY([FiliacaoId])
REFERENCES [dbo].[Filiacao] ([FiliacaoId])
GO

ALTER TABLE [dbo].[LaureadoIndividuoFiliacao] CHECK CONSTRAINT [FK_LaureadoIndividuoFiliacao_Filiacao]
GO
ALTER TABLE [dbo].[LaureadoIndividuoFiliacao]  WITH CHECK ADD  CONSTRAINT [FK_LaureadoIndividuoFiliacao_LaureadoIndividuo] FOREIGN KEY([LaureadoId])
REFERENCES [dbo].[LaureadoIndividuo] ([LaureadoId])
GO

ALTER TABLE [dbo].[LaureadoIndividuoFiliacao] CHECK CONSTRAINT [FK_LaureadoIndividuoFiliacao_LaureadoIndividuo]