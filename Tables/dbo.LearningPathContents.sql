CREATE TABLE [dbo].[LearningPathContents]
(
[LearningPathContentID] [int] NOT NULL IDENTITY(1, 1),
[LearningPathID] [int] NOT NULL,
[CNID] [int] NOT NULL,
[Ordering] [int] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LearningPathContents] ADD CONSTRAINT [PK_LearningPathContents] PRIMARY KEY CLUSTERED ([LearningPathContentID]) ON [PRIMARY]
GO
