CREATE TABLE [dbo].[User]
(
[UserID] [int] NOT NULL IDENTITY(1, 1),
[Username] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Password] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Firstname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Lastname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Gender] [bit] NOT NULL,
[DateOfBirth] [date] NOT NULL,
[EmailAddress] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MobilePhone] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Country] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[City] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Timezone] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Photo] [image] NULL,
[Interest] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FacultyID] [int] NOT NULL,
[IsDeleted] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[User] ADD CONSTRAINT [FK_User_Faculty] FOREIGN KEY ([FacultyID]) REFERENCES [dbo].[Faculty] ([FacultyID])
GO
