CREATE TABLE [dbo].[ClassRegistration]
(
[UserID] [int] NOT NULL,
[ClassID] [int] NOT NULL,
[RegisterDate] [date] NOT NULL,
[WithdrawalDate] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EntranceGrade] [float] NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClassRegistration] ADD CONSTRAINT [PK_ClassRegistration] PRIMARY KEY CLUSTERED ([UserID], [ClassID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClassRegistration] ADD CONSTRAINT [FK_ClassRegistration_Class] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[ClassRegistration] ADD CONSTRAINT [FK_ClassRegistration_User] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[User] ([UserID])
GO
