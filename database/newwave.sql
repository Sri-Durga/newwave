-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jun 15, 2021 at 06:13 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newwave`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Sri', 'neelapusri@gmail.com', 'sri19189');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Oppo'),
(4, 'HP'),
(5, 'Macintosh'),
(6, 'Lenovo'),
(7, 'Electronics Gadgets'),
(8, 'Home Appliances'),
(9, 'Womens'),
(10, 'Mens'),
(11, 'Kids');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'ALL'),
(2, 'Electronics'),
(3, 'Ladies Wear'),
(4, 'Mens Wear'),
(5, 'Kids Wear'),
(6, 'Electronics Gadgets'),
(7, 'Home Appliances'),
(8, 'User Requests');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `filename`, `desc`) VALUES
(1, 'add1.PNG', ''),
(2, 'add1.PNG', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 1, 'Sri Neelapu', '18501a0586@gmail.com', 'Vijayawada', 'Nidamanuru', 'AP', 521104, 'Sri Durga', '4567 3456 2736', '12/23', 1, 1999, 123),
(2, 1, 'Sri Neelapu', '18501a0586@gmail.com', 'Vijayawada', 'Nidamanuru', 'asd', 123456, 'dsadwdewd', '4543 6565 7658', '12/23', 3, 5854, 3434),
(3, 1, 'Sri Neelapu', '18501a0586@gmail.com', 'Vijayawada', 'Nidamanuru', 'AP', 234567, 'Sri Durga', '123456783456', '12/23', 2, 3855, 234);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(1, 1, 4, 1, 1999),
(2, 2, 0, 2, 3998),
(3, 2, 0, 5, 6495),
(4, 2, 0, 5, 12780),
(5, 3, 0, 4, 5196),
(6, 3, 0, 3, 7668);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 3, 9, 'Women\'s Cotton Kurta', 1299, '100% Handloom\r\nComes With Handloom Mark.\r\nColor: Yellow \r\nLength: Calf Long\r\nNeck Type: Round Neck\r\nSleeve Type: 3/4 Sleeve\r\nMaterial: Cotton\r\nAbout Handloom Mark: Handloom Mark Is The Government Of India\'S Initiative To Provide A Collective Identity To The Handloom Products In India And Can Be Used Not Only For Popularizing The Hand Woven Products But Can Also Serve As A Guarantee For The Buyer That The Product Being Purchased Is Genuinely Hand Woven From India \r\nFit Type: Regular Fit', 'img1(1).PNG', 'Kurthas'),
(2, 3, 9, 'Anarkali Kurti for Women', 2556, 'Care Instructions: Hand wash\r\nkurti for women sleeveless gown kurties woman long gowns kurtis tops new fashion 2018 anarkali womens under 500 stylish 300 leriya combo girls years kurta below 200\r\nwomens kurti kurtis cotton silk khadi shining long sleeve straight printed fashionable a-line designer wear for girls gown style new design ladies anarkali dress\r\nkurti kurta anarkali for womens women a line stylish ladies om sai creation on jeans design designer wear long combo girls new pattern\r\nkurti for women, kurtis for women, anarkali kurtis for womens, long kurtis for women stylish, womans fashion kurti, kurtas for womens, kurta women\r\nkurti kurtis for women cotton girls stylish colour size blue jaipuri janasya myx cloth tunics type clothing', 'img2(1).PNG', 'Kurthis'),
(3, 2, 5, 'Apple MacBook Pro', 97599, 'Colour: Space Grey\r\nBrand	Apple\r\nHuman Interface Input	Keyboard\r\nOperating System	MacOS 10.15 Catalina\r\nHard Disk Description	Flash Memory Solid State\r\nHardware Interface	USB Type C, Thunderbolt\r\nEighth-generation quad-core Intel Core i5 processor\r\nBrilliant Retina display with True Tone technology\r\nBacklit Magic Keyboard\r\nTouch Bar and Touch ID  \r\nIntel Iris Plus Graphics 645\r\nUltra-fast SSD\r\nTwo Thunderbolt 3 (USB-C) ports\r\nUp to 10 hours of battery life\r\n802.11ac Wi-Fi\r\nForce Touch trackpad', 'img3(1).PNG', 'Macbook'),
(4, 6, 7, 'Wireless Neckband', 1999, 'Special Feature: Android Phone Control, IOS Phone Control, Lightweight, Volume-Control, Foldable, Microphone Feature, Water ResistantAndroid Phone Control, IOS Phone Control, Lightweight, Volume-Control, Foldable, Microphone Feature, Water Resistant\r\nConnector Type	Wireless\r\nBrand	Boat\r\nWireless Communication Technology Bluetooth\r\nMaterial: Plastic, Metal', 'img4(1).PNG', 'neckband'),
(5, 2, 6, 'Lenovo Tab M10', 14999, 'Color: Platinum Grey\r\nSize name: 2 GB RAM\r\nPattern name: Tablet\r\nBrand: Lenovo\r\nOperating System: Android 9.0 Pie\r\nScreen Size:10.3 Inches\r\nCPU Manufacturer: MediaTek\r\nWireless Communication Technology	Cellular\r\n2GB RAM, 32GB internal memory expandable up to 128GB, Single Nano SIM', 'img5(1).PNG', 'Lenovo');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prd_name` varchar(100) NOT NULL,
  `prd_img` varchar(300) NOT NULL,
  `prd_desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `user_id`, `prd_name`, `prd_img`, `prd_desc`) VALUES
(1, 1, 'Laptops', '12039452_525963140912391_6353341236808813360_n.png', 'HP'),
(2, 0, 'Saree', 'a2.jpg', 'Fancy saree'),
(3, 0, 'ewfdeffvf', '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg', 'fewf'),
(4, 0, 'sdjhdouewjdwms;l,sepoqie', 'product04.png', 'dojfoiufofjofjdmfd;kjfdjfiewwouerouewoueopiwp[epe[`[]wp1e0=39rei3fdkekdlksmclkshvfreygufiqjdqwmdwmdkejfiyuoewuoqie[qlww,k;wqjepiwyrouewfhonclmsamx;akd[aidpwurifhy');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Sri', 'Neelapu', '18501a0586@gmail.com', 'sri19189sri', '6544623495', 'Vijayawada', 'Nidamanuru'),
(2, 'Sravya', 'Thogaram', 'sravyathogaram@gmail.com', 'sravyathogaram', '6544623495', 'Vijayawada', 'Kanuru');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Sri', 'Neelapu', '18501a0586@gmail.com', 'sri19189sri', '6544623495', 'Vijayawada', 'Nidamanuru'),
(2, 'Sravya', 'Thogaram', 'sravyathogaram@gmail.com', 'sravyathogaram', '6544623495', 'Vijayawada', 'Kanuru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
