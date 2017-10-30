CREATE TABLE [dbo].[LaureadoPremioNobel](
	[LaureadoId] [int] NOT NULL,
	[PremioNobelId] [int] NOT NULL,
 CONSTRAINT [PK_LaureadoPremioNobel] PRIMARY KEY CLUSTERED 
(
	[LaureadoId] ASC,
	[PremioNobelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LaureadoPremioNobel]  WITH CHECK ADD  CONSTRAINT [FK_LaureadoPremioNobel_Laureado] FOREIGN KEY([LaureadoId])
REFERENCES [dbo].[Laureado] ([LaureadoId])
GO

ALTER TABLE [dbo].[LaureadoPremioNobel] CHECK CONSTRAINT [FK_LaureadoPremioNobel_Laureado]
GO
ALTER TABLE [dbo].[LaureadoPremioNobel]  WITH CHECK ADD  CONSTRAINT [FK_LaureadoPremioNobel_PremioNobel] FOREIGN KEY([PremioNobelId])
REFERENCES [dbo].[PremioNobel] ([PremioNobelId])
GO

ALTER TABLE [dbo].[LaureadoPremioNobel] CHECK CONSTRAINT [FK_LaureadoPremioNobel_PremioNobel]