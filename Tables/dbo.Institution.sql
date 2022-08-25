CREATE TABLE [dbo].[Institution]
(
[InstitutionID] [int] NOT NULL IDENTITY(1, 1),
[InstitutionName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Institution] ADD CONSTRAINT [PK_Institution] PRIMARY KEY CLUSTERED ([InstitutionID]) ON [PRIMARY]
GO
