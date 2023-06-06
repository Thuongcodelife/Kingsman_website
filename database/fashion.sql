-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 07:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashion`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(9) NOT NULL,
  `id_order` int(9) NOT NULL,
  `id_pro` int(9) NOT NULL,
  `quantity` int(9) NOT NULL DEFAULT 0,
  `prices` double(10,2) NOT NULL DEFAULT 0.00,
  `size` varchar(5) NOT NULL,
  `name_pro` varchar(50) DEFAULT NULL,
  `img_pro` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `id_order`, `id_pro`, `quantity`, `prices`, `size`, `name_pro`, `img_pro`) VALUES
(144, 88, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(145, 89, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(146, 90, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(147, 91, 74, 1, 30000000.00, 'M', 'White Shirt', 'shirt2.png'),
(148, 92, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(149, 93, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(150, 94, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(151, 95, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(152, 96, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(153, 97, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(154, 98, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(155, 99, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(156, 100, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(157, 101, 76, 1, 34000000.00, 'XXL', 'Black Shirt', 'shirt1.png'),
(158, 102, 73, 2, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(159, 103, 73, 2, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(160, 104, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(161, 105, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(162, 106, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(163, 107, 73, 1, 34500000.00, 'L', 'Overside Shirt', 'shirt4.png'),
(164, 108, 74, 1, 30000000.00, 'M', 'White Shirt', 'shirt2.png'),
(165, 108, 75, 1, 23000000.00, 'L', 'Blue Shirt', 'shirt3.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_catalog`
--

