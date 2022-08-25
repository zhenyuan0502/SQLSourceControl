CREATE TABLE [dbo].[Group]
(
[GroupID] [int] NOT NULL IDENTITY(1, 1),
[GroupName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GroupDescription] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Group] ADD CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED ([GroupID]) ON [PRIMARY]
GO
