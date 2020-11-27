-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2020 lúc 05:15 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlthuvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `ID_DocGia` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ID_Sach` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDungBL` text COLLATE utf8_unicode_ci NOT NULL,
  `thoigian_bl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`ID_DocGia`, `ID_Sach`, `NoiDungBL`, `thoigian_bl`) VALUES
('ND001', '005', 'Cuốn sách quá tuyệt vời', '2020-11-27 02:43:09'),
('ND001', '008', 'Tuyệt vời', '2020-11-27 02:43:09'),
('ND001', '001', 'Quá hayyyyyyy', '2020-11-27 02:43:32'),
('ND001', '001', 'Alo', '2020-11-27 02:43:56'),
('ND001', '001', 'hay quáaaaaaaa', '2020-11-27 02:44:23'),
('ND001', '001', 'hay quáaaaaaaa', '2020-11-27 02:46:33'),
('ND001', '001', 'hay quáaaaaaaa', '2020-11-27 02:46:48'),
('ND001', '001', 'hay quáaaaaaaa', '2020-11-27 02:47:04'),
('ND001', '001', 'hay quáaaaaaaa', '2020-11-27 02:47:29'),
('ND001', '001', 'hay quáaaaaaaa', '2020-11-27 02:47:51'),
('ND001', '002', 'sdasd', '2020-11-27 03:31:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinhanh`
--

