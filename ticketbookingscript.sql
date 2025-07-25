USE [master]
GO
/****** Object:  Database [TicketBookingDb]    Script Date: 01-07-2025 13:21:41 ******/
CREATE DATABASE [TicketBookingDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TicketBookingDb', FILENAME = N'C:\Users\Vicky Kumar Sharma\TicketBookingDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TicketBookingDb_log', FILENAME = N'C:\Users\Vicky Kumar Sharma\TicketBookingDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TicketBookingDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TicketBookingDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TicketBookingDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TicketBookingDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TicketBookingDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TicketBookingDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TicketBookingDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [TicketBookingDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TicketBookingDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TicketBookingDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TicketBookingDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TicketBookingDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TicketBookingDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TicketBookingDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TicketBookingDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TicketBookingDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TicketBookingDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TicketBookingDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TicketBookingDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TicketBookingDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TicketBookingDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TicketBookingDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TicketBookingDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [TicketBookingDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TicketBookingDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TicketBookingDb] SET  MULTI_USER 
GO
ALTER DATABASE [TicketBookingDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TicketBookingDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TicketBookingDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TicketBookingDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TicketBookingDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TicketBookingDb] SET QUERY_STORE = OFF
GO
USE [TicketBookingDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [TicketBookingDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 01-07-2025 13:21:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DeptID] [int] NOT NULL,
	[Department] [varchar](50) NULL,
	[DeptLocation] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpID] [int] NOT NULL,
	[EmpName] [varchar](100) NULL,
	[DeptID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[OrderId] [int] NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passangers]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passangers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[Height] [decimal](18, 4) NOT NULL,
	[Weight] [decimal](18, 4) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[MobileNo] [bigint] NOT NULL,
	[Pincode] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[fax] [nvarchar](max) NULL,
 CONSTRAINT [PK_Passangers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Stock] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfos]    Script Date: 01-07-2025 13:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfos](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[UserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_UserInfos] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230816083116_firstStepPassangerTableAdd', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230817115259_MigrationNameTableNewcolmn', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230818070342_UserInfoTable', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230904080532_faxdding', N'6.0.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250207085857_InitialDB', N'9.0.1')
GO
SET IDENTITY_INSERT [dbo].[Passangers] ON 

INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1044, N'yt', N'tttytytryrt', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1045, N'uuuu', N'tyyt', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1046, N'sdsad', N'sds', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1047, N'uyt', N'tyt', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1048, N'vvv', N'fd', CAST(N'2025-02-06T00:00:00.0000000' AS DateTime2), CAST(50.0000 AS Decimal(18, 4)), CAST(5.0000 AS Decimal(18, 4)), NULL, NULL, N'Male', 0, NULL, NULL, NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1049, N'Vicky', N'Kumar Sharma', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1050, N'UpSkill', N'sss', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1051, N'sdsd', N'sdsds', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1055, N'x1', N'x2', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1056, N'sdsdsd', N'sdsdsd', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1057, N'sshh', N'sxx', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1058, N'sdxsads', N'sadasdasdada', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1059, N'ttrtrr', N'rttrr', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
INSERT [dbo].[Passangers] ([Id], [FirstName], [LastName], [DateOfBirth], [Height], [Weight], [Address], [Country], [Gender], [MobileNo], [Pincode], [State], [fax]) VALUES (1060, N'aa', N'vvv', CAST(N'2024-12-19T07:51:15.3750000' AS DateTime2), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'', 0, N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[Passangers] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfos] ON 

INSERT [dbo].[UserInfos] ([UserId], [DisplayName], [UserName], [Email], [Password], [CreatedDate]) VALUES (1, N'vv', N'Vicky', N'v@k.com', N'123', NULL)
INSERT [dbo].[UserInfos] ([UserId], [DisplayName], [UserName], [Email], [Password], [CreatedDate]) VALUES (2, N'Vicky', N'Vicky.Kumar Sharma', N'', N'', NULL)
INSERT [dbo].[UserInfos] ([UserId], [DisplayName], [UserName], [Email], [Password], [CreatedDate]) VALUES (3, N'hhh', NULL, N'', N'', NULL)
INSERT [dbo].[UserInfos] ([UserId], [DisplayName], [UserName], [Email], [Password], [CreatedDate]) VALUES (4, N'hi5', N'hi5.k5', N'', N'', NULL)
INSERT [dbo].[UserInfos] ([UserId], [DisplayName], [UserName], [Email], [Password], [CreatedDate]) VALUES (5, N'ppedit', N'ppedit.kkedit', N'', N'', NULL)
INSERT [dbo].[UserInfos] ([UserId], [DisplayName], [UserName], [Email], [Password], [CreatedDate]) VALUES (6, N'ddtestx', N'ddtestx.ss', N'', N'', NULL)
INSERT [dbo].[UserInfos] ([UserId], [DisplayName], [UserName], [Email], [Password], [CreatedDate]) VALUES (7, N'hhh eddddd', N'hhh eddddd.pppppp', N'', N'', NULL)
INSERT [dbo].[UserInfos] ([UserId], [DisplayName], [UserName], [Email], [Password], [CreatedDate]) VALUES (8, N'dddd', N'dddd.ss', N'', N'', NULL)
INSERT [dbo].[UserInfos] ([UserId], [DisplayName], [UserName], [Email], [Password], [CreatedDate]) VALUES (9, N'Vick', N'Vick.sh', N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[UserInfos] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 01-07-2025 13:21:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 01-07-2025 13:21:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 01-07-2025 13:21:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 01-07-2025 13:21:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 01-07-2025 13:21:58 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 01-07-2025 13:21:58 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 01-07-2025 13:21:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 01-07-2025 13:21:58 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_ProductId]    Script Date: 01-07-2025 13:21:58 ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_ProductId] ON [dbo].[OrderItems]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 01-07-2025 13:21:58 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 01-07-2025 13:21:58 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Passangers] ADD  DEFAULT (N'') FOR [FirstName]
GO
ALTER TABLE [dbo].[Passangers] ADD  DEFAULT (CONVERT([bigint],(0))) FOR [MobileNo]
GO
ALTER TABLE [dbo].[UserInfos] ADD  DEFAULT (N'') FOR [Email]
GO
ALTER TABLE [dbo].[UserInfos] ADD  DEFAULT (N'') FOR [Password]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([DeptID])
REFERENCES [dbo].[Departments] ([DeptID])
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [TicketBookingDb] SET  READ_WRITE 
GO
