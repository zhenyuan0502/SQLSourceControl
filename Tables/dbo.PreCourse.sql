CREATE TABLE [dbo].[PreCourse]
(
[CourseID] [int] NOT NULL IDENTITY(1, 1),
[PreCourseID] [int] NOT NULL,
[MinimumGrade] [float] NULL CONSTRAINT [DF_PreCourse_MinimumGrade] DEFAULT ((5)),
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PreCourse] ADD CONSTRAINT [PK_PreCourse] PRIMARY KEY CLUSTERED ([CourseID], [PreCourseID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PreCourse] ADD CONSTRAINT [FK_PreCourse_Course] FOREIGN KEY ([CourseID]) REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[PreCourse] ADD CONSTRAINT [FK_PreCourse_Course1] FOREIGN KEY ([PreCourseID]) REFERENCES [dbo].[Course] ([CourseID])
GO
