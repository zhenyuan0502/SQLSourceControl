CREATE TABLE [dbo].[ATContents]
(
[ATID] [int] NOT NULL,
[QuestionID] [int] NOT NULL,
[Grade] [tinyint] NOT NULL CONSTRAINT [DF_ATContents_Grade] DEFAULT ((1)),
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ATContents] ADD CONSTRAINT [PK_ATContents] PRIMARY KEY CLUSTERED ([ATID], [QuestionID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ATContents] ADD CONSTRAINT [FK_ATContents_AT] FOREIGN KEY ([ATID]) REFERENCES [dbo].[AT] ([ATID])
GO
ALTER TABLE [dbo].[ATContents] ADD CONSTRAINT [FK_ATContents_Questions] FOREIGN KEY ([QuestionID]) REFERENCES [dbo].[Question] ([QuestionID])
GO
