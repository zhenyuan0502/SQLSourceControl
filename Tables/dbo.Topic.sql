CREATE TABLE [dbo].[Topic]
(
[TopicID] [int] NOT NULL IDENTITY(1, 1),
[TopicName] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Explanation] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CourseID] [int] NOT NULL,
[Ordering] [int] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Topic] ADD CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED ([TopicID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Topic] ADD CONSTRAINT [FK_Topic_Course] FOREIGN KEY ([CourseID]) REFERENCES [dbo].[Course] ([CourseID])
GO
