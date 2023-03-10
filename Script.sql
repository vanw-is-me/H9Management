USE [master]
GO
/****** Object:  Database [F_Gear]    Script Date: 11/18/2022 11:08:00 PM ******/
CREATE DATABASE [F_Gear]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'F_Gear', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\F_Gear.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'F_Gear_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\F_Gear_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [F_Gear] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [F_Gear].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [F_Gear] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [F_Gear] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [F_Gear] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [F_Gear] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [F_Gear] SET ARITHABORT OFF 
GO
ALTER DATABASE [F_Gear] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [F_Gear] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [F_Gear] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [F_Gear] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [F_Gear] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [F_Gear] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [F_Gear] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [F_Gear] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [F_Gear] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [F_Gear] SET  ENABLE_BROKER 
GO
ALTER DATABASE [F_Gear] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [F_Gear] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [F_Gear] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [F_Gear] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [F_Gear] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [F_Gear] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [F_Gear] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [F_Gear] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [F_Gear] SET  MULTI_USER 
GO
ALTER DATABASE [F_Gear] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [F_Gear] SET DB_CHAINING OFF 
GO
ALTER DATABASE [F_Gear] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [F_Gear] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [F_Gear] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [F_Gear] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [F_Gear] SET QUERY_STORE = OFF
GO
USE [F_Gear]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CateBrand]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CateBrand](
	[CateID] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[TypeWarranty] [varchar](100) NOT NULL,
	[IntendTime] [varchar](100) NOT NULL,
	[Note] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CateBrand] PRIMARY KEY CLUSTERED 
