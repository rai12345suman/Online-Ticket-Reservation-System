USE [master]
GO
/****** Object:  Database [TRS]    Script Date: 08/03/2013 02:48:47 ******/
CREATE DATABASE [TRS] ON  PRIMARY 
( NAME = N'TRS', FILENAME = N'D:\Project\Completed Minor Project OBTRS\Project\Minor Project\TRS.mdf' , SIZE = 4MB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TRS_log', FILENAME = N'D:\Project\Completed Minor Project OBTRS\Project\Minor Project\TRS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TRS] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TRS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TRS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TRS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TRS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TRS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TRS] SET ARITHABORT OFF
GO
ALTER DATABASE [TRS] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TRS] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TRS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TRS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TRS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TRS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TRS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TRS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TRS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TRS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TRS] SET  DISABLE_BROKER
GO
ALTER DATABASE [TRS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TRS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TRS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TRS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TRS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TRS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TRS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TRS] SET  READ_WRITE
GO
ALTER DATABASE [TRS] SET RECOVERY FULL
GO
ALTER DATABASE [TRS] SET  MULTI_USER
GO
ALTER DATABASE [TRS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TRS] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'TRS', N'ON'
GO
USE [TRS]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 08/03/2013 02:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[adminid] [int] IDENTITY(1,1) NOT NULL,
	[admin_firstname] [varchar](50) NOT NULL,
	[admin_lastname] [varchar](50) NOT NULL,
	[admin_username] [varchar](50) NOT NULL,
	[admin_password] [varchar](50) NOT NULL,
	[admin_address1] [varchar](50) NULL,
	[admin_address2] [varchar](50) NOT NULL,
	[admin_city] [varchar](50) NULL,
	[admin_state] [varchar](50) NULL,
	[admin_country] [varchar](50) NULL,
	[admin_phone] [int] NOT NULL,
	[admin_mobile] [int] NOT NULL,
	[admin_gender] [varchar](50) NOT NULL,
	[admin_citizenshipno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_admin] PRIMARY KEY CLUSTERED 
