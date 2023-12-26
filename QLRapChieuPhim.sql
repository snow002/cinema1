Create database QLRapChieuPhim
	use QLRapChieuPhim
Create table KHACHHANG(
	MaKH char(10) not null,
	CCCD char(12) not null,
	TenKH char(30) not null,
	GioiTinh char(3),
	Gmail char(50),
	SDT char(12) not null,
	NamSinh date,
	constraint pk_MaKH primary key (MaKH)
)
GO
Create table NHANVIEN(
	MaNV char(10) not null,
	TenNV char(50) not null,
	CCCD char(12) not null,
	DiaChi char(50),
	ChucVu char(30),
	constraint pk_MaNV primary key (MaNV)
)
GO
Create table HOADON(
	MaVe char(10) not null,
	MaKH char(10) not null,
	MaNV char(10) not null,
	MaLV char (10) not null,
	Phim char,
	MaGhe char(10),
	MaCombo char(10),
	Mabap char(10),
	MaNuoc char(10),
	PhongChieu int,
	NgayGio time,
	ThanhTien int,
	constraint pk_MaVe primary key (MaVe)
)
GO
Create table PHIM(
	MaPhim char(10) not null,
	MaLoaiPhim char(10) not null,
	MaDangPhim char(10) not null,
	MaDoTuoi char(10) not null,
	TenPhim char (10) not null,
	DaoDien char,
	DienVienNoiTuong char(200),
	ThoiLuongPhim char(50),
	LichChieu date,
	GiaVe int,
	constraint pk_MaPhim primary key (MaPhim)
)
go
Create table DOTUOI(
	MaDoTuoi char(10),
	DoTuoi char(10),
	constraint pk_MaDoTuoi primary key (MaDoTuoi)
)
GO
Create table DANGPHIM(
	MaDangPhim char(10),
	DangPhim char(10),
	constraint pk_MaDangPhim primary key (MaDangPhim)
)
GO
Create table THELOAIPHIM(
	MaloaiPhim char(10),
	TheLoaiPhim char(10),
	constraint pk_MaLoaiPhim primary key (MaLoaiPhim)
)
GO
Create table LOAIVE(
	MaLoaiVe char(10) not null,
	TenLoaiVe char,
	GiaBan int,
	constraint pk_MaLoaiVe primary key (MaLoaiVe)
)
GO
Create table PHONGCHIEU(
	MaPhongChieu char(10) not null,
	TenPhong char null
	constraint pk_MaPhongChieu primary key (MaPhongChieu)
)
GO
Create table BAP(
	MaBap char(10) not null,
	LoaiBap char(10),
	SoLuongBap int,
	KichThuocBap char(10),
	GiaBan int,
	constraint pk_MaBap primary key (MaBap)
)
GO
Create table NUOC(
	MaNuoc char(10) not null,
	LoaiNuoc char(10),
	SoLuongNuoc int,
	KichThuocNuoc char(10),
	GiaBan int,
	constraint pk_MaNuoc primary key (MaNuoc)
)
GO
Create table COMBO(
	MaComBo char(10) not null,
	SoLuongBap int,
	SoLuongNuoc int,
	GiaBan int,
	constraint pk_MaComBo primary key (MaComBo)
)
GO
Create table GHE(
	MaGhe char(10) not null,
	MaPhong char(10),
	LoaiGhe char(10),
	Hang char(10),
	Cotj char(10),
	constraint pk_MaGhe primary key (MaGhe)
)
GO
----KHÓA NGOẠI
--bảng khách hàng
--bảng nhân viên 
--bảng hóa đơn 
ALTER TABLE HOADON ADD CONSTRAINT fk_MaLoaiVe FOREIGN KEY(MaLoaiVe) REFERENCES LOAIVE(MaLoaiVe)
ALTER TABLE HOADON ADD CONSTRAINT fk_MaKH FOREIGN KEY(MaKH) REFERENCES KHACHHANG(MaKH)
ALTER TABLE HOADON ADD CONSTRAINT fk_MaNV FOREIGN KEY(MaNV) REFERENCES NHANVIEN(MaNV)
ALTER TABLE HOADON ADD CONSTRAINT fk_MaGhe FOREIGN KEY(MaGhe) REFERENCES GHE(MaGhe)
ALTER TABLE HOADON ADD CONSTRAINT fk_MaComBo FOREIGN KEY(MaComBo) REFERENCES COMBO(MaComBo)
ALTER TABLE HOADON ADD CONSTRAINT fk_MaBap FOREIGN KEY(MaBap) REFERENCES BAP(MaBap)
ALTER TABLE HOADON ADD CONSTRAINT fk_MaNuoc FOREIGN KEY(MaNuoc) REFERENCES NUOC(MaNuoc)
ALTER TABLE HOADON ADD CONSTRAINT fk_MaPhongChieu FOREIGN KEY(MaPhongChieu) REFERENCES PHONGCHIEU(MaPhongChieu)
--bảng phim
ALTER TABLE PHIM ADD CONSTRAINT fk_MaLoaiPhim FOREIGN KEY(MaLoaiPhim) REFERENCES LOAIPHIM(MaLoaiPhim)
ALTER TABLE PHIM ADD CONSTRAINT fk_MaDangPhim FOREIGN KEY(MaDangPhim) REFERENCES DANGPHIM(MaDangPhim)
ALTER TABLE PHIM ADD CONSTRAINT fk_MaDoTuoi FOREIGN KEY(MaDoTuoi) REFERENCES DOTUOI(MaDoTuoi)
--bảng độ tuổi
--bảng dạng phim
--bảng thể loại phim
--bảng loại vé 
--bảng phòng chiếu 
--bảng bắp 
--bảng nước 
--bảng combo
--bảng ghế

ALTER TABLE HOADON ADD CONSTRAINT fk_MaKH00 FOREIGN KEY(MaKH) REFERENCES KHACHHANG(MAKH)
ALTER TABLE HOADON ADD CONSTRAINT fk_MaNV00 FOREIGN KEY(MaNV) REFERENCES NHANVIENPHONGVE(MaNV)

insert into KHACHHANG(MaKH,CCCD,TenKH,GioiTinh,Gmail,SDT,NamSinh)
values (23157101,095263667212,'HongAn','Nam','HongAn@gmail.com','094.xxx.xxx','11/01/2005');

insert into KHACHHANG(MaKH,CCCD,TenKH,GioiTinh,Gmail,SDT,NamSinh)
values (23157102,'095xx3667212','ThienHai','Nam','ThienHai@gmail.com','084.xxx.xxx','17/08/2005');

insert into NHANVIENPHONGVE(MaNV,HoVaTenNV,CCCD,DiaChi,ChucVu)
values (1231001,'ThaoNghii','09526xx7224','BacLieu','NhanVienSoatVe';

insert into NHANVIENPHONGVE(MaNV,HoVaTenNV,CCCD,DiaChi,ChucVu)
values (1231002,'NgocQuan','0xx263667212','GiaLai','NhanVienBanVe');

insert into HOADON(MaVe,MaKH,MaNV,Phim,Ghe,PhongChieu,NgayGio,ThanhTien)
values (101,23157101,1231002,'QuyCau','A01',01,'12h50','59.000');

insert into HOADON(MaVe,MaKH,MaNV,Phim,Ghe,PhongChieu,NgayGio,ThanhTien)
values (101,23157102,1231002,'QuyCau','A02',01,'12h50','59.000');

insert into LOAIVE(MaLoaiVe,TenLoaiVe,GiaBan)
values (01,'VeXemPhim','59.000');

insert into DANGPHIM(MaDangPhim,DangPhim)
values (201,'3D');