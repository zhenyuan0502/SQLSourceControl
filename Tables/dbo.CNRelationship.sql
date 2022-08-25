CREATE TABLE [dbo].[CNRelationship]
(
[CNID_Before] [int] NOT NULL,
[CNID_After] [int] NOT NULL,
[Relationship] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CNRelationship] ADD CONSTRAINT [PK_CNRelationship] PRIMARY KEY CLUSTERED ([CNID_Before], [CNID_After]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CNRelationship] ADD CONSTRAINT [FK_CNRelationship_CN] FOREIGN KEY ([CNID_Before]) REFERENCES [dbo].[CN] ([CNID])
GO
