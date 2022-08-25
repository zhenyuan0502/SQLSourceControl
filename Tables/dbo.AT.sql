CREATE TABLE [dbo].[AT]
(
[ATID] [int] NOT NULL IDENTITY(1, 1),
[ATName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACV] [float] NOT NULL,
[ATTypeID] [int] NOT NULL,
[ClassID] [int] NOT NULL,
[TopicID] [int] NOT NULL,
[Ordering] [int] NOT NULL,
[WeightPercentages] [float] NULL,
[ACVPercentages] [float] NULL,
[IsEntranceTest] [bit] NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AT] ADD CONSTRAINT [PK_AT] PRIMARY KEY CLUSTERED ([ATID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AT] ADD CONSTRAINT [FK_AT_AssessmentType] FOREIGN KEY ([ATTypeID]) REFERENCES [dbo].[ATType] ([ATTypeID])
GO
ALTER TABLE [dbo].[AT] ADD CONSTRAINT [FK_AT_Class] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[AT] ADD CONSTRAINT [FK_AT_Topic] FOREIGN KEY ([TopicID]) REFERENCES [dbo].[Topic] ([TopicID])
GO
