USE [LambdaComplex]
GO
/****** Object:  User [Server_Admin]    Script Date: 06-04-2024 11:10:48 PM ******/
CREATE USER [Server_Admin] FOR LOGIN [Server_Admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl](
	[ID] [varchar](36) NOT NULL,
	[EventDescription] [varchar](50) NULL,
	[EventDate] [datetime] NULL,
	[CreatedBy] [varchar](36) NOT NULL,
	[ModifiedBy] [varchar](36) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[EventPriority] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_File_Trn_Tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_File_Trn_Tbl](
	[ID] [varchar](36) NULL,
	[UserID] [varchar](36) NOT NULL,
	[RecordID] [varchar](36) NOT NULL,
	[FileName] [varchar](200) NOT NULL,
	[FileType] [varchar](200) NOT NULL,
	[StoredFileName] [varchar](500) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Goals_Changes_Trn_tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Goals_Changes_Trn_tbl](
	[RecordId] [varchar](36) NULL,
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[version] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Goals_Mst_tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Goals_Mst_tbl](
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl](
	[RecordId] [varchar](36) NULL,
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[version] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_MileStone_Mst_tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl](
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Project_Changes_Trn_tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl](
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Project_Mst_tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Project_Mst_tbl](
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Tasks_Changes_Trn_tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Tasks_Changes_Trn_tbl](
	[RecordId] [varchar](36) NULL,
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[version] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Tasks_Mst_tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Tasks_Mst_tbl](
	[ID] [varchar](36) NULL,
	[Name] [varchar](200) NULL,
	[Description] [varchar](max) NULL,
	[RunningStatus] [int] NULL,
	[AssignedTo] [varchar](36) NULL,
	[ReportingStatus] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_Team_Mst_Tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_Team_Mst_Tbl](
	[ID] [varchar](36) NOT NULL,
	[TeamName] [varchar](200) NULL,
	[TeamDescription] [varchar](max) NULL,
	[LeaderID] [varchar](36) NOT NULL,
	[ProjectID] [varchar](36) NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_TeamMember_Trn_Tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_TeamMember_Trn_Tbl](
	[ID] [varchar](36) NOT NULL,
	[TeamID] [varchar](36) NOT NULL,
	[TeamMemberID] [varchar](36) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [varchar](36) NULL,
	[ModifiedBy] [varchar](36) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LambdaComplex_User_Mst_Tbl]    Script Date: 06-04-2024 11:10:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LambdaComplex_User_Mst_Tbl](
	[ID] [varchar](36) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Password] [varchar](500) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[EmailID] [varchar](200) NOT NULL,
	[IsDeleted] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[Role] [varchar](20) NULL,
	[MobileNumber] [char](10) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority]) VALUES (N'03F5BA35-E358-41B0-BB66-93A0463D7662', N'my other event', CAST(N'2024-03-28T00:00:00.000' AS DateTime), N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', 1, CAST(N'2024-03-26T10:33:10.823' AS DateTime), CAST(N'2024-03-26T10:33:19.170' AS DateTime), N'LOW')
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority]) VALUES (N'07D59335-7253-4BE7-A306-E69470C57017', N'eid', CAST(N'2024-03-28T00:00:00.000' AS DateTime), N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', 1, CAST(N'2024-03-26T15:48:32.520' AS DateTime), CAST(N'2024-03-26T15:48:41.587' AS DateTime), N'LOW')
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority]) VALUES (N'64F4321C-E3DF-4874-B569-112DCF69E8D9', N'My event', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', N'SYSTEM', 1, CAST(N'2024-03-26T10:03:31.017' AS DateTime), CAST(N'2024-03-27T13:17:59.390' AS DateTime), N'LOW')
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority]) VALUES (N'6E0B6BFD-E0A5-449B-8FB9-E7D6F4077F56', N'my event', CAST(N'2024-03-28T00:00:00.000' AS DateTime), N'15DE59B3-4751-4A07-AB42-C1FF5F8A2D10', N'15DE59B3-4751-4A07-AB42-C1FF5F8A2D10', 1, CAST(N'2024-03-27T12:58:39.847' AS DateTime), CAST(N'2024-03-27T13:00:47.270' AS DateTime), N'LOW')
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority]) VALUES (N'8D074A09-7E40-4E0D-8731-E77F59494675', N'Important Meeting that day', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'DE73D226-5B97-4800-B00A-71002378397E', N'SYSTEM', 1, CAST(N'2024-03-26T20:14:54.250' AS DateTime), CAST(N'2024-03-27T13:17:59.390' AS DateTime), N'LOW')
INSERT [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ([ID], [EventDescription], [EventDate], [CreatedBy], [ModifiedBy], [IsDeleted], [CreatedOn], [ModifiedOn], [EventPriority]) VALUES (N'B339DA99-688B-4720-8172-B1C3BAFAB179', N'My event', CAST(N'2024-03-27T00:00:00.000' AS DateTime), N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', N'SYSTEM', 1, CAST(N'2024-03-26T10:32:55.257' AS DateTime), CAST(N'2024-03-27T13:17:59.390' AS DateTime), N'LOW')
GO
INSERT [dbo].[LambdaComplex_Team_Mst_Tbl] ([ID], [TeamName], [TeamDescription], [LeaderID], [ProjectID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'4734A958-B6E1-41D8-8301-A6F7AE5A5FE9', N'X Force 3', N'&lt;strong&gt;&lt;span style="text-decoration:underline;color:#ff0000;background-color:#0000ff;"&gt;&lt;em&gt;X FORCe 3 ROCKS!!!!&lt;/em&gt;&lt;/span&gt;&lt;/strong&gt;', N'C7A5C2CC-D769-4553-A86F-7D3CA5BD5B76', N'23', 1, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-06T19:48:55.940' AS DateTime), CAST(N'2024-04-06T19:48:55.940' AS DateTime))
INSERT [dbo].[LambdaComplex_Team_Mst_Tbl] ([ID], [TeamName], [TeamDescription], [LeaderID], [ProjectID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'D58E1ECA-202F-44B8-8B00-2FDC5F9BC948', N'X Force', N'&lt;ul&gt;&lt;li&gt;re&lt;/li&gt;&lt;li&gt;er&lt;/li&gt;&lt;/ul&gt;', N'8334276F-F2DB-42A8-A2B2-0558A1CD87D8', N'24', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-06T17:39:07.520' AS DateTime), CAST(N'2024-04-06T17:39:07.520' AS DateTime))
GO
INSERT [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ([ID], [TeamID], [TeamMemberID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'C5B4BBE5-541F-4D33-8FCF-3E09EEE18F4A', N'D58E1ECA-202F-44B8-8B00-2FDC5F9BC948', N'2907AAE4-860A-430F-8DAB-62E1998911EA', 1, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-06T21:50:30.820' AS DateTime), CAST(N'2024-04-06T21:50:30.820' AS DateTime))
INSERT [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ([ID], [TeamID], [TeamMemberID], [IsDeleted], [CreatedBy], [ModifiedBy], [CreatedOn], [ModifiedOn]) VALUES (N'F9CFFF8A-1132-4F19-B32F-9A419CF51064', N'D58E1ECA-202F-44B8-8B00-2FDC5F9BC948', N'48A23EE3-CBE6-4104-8D91-C435EBA89A84', 0, N'DE73D226-5B97-4800-B00A-71002378397E', N'DE73D226-5B97-4800-B00A-71002378397E', CAST(N'2024-04-06T21:45:00.943' AS DateTime), CAST(N'2024-04-06T21:45:00.943' AS DateTime))
GO
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'DE73D226-5B97-4800-B00A-71002378397E', N'Rishit', N'Selia', N'HIM~1»£Õ¬«n{·ªtÎ…ÔVV^õsvw²', N'Rishit.Selia', N'Rishit.Selia@gmail.com', 0, CAST(N'2024-03-12T22:54:20.747' AS DateTime), CAST(N'2024-03-24T11:38:30.993' AS DateTime), N'Admin', N'9099433022')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'6DCBDB95-9B96-4E07-A2DE-F6FC6E371812', N'Muneer', N'Ahmad', N'HIM~1»£Õ¬«n{·ªtÎ…ÔVV^õsvw²', N'Muneer.Ahmad', N'Muneer.Ahmad@gmail.com', 0, CAST(N'2024-03-25T09:25:09.920' AS DateTime), CAST(N'2024-03-26T15:49:15.750' AS DateTime), N'Admin', N'9760811155')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'2907AAE4-860A-430F-8DAB-62E1998911EA', N'Berlin', N'Singh', N'HIM~1»£Õ¬«n{·ªtÎ…ÔVV^õsvw²', N'Berlin.Singh', N'Berlin.Singh@gmail.com', 0, CAST(N'2024-03-25T09:25:50.130' AS DateTime), CAST(N'2024-03-25T09:25:50.130' AS DateTime), N'Dev', N'9090909090')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'8334276F-F2DB-42A8-A2B2-0558A1CD87D8', N'Afraa', N'Shariff', N'HIM~1»£Õ¬«n{·ªtÎ…ÔVV^õsvw²', N'Afraa.Shariff', N'Afraa.Shariff@gmail.com', 0, CAST(N'2024-03-25T09:26:18.760' AS DateTime), CAST(N'2024-03-25T09:26:18.760' AS DateTime), N'Lead', N'9090909090')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'48A23EE3-CBE6-4104-8D91-C435EBA89A84', N'Rajmukut', N'Gogoi', N'HIM~1»£Õ¬«n{·ªtÎ…ÔVV^õsvw²', N'Rajmukut.Gogoi', N'Rajmukut.Gogoi@gmail.com', 0, CAST(N'2024-03-25T09:26:38.097' AS DateTime), CAST(N'2024-03-25T09:26:38.097' AS DateTime), N'Dev', N'9090909090')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'C7A5C2CC-D769-4553-A86F-7D3CA5BD5B76', N'xyz', N'xyz', N'hW*ç.æ¿ã· Üfå@þö@59ÿ<QÉiÆèò÷†ò—', N'xyz.xyz', N'xyz.xyz@gmail.com', 0, CAST(N'2024-03-26T20:06:51.570' AS DateTime), CAST(N'2024-03-26T20:06:51.570' AS DateTime), N'lead', N'9090909090')
INSERT [dbo].[LambdaComplex_User_Mst_Tbl] ([ID], [FirstName], [LastName], [Password], [UserName], [EmailID], [IsDeleted], [CreatedOn], [ModifiedOn], [Role], [MobileNumber]) VALUES (N'15DE59B3-4751-4A07-AB42-C1FF5F8A2D10', N'mun', N'ahm', N'Î¤KRF_õÊƒ¸?;aWì[×*£ƒ''±gŒÑ³uŠ', N'mun.ahm', N'mun.ahm@gmail.com', 0, CAST(N'2024-03-27T12:55:20.747' AS DateTime), CAST(N'2024-03-27T12:55:20.747' AS DateTime), N'dev', N'9090909090')
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  DEFAULT ('') FOR [EventDescription]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [EventDate]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_CalendarEvent_Trn_Tbl] ADD  DEFAULT ('MID') FOR [EventPriority]
GO
ALTER TABLE [dbo].[LambdaComplex_File_Trn_Tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_File_Trn_Tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_File_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_File_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Changes_Trn_tbl] ADD  DEFAULT (newid()) FOR [RecordId]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Changes_Trn_tbl] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Mst_tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Mst_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Mst_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Mst_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Mst_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Mst_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Mst_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Goals_Mst_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT (newid()) FOR [RecordId]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_MileStone_Mst_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Project_Mst_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Changes_Trn_tbl] ADD  DEFAULT (newid()) FOR [RecordId]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Changes_Trn_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Changes_Trn_tbl] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Changes_Trn_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Changes_Trn_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Mst_tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Mst_tbl] ADD  DEFAULT ('') FOR [Name]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Mst_tbl] ADD  DEFAULT ('') FOR [Description]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Mst_tbl] ADD  DEFAULT ((0)) FOR [RunningStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Mst_tbl] ADD  DEFAULT ((0)) FOR [ReportingStatus]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Mst_tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Mst_tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Tasks_Mst_tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Team_Mst_Tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_Team_Mst_Tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_Team_Mst_Tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_Team_Mst_Tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_TeamMember_Trn_Tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_User_Mst_Tbl] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [dbo].[LambdaComplex_User_Mst_Tbl] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[LambdaComplex_User_Mst_Tbl] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[LambdaComplex_User_Mst_Tbl] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
