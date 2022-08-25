CREATE TABLE [dbo].[Major]
(
[MajorID] [int] NOT NULL IDENTITY(1, 1),
[MajorName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FacultyID] [int] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Major] ADD CONSTRAINT [PK_Major] PRIMARY KEY CLUSTERED ([MajorID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Major] ADD CONSTRAINT [FK_Major_Faculty] FOREIGN KEY ([FacultyID]) REFERENCES [dbo].[Faculty] ([FacultyID])
GO
