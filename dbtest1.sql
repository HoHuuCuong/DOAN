-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 17, 2022 lúc 10:07 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
USE test1;
--
-- Cơ sở dữ liệu: `test1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `user` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `date` varchar(40) CHARACTER SET utf8mb4 NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`user`, `bill_id`, `date`, `total`) VALUES
(26, 32, '2022-04-17 15:06:00', 4500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `add_date` varchar(40) CHARACTER SET utf8mb4 NOT NULL,
  `payment_time` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `ten_nguoinhan` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdt_nguoinhan` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `diachi_giaohang` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `shoe_id`, `size`, `quantity`, `status`, `add_date`, `payment_time`, `ten_nguoinhan`, `sdt_nguoinhan`, `diachi_giaohang`) VALUES
(51, 26, 4, 38, 2, 'Paid', '2022-04-17 15:05:43', '2022-04-17 15:06:00', 'sadasda', '0920939', '12321321sad'),
(52, 26, 2, 38, 3, 'Paid', '2022-04-17 15:05:46', '2022-04-17 15:06:00', 'sadasda', '0920939', '12321321sad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detailbill`
--

CREATE TABLE `detailbill` (
  `bill_id` int(11) NOT NULL,
  `shoe_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `detailbill`
--

INSERT INTO `detailbill` (`bill_id`, `shoe_id`, `quantity`, `price`) VALUES
(32, 4, 2, 900000),
(32, 2, 3, 900000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shoes`
--

CREATE TABLE `shoes` (
  `shoe_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `brand` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `qty38` int(11) NOT NULL,
  `qty39` int(11) NOT NULL,
  `qty40` int(11) NOT NULL,
  `qty41` int(11) NOT NULL,
  `category` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `mota` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `shoes`
--

INSERT INTO `shoes` (`shoe_id`, `name`, `brand`, `qty38`, `qty39`, `qty40`, `qty41`, `category`, `price`, `image`, `image2`, `image3`, `mota`) VALUES
(1, 'Adidas Bravada', 'Adidas', 42, 30, 30, 40, 'Thể thao', 600000, 'img/Adidas/bravada.jpg', 'img/Adidas/bravada2.jpg', 'img/Adidas/bravada3.jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(2, 'Adidas Breaknet', 'Adidas', 42, 30, 30, 40, 'Thể thao', 900000, 'img/adidas/breaknet.jpg', 'img/adidas/breaknet2.jpg', 'img/adidas/breaknet3.jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(3, 'Adidas Grandcourt', 'Adidas', 46, 30, 30, 40, 'Thể thao', 900000, 'img/adidas/grandcourt.jpg', 'img/adidas/grandcourt2.jpg', 'img/adidas/grandcourt3.jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(4, 'Adidas Nizza', 'Adidas', 46, 30, 30, 40, 'Thể thao', 900000, 'img/adidas/nizza.jpg', 'img/adidas/nizza2.jpg', 'img/adidas/nizza3.jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(5, 'Puma Carson', 'Puma', 46, 30, 30, 40, 'Thể thao', 900000, 'img/puma/carson.jpg', 'img/puma/carson2.jpg', 'img/puma/carson3.jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(6, 'Puma Ferrari', 'Puma', 46, 30, 30, 40, 'Thể thao', 900000, 'img/puma/ferrari.jpg', 'img/puma/ferrari2.jpg', 'img/puma/ferrari3.jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(7, 'Puma Suede', 'Puma', 46, 30, 30, 40, 'Thể thao', 900000, 'img/puma/suede.jpg', 'img/puma/suede2.jpg', 'img/puma/suede3.jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(8, 'Nike Airforce', 'Nike', 46, 30, 30, 40, 'Thể thao', 900000, 'img/nike/airforce.jpg', 'img/nike/airforce2.jpg', 'img/nike/airforce3.jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(9, 'Nike Jordan 1 Retro', 'Nike', 46, 30, 30, 40, 'Thể thao', 900000, 'img/nike/jordan1retro.jpg', 'img/nike/jordan1retro2.jpg', 'img/nike/jordan1retro3.jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(10, 'Nike Jordan Orange', 'Nike', 46, 30, 30, 40, 'Thể thao', 900000, 'img/nike/jordanorange.jpg', 'img/nike/jordanorange2.jpg', 'img/nike/jordanorange3.jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(11, 'Air Max 270', 'Nike', 45, 30, 30, 40, 'Thể thao', 1000000, 'img/nike/airmax270.jpg', 'img/nike/airmax270(2).jpg', 'img/nike/airmax270(3).jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(12, 'Menenzo', 'Puma', 46, 30, 30, 40, 'Thể thao', 1500000, 'img/puma/menenzo.jpg', 'img/puma/menenzo2.jpg', 'img/puma/menenzo3.jpg', 'Sản phẩm luôn thuộc vào một trong những thương hiệu thời trang hàng đầu được thiết kế vô cùng trẻ trung và năng động. Với kiểu dáng gọn gàng, màu sắc cá tính và kiểu dáng thanh thoát các dòng sản phẩm luôn giữ cho mình một sức hút riêng. Sự mạnh mẽ vốn có'),
(16, 'sp1', 'Nike', 49, 30, 30, 40, '', 1000000, 'img/Nike/background.jpg', 'img/Nike/background1.jpg', 'img/Nike/favreleuba.jpg', NULL),
(18, 'sp2', 'Adidas', 43, 30, 30, 40, '', 900000, 'img/Adidas/64454936_p0_master1200.jpg', 'img/Adidas/68296699_p0.png', 'img/Adidas/75051139_p0_master1200.jpg', NULL),
(19, 'sp4', 'Nike', 20, 30, 30, 10, '', 900000, 'img/Puma/75321273_p0.jpg', 'img/Puma/88544119_p0.png', 'img/Puma/68296699_p0.png', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `pass` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `sdt` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `pass`, `email`, `sdt`, `role`) VALUES
(25, '2265188', 'gvout@gmail.com', '28392183', 'admin'),
(26, '2265188', 'icwhgt1485319@gmail.com', '28392183', 'guest');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `fk_user` (`user`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userid` (`user_id`),
  ADD KEY `fk_shoeid` (`shoe_id`);

--
-- Chỉ mục cho bảng `detailbill`
--
ALTER TABLE `detailbill`
  ADD KEY `fk_db_shoeid` (`shoe_id`),
  ADD KEY `fk_db_billid` (`bill_id`);

--
-- Chỉ mục cho bảng `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`shoe_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `shoes`
--
ALTER TABLE `shoes`
  MODIFY `shoe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_shoeid` FOREIGN KEY (`shoe_id`) REFERENCES `shoes` (`shoe_id`),
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `detailbill`
--
ALTER TABLE `detailbill`
  ADD CONSTRAINT `fk_db_billid` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`),
  ADD CONSTRAINT `fk_db_shoeid` FOREIGN KEY (`shoe_id`) REFERENCES `shoes` (`shoe_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
