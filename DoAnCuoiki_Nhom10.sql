/* NOTE: phân vị trí ra, câu 1 để 1 khúc, câu 2 để 1 khúc, câu 3 để 1 khúc
1.viết proc load toàn bộ dữ liệu từng bảng, đặt tên: sp_Load<Table>, vd sp_LoadTaiXe, sp_LoadXe*/
/****** Object:  StoredProcedure [dbo].[sp_LoadChuyenXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[sp_LoadChuyenXe]
as
	select cx.MaChuyen,cx.GioKhoiHanh,cx.NgayKhoiHanh ,cx.MaTuyen,  td1.TenTram as N'NoiDi' , td2.TenTram as N'NoiDen'
	from ChuyenXe cx,TuyenXe tx,TramDung td1, TramDung td2
	where tx.MaTuyen = cx.MaTuyen
	and tx.TramBD = td1.MaTram
	and tx.TramKT = td2.MaTram
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadGhe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadGhe]
as 
	select * from Ghe
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadKhachHang]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadKhachHang]
as
	select * from KhachHang
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadLoaiXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadLoaiXe]
as
	select * from LoaiXe
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadTaiXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadTaiXe]
as
	select * from TaiXe
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadTramDung]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadTramDung]
as
	select * from TramDung
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadTuyenXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[sp_LoadTuyenXe]
as
	select tx.MaTuyen,td1.TenTram as N'TenBD',td2.TenTram as N'TenKT',td3.TenTram as N'TenD1',td4.TenTram as N'TenD2',tx.ThoiGianChay,tx.GiaTien,tx.QuangDuong, tx.TramBD,tx.TramKT,tx.TramDung1,tx.TramDung2
	from TuyenXe tx, TramDung td1, TramDung td2, TramDung td3, TramDung td4
	where tx.TramBD = td1.MaTram
	and tx.TramkT = td2.MaTram
	and tx.TramDung1 = td3.MaTram
	and tx.TramDung2 = td4.MaTram
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadVeXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[sp_LoadVeXe]
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
/****** Object:  StoredProcedure [dbo].[sp_LoadXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_LoadXe]
as
	select * from Xe
GO


/*2.viết proc tìm kiếm TaiXe, KhachHang theo tên. proc tìm kiếm VÉ theo TÊN KHÁCH HÀNG. proc tìm xe theo bảng số xe,
  proc tìm TramDung theo TenTram đặt tên: sp_Search<table>, vd sp_SearchTaiXe*/
/****** Object:  StoredProcedure [dbo].[sp_SearchKhachHang]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SearchKhachHang] @HoTen nvarchar(50)
as
	select * from KhachHang where HoTen like N'%' + @HoTen +'%'
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTaiXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SearchTaiXe] @TenTaiXe nvarchar(50)
as
	select * from TaiXe where TenTaiXe like N'%' + @TenTaiXe +'%'
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTramDung]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SearchTramDung] @TenTram nvarchar(50)
as
	select * from TramDung where TenTram like N'%' + @TenTram +'%'
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchVeXe]    Script Date: 12/14/2018 6:29:17 PM ******/

/****** Object:  StoredProcedure [dbo].[sp_SearchXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SearchXe] @BangSoXe varchar(50)
as
	select * from Xe where BangSoXe like N'%' + @BangSoXe +'%'
GO


/*3.viết proc lấy MÃ mới nhất của từng bảng (code mẫu: SELECT TOP(1)MaSo FROM SinhVien ORDER BY MaSo DESC)*/

/****** Object:  StoredProcedure [dbo].[sp_NewChuyenXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewChuyenXe]
as
	SELECT TOP(1)MaChuyen FROM ChuyenXe ORDER BY MaChuyen DESC
GO
/* viết proc new GHEXE*/
create proc [dbo].[sp_NewGhe_Xe]
as
	SELECT TOP(1)MaGheXe FROM Ghe_Xe ORDER BY MaGheXe DESC
GO