CREATE TABLE `chinhanh` (
  `ID_ChiNhanh` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `TenCN` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chinhanh`
--

INSERT INTO `chinhanh` (`ID_ChiNhanh`, `TenCN`, `DiaChi`, `DienThoai`, `Email`) VALUES
('001', 'Quận 1', '01 Nguyễn Trãi, quận 1', '0123456789', 'quan1123@gmail.com'),
('002', 'Quận 2', '01 quan2, quận 2.', '0123456789', 'quan2123@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chu_de_sach`
--

CREATE TABLE `chu_de_sach` (
  `ID_ChuDe` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `TenChuDe` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chu_de_sach`
--

INSERT INTO `chu_de_sach` (`ID_ChuDe`, `TenChuDe`) VALUES
('CD002', 'Tieu thuyết tình cảm'),
('CD003', 'Truyện kiếm hiệp'),
('CĐ001', 'Giáo dục');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `docgia`
--

CREATE TABLE `docgia` (
  `ID_DocGia` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `ID_QuanThu` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `docgia`
--

INSERT INTO `docgia` (`ID_DocGia`, `ID_QuanThu`, `NgayLap`) VALUES
('ND001', 'ND001', '2020-11-26 21:56:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `ID` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `HoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` datetime NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ChucVu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(300) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`ID`, `HoTen`, `NgaySinh`, `DiaChi`, `DienThoai`, `ChucVu`, `username`, `password`, `HinhAnh`) VALUES
('ND001', 'Trần Hoài Đức', '1999-10-19 10:14:56', 'LLQ, Q11', '0123456789', 'SV', 'duchoai', 'duchoai', 'Ảnh2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nha_xuat_ban`
--

CREATE TABLE `nha_xuat_ban` (
  `ID_NXB` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `TenNXB` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nha_xuat_ban`
--

INSERT INTO `nha_xuat_ban` (`ID_NXB`, `TenNXB`, `DiaChi`, `DienThoai`) VALUES
('NXB001', 'Nhà Xuất Bản Tổng hợp TP.HCM', 'không biết', ' 0123'),
('NXB002', 'NXB Kim Đồng', '207 Lê Hồng Phong, p5, q10, tp Hồ Chí Minh', '0111232131'),
('NXB003', 'NXB Văn Học', '601 CNT*, p15,q10,tp Hồ Chid Minh', '0123465689');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanly`
--

CREATE TABLE `quanly` (
  `ID_QuanLy` varchar(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanthu`
--

CREATE TABLE `quanthu` (
  `ID_QuanThu` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `ID_ChiNhanh` varchar(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quanthu`
--

INSERT INTO `quanthu` (`ID_QuanThu`, `ID_ChiNhanh`) VALUES
('ND001', '001');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sach`
--

CREATE TABLE `sach` (
  `ID_Sach` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `ID_ChuDe` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `ID_NXB` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `TenSach` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` int(11) NOT NULL,
  `tacGia` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhAnh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngayCapNhat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sach`
--

INSERT INTO `sach` (`ID_Sach`, `ID_ChuDe`, `ID_NXB`, `TenSach`, `Gia`, `tacGia`, `MoTa`, `hinhAnh`, `ngayCapNhat`) VALUES
('001', 'CĐ001', 'NXB001', 'Đắc Nhân Tâm', 38000, 'Dale Carnegie', 'Tại sao Đắc Nhân Tâm luôn trong Top sách bán chạy nhất thế giới?<br><br>Bởi vì đó là cuốn sách mọi người đều nên đọc.<br><br>Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.', 'images/DacNhanTam.jpg', '0000-00-00 00:00:00'),
('002', 'CD002', 'NXB002', 'Thanh Xuan Không Hối Tiếc', 4790000, 'Du Phong', '<br>Mỗi người có một cách khác nhau để sống những ngày tuổi trẻ, có người dành trọn nó cho những cuộc tình, có người dành trọn nó cho công việc, có người dành trọn nó để tự yêu thương mình, và cũng có những người chia tuổi trẻ của mình ra, để yêu một vài người, sau đó yêu mình, yêu người xung quanh mình, rồi đến một lúc nào đó thích hợp mới tiếp tục muốn yêu thêm một người cho đến hết cuộc đời.<br>\r\n<br>Dù người ta có dành tuổi trẻ của mình cho ai hay để làm gì, thì cũng mong sau này khi đã đủ chín chắn để ngoái đầu nhìn lại, họ cũng sẽ mỉm cười, một nụ cười vô ưu viên mãn.<br>', 'images/thanh_xuan_khong_hoi_tiec.jpg', '0000-00-00 00:00:00'),
('0021', 'CD002', 'NXB002', 'Thanh Xuan Không Hối Tiếc', 4790000, 'Du Phong', '<br>Mỗi người có một cách khác nhau để sống những ngày tuổi trẻ, có người dành trọn nó cho những cuộc tình, có người dành trọn nó cho công việc, có người dành trọn nó để tự yêu thương mình, và cũng có những người chia tuổi trẻ của mình ra, để yêu một vài người, sau đó yêu mình, yêu người xung quanh mình, rồi đến một lúc nào đó thích hợp mới tiếp tục muốn yêu thêm một người cho đến hết cuộc đời.<br>\r\n<br>Dù người ta có dành tuổi trẻ của mình cho ai hay để làm gì, thì cũng mong sau này khi đã đủ chín chắn để ngoái đầu nhìn lại, họ cũng sẽ mỉm cười, một nụ cười vô ưu viên mãn.<br>', 'images/thanh_xuan_khong_hoi_tiec.jpg', '0000-00-00 00:00:00'),
('003', 'CĐ001', 'NXB001', 'Đắc Nhân Tâm', 38000, 'Dale Carnegie', 'Tại sao Đắc Nhân Tâm luôn trong Top sách bán chạy nhất thế giới?<br><br>Bởi vì đó là cuốn sách mọi người đều nên đọc.<br><br>Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.', 'images/DacNhanTam.jpg', '0000-00-00 00:00:00'),
('0031', 'CĐ001', 'NXB001', 'Đắc Nhân Tâm', 38000, 'Dale Carnegie', 'Tại sao Đắc Nhân Tâm luôn trong Top sách bán chạy nhất thế giới?<br><br>Bởi vì đó là cuốn sách mọi người đều nên đọc.<br><br>Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.', 'images/DacNhanTam.jpg', '0000-00-00 00:00:00'),
('004', 'CĐ001', 'NXB001', 'Đắc Nhân Tâm', 38000, 'Dale Carnegie', 'Tại sao Đắc Nhân Tâm luôn trong Top sách bán chạy nhất thế giới?<br><br>Bởi vì đó là cuốn sách mọi người đều nên đọc.<br><br>Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.', 'images/DacNhanTam.jpg', '0000-00-00 00:00:00'),
('0044', 'CĐ001', 'NXB001', 'Đắc Nhân Tâm', 38000, 'Dale Carnegie', 'Tại sao Đắc Nhân Tâm luôn trong Top sách bán chạy nhất thế giới?<br><br>Bởi vì đó là cuốn sách mọi người đều nên đọc.<br><br>Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.', 'images/DacNhanTam.jpg', '0000-00-00 00:00:00'),
('005', 'CD002', 'NXB002', 'Thanh Xuan Không Hối Tiếc', 4790000, 'Du Phong', '<br>Mỗi người có một cách khác nhau để sống những ngày tuổi trẻ, có người dành trọn nó cho những cuộc tình, có người dành trọn nó cho công việc, có người dành trọn nó để tự yêu thương mình, và cũng có những người chia tuổi trẻ của mình ra, để yêu một vài người, sau đó yêu mình, yêu người xung quanh mình, rồi đến một lúc nào đó thích hợp mới tiếp tục muốn yêu thêm một người cho đến hết cuộc đời.<br>\r\n<br>Dù người ta có dành tuổi trẻ của mình cho ai hay để làm gì, thì cũng mong sau này khi đã đủ chín chắn để ngoái đầu nhìn lại, họ cũng sẽ mỉm cười, một nụ cười vô ưu viên mãn.<br>', 'images/thanh_xuan_khong_hoi_tiec.jpg', '0000-00-00 00:00:00'),
('005112', 'CD002', 'NXB002', 'Thanh Xuan Không Hối Tiếc', 4790000, 'Du Phong', '<br>Mỗi người có một cách khác nhau để sống những ngày tuổi trẻ, có người dành trọn nó cho những cuộc tình, có người dành trọn nó cho công việc, có người dành trọn nó để tự yêu thương mình, và cũng có những người chia tuổi trẻ của mình ra, để yêu một vài người, sau đó yêu mình, yêu người xung quanh mình, rồi đến một lúc nào đó thích hợp mới tiếp tục muốn yêu thêm một người cho đến hết cuộc đời.<br>\r\n<br>Dù người ta có dành tuổi trẻ của mình cho ai hay để làm gì, thì cũng mong sau này khi đã đủ chín chắn để ngoái đầu nhìn lại, họ cũng sẽ mỉm cười, một nụ cười vô ưu viên mãn.<br>', 'images/thanh_xuan_khong_hoi_tiec.jpg', '0000-00-00 00:00:00'),
('006', 'CĐ001', 'NXB001', 'Đắc Nhân Tâm', 38000, 'Dale Carnegie', 'Tại sao Đắc Nhân Tâm luôn trong Top sách bán chạy nhất thế giới?<br><br>Bởi vì đó là cuốn sách mọi người đều nên đọc.<br><br>Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.', 'images/DacNhanTam.jpg', '0000-00-00 00:00:00'),
('0061', 'CĐ001', 'NXB001', 'Đắc Nhân Tâm', 38000, 'Dale Carnegie', 'Tại sao Đắc Nhân Tâm luôn trong Top sách bán chạy nhất thế giới?<br><br>Bởi vì đó là cuốn sách mọi người đều nên đọc.<br><br>Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.', 'images/DacNhanTam.jpg', '0000-00-00 00:00:00'),
('006112', 'CĐ001', 'NXB001', 'Đắc Nhân Tâm', 38000, 'Dale Carnegie', 'Tại sao Đắc Nhân Tâm luôn trong Top sách bán chạy nhất thế giới?<br><br>Bởi vì đó là cuốn sách mọi người đều nên đọc.<br><br>Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.', 'images/DacNhanTam.jpg', '0000-00-00 00:00:00'),
('00612', 'CĐ001', 'NXB001', 'Đắc Nhân Tâm', 38000, 'Dale Carnegie', 'Tại sao Đắc Nhân Tâm luôn trong Top sách bán chạy nhất thế giới?<br><br>Bởi vì đó là cuốn sách mọi người đều nên đọc.<br><br>Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.', 'images/DacNhanTam.jpg', '0000-00-00 00:00:00'),
('008', 'CD002', 'NXB002', 'Thanh Xuan Không Hối Tiếc', 4790000, 'Du Phong', '<br>Mỗi người có một cách khác nhau để sống những ngày tuổi trẻ, có người dành trọn nó cho những cuộc tình, có người dành trọn nó cho công việc, có người dành trọn nó để tự yêu thương mình, và cũng có những người chia tuổi trẻ của mình ra, để yêu một vài người, sau đó yêu mình, yêu người xung quanh mình, rồi đến một lúc nào đó thích hợp mới tiếp tục muốn yêu thêm một người cho đến hết cuộc đời.<br>\r\n<br>Dù người ta có dành tuổi trẻ của mình cho ai hay để làm gì, thì cũng mong sau này khi đã đủ chín chắn để ngoái đầu nhìn lại, họ cũng sẽ mỉm cười, một nụ cười vô ưu viên mãn.<br>', 'images/thanh_xuan_khong_hoi_tiec.jpg', '0000-00-00 00:00:00'),
('010', 'CĐ001', 'NXB001', 'Đắc Nhân Tâm', 38000, 'Dale Carnegie', 'Tại sao Đắc Nhân Tâm luôn trong Top sách bán chạy nhất thế giới?<br><br>Bởi vì đó là cuốn sách mọi người đều nên đọc.<br><br>Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.', 'images/DacNhanTam.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sl_sach`
--

CREATE TABLE `sl_sach` (
  `ID_ChiNhanh` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `ID_Sach` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `SL_ThucTe` int(11) NOT NULL,
  `SL_Ton` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sl_sach`
--

INSERT INTO `sl_sach` (`ID_ChiNhanh`, `ID_Sach`, `SL_ThucTe`, `SL_Ton`) VALUES
('001', '006', 100, 10),
('002', '001', 100, 100),
('001', '002', 100, 100),
('001', '003', 100, 100),
('002', '004', 100, 100),
('002', '005', 100, 100),
('002', '006', 100, 100),
('001', '008', 100, 100),
('002', '010', 100, 100),
('001', '0021', 100, 100),
('001', '0031', 100, 100),
('001', '0044', 100, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xulivipham`
--

CREATE TABLE `xulivipham` (
  `ID_DocGia` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `NgayCam` datetime NOT NULL,
  `NgayKT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `xulivipham`
--

INSERT INTO `xulivipham` (`ID_DocGia`, `NgayCam`, `NgayKT`) VALUES
('ND001', '2020-12-31 10:00:51', '2020-11-17 10:00:51');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD KEY `bl_sach` (`ID_Sach`),
  ADD KEY `bl_dg` (`ID_DocGia`);

--
-- Chỉ mục cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`ID_ChiNhanh`);

--
-- Chỉ mục cho bảng `chu_de_sach`
--
ALTER TABLE `chu_de_sach`
  ADD PRIMARY KEY (`ID_ChuDe`);

--
-- Chỉ mục cho bảng `docgia`
--
ALTER TABLE `docgia`
  ADD PRIMARY KEY (`ID_DocGia`),
  ADD KEY `ID_QuanThu_FK_DocGia` (`ID_QuanThu`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `nha_xuat_ban`
--
ALTER TABLE `nha_xuat_ban`
  ADD PRIMARY KEY (`ID_NXB`);

--
-- Chỉ mục cho bảng `quanly`
--
ALTER TABLE `quanly`
  ADD PRIMARY KEY (`ID_QuanLy`);

--
-- Chỉ mục cho bảng `quanthu`
--
ALTER TABLE `quanthu`
  ADD PRIMARY KEY (`ID_QuanThu`),
  ADD KEY `ID_ChiNhanh_FK_QuanThu` (`ID_ChiNhanh`);

--
-- Chỉ mục cho bảng `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`ID_Sach`),
  ADD KEY `ID_NXB_FK` (`ID_NXB`),
  ADD KEY `ID_ChuDe_FK` (`ID_ChuDe`);

--
-- Chỉ mục cho bảng `sl_sach`
--
ALTER TABLE `sl_sach`
  ADD KEY `ID_ChiNhanh_FK_SLSach` (`ID_ChiNhanh`),
  ADD KEY `ID_Sach_FK_SLSach` (`ID_Sach`);

--
-- Chỉ mục cho bảng `xulivipham`
--
ALTER TABLE `xulivipham`
  ADD PRIMARY KEY (`ID_DocGia`),
  ADD KEY `ID_QuanThu_FK_XuLy` (`ID_DocGia`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `bl_dg` FOREIGN KEY (`ID_DocGia`) REFERENCES `docgia` (`ID_DocGia`),
  ADD CONSTRAINT `bl_sach` FOREIGN KEY (`ID_Sach`) REFERENCES `sach` (`ID_Sach`);

--
-- Các ràng buộc cho bảng `docgia`
--
ALTER TABLE `docgia`
  ADD CONSTRAINT `ID_DocGia_FK_DocGia` FOREIGN KEY (`ID_DocGia`) REFERENCES `nguoidung` (`ID`),
  ADD CONSTRAINT `ID_QuanThu_FK_DocGia` FOREIGN KEY (`ID_QuanThu`) REFERENCES `quanthu` (`ID_QuanThu`);

--
-- Các ràng buộc cho bảng `quanly`
--
ALTER TABLE `quanly`
  ADD CONSTRAINT `ID_QuanLy_FK_QuanLy` FOREIGN KEY (`ID_QuanLy`) REFERENCES `nguoidung` (`ID`);

--
-- Các ràng buộc cho bảng `quanthu`
--
ALTER TABLE `quanthu`
  ADD CONSTRAINT `ID_ChiNhanh_FK_QuanThu` FOREIGN KEY (`ID_ChiNhanh`) REFERENCES `chinhanh` (`ID_ChiNhanh`),
  ADD CONSTRAINT `ID_QuanThu_FK_QuanThu` FOREIGN KEY (`ID_QuanThu`) REFERENCES `nguoidung` (`ID`);

--
-- Các ràng buộc cho bảng `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `ID_ChuDe_FK` FOREIGN KEY (`ID_ChuDe`) REFERENCES `chu_de_sach` (`ID_ChuDe`),
  ADD CONSTRAINT `ID_NXB_FK` FOREIGN KEY (`ID_NXB`) REFERENCES `nha_xuat_ban` (`ID_NXB`);

--
-- Các ràng buộc cho bảng `sl_sach`
--
ALTER TABLE `sl_sach`
  ADD CONSTRAINT `ID_ChiNhanh_FK_SLSach` FOREIGN KEY (`ID_ChiNhanh`) REFERENCES `chinhanh` (`ID_ChiNhanh`),
  ADD CONSTRAINT `ID_Sach_FK_SLSach` FOREIGN KEY (`ID_Sach`) REFERENCES `sach` (`ID_Sach`);

--
-- Các ràng buộc cho bảng `xulivipham`
--
ALTER TABLE `xulivipham`
  ADD CONSTRAINT `xuly_dg` FOREIGN KEY (`ID_DocGia`) REFERENCES `docgia` (`ID_DocGia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
