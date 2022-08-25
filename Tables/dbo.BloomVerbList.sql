CREATE TABLE [dbo].[BloomVerbList]
(
[VerbID] [int] NOT NULL IDENTITY(1, 1),
[BloomLevel] [tinyint] NOT NULL,
[Verb] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BloomVerbList] ADD CONSTRAINT [PK_BloomVerbList] PRIMARY KEY CLUSTERED ([VerbID]) ON [PRIMARY]
GO