/****** Object:  StoredProcedure [dbo].[sp_NewGhe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewGhe]
as
	SELECT TOP(1)MaGhe FROM Ghe ORDER BY MaGhe DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_NewKhachHang]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewKhachHang]
as
	SELECT TOP(1)MaKhachHang FROM KhachHang ORDER BY MaKhachHang DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_NewLoaiXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewLoaiXe]
as
	SELECT TOP(1)MaLoai FROM LoaiXe ORDER BY MaLoai DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_NewTaiXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewTaiXe]
as
	SELECT TOP(1)MaTaiXe FROM TaiXe ORDER BY MaTaiXe DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_NewTramDung]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewTramDung]
as
	SELECT TOP(1)MaTram FROM TramDung ORDER BY MaTram DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_NewTuyenXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewTuyenXe]
as
	SELECT TOP(1)MaTuyen FROM TuyenXe ORDER BY MaTuyen DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_NewVeXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[sp_NewVeXe]
as
	SELECT TOP(1)MaVe FROM VeXe ORDER BY MaVe DESC
GO
/****** Object:  StoredProcedure [dbo].[sp_NewXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_NewXe]
as
	SELECT TOP(1)MaXe FROM Xe ORDER BY MaXe DESC
GO


/*4.viết proc thêm dữ liệu mới vào từng bảng (bao gồm cả MÃ, MÃ đã được xử lý xong hết trên C#, ở sql chỉ đưa vào)*/

/****** Object:  StoredProcedure [dbo].[sp_ThemChuyenXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[sp_ThemChuyenXe] @MaChuyen varchar(10), @GioKhoiHanh nvarchar(50), @MaTuyen varchar(10),@NgayKhoiHanh date
as
	insert into ChuyenXe(MaChuyen, GioKhoiHanh, MaTuyen, NgayKhoiHanh) values(@MaChuyen,@GioKhoiHanh,@MaTuyen, @NgayKhoiHanh)
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemGhe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemGhe] @MaGhe varchar(50), @Tang int, @Cot int, @Dong int, @MaXe varchar(10)
as
	insert into Ghe(MaGhe, Tang, Cot, Dong, MaXe) values(@MaGhe,@Tang,@Cot,@Dong,@MaXe)
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemKhachHang]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemKhachHang] @MaKhachHang varchar(10), @HoTen nvarchar(50), @SDT varchar(50), @Email nvarchar(50), @Loai nvarchar(50)
as
	insert into KhachHang(MaKhachHang, HoTen, SDT, Email, Loai) values(@MaKhachHang,@HoTen,@SDT,@Email,@Loai)
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemLoaiXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemLoaiXe] @MaLoai varchar(10), @SoGhe int, @SoTang int,@LoaiGhe nvarchar(50)
as
	insert into LoaiXe(MaLoai, SoGhe, SoTang, LoaiGhe) values(@MaLoai,@SoGhe,@SoTang,@LoaiGhe)
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTaiXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemTaiXe] @MaTaiXe varchar(10), @BangLai nvarchar(50), @TenTaiXe nvarchar(50),@SDT varchar(50)
as
	insert into TaiXe(MaTaiXe, BangLai, TenTaiXe, SDT) values(@MaTaiXe,@BangLai,@TenTaiXe,@SDT)
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTramDung]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemTramDung] @MaTram varchar(10), @TenTram nvarchar(50), @DiaDiem nvarchar(50)
as
	insert into TramDung(MaTram, TenTram, DiaDiem) values(@MaTram,@TenTram,@DiaDiem)
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTuyenXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[sp_ThemTuyenXe] @MaTuyen varchar(10), @TramBD varchar(10), @TramKT varchar(10),@TramDung1 varchar(10),@TramDung2 varchar(10), @QuangDuong int, @ThoiGianChay int, @GiaTien float
as
	insert into TuyenXe(MaTuyen, TramBD, TramKT, TramDung1, TramDung2, QuangDuong, ThoiGianChay, GiaTien) values(@MaTuyen,@TramBD,@TramKT,@TramDung1,@TramDung2,@QuangDuong, @ThoiGianChay, @GiaTien)
GO
/****** Object:  StoredProcedure [dbo].[sp_BookVeXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_BookVeXe] @MaVe varchar(10),@MaTuyen varchar(10), @MaKhachHang varchar(10),@MaXe varchar(10) ,@MaGheXe varchar(10),@GiaTien float,@TinhTrangThanhToan nvarchar(50),@GhiChu ntext
as
	insert into VeXe(MaVe,MaTuyen, MaKhachHang,MaXe, MaGheXe, GiaTien, TinhTrangThanhToan, NgayXuatVe, GhiChu) values(@MaVe,@MaTuyen,@MaKhachHang,@MaXe,@MaGheXe,@GiaTien,@TinhTrangThanhToan,NULL,@GhiChu)
GO
/* MuaVEXE*/
create proc [dbo].[sp_MuaVeXe] @MaVe varchar(10),@MaTuyen varchar(10), @MaKhachHang varchar(10),@MaXe varchar(10) ,@MaGheXe varchar(10),@GiaTien float,@TinhTrangThanhToan nvarchar(50),@NgayXuatVe date,@GhiChu ntext
as
	insert into VeXe(MaVe,MaTuyen, MaKhachHang,MaXe, MaGheXe, GiaTien, TinhTrangThanhToan, NgayXuatVe, GhiChu) values(@MaVe,@MaTuyen,@MaKhachHang,@MaXe,@MaGheXe,@GiaTien,@TinhTrangThanhToan,@NgayXuatVe,@GhiChu)
