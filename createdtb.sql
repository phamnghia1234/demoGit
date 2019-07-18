EDIT BY NGHIA
 EDIT 2 time
 
 USE [master]
GO
/****** Object:  Database [CSDL_QuanLyVeXe]    Script Date: 08/01/2019 10:00:07 CH ******/
CREATE DATABASE [CSDL_QuanLyVeXe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CSDL_QuanLyVeXe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.HIXX\MSSQL\DATA\CSDL_QuanLyVeXe.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CSDL_QuanLyVeXe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.HIXX\MSSQL\DATA\CSDL_QuanLyVeXe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSDL_QuanLyVeXe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET ARITHABORT OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET  MULTI_USER 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CSDL_QuanLyVeXe]
GO
/****** Object:  Table [dbo].[ChuyenXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChuyenXe](
	[MaChuyen] [varchar](10) NOT NULL,
	[GioKhoiHanh] [nvarchar](50) NOT NULL,
	[MaTuyen] [varchar](10) NOT NULL,
	[NgayKhoiHanh] [date] NOT NULL,
 CONSTRAINT [PK_ChuyenXe_1] PRIMARY KEY CLUSTERED 
(
	[MaChuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ghe](
	[MaGhe] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Ghe] PRIMARY KEY CLUSTERED 
(
	[MaGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ghe_Xe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ghe_Xe](
	[MaGheXe] [varchar](10) NOT NULL,
	[MaGhe] [varchar](10) NOT NULL,
	[MaXe] [varchar](10) NOT NULL,
	[NgayKhoiHanh] [date] NOT NULL,
	[GioKhoiHanh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ghe_Xe] PRIMARY KEY CLUSTERED 
(
	[MaGheXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Loai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiXe](
	[MaLoai] [varchar](10) NOT NULL,
	[SoGhe] [int] NOT NULL,
	[SoTang] [int] NOT NULL,
	[LoaiGhe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiXe] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TaiXe](
	[MaTaiXe] [varchar](10) NOT NULL,
	[BangLai] [nvarchar](50) NOT NULL,
	[TenTaiXe] [nvarchar](50) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TaiXe] PRIMARY KEY CLUSTERED 
(
	[MaTaiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TuyenXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TuyenXe](
	[MaTuyen] [varchar](10) NOT NULL,
	[TramBD] [varchar](10) NOT NULL,
	[TramKT] [varchar](10) NOT NULL,
	[TramDung1] [varchar](10) NULL,
	[TramDung2] [varchar](10) NULL,
	[QuangDuong] [int] NOT NULL,
	[ThoiGianChay] [int] NOT NULL,
	[GiaTien] [float] NOT NULL,
 CONSTRAINT [PK_TuyenXe] PRIMARY KEY CLUSTERED 
(
	[MaTuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TramDung]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TramDung](
	[MaTram] [varchar](10) NOT NULL,
	[TenTram] [nvarchar](50) NOT NULL,
	[DiaDiem] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TramDung] PRIMARY KEY CLUSTERED 
(
	[MaTram] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VeXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VeXe](
	[MaVe] [varchar](10) NOT NULL,
	[MaKhachHang] [varchar](10) NOT NULL,
	[MaXe] [varchar](10) NOT NULL,
	[MaGheXe] [varchar](10) NOT NULL,
	[GiaTien] [float] NOT NULL,
	[TinhTrangThanhToan] [nvarchar](50) NOT NULL,
	[NgayXuatVe] [date] NULL,
	[GhiChu] [ntext] NULL,
	[MaTuyen] [varchar](10) NOT NULL,
 CONSTRAINT [PK_VeXe] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Xe](
	[MaXe] [varchar](10) NOT NULL,
	[MaLoai] [varchar](10) NOT NULL,
	[MaChuyen] [varchar](10) NULL,
	[MaTaiXe] [varchar](10) NULL,
	[BangSoXe] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Xe_1] PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenXe_TuyenXe] FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[TuyenXe] ([MaTuyen])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [FK_ChuyenXe_TuyenXe]
GO
ALTER TABLE [dbo].[Ghe_Xe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Xe_Ghe] FOREIGN KEY([MaGhe])
REFERENCES [dbo].[Ghe] ([MaGhe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ghe_Xe] CHECK CONSTRAINT [FK_Ghe_Xe_Ghe]
GO
ALTER TABLE [dbo].[Ghe_Xe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_Xe_Xe] FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ghe_Xe] CHECK CONSTRAINT [FK_Ghe_Xe_Xe]
GO
ALTER TABLE [dbo].[TuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_TuyenXe_TramDung] FOREIGN KEY([TramBD])
REFERENCES [dbo].[TramDung] ([MaTram])
GO
ALTER TABLE [dbo].[TuyenXe] CHECK CONSTRAINT [FK_TuyenXe_TramDung]
GO
ALTER TABLE [dbo].[TuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_TuyenXe_TramDung1] FOREIGN KEY([TramKT])
REFERENCES [dbo].[TramDung] ([MaTram])
GO
ALTER TABLE [dbo].[TuyenXe] CHECK CONSTRAINT [FK_TuyenXe_TramDung1]
GO
ALTER TABLE [dbo].[TuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_TuyenXe_TramDung2] FOREIGN KEY([TramDung1])
REFERENCES [dbo].[TramDung] ([MaTram])
GO
ALTER TABLE [dbo].[TuyenXe] CHECK CONSTRAINT [FK_TuyenXe_TramDung2]
GO
ALTER TABLE [dbo].[TuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_TuyenXe_TramDung3] FOREIGN KEY([TramDung2])
REFERENCES [dbo].[TramDung] ([MaTram])
GO
ALTER TABLE [dbo].[TuyenXe] CHECK CONSTRAINT [FK_TuyenXe_TramDung3]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_Ghe_Xe] FOREIGN KEY([MaGheXe])
REFERENCES [dbo].[Ghe_Xe] ([MaGheXe])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_Ghe_Xe]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_KhachHang]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_TuyenXe] FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[TuyenXe] ([MaTuyen])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_TuyenXe]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_Xe] FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_Xe]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [FK_Xe_ChuyenXe] FOREIGN KEY([MaChuyen])
REFERENCES [dbo].[ChuyenXe] ([MaChuyen])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [FK_Xe_ChuyenXe]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [FK_Xe_LoaiXe] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiXe] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [FK_Xe_LoaiXe]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [FK_Xe_TaiXe] FOREIGN KEY([MaTaiXe])
REFERENCES [dbo].[TaiXe] ([MaTaiXe])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [FK_Xe_TaiXe]
GO
/****** Object:  StoredProcedure [dbo].[BCChuyenXeThang]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[BCChuyenXeThang] @ThangNhap date
as
	select MaChuyen, GioKhoiHanh, MaTuyen, NgayKhoiHanh
	from ChuyenXe
	where month(NgayKhoiHanh) = month(@ThangNhap) and year(NgayKhoiHanh) = year(@ThangNhap)

GO
/****** Object:  StoredProcedure [dbo].[sp_AllMaChuyen]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_AllMaChuyen]
as
	select MaChuyen from ChuyenXe

GO
/****** Object:  StoredProcedure [dbo].[sp_AllMaLoai]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_AllMaLoai]
as
	select MaLoai from LoaiXe

GO
/****** Object:  StoredProcedure [dbo].[sp_AllMaTaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_AllMaTaiXe]
as
	select MaTaiXe from TaiXe

GO
/****** Object:  StoredProcedure [dbo].[sp_AllMaTram]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_AllMaTram]
as
	select MaTram from TramDung

GO
/****** Object:  StoredProcedure [dbo].[sp_AllMaXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_AllMaXe]
as
	select MaXe from Xe

GO
/****** Object:  StoredProcedure [dbo].[sp_AllTenTram]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_AllTenTram]
as
	select TenTram from TramDung

GO
/****** Object:  StoredProcedure [dbo].[sp_AuToHuyVe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_AuToHuyVe]
as
	declare @phut1 int
	declare @phut2 int
	select @phut1 = DATEPART(minute,GioKhoiHanh)
					from ChuyenXe
	select @phut2 = DATEPART(minute,GETDATE())
	update VeXe
	set TinhTrangThanhToan = N'Hủy'
	from Xe x, ChuyenXe cx, VeXe vx
	where vx.MaXe = x.MaXe 
	and x.MaChuyen = cx.MaChuyen 
	and vx.TinhTrangThanhToan = N'Chưa hoàn tất' 
	and YEAR(NgayKhoiHanh) = YEAR(GETDATE()) 
	and MONTH(NgayKhoiHanh) = MONTH(GETDATE()) 
	and DAY(NgayKhoiHanh) = DAY(GETDATE()) 
	and DATEPART(HOUR,GioKhoiHanh) = DATEPART(HOUR,GETDATE()) 
	and @phut1 - @phut2 < 15

GO
/****** Object:  StoredProcedure [dbo].[sp_BCChuyenXeThang]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_BCChuyenXeThang] @ThangNhap date, @MaTuyen varchar(10)
as
	select cx.MaChuyen, cx.GioKhoiHanh, cx.MaTuyen, cx.NgayKhoiHanh
	from ChuyenXe cx
	where cx.MaTuyen = @MaTuyen
	 and year(cx.NgayKhoiHanh) = year(@ThangNhap)
	 and month(cx.NgayKhoiHanh) = month(@ThangNhap)

GO
/****** Object:  StoredProcedure [dbo].[sp_BookVeXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_BookVeXe] @MaVe varchar(10),@MaTuyen varchar(10), @MaKhachHang varchar(10),@MaXe varchar(10) ,@MaGheXe varchar(10),@GiaTien float,@TinhTrangThanhToan nvarchar(50),@GhiChu ntext
as
	insert into VeXe(MaVe,MaTuyen, MaKhachHang,MaXe, MaGheXe, GiaTien, TinhTrangThanhToan, NgayXuatVe, GhiChu) values(@MaVe,@MaTuyen,@MaKhachHang,@MaXe,@MaGheXe,@GiaTien,@TinhTrangThanhToan,NULL,@GhiChu)

GO
/****** Object:  StoredProcedure [dbo].[sp_cbMaTuyenfrmChuyenXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_cbMaTuyenfrmChuyenXe] 
as
	select td1.TenTram +' - '+ td2.TenTram as N'TenTuyen'
	from TuyenXe tx, TramDung td1, TramDung td2
	where  tx.TramBD = td1.MaTram
	and tx.TramKT = td2.MaTram

GO
/****** Object:  StoredProcedure [dbo].[sp_ChonGhe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ChonGhe] @MaXe varchar(10), @NgayKhoiHanh date, @GioKhoiHanh nvarchar(50)
as
	select MaGhe
	from Ghe_Xe
	where MaXe = @MaXe
	and NgayKhoiHanh = @NgayKhoiHanh
	and GioKhoiHanh = @GioKhoiHanh

GO
/****** Object:  StoredProcedure [dbo].[sp_GioKhoiHanhTheoChuyen]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*19. viết proc lấy ra Giờ khởi hành từ tên trạm và ngày khởi hành */
CREATE proc [dbo].[sp_GioKhoiHanhTheoChuyen] @TenTramBD nvarchar(50), @TenTramKT nvarchar(50), @NgayKhoiHanh date
as
	declare @MaTramBD varchar(10)
	select @MaTramBD = MaTram from TramDung where TenTram like N'%' + @TenTramBD + '%'
	declare @TramBD varchar(10)
	select @TramBD = TramBD from TuyenXe where TramBD = @MaTramBD 

	declare @MaTramKT varchar(10)
	select @MaTramKT = MaTram from TramDung where TenTram like N'%' + @TenTramKT + '%'
	declare @TramKT varchar(10)
	select @TramKT = TramKT from TuyenXe where TramKT = @MaTramKT
	declare @MaTuyen varchar(10)
	select @MaTuyen = MaTuyen from TuyenXe tx where tx.TramBD like N'%' + @TramBD + '%' and tx.TramKT like N'%' + @TramKT + '%'

	select c.GioKhoiHanh
	from ChuyenXe c, TuyenXe tx
	where c.MaTuyen = tx.MaTuyen 
	and tx.TramBD like N'%' + @TramBD + '%' 
	and tx.TramKT like N'%' + @TramKT + '%'
	and c.NgayKhoiHanh like @NgayKhoiHanh

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadChuyenXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_LoadChuyenXe]
as
	select cx.MaChuyen,cx.GioKhoiHanh,cx.NgayKhoiHanh ,cx.MaTuyen,  td1.TenTram as N'NoiDi' , td2.TenTram as N'NoiDen'
	from ChuyenXe cx,TuyenXe tx,TramDung td1, TramDung td2
	where tx.MaTuyen = cx.MaTuyen
	and tx.TramBD = td1.MaTram
	and tx.TramKT = td2.MaTram


