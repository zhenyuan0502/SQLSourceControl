CREATE TABLE [dbo].[Course]
(
[CourseID] [int] NOT NULL IDENTITY(1, 1),
[CourseName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProgramID] [int] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course] ADD CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED ([CourseID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course] ADD CONSTRAINT [FK_Course_Program] FOREIGN KEY ([ProgramID]) REFERENCES [dbo].[Program] ([ProgramID])
GO
