CREATE TABLE [dbo].[Class]
(
[ClassID] [int] NOT NULL IDENTITY(1, 1),
[CourseID] [int] NOT NULL,
[SemesterID] [int] NOT NULL,
[InstructorID] [int] NOT NULL,
[ImageURL] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Class] ADD CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED ([ClassID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Class] ADD CONSTRAINT [FK_Class_Course] FOREIGN KEY ([CourseID]) REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Class] ADD CONSTRAINT [FK_Class_Semester] FOREIGN KEY ([SemesterID]) REFERENCES [dbo].[Semester] ([SemesterID])
GO
ALTER TABLE [dbo].[Class] ADD CONSTRAINT [FK_Class_User] FOREIGN KEY ([InstructorID]) REFERENCES [dbo].[User] ([UserID])
GO
