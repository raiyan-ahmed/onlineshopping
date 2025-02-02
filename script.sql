USE [master]
GO
/****** Object:  Database [OnLineShopping]    Script Date: 11/13/2019 9:36:02 AM ******/
CREATE DATABASE [OnLineShopping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnLineShopping', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER14\MSSQL\DATA\OnLineShopping.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OnLineShopping_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER14\MSSQL\DATA\OnLineShopping_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OnLineShopping] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnLineShopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnLineShopping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnLineShopping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnLineShopping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnLineShopping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnLineShopping] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnLineShopping] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OnLineShopping] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnLineShopping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnLineShopping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnLineShopping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnLineShopping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnLineShopping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnLineShopping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnLineShopping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnLineShopping] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnLineShopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnLineShopping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnLineShopping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnLineShopping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnLineShopping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnLineShopping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnLineShopping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnLineShopping] SET RECOVERY FULL 
GO
ALTER DATABASE [OnLineShopping] SET  MULTI_USER 
GO
ALTER DATABASE [OnLineShopping] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnLineShopping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnLineShopping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnLineShopping] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OnLineShopping] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'OnLineShopping', N'ON'
GO
USE [OnLineShopping]
GO
/****** Object:  User [scb]    Script Date: 11/13/2019 9:36:02 AM ******/
CREATE USER [scb] FOR LOGIN [scb] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [scb]
GO
/****** Object:  Table [dbo].[T_Sys_Item_Info]    Script Date: 11/13/2019 9:36:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Sys_Item_Info](
	[ItemId] [int] NOT NULL,
	[ItemName] [varchar](50) NOT NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_T_Sys_Item_Info] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Sys_Registration_Info]    Script Date: 11/13/2019 9:36:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Sys_Registration_Info](
	[UserId] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[UserCreationDate] [datetime] NULL,
 CONSTRAINT [PK_T_Sys_Registration_Info] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Sys_Unit_Info]    Script Date: 11/13/2019 9:36:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Sys_Unit_Info](
	[UnitId] [int] NOT NULL,
	[UnitName] [varchar](50) NOT NULL,
	[EntryDate] [datetime] NULL,
 CONSTRAINT [PK_T_Sys_Unit_Info] PRIMARY KEY CLUSTERED 
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[T_Tran_Detail_Transaction]    Script Date: 11/13/2019 9:36:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Tran_Detail_Transaction](
	[Id] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[UnitId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](18, 3) NOT NULL,
	[TotalPrice] [decimal](18, 3) NOT NULL,
	[UserId] [int] NOT NULL,
	[TransactionId] [int] NOT NULL,
 CONSTRAINT [PK_T_Tran_Detail_Transaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Tran_Master_Transaction]    Script Date: 11/13/2019 9:36:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_Tran_Master_Transaction](
	[TransactionId] [int] NOT NULL,
	[CustomerName] [varchar](50) NOT NULL,
	[VoucherNo] [varchar](50) NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[GrossAmount] [decimal](18, 3) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_T_Tran_Master_Transaction] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[T_Tran_Detail_Transaction]  WITH CHECK ADD  CONSTRAINT [FK_T_Tran_Detail_Transaction_T_Sys_Item_Info] FOREIGN KEY([ItemId])
REFERENCES [dbo].[T_Sys_Item_Info] ([ItemId])
GO
ALTER TABLE [dbo].[T_Tran_Detail_Transaction] CHECK CONSTRAINT [FK_T_Tran_Detail_Transaction_T_Sys_Item_Info]
GO
ALTER TABLE [dbo].[T_Tran_Detail_Transaction]  WITH CHECK ADD  CONSTRAINT [FK_T_Tran_Detail_Transaction_T_Sys_Registration_Info] FOREIGN KEY([UserId])
REFERENCES [dbo].[T_Sys_Registration_Info] ([UserId])
GO
ALTER TABLE [dbo].[T_Tran_Detail_Transaction] CHECK CONSTRAINT [FK_T_Tran_Detail_Transaction_T_Sys_Registration_Info]
GO
ALTER TABLE [dbo].[T_Tran_Detail_Transaction]  WITH CHECK ADD  CONSTRAINT [FK_T_Tran_Detail_Transaction_T_Sys_Unit_Info] FOREIGN KEY([UnitId])
REFERENCES [dbo].[T_Sys_Unit_Info] ([UnitId])
GO
ALTER TABLE [dbo].[T_Tran_Detail_Transaction] CHECK CONSTRAINT [FK_T_Tran_Detail_Transaction_T_Sys_Unit_Info]
GO
ALTER TABLE [dbo].[T_Tran_Detail_Transaction]  WITH CHECK ADD  CONSTRAINT [FK_T_Tran_Detail_Transaction_T_Tran_Master_Transaction] FOREIGN KEY([TransactionId])
REFERENCES [dbo].[T_Tran_Master_Transaction] ([TransactionId])
GO
ALTER TABLE [dbo].[T_Tran_Detail_Transaction] CHECK CONSTRAINT [FK_T_Tran_Detail_Transaction_T_Tran_Master_Transaction]
GO
USE [master]
GO
ALTER DATABASE [OnLineShopping] SET  READ_WRITE 
GO
