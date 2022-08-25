CREATE TABLE [dbo].[UserLearningPath]
(
[UserID] [int] NOT NULL IDENTITY(1, 1),
[LearningPathID] [int] NOT NULL,
[StartCNID] [int] NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserLearningPath] ADD CONSTRAINT [PK_User_LearningPath] PRIMARY KEY CLUSTERED ([UserID], [LearningPathID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserLearningPath] ADD CONSTRAINT [FK_UserLearningPath_CN] FOREIGN KEY ([StartCNID]) REFERENCES [dbo].[CN] ([CNID])
GO
ALTER TABLE [dbo].[UserLearningPath] ADD CONSTRAINT [FK_UserLearningPath_LearningPath] FOREIGN KEY ([LearningPathID]) REFERENCES [dbo].[LearningPath] ([LearningPathID])
GO
ALTER TABLE [dbo].[UserLearningPath] ADD CONSTRAINT [FK_UserLearningPath_User] FOREIGN KEY ([UserID]) REFERENCES [dbo].[User] ([UserID])
GO