GO

/****** Object:  StoredProcedure [dbo].[sp_ThemXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThemXe] @MaXe varchar(50), @MaLoai varchar(10), @MaChuyen varchar(10),@MaTaiXe varchar(10),@BangSoXe varchar(50)
as
	insert into Xe(MaXe, MaLoai, MaChuyen, MaTaiXe, BangSoXe) values(@MaXe,@MaLoai,@MaChuyen,@MaTaiXe,@BangSoXe)
GO


/*5.viết proc sửa dữ liệu từng bảng dựa theo MÃ*/

/****** Object:  StoredProcedure [dbo].[sp_SuaChuyenXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[sp_SuaChuyenXe] @MaChuyen varchar(10), @GioKhoiHanh nvarchar(50), @MaTuyen varchar(10),@NgayKhoiHanh date
as
	update ChuyenXe
	set GioKhoiHanh = @GioKhoiHanh, MaTuyen = @MaTuyen, NgayKhoiHanh = @NgayKhoiHanh
	where MaChuyen = @MaChuyen
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaGhe]    Script Date: 12/14/2018 6:29:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SuaKhachHang]    Script Date: 12/14/2018 6:29:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SuaLoaiXe]    Script Date: 12/14/2018 6:29:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SuaTaiXe]    Script Date: 12/14/2018 6:29:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SuaTramDung]    Script Date: 12/14/2018 6:29:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_SuaTuyenXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[sp_SuaTuyenXe] @MaTuyen varchar(10), @TramBD varchar(10), @TramKT varchar(10), @TramDung1 varchar(10), @TramDung2 varchar(10), @QuangDuong int, @ThoiGianChay int, @GiaTien float
as
	update TuyenXe
	set TramBD = @TramBD, TramKT = @TramKT, TramDung1 = @TramDung1, TramDung2 = @TramDung2, QuangDuong = @QuangDuong, ThoiGianChay = @ThoiGianChay, GiaTien = @GiaTien
	where MaTuyen = @MaTuyen
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaVeXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter proc [dbo].[sp_SuaVeXe] @MaVe varchar(10), @MaGheXe varchar(10), @MaKhachHang varchar(10),@MaXe varchar(10),@MaTuyen varchar(10), @GiaTien float, @TinhTrangThanhToan nvarchar(50), @NgayXuatVe date, @GhiChu ntext
as
	update VeXe
	set MaKhachHang = @MaKhachHang, MaGheXe = @MaGheXe ,MaXe=@MaXe,MaTuyen=@MaTuyen, GiaTien = @GiaTien, TinhTrangThanhToan = @TinhTrangThanhToan, NgayXuatVe = @NgayXuatVe, GhiChu = @GhiChu
	where MaVe = @MaVe
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaXe]    Script Date: 12/14/2018 6:29:17 PM ******/
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


