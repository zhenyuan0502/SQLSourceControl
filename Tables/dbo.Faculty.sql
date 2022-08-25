CREATE TABLE [dbo].[Faculty]
(
[FacultyID] [int] NOT NULL IDENTITY(1, 1),
[FacultyName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[InstitutionID] [int] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Faculty] ADD CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED ([FacultyID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Faculty] ADD CONSTRAINT [FK_Faculty_Institution] FOREIGN KEY ([InstitutionID]) REFERENCES [dbo].[Institution] ([InstitutionID])
GO
