CREATE TABLE [dbo].[Program]
(
[ProgramID] [int] NOT NULL IDENTITY(1, 1),
[ProgramName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MajorID] [int] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Program] ADD CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED ([ProgramID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Program] ADD CONSTRAINT [FK_Program_Major] FOREIGN KEY ([MajorID]) REFERENCES [dbo].[Major] ([MajorID])
GO
