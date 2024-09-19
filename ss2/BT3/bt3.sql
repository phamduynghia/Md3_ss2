CREATE table PhieuXuat(
soPX int primary key auto_increment,
ngayXuat datetime
);

create table VatTu(
maVT int primary key auto_increment,
tenVT varchar(255)
);

create table PhieuXuatChiTiet(
soPx int,
foreign key (soPx) references PhieuXuat(soPX),
maVt int,
foreign key (maVt) references VatTu(maVT),
donGiaXuat double,
soLuongXuat int
);

create table PhieuNhap(
soPn int primary key auto_increment,
ngayNhap datetime
);

create table PhieuNhapChiTiet(
soPn int,
foreign key (soPn) references PhieuNhap(soPn),
maVt int,
foreign key (maVt) references VatTu(maVT),
donGiaNhap double,
soLuongNhap int
);

create table NgaCungCap(
maNCC int primary key auto_increment,
tenNCC varchar(255),
diaChi varchar(255),
soDienThoai varchar(11)
);

create table chiTietDonDatHang(
maVT int ,
foreign key (maVT) references VatTu(maVT),
soDH int primary key auto_increment
);

create table DonDatHang(
soDH int ,
foreign key (soDH) references chiTietDonDatHang(soDH),
maNCC int ,
foreign key (maNCC) references NgaCungCap(maNCC),
ngayDH datetime
);