CREATE TABLE `tbl_catalog` (
  `id_catalog_k` int(4) NOT NULL,
  `catalog_name` varchar(50) NOT NULL,
  `prioritize` int(4) NOT NULL DEFAULT 0,
  `display_ctl` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_catalog`
--

INSERT INTO `tbl_catalog` (`id_catalog_k`, `catalog_name`, `prioritize`, `display_ctl`) VALUES
(79, 'Shirt', 1, 1),
(80, 'Suit', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `address` varchar(255) NOT NULL DEFAULT 'null',
  `email` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`id`, `fname`, `lname`, `sex`, `address`, `email`, `phone`, `user`, `password`) VALUES
(29, 'Thuong', 'Nguyen', 1, 'null', '2002@gmail.com', '0342888525', 'nhatthuong', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_methodpayment`
--

CREATE TABLE `tbl_methodpayment` (
  `id_method` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(9) NOT NULL,
  `invoice_id` varchar(20) NOT NULL,
  `total_prices` double(10,0) NOT NULL DEFAULT 0,
  `payment` tinyint(1) NOT NULL DEFAULT 1,
  `id_user` int(6) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL DEFAULT 'Not note',
  `due_date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `employee_pr` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `invoice_id`, `total_prices`, `payment`, `id_user`, `fname`, `lname`, `phone`, `email`, `address`, `notes`, `due_date`, `status`, `employee_pr`) VALUES
(103, 'KINGSMAN931842', 75900000, 2, 25, 'Thuong', 'Nguyen', '0342888525', '2052000@gm.uit.edu.vn', '63/6H Xuan Thoi Dong, Hoc Mon, TPHCM', '', '2023-06-06', 'Cancel', 1),
(104, 'KINGSMAN604861', 37950000, 2, 25, 'Thuong', 'Nguyen', '0342888525', '2052000@gm.uit.edu.vn', '63/6H Xuan Thoi Dong, Hoc Mon, TPHCM', '', '2023-06-06', 'Ordered', 1),
(105, 'KINGSMAN70517', 37950000, 2, 25, 'Thuong', 'Nguyen', '0342888525', '2052000@gm.uit.edu.vn', '63/6H Xuan Thoi Dong, Hoc Mon, TPHCM', 'Not note', '2023-06-06', 'Ordered', 1),
(106, 'KINGSMAN400057', 37950000, 2, 25, 'Thuong', 'Nguyen', '0342888525', '2052000@gm.uit.edu.vn', '63/6H Xuan Thoi Dong, Hoc Mon, TPHCM', '', '2023-06-06', 'Pending', 0),
(107, 'KINGSMAN978737', 37950000, 2, 29, 'Thuong', 'Nguyen', '0342888525', '2052000@gm.uit.edu.vn', '63/6H Xuan Thoi Dong, Hoc Mon, TPHCM', '', '2023-06-06', 'Pending', 0),
(108, 'KINGSMAN645650', 58300000, 1, 29, 'Thuong', 'Nguyen', '0342888525', '2052000@gm.uit.edu.vn', '63/6H Xuan Thoi Dong, Hoc Mon, TPHCM', '', '2023-06-06', 'Pending', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(6) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `product_img` varchar(50) NOT NULL,
  `product_prices` int(10) NOT NULL DEFAULT 0,
  `catalog_id` int(4) NOT NULL,
  `employee_entry` int(11) NOT NULL,
  `entry_date` date NOT NULL DEFAULT current_timestamp(),
  `sup_id` int(11) NOT NULL,
  `view` tinyint(4) NOT NULL DEFAULT 0,
  `special` tinyint(4) NOT NULL DEFAULT 0,
  `old_prices` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `size` varchar(5) NOT NULL DEFAULT 'L'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `product_name`, `quantity`, `product_img`, `product_prices`, `catalog_id`, `employee_entry`, `entry_date`, `sup_id`, `view`, `special`, `old_prices`, `description`, `size`) VALUES
(73, 'Overside Shirt', 113, 'shirt4.png', 34500000, 79, 1, '2023-06-04', 14, 1, 1, 380000, 'shirt, any of a variety of garments having sleeves and worn on the upper part of the body, often under a coat, jacket, or other garment. Shirts were worn as early as the 18th dynasty of ancient Egypt (c. 1539–1292 BCE); they were made of a rectangular pie', 'L'),
(74, 'White Shirt', 98, 'shirt2.png', 30000000, 79, 1, '2023-06-04', 14, 1, 0, 380000, 'shirt, any of a variety of garments having sleeves and worn on the upper part of the body, often under a coat, jacket, or other garment. Shirts were worn as early as the 18th dynasty of ancient Egypt (c. 1539–1292 BCE); they were made of a rectangular pie', 'M'),
(75, 'Blue Shirt', 99, 'shirt3.png', 23000000, 79, 1, '2023-06-04', 14, 0, 0, 380000, 'shirt, any of a variety of garments having sleeves and worn on the upper part of the body, often under a coat, jacket, or other garment. Shirts were worn as early as the 18th dynasty of ancient Egypt (c. 1539–1292 BCE); they were made of a rectangular pie', 'L'),
(76, 'Black Shirt', 99, 'shirt1.png', 34000000, 79, 1, '2023-06-04', 14, 1, 1, 380000, 'shirt, any of a variety of garments having sleeves and worn on the upper part of the body, often under a coat, jacket, or other garment. Shirts were worn as early as the 18th dynasty of ancient Egypt (c. 1539–1292 BCE); they were made of a rectangular pie', 'XXL'),
(77, 'Grey Suit', 98, 'suit (1).png', 34000000, 80, 1, '2023-06-04', 16, 1, 1, 500000, 'shirt, any of a variety of garments having sleeves and worn on the upper part of the body, often under a coat, jacket, or other garment. Shirts were worn as early as the 18th dynasty of ancient Egypt (c. 1539–1292 BCE); they were made of a rectangular pie', 'L'),
(78, 'Men Suit', 0, 'suit (2).png', 23000000, 80, 1, '2023-06-04', 16, 1, 1, 380000, 'shirt, any of a variety of garments having sleeves and worn on the upper part of the body, often under a coat, jacket, or other garment. Shirts were worn as early as the 18th dynasty of ancient Egypt (c. 1539–1292 BCE); they were made of a rectangular pie', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `sup_id` int(11) NOT NULL,
  `sup_name` varchar(255) NOT NULL,
  `sup_address` varchar(255) NOT NULL,
  `sup_bank` int(11) NOT NULL,
  `sup_tax_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`sup_id`, `sup_name`, `sup_address`, `sup_bank`, `sup_tax_code`) VALUES
(14, 'Gucci', 'US', 123123, 123123),
(16, 'Homes', 'US', 1231231, 123123);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name_us` varchar(50) DEFAULT NULL,
  `address_us` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `user` varchar(20) NOT NULL,
  `password_us` varchar(20) NOT NULL,
  `role_us` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name_us`, `address_us`, `email`, `user`, `password_us`, `role_us`) VALUES
(1, 'Thưởng', 'KTXkhuA', '20522000@gm.uit.edu.vn', 'adminthuong', '123123', 1),
(2, 'Hương', 'Bình Dương', '20521381@gm.uit.edu.vn', 'adminhuong', '123123', 1),
(9, 'Hoà', 'ktxkhuA', '20521331@gmail.com', 'adminhoa', '123123', 1),
(10, 'Lâm', 'Củ Chi', '20521515@gm.uit.edu.vn', 'adminlam', '123123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_catalog`
--
ALTER TABLE `tbl_catalog`
  ADD PRIMARY KEY (`id_catalog_k`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_methodpayment`
--
ALTER TABLE `tbl_methodpayment`
  ADD PRIMARY KEY (`id_method`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `fk_product_catalog` (`catalog_id`),
  ADD KEY `fk_employee_entry` (`employee_entry`),
  ADD KEY `fk_supplier` (`sup_id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`sup_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `tbl_catalog`
--
ALTER TABLE `tbl_catalog`
  MODIFY `id_catalog_k` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_methodpayment`
--
ALTER TABLE `tbl_methodpayment`
  MODIFY `id_method` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `fk_employee_entry` FOREIGN KEY (`employee_entry`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `fk_product_catalog` FOREIGN KEY (`catalog_id`) REFERENCES `tbl_catalog` (`id_catalog_k`),
  ADD CONSTRAINT `fk_supplier` FOREIGN KEY (`sup_id`) REFERENCES `tbl_supplier` (`sup_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
