CREATE TABLE [dbo].[LaureadoOrganizacao](
	[LaureadoId] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
 CONSTRAINT [PK_LaureadoOrganizacao_1] PRIMARY KEY CLUSTERED 
(
	[LaureadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LaureadoOrganizacao]  WITH CHECK ADD  CONSTRAINT [FK_LaureadoOrganizacao_Laureado] FOREIGN KEY([LaureadoId])
REFERENCES [dbo].[Laureado] ([LaureadoId])
GO

ALTER TABLE [dbo].[LaureadoOrganizacao] CHECK CONSTRAINT [FK_LaureadoOrganizacao_Laureado]