CREATE TABLE [dbo].[QuestionType]
(
[QuestionTypeID] [int] NOT NULL IDENTITY(1, 1),
[QuestionTypeName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QuestionType] ADD CONSTRAINT [PK_QuestionType] PRIMARY KEY CLUSTERED ([QuestionTypeID]) ON [PRIMARY]
GO
