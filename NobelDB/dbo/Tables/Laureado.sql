CREATE TABLE [dbo].[Laureado](
	[LaureadoId] [int] NOT NULL,
	[LaureadoTipo] [char](1) NOT NULL,
 CONSTRAINT [PK_Laureado] PRIMARY KEY CLUSTERED 
(
	[LaureadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Laureado]  WITH CHECK ADD  CONSTRAINT [CK_Laureado] CHECK  (([LaureadoTipo]='O' OR [LaureadoTipo]='I'))
GO

ALTER TABLE [dbo].[Laureado] CHECK CONSTRAINT [CK_Laureado]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Laureado é Individuo ou Organização' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Laureado', @level2type=N'CONSTRAINT',@level2name=N'CK_Laureado'