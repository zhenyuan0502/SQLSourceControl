CREATE TABLE [dbo].[TakenAT]
(
[UserID] [int] NOT NULL IDENTITY(1, 1),
[ATID] [int] NOT NULL,
[QuestionID] [int] NOT NULL,
[AnswerTimes] [int] NOT NULL,
[AnswerDate] [date] NOT NULL,
[IsCorrect] [bit] NOT NULL,
[isDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TakenAT] ADD CONSTRAINT [PK_TakenAT] PRIMARY KEY CLUSTERED ([UserID], [ATID], [QuestionID], [AnswerTimes]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TakenAT] ADD CONSTRAINT [FK_TakenAT_ATContents] FOREIGN KEY ([ATID], [QuestionID]) REFERENCES [dbo].[ATContents] ([ATID], [QuestionID])
GO
ALTER TABLE [dbo].[TakenAT] ADD CONSTRAINT [FK_TakenAT_User] FOREIGN KEY ([UserID]) REFERENCES [dbo].[User] ([UserID])
GO