GO
/****** Object:  StoredProcedure [dbo].[sp_LoadChuyenXeTheoTuyen]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_LoadChuyenXeTheoTuyen] @NoiDi nvarchar(50),@NoiDen nvarchar(50)
as
	declare @MaDi varchar(10) 
	declare @MaDen varchar(10) 
	select @MaDi = td1.MaTram, @MaDen = td2.MaTram
	from TramDung td1, TramDung td2
	where td1.TenTram = @NoiDi
	and td2.TenTram = @NoiDen
	
	declare @MaTuyen varchar(10)
	select @MaTuyen = MaTuyen
	from TuyenXe
	where TramBD =@MaDi
	and TramKT = @MaDen

	select cx.MaChuyen,cx.GioKhoiHanh,cx.NgayKhoiHanh ,cx.MaTuyen,  td1.TenTram as N'NoiDi' , td2.TenTram as N'NoiDen'
	from ChuyenXe cx,TuyenXe tx,TramDung td1, TramDung td2
	where cx.MaTuyen = @MaTuyen
	and tx.MaTuyen = cx.MaTuyen
	and tx.TramBD = td1.MaTram
	and tx.TramKT = td2.MaTram

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadDatVe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_LoadDatVe] @TenTramBD nvarchar(50), @TenTramKT nvarchar(50), @NgayKhoiHanh date
as
	declare @MaTramBD varchar(10)
	select @MaTramBD = MaTram from TramDung where TenTram like N'%' + @TenTramBD + '%'
	declare @TramBD varchar(10)
	select @TramBD = TramBD from TuyenXe where TramBD = @MaTramBD 

	declare @MaTramKT varchar(10)
	select @MaTramKT = MaTram from TramDung where TenTram like N'%' + @TenTramKT + '%'
	declare @TramKT varchar(10)
	select @TramKT = TramKT from TuyenXe where TramKT = @MaTramKT
	declare @MaTuyen varchar(10)
	select @MaTuyen = MaTuyen from TuyenXe tx where tx.TramBD like N'%' + @TramBD + '%' and tx.TramKT like N'%' + @TramKT + '%'

	select x.BangSoXe, c.NgayKhoiHanh, c.GioKhoiHanh , lx.SoGhe ,lx.LoaiGhe, lx.SoTang, @TenTramBD as N'NoiDi',@TenTramKT as N'NoiDen', c.MaChuyen,tx.MaTuyen,x.MaXe,tx.GiaTien
	from ChuyenXe c, TuyenXe tx, Xe x, LoaiXe lx
	where c.MaTuyen = tx.MaTuyen 
	and tx.TramBD like N'%' + @TramBD + '%' 
	and tx.TramKT like N'%' + @TramKT + '%'
	and c.MaChuyen = x.MaChuyen
	and x.MaLoai = lx.MaLoai
	and c.NgayKhoiHanh = @NgayKhoiHanh

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadDatVeTheoGio]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_LoadDatVeTheoGio] @TenTramBD nvarchar(50), @TenTramKT nvarchar(50), @NgayKhoiHanh date, @GioKhoiHanh nvarchar(50)
as
	if(@GioKhoiHanh like N'Tất cả')
	begin
		exec sp_LoadDatVe @TenTramBD,@TenTramKT,@NgayKhoiHanh
	end
	else
	begin
		declare @MaTramBD varchar(10)
		select @MaTramBD = MaTram from TramDung where TenTram like N'%' + @TenTramBD + '%'
		declare @TramBD varchar(10)
		select @TramBD = TramBD from TuyenXe where TramBD = @MaTramBD 

		declare @MaTramKT varchar(10)
		select @MaTramKT = MaTram from TramDung where TenTram like N'%' + @TenTramKT + '%'
		declare @TramKT varchar(10)
		select @TramKT = TramKT from TuyenXe where TramKT = @MaTramKT
		declare @MaTuyen varchar(10)
		select @MaTuyen = MaTuyen from TuyenXe tx where tx.TramBD like N'%' + @TramBD + '%' and tx.TramKT like N'%' + @TramKT + '%'

		select x.BangSoXe, c.NgayKhoiHanh, c.GioKhoiHanh , lx.SoGhe ,lx.LoaiGhe, lx.SoTang, @TenTramBD as N'NoiDi',@TenTramKT as N'NoiDen', c.MaChuyen, tx.MaTuyen,x.MaXe, tx.GiaTien
		from ChuyenXe c, TuyenXe tx, Xe x, LoaiXe lx
		where c.MaTuyen = tx.MaTuyen 
		and tx.TramBD like N'%' + @TramBD + '%' 
		and tx.TramKT like N'%' + @TramKT + '%'
		and c.MaChuyen = x.MaChuyen
		and x.MaLoai = lx.MaLoai
		and c.NgayKhoiHanh like @NgayKhoiHanh
		and c.GioKhoiHanh like @GioKhoiHanh
	end

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadGhe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadGhe]
as 
	select * from Ghe

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadKhachHang]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadKhachHang]
as
	select * from KhachHang

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadLoaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadLoaiXe]
as
	select * from LoaiXe

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadTaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadTaiXe]
as
	select * from TaiXe

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadTuyenXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_LoadTuyenXe]
as
	select tx.MaTuyen,td1.TenTram as N'TenBD',td2.TenTram as N'TenKT',td3.TenTram as N'TenD1',td4.TenTram as N'TenD2',tx.ThoiGianChay,tx.GiaTien,tx.QuangDuong, tx.TramBD,tx.TramKT,tx.TramDung1,tx.TramDung2
	from TuyenXe tx, TramDung td1, TramDung td2, TramDung td3, TramDung td4
	where tx.TramBD = td1.MaTram
	and tx.TramkT = td2.MaTram
	and tx.TramDung1 = td3.MaTram
	and tx.TramDung2 = td4.MaTram

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadTramDung]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadTramDung]
as
	select * from TramDung

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadVeXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_LoadVeXe]
as
	select vx.MaVe, kh.HoTen,kh.SDT,vx.MaKhachHang,x.BangSoXe,x.MaXe, gx.MaGhe,gx.MaGheXe,vx.GiaTien,vx.TinhTrangThanhToan,vx.NgayXuatVe,vx.GhiChu,vx.MaTuyen, td1.TenTram as N'NoiDi',td2.TenTram as 'NoiDen',gx.GioKhoiHanh,gx.NgayKhoiHanh
	from VeXe vx, KhachHang kh, Xe x,Ghe_Xe gx,TuyenXe tx, TramDung td1, TramDung td2
	where vx.MaKhachHang = kh.MaKhachHang
	and vx.MaXe = x.MaXe
	and vx.MaGheXe = gx.MaGheXe
	and vx.MaTuyen = tx.MaTuyen
	and tx.TramBD = td1.MaTram
	and tx.TramKT = td2.MaTram

GO
/****** Object:  StoredProcedure [dbo].[sp_LoadXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadXe]
as
	select * from Xe

GO
/****** Object:  StoredProcedure [dbo].[sp_MaGheFromMaXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_MaGheFromMaXe] @MaXe varchar(50)
as
	select MaGhe from Ghe where MaXe like '%' + @MaXe + '%'

GO
/****** Object:  StoredProcedure [dbo].[sp_MaKhachHang]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_MaKhachHang] @HoTen nvarchar(50), @SDT varchar(50)
as
	select MaKhachHang
	from KhachHang
	where HoTen like @HoTen
	and SDT = SDT

GO
/****** Object:  StoredProcedure [dbo].[sp_MaTuyen]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_MaTuyen]
as
	select MaTuyen from TuyenXe

GO
/****** Object:  StoredProcedure [dbo].[sp_MaTuyenTram]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_MaTuyenTram] @TramBD varchar(10), @TramKT varchar(10)
as
	select MaTuyen from TuyenXe where TramBD like N'%' + @TramBD + '%' and TramKT like N'%' + @TramKT + '%'

GO
/****** Object:  StoredProcedure [dbo].[sp_MaTramFromTenTram]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_MaTramFromTenTram] @TenTram nvarchar(50)
as
	select MaTram from TramDung where TenTram like N'%' + @TenTram + '%'

GO
/****** Object:  StoredProcedure [dbo].[sp_MuaVeXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_MuaVeXe] @MaVe varchar(10),@MaTuyen varchar(10), @MaKhachHang varchar(10),@MaXe varchar(10) ,@MaGheXe varchar(10),@GiaTien float,@TinhTrangThanhToan nvarchar(50),@NgayXuatVe date,@GhiChu ntext
as
	insert into VeXe(MaVe,MaTuyen, MaKhachHang,MaXe, MaGheXe, GiaTien, TinhTrangThanhToan, NgayXuatVe, GhiChu) values(@MaVe,@MaTuyen,@MaKhachHang,@MaXe,@MaGheXe,@GiaTien,@TinhTrangThanhToan,@NgayXuatVe,@GhiChu)

GO
/****** Object:  StoredProcedure [dbo].[sp_NewChuyenXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewChuyenXe]
as
	SELECT TOP(1)MaChuyen FROM ChuyenXe ORDER BY MaChuyen DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_NewGhe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewGhe]
as
	SELECT TOP(1)MaGhe FROM Ghe ORDER BY MaGhe DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_NewGhe_Xe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewGhe_Xe]
as
	SELECT TOP(1)MaGheXe FROM Ghe_Xe ORDER BY MaGheXe DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_NewKhachHang]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewKhachHang]
as
	SELECT TOP(1)MaKhachHang FROM KhachHang ORDER BY MaKhachHang DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_NewLoaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewLoaiXe]
as
	SELECT TOP(1)MaLoai FROM LoaiXe ORDER BY MaLoai DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_NewTaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewTaiXe]
as
	SELECT TOP(1)MaTaiXe FROM TaiXe ORDER BY MaTaiXe DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_NewTuyenXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewTuyenXe]
as
	SELECT TOP(1)MaTuyen FROM TuyenXe ORDER BY MaTuyen DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_NewTramDung]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewTramDung]
as
	SELECT TOP(1)MaTram FROM TramDung ORDER BY MaTram DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_NewVeXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_NewVeXe]
as
	SELECT TOP(1)MaVe FROM VeXe ORDER BY MaVe DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_NewXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewXe]
as
	SELECT TOP(1)MaXe FROM Xe ORDER BY MaXe DESC

GO
/****** Object:  StoredProcedure [dbo].[sp_SearchKhachHang]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SearchKhachHang] @HoTen nvarchar(50)
as
	select * from KhachHang where HoTen like N'%' + @HoTen +'%'

GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SearchTaiXe] @TenTaiXe nvarchar(50)
as
	select * from TaiXe where TenTaiXe like N'%' + @TenTaiXe +'%'

GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTramDung]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SearchTramDung] @TenTram nvarchar(50)
as
	select * from TramDung where TenTram like N'%' + @TenTram +'%'

GO
/****** Object:  StoredProcedure [dbo].[sp_SearchVeXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SearchVeXe] @HoTen nvarchar(50)
as
	select vx.MaVe, kh.HoTen,kh.SDT,vx.MaKhachHang,x.BangSoXe,x.MaXe, gx.MaGhe,gx.MaGheXe,vx.GiaTien,vx.TinhTrangThanhToan,vx.NgayXuatVe,vx.GhiChu,vx.MaTuyen, td1.TenTram as N'NoiDi',td2.TenTram as 'NoiDen',gx.GioKhoiHanh,gx.NgayKhoiHanh
	from VeXe vx, KhachHang kh, Xe x,Ghe_Xe gx,TuyenXe tx, TramDung td1, TramDung td2
	where vx.MaKhachHang = kh.MaKhachHang
	and vx.MaXe = x.MaXe
	and vx.MaGheXe = gx.MaGheXe
	and vx.MaTuyen = tx.MaTuyen
	and tx.TramBD = td1.MaTram
	and tx.TramKT = td2.MaTram
	and kh.HoTen LIKE N'%'+@HoTen+'%'

GO
/****** Object:  StoredProcedure [dbo].[sp_SearchXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SearchXe] @BangSoXe varchar(50)
as
	select * from Xe where BangSoXe like N'%' + @BangSoXe +'%'

GO
/****** Object:  StoredProcedure [dbo].[sp_SuaChuyenXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SuaChuyenXe] @MaChuyen varchar(10), @GioKhoiHanh nvarchar(50), @MaTuyen varchar(10),@NgayKhoiHanh date
as
	update ChuyenXe
	set GioKhoiHanh = @GioKhoiHanh, MaTuyen = @MaTuyen, NgayKhoiHanh = @NgayKhoiHanh
	where MaChuyen = @MaChuyen

GO
/****** Object:  StoredProcedure [dbo].[sp_SuaGhe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SuaGhe] @MaGhe varchar(50), @Tang int, @Cot int, @Dong int, @MaXe varchar(50)
as
	update Ghe
	set Tang = @Tang, Cot = @Cot, Dong = @Dong, MaXe = @MaXe
	where MaGhe = @MaGhe

GO
/****** Object:  StoredProcedure [dbo].[sp_SuaKhachHang]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SuaKhachHang] @MaKhachHang varchar(10), @HoTen nvarchar(50), @SDT varchar(50), @Email nvarchar(50), @Loai nvarchar(50)
as
	update KhachHang
	set HoTen = @HoTen, SDT = @SDT, Email = @Email, Loai = @Loai
	where MaKhachHang = @MaKhachHang

GO
/****** Object:  StoredProcedure [dbo].[sp_SuaLoaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SuaLoaiXe] @MaLoai varchar(10), @SoGhe int, @SoTang int, @LoaiGhe nvarchar(50)
as
	update LoaiXe
	set SoGhe = @SoGhe, SoTang = @SoTang, LoaiGhe = @LoaiGhe
	where MaLoai = @MaLoai

GO
/****** Object:  StoredProcedure [dbo].[sp_SuaTaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SuaTaiXe] @MaTaiXe varchar(10), @BangLai nvarchar(50), @TenTaiXe nvarchar(50), @SDT varchar(50)
as
	update TaiXe
	set BangLai = @BangLai, TenTaiXe = @TenTaiXe, SDT = @SDT
	where MaTaiXe = @MaTaiXe

GO
/****** Object:  StoredProcedure [dbo].[sp_SuaTuyenXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SuaTuyenXe] @MaTuyen varchar(10), @TramBD varchar(10), @TramKT varchar(10), @TramDung1 varchar(10), @TramDung2 varchar(10), @QuangDuong int, @ThoiGianChay int, @GiaTien float
as
	update TuyenXe
	set TramBD = @TramBD, TramKT = @TramKT, TramDung1 = @TramDung1, TramDung2 = @TramDung2, QuangDuong = @QuangDuong, ThoiGianChay = @ThoiGianChay, GiaTien = @GiaTien
	where MaTuyen = @MaTuyen

GO
/****** Object:  StoredProcedure [dbo].[sp_SuaTramDung]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SuaTramDung] @MaTram varchar(10), @TenTram nvarchar(50), @DiaDiem nvarchar(50)
as
	update TramDung
	set TenTram = @TenTram, DiaDiem = @DiaDiem
	where MaTram = @MaTram

GO
/****** Object:  StoredProcedure [dbo].[sp_SuaVeXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SuaVeXe] @MaVe varchar(10), @MaGheXe varchar(10), @MaKhachHang varchar(10),@MaXe varchar(10),@MaTuyen varchar(10), @GiaTien float, @TinhTrangThanhToan nvarchar(50), @NgayXuatVe date, @GhiChu ntext
as
	update VeXe
	set MaKhachHang = @MaKhachHang, MaGheXe = @MaGheXe ,MaXe=@MaXe,MaTuyen=@MaTuyen, GiaTien = @GiaTien, TinhTrangThanhToan = @TinhTrangThanhToan, NgayXuatVe = @NgayXuatVe, GhiChu = @GhiChu
	where MaVe = @MaVe

GO
/****** Object:  StoredProcedure [dbo].[sp_SuaXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SuaXe] @MaXe varchar(50), @MaLoai varchar(10), @MaChuyen varchar(10), @MaTaiXe varchar(10), @BangSoXe varchar(50)
as
	update Xe
	set MaLoai = @MaLoai, MaChuyen = @MaChuyen, MaTaiXe = @MaTaiXe, BangSoXe = @BangSoXe
	where MaXe = @MaXe

GO
/****** Object:  StoredProcedure [dbo].[sp_TenTuyen]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TenTuyen] @MaTuyen varchar(10)
as
	select td1.TenTram as N'NoiDi' , td2.TenTram as N'NoiDen'
	from TuyenXe tx, TramDung td1, TramDung td2
	where tx.MaTuyen = @MaTuyen
	and tx.TramBD = td1.MaTram
	and tx.TramKT = td2.MaTram

GO
/****** Object:  StoredProcedure [dbo].[sp_TenTram]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TenTram]
as
	select TenTram from TramDung

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemChuyenXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThemChuyenXe] @MaChuyen varchar(10), @GioKhoiHanh nvarchar(50), @MaTuyen varchar(10),@NgayKhoiHanh date
as
	insert into ChuyenXe(MaChuyen, GioKhoiHanh, MaTuyen, NgayKhoiHanh) values(@MaChuyen,@GioKhoiHanh,@MaTuyen, @NgayKhoiHanh)

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemGhe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemGhe] @MaGhe varchar(50), @Tang int, @Cot int, @Dong int, @MaXe varchar(10)
as
	insert into Ghe(MaGhe, Tang, Cot, Dong, MaXe) values(@MaGhe,@Tang,@Cot,@Dong,@MaXe)

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemGhe_Xe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemGhe_Xe] @MaGheXe varchar(10), @MaGhe varchar(10), @MaXe varchar(10), @NgayKhoiHanh date,@GioKhoiHanh nvarchar(50)
as
	insert into Ghe_Xe(MaGheXe,MaGhe,MaXe,NgayKhoiHanh, GioKhoiHanh) values(@MaGheXe,@MaGhe,@MaXe,@NgayKhoiHanh,@GioKhoiHanh)

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemKhachHang]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemKhachHang] @MaKhachHang varchar(10), @HoTen nvarchar(50), @SDT varchar(50), @Email nvarchar(50), @Loai nvarchar(50)
as
	insert into KhachHang(MaKhachHang, HoTen, SDT, Email, Loai) values(@MaKhachHang,@HoTen,@SDT,@Email,@Loai)

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemLoaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemLoaiXe] @MaLoai varchar(10), @SoGhe int, @SoTang int,@LoaiGhe nvarchar(50)
as
	insert into LoaiXe(MaLoai, SoGhe, SoTang, LoaiGhe) values(@MaLoai,@SoGhe,@SoTang,@LoaiGhe)

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTaiXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemTaiXe] @MaTaiXe varchar(10), @BangLai nvarchar(50), @TenTaiXe nvarchar(50),@SDT varchar(50)
as
	insert into TaiXe(MaTaiXe, BangLai, TenTaiXe, SDT) values(@MaTaiXe,@BangLai,@TenTaiXe,@SDT)

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTuyenXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThemTuyenXe] @MaTuyen varchar(10), @TramBD varchar(10), @TramKT varchar(10),@TramDung1 varchar(10),@TramDung2 varchar(10), @QuangDuong int, @ThoiGianChay int, @GiaTien float
as
	insert into TuyenXe(MaTuyen, TramBD, TramKT, TramDung1, TramDung2, QuangDuong, ThoiGianChay, GiaTien) values(@MaTuyen,@TramBD,@TramKT,@TramDung1,@TramDung2,@QuangDuong, @ThoiGianChay, @GiaTien)

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTramDung]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemTramDung] @MaTram varchar(10), @TenTram nvarchar(50), @DiaDiem nvarchar(50)
as
	insert into TramDung(MaTram, TenTram, DiaDiem) values(@MaTram,@TenTram,@DiaDiem)

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemVeXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThemVeXe] @MaVe varchar(10),@MaTuyen varchar(10), @MaKhachHang varchar(10),@MaXe varchar(10) ,@MaGheXe varchar(10),@GiaTien float,@TinhTrangThanhToan nvarchar(50), @NgayXuatVe date,@GhiChu ntext
as
	insert into VeXe(MaVe,MaTuyen, MaKhachHang,MaXe, MaGheXe, GiaTien, TinhTrangThanhToan, NgayXuatVe, GhiChu) values(@MaVe,@MaTuyen,@MaKhachHang,@MaXe,@MaGheXe,@GiaTien,@TinhTrangThanhToan,@NgayXuatVe,@GhiChu)

GO
/****** Object:  StoredProcedure [dbo].[sp_ThemXe]    Script Date: 08/01/2019 10:00:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemXe] @MaXe varchar(50), @MaLoai varchar(10), @MaChuyen varchar(10),@MaTaiXe varchar(10),@BangSoXe varchar(50)
as
	insert into Xe(MaXe, MaLoai, MaChuyen, MaTaiXe, BangSoXe) values(@MaXe,@MaLoai,@MaChuyen,@MaTaiXe,@BangSoXe)

GO
USE [master]
GO
ALTER DATABASE [CSDL_QuanLyVeXe] SET  READ_WRITE 
GO
