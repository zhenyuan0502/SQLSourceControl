CREATE TABLE [dbo].[Revision]
(
[RevisionID] [int] NOT NULL IDENTITY(1, 1),
[LearningPathContentID] [int] NOT NULL,
[ReviewMark] [float] NOT NULL,
[ReviewText] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReviewPhoto] [image] NULL,
[ReviewLink] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Revision] ADD CONSTRAINT [PK_Revision] PRIMARY KEY CLUSTERED ([RevisionID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Revision] ADD CONSTRAINT [FK_UserRevision_LearningPathContents] FOREIGN KEY ([LearningPathContentID]) REFERENCES [dbo].[LearningPathContents] ([LearningPathContentID])
GO
