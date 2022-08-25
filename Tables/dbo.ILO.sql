CREATE TABLE [dbo].[ILO]
(
[ILOID] [int] NOT NULL IDENTITY(1, 1),
[ILODescription] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BloomLevel] [tinyint] NOT NULL,
[CourseID] [int] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ILO] ADD CONSTRAINT [PK_ILO] PRIMARY KEY CLUSTERED ([ILOID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ILO] ADD CONSTRAINT [FK_ILO_Course] FOREIGN KEY ([CourseID]) REFERENCES [dbo].[Course] ([CourseID])
GO
