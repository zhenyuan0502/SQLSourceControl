CREATE TABLE [dbo].[LearningProcess]
(
[LearningProcessID] [int] NOT NULL IDENTITY(1, 1),
[LearningPathContentID] [int] NOT NULL,
[EnrollDate] [date] NULL,
[TakenDate] [date] NULL,
[Grades] [float] NULL,
[MaxGrades] [float] NULL,
[HasDone] [bit] NULL,
[DoneDate] [date] NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LearningProcess] ADD CONSTRAINT [PK_LearningProcess] PRIMARY KEY CLUSTERED ([LearningProcessID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LearningProcess] ADD CONSTRAINT [FK_UserLearningProcess_LearningPathContents] FOREIGN KEY ([LearningPathContentID]) REFERENCES [dbo].[LearningPathContents] ([LearningPathContentID])
GO