/*6.Viết proc xóa dữ liệu từng bảng dựa theo MÃ, đồng thời xóa toàn bộ những thứ liên quan tới bảng đó
   vd: Xóa tuyến SG-HN, thì sẽ xóa tất cả các chuyến thuộc SG-HN (nhớ là đéo xóa xe thuộc SG-HN), 
   Xóa Loại Xe A thì các Xe mang loại A củng phải xóa (nhớ là đéo xóa tài xế)*/

----------Các hàm xử lý chi tiết----------

/*frmChuyenxe
7. viết proc lấy ra toàn bộ MaTuyen*/
/****** Object:  StoredProcedure [dbo].[sp_MaTuyen]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_MaTuyen]
as
	select MaTuyen from TuyenXe
GO

/*frmDatVe*/
--8. viết proc lấy ra toàn bộ Tên trạm
/****** Object:  StoredProcedure [dbo].[sp_TenTram]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TenTram]
as
	select TenTram from TramDung
GO
--9. viết proc lấy MãTram  từ Tên trạm
/****** Object:  StoredProcedure [dbo].[sp_MaTramFromTenTram]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_MaTramFromTenTram] @TenTram nvarchar(50)
as
	select MaTram from TramDung where TenTram like N'%' + @TenTram + '%'
GO
--10.viết proc lấy MaTuyen từ TramBD và TramKT
/****** Object:  StoredProcedure [dbo].[sp_MaTuyenTram]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_MaTuyenTram] @TramBD varchar(10), @TramKT varchar(10)
as
	select MaTuyen from TuyenXe where TramBD like N'%' + @TramBD + '%' and TramKT like N'%' + @TramKT + '%'
GO

go
/*frmTuyenXe
11.viết proc lấy ra toàn bộ MaTram*/
/****** Object:  StoredProcedure [dbo].[sp_AllMaTram]    Script Date: 12/14/2018 6:29:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_AllMaTram]
as
	select MaTram from TramDung
GO
/*frmVeXe
12. viết proc lấy ra các MaGhe thuộc MaXe*/
/****** Object:  StoredProcedure [dbo].[sp_MaGheFromMaXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_MaGheFromMaXe] @MaXe varchar(50)
as
	select MaGhe from Ghe where MaXe like '%' + @MaXe + '%'
GO

--13. viết proc lấy ra toàn bộ MaXe
/****** Object:  StoredProcedure [dbo].[sp_AllMaXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_AllMaXe]
as
	select MaXe from Xe
GO

/*frmXe
14. viết proc lấy ra toàn bộ Mã Loại*/
/****** Object:  StoredProcedure [dbo].[sp_AllMaLoai]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_AllMaLoai]
as
	select MaLoai from LoaiXe
GO

--15. Viết proc lấy ra toàn bộ Mã tài xế
/****** Object:  StoredProcedure [dbo].[sp_AllMaTaiXe]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_AllMaTaiXe]
as
	select MaTaiXe from TaiXe
GO
/*16. viết proc lấy ra toàn bộ Mã chuyến xe
****** Object:  StoredProcedure [dbo].[sp_AllMaChuyen]    Script Date: 12/14/2018 6:29:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_AllMaChuyen]
as
	select MaChuyen from ChuyenXe
GO
--frmDatVe
/*17. Viet proc lấy ra toàn bộ Tên Trạm*/
create proc [dbo].[sp_AllTenTram]
as
	select TenTram from TramDung
GO
/*18. Viết proc tìm kiếm mã chuyến, giờ khởi hành...từ tên trạm */
alter proc sp_LoadDatVe @TenTramBD nvarchar(50), @TenTramKT nvarchar(50), @NgayKhoiHanh date
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
go