(
	[CateID] ASC,
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guarantee]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guarantee](
	[GuaranteeID] [int] IDENTITY(1,1) NOT NULL,
	[Detail] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GuaranteeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ProID] [int] NULL,
	[ImageTypeID] [int] NULL,
	[Url] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageType]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageType](
	[ImageTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ImageType] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ImageTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [bigint] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NULL,
	[OrderDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProID] [int] IDENTITY(1,1) NOT NULL,
	[ProName] [nvarchar](100) NOT NULL,
	[OriginalPrice] [int] NOT NULL,
	[Discount] [int] NULL,
	[CurrentPrice] [int] NULL,
	[BrandID] [int] NOT NULL,
	[CateID] [int] NULL,
	[Status] [bit] NOT NULL,
	[GuaranteeID] [int] NULL,
 CONSTRAINT [PK__Product__620295F0189A70B0] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProSpec]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProSpec](
	[ProID] [int] NOT NULL,
	[SpecID] [int] NOT NULL,
	[Detail] [nvarchar](100) NULL,
 CONSTRAINT [PK_ProSpec] PRIMARY KEY CLUSTERED 
(
	[ProID] ASC,
	[SpecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specification]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specification](
	[SpecID] [int] IDENTITY(1,1) NOT NULL,
	[SpecName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SpecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/18/2022 11:08:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [varchar](100) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Password] [varchar](100) NULL,
	[PhoneNumber] [char](9) NULL,
	[RoleID] [int] NOT NULL,
	[Avatar] [varchar](255) NULL,
	[Gender] [varchar](10) NULL,
 CONSTRAINT [PK__Users__C9F2845798EF1F4F] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (1, N'ACER')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (2, N'ASUS')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (3, N'MSI')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (4, N'LENOVO')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (5, N'DELL')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (6, N'HP')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (7, N'Logitech')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (8, N'Razer')
INSERT [dbo].[Brand] ([BrandID], [BrandName]) VALUES (9, N'Sony')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (1, 1, N'Repair or replace', N'7 - 14 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (1, 2, N'Repair or replace', N'7 - 21 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (1, 3, N'Renew', N'7 - 21 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (1, 4, N'Repair or replace', N'7 - 21 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (1, 5, N'Repair or replace', N'7 - 21 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (1, 6, N'Repair or replace', N'7 - 21 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (2, 1, N'Repair or replace', N'7 - 21 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (2, 2, N'Repair or replace', N'7 - 21 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (2, 3, N'Repair or replace', N'7 - 21 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (2, 4, N'Repair or replace', N'7 - 21 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (2, 5, N'Repair or replace', N'7 - 21 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (2, 6, N'Repair or replace', N'7 - 21 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (3, 2, N'Renew', N'7 - 10 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (3, 7, N'Renew', N'7 - 10 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (3, 8, N'Renew', N'7 - 10 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (4, 2, N'Renew', N'7 - 10 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (4, 6, N'Renew', N'7 - 10 days', N'Hotline: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (4, 7, N'Renew', N'7 - 10 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (4, 8, N'Renew', N'7 - 10 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
INSERT [dbo].[CateBrand] ([CateID], [BrandID], [TypeWarranty], [IntendTime], [Note]) VALUES (4, 9, N'Renew', N'7 - 10 days', N'There is service warranty at the company, you can contact the switchboard: 1900969601')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (1, N'Laptop Gaming')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (2, N'Laptop Văn Phòng')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (3, N'Chuột')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (4, N'Tai Nghe')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Guarantee] ON 

INSERT [dbo].[Guarantee] ([GuaranteeID], [Detail]) VALUES (1, N'6 months')
INSERT [dbo].[Guarantee] ([GuaranteeID], [Detail]) VALUES (2, N'12 months')
INSERT [dbo].[Guarantee] ([GuaranteeID], [Detail]) VALUES (3, N'18 months')
INSERT [dbo].[Guarantee] ([GuaranteeID], [Detail]) VALUES (4, N'24 months')
INSERT [dbo].[Guarantee] ([GuaranteeID], [Detail]) VALUES (5, N'30 months')
INSERT [dbo].[Guarantee] ([GuaranteeID], [Detail]) VALUES (6, N'36 months')
SET IDENTITY_INSERT [dbo].[Guarantee] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (1, 1, 1, N'https://product.hstatic.net/1000026716/product/r4xx_e962521937eb4d8c9feedbf12a3d3495.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (2, 1, 2, N'https://product.hstatic.net/1000026716/product/ire-7-a715-43g-r8ga-r5-5625u-2_16eb432cd8734500916c8c9edb10e531_master_0ab96f3027c64db4ad083ca3401f8d95.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (3, 1, 2, N'https://product.hstatic.net/1000026716/product/ire-7-a715-43g-r8ga-r5-5625u-1_97b74b15878f494393152b22c68fd352_master_1138c0c2a2f7468f9aa4ab66a8929ad7.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (4, 2, 1, N'https://product.hstatic.net/1000026716/product/laptop_gaming_acer_nitro_5_eagle_an515_57_5669_a1581d79b72e45239cf8ffaad2c866f4.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (5, 2, 2, N'https://product.hstatic.net/1000026716/product/nitro_5_eagle__5__cc86ba73bd584ce084f053816d81be28.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (6, 2, 2, N'https://product.hstatic.net/1000026716/product/nitro_5_eagle__3__d9ce57f8e2154412bcd9cce282ea97dc.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (7, 3, 1, N'https://product.hstatic.net/1000026716/product/52sp_a41f57a6e3714169a8394698e9abb0a9.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (8, 3, 2, N'https://product.hstatic.net/1000026716/product/gearvn-may-tinh-xach-tay-acer-nitro-5-an515-58-52sp-https://product.hstatic.net/1000026716/product/gearvn-may-tinh-xach-tay-acer-nitro-5-an515-58-52sp-1_5358676a1607457184a6512bf81855a5.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (9, 3, 2, N'https://product.hstatic.net/1000026716/product/gearvn-may-tinh-xach-tay-acer-nitro-5-an515-58-52sp-2_6893ad33d2354233ab5fef58238c35c0.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (10, 4, 1, N'https://product.hstatic.net/1000026716/product/fa506ihrb_ce73a15ccdf346c7872320f1bec55055.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (11, 4, 2, N'https://product.hstatic.net/1000026716/product/fa506ihr-6_compressed_61c25688bc0342019e4717a32dede036.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (12, 4, 2, N'https://product.hstatic.net/1000026716/product/fa506ihr-4_compressed_b1b37d2d27d0499596ae447f984238f3.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (13, 5, 1, N'https://product.hstatic.net/1000026716/product/506hc_42cf688c2e7e4babaa009cb5f0e65ceb.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (14, 5, 2, N'https://product.hstatic.net/1000026716/product/1_1cb66c0a3ec54f9b86b4d4213119daa7.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (15, 5, 2, N'https://product.hstatic.net/1000026716/product/6_92556f2273284826b1e1dfb79a100cea.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (16, 6, 1, N'https://product.hstatic.net/1000026716/product/hn007w_14d2987c17294f859b3bb0b8334f66c0.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (17, 6, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-asus-tuf-a15-fa507re-hn007w-3_88ca8d87d6d54a62ad46fdbc3e497005.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (18, 6, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-asus-tuf-a15-fa507re-hn007w-5_965a19a770ac4e96bee002483c16e7da.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (19, 7, 1, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-asus-rog-strix-g15-g513rm-hq055w-1_8c4ecc470fa8446e9f2ed991620cdd0b.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (20, 7, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-asus-rog-strix-g15-g513rm-hq055w-1_8c4ecc470fa8446e9f2ed991620cdd0b.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (21, 7, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-asus-rog-strix-g15-g513rm-hq055w-5_02ad2646fbaa4d58b1b23f1277196760.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (23, 8, 1, N'https://product.hstatic.net/1000026716/product/laptop_gaming_msi_bravo_15_b5dd_276vn_d4c9121fa7844b5fa0aea1ac183b41da.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (24, 8, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-bravo-15-b5dd-276vn-2_ef189cf553a144bbb580dddd72da3813.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (25, 8, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-bravo-15-b5dd-276vn-4_8b4749cfb07747cc890896c23b8f9872.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (26, 9, 1, N'https://product.hstatic.net/1000026716/product/699_fd834490cf434a279920beae94e43b6a.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (27, 9, 2, N'https://product.hstatic.net/1000026716/product/1024__2__08845c93a00840b3945c7179d1921923.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (28, 9, 2, N'https://product.hstatic.net/1000026716/product/1024__2__08845c93a00840b3945c7179d1921923.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (29, 10, 1, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-vector-gp76-12ugs-644vn-2_bd2daffe2013405fa9114c918e32600a.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (30, 10, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-vector-gp76-12ugs-644vn-3_77c93e58234e4f11ba4911ada8dfd3da.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (31, 10, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-vector-gp76-12ugs-644vn-5_55f75a73b542490c9f649bb1fa005321.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (32, 11, 1, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge67-hx-12ugs-097vn-1_c87fff05cc984e809ce952e9fb55127d.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (33, 11, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge67-hx-12ugs-097vn-4_6b4ba5f2c9754a7d8064ffd4306bfc50.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (34, 11, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-raider-ge67-hx-12ugs-097vn-4_6b4ba5f2c9754a7d8064ffd4306bfc50.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (35, 12, 1, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-lenovo-ideapad-gaming-3-15ihu6-82k101b5vn-1_a8ae2d21b6e5454bab7bd0f7476cf29b.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (36, 12, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-lenovo-ideapad-gaming-3-15ihu6-82k101b5vn-2_9d1e826c726f41dfa69a3f4abd242b50.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (37, 12, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-lenovo-ideapad-gaming-3-15ihu6-82k101b5vn-8_6fc7082449604ad19e8d4b069a73177f.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (38, 13, 1, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-5-15iah7-82rc008lvn-1_ca9a0645fba34a2e970c3dc047055497.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (39, 13, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-5-15iah7-82rc008lvn-2_045893f312404c7595c440b7df1f477b.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (41, 13, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-5-15iah7-82rc008lvn-6_a5b81fc8fb3946b898eff2890393eead.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (42, 14, 1, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-5-pro-16arh7h-82rg008svn-1_290163deacb44f978dcf9a19ac5a6833.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (43, 14, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-5-pro-16arh7h-82rg008svn-3_cfc3626f830a42259854e10d4e3d0233.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (44, 14, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-5-pro-16arh7h-82rg008svn-7_25c19a97afbf480f821ce480c53d6da5.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (45, 15, 1, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-5-pro-16iah7h-82rf0045vn-1_8887c5d9d4a3407aaac55f5a6bb31a52.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (46, 15, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-5-pro-16iah7h-82rf0045vn-3_c010ce2811c04b97bffe0abc8408bbf5.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (48, 15, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-lenovo-legion-5-pro-16iah7h-82rf0045vn-7_4b202e16629a455b918779a18ec5032d.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (49, 16, 1, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-dell-g15-5515-p105f004cgr-1_11291e44a82b4771900c0e7b964f60be.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (50, 16, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-dell-g15-5515-p105f004cgr-3_655e8649c42a4ddb87037b092be5b895.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (52, 16, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-dell-g15-5515-p105f004cgr-3_655e8649c42a4ddb87037b092be5b895.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (53, 17, 1, N'https://product.hstatic.net/1000026716/product/r7-3060-100__45be001b7858492fab0951b5ddecfca6.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (54, 17, 2, N'https://product.hstatic.net/1000026716/product/5_959dfc1f0c324e7888bc421942252c3f.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (55, 17, 2, N'https://product.hstatic.net/1000026716/product/2_e17e62d9deb44d02bfbc4d84a67e13e2.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (56, 18, 1, N'https://product.hstatic.net/1000026716/product/921-win-11_afacf50f522747808a506b3edd32582c.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (57, 18, 2, N'https://product.hstatic.net/1000026716/product/m15_r5_7_51a6c33b0bfc4ec2850100ade9e4fe4b_master_54acc90bc33f47f2baf822d00d53c91e.jpeg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (58, 18, 2, N'https://product.hstatic.net/1000026716/product/m15_r5_2_768e3052233246cabc13ef325e42f4e6_master_d05c34c8a3d24fb58fa2d902f7748eb0.jpeg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (59, 19, 1, N'https://product.hstatic.net/1000026716/product/khung-laptop-gaming_dc77adc347fc43419e195570c7cbbbeb.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (60, 19, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-dell-g15-5511-p105f006-70283448-3_f2085b078b8241eab648c07adccb705f.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (61, 19, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-dell-g15-5511-p105f006-70283448-3_f2085b078b8241eab648c07adccb705f.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (62, 20, 1, N'https://product.hstatic.net/1000026716/product/laptop_gaming_hp_victus_16_e0177ax_4r0u9pa_4871a19b101c41e3a073e26a9767a174.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (63, 20, 2, N'https://product.hstatic.net/1000026716/product/victus-mica_silver-1_afb0954c33544b029f5efdb473cf1016.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (64, 20, 2, N'https://product.hstatic.net/1000026716/product/victus-mica_silver-6_eae75d4f03624ebfa146b532982067d1.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (65, 21, 1, N'https://product.hstatic.net/1000026716/product/5z9r2pa_96d6f7d8fb0a4a5fa89bb25b4ec834bd.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (66, 21, 2, N'https://product.hstatic.net/1000026716/product/16-d0292tx-5z9r3pa-i5-11400h-1_81649d2b2de745d0a4ac65c304825302_master_83e3c6ad5a3549908a8937a2ce2baed1.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (67, 21, 2, N'https://product.hstatic.net/1000026716/product/16-d0292tx-5z9r3pa-i5-11400h-2_dd46bd1eeca44486a1d0c04f5360e1e0_master_d51991c529ba494385dcee382ebcbdfd.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (68, 22, 1, N'https://product.hstatic.net/1000026716/product/hp_victus_16_d0197tx_4r0t9pa_a_2d5290eba8c44f1ca10b5e7ac076a42d.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (69, 22, 2, N'https://product.hstatic.net/1000026716/product/victus-performance_blue-2_c121a9904de84ae3ba377e7da73bf42d.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (70, 22, 2, N'https://product.hstatic.net/1000026716/product/victus-performance_blue-2_c121a9904de84ae3ba377e7da73bf42d.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (71, 23, 1, N'https://product.hstatic.net/1000026716/product/tai-nghe-gaming-logitech-g-pro-gen-2-1_d20d0ae9b42e4c13803cb2c9936b2096.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (72, 24, 1, N'https://product.hstatic.net/1000026716/product/logitech-g333_e38d46257e63487c9d72d6d10b1722d3.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (73, 24, 2, N'https://product.hstatic.net/1000026716/product/logitech-g333-black-4_de4536e369a14326be2389083efd7942.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (74, 25, 1, N'https://product.hstatic.net/1000026716/product/g335-6_e1253941f7e3484890523aa330eecdff.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (75, 25, 2, N'https://product.hstatic.net/1000026716/product/g335-699_0f0f3480e5f0493a98a49b93656c5a86.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (76, 26, 1, N'https://product.hstatic.net/1000026716/product/g733_6f97109db5774b769bf60c5d225d8254.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (77, 27, 1, N'https://product.hstatic.net/1000026716/product/tai_nghe_razer_barracuda_x_mercury_9d19dc2265694563979b79a0cf69b1ac.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (78, 27, 2, N'https://product.hstatic.net/1000026716/product/tai-nghe-khong-day-razer-barracuda-x-mercury-https://product.hstatic.net/1000026716/product/tai-nghe-khong-day-razer-barracuda-x-mercury-2_4d10ce45892e4dc79811e9e451bcbc3b.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (79, 28, 1, N'https://product.hstatic.net/1000026716/product/tai_nghe_razer_barracuda_x_quart_4ab48e4bbce9424594de160ef0f4b9cf.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (80, 28, 2, N'https://product.hstatic.net/1000026716/product/tai-nghe-khong-day-razer-barracuda-x-quartz-rz04-03800300-r3m1-2_b358de7fa04f41efab5fd8dcf9b98a96.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (81, 29, 1, N'https://product.hstatic.net/1000026716/product/kraken_a19ced5c8cb34a869ee129df46ceca84.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (82, 29, 2, N'https://product.hstatic.net/1000026716/product/ix-images-container_ha2_h57_9248879312926_211021-kraken-v3-1500x1000-3_2e7a19371628420b9f13b04c05f60b13.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (103, 56, 1, N'https://product.hstatic.net/1000026716/product/laptop-msi-modern-14-b11mou-1028vn_1a6c3972f3de4fbc9070eca8914ffa55.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (104, 56, 2, N'https://product.hstatic.net/1000026716/product/laptop-msi-modern-14-b11mou-1028vn-1_267679e1c3fe4f10aac882a72d6fab88.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (105, 56, 2, N'https://product.hstatic.net/1000026716/product/laptop-msi-modern-14-b11mou-1028vn-1_267679e1c3fe4f10aac882a72d6fab88.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (106, 53, 1, N'https://product.hstatic.net/1000026716/product/gh-l_mk_front_001-large_21addd64c27d44edacdeb98ce8ea53a9.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (107, 53, 2, N'https://product.hstatic.net/1000026716/product/ghguyuyuy_5c40ec90a708401f891d87ddeecff5fa.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (108, 54, 1, N'https://product.hstatic.net/1000026716/product/gearvn_c500_green_e3159b650cbb48f59f53207a2da0939b.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (109, 54, 2, N'https://product.hstatic.net/1000026716/product/gearvn_c500_green_e3159b650cbb48f59f53207a2da0939b.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (111, 55, 1, N'https://product.hstatic.net/1000026716/product/gearvn_sony_mdr-zx310ap_3_dcab2ce393cd4976b9b4819a5db0a3b7.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (112, 55, 2, N'https://product.hstatic.net/1000026716/product/0ca34c_57f0bd46f5a7409d933e92220471b70e_mv2_e78565015b534d56b34046c2e5356b9e.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (113, 57, 1, N'https://product.hstatic.net/1000026716/product/laptop-msi-modern-14-b5m-202vn_73d5b3c3b48a4ba39b82cd72c13d50c7.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (114, 57, 2, N'https://product.hstatic.net/1000026716/product/laptop-msi-modern-14-b5m-202vn_73d5b3c3b48a4ba39b82cd72c13d50c7.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (115, 57, 2, N'https://product.hstatic.net/1000026716/product/laptop-msi-modern-14-b5m-202vn-4_49770abd5fb04059adb7a789f613571e.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (116, 58, 1, N'https://product.hstatic.net/1000026716/product/laptop-asus-zenbook-ux325ea-kg656w_33160483676c416081a2d4c83e86306f.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (117, 58, 2, N'https://product.hstatic.net/1000026716/product/5_88fde2b2944c4b419ae058c71ad47b27.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (118, 58, 2, N'https://product.hstatic.net/1000026716/product/4_f7066eb981a54563b33118fe8d313355.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (119, 59, 1, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-msi-modern-15-a5m-234vn-1_0cd58d3fc64b4559b1fe788d1a72a9d5.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (120, 59, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-msi-modern-15-a5m-234vn-https://product.hstatic.net/1000026716/product/gearvn-laptop-msi-modern-15-a5m-234vn-3_19b6cd1d2696414fbcf5e73487a2163f.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (121, 59, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-msi-modern-15-a5m-234vn-5_8bec1b0c433d49fda6de039dd06558fa.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (122, 60, 1, N'https://product.hstatic.net/1000026716/product/l1421w_2b115562199d462b82b92e89e95b2473.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (123, 60, 2, N'https://product.hstatic.net/1000026716/product/l1421w_2b115562199d462b82b92e89e95b2473.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (124, 60, 2, N'https://product.hstatic.net/1000026716/product/gearvn-laptop-asus-vivobook-15x-oled-a1503za-l1421w-6_c71ac1af60084248bc4521b3071cecfe.png')
GO
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (125, 61, 1, N'https://product.hstatic.net/1000026716/product/1_79b6ab66ac2047068430616035180e67.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (126, 61, 2, N'https://product.hstatic.net/1000026716/product/1_79b6ab66ac2047068430616035180e67.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (128, 61, 2, N'https://product.hstatic.net/1000026716/product/10049805-laptop-dell-vostro-14-5410-i5-11300h-14-inch-v4i5014w-5_88a6b503047540ddbfb314d1e009b46a.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (129, 62, 1, N'https://product.hstatic.net/1000026716/product/dell-fix_6fd3622b6b5a4e38a1a1b2a6020ac645.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (130, 62, 2, N'https://product.hstatic.net/1000026716/product/laptop-dell-latitude-3520-p108f001-70280536-1_caf157d1a4044c22929d974874a40305.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (131, 62, 2, N'https://product.hstatic.net/1000026716/product/laptop-dell-latitude-3520-p108f001-70280536-4_a3b5d20b86bf420289f1af7828596a9b.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (132, 63, 1, N'https://product.hstatic.net/1000026716/product/1_01e89bfad61b452babc53a1e15311af3.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (133, 63, 2, N'https://product.hstatic.net/1000026716/product/1_01e89bfad61b452babc53a1e15311af3.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (134, 74, 1, N'https://product.hstatic.net/1000026716/product/gearvn-chuot-razer-basilisk-ultimate-1_2d28d30423c8455fa7b5de74a612189f.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (135, 74, 2, N'https://product.hstatic.net/1000026716/product/gearvn-chuot-razer-basilisk-ultimate-3_f33f231e07fd4e49abe19791ea992e19.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (136, 74, 2, N'https://product.hstatic.net/1000026716/product/gearvn-chuot-razer-basilisk-ultimate-2_45e4e98b55e04c84a8ee5823c2dfa1d2.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (137, 75, 1, N'https://product.hstatic.net/1000026716/product/chuot-asus-tuf-gaming-m4-air_af16cf3624bb46f5adbaefc5a511e3fd.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (138, 75, 2, N'https://product.hstatic.net/1000026716/product/kv-main__1__a9cf04d5405f489198731f0373ef8ac5.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (139, 75, 2, N'https://product.hstatic.net/1000026716/product/chuot-asus-tuf-gaming-m4-air_af16cf3624bb46f5adbaefc5a511e3fd.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (140, 76, 1, N'https://product.hstatic.net/1000026716/product/gearvn-chuot-may-tinh-asus-tuf-gaming-m3-1_1084923e02ee4a489f1e9982f7e8d087.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (141, 76, 2, N'https://product.hstatic.net/1000026716/product/gearvn-chuot-may-tinh-asus-tuf-gaming-m3-1_3f56c6c7c5b345ce816aab58aefeda65.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (142, 76, 2, N'https://product.hstatic.net/1000026716/product/gearvn-chuot-may-tinh-asus-tuf-gaming-m3-7_697d2cedaa2e4a8a9bbf5868a0bd38af.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (143, 77, 1, N'https://product.hstatic.net/1000026716/product/sdfsdfs_1ad4f69ea7834b848b682c7c5e96b1c4.png')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (144, 77, 2, N'https://product.hstatic.net/1000026716/product/chuot-asus-rog-pugio-ii-1_a16933e69b5c4b42aaf283a1a9b699e4.jpg')
INSERT [dbo].[Images] ([ImageID], [ProID], [ImageTypeID], [Url]) VALUES (145, 77, 2, N'https://product.hstatic.net/1000026716/product/gearvn-asus-rog-strix-impact-ii-rgb-10_e0e748bbb7b94526a803d940396b3535.jpg')
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[ImageType] ON 

INSERT [dbo].[ImageType] ([ImageTypeID], [ImageType]) VALUES (1, N'main')
INSERT [dbo].[ImageType] ([ImageTypeID], [ImageType]) VALUES (2, N'sub')
SET IDENTITY_INSERT [dbo].[ImageType] OFF
GO
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (2, 2, 30, 2050000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (3, 24, 12, 7030000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (7, 2, 14, 4050000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (8, 23, 20, 6150000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (10, 15, 20, 3100000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (11, 25, 32, 4500000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (12, 14, 20, 4500000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (14, 16, 15, 6000000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (16, 17, 20, 7500000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (17, 29, 12, 3900000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (19, 23, 20, 4520000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (21, 20, 18, 5290000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (23, 8, 29, 7200000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (24, 28, 32, 4729000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (27, 2, 1, 23990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (27, 6, 1, 22990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (40, 1, 1, 13993000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (41, 1, 1, 13993000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (41, 2, 1, 23990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (41, 3, 1, 27990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (44, 5, 1, 25990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (45, 7, 1, 36990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (50, 6, 1, 22990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (51, 2, 1, 23990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (52, 6, 1, 22990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (52, 7, 1, 36990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (53, 7, 1, 36990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (54, 6, 1, 22990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (55, 7, 1, 36990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (56, 7, 1, 36990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (57, 2, 1, 23990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (58, 6, 1, 22990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (59, 3, 1, 27990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (60, 3, 1, 27990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (61, 3, 1, 27990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (62, 7, 1, 36990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (63, 6, 1, 22990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (63, 7, 1, 36990000)
INSERT [dbo].[OrderDetail] ([OrderID], [ProID], [Quantity], [Total]) VALUES (64, 7, 1, 36990000)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (2, N'dunghq', CAST(N'2022-01-04' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (3, N'duynv', CAST(N'2022-12-14' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (7, N'dunghq', CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (8, N'dunghq', CAST(N'2022-11-26' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (10, N'dunghq', CAST(N'2022-01-30' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (11, N'dunghq', CAST(N'2022-06-12' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (12, N'dunghq', CAST(N'2022-02-14' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (14, N'dunghq', CAST(N'2022-03-05' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (16, N'dunghq', CAST(N'2022-04-16' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (17, N'dunghq', CAST(N'2022-07-23' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (19, N'dunghq', CAST(N'2022-08-26' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (21, N'dunghq', CAST(N'2022-09-01' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (23, N'dunghq', CAST(N'2022-10-26' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (24, N'dunghq', CAST(N'2022-05-28' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (27, N'duy', CAST(N'2022-10-27' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (40, N'duy', CAST(N'2022-10-27' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (41, N'duy', CAST(N'2022-10-27' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (44, N'duy', CAST(N'2022-10-27' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (45, N'duy', CAST(N'2022-10-27' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (50, N'duy', CAST(N'2022-10-27' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (51, N'duy', CAST(N'2022-10-27' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (52, N'duy', CAST(N'2022-10-28' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (53, N'duy', CAST(N'2022-10-28' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (54, N'duy', CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (55, N'duy', CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (56, N'duy', CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (57, N'duy', CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (58, N'duy', CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (59, N'duy', CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (60, N'duy', CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (61, N'duy', CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (62, N'duy', CAST(N'2022-10-31' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (63, N'duy', CAST(N'2022-11-02' AS Date))
INSERT [dbo].[Orders] ([OrderID], [UserName], [OrderDate]) VALUES (64, N'duy', CAST(N'2022-11-02' AS Date))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (1, N'Laptop Gaming Acer Aspire 7 A715 42G R4XX', 19990000, 30, 0, 1, 1, 1, 4)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (2, N'Laptop Gaming Acer Nitro 5 Eagle AN515 57 5669', 23990000, 10, 0, 1, 1, 1, 5)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (3, N'Máy tính xách tay Acer Nitro 5 AN515 58 52SP', 27990000, 10, 0, 1, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (4, N'Laptop Gaming Asus Tuf FA506IHRB HN019W', 18990000, 0, 0, 2, 1, 1, 4)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (5, N'Laptop ASUS TUF Gaming F15 FX506HC HN144W', 25990000, 0, 0, 2, 1, 1, 5)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (6, N'Laptop gaming Asus TUF A15 FA507RE HN007W', 22990000, 0, 0, 2, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (7, N'Laptop Gaming Asus ROG Strix G15 G513RM HQ055W', 36990000, 0, 0, 2, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (8, N'Laptop Gaming MSI Bravo 15 B5DD 276VN', 22490000, 11, 0, 3, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (9, N'Laptop gaming MSI Katana GF66 12UCK 699VN', 23990000, 0, 0, 3, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (10, N'Laptop Gaming MSI Vector GP76 12UGS 644VN', 57990000, 0, 0, 3, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (11, N'Laptop gaming MSI Raider GE67 HX 12UGS 097VN', 79990000, 11, 0, 3, 1, 1, 5)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (12, N'Laptop Lenovo IdeaPad Gaming 3 15IHU6 82K101B5VN', 22990000, 0, 0, 4, 1, 1, 4)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (13, N'Laptop gaming Lenovo Legion 5 15IAH7 82RC008LVN', 32990000, 0, 0, 4, 1, 1, 5)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (14, N'Laptop gaming Lenovo Legion 5 Pro 16ARH7H 82RG008SVN', 44990000, 0, 0, 4, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (15, N'Laptop gaming Lenovo Legion 5 Pro 16IAH7H 82RF0045VN', 56990000, 10, 0, 4, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (16, N'Laptop gaming Dell G15 5515 P105F004CGR', 25990000, 0, 0, 5, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (17, N'Laptop gaming Dell G15 5515 P105F003 70283446', 32990000, 10, 0, 5, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (18, N'Laptop Gaming Dell Alienware M15 Ryzen Edition 70262921', 59990000, 0, 0, 5, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (19, N'Laptop gaming Dell G15 5511 P105F006 70283448', 35990000, 0, 0, 5, 1, 1, 4)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (20, N'Laptop Gaming HP VICTUS 16 e0177AX 4R0U9PA', 22990000, 0, 0, 6, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (21, N'Laptop Gaming HP VICTUS 16 d0291TX 5Z9R2PA', 32490000, 0, 0, 6, 1, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (22, N'Laptop Gaming HP VICTUS 16 d0197TX 4R0T9PA', 37990000, 0, 0, 6, 1, 1, 5)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (23, N'Tai nghe Gaming Logitech G Pro Gen 2', 2900000, 0, 0, 7, 4, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (24, N'Tai nghe Logitech G333 có Mic và Màng loa kép', 1290000, 0, 0, 7, 4, 1, 1)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (25, N'Tai nghe Gaming Logitech G335 Black', 1699000, 0, 0, 7, 4, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (26, N'Tai nghe Logitech G733 KDA Lightspeed Wireless', 3999000, 0, 0, 7, 4, 1, 1)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (27, N'Tai nghe Razer Barracuda X', 2590000, 0, 0, 8, 4, 1, 1)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (28, N'Tai nghe Razer Barracuda X Quart', 2590000, 0, 0, 8, 4, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (29, N'Tai nghe Razer Kraken V3', 2890000, 0, 0, 8, 4, 1, 1)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (53, N'Tai nghe Sony INZONE H3', 2290000, 0, 0, 9, 4, 1, 1)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (54, N'Tai nghe True Wireless Sony WF - C500 Green', 2290000, 0, 0, 9, 4, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (55, N'Tai Nghe Sony MDR - ZX310AP', 890000, 0, 0, 9, 4, 1, 1)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (56, N'Laptop MSI Modern 14 B11MOU 1028VN', 10990000, 10, 0, 3, 2, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (57, N'Laptop MSI Modern 14 B5M 202VN', 12590000, 0, 0, 3, 2, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (58, N'Laptop Asus ZenBook 13 UX325EA KG656W', 24790000, 0, 0, 2, 2, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (59, N'Laptop MSI Modern 15 A5M 234VN', 17990000, 0, 0, 3, 2, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (60, N'Laptop ASUS Vivobook 15X OLED A1503ZA L1421W', 19990000, 0, 0, 2, 2, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (61, N'Laptop Dell Vostro 5410 V4I5214W1', 23690000, 0, 0, 5, 2, 1, 5)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (62, N'Laptop Dell Latitude 3520 P108F001 70280536', 12990000, 0, 0, 5, 2, 1, 4)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (63, N'Laptop HP Pavilion 14 dv2036TU 6K772PA', 17990000, 0, 0, 6, 2, 1, 6)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (64, N'Laptop HP ProBook 450 G8 614K3PA', 20990000, 0, 0, 6, 2, 1, 5)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (65, N'Laptop Lenovo ThinkBook 15 G3 ACL 21A400CFVN', 19990000, 0, 0, 4, 2, 1, 4)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (66, N'Laptop Lenovo Yoga Slim 7 Pro 14IHU5 OLED 82NH00AFVN', 26990000, 0, 0, 4, 2, 1, 5)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (67, N'Chuột Logitech POP with Emoji Button Blast Yellow', 899000, 0, 0, 7, 3, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (68, N'Chuột Logitech G402 Hyperion', 999000, 10, 0, 7, 3, 1, 1)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (69, N'Chuột Logitech G502 Hero', 1590000, 0, 0, 7, 3, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (70, N'Chuột Logitech MX Master 3S Graphite', 3299000, 0, 0, 7, 3, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (71, N'Chuột Razer Deathadder Essential White', 1290000, 0, 0, 8, 3, 1, 1)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (72, N'Chuột Razer Basilisk V3', 1990000, 0, 0, 8, 3, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (73, N'Chuột Razer Viper V2 Pro White', 3899000, 0, 0, 8, 3, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (74, N'Chuột Razer Basilisk Ultimate', 4530000, 10, 0, 8, 3, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (75, N'Chuột Asus TUF Gaming M4 Air', 850000, 0, 0, 2, 3, 1, 3)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (76, N'Chuột Asus TUF Gaming M3', 690000, 0, 0, 2, 3, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (77, N'Mouse Gaming Asus ROG Pugio II', 10000000, 10, 9000000, 2, 3, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (78, N'Chuột Asus ROG Chakram', 3890000, 0, 0, 2, 3, 1, 1)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (79, N'Chuột MSI Clutch GM08', 599000, 0, 0, 3, 3, 1, 2)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (80, N'Chuột MSI Clutch GM11', 699000, 0, 0, 3, 3, 1, 1)
INSERT [dbo].[Product] ([ProID], [ProName], [OriginalPrice], [Discount], [CurrentPrice], [BrandID], [CateID], [Status], [GuaranteeID]) VALUES (81, N'Chuột MSI Clutch GM30', 1090000, 0, 0, 3, 3, 1, 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (1, 1, N'AMD Ryzen 5 – 5500U (6 nhân 12 luồng)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (1, 2, N'8GB DDR4 ')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (1, 3, N'256GB PCIe® NVMe™ M.2 SSD')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (1, 4, N'NVIDIA GeForce GTX 1650 4GB GDDR6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (1, 5, N'15.6" FHD (1920 x 1080) IPS, Anti-Glare, 60Hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (1, 6, N'HD Webcam')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (1, 7, N'4 Cell 48Whr')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (1, 17, N'2.1 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (1, 18, N'Đen')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (2, 1, N'Intel Core i5-11400H upto 4.50 GHz, 6 nhân 12 lu?ng')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (2, 2, N'8GB DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (2, 3, N'512GB SSD M.2 PCIE')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (2, 4, N'NVIDIA GeForce GTX 1650 4GB GDDR6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (2, 5, N'15.6 inch FHD(1920 x 1080) IPS 144Hz SlimBezel')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (2, 6, N'HD Webcam')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (2, 7, N'4 Cell 57.5WHr')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (2, 17, N'2.20 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (2, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (3, 1, N'Intel Core i5-12500H 3.3GHz up to 4.5GHz 18MB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (3, 2, N'8GB DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (3, 3, N'512GB SSD M.2 PCIE')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (3, 4, N'NVIDIA® GeForce RTX™ 3050 4GB GDDR6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (3, 5, N'15.6 inch FHD(1920 x 1080) IPS 144Hz SlimBezel')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (3, 6, N'HD Webcam')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (3, 7, N'4 Cell 57.5WHr')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (3, 17, N'2.5 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (3, 18, N'Obsidian Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (4, 1, N'AMD Ryzen 5 4600H 3.0GHz up to 4.0GHz 8MB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (4, 2, N'8GB DDR4 3200MHzHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (4, 3, N'512GB SSD M.2 PCIE G3X2')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (4, 4, N'NVIDIA GeForce GTX 1650 4GB GDDR6 + AMD Radeon Graphics')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (4, 5, N'15.6inch FHD (1920 x 1080) IPS, 144Hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (4, 6, N'HD 720p CMOS module')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (4, 7, N'3 Cell 48WHr')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (4, 17, N'2.3 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (4, 18, N'Graphite Black; Led RGB Keyboard')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (5, 1, N'Intel® Core™ i5-11400H Processor 2.7 GHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (5, 2, N'8GB DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (5, 3, N'512GB SSD M.2 PCIE G3X2')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (5, 4, N'NVIDIA® GeForce RTX™ 3050 Laptop GPU + Intel® UHD Graphics')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (5, 5, N'15.6inch FHD (1920 x 1080) IPS, 144Hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (5, 6, N'HD 720p')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (5, 7, N'48WHrs, 3S1P, 3-cell Li-ion')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (5, 17, N'2.3 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (5, 18, N'Graphite Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (6, 1, N'AMD Ryzen 7 6800H 3.2GHz up to 4.7GHz 20MB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (6, 2, N'8GB DDR5 4800MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (6, 3, N'512GB M.2 NVMe™ PCIe® 3.0 SSD ')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (6, 4, N'NVIDIA® GeForce RTX™ 3050Ti 4GB GDDR6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (6, 5, N'15.6" FHD (1920 x 1080) IPS, 144Hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (6, 6, N'HD 720p')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (6, 7, N'56WHrs, 4S1P, 4-cell Li-ion')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (6, 17, N'2.2 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (6, 18, N'Jaeger Gray')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (7, 1, N'AMD Ryzen™ 7-6800H')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (7, 2, N'16GB (2x8GB) DDR5-4800Mhz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (7, 3, N'512GB SSD NVMe PCIe 4.0 ')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (7, 4, N'NVIDIA® GeForce RTX™ 3060 6GB GDDR6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (7, 5, N'15.6" WQHD (2560 x 1440) 16:9, IPS Non-Glare')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (7, 6, N'None')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (7, 7, N'4 Cell 90WHrs')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (7, 17, N'2.3 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (7, 18, N'Eclipse Gray')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (8, 1, N'AMD Ryzen 5-5600H 3.30GHz upto 4.20GHz, 6 cores 12 threads')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (8, 2, N'DDR4 8GB (1 x 8GB) 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (8, 3, N'512GB NVMe PCIe Gen3x4 SSD')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (8, 4, N'Radeon RX5500M 4GB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (8, 5, N'15.6 inch FHD (1920*1080), 60Hz 45%NTSC IPS-Level')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (8, 6, N'HD type (30fps@720p)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (8, 7, N'3 Cell 53.5WHr')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (8, 17, N'2.35 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (8, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (9, 1, N'Intel Core i5-12450H 2 GHz up to 4.4 GHz, 12MB Cache')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (9, 2, N'8GB DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (9, 3, N'512GB NVMe PCIe Gen3x4 SSD')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (9, 4, N'NVIDIA® GeForce RTX™ 3050 4GB GDDR6 Up to 1550MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (9, 5, N'15.6" FHD (1920x1080), 144Hz, IPS-Level')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (9, 6, N'HD type (30fps@720p)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (9, 7, N'3 cell, 53.5Whr')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (9, 17, N'2.1 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (9, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (10, 1, N'Intel Core i7-12700H 3.5GHz up to 4.7GHz 24MB, 12 nhân, 20 lu?ng')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (10, 2, N'16GB (2x8GB) DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (10, 3, N'1TB SSD M.2 PCIe NVMe Gen4 x4')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (10, 4, N'NVIDIA® GeForce RTX™ 3070Ti 8GB GDDR6 Up to 1585MHz Boost Clock')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (10, 5, N'HD Camera (30FPS 720P)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (10, 6, N'17.3 Inch FHD (1920x1080), 360Hz, ~100% sRGB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (10, 7, N'4 Cell 65WHrs')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (10, 17, N'2.9 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (10, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (11, 1, N'Intel Core i9-12900HX 3.6GHz~5.0GHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (11, 2, N'32GB (16GB x2) DDR5 4800MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (11, 3, N'1TB SSD PCIE G4X4 (2 slots)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (11, 4, N'NVIDIA® GeForce RTX™ 3070 Ti Laptop GPU 8GB GDDR6 Up to 1535MHz Boost Clock')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (11, 5, N'15.6" QHD (2560x1440), 240Hz, OLED, 100% DCI-P3')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (11, 6, N'FHD type (30fps@1080p)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (11, 7, N'4 Cell 99.9WHrs')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (11, 17, N'2.66 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (11, 18, N'Titanium Dark Gray')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (12, 1, N'Intel Core i5-11320H 3.2GHz up to 4.5GHz 8MB')
GO
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (12, 2, N'8GB (8x1) DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (12, 3, N'512GB SSD M.2 2280 PCIe 3.0x4 NVMe')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (12, 4, N'NVIDIA GeForce RTX 3050 4GB GDDR6, Boost Clock 1500 / 1740MHz, TGP 90W')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (12, 5, N'15.6" FHD (1920x1080) IPS 250nits Anti-glare, 120Hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (12, 6, N'HD 720p')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (12, 7, N'3 Cell 45WH')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (12, 17, N'2.25 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (12, 18, N'Shadow Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (13, 1, N'Intel Core i5-12500H, 12C (4P + 8E) / 16T, P-core 2.5 / 4.5GHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (13, 2, N'8GB (8x1) DDR5 4800MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (13, 3, N'512GB SSD M.2 2280 PCIe 4.0x4 NVMe')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (13, 4, N'NVIDIA GeForce RTX 3050 4GB GDDR6, Boost Clock 1740MHz, TGP 95W')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (13, 5, N'15.6" FHD (1920x1080) IPS 300nits Anti-glare, 165Hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (13, 6, N'FHD 1080p with E-camera Shutter')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (13, 7, N'4Cell, 80WHrs')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (13, 17, N'2.35 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (13, 18, N'Storm Grey')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (14, 1, N'AMD Ryzen 7 6800H (8C / 16T, 3.2 / 4.7GHz, 4MB L2 / 16MB L3)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (14, 2, N'16GB (2x8GB) DDR5 4800MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (14, 3, N'512GB SSD M.2 2280 PCIe 4.0x4 NVMe')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (14, 4, N'NVIDIA GeForce RTX 3060 6GB GDDR6, Boost Clock 1702MHz, TGP 140W')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (14, 5, N'16" WQXGA (2560x1600) IPS 500nits Anti-glare, 165Hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (14, 6, N'FHD 1080p with E-camera Shutter')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (14, 7, N'4Cell, 80WHrs')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (14, 17, N'2.49 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (14, 18, N'Glacier White')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (15, 1, N'Intel Core i7-12700H, 14C (6P + 8E) / 20T, P-core 2.3 / 4.7GHz, E-core 1.7 / 3.5GHz, 24MB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (15, 2, N'16GB (2x8GB) DDR5 4800MHz (2x SO-DIMM socket, up to 32GB SDRAM)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (15, 3, N'512GB SSD M.2 2280 PCIe 4.0x4 NVMe')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (15, 4, N'NVIDIA GeForce RTX 3070 Ti 8GB GDDR6, Boost Clock 1485MHz, TGP 150W')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (15, 5, N'16" WQXGA (2560x1600) IPS 500nits Anti-glare')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (15, 6, N'HD 720p with E-camera Shutter')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (15, 7, N'4Cell, 80WHrs')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (15, 17, N'2.49 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (15, 18, N'Glacier White Aluminium')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (16, 1, N'AMD Ryzen 5 5600H 3.3GHz up to 4.2GHz 16MB, 6 nhân, 12 lu?ng')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (16, 2, N'8GB (8x1) DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (16, 3, N'256GB SSD M.2 PCIe')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (16, 4, N'NVIDIA® GeForce RTX™ 3050 4GB GDDR6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (16, 5, N'15.6inch FHD (1920 x1080) 120Hz, 250 nits, WVA, Anti-Glare, LED Backlit')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (16, 6, N'HD camera (720p) ')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (16, 7, N'3 Cell 56WHrs')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (16, 17, N'2.8 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (16, 18, N'Phantom Grey')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (17, 1, N'AMD Ryzen 7 5800H 3.2GHz up to 4.4GHz 16MB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (17, 2, N'16GB (2x8GB) DDR4 3200hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (17, 3, N'512GB SSD M.2 PCIe (2 slots)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (17, 4, N'NVIDIA GeForce RTX 3060 6GB GDDR6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (17, 5, N'15.6 inch FHD (1920 x 1080) 165Hz, 100% sRGB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (17, 6, N'HD 720p')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (17, 7, N'6 Cell 86WHrs')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (17, 17, N'2.57 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (17, 18, N'Phantom Grey')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (18, 1, N'AMD Ryzen™ 9-5900HX (3.3GHz Up to 4.6GHz, 16MB)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (18, 2, N'16GB (2x8GB) DDR4 3200Mhz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (18, 3, N'1TB SSD M.2 PCIE')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (18, 4, N'NVIDIA® GeForce RTX 3070 8GB GDDR6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (18, 5, N'15.6" FHD (1920 x 1080) WVA, 165Hz, 3ms with ComfortView Plus, 100% sRGB, 300nits')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (18, 6, N'Alienware HD (1280x720 resolution) camera with dual-array microphones')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (18, 7, N'6 Cell 86WHr')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (18, 17, N'2.69 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (18, 18, N'Dark Side of The moon')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (19, 1, N'Intel Core i7-11800H (24MB Cache, up to 4.6 GHz, 8 cores)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (19, 2, N'16GB (2x8GB) DDR4 3200hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (19, 3, N'512GB SSD M.2 PCIe (2 slots)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (19, 4, N'NVIDIA GeForce RTX 3060 6GB GDDR6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (19, 5, N'15.6 inch FHD (1920 x 1080) 165Hz, 100% sRGB, 300 nits')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (19, 6, N'HD 720p')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (19, 7, N'6 Cell 86WHrs')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (19, 17, N'2.65 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (19, 18, N'Dark Shadow Grey')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (20, 1, N'AMD Ryzen 5 5600H')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (20, 2, N'8GB (2x4GB) DDR4 3200Mhz (2 khe, max 64GB RAM)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (20, 3, N'512GB SSD M.2 PCIE (2x M.2 SATA/NVMe)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (20, 4, N'NVIDIA® GeForce GTX™ 1650 Laptop GPU')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (20, 5, N'16.1" FHD (1920 x 1080) IPS, 144Hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (20, 6, N'HD 720p')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (20, 7, N'4 Cell 70WHr Li-ion polymer')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (20, 17, N'2.46 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (20, 18, N'Mica Silver')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (21, 1, N'Intel Core i7-11800H 2.3GHz up to 4.6GHz 24MB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (21, 2, N'8GB (4x2) DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (21, 3, N'512 GB PCIe NVMe TLC M.2 SSD')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (21, 4, N'NVIDIA GeForce RTX 3050Ti 4GB GDDR6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (21, 5, N'16.1 inch FHD (1920 x 1080), 144Hz, IPS')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (21, 6, N'HD 720p')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (21, 7, N'4 Cell 70WHr Li-ion polymer')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (21, 17, N'2.46 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (21, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (22, 1, N'Intel Core i7-11800H')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (22, 2, N'16GB (2x8GB) DDR4 3200Mhz (2 khe, max 64GB RAM)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (22, 3, N'512GB SSD M.2 PCIE + 32GB Intel Optane memory')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (22, 4, N'NVIDIA® GeForce RTX™ 3060 Laptop GPU + Intel® UHD Graphics')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (22, 5, N'16.1" FHD (1920 x 1080) IPS, 144Hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (22, 6, N'HD 720p')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (22, 7, N'4 Cell 70WHr Li-ion polymer')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (22, 17, N'2.46 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (22, 18, N'Performance Blue')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (23, 11, N'Có dây')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (23, 13, N'PC, PS4™, Nintendo Switch™, Xbox One™, VR')
GO
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (23, 14, N'20Hz - 20kHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (23, 15, N'Tách tiếng ồn lên tới 16dB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (23, 16, N'Over-ear')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (23, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (24, 11, N'USB type C')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (24, 13, N'PC, mobile, Xbox, PlayStation, Nintendo')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (24, 14, N'20 Hz ~ 20 KHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (24, 15, N'Tách ti?ng ?n lên t?i 16dB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (24, 16, N'In-Ear')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (24, 18, N'Black/ Purple/ White')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (25, 11, N'Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (25, 13, N'PC, mobile, Xbox, PlayStation, Nintendo')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (25, 14, N'20 Hz ~ 20 KHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (25, 15, N'Tách ti?ng ?n lên t?i 16dB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (25, 16, N'On-ear')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (25, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (26, 11, N'Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (26, 13, N'Windows 7 tr? lên / MacOS X 10.12 tr? lên / PlayStation 4')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (26, 14, N'20 Hz ~ 20 KHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (26, 15, N'Yes')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (26, 16, N'Over-ear')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (26, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (27, 11, N'Wireless - wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (27, 13, N'Windows 7 tr? lên / MacOS X 10.12 tr? lên / PlayStation 4')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (27, 14, N'20 Hz – 20000 Hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (27, 15, N'Yes')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (27, 16, N'Over-ear')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (27, 18, N'White')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (28, 11, N'Wireless - wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (28, 13, N'Windows 7 tr? lên / MacOS X 10.12 tr? lên / PlayStation 4')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (28, 14, N'20 Hz – 20000 Hz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (28, 15, N'Yes')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (28, 16, N'Over-ear')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (28, 18, N'Pink')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (29, 11, N'	USB-A')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (29, 13, N'Windows 7 tr? lên / MacOS X 10.12 tr? lên / PlayStation 4')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (29, 14, N'20 Hz – 20 kHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (29, 15, N'Passive noise cancellation')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (29, 16, N'Over-ear')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (29, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (53, 11, N'USB-A')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (53, 13, N'Windows 7 tr? lên / MacOS X 10.12 tr? lên / PlayStation 4')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (53, 14, N'10 Hz – 20 kHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (53, 15, N'Passive noise cancellation')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (53, 16, N'Over-ear')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (53, 18, N'White')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (54, 11, N'Bluetooth')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (54, 14, N'20 Hz – 20 kHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (54, 15, N'Yes')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (54, 16, N'In-ear')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (54, 18, N'Green')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (55, 11, N'Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (55, 13, N'PC/Mobile')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (55, 14, N'10 Hz – 24 kHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (55, 15, N'Yes')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (55, 16, N'Over-Ear')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (55, 18, N'Black/White')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (56, 1, N'Intel Core i3-1115G4 1.7GHz lên d?n 4.1GHz ')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (56, 2, N'8GB DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (56, 3, N'256GB PCIe NVMe™ M.2 SSD')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (56, 4, N'Ð? h?a Intel UHD ')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (56, 5, N'14 inch FHD (1920 x 1080) IPS-Level, 60Hz, 45% NTSC, vi?n m?ng')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (56, 6, N'HD type (30fps@720p)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (56, 7, N'3 Cell 39Whr')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (56, 17, N'1.3 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (56, 18, N'Carbon gray')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (57, 1, N'AMD Ryzen™ 5-5500U 2.1GHz upto 4.0GHz, 6 nhân, 12 lu?ng')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (57, 2, N'8GB (1x8GB) DDR4-3200Mhz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (57, 3, N'SSD 512GB NVMe PCIe Gen3x4')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (57, 4, N'AMD Radeon™ Graphics')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (57, 5, N'14 inch FHD (1920x1080), IPS-Level, 45% NTSC, Thin Bezel, 65% sRGB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (57, 6, N'HD type (30fps@720p)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (57, 7, N'3 Cell, 39Wh')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (57, 17, N'1.3 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (57, 18, N'Carbon Gray')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (58, 1, N'Intel® Core™ i5-1135G7')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (58, 2, N'8GB 4266MHz LPDDR4X')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (58, 3, N'512GB PCIe® NVMe™ 3.0 x2 M.2 SSD')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (58, 4, N'Intel® Iris® Xe Graphics')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (58, 5, N'13.3" FHD OLED (1920 x 1080), Glossy display, 550nits')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (58, 6, N'Camera IRHD webcam')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (58, 7, N'4-cell, 65WHrs')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (58, 17, N'1.14 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (58, 18, N'Carbon Gray')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (59, 1, N'AMD Ryzen 5-5500U 2.1GHz up to 4.0GHz 8MB, 6 nhân, 12 lu?ng')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (59, 2, N'8GB (8GBx1) DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (59, 3, N'512GB PCIe NVMe™ M.2 SSD (2 slot)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (59, 4, N'AMD Radeon Graphics')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (59, 5, N'15.6" FHD (1920 x 1080) 16:09')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (59, 6, N'HD Webcam 720p')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (59, 7, N'3 cells 65WHrs')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (59, 17, N'1.6 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (59, 18, N'Carbon Gray')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (60, 1, N'Intel Core i5-12500H Processor 2.5 GHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (60, 2, N'8GB (Onboard) DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (60, 3, N'512GB SSD M.2 NVMe™ PCIe® 3.0')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (60, 4, N'Intel Iris Xe Graphics (with dual channel memory)
Intel® UHD Graphics')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (60, 5, N'15.6" FHD (1920 x 1080) OLED 16:9 aspect ratio')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (60, 6, N'720p HD camera With privacy shutter')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (60, 7, N'70WHrs, 3S1P, 3-cell Li-ion')
GO
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (60, 17, N'1.70 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (60, 18, N'Transparent Silver')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (61, 1, N'Intel Core i5 11320H')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (61, 2, N'8GB DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (61, 3, N'512GB PCIe NVMe SSD')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (61, 4, N'Intel® Iris® Xe Graphics')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (61, 5, N'14.0-inch FHD (1920 x 1080) Anti-glare LED Backlight Non-Touch Narrow Border WVA')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (61, 6, N'HD')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (61, 7, N'4 cell 54Wh')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (61, 17, N'1.35Kg ')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (61, 18, N'Titan Grey')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (62, 1, N'Intel Core i3-1115G4 up to 4.10GHz 6MB 2 cores 4 threads')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (62, 2, N'8GB (1x8) DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (62, 3, N'256GB SSD M.2 PCI-E')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (62, 4, N'Intel UHD Graphics')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (62, 5, N'15.6'' HD (1366 x 768), 60Hz, Non-Touch, AG, TN')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (62, 6, N'HD Webcam')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (62, 7, N'3 Cell 41WHr')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (62, 17, N'1.79 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (62, 18, N'Carbon Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (63, 1, N'Intel Core i5-1235U 1.3GHz up to 4.4GHz 12MB')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (63, 2, N'8GB (4x2) DDR4 3200MHz')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (63, 3, N'256 GB PCIe NVMe M.2 SSD')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (63, 4, N'Intel Iris Xe Graphics')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (63, 5, N'14 inch FHD (1920 x 1080) IPS, micro-edge, BrightView, 250 nits, 45% NTSC')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (63, 6, N'HP Wide Vision 720p HD camera with temporal noise reduction')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (63, 7, N'3 Cell 43WHr')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (63, 17, N'1.41 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (63, 18, N'Natural Silver aluminum')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (65, 1, N'AMD Ryzen ™ 5 5500U')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (65, 2, N'8GB DDR4 3200MHz tích h?p')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (65, 3, N'512GB SSD M.2 PCIe + Empty HDD Bay')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (65, 4, N'AMD Radeon™ Graphics Vega')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (65, 5, N'15,6 "FHD (1920x1080) IPS 250nits ch?ng chói, 45% NTSC')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (65, 6, N'720p v?i ThinkShutter')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (65, 7, N'3cell 45WHr')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (65, 17, N'1.7 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (65, 18, N'Grey')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (66, 1, N'Intel Core i5-11300H (4C / 8T, 3.1 / 4.4GHz, 8MB)')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (66, 2, N'16GB LPDDR4x 4266MHz Onboard dual-channel')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (66, 3, N'512GB SSD M.2 2280 PCIe 3.0x4 NVMe')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (66, 4, N'Intel Iris Xe Graphics')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (66, 5, N'14 inch 2.8K (2880x1800) OLED 400nits Glossy, 90Hz, 100% DCI-P3')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (66, 6, N'IR & 720p + ToF Sensor')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (66, 7, N'3Cell 61Wh')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (66, 17, N'1.38 kg')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (66, 18, N'Light Silver')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (67, 8, N'4000')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (67, 9, N'5')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (67, 10, N'Lên đến 10 triệu lần nhấn')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (67, 11, N'
Công nghệ Bluetooth tiết kiệm năng lượng (5.1)

Phạm vi không dây: Phạm vi không dây 10 m')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (67, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (67, 13, N'Windows 10,11 trở lên

macOS 10.15 trở lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (67, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (68, 8, N'4000')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (68, 9, N'8')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (68, 10, N'Lên đến 10 triệu lần nhấn')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (68, 11, N'Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (68, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (68, 13, N'Windows 10,11 trở lên

macOS 10.15 trở lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (68, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (70, 8, N'200-8000')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (70, 9, N'7')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (70, 10, N'Lên đến 10 triệu lần nhấn')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (70, 11, N'Không dây 2.4GHz / Bluetooth')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (70, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (70, 13, N'Windows 10,11 trở lên

macOS 10.15 trở lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (70, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (71, 8, N'6400')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (71, 9, N'5')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (71, 10, N'Lên đến 10 triệu lần nhấn')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (71, 11, N'Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (71, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (71, 13, N'Windows 10,11 trở lên

macOS 10.15 trở lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (71, 18, N'White')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (72, 8, N'26000')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (72, 9, N'11')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (72, 10, N'70 triệu lần nhấp')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (72, 11, N'Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (72, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (72, 13, N'Windows 10,11 trở lên

macOS 10.15 trở lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (72, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (73, 8, N'30000')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (73, 9, N'5')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (73, 10, N'70 triệu lần nhấp')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (73, 11, N'Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (73, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (73, 13, N'Windows 10,11 trở lên

macOS 10.15 trở lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (73, 18, N'White')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (74, 8, N'20.000')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (74, 9, N'11')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (74, 10, N'70 million clicks')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (74, 11, N'Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (74, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (74, 13, N'Windows 10,11 tr? lên, macOS 10.15 tr? lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (74, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (75, 8, N'16.000')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (75, 9, N'6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (75, 10, N'60 million clicks')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (75, 11, N'Wired')
GO
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (75, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (75, 13, N'Windows 10,11 tr? lên, macOS 10.15 tr? lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (75, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (76, 8, N'7000')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (76, 9, N'7')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (76, 10, N'20 million clicks')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (76, 11, N'Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (76, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (76, 13, N'Windows 10,11 tr? lên, macOS 10.15 tr? lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (76, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (77, 8, N'16000')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (77, 9, N'7')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (77, 10, N'20 million clicks')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (77, 11, N'USB 2.0, Bluetooth')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (77, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (77, 13, N'Windows 10,11 tr? lên, macOS 10.15 tr? lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (77, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (78, 8, N'16000')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (78, 9, N'6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (78, 10, N'30 million clicks')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (78, 11, N'USB 2.0, Bluetooth')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (78, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (78, 13, N'Windows 10,11 tr? lên, macOS 10.15 tr? lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (78, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (79, 8, N'4200')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (79, 9, N'6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (79, 10, N'10 million clicks')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (79, 11, N'USB 2.0, Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (79, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (79, 13, N'Windows 10,11 tr? lên, macOS 10.15 tr? lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (79, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (80, 8, N'5000')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (80, 9, N'6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (80, 10, N'10 million clicks')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (80, 11, N'Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (80, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (80, 13, N'Windows 10,11 tr? lên, macOS 10.15 tr? lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (80, 18, N'Black')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (81, 8, N'6200')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (81, 9, N'6')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (81, 10, N'20 million clicks')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (81, 11, N'USB 2.0, Wired')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (81, 12, N'Plastic')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (81, 13, N'Windows 10,11 tr? lên, macOS 10.15 tr? lên')
INSERT [dbo].[ProSpec] ([ProID], [SpecID], [Detail]) VALUES (81, 18, N'Black')
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'admin')
INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Specification] ON 

INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (1, N'CPU')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (2, N'RAM')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (3, N'Storage Drive')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (4, N'Graphics Card')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (5, N'Monitor')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (6, N'Webcam')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (7, N'Battery')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (8, N'DPI')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (9, N'Number Of Buttons')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (10, N'Longevity')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (11, N'Connection')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (12, N'Shell Material')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (13, N'Compatible')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (14, N'Frequency')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (15, N'Soundproofing Ability')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (16, N'Headphone Style')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (17, N'Weight')
INSERT [dbo].[Specification] ([SpecID], [SpecName]) VALUES (18, N'Color')
SET IDENTITY_INSERT [dbo].[Specification] OFF
GO
INSERT [dbo].[Users] ([UserName], [FullName], [Password], [PhoneNumber], [RoleID], [Avatar], [Gender]) VALUES (N'dunghq', N'Hoang Quoc Dung', N'c4ca4238a0b923820dcc509a6f75849b', NULL, 1, N'https://cdn-icons-png.flaticon.com/512/1053/1053244.png?w=360', N'Male')
INSERT [dbo].[Users] ([UserName], [FullName], [Password], [PhoneNumber], [RoleID], [Avatar], [Gender]) VALUES (N'duy', N'duynguyen', N'c4ca4238a0b923820dcc509a6f75849b', N'12345    ', 2, N'https://cdn-icons-png.flaticon.com/512/1053/1053244.png?w=360', N'Male')
INSERT [dbo].[Users] ([UserName], [FullName], [Password], [PhoneNumber], [RoleID], [Avatar], [Gender]) VALUES (N'duynv', N'Nguyen Van Duy', N'c4ca4238a0b923820dcc509a6f75849b', N'975687429', 2, N'https://cdn-icons-png.flaticon.com/512/1053/1053244.png?w=360', N'Male')
INSERT [dbo].[Users] ([UserName], [FullName], [Password], [PhoneNumber], [RoleID], [Avatar], [Gender]) VALUES (N'le tung van', NULL, N'c4ca4238a0b923820dcc509a6f75849b', N'123456   ', 2, N'https://cdn-icons-png.flaticon.com/512/1053/1053244.png?w=360', N'Male')
INSERT [dbo].[Users] ([UserName], [FullName], [Password], [PhoneNumber], [RoleID], [Avatar], [Gender]) VALUES (N'nghia01694049627@gmail.com', N'nghia01694049627@gmail.com', NULL, NULL, 2, N'https://lh3.googleusercontent.com/a/default-user=s96-c', N'Male')
INSERT [dbo].[Users] ([UserName], [FullName], [Password], [PhoneNumber], [RoleID], [Avatar], [Gender]) VALUES (N'viethoang', N'Viet Hoang', N'c4ca4238a0b923820dcc509a6f75849b', N'335349368', 2, N'https://cdn-icons-png.flaticon.com/512/1053/1053244.png?w=360', N'Male')
GO
ALTER TABLE [dbo].[CateBrand] ADD  DEFAULT ('Repair or replace') FOR [TypeWarranty]
GO
ALTER TABLE [dbo].[CateBrand] ADD  DEFAULT ('7 - 21 days') FOR [IntendTime]
GO
ALTER TABLE [dbo].[CateBrand] ADD  DEFAULT ('There is service warranty at the company, you can contact the switchboard: 1900969601') FOR [Note]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [CurrentPrice]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((1)) FOR [GuaranteeID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [df_Role]  DEFAULT ((2)) FOR [RoleID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Avartar__3D5E1FD2]  DEFAULT ('https://cdn-icons-png.flaticon.com/512/1053/1053244.png?w=360') FOR [Avatar]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__Gender__3E52440B]  DEFAULT ('Male') FOR [Gender]
GO
ALTER TABLE [dbo].[CateBrand]  WITH CHECK ADD  CONSTRAINT [FK__CateBrand__Brand__534D60F1] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CateBrand] CHECK CONSTRAINT [FK__CateBrand__Brand__534D60F1]
GO
ALTER TABLE [dbo].[CateBrand]  WITH CHECK ADD  CONSTRAINT [FK__CateBrand__CateI__5441852A] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([CateID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CateBrand] CHECK CONSTRAINT [FK__CateBrand__CateI__5441852A]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD FOREIGN KEY([ImageTypeID])
REFERENCES [dbo].[ImageType] ([ImageTypeID])
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK__Images__ProID__4316F928] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ProID])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK__Images__ProID__4316F928]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__ProID__5812160E] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ProID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__ProID__5812160E]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__UserName__440B1D61] FOREIGN KEY([UserName])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__UserName__440B1D61]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__BrandID__3E52440B] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__BrandID__3E52440B]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__CateID__5BE2A6F2] FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([CateID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__CateID__5BE2A6F2]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Guarantee__12345679] FOREIGN KEY([GuaranteeID])
REFERENCES [dbo].[Guarantee] ([GuaranteeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Guarantee__12345679]
GO
ALTER TABLE [dbo].[ProSpec]  WITH CHECK ADD  CONSTRAINT [FK__ProSpec__ProID__4BAC3F29] FOREIGN KEY([ProID])
REFERENCES [dbo].[Product] ([ProID])
GO
ALTER TABLE [dbo].[ProSpec] CHECK CONSTRAINT [FK__ProSpec__ProID__4BAC3F29]
GO
ALTER TABLE [dbo].[ProSpec]  WITH CHECK ADD  CONSTRAINT [FK__ProSpec__SpecID__4CA06362] FOREIGN KEY([SpecID])
REFERENCES [dbo].[Specification] ([SpecID])
GO
ALTER TABLE [dbo].[ProSpec] CHECK CONSTRAINT [FK__ProSpec__SpecID__4CA06362]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK__Users__RoleID__47DBAE45] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK__Users__RoleID__47DBAE45]
GO
USE [master]
GO
ALTER DATABASE [F_Gear] SET  READ_WRITE 
GO
