CREATE TABLE [dbo].[Semester]
(
[SemesterID] [int] NOT NULL IDENTITY(1, 1),
[SemesterName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StartDate] [date] NOT NULL,
[Enđate] [date] NOT NULL,
[FacultyID] [int] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Semester] ADD CONSTRAINT [PK_Semester] PRIMARY KEY CLUSTERED ([SemesterID]) ON [PRIMARY]
GO
