create DATABASE DoAn
go
use DoAn

create table TaiKhoan (
	MaTaiKhoan int identity(1,1),
    TenDangNhap NVARCHAR(50),
    MatKhau NVARCHAR(255) NOT NULL,
);


CREATE TABLE LoaiMonAn (
    MaLoaiMon CHAR(10) PRIMARY KEY,
    TenLoaiMon NVARCHAR(100) NOT NULL
);

CREATE TABLE MonAn (
    MaMonAn CHAR(10) PRIMARY KEY,
    TenMonAn NVARCHAR(100) NOT NULL,
    GiaBan FLOAT NOT NULL,
    MoTa NVARCHAR(300),
    MaLoaiMon CHAR(10),
    FOREIGN KEY (MaLoaiMon) REFERENCES LoaiMonAn(MaLoaiMon) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE NguyenLieu (
    MaNguyenLieu CHAR(10) PRIMARY KEY,
    TenNguyenLieu NVARCHAR(100) NOT NULL,
    DonViTinh NVARCHAR(20),           -- ví dụ: gram, ml, cái, lát
    SoLuongTon FLOAT NOT NULL         -- số lượng còn lại trong kho
);

CREATE TABLE ChiTietNguyenLieu (
    MaMonAn CHAR(10),
    MaNguyenLieu CHAR(10),
    SoLuongCan FLOAT NOT NULL,        -- mỗi phần cần bao nhiêu

    PRIMARY KEY (MaMonAn, MaNguyenLieu),
    FOREIGN KEY (MaMonAn) REFERENCES MonAn(MaMonAn) ON DELETE CASCADE,
    FOREIGN KEY (MaNguyenLieu) REFERENCES NguyenLieu(MaNguyenLieu) ON DELETE CASCADE
);
CREATE TABLE DonHang (
    MaDonHang CHAR(10) PRIMARY KEY,
    NgayDat DATETIME NOT NULL,
);


CREATE TABLE ChiTietDonHang (
    MaDonHang CHAR(10),
    MaMonAn CHAR(10),
    SoLuong INT NOT NULL,
    ThanhTien FLOAT NOT NULL,
    ThoiGianDat DATETIME NOT NULL,
    PRIMARY KEY (MaDonHang, MaMonAn),
    FOREIGN KEY (MaDonHang) REFERENCES DonHang(MaDonHang) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (MaMonAn) REFERENCES MonAn(MaMonAn) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Chèn dữ liệu vào bảng LoaiMonAn
INSERT INTO LoaiMonAn (MaLoaiMon, TenLoaiMon) 
VALUES 
('LMA001', N'Đồ ăn nhanh'),
('LMA002', N'Đồ uống'),
('LMA003', N'Tráng miệng'),
('LMA004', N'Cơm & Mì'),
('LMA005', N'Gà rán');

select*from LoaiMonAn


-- Chèn dữ liệu vào bảng MonAn
INSERT INTO MonAn (MaMonAn, TenMonAn, GiaBan, MoTa, MaLoaiMon) 
VALUES 
-- Đồ ăn nhanh
('MA001', N'Hamburger bò', 45000, N'Bánh mì kẹp bò với rau và sốt đặc biệt', 'LMA001'),
('MA002', N'Pizza hải sản', 120000, N'Pizza phô mai với tôm, mực và cua', 'LMA001'),
('MA003', N'Khoai tây chiên', 30000, N'Khoai tây chiên giòn', 'LMA001'),
('MA004', N'Bánh mì pate', 25000, N'Bánh mì kẹp pate, chả, dưa chuột', 'LMA001'),
('MA005', N'Hotdog', 35000, N'Bánh mì xúc xích kèm sốt cà chua', 'LMA001'),
('MA006', N'Burger gà', 40000, N'Bánh mì kẹp gà giòn với sốt đặc biệt', 'LMA001'),
('MA007', N'Bánh sandwich', 38000, N'Bánh sandwich kẹp thịt nguội, trứng', 'LMA001'),
('MA008', N'Pizza gà BBQ', 130000, N'Pizza gà nướng BBQ đậm vị', 'LMA001'),
('MA009', N'Mì Ý bò bằm', 90000, N'Mì Ý sốt bò bằm đậm đà', 'LMA001'),
('MA010', N'Taco bò', 50000, N'Vỏ bánh taco kẹp thịt bò và rau củ', 'LMA001'),

-- Đồ uống
('MA011', N'Trà sữa trân châu', 40000, N'Trà sữa với trân châu đường đen', 'LMA002'),
('MA012', N'Nước ép cam', 35000, N'Nước ép cam tươi nguyên chất', 'LMA002'),
('MA013', N'Sinh tố bơ', 45000, N'Sinh tố bơ sánh mịn', 'LMA002'),
('MA014', N'Cà phê sữa đá', 30000, N'Cà phê pha phin sữa đá thơm ngon', 'LMA002'),
('MA015', N'Nước ép dứa', 32000, N'Nước ép dứa tươi', 'LMA002'),
('MA016', N'Matcha đá xay', 50000, N'Matcha đá xay thơm béo', 'LMA002'),
('MA017', N'Sinh tố xoài', 40000, N'Sinh tố xoài ngọt mát', 'LMA002'),
('MA018', N'Nước ngọt có ga', 20000, N'Coca-Cola, Pepsi, 7Up...', 'LMA002'),
('MA019', N'Chanh dây đá xay', 45000, N'Chanh dây xay mát lạnh', 'LMA002'),
('MA020', N'Trà đào cam sả', 50000, N'Trà đào kết hợp cam sả thơm ngon', 'LMA002'),

-- Tráng miệng
('MA021', N'Kem dâu', 25000, N'Kem dâu tươi mát lạnh', 'LMA003'),
('MA022', N'Bánh flan', 20000, N'Bánh flan mềm mịn với caramel', 'LMA003'),
('MA023', N'Chè khúc bạch', 35000, N'Chè khúc bạch hạnh nhân thơm ngon', 'LMA003'),
('MA024', N'Bánh tiramisu', 50000, N'Bánh tiramisu ngọt béo', 'LMA003'),
('MA025', N'Sữa chua nếp cẩm', 30000, N'Sữa chua kết hợp nếp cẩm dẻo', 'LMA003'),
('MA026', N'Bánh donut', 28000, N'Bánh donut nhiều vị', 'LMA003'),
('MA027', N'Kem socola', 27000, N'Kem vị socola đậm đà', 'LMA003'),
('MA028', N'Chè trôi nước', 32000, N'Chè trôi nước nhân đậu xanh', 'LMA003'),
('MA029', N'Bánh mousse chanh dây', 45000, N'Bánh mousse vị chanh dây chua nhẹ', 'LMA003'),
('MA030', N'Bánh crepe sầu riêng', 55000, N'Bánh crepe kèm nhân sầu riêng', 'LMA003'),

-- Cơm & Mì
('MA031', N'Cơm tấm sườn bì chả', 60000, N'Cơm tấm ăn kèm sườn nướng, bì, chả', 'LMA004'),
('MA032', N'Cơm chiên dương châu', 50000, N'Cơm chiên trứng, lạp xưởng, tôm', 'LMA004'),
('MA033', N'Cơm gà xối mỡ', 55000, N'Cơm gà chiên giòn với nước sốt', 'LMA004'),
('MA034', N'Mì xào bò', 45000, N'Mì xào bò rau cải xanh', 'LMA004'),
('MA035', N'Hủ tiếu Nam Vang', 65000, N'Hủ tiếu nước ngọt thanh', 'LMA004'),
('MA036', N'Bún bò Huế', 70000, N'Bún bò Huế cay nồng', 'LMA004'),
('MA037', N'Bánh canh cua', 75000, N'Bánh canh nước dùng đậm đà', 'LMA004'),
('MA038', N'Phở bò', 60000, N'Phở bò tái, nạm, gầu', 'LMA004'),
('MA039', N'Cơm cá hồi sốt teriyaki', 80000, N'Cơm cá hồi nướng sốt teriyaki', 'LMA004'),
('MA040', N'Cơm rang kim chi', 55000, N'Cơm rang kim chi cay ngon', 'LMA004'),

-- Gà rán
('MA041', N'Gà rán truyền thống', 40000, N'Gà rán giòn cay hấp dẫn', 'LMA005'),
('MA042', N'Gà rán sốt mật ong', 45000, N'Gà rán phủ sốt mật ong ngọt', 'LMA005'),
('MA043', N'Gà viên chiên', 35000, N'Gà viên chiên giòn rụm', 'LMA005'),
('MA044', N'Gà xào cay Hàn Quốc', 50000, N'Gà xào cay vị Hàn Quốc', 'LMA005'),
('MA045', N'Gà nướng BBQ', 70000, N'Gà nướng sốt BBQ', 'LMA005'),
('MA046', N'Gà không xương lắc phô mai', 55000, N'Gà rán không xương phủ phô mai', 'LMA005'),
('MA047', N'Cánh gà chiên nước mắm', 45000, N'Cánh gà chiên nước mắm tỏi', 'LMA005'),
('MA048', N'Gà rán sốt cay', 50000, N'Gà rán giòn cay Hàn Quốc', 'LMA005'),
('MA049', N'Gà popcorn', 40000, N'Gà popcorn nhỏ nhưng giòn', 'LMA005'),
('MA050', N'Combo gà rán', 120000, N'Combo gồm 5 miếng gà rán', 'LMA005');


INSERT INTO NguyenLieu (MaNguyenLieu, TenNguyenLieu, DonViTinh, SoLuongTon) VALUES
('NL001', N'Bò xay', N'gram', 5000),
('NL002', N'Bột mì', N'gram', 10000),
('NL003', N'Khoai tây', N'gram', 8000),
('NL004', N'Pate', N'gram', 4000),
('NL005', N'Xúc xích', N'cái', 2000),
('NL006', N'Thịt gà', N'gram', 7000),
('NL007', N'Thịt nguội', N'gram', 3500),
('NL008', N'Phô mai', N'gram', 3000),
('NL009', N'Mì Ý', N'gram', 4500),
('NL010', N'Bánh taco', N'cái', 1000),

('NL011', N'Trá sữa', N'ml', 10000),
('NL012', N'Trán châu', N'gram', 3000),
('NL013', N'Cam tươi', N'cái', 2000),
('NL014', N'Bơ', N'gram', 4000),
('NL015', N'Cà phê', N'gram', 2500),
('NL016', N'Dứa', N'cái', 1500),
('NL017', N'Matcha', N'gram', 1000),
('NL018', N'Nước ngọt có ga', N'ml', 5000),
('NL019', N'Chanh dây', N'cái', 1000),
('NL020', N'Cam', N'cái', 2000),

('NL021', N'Dâu tươi', N'gram', 3000),
('NL022', N'Caramel', N'gram', 1500),
('NL023', N'Hạnh nhân', N'gram', 2000),
('NL024', N'Tiramisu mix', N'gram', 1000),
('NL025', N'Nếp cẩm', N'gram', 2500),
('NL026', N'Donut bột', N'cái', 2000),
('NL027', N'Socola', N'gram', 3500),
('NL028', N'Đậu xanh', N'gram', 3000),
('NL029', N'Chanh dây', N'cái', 1000),
('NL030', N'Sầu riêng', N'gram', 2500),

('NL031', N'Sườn heo', N'gram', 5000),
('NL032', N'Trứng', N'cái', 2000),
('NL033', N'Lạp xưởng', N'gram', 1500),
('NL034', N'Tôm', N'gram', 4000),
('NL035', N'Mì tươi', N'gram', 3000),
('NL036', N'Bò', N'gram', 4500),
('NL037', N'Cua', N'gram', 2500),
('NL038', N'Phở tươi', N'gram', 4000),
('NL039', N'Cá hồi', N'gram', 3500),
('NL040', N'Kim chi', N'gram', 3000),

('NL041', N'Gà nguyên con', N'gram', 8000),
('NL042', N'Mật ong', N'gram', 1500),
('NL043', N'Gà viên', N'gram', 2500),
('NL044', N'Tỏi', N'gram', 2000),
('NL045', N'Sốt BBQ', N'gram', 3000),
('NL046', N'Phô mai bột', N'gram', 2000),
('NL047', N'Nước mắm', N'ml', 1500),
('NL048', N'Ớt bột', N'gram', 1000),
('NL049', N'Bột chiên giòn', N'gram', 2500),
('NL050', N'Combo gà rán', N'cái', 500);


-- MA001 - Hamburger bò
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA001', 'NL001', 150),
('MA001', 'NL006', 1),
('MA001', 'NL018', 30),
('MA001', 'NL019', 20);

-- MA002 - Pizza hải sản
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA002', 'NL002', 100),
('MA002', 'NL003', 100),
('MA002', 'NL004', 100),
('MA002', 'NL011', 80),
('MA002', 'NL012', 250);

-- MA003 - Khoai tây chiên
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA003', 'NL005', 150),
('MA003', 'NL016', 20);

-- MA004 - Bánh mì pate
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA004', 'NL006', 1),
('MA004', 'NL007', 50),
('MA004', 'NL029', 40),
('MA004', 'NL018', 20);

-- MA005 - Hotdog
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA005', 'NL006', 1),
('MA005', 'NL008', 1),
('MA005', 'NL019', 25);

-- MA006 - Burger gà
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA006', 'NL009', 150),
('MA006', 'NL006', 1),
('MA006', 'NL016', 20),
('MA006', 'NL019', 20);

-- MA007 - Bánh sandwich
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA007', 'NL010', 2),
('MA007', 'NL029', 50),
('MA007', 'NL024', 1);

-- MA008 - Pizza gà BBQ
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA008', 'NL009', 100),
('MA008', 'NL017', 30),
('MA008', 'NL011', 80),
('MA008', 'NL012', 250);

-- MA009 - Mì Ý bò bằm
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA009', 'NL001', 120),
('MA009', 'NL012', 200),
('MA009', 'NL019', 25);

-- MA010 - Taco bò
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA010', 'NL001', 100),
('MA010', 'NL020', 2),
('MA010', 'NL018', 30);

-- MA011 - Trà sữa trân châu
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA011', 'NL013', 300),
('MA011', 'NL014', 100),
('MA011', 'NL022', 15);

-- MA012 - Nước ép cam
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA012', 'NL015', 300);

-- MA013 - Sinh tố bơ
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA013', 'NL016', 150),
('MA013', 'NL042', 250);

-- MA014 - Cà phê sữa đá
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA014', 'NL021', 200),
('MA014', 'NL022', 20),
('MA014', 'NL019', 50);

-- MA015 - Nước ép dứa
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA015', 'NL043', 300);

-- MA016 - Matcha đá xay
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA016', 'NL047', 40),
('MA016', 'NL013', 250);

-- MA017 - Sinh tố xoài
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA017', 'NL044', 150),
('MA017', 'NL042', 250);

-- MA018 - Nước ngọt có ga
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA018', 'NL022', 50);

-- MA019 - Chanh dây đá xay
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA019', 'NL044', 200),
('MA019', 'NL013', 250);

-- MA020 - Trà đào cam sả
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA020', 'NL015', 150),
('MA020', 'NL018', 20),
('MA020', 'NL013', 250);

-- MA021 - Kem dâu
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA021', 'NL016', 100),
('MA021', 'NL049', 1);

-- MA022 - Bánh flan
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA022', 'NL023', 50),
('MA022', 'NL024', 1);

-- MA023 - Chè khúc bạch
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA023', 'NL046', 80),
('MA023', 'NL022', 20);

-- MA024 - Bánh tiramisu
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA024', 'NL041', 1),
('MA024', 'NL011', 50);

-- MA025 - Sữa chua nếp cẩm
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA025', 'NL025', 100),
('MA025', 'NL050', 1);

-- MA026 - Bánh donut
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA026', 'NL032', 1),
('MA026', 'NL033', 30);

-- MA027 - Gà rán
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA027', 'NL030', 2),
('MA027', 'NL033', 20);

-- MA028 - Cánh gà chiên nước mắm
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA028', 'NL035', 3),
('MA028', 'NL033', 25);

-- MA029 - Bánh crepe
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA029', 'NL031', 1),
('MA029', 'NL034', 40);

-- MA030 - Bánh mì que
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA030', 'NL006', 1),
('MA030', 'NL026', 50);

-- MA031 - Bún bò Huế
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA031', 'NL001', 150),
('MA031', 'NL036', 1),
('MA031', 'NL019', 20);

-- MA032 - Hủ tiếu
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA032', 'NL037', 1),
('MA032', 'NL004', 100),
('MA032', 'NL019', 20);

-- MA033 - Cơm gà xối mỡ
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA033', 'NL009', 150),
('MA033', 'NL038', 1),
('MA033', 'NL018', 30);

-- MA034 - Cơm tấm sườn bì chả
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA034', 'NL027', 150),
('MA034', 'NL028', 50),
('MA034', 'NL029', 50),
('MA034', 'NL038', 1);

-- MA035 - Mì xào giòn
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA035', 'NL040', 1),
('MA035', 'NL002', 80),
('MA035', 'NL003', 80);

-- MA036 - Mì Quảng
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA036', 'NL040', 1),
('MA036', 'NL009', 100),
('MA036', 'NL018', 30);

-- MA037 - Bánh xèo
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA037', 'NL031', 1),
('MA037', 'NL009', 100),
('MA037', 'NL018', 40);

-- MA038 - Bánh bột lọc
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA038', 'NL041', 1),
('MA038', 'NL029', 60);

-- MA039 - Nem nướng
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA039', 'NL029', 100),
('MA039', 'NL018', 20);

-- MA040 - Bún chả
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA040', 'NL001', 120),
('MA040', 'NL038', 1),
('MA040', 'NL019', 20);

-- MA041 - Bánh mì chảo
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA041', 'NL006', 1),
('MA041', 'NL024', 2),
('MA041', 'NL016', 20);

-- MA042 - Bánh khoai mì
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA042', 'NL005', 100),
('MA042', 'NL033', 20);

-- MA043 - Bánh bao
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA043', 'NL006', 1),
('MA043', 'NL009', 100);

-- MA044 - Bánh tráng trộn
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA044', 'NL018', 50),
('MA044', 'NL029', 30),
('MA044', 'NL022', 15);

-- MA045 - Bánh mousse chanh dây
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA045', 'NL049', 1),
('MA045', 'NL044', 30);

-- MA046 - Trà chanh
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA046', 'NL044', 200),
('MA046', 'NL022', 10);

-- MA047 - Bánh xốp
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA047', 'NL031', 1),
('MA047', 'NL022', 10);

-- MA048 - Mật ong
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA048', 'NL048', 50);

-- MA049 - Bánh quy
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA049', 'NL031', 2),
('MA049', 'NL022', 20);

-- MA050 - Sữa chua
INSERT INTO ChiTietNguyenLieu (MaMonAn, MaNguyenLieu, SoLuongCan) VALUES
('MA050', 'NL050', 1);



