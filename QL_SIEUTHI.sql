
    USE QL_SIEUTHI

CREATE TABLE KhoHang
(
	MaHangHoa nchar (30) not null primary key,
	TenHangHoa nvarchar (50),
	LoaiHangHoa nvarchar (50),
	GiaBan float,
	GiaMua float,
	DonVi nvarchar (20),
	SoluongTrongKho int
)

CREATE TABLE NhanVien
(
	MaNhanVien nchar (20) not null primary key,
	TenNhanVien nvarchar (50),
	NgaySinh date,
	GioiTinh nvarchar (5),
	Luong float,
	Email nchar (20),
	DiaChi nvarchar (50),
	Tuoi int,
	CapNguoiDung nchar (10)
)

CREATE TABLE KhachHang
(
	MaKhachHang nchar (20) not null primary key,
	TenKhachHang nvarchar (50),
	SoDienThoai nchar (20)
)

CREATE TABLE HoaDon
(
	MaHoaDon nchar (20) not null primary key,
	NgayLapHoaDon date,
	GioLapHoaDon time,
	TenNVLapHoaDon nvarchar (50),
	MaNVLapHoaDon nchar (20),
	TenKhachHang nvarchar (50),
	MaKhachHang nchar (20),
	TienHang float,
	PhanTramGiamGia float,
	GiamGia float,
	TongThanhTien float,
	KhachDua float,
	TraLai float,
)

CREATE TABLE ChiTietHoaDon
(
	MaHoaDon nchar (20) not null,
	MaHangHoa nchar (30) not null,
	TenHangHoa nvarchar (30),
	GiaBan float,
	Soluong int,
	ThanhTien float
)
Alter table ChiTietHoaDon
Add constraint  PK_ChiTietHoaDon primary key (MaHoaDon,MaHoaDon)

CREATE TABLE ThongTinSieuThi
(
	TenSieuThi nvarchar (50) not null primary key,
	DiaChiSieuThi nvarchar (50),
	SoDT nchar (20),
	TenChuSieuThi nvarchar (50),
	MaNVChuSieuThi nchar (20),
	CongQuy float,
)

CREATE TABLE Users
(
	UserName nchar (30) not null,
	Passwords nchar (30) not null,
	MaNhanVien nchar (20) not null
)
Alter table Users
Add contraint PK_Users primary key (UserName,Passwords,MaNhanVien)

CREATE TABLE ThuChi
(
	ThuChi nchar (5),
	TenHangHoa nvarchar (50),
	MaHangHoa nchar (30),
	SoLuong int,
	SoTienThuChi float,
	NgayThuChi date not null,
	GioThuChi date not null,
	TenNhanVienThuChi nvarchar (50),
	MaNhanVienThuChi nchar (20)
)
Alter table ThuChi
Add contraint PK_ThuChi primary key (NgayThuChi,GioThuChi)

INSERT INTO KhoHang
VALUES('SUA01','BAD Gạo sữa dinh dưỡng','SỮA','54.000','45.000','bịch','20'),
('SUA02','Sữa Vinasoy nguyên chất','SỮA','26.000','20.000','bịch','50'),
('SUA03','BAD sữa gạo lức','SỮA','54.000','45.000','bịch','30'),
('SUA04','sữa Friso Gold 2','SỮA','231.000','180.000','hộp','28'),
('SUA05','Sữa Kun vị cam 110ml','SỮA','4.000','2.500','hộp','26'),
('SUA06','Nuti IQ 456 Gold','SỮA','282.000','250.000','hộp','22'),
('SUA07','BAD lúa mì','SỮA','50.000','40.000','bịch','20'),
('SUA08','Dielac Gold Step 2 400g','SỮA','136.000','105.000','hộp','32'),
('SUA09','Sữa ông thọ','SỮA','15.500','10.500','lon','25'),
('SUA10','Nuti Vita','SỮA','206.000','185.500','hộp','16');

INSERT INTO KhoHang
VALUES('DOUONG01','Coca Cola Nhật 300ml','ĐỒ UỐNG','44.900đ','35.500đ','chai','45'),
('DOUONG02','Yummy Panda Thạch uống trái cây vị xoài','ĐỒ UỐNG','14.900đ','8.500đ','gói','38'),
('DOUONG03','Nước giải khát Latte Đào 345ml','ĐỒ UỐNG','9.900đ','4.500đ','chai','25'),
('DOUONG04','Wonderfarm Trà bí đao','ĐỒ UỐNG','5.500đ','2.500đ','chai','50'),
('DOUONG05','Trà Ô Long Tea Plus 500ml','ĐỒ UỐNG','9.500đ','5.500đ','chai','45'),
('DOUONG06','Nước khoáng AVIAN 500ml','ĐỒ UỐNG','31.500đ','24.500đ','chai','60'),
('DOUONG07','Sinh Tố Phúc Bồn Tử 350ml','ĐỒ UỐNG','117.900đ','96.500đ','chai','45'),
('DOUONG08','Fanta Saxi 390ml','ĐỒ UỐNG','6.500đ','2.500đ','chai','24'),
('DOUONG09','Ice Đào','ĐỒ UỐNG','7.500đ','3.500đ','chai','35'),
('DOUONG10','Pepsi chai 1.5l','ĐỒ UỐNG','14.700đ','8.300đ','chai','64');

INSERT INTO KhoHang
VALUES('MP01','Dầu gội đầu Tresemme Detox','MỸ PHẨM','169.000','105.800','chai','38'),
('MP02','Dầu gội đầu Tresemme Detox','MỸ PHẨM','169.000','105.800','chai','38'),
('MP03','Dầu gội đầu Tresemme Detox','MỸ PHẨM','169.000','105.800','chai','38'),
('MP04','Dầu gội đầu Tresemme Detox','MỸ PHẨM','169.000','105.800','chai','38'),
('MP05','Dầu gội đầu Tresemme Detox','MỸ PHẨM','169.000','105.800','chai','38'),
('MP06','Dầu gội đầu Tresemme Detox','MỸ PHẨM','169.000','105.800','chai','38'),
('MP07','Dầu gội đầu Tresemme Detox','MỸ PHẨM','169.000','105.800','chai','38'),
('MP08','Dầu gội đầu Tresemme Detox','MỸ PHẨM','169.000','105.800','chai','38'),
('MP09','Dầu gội đầu Tresemme Detox','MỸ PHẨM','169.000','105.800','chai','38'),
('MP10','Dầu gội đầu Tresemme Detox','MỸ PHẨM','169.000','105.800','chai','38');

INSERT INTO KhoHang
VALUES('DH01','Xúc xích dinh dưỡng bò','ĐỒ HỘP','20.000','13.700','hộp','58'),
('DH01','Xúc xích dinh dưỡng bò','ĐỒ HỘP','20.000','13.700','hộp','58'),
('DH01','Xúc xích dinh dưỡng bò','ĐỒ HỘP','20.000','13.700','hộp','58'),
('DH01','Xúc xích dinh dưỡng bò','ĐỒ HỘP','20.000','13.700','hộp','58'),
('DH01','Xúc xích dinh dưỡng bò','ĐỒ HỘP','20.000','13.700','hộp','58'),
('DH01','Xúc xích dinh dưỡng bò','ĐỒ HỘP','20.000','13.700','hộp','58'),
('DH01','Xúc xích dinh dưỡng bò','ĐỒ HỘP','20.000','13.700','hộp','58'),
('DH01','Xúc xích dinh dưỡng bò','ĐỒ HỘP','20.000','13.700','hộp','58'),
('DH01','Xúc xích dinh dưỡng bò','ĐỒ HỘP','20.000','13.700','hộp','58'),
('DH01','Xúc xích dinh dưỡng bò','ĐỒ HỘP','20.000','13.700','hộp','58');

INSERT INTO KhoHang
VALUES('KEO01','Kẹo mận Thái Lan','KẸO','37.500','29.000','gói','26'),
('KEO01','Kẹo mận Thái Lan','KẸO','37.500','29.000','gói','26'),
('KEO01','Kẹo mận Thái Lan','KẸO','37.500','29.000','gói','26'),
('KEO01','Kẹo mận Thái Lan','KẸO','37.500','29.000','gói','26'),
('KEO01','Kẹo mận Thái Lan','KẸO','37.500','29.000','gói','26'),
('KEO01','Kẹo mận Thái Lan','KẸO','37.500','29.000','gói','26'),
('KEO01','Kẹo mận Thái Lan','KẸO','37.500','29.000','gói','26'),
('KEO01','Kẹo mận Thái Lan','KẸO','37.500','29.000','gói','26'),
('KEO01','Kẹo mận Thái Lan','KẸO','37.500','29.000','gói','26'),
('KEO01','Kẹo mận Thái Lan','KẸO','37.500','29.000','gói','26');

INSERT INTO KhoHang
VALUES('BG01','Bột Giặt APA 3kg','BỘT GIẶT','101.OOO','bịch','34' ),

INSERT INTO KhoHang
VALUES('DAN','',),
