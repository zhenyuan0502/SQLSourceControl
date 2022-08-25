CREATE TABLE [dbo].[TLA]
(
[TLAID] [int] NOT NULL IDENTITY(1, 1),
[TLAName] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TLAContent] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TCV] [float] NOT NULL,
[TLATypeID] [int] NOT NULL,
[ClassID] [int] NOT NULL,
[TopicID] [int] NOT NULL,
[Ordering] [int] NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TLA] ADD CONSTRAINT [PK_TLA_1] PRIMARY KEY CLUSTERED ([TLAID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TLA] ADD CONSTRAINT [FK_TLA_Class] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[TLA] ADD CONSTRAINT [FK_TLA_TLAType] FOREIGN KEY ([TLATypeID]) REFERENCES [dbo].[TLAType] ([TLATypeID])
GO
ALTER TABLE [dbo].[TLA] ADD CONSTRAINT [FK_TLA_Topic] FOREIGN KEY ([TopicID]) REFERENCES [dbo].[Topic] ([TopicID])
GO
EXEC sp_addextendedproperty N'MS_Description', N'Cho phép Null trong trường hợp TLA là 1 CN kiểu Supplementary', 'SCHEMA', N'dbo', 'TABLE', N'TLA', 'COLUMN', N'Ordering'
GO
