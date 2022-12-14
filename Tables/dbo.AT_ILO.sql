CREATE TABLE [dbo].[AT_ILO]
(
[ILOID] [int] NOT NULL,
[ATID] [int] NOT NULL,
[Percentages] [float] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AT_ILO] ADD CONSTRAINT [PK_AT_ILO] PRIMARY KEY CLUSTERED ([ATID], [ILOID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AT_ILO] ADD CONSTRAINT [FK_AT_ILO_AT] FOREIGN KEY ([ATID]) REFERENCES [dbo].[AT] ([ATID])
GO
ALTER TABLE [dbo].[AT_ILO] ADD CONSTRAINT [FK_AT_ILO_ILO] FOREIGN KEY ([ILOID]) REFERENCES [dbo].[ILO] ([ILOID])
GO
