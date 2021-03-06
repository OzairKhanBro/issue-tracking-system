USE [master]
GO
/****** Object:  Database [im]    Script Date: 2/6/2019 4:36:08 PM ******/
CREATE DATABASE [im]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'im', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\im.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'im_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\im_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [im] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [im].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [im] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [im] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [im] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [im] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [im] SET ARITHABORT OFF 
GO
ALTER DATABASE [im] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [im] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [im] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [im] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [im] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [im] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [im] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [im] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [im] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [im] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [im] SET  DISABLE_BROKER 
GO
ALTER DATABASE [im] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [im] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [im] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [im] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [im] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [im] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [im] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [im] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [im] SET  MULTI_USER 
GO
ALTER DATABASE [im] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [im] SET DB_CHAINING OFF 
GO
ALTER DATABASE [im] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [im] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'im', N'ON'
GO
USE [im]
GO
/****** Object:  Table [dbo].[_ABCD]    Script Date: 2/6/2019 4:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ABCD](
	[Issue] [int] NOT NULL,
	[ID] [nvarchar](32) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](128) NOT NULL,
	[Abstract] [nvarchar](255) NOT NULL,
	[History] [ntext] NULL,
	[Attachments] [int] NOT NULL,
	[Links] [int] NOT NULL,
	[Status] [nvarchar](32) NOT NULL,
	[Description] [ntext] NULL,
	[Test1] [int] NOT NULL,
 CONSTRAINT [PK_Issue] PRIMARY KEY CLUSTERED 
(
	[Issue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_ABXX]    Script Date: 2/6/2019 4:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ABXX](
	[Issue] [int] NOT NULL,
	[ID] [nvarchar](32) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](128) NOT NULL,
	[Abstract] [nvarchar](255) NOT NULL,
	[History] [ntext] NULL,
	[Attachments] [int] NOT NULL,
	[Links] [int] NOT NULL,
	[Status] [nvarchar](32) NOT NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_Issue2] PRIMARY KEY CLUSTERED 
(
	[Issue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_ABYY11]    Script Date: 2/6/2019 4:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ABYY11](
	[Issue] [int] NOT NULL,
	[ID] [nvarchar](32) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](128) NOT NULL,
	[Abstract] [nvarchar](255) NOT NULL,
	[History] [ntext] NULL,
	[Attachments] [int] NOT NULL,
	[Links] [int] NOT NULL,
	[Status] [nvarchar](32) NOT NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_Issue4] PRIMARY KEY CLUSTERED 
(
	[Issue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_ABYYZZ]    Script Date: 2/6/2019 4:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ABYYZZ](
	[Issue] [int] NOT NULL,
	[ID] [nvarchar](32) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](128) NOT NULL,
	[Abstract] [nvarchar](255) NOT NULL,
	[History] [ntext] NULL,
	[Attachments] [int] NOT NULL,
	[Links] [int] NOT NULL,
	[Status] [nvarchar](32) NOT NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_Issue3] PRIMARY KEY CLUSTERED 
(
	[Issue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_EFGH]    Script Date: 2/6/2019 4:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_EFGH](
	[Issue] [int] NOT NULL,
	[ID] [nvarchar](32) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](128) NOT NULL,
	[Abstract] [nvarchar](255) NOT NULL,
	[History] [ntext] NULL,
	[Attachments] [float] NULL,
	[Links] [float] NULL,
	[Status] [nvarchar](32) NOT NULL,
	[Description] [ntext] NULL,
	[Comments] [ntext] NULL,
	[IsImportant] [bit] NULL,
 CONSTRAINT [PK_Issue1] PRIMARY KEY CLUSTERED 
(
	[Issue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fields]    Script Date: 2/6/2019 4:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[Template] [nvarchar](255) NULL,
	[Idx] [int] NULL,
	[dbColumnName] [nvarchar](32) NULL,
	[Panel] [nvarchar](32) NULL,
	[FieldName] [nvarchar](64) NULL,
	[FieldType] [nvarchar](32) NULL,
	[Required] [bit] NULL,
	[MinValue] [int] NULL,
	[MaxValue] [int] NULL,
	[AllContacts] [int] NULL,
	[UpdateViaLinks] [bit] NULL,
	[ChoiceSQL] [ntext] NULL,
	[DoubleWide] [int] NULL,
	[FieldLength] [int] NOT NULL,
	[ToolTip] [nvarchar](255) NULL,
	[SourceProject] [nvarchar](255) NULL,
	[Options] [int] NOT NULL,
	[SCMOptions] [int] NOT NULL,
	[SCMIndex] [int] NOT NULL,
	[KeyID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GridRowColors]    Script Date: 2/6/2019 4:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GridRowColors](
	[Template] [nvarchar](255) NOT NULL,
	[Field] [nvarchar](32) NOT NULL,
	[Op] [nvarchar](16) NOT NULL,
	[Val] [nvarchar](255) NOT NULL,
	[ForeColor] [int] NOT NULL,
	[BackColor] [int] NOT NULL,
	[Idx] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Projects]    Script Date: 2/6/2019 4:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[KeyID] [int] NOT NULL,
	[Project] [nvarchar](255) NULL,
	[Owner] [nvarchar](128) NULL,
	[Description] [nvarchar](255) NULL,
	[Template] [nvarchar](255) NULL,
	[ObjName] [nvarchar](50) NULL,
	[ObjNamePl] [nvarchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[IssuesTable] [nvarchar](255) NULL,
	[IsFolder] [int] NULL,
	[HistoryTable] [nvarchar](255) NULL,
	[NextIdx] [int] NULL,
	[IDFormat] [int] NULL,
	[IDWidth] [int] NULL,
	[ReformatIDOnCopy] [bit] NOT NULL,
	[IsSourceProject] [int] NULL,
	[Options] [int] NULL,
	[PreviewTemplate] [ntext] NULL,
	[IsHidden] [bit] NOT NULL,
	[SCMPath] [nvarchar](512) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/6/2019 4:36:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [nvarchar](32) NULL,
	[Owner] [nvarchar](128) NULL,
	[DisplayName] [nvarchar](32) NULL,
	[Password] [nvarchar](128) NULL,
	[StartupProject] [nvarchar](255) NULL,
	[AutoLogon] [bit] NOT NULL,
	[SortDescending] [bit] NOT NULL,
	[ReloadLastProject] [bit] NOT NULL,
	[AutoSave] [bit] NOT NULL,
	[ViewBmp] [bit] NOT NULL,
	[TabToTextTabs] [bit] NOT NULL,
	[AccessAllProjects] [bit] NOT NULL,
	[UserOptions] [int] NOT NULL,
	[HTMLDefaultFont] [nvarchar](255) NULL,
	[HTMLDefaultFontSize] [nvarchar](255) NULL,
	[HTMLTimestampForeColor] [nvarchar](255) NULL,
	[HTMLTimestampBackColor] [nvarchar](255) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[_ABCD] ([Issue], [ID], [CreateDate], [LastUpdate], [UpdatedBy], [Abstract], [History], [Attachments], [Links], [Status], [Description], [Test1]) VALUES (1, N'1', CAST(0x0000A9CD01015AD0 AS DateTime), CAST(0x0000A9CD01015AD0 AS DateTime), N'admin', N'Issue ABCD 1', N'<SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><DIV>This is a test history ABCD 1. </DIV></SPAN>', 1, 0, N'old', N'</SPAN><SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><h1>This is a heading test of ABCD</h1><ul><li>My name is Usman</li><li>His name is umer</li><li>What is your name?</li></ul><DIV>', 2)
INSERT [dbo].[_ABCD] ([Issue], [ID], [CreateDate], [LastUpdate], [UpdatedBy], [Abstract], [History], [Attachments], [Links], [Status], [Description], [Test1]) VALUES (2, N'2', CAST(0x0000A9CD010419F0 AS DateTime), CAST(0x0000A9CD010419F0 AS DateTime), N'admin', N'Issue ABCD 2', N'<SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><DIV>This is a test history ABCD 2. </DIV></SPAN>', 1, 1, N'new', N'</SPAN><SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><h1>This is a heading test of ABCD</h1><ul><li>My name is Usman</li><li>His name is umer</li><li>What is your name?</li></ul><DIV>', 8)
INSERT [dbo].[_ABCD] ([Issue], [ID], [CreateDate], [LastUpdate], [UpdatedBy], [Abstract], [History], [Attachments], [Links], [Status], [Description], [Test1]) VALUES (3, N'3', CAST(0x0000A9EC00000000 AS DateTime), CAST(0x0000AA2500000000 AS DateTime), N'admin', N'New Issue', N'kbsd', 0, 0, N'new', N'</SPAN><SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><h1>This is a heading test of ABCD</h1><ul><li>My name is Usman</li><li>His name is umer</li><li>What is your name?</li></ul><DIV>', 1)
INSERT [dbo].[_ABCD] ([Issue], [ID], [CreateDate], [LastUpdate], [UpdatedBy], [Abstract], [History], [Attachments], [Links], [Status], [Description], [Test1]) VALUES (4, N'4', CAST(0x0000A9E700000000 AS DateTime), CAST(0x0000AA2600000000 AS DateTime), N'admin', N'Issue ABCD 3', N'n', 0, 0, N'new', N'</SPAN><SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><h1>This is a heading test of ABCD</h1><ul><li>My name is Usman</li><li>His name is umer</li><li>What is your name?</li></ul><DIV>', 2)
INSERT [dbo].[_ABCD] ([Issue], [ID], [CreateDate], [LastUpdate], [UpdatedBy], [Abstract], [History], [Attachments], [Links], [Status], [Description], [Test1]) VALUES (5, N'5', CAST(0x0000A9EB00000000 AS DateTime), CAST(0x0000AA2600000000 AS DateTime), N'admin', N'Old is gold Issue', N'no', 0, 0, N'new', N'</SPAN><SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><h1>This is a heading test of ABCD</h1><ul><li>My name is Usman</li><li>His name is umer</li><li>What is your name?</li></ul><DIV>', 0)
INSERT [dbo].[_ABCD] ([Issue], [ID], [CreateDate], [LastUpdate], [UpdatedBy], [Abstract], [History], [Attachments], [Links], [Status], [Description], [Test1]) VALUES (6, N'6', CAST(0x0000AA4400000000 AS DateTime), CAST(0x0000AA4400000000 AS DateTime), N'admin', N'Issue ABCD 5', N'no', 0, 0, N'old', N'</SPAN><SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><h1>This is a heading test of ABCD</h1><ul><li>My name is Usman</li><li>His name is umer</li><li>What is your name?</li></ul><DIV>', 0)
INSERT [dbo].[_ABCD] ([Issue], [ID], [CreateDate], [LastUpdate], [UpdatedBy], [Abstract], [History], [Attachments], [Links], [Status], [Description], [Test1]) VALUES (7, N'7', CAST(0x0000AA4500000000 AS DateTime), CAST(0x0000AA4600000000 AS DateTime), N'admin', N'Issue 6', N'no', 0, 0, N'new', N'</SPAN><SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><h1>This is a heading test of ABCD</h1><ul><li>My name is Usman</li><li>His name is umer</li><li>What is your name?</li></ul><DIV>', 0)
INSERT [dbo].[_ABCD] ([Issue], [ID], [CreateDate], [LastUpdate], [UpdatedBy], [Abstract], [History], [Attachments], [Links], [Status], [Description], [Test1]) VALUES (8, N'8', CAST(0x0000AA4700000000 AS DateTime), CAST(0x0000AA4800000000 AS DateTime), N'admin', N'Issue 9', N'no', 0, 0, N'new', N'</SPAN><SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><h1>This is a heading test of ABCD</h1><ul><li>My name is Usman</li><li>His name is umer</li><li>What is your name?</li></ul><DIV>', 0)
INSERT [dbo].[_EFGH] ([Issue], [ID], [CreateDate], [LastUpdate], [UpdatedBy], [Abstract], [History], [Attachments], [Links], [Status], [Description], [Comments], [IsImportant]) VALUES (1, N'1', CAST(0x0000A9CD010419F0 AS DateTime), CAST(0x0000A9CD010419F0 AS DateTime), N'admin', N'Issue EFGH 1', N'<SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><DIV>This is a test history EFGH 1. </DIV></SPAN>', 1, 1, N'open', N'<SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><DIV>This is a test EFGH 1. </DIV></SPAN>', N'<SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><DIV>This is a test comments EFGH 1. </DIV></SPAN>', 0)
INSERT [dbo].[_EFGH] ([Issue], [ID], [CreateDate], [LastUpdate], [UpdatedBy], [Abstract], [History], [Attachments], [Links], [Status], [Description], [Comments], [IsImportant]) VALUES (2, N'2', CAST(0x0000A9CD0106D910 AS DateTime), CAST(0x0000A9CD0106D910 AS DateTime), N'admin', N'Issue EFGH 2', N'<SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><DIV>This is a test history EFGH 2. </DIV></SPAN>', NULL, NULL, N'closed', N'<SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><DIV>This is a test EFGH 2. </DIV></SPAN>', N'<SPAN style="FONT-SIZE: x-small; FONT-FAMILY: Arial"><DIV>This is a test comments EFGH 2. </DIV></SPAN>', 1)
SET IDENTITY_INSERT [dbo].[Fields] ON 

INSERT [dbo].[Fields] ([Template], [Idx], [dbColumnName], [Panel], [FieldName], [FieldType], [Required], [MinValue], [MaxValue], [AllContacts], [UpdateViaLinks], [ChoiceSQL], [DoubleWide], [FieldLength], [ToolTip], [SourceProject], [Options], [SCMOptions], [SCMIndex], [KeyID]) VALUES (N'TEMP ABCD', 5, N'Abstract', N'Abstract', N'Title', N'Abstract', 0, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, NULL, 0, 0, 0, 1)
INSERT [dbo].[Fields] ([Template], [Idx], [dbColumnName], [Panel], [FieldName], [FieldType], [Required], [MinValue], [MaxValue], [AllContacts], [UpdateViaLinks], [ChoiceSQL], [DoubleWide], [FieldLength], [ToolTip], [SourceProject], [Options], [SCMOptions], [SCMIndex], [KeyID]) VALUES (N'TEMP ABCD', 1, N'Status', N'TopPanel', N'Status', N'String', 0, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, 0, 0, 0, 2)
INSERT [dbo].[Fields] ([Template], [Idx], [dbColumnName], [Panel], [FieldName], [FieldType], [Required], [MinValue], [MaxValue], [AllContacts], [UpdateViaLinks], [ChoiceSQL], [DoubleWide], [FieldLength], [ToolTip], [SourceProject], [Options], [SCMOptions], [SCMIndex], [KeyID]) VALUES (N'TEMP ABCD', 2, N'Test1', N'TopPanel', N'Test 1', N'Number', 0, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, 0, 0, 0, 3)
INSERT [dbo].[Fields] ([Template], [Idx], [dbColumnName], [Panel], [FieldName], [FieldType], [Required], [MinValue], [MaxValue], [AllContacts], [UpdateViaLinks], [ChoiceSQL], [DoubleWide], [FieldLength], [ToolTip], [SourceProject], [Options], [SCMOptions], [SCMIndex], [KeyID]) VALUES (N'TEMP ABCD', 1, N'Description', N'Text Tab', N'Description', N'Text Tab', 0, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, 0, 0, 0, 4)
INSERT [dbo].[Fields] ([Template], [Idx], [dbColumnName], [Panel], [FieldName], [FieldType], [Required], [MinValue], [MaxValue], [AllContacts], [UpdateViaLinks], [ChoiceSQL], [DoubleWide], [FieldLength], [ToolTip], [SourceProject], [Options], [SCMOptions], [SCMIndex], [KeyID]) VALUES (N'TEMP EFGH', 5, N'Abstract', N'Abstract', N'Title', N'Abstract', 0, NULL, NULL, NULL, NULL, NULL, NULL, 255, NULL, NULL, 0, 0, 0, 5)
INSERT [dbo].[Fields] ([Template], [Idx], [dbColumnName], [Panel], [FieldName], [FieldType], [Required], [MinValue], [MaxValue], [AllContacts], [UpdateViaLinks], [ChoiceSQL], [DoubleWide], [FieldLength], [ToolTip], [SourceProject], [Options], [SCMOptions], [SCMIndex], [KeyID]) VALUES (N'TEMP EFGH', 1, N'Status', N'TopPanel', N'Status', N'String', 0, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, 0, 0, 0, 6)
INSERT [dbo].[Fields] ([Template], [Idx], [dbColumnName], [Panel], [FieldName], [FieldType], [Required], [MinValue], [MaxValue], [AllContacts], [UpdateViaLinks], [ChoiceSQL], [DoubleWide], [FieldLength], [ToolTip], [SourceProject], [Options], [SCMOptions], [SCMIndex], [KeyID]) VALUES (N'TEMP EFGH', 2, N'IsImportant', N'TopPanel', N'Is Important', N'CheckBox', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 0, 0, 7)
INSERT [dbo].[Fields] ([Template], [Idx], [dbColumnName], [Panel], [FieldName], [FieldType], [Required], [MinValue], [MaxValue], [AllContacts], [UpdateViaLinks], [ChoiceSQL], [DoubleWide], [FieldLength], [ToolTip], [SourceProject], [Options], [SCMOptions], [SCMIndex], [KeyID]) VALUES (N'TEMP EFGH', 1, N'Description', N'Text Tab', N'Description', N'Text Tab', 0, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, 0, 0, 0, 8)
INSERT [dbo].[Fields] ([Template], [Idx], [dbColumnName], [Panel], [FieldName], [FieldType], [Required], [MinValue], [MaxValue], [AllContacts], [UpdateViaLinks], [ChoiceSQL], [DoubleWide], [FieldLength], [ToolTip], [SourceProject], [Options], [SCMOptions], [SCMIndex], [KeyID]) VALUES (N'TEMP EFGH', 2, N'Comments', N'Text Tab', N'Comment(s)', N'Text Tab', 0, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, 0, 0, 0, 9)
SET IDENTITY_INSERT [dbo].[Fields] OFF
INSERT [dbo].[GridRowColors] ([Template], [Field], [Op], [Val], [ForeColor], [BackColor], [Idx]) VALUES (N'TEMP ABCD', N'Test 1', N'<', N'3', 51200, 14481663, 0)
INSERT [dbo].[GridRowColors] ([Template], [Field], [Op], [Val], [ForeColor], [BackColor], [Idx]) VALUES (N'TEMP ABCD', N'Test 1', N'>', N'5', 16711680, 13499135, 1)
INSERT [dbo].[GridRowColors] ([Template], [Field], [Op], [Val], [ForeColor], [BackColor], [Idx]) VALUES (N'TEMP EFGH', N'Status', N'=', N'open', 51200, 14745599, 0)
INSERT [dbo].[GridRowColors] ([Template], [Field], [Op], [Val], [ForeColor], [BackColor], [Idx]) VALUES (N'TEMP EFGH', N'Status', N'=', N'closed', 16711680, 15794175, 1)
INSERT [dbo].[Projects] ([KeyID], [Project], [Owner], [Description], [Template], [ObjName], [ObjNamePl], [CreateDate], [IssuesTable], [IsFolder], [HistoryTable], [NextIdx], [IDFormat], [IDWidth], [ReformatIDOnCopy], [IsSourceProject], [Options], [PreviewTemplate], [IsHidden], [SCMPath]) VALUES (1, N'Samples', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Projects] ([KeyID], [Project], [Owner], [Description], [Template], [ObjName], [ObjNamePl], [CreateDate], [IssuesTable], [IsFolder], [HistoryTable], [NextIdx], [IDFormat], [IDWidth], [ReformatIDOnCopy], [IsSourceProject], [Options], [PreviewTemplate], [IsHidden], [SCMPath]) VALUES (2, N'Samples\ABCD', N'admin', NULL, N'TEMP ABCD', N'Issue', N'Issues', CAST(0x0000909900ABA11C AS DateTime), N'_ABCD', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Projects] ([KeyID], [Project], [Owner], [Description], [Template], [ObjName], [ObjNamePl], [CreateDate], [IssuesTable], [IsFolder], [HistoryTable], [NextIdx], [IDFormat], [IDWidth], [ReformatIDOnCopy], [IsSourceProject], [Options], [PreviewTemplate], [IsHidden], [SCMPath]) VALUES (3, N'Samples\EFGH', N'admin', NULL, N'TEMP EFGH', N'Issue', N'Issues', CAST(0x0000929100CED024 AS DateTime), N'_EFGH', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Projects] ([KeyID], [Project], [Owner], [Description], [Template], [ObjName], [ObjNamePl], [CreateDate], [IssuesTable], [IsFolder], [HistoryTable], [NextIdx], [IDFormat], [IDWidth], [ReformatIDOnCopy], [IsSourceProject], [Options], [PreviewTemplate], [IsHidden], [SCMPath]) VALUES (4, N'Samples 2', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Projects] ([KeyID], [Project], [Owner], [Description], [Template], [ObjName], [ObjNamePl], [CreateDate], [IssuesTable], [IsFolder], [HistoryTable], [NextIdx], [IDFormat], [IDWidth], [ReformatIDOnCopy], [IsSourceProject], [Options], [PreviewTemplate], [IsHidden], [SCMPath]) VALUES (5, N'Samples 2\ABXX', N'admin', NULL, N'TEMP ABXX', N'Item', N'Items', CAST(0x0000909900ABA11C AS DateTime), N'_ABXX', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Projects] ([KeyID], [Project], [Owner], [Description], [Template], [ObjName], [ObjNamePl], [CreateDate], [IssuesTable], [IsFolder], [HistoryTable], [NextIdx], [IDFormat], [IDWidth], [ReformatIDOnCopy], [IsSourceProject], [Options], [PreviewTemplate], [IsHidden], [SCMPath]) VALUES (6, N'Samples 2\Samples 3', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Projects] ([KeyID], [Project], [Owner], [Description], [Template], [ObjName], [ObjNamePl], [CreateDate], [IssuesTable], [IsFolder], [HistoryTable], [NextIdx], [IDFormat], [IDWidth], [ReformatIDOnCopy], [IsSourceProject], [Options], [PreviewTemplate], [IsHidden], [SCMPath]) VALUES (7, N'Samples 2\Samples 3\ABYY ZZ', N'admin', NULL, N'TEMP ABYY ZZ', N'Item', N'Items', CAST(0x0000909900ABA11C AS DateTime), N'_ABYYZZ', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Projects] ([KeyID], [Project], [Owner], [Description], [Template], [ObjName], [ObjNamePl], [CreateDate], [IssuesTable], [IsFolder], [HistoryTable], [NextIdx], [IDFormat], [IDWidth], [ReformatIDOnCopy], [IsSourceProject], [Options], [PreviewTemplate], [IsHidden], [SCMPath]) VALUES (8, N'ABYY 11', N'admin', NULL, N'TEMP ABYY 11', N'Item', N'Items', CAST(0x0000909900ABA11C AS DateTime), N'_ABYY11', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [Owner], [DisplayName], [Password], [StartupProject], [AutoLogon], [SortDescending], [ReloadLastProject], [AutoSave], [ViewBmp], [TabToTextTabs], [AccessAllProjects], [UserOptions], [HTMLDefaultFont], [HTMLDefaultFontSize], [HTMLTimestampForeColor], [HTMLTimestampBackColor]) VALUES (N'admin', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL)
USE [master]
GO
ALTER DATABASE [im] SET  READ_WRITE 
GO
