USE [master]
GO
/****** Object:  Database [PTUDW_CTS_QuanLyBanXeOto]    Script Date: 13/12/2024 10:41:11 SA ******/
CREATE DATABASE [PTUDW_CTS_QuanLyBanXeOto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PTUDW_CTS_QuanLyBanXeOto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PTUDW_CTS_QuanLyBanXeOto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PTUDW_CTS_QuanLyBanXeOto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PTUDW_CTS_QuanLyBanXeOto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PTUDW_CTS_QuanLyBanXeOto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET ARITHABORT OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET RECOVERY FULL 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET  MULTI_USER 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PTUDW_CTS_QuanLyBanXeOto', N'ON'
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET QUERY_STORE = ON
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [PTUDW_CTS_QuanLyBanXeOto]
GO
/****** Object:  Table [dbo].[AdminMenu]    Script Date: 13/12/2024 10:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminMenu](
	[AdminMenuID] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemName] [nvarchar](50) NULL,
	[ItemLevel] [bigint] NULL,
	[ParentLevel] [bigint] NULL,
	[ItemOrder] [bigint] NULL,
	[IsActive] [bit] NULL,
	[ItemTarget] [nvarchar](50) NULL,
	[AreaName] [nvarchar](50) NULL,
	[ControllerName] [nvarchar](50) NULL,
	[ActionName] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[IDName] [nvarchar](50) NULL,
 CONSTRAINT [PK_AdminMenu] PRIMARY KEY CLUSTERED 
(
	[AdminMenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car]    Script Date: 13/12/2024 10:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car](
	[CarID] [bigint] IDENTITY(1,1) NOT NULL,
	[CarTypeID] [bigint] NOT NULL,
	[VIN] [nvarchar](50) NOT NULL,
	[TransactionID] [bigint] NULL,
	[IsDeleted] [bit] NOT NULL,
	[GiaBan] [bigint] NULL,
	[GiaNhap] [bigint] NULL,
 CONSTRAINT [PK_Car1] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 13/12/2024 10:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[CarTypeID] [bigint] NOT NULL,
	[SoLuong] [bigint] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarType]    Script Date: 13/12/2024 10:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarType](
	[CarTypeID] [bigint] IDENTITY(1,1) NOT NULL,
	[DongXeID] [bigint] NOT NULL,
	[DoiXe] [bigint] NOT NULL,
	[DongCo] [nvarchar](50) NOT NULL,
	[CarImage] [nvarchar](max) NOT NULL,
	[GiaNhap] [bigint] NOT NULL,
	[GiaBan] [bigint] NOT NULL,
	[MauSac] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Car] PRIMARY KEY CLUSTERED 
(
	[CarTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongXeDetail]    Script Date: 13/12/2024 10:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongXeDetail](
	[DongXeID] [bigint] IDENTITY(1,1) NOT NULL,
	[HangXeID] [bigint] NULL,
	[TenDongXe] [nvarchar](max) NULL,
	[NoiSanXuat] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DongXeDetail] PRIMARY KEY CLUSTERED 
(
	[DongXeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangXeDetail]    Script Date: 13/12/2024 10:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangXeDetail](
	[HangXeID] [bigint] IDENTITY(1,1) NOT NULL,
	[TenHangXe] [nvarchar](max) NOT NULL,
	[XuatXu] [nvarchar](max) NOT NULL,
	[LogoImage] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_HangXeDetail] PRIMARY KEY CLUSTERED 
(
	[HangXeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 13/12/2024 10:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [bigint] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[ControllerName] [nvarchar](max) NULL,
	[ActionName] [nvarchar](max) NULL,
	[Levels] [bigint] NULL,
	[ParentID] [bigint] NULL,
	[Link] [nvarchar](max) NULL,
	[MenuOrder] [bigint] NULL,
	[Position] [bigint] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 13/12/2024 10:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[TransID] [bigint] IDENTITY(1,1) NOT NULL,
	[KhachHangID] [bigint] NOT NULL,
	[NgayTaoDon] [datetime] NOT NULL,
	[ThanhToan] [nvarchar](max) NULL,
	[TrangThai] [nvarchar](max) NOT NULL,
	[NguoiXuLyID] [bigint] NULL,
	[NgayDuyet] [datetime] NULL,
	[NguoiDuyetID] [bigint] NULL,
	[ChietKhau] [bigint] NOT NULL,
	[TongTien] [bigint] NOT NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[TransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 13/12/2024 10:41:11 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[CMND] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
	[NamSinh] [bigint] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](50) NOT NULL,
	[TypeID] [bigint] NOT NULL,
	[UserImage] [nvarchar](max) NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdminMenu] ON 

INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IDName]) VALUES (1, N'Quản lý xe', 1, 0, 1, 1, N'quanlyxe', N'Admin', N'CarManage', N'CarBrandManage', N'bi bi-car-front-fill', N'quanlyxe')
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IDName]) VALUES (4, N'Quản lý khách hàng', 1, 0, 2, 1, N'quanlykhachhang', N'Admin', N'UserManage', N'UserManage', N'bi bi-people-fill', N'quanlykhachhang')
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IDName]) VALUES (5, N'Quản lý đơn hàng', 1, 0, 3, 1, N'quanlydonhang', NULL, NULL, NULL, N'bi bi-receipt', N'quanlydonhang')
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IDName]) VALUES (6, N'Đơn chờ duyệt', 2, 5, 2, 1, NULL, N'Admin', N'TransactionManage', N'Pending', NULL, N'donchoduyet')
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IDName]) VALUES (7, N'Đơn chờ xác nhận', 2, 5, 1, 1, NULL, N'Admin', N'TransactionManage', N'Waitting', NULL, N'donchoxacnhan')
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IDName]) VALUES (8, N'Đơn đã hoàn thành', 2, 5, 3, 1, NULL, N'Admin', N'TransactionManage', N'Approved', NULL, N'dondahoanthanh')
INSERT [dbo].[AdminMenu] ([AdminMenuID], [ItemName], [ItemLevel], [ParentLevel], [ItemOrder], [IsActive], [ItemTarget], [AreaName], [ControllerName], [ActionName], [Icon], [IDName]) VALUES (9, N'Đơn đã hủy', 2, 5, 4, 1, NULL, N'Admin', N'TransactionManage', N'Cancelled', NULL, N'dondahuy')
SET IDENTITY_INSERT [dbo].[AdminMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[Car] ON 

INSERT [dbo].[Car] ([CarID], [CarTypeID], [VIN], [TransactionID], [IsDeleted], [GiaBan], [GiaNhap]) VALUES (2, 1, N'5N3AA08CX7N805813', 4, 0, NULL, NULL)
INSERT [dbo].[Car] ([CarID], [CarTypeID], [VIN], [TransactionID], [IsDeleted], [GiaBan], [GiaNhap]) VALUES (3, 1, N'1HGCT2B88DA000025', 4, 0, NULL, NULL)
INSERT [dbo].[Car] ([CarID], [CarTypeID], [VIN], [TransactionID], [IsDeleted], [GiaBan], [GiaNhap]) VALUES (4, 1, N'JH4KA7570PC005842', 20006, 0, NULL, NULL)
INSERT [dbo].[Car] ([CarID], [CarTypeID], [VIN], [TransactionID], [IsDeleted], [GiaBan], [GiaNhap]) VALUES (5, 1, N'JH4KA3263KC011910', 20007, 0, NULL, NULL)
INSERT [dbo].[Car] ([CarID], [CarTypeID], [VIN], [TransactionID], [IsDeleted], [GiaBan], [GiaNhap]) VALUES (6, 1, N'1G8AN15F07Z174255', NULL, 0, NULL, NULL)
INSERT [dbo].[Car] ([CarID], [CarTypeID], [VIN], [TransactionID], [IsDeleted], [GiaBan], [GiaNhap]) VALUES (7, 3, N'1FTEX1C85AFB83192', 20006, 0, NULL, NULL)
INSERT [dbo].[Car] ([CarID], [CarTypeID], [VIN], [TransactionID], [IsDeleted], [GiaBan], [GiaNhap]) VALUES (8, 9, N'JN8AZ2NE5C9016953', NULL, 0, NULL, NULL)
INSERT [dbo].[Car] ([CarID], [CarTypeID], [VIN], [TransactionID], [IsDeleted], [GiaBan], [GiaNhap]) VALUES (9, 9, N'3D4GG47B09T153263', NULL, 0, NULL, NULL)
INSERT [dbo].[Car] ([CarID], [CarTypeID], [VIN], [TransactionID], [IsDeleted], [GiaBan], [GiaNhap]) VALUES (10, 9, N'1FVACYDT19HAJ2694', NULL, 0, NULL, NULL)
INSERT [dbo].[Car] ([CarID], [CarTypeID], [VIN], [TransactionID], [IsDeleted], [GiaBan], [GiaNhap]) VALUES (12, 3, N'3C8FY68B72T322831', NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Car] OFF
GO
SET IDENTITY_INSERT [dbo].[CarType] ON 

INSERT [dbo].[CarType] ([CarTypeID], [DongXeID], [DoiXe], [DongCo], [CarImage], [GiaNhap], [GiaBan], [MauSac], [IsDeleted]) VALUES (1, 28, 2019, N'Động cơ xăng (Gasoline Engine)', N'anh-mo-ta (1)_Canhhungadmin_JHMFA16586S014014_20241127_184403.jfif,anh-mo-ta (2)_Canhhungadmin_JHMFA16586S014014_20241127_184403.jfif,anh-mo-ta_Canhhungadmin_JHMFA16586S014014_20241127_184403.jfif', 35000000000, 37000000000, N'Xanh Dương', 0)
INSERT [dbo].[CarType] ([CarTypeID], [DongXeID], [DoiXe], [DongCo], [CarImage], [GiaNhap], [GiaBan], [MauSac], [IsDeleted]) VALUES (3, 1, 2023, N'Động cơ xăng (Gasoline Engine)', N'Toyota-Altis-2023-2_20241128_105939.jpg,Toyota-Altis-2023-3_20241128_105939.jpg,ToyotaAltis20230jpg-1696407202_20241128_105939.jpg', 725000000, 800000000, N'Trắng', 0)
INSERT [dbo].[CarType] ([CarTypeID], [DongXeID], [DoiXe], [DongCo], [CarImage], [GiaNhap], [GiaBan], [MauSac], [IsDeleted]) VALUES (4, 2, 2024, N'Động cơ xăng (Gasoline Engine)', N'camry-2_20241129_021155.jpg,IMG-3296-jpeg_20241129_021155.jpg,IMG-3299-jpeg_20241129_021155.jpg,IMG-3302-jpeg_20241129_021155.jpg,MON-9514-jpeg_20241129_021155.jpg,MON-9925-jpeg_20241129_021155.jpg,MON-9927-jpeg_20241129_021155.jpg,MON-9929-jpeg_20241129_021155.jpg,MON-9937-jpeg_20241129_021155.jpg,MON-9939-jpeg_20241129_021155.jpg,MON-9942-jpeg_20241129_021155.jpg,MON-9947-jpeg_20241129_021155.jpg,MON-9949-jpeg_20241129_021155.jpg,MON-9950-1-jpeg_20241129_021155.jpg', 1220000000, 1350000000, N'Bạc', 0)
INSERT [dbo].[CarType] ([CarTypeID], [DongXeID], [DoiXe], [DongCo], [CarImage], [GiaNhap], [GiaBan], [MauSac], [IsDeleted]) VALUES (5, 3, 2024, N'Động cơ xăng (Gasoline Engine)', N'Hilux-2-4-4x4-MT-Ba-c_20241129_021340.png,Hilux-2-8-4x4-AT-Adventure-Ba-c_20241129_021340.jpg,Hilux-phie-n-ba-n-ca-p-nha-t-2024_20241129_021340.jpg,No-i-tha-t-Hilux-2-8-4x4-AT-Adventure_20241129_021340.jpg,Ngoa-i-tha-t-Hilux-2-8-4x4-AT-Adventure_20241129_021340.jpg', 668000000, 711000000, N'Trắng', 0)
INSERT [dbo].[CarType] ([CarTypeID], [DongXeID], [DoiXe], [DongCo], [CarImage], [GiaNhap], [GiaBan], [MauSac], [IsDeleted]) VALUES (6, 4, 2024, N'Động cơ xăng (Gasoline Engine)', N'Honda-Civic-HEV-2024-VnE-2133-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2136-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2144-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2151-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2405-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2407-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2408-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2409-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2419-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2421-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2427-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2433-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2435-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2437-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2441-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2445-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2448-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2451-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2457-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2464-JPG_20241129_021557.jpg,Honda-Civic-HEV-2024-VnE-2467-JPG_20241129_021557.jpg', 789000000, 871000000, N'Trắng', 0)
INSERT [dbo].[CarType] ([CarTypeID], [DongXeID], [DoiXe], [DongCo], [CarImage], [GiaNhap], [GiaBan], [MauSac], [IsDeleted]) VALUES (7, 5, 2022, N'Động cơ xăng (Gasoline Engine)', N'Honda-Accord-2022-VnE-1980_20241129_021825.jpg,Honda-Accord-2022-VnE-2015_20241129_021825.jpg,Honda-Accord-2022-VnE-2019_20241129_021825.jpg,Honda-Accord-2022-VnE-2028_20241129_021825.jpg,Honda-Accord-2022-VnE-2049_20241129_021825.jpg,Honda-Accord-2022-VnE-2062_20241129_021825.jpg,Honda-Accord-2022-VnE-2081_20241129_021825.jpg,Honda-Accord-2022-VnE-2101_20241129_021825.jpg,Honda-Accord-2022-VnE-2102_20241129_021825.jpg,Honda-Accord-2022-VnE-2114_20241129_021825.jpg,Honda-Accord-2022-VnE-2116_20241129_021825.jpg,Honda-Accord-2022-VnE-2136_20241129_021825.jpg,Honda-Accord-2022-VnE-2178_20241129_021825.jpg,Honda-Accord-2022-VnE-2184_20241129_021825.jpg,Honda-Accord-2022-VnE-2255_20241129_021825.jpg,Honda-Accord-2022-VnE-2261_20241129_021825.jpg,Honda-Accord-2022-VnE-2343_20241129_021825.jpg,Honda-Accord-2022-VnE-2353_20241129_021825.jpg,Honda-Accord-2022-VnE-2380_20241129_021825.jpg,Honda-Accord-2022-VnE-2388_20241129_021825.jpg', 1319000000, 1450000000, N'Đen', 0)
INSERT [dbo].[CarType] ([CarTypeID], [DongXeID], [DoiXe], [DongCo], [CarImage], [GiaNhap], [GiaBan], [MauSac], [IsDeleted]) VALUES (8, 6, 2024, N'Động cơ xăng (Gasoline Engine)', N'Honda-CR-V-Hybrid-test-VnE-2023-5295_20241129_022126.jpg,Honda-CR-V-Hybrid-test-VnE-2023-5288_20241129_022126.jpg,Honda-CR-V-Hybrid-test-VnE-2023-5270_20241129_022126.jpg,Honda-CR-V-Hybrid-test-VnE-2023-5233_20241129_022126.jpg,Honda-CR-V-Hybrid-test-VnE-2023-5224_20241129_022126.jpg,Honda-CR-V-Hybrid-test-VnE-2023-5094_20241129_022126.jpg,Honda-CR-V-2024-VnE-3410_20241129_022126.jpg,Honda-CR-V-2024-VnE-3398_20241129_022126.jpg,Honda-CR-V-2024-VnE-3391_20241129_022126.jpg,Honda-CR-V-2024-VnE-3382_20241129_022126.jpg,Honda-CR-V-2024-VnE-3374_20241129_022126.jpg,Honda-CR-V-2024-VnE-3372_20241129_022126.jpg,Honda-CR-V-2024-VnE-3371_20241129_022126.jpg,Honda-CR-V-2024-VnE-3370_20241129_022126.jpg,Honda-CR-V-2024-VnE-3254_20241129_022126.jpg,Honda-CR-V-2024-VnE-3041_20241129_022126.jpg,Honda-CR-V-2024-VnE-3036_20241129_022126.jpg,Honda-CR-V-2024-VnE-3035_20241129_022126.jpg,Honda-CR-V-2024-VnE-3034_20241129_022126.jpg,Honda-CR-V-2024-VnE-3031_20241129_022126.jpg,Honda-CR-V-2024-VnE-3026_20241129_022126.jpg,Honda-CR-V-2024-VnE-3022_20241129_022126.jpg,Honda-CR-V-2024-VnE-3019_20241129_022126.jpg,1_20241129_022126.jpg', 1029000000, 1083000000, N'Trắng', 0)
INSERT [dbo].[CarType] ([CarTypeID], [DongXeID], [DoiXe], [DongCo], [CarImage], [GiaNhap], [GiaBan], [MauSac], [IsDeleted]) VALUES (9, 28, 2019, N'Động cơ xăng (Gasoline Engine)', N'aventador-svj-1-1722916596924_20241201_042417.webp,aventador-svj-4-1722916596719_20241201_042417.webp,aventador-svj-7-1722916595936_20241201_042417.webp,aventador-svj-6-1722916596548_20241201_042417.webp,aventador-svj-3-1722916596647_20241201_042417.webp,aventador-svj-2-1722916596904_20241201_042417.webp', 25000000000, 30000000000, N'Xanh Lá', 0)
SET IDENTITY_INSERT [dbo].[CarType] OFF
GO
SET IDENTITY_INSERT [dbo].[DongXeDetail] ON 

INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (1, 1, N'Corolla', N'Nhật Bản', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (2, 1, N'Camry', N'Nhật Bản', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (3, 1, N'Hilux', N'Thái Lan', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (4, 2, N'Civic', N'Nhật Bản', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (5, 2, N'Accord', N'Nhật Bản', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (6, 2, N'CR-V', N'Thái Lan', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (7, 3, N'Mustang', N'Mỹ', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (8, 3, N'F-150', N'Mỹ', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (9, 3, N'Ranger', N'Thái Lan', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (10, 4, N'X5', N'Đức', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (11, 4, N'3 Series', N'Đức', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (12, 4, N'7 Series', N'Đức', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (13, 5, N'C-Class', N'Đức', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (14, 5, N'E-Class', N'Đức', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (15, 5, N'S-Class', N'Đức', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (16, 6, N'Elantra', N'Hàn Quốc', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (17, 6, N'Santa Fe', N'Hàn Quốc', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (18, 6, N'Tucson', N'Hàn Quốc', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (19, 7, N'Cruze', N'Mỹ', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (20, 7, N'Colorado', N'Mỹ', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (21, 7, N'Spark', N'Hàn Quốc', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (22, 8, N'Model S', N'Mỹ', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (23, 8, N'Model 3', N'Mỹ', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (24, 8, N'Model X', N'Mỹ', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (25, 9, N'488 GTB', N'Ý', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (26, 9, N'F8 Tributo', N'Ý', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (27, 9, N'SF90 Stradale', N'Ý', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (28, 10, N'Aventador', N'Ý', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (29, 10, N'Huracan', N'Ý', 0)
INSERT [dbo].[DongXeDetail] ([DongXeID], [HangXeID], [TenDongXe], [NoiSanXuat], [IsDeleted]) VALUES (30, 10, N'Urus', N'Ý', 0)
SET IDENTITY_INSERT [dbo].[DongXeDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[HangXeDetail] ON 

INSERT [dbo].[HangXeDetail] ([HangXeID], [TenHangXe], [XuatXu], [LogoImage], [IsDeleted]) VALUES (1, N'Toyota', N'Nhật Bản', N'toyota_logo.jfif', 0)
INSERT [dbo].[HangXeDetail] ([HangXeID], [TenHangXe], [XuatXu], [LogoImage], [IsDeleted]) VALUES (2, N'Honda', N'Nhật Bản', N'honda_logo.png', 0)
INSERT [dbo].[HangXeDetail] ([HangXeID], [TenHangXe], [XuatXu], [LogoImage], [IsDeleted]) VALUES (3, N'Ford', N'Mỹ', N'ford_logo.jfif', 0)
INSERT [dbo].[HangXeDetail] ([HangXeID], [TenHangXe], [XuatXu], [LogoImage], [IsDeleted]) VALUES (4, N'BMW', N'Đức', N'bmw_logo.jfif', 0)
INSERT [dbo].[HangXeDetail] ([HangXeID], [TenHangXe], [XuatXu], [LogoImage], [IsDeleted]) VALUES (5, N'Mercedes-Benz', N'Đức', N'mercedes_logo.png', 0)
INSERT [dbo].[HangXeDetail] ([HangXeID], [TenHangXe], [XuatXu], [LogoImage], [IsDeleted]) VALUES (6, N'Hyundai', N'Hàn Quốc', N'hyundai_logo.jfif', 0)
INSERT [dbo].[HangXeDetail] ([HangXeID], [TenHangXe], [XuatXu], [LogoImage], [IsDeleted]) VALUES (7, N'Chevrolet', N'Mỹ', N'chevrolet_logo.jfif', 0)
INSERT [dbo].[HangXeDetail] ([HangXeID], [TenHangXe], [XuatXu], [LogoImage], [IsDeleted]) VALUES (8, N'Tesla', N'Mỹ', N'tesla_logo.png', 0)
INSERT [dbo].[HangXeDetail] ([HangXeID], [TenHangXe], [XuatXu], [LogoImage], [IsDeleted]) VALUES (9, N'Ferrari', N'Ý', N'ferrari_logo.png', 0)
INSERT [dbo].[HangXeDetail] ([HangXeID], [TenHangXe], [XuatXu], [LogoImage], [IsDeleted]) VALUES (10, N'Lamborghini', N'Ý', N'lamborghini_logo.jfif', 0)
SET IDENTITY_INSERT [dbo].[HangXeDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (1, N'Trang chủ', 1, N'Home', N'Index', 1, 0, NULL, 1, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (2, N'Xem xe', 1, N'Products', N'Products', 1, 0, NULL, 2, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (3, N'Bộ sưu tập', 1, N'Gallery', N'Gallery', 1, 0, NULL, 3, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (4, N'Dịch vụ', 0, N'Services', N'Services', 1, 0, NULL, 4, 1)
INSERT [dbo].[Menu] ([MenuID], [MenuName], [IsActive], [ControllerName], [ActionName], [Levels], [ParentID], [Link], [MenuOrder], [Position]) VALUES (5, N'Liên hệ', 1, N'Contact', N'Contact', 1, 0, NULL, 5, 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Transaction] ON 

INSERT [dbo].[Transaction] ([TransID], [KhachHangID], [NgayTaoDon], [ThanhToan], [TrangThai], [NguoiXuLyID], [NgayDuyet], [NguoiDuyetID], [ChietKhau], [TongTien]) VALUES (4, 2, CAST(N'2024-11-29T13:56:08.000' AS DateTime), N'Chuyển khoản', N'Hoàn thành', 1, CAST(N'2024-11-29T15:05:45.823' AS DateTime), 1, 0, 81400000000)
INSERT [dbo].[Transaction] ([TransID], [KhachHangID], [NgayTaoDon], [ThanhToan], [TrangThai], [NguoiXuLyID], [NgayDuyet], [NguoiDuyetID], [ChietKhau], [TongTien]) VALUES (5, 2, CAST(N'2024-11-29T15:14:09.727' AS DateTime), NULL, N'Đã hủy', NULL, NULL, NULL, 0, 40700000000)
INSERT [dbo].[Transaction] ([TransID], [KhachHangID], [NgayTaoDon], [ThanhToan], [TrangThai], [NguoiXuLyID], [NgayDuyet], [NguoiDuyetID], [ChietKhau], [TongTien]) VALUES (6, 2, CAST(N'2024-12-03T23:28:16.887' AS DateTime), NULL, N'Đã hủy', NULL, NULL, NULL, 0, 74000000000)
INSERT [dbo].[Transaction] ([TransID], [KhachHangID], [NgayTaoDon], [ThanhToan], [TrangThai], [NguoiXuLyID], [NgayDuyet], [NguoiDuyetID], [ChietKhau], [TongTien]) VALUES (10006, 2, CAST(N'2024-12-05T04:32:34.313' AS DateTime), NULL, N'Đã hủy', NULL, NULL, NULL, 0, 37800000000)
INSERT [dbo].[Transaction] ([TransID], [KhachHangID], [NgayTaoDon], [ThanhToan], [TrangThai], [NguoiXuLyID], [NgayDuyet], [NguoiDuyetID], [ChietKhau], [TongTien]) VALUES (10007, 2, CAST(N'2024-12-05T04:32:34.337' AS DateTime), NULL, N'Đã hủy', NULL, NULL, NULL, 0, 37800000000)
INSERT [dbo].[Transaction] ([TransID], [KhachHangID], [NgayTaoDon], [ThanhToan], [TrangThai], [NguoiXuLyID], [NgayDuyet], [NguoiDuyetID], [ChietKhau], [TongTien]) VALUES (20006, 2, CAST(N'2024-12-06T04:38:03.000' AS DateTime), N'Tiền mặt', N'Chờ duyệt', 1, NULL, NULL, 0, 37800000000)
INSERT [dbo].[Transaction] ([TransID], [KhachHangID], [NgayTaoDon], [ThanhToan], [TrangThai], [NguoiXuLyID], [NgayDuyet], [NguoiDuyetID], [ChietKhau], [TongTien]) VALUES (20007, 2, CAST(N'2024-12-06T04:38:19.060' AS DateTime), NULL, N'Chờ xác nhận', NULL, NULL, NULL, 0, 37000000000)
SET IDENTITY_INSERT [dbo].[Transaction] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [CMND], [HoTen], [DiaChi], [NamSinh], [Email], [SoDienThoai], [TypeID], [UserImage], [Username], [Password], [IsActive]) VALUES (1, N'123456789', N'Nguyễn Cảnh Hùng', N'Nghệ An', 2002, N'nguyencanhhungadmin@gmail.com', N'0941431476', 1, N'NguyenCanhHung.jpg', N'Canhhungadmin', N'123', 1)
INSERT [dbo].[User] ([UserID], [CMND], [HoTen], [DiaChi], [NamSinh], [Email], [SoDienThoai], [TypeID], [UserImage], [Username], [Password], [IsActive]) VALUES (2, N'123456780', N'Nguyễn Cảnh Hùng', N'Nghệ An', 2002, N'nguyencanhhungclient@gmail.com', N'0941431477', 2, N'NguyenCanhHung.jpg', N'Canhhungclient', N'123', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_CarType] FOREIGN KEY([CarTypeID])
REFERENCES [dbo].[CarType] ([CarTypeID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_CarType]
GO
ALTER TABLE [dbo].[Car]  WITH CHECK ADD  CONSTRAINT [FK_Car_Transaction] FOREIGN KEY([TransactionID])
REFERENCES [dbo].[Transaction] ([TransID])
GO
ALTER TABLE [dbo].[Car] CHECK CONSTRAINT [FK_Car_Transaction]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Car] FOREIGN KEY([CarTypeID])
REFERENCES [dbo].[CarType] ([CarTypeID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Car]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[CarType]  WITH CHECK ADD  CONSTRAINT [FK_Car_DongXeDetail] FOREIGN KEY([DongXeID])
REFERENCES [dbo].[DongXeDetail] ([DongXeID])
GO
ALTER TABLE [dbo].[CarType] CHECK CONSTRAINT [FK_Car_DongXeDetail]
GO
ALTER TABLE [dbo].[DongXeDetail]  WITH CHECK ADD  CONSTRAINT [FK_DongXeDetail_HangXeDetail] FOREIGN KEY([HangXeID])
REFERENCES [dbo].[HangXeDetail] ([HangXeID])
GO
ALTER TABLE [dbo].[DongXeDetail] CHECK CONSTRAINT [FK_DongXeDetail_HangXeDetail]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_User] FOREIGN KEY([KhachHangID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_User]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_User1] FOREIGN KEY([NguoiXuLyID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_User1]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_User2] FOREIGN KEY([NguoiDuyetID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_User2]
GO
USE [master]
GO
ALTER DATABASE [PTUDW_CTS_QuanLyBanXeOto] SET  READ_WRITE 
GO
