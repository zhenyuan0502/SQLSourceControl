CREATE TABLE [dbo].[LearningPath]
(
[LearningPathID] [int] NOT NULL IDENTITY(1, 1),
[ClassID] [int] NOT NULL,
[IsShortestPath] [bit] NULL,
[IsNotSimilarToOthers] [bit] NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LearningPath] ADD CONSTRAINT [PK_LearningPath] PRIMARY KEY CLUSTERED ([LearningPathID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LearningPath] ADD CONSTRAINT [FK_LearningPath_Class] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[Class] ([ClassID])
GO