/*19. viết proc lấy ra Giờ khởi hành từ tên trạm và ngày khởi hành */
alter proc sp_GioKhoiHanhTheoChuyen @TenTramBD nvarchar(50), @TenTramKT nvarchar(50), @NgayKhoiHanh date
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
go
/*20. Viết proc load Đặt vé theo giờ  */
alter proc sp_LoadDatVeTheoGio @TenTramBD nvarchar(50), @TenTramKT nvarchar(50), @NgayKhoiHanh date, @GioKhoiHanh nvarchar(50)
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
go
/*frm VEXE*/
/*21. nhập vào họ tên, sđt xuất ra MÃ KHÁCH HÀNG*/
create proc sp_MaKhachHang @HoTen nvarchar(50), @SDT varchar(50)
as
	select MaKhachHang
	from KhachHang
	where HoTen like @HoTen
	and SDT = SDT
go
/*22. đưa vào ngày giờ, mã xe, mã ghế  lấy ra MÃ GHẾ XE*/
create proc sp_MaGheXe

/*23.Thêm Ghe_XE*/
create proc sp_ThemGhe_Xe @MaGheXe varchar(10), @MaGhe varchar(10), @MaXe varchar(10), @NgayKhoiHanh date,@GioKhoiHanh nvarchar(50)
as
	insert into Ghe_Xe(MaGheXe,MaGhe,MaXe,NgayKhoiHanh, GioKhoiHanh) values(@MaGheXe,@MaGhe,@MaXe,@NgayKhoiHanh,@GioKhoiHanh)
GO
/*24. frmChonCho  truyền vào mã xe, ngày, giờ...xuất ra mã ghế*/
create proc sp_ChonGhe @MaXe varchar(10), @NgayKhoiHanh date, @GioKhoiHanh nvarchar(50)
as
	select MaGhe
	from Ghe_Xe
	where MaXe = @MaXe
	and NgayKhoiHanh = @NgayKhoiHanh
	and GioKhoiHanh = @GioKhoiHanh
GO


/*                        REPORT               */

alter proc sp_BCChuyenXeThang @ThangNhap date, @MaTuyen varchar(10)
as
	select cx.MaChuyen, cx.GioKhoiHanh, cx.MaTuyen, cx.NgayKhoiHanh
	from ChuyenXe cx
	where cx.MaTuyen = @MaTuyen
	 and year(cx.NgayKhoiHanh) = year(@ThangNhap)
	 and month(cx.NgayKhoiHanh) = month(@ThangNhap)
go

/*25. Nhập vào MÃ TUYẾN, xuất ra NƠI ĐI  - NƠI ĐẾN*/
create proc sp_TenTuyen @MaTuyen varchar(10)
as
	select td1.TenTram as N'NoiDi' , td2.TenTram as N'NoiDen'
	from TuyenXe tx, TramDung td1, TramDung td2
	where tx.MaTuyen = @MaTuyen
	and tx.TramBD = td1.MaTram
	and tx.TramKT = td2.MaTram
go

/*26. comboBox Mã Tuyến  (frmChuyenXe)*/
alter proc sp_cbMaTuyenFrmChuyenXe 
as
	select td1.TenTram +' - '+ td2.TenTram as N'TenTuyen'
	from TuyenXe tx, TramDung td1, TramDung td2
	where  tx.TramBD = td1.MaTram
	and tx.TramKT = td2.MaTram
go
/*27. Load CHUYẾN XE theo TUYẾN*/
alter proc [dbo].[sp_LoadChuyenXeTheoTuyen] @NoiDi nvarchar(50),@NoiDen nvarchar(50)
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
exec sp_LoadChuyenXeTheoTuyen N'CamRanhh', N'Sài Gòn'

/*29. AUTO HỦY VÉ sau 15P*/
alter proc sp_AuToHuyVe
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
go
exec sp_AuToHuyVe
/*30. SEARCH VÉ XE */
alter proc [dbo].[sp_SearchVeXe] @HoTen nvarchar(50)
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