(
	[adminid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_admin] ON
INSERT [dbo].[tbl_admin] ([adminid], [admin_firstname], [admin_lastname], [admin_username], [admin_password], [admin_address1], [admin_address2], [admin_city], [admin_state], [admin_country], [admin_phone], [admin_mobile], [admin_gender], [admin_citizenshipno]) VALUES (1, N'dsfas', N'asdfas', N'aaaa', N'aaaa', N'dfsadfs', N'dsffdsdf', N'dsff', N'dsfadsf', N'dsdsg', 34124, 3214132, N'zxcvdsf', N'fdfasdfa')
INSERT [dbo].[tbl_admin] ([adminid], [admin_firstname], [admin_lastname], [admin_username], [admin_password], [admin_address1], [admin_address2], [admin_city], [admin_state], [admin_country], [admin_phone], [admin_mobile], [admin_gender], [admin_citizenshipno]) VALUES (2, N'Sunil', N'Shrestha', N'sunil1', N'sunil1', N'dfadsf', N'trwrytr', N'adads', N'aaerer', N'fdsgre', 333434444, 54345444, N'Male', N'rsdfsdfsdfsdfs')
INSERT [dbo].[tbl_admin] ([adminid], [admin_firstname], [admin_lastname], [admin_username], [admin_password], [admin_address1], [admin_address2], [admin_city], [admin_state], [admin_country], [admin_phone], [admin_mobile], [admin_gender], [admin_citizenshipno]) VALUES (3, N'wdqwe', N'sdas', N'bbbb', N'bbbb', N'wqwe', N'wqerqw', N'wqerqwr', N'qwrqwr', N'wqrqwr', 324234, 1234213412, N'Male', N'asfasdf213')
INSERT [dbo].[tbl_admin] ([adminid], [admin_firstname], [admin_lastname], [admin_username], [admin_password], [admin_address1], [admin_address2], [admin_city], [admin_state], [admin_country], [admin_phone], [admin_mobile], [admin_gender], [admin_citizenshipno]) VALUES (5, N'sdfas', N'safsa', N'safas', N'fsaf', N'safas', N'sadfsaf', N'fasfasf', N'fasfas', N'fasfasf', 3252532, 4233242, N'Female', N'dsfsadf23')
INSERT [dbo].[tbl_admin] ([adminid], [admin_firstname], [admin_lastname], [admin_username], [admin_password], [admin_address1], [admin_address2], [admin_city], [admin_state], [admin_country], [admin_phone], [admin_mobile], [admin_gender], [admin_citizenshipno]) VALUES (6, N'dsfas', N'fdsgdf', N'pramod', N'pramod', N'gfhdfgh', N'gfgfhf', N'fghgfhf', N'fghgfh', N'hfghhdf', 5675467, 54676, N'Male', N'dfdsgsh')
INSERT [dbo].[tbl_admin] ([adminid], [admin_firstname], [admin_lastname], [admin_username], [admin_password], [admin_address1], [admin_address2], [admin_city], [admin_state], [admin_country], [admin_phone], [admin_mobile], [admin_gender], [admin_citizenshipno]) VALUES (7, N'dfghdfsg', N'dfgdsgd', N'niroj', N'niroj', N'fsgdsgf', N'dsfgdsgf', N'dfsgdsgf', N'dsgfsdg', N'dsgdsgfdsg', 4563, 6345, N'Male', N'gdfsgdsgs')
SET IDENTITY_INSERT [dbo].[tbl_admin] OFF
/****** Object:  Table [dbo].[tbl_user]    Script Date: 08/03/2013 02:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_user](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[address1] [varchar](50) NULL,
	[address2] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[phone] [numeric](18, 0) NULL,
	[mobile] [numeric](18, 0) NULL,
	[email] [varchar](50) NULL,
	[ref_firstname] [varchar](50) NULL,
	[ref_lastname] [varchar](50) NULL,
	[ref_email] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[ref_phone] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_user] ON
INSERT [dbo].[tbl_user] ([userid], [first_name], [last_name], [address1], [address2], [city], [state], [country], [phone], [mobile], [email], [ref_firstname], [ref_lastname], [ref_email], [gender], [ref_phone]) VALUES (4, N'faren', N'limbu', N'skjhfkj', N'jhzfkdsj', N'sano thimi', N'bhaktapur', N'Nepal', CAST(18726863 AS Numeric(18, 0)), CAST(98418736873 AS Numeric(18, 0)), N'kshdklj@gmail.com', N'bishal', N'shrestha', N'dfskjhfkj@gmail.com', N'Female', CAST(8973412794287 AS Numeric(18, 0)))
INSERT [dbo].[tbl_user] ([userid], [first_name], [last_name], [address1], [address2], [city], [state], [country], [phone], [mobile], [email], [ref_firstname], [ref_lastname], [ref_email], [gender], [ref_phone]) VALUES (5, N'dfdsf', N'dfdsgfdsg', N'dgdsgdsg', N'dfgdsgdsgfds', N'gdsgfdsfg', N'dsgfdsgfs', N'dsgdsgfdsg', CAST(325345342 AS Numeric(18, 0)), CAST(32453254 AS Numeric(18, 0)), N'bsfgsdg', N'sdfgdsfg', N'dsgsdgdsf', N'dsgdsgsd', N'Male', CAST(3253424 AS Numeric(18, 0)))
INSERT [dbo].[tbl_user] ([userid], [first_name], [last_name], [address1], [address2], [city], [state], [country], [phone], [mobile], [email], [ref_firstname], [ref_lastname], [ref_email], [gender], [ref_phone]) VALUES (6, N'Dependra', N'Upreti', N'DSAdfsa', N'SDFs', N'Lalitpur', N'Bagmati', N'Nepal', CAST(9807654678 AS Numeric(18, 0)), CAST(980727272772 AS Numeric(18, 0)), N'gasdfahgdsfgh', N'Bau', N'Upereti', N'sjgfsfh', N'Male', CAST(26523464 AS Numeric(18, 0)))
INSERT [dbo].[tbl_user] ([userid], [first_name], [last_name], [address1], [address2], [city], [state], [country], [phone], [mobile], [email], [ref_firstname], [ref_lastname], [ref_email], [gender], [ref_phone]) VALUES (7, N'hari', N'shrestha', N'skjhfkj', N'jhzfkdsj', N'sano thimi', N'bhaktapur', N'Nepal', CAST(18726863 AS Numeric(18, 0)), CAST(98418736873 AS Numeric(18, 0)), N'kshdklj@gmail.com', N'ram', N'shrestha', N'dfskjhfkj@gmail.com', N'Male', CAST(8973412794287 AS Numeric(18, 0)))
INSERT [dbo].[tbl_user] ([userid], [first_name], [last_name], [address1], [address2], [city], [state], [country], [phone], [mobile], [email], [ref_firstname], [ref_lastname], [ref_email], [gender], [ref_phone]) VALUES (9, N'bikash', N'nemkul', N'skjhfkj', N'jhzfkdsj', N'sano thimi', N'bhaktapur', N'Nepal', CAST(18726863 AS Numeric(18, 0)), CAST(98418736873 AS Numeric(18, 0)), N'kshdklj@gmail.com', N'ram12', N'shrestha', N'dfskjhfkj@gmail.com', N'Male', CAST(987132794287 AS Numeric(18, 0)))
INSERT [dbo].[tbl_user] ([userid], [first_name], [last_name], [address1], [address2], [city], [state], [country], [phone], [mobile], [email], [ref_firstname], [ref_lastname], [ref_email], [gender], [ref_phone]) VALUES (10, N'kabina', N'suwal', N'skjhfkj', N'jhzfkdsj', N'klasjd', N'ashklfj', N'Nepal', CAST(18726863 AS Numeric(18, 0)), CAST(98418736825 AS Numeric(18, 0)), N'kshdklj@gmail.com', N'ram12', N'shrestha', N'kabij@gmail.com', N'Male', CAST(987342252794287 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[tbl_user] OFF
/****** Object:  Table [dbo].[tbl_ticket]    Script Date: 08/03/2013 02:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ticket](
	[ticketid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[routeid] [int] NOT NULL,
	[busid] [int] NULL,
	[travelling_date] [date] NOT NULL,
	[seat] [varchar](50) NOT NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK_tbl_ticket] PRIMARY KEY CLUSTERED 
(
	[ticketid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ticket] ON
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (1, 1, 2, NULL, CAST(0x69370B00 AS Date), N'B1', 500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (2, 1, 2, NULL, CAST(0x6A370B00 AS Date), N'A1', 500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (3, 1, 2, NULL, CAST(0x67370B00 AS Date), N'A1', 500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (4, 1, 2, NULL, CAST(0x68370B00 AS Date), N'A1', 500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (5, 1, 2, NULL, CAST(0x68370B00 AS Date), N'B2', 500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (6, 1, 1, NULL, CAST(0x68370B00 AS Date), N'A1', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (7, 1, 1, NULL, CAST(0x67370B00 AS Date), N'A1', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (8, 1, 1, NULL, CAST(0x67370B00 AS Date), N'B6', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (9, 1, 1, NULL, CAST(0x67370B00 AS Date), N'B2', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (10, 1, 1, NULL, CAST(0x67370B00 AS Date), N'A4', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (11, 1, 1, NULL, CAST(0x67370B00 AS Date), N'A4', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (12, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'B3', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (13, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'B7', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (14, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'B2', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (15, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'B6', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (16, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'B5', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (17, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'B1', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (18, 1, 2, NULL, CAST(0x6A370B00 AS Date), N'A4', 500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (19, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'B4', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (20, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'B9', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (21, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'B8', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (22, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'A8', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (23, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'A7', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (24, 1, 1, NULL, CAST(0x6A370B00 AS Date), N'A5', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (25, 1, 1, NULL, CAST(0x69370B00 AS Date), N'B6', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (26, 1, 1, NULL, CAST(0x69370B00 AS Date), N'B5', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (27, 1, 1, NULL, CAST(0x69370B00 AS Date), N'A9', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (28, 1, 1, NULL, CAST(0x69370B00 AS Date), N'A4', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (29, 1, 1, NULL, CAST(0x69370B00 AS Date), N'B3', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (30, 1, 1, NULL, CAST(0x69370B00 AS Date), N'A6', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (31, 1, 1, NULL, CAST(0x69370B00 AS Date), N'B4', 0)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (32, 6, 1, 6, CAST(0x6A370B00 AS Date), N'A4', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (33, 6, 1, 6, CAST(0x6A370B00 AS Date), N'A4', 0)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (34, 6, 1, 6, CAST(0x6A370B00 AS Date), N'A6', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (35, 4, 1, 6, CAST(0x6A370B00 AS Date), N'A1', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (36, 4, 1, 6, CAST(0x6B370B00 AS Date), N'B2', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (37, 4, 1, 6, CAST(0x6B370B00 AS Date), N'A1', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (38, 4, 1, 7, CAST(0x6C370B00 AS Date), N'A1', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (39, 4, 2, 6, CAST(0x6D370B00 AS Date), N'A1', 500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (40, 4, 1, 7, CAST(0x6C370B00 AS Date), N'B5', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (41, 4, 1, 6, CAST(0x6B370B00 AS Date), N'A2', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (42, 4, 1, 6, CAST(0x6B370B00 AS Date), N'A7', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (43, 4, 3, 10, CAST(0x6B370B00 AS Date), N'A1', 1200)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (44, 4, 3, 10, CAST(0x6B370B00 AS Date), N'A2', 1200)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (45, 4, 1, 11, CAST(0x6C370B00 AS Date), N'A2', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (46, 4, 1, 11, CAST(0x6C370B00 AS Date), N'A2', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (47, 4, 1, 11, CAST(0x6C370B00 AS Date), N'A2', 1500)
INSERT [dbo].[tbl_ticket] ([ticketid], [userid], [routeid], [busid], [travelling_date], [seat], [price]) VALUES (48, 4, 3, 10, CAST(0x6B370B00 AS Date), N'B8', 1200)
SET IDENTITY_INSERT [dbo].[tbl_ticket] OFF
/****** Object:  Table [dbo].[tbl_seat]    Script Date: 08/03/2013 02:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_seat](
	[seatid] [int] IDENTITY(1,1) NOT NULL,
	[seat_no] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_seat] PRIMARY KEY CLUSTERED 
(
	[seatid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_seat] ON
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (1, N'A1')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (2, N'A2')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (3, N'A3')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (4, N'A4')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (5, N'A5')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (6, N'A6')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (7, N'A7')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (8, N'A8')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (9, N'A9')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (10, N'B1')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (11, N'B2')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (12, N'B3')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (13, N'B4')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (14, N'B5')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (15, N'B6')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (16, N'B7')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (17, N'B8')
INSERT [dbo].[tbl_seat] ([seatid], [seat_no]) VALUES (18, N'B9')
SET IDENTITY_INSERT [dbo].[tbl_seat] OFF
/****** Object:  Table [dbo].[tbl_schedule]    Script Date: 08/03/2013 02:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_schedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[travelling_date] [date] NOT NULL,
	[routeid] [int] NOT NULL,
	[busid] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_schedule] ON
INSERT [dbo].[tbl_schedule] ([id], [travelling_date], [routeid], [busid]) VALUES (19, CAST(0x6B370B00 AS Date), 1, 8)
INSERT [dbo].[tbl_schedule] ([id], [travelling_date], [routeid], [busid]) VALUES (21, CAST(0x6B370B00 AS Date), 3, 10)
INSERT [dbo].[tbl_schedule] ([id], [travelling_date], [routeid], [busid]) VALUES (22, CAST(0x6C370B00 AS Date), 1, 11)
INSERT [dbo].[tbl_schedule] ([id], [travelling_date], [routeid], [busid]) VALUES (23, CAST(0x6C370B00 AS Date), 5, 10)
INSERT [dbo].[tbl_schedule] ([id], [travelling_date], [routeid], [busid]) VALUES (20, CAST(0x6B370B00 AS Date), 2, 9)
INSERT [dbo].[tbl_schedule] ([id], [travelling_date], [routeid], [busid]) VALUES (24, CAST(0x6D370B00 AS Date), 4, 8)
SET IDENTITY_INSERT [dbo].[tbl_schedule] OFF
/****** Object:  Table [dbo].[tbl_route]    Script Date: 08/03/2013 02:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_route](
	[routeid] [int] IDENTITY(1,1) NOT NULL,
	[from_des] [varchar](50) NOT NULL,
	[to_des] [varchar](50) NOT NULL,
	[fare] [int] NOT NULL,
	[departure_time] [time](7) NOT NULL,
 CONSTRAINT [PK_tbl_route] PRIMARY KEY CLUSTERED 
(
	[routeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_route] ON
INSERT [dbo].[tbl_route] ([routeid], [from_des], [to_des], [fare], [departure_time]) VALUES (1, N'Kathmandu', N'Biratnagar', 1500, CAST(0x0700E80A7E8E0000 AS Time))
INSERT [dbo].[tbl_route] ([routeid], [from_des], [to_des], [fare], [departure_time]) VALUES (2, N'Kathmandu', N'Pokhara', 500, CAST(0x0700E80A7E8E0000 AS Time))
INSERT [dbo].[tbl_route] ([routeid], [from_des], [to_des], [fare], [departure_time]) VALUES (3, N'Pokhara', N'Dharan', 1200, CAST(0x0700E80A7E8E0000 AS Time))
INSERT [dbo].[tbl_route] ([routeid], [from_des], [to_des], [fare], [departure_time]) VALUES (4, N'Kathmandu', N'Lahan', 600, CAST(0x070080461C860000 AS Time))
INSERT [dbo].[tbl_route] ([routeid], [from_des], [to_des], [fare], [departure_time]) VALUES (5, N'Kathmandu', N'Kakarvitta', 900, CAST(0x070080461C860000 AS Time))
SET IDENTITY_INSERT [dbo].[tbl_route] OFF
/****** Object:  Table [dbo].[tbl_driver]    Script Date: 08/03/2013 02:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_driver](
	[driverid] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[address1] [varchar](50) NULL,
	[address2] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[phone] [numeric](18, 0) NULL,
	[mobile] [numeric](18, 0) NULL,
	[license] [varchar](50) NULL,
	[citizenshipno] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_driver] PRIMARY KEY CLUSTERED 
(
	[driverid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_driver] ON
INSERT [dbo].[tbl_driver] ([driverid], [firstname], [lastname], [address1], [address2], [city], [state], [country], [phone], [mobile], [license], [citizenshipno]) VALUES (2, N'Shyam', N'Pahadi', N'Panitanki', N'Kamalamai', N'Sindhuli', N'Bagmati', N'Neapal', CAST(15523451 AS Numeric(18, 0)), CAST(9807654345 AS Numeric(18, 0)), N'1657A', N'2341V')
INSERT [dbo].[tbl_driver] ([driverid], [firstname], [lastname], [address1], [address2], [city], [state], [country], [phone], [mobile], [license], [citizenshipno]) VALUES (3, N'Ram', N'Dhakal', N'Kulepati', N'Bhattiroad', N'Lalitpur', N'Bagmati', N'Nepal', CAST(9807654345 AS Numeric(18, 0)), CAST(9807654457 AS Numeric(18, 0)), N'12345A', N'564312W')
INSERT [dbo].[tbl_driver] ([driverid], [firstname], [lastname], [address1], [address2], [city], [state], [country], [phone], [mobile], [license], [citizenshipno]) VALUES (4, N'Rabin', N'Lamsal', N'Galli', N'HastiChowk', N'Kritipur', N'Bagmati', N'Nepal', CAST(15543243 AS Numeric(18, 0)), CAST(9807654345 AS Numeric(18, 0)), N'123456Q', N'43672G')
INSERT [dbo].[tbl_driver] ([driverid], [firstname], [lastname], [address1], [address2], [city], [state], [country], [phone], [mobile], [license], [citizenshipno]) VALUES (5, N'Hari', N'Phuyal', N'Milanchowk', N'Satdobato', N'Lalitpur', N'Bagmati', N'Nepal', CAST(15523454 AS Numeric(18, 0)), CAST(9807654345 AS Numeric(18, 0)), N'6574R', N'357547K')
SET IDENTITY_INSERT [dbo].[tbl_driver] OFF
/****** Object:  Table [dbo].[tbl_bus]    Script Date: 08/03/2013 02:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_bus](
	[busid] [int] IDENTITY(1,1) NOT NULL,
	[bus_no] [varchar](50) NOT NULL,
	[bus_type] [varchar](50) NOT NULL,
	[seat_capacity] [int] NOT NULL,
	[bus_name] [varchar](50) NOT NULL,
	[model_no] [varchar](50) NOT NULL,
	[driverid] [int] NOT NULL,
	[routeid] [int] NOT NULL,
 CONSTRAINT [PK_tbl_bus] PRIMARY KEY CLUSTERED 
(
	[busid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_bus] ON
INSERT [dbo].[tbl_bus] ([busid], [bus_no], [bus_type], [seat_capacity], [bus_name], [model_no], [driverid], [routeid]) VALUES (8, N'BA-1-KHA 1020', N'Deluxe', 50, N'Shakira', N'1234QW', 2, 1)
INSERT [dbo].[tbl_bus] ([busid], [bus_no], [bus_type], [seat_capacity], [bus_name], [model_no], [driverid], [routeid]) VALUES (9, N'BA-1-KHA 1021', N'Deluxe', 50, N'Shakira', N'1234QW', 3, 2)
INSERT [dbo].[tbl_bus] ([busid], [bus_no], [bus_type], [seat_capacity], [bus_name], [model_no], [driverid], [routeid]) VALUES (10, N'BA-1-KHA 1022', N'Deluxe', 40, N'Shakira', N'1234QW', 4, 3)
INSERT [dbo].[tbl_bus] ([busid], [bus_no], [bus_type], [seat_capacity], [bus_name], [model_no], [driverid], [routeid]) VALUES (11, N'BA-1-KHA 1024', N'AC', 35, N'Shakira', N'1234QW', 5, 5)
SET IDENTITY_INSERT [dbo].[tbl_bus] OFF
/****** Object:  Table [dbo].[tbl_bank]    Script Date: 08/03/2013 02:48:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_bank](
	[userid] [int] NOT NULL,
	[account_no] [varchar](50) NOT NULL,
	[pin] [varchar](50) NOT NULL,
	[balance] [int] NOT NULL,
 CONSTRAINT [PK_tbl_bank] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_bank] ([userid], [account_no], [pin], [balance]) VALUES (4, N'faren', N'faren', 22132)
INSERT [dbo].[tbl_bank] ([userid], [account_no], [pin], [balance]) VALUES (5, N'qqqq', N'qqqq', 22222222)
INSERT [dbo].[tbl_bank] ([userid], [account_no], [pin], [balance]) VALUES (6, N'dependra', N'dep', 97000)
INSERT [dbo].[tbl_bank] ([userid], [account_no], [pin], [balance]) VALUES (7, N'hari12', N'har2', 22132)
INSERT [dbo].[tbl_bank] ([userid], [account_no], [pin], [balance]) VALUES (9, N'bikash', N'bikash', 22132)
INSERT [dbo].[tbl_bank] ([userid], [account_no], [pin], [balance]) VALUES (10, N'kabina', N'kabina', 34132)
/****** Object:  ForeignKey [FK_tbl_bank_tbl_bank]    Script Date: 08/03/2013 02:48:49 ******/
ALTER TABLE [dbo].[tbl_bank]  WITH CHECK ADD  CONSTRAINT [FK_tbl_bank_tbl_bank] FOREIGN KEY([userid])
REFERENCES [dbo].[tbl_user] ([userid])
GO
ALTER TABLE [dbo].[tbl_bank] CHECK CONSTRAINT [FK_tbl_bank_tbl_bank]
GO
