CREATE TABLE [dbo].[Question]
(
[QuestionID] [int] NOT NULL IDENTITY(1, 1),
[QuestionContent] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ChoiceA] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ChoiceB] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ChoiceC] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ChoiceD] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CorrectAnswer] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Explanation] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BloomLevel] [int] NOT NULL,
[SOLOStage] [int] NOT NULL,
[QuestionTypeID] [int] NOT NULL,
[TopicID] [int] NOT NULL,
[ILOID] [int] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [PK_QuestionBank] PRIMARY KEY CLUSTERED ([QuestionID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [FK_Questions_ILO] FOREIGN KEY ([ILOID]) REFERENCES [dbo].[ILO] ([ILOID])
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [FK_Questions_QuestionType] FOREIGN KEY ([QuestionTypeID]) REFERENCES [dbo].[QuestionType] ([QuestionTypeID])
GO
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [FK_Questions_Topic] FOREIGN KEY ([TopicID]) REFERENCES [dbo].[Topic] ([TopicID])
GO
