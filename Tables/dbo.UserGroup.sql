CREATE TABLE [dbo].[UserGroup]
(
[UserID] [int] NOT NULL IDENTITY(1, 1),
[GroupID] [int] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserGroup] ADD CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED ([GroupID], [UserID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserGroup] ADD CONSTRAINT [FK_UserGroup_Group] FOREIGN KEY ([GroupID]) REFERENCES [dbo].[Group] ([GroupID])
GO
ALTER TABLE [dbo].[UserGroup] ADD CONSTRAINT [FK_UserGroup_User] FOREIGN KEY ([UserID]) REFERENCES [dbo].[User] ([UserID])
GO
