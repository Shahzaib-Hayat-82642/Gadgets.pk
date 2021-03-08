-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jul 08, 2020 at 08:51 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gadgets`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'SHAHZAIB HAYAT', 'shahzaib.1601186@gmail.com ', '123', 'IMG_20191014_105435_4.jpg', 'PAKISTAN', ' CS STUDENT', '0313-2422112', 'WEB DEVELOPER'),
(2, 'Qais', 'qais.2@gmail.com', '456', 'member2.jpg', 'Pakistan', 'CS STUDENT', '0321-2121212', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

DROP TABLE IF EXISTS `boxes_section`;
CREATE TABLE IF NOT EXISTS `boxes_section` (
  `box_id` int(10) NOT NULL AUTO_INCREMENT,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL,
  PRIMARY KEY (`box_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'Guaranteed Products', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem praesentium, tenetur animi assumenda harum quae minus, odio, quisquam delectus, modi ipsa alias deserunt non vero eveniet nobis iure quis id.'),
(2, '100% Original', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem praesentium, tenetur animi assumenda harum quae minus, odio, quisquam delectus, modi ipsa alias deserunt non vero eveniet nobis iure quis id.'),
(3, 'Fast Delivery ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem praesentium, tenetur animi assumenda harum quae minus, odio, quisquam delectus, modi ipsa alias deserunt non vero eveniet nobis iure quis id.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, ' Apple ', 'yes', 'apple logo.png'),
(2, 'Huawei', 'yes', 'huawei logo.jpg'),
(3, 'Samsung ', 'yes', 'samsung logo.png'),
(4, 'Lenovo ', 'no', 'lenovo logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(2, 'TEST', 'test1@gmail.com', 'test', 'Pakistan', 'KARACHI', '03132422112', 'HOUSE#53, NEAR JAMA MASJID MUFTI AHMAD-UL-RAHMAN OPP: PMTF, CATTLE COLONY, MALIR', 'erika.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `c_c_o_fk` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `color`, `order_date`, `order_status`) VALUES
(2, 2, 90, 1073163808, 1, 'white', '2020-07-08', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(1, 875414636, 40, 'Easy Paisa', 4256, 312, '7/8/2020'),
(2, 1073163808, 90, 'Back Code', 555, 31324, '7/8/2020');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

DROP TABLE IF EXISTS `pending_orders`;
CREATE TABLE IF NOT EXISTS `pending_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `c_p_o_fk` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `color`, `order_status`) VALUES
(2, 2, 1073163808, '11', 1, 'white', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_desc` text NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `p_c_fk` (`cat_id`),
  KEY `p_p_c_fk` (`p_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(1, 1, 1, '2020-07-07 20:44:37', 'Apple Laptop', 'apple 2018 Macbook.jpg', 'Apple MPXT2.jpg', 'Apple MQD32.jpg', 200, 'Apple', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?'),
(2, 1, 2, '2020-07-07 20:47:48', 'Huawei Laptop ', 'huawei matebook 13.jpg', 'Huawei-honor magicbook.jpg', 'Huawei-MateBook-X.jpg', 150, 'Huawei', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?'),
(3, 1, 3, '2020-07-07 20:49:02', 'Samsung Laptop', 'laptop 3110.jpg', 'laptop np530.jpg', 'Notebook 9 pro.jpg', 170, 'Samsung', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?'),
(4, 1, 4, '2020-07-07 20:50:10', 'Lenovo Laptop', 'Lenovo Ideapad 330.jpg', 'Lenovo Ideapad ci5.jpg', 'lenovo_thinkpad_p73.jpg', 70, 'Lenovo', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?'),
(5, 2, 1, '2020-07-07 20:51:57', 'Apple Mobile', 'Iphone 6plus.jpeg', 'Iphone 7.jpg', 'Iphone 11 pro max.jpg', 170, 'Apple', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?'),
(6, 2, 2, '2020-07-07 20:52:58', 'Huawei Mobile', 'huawei p40 lite.jpg', 'huawei y6.jpg', 'huawei y9s.jpg', 60, 'Huawei', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?'),
(7, 2, 4, '2020-07-07 20:53:57', 'Lenovo Mobile', 'lenovo-k6.jpg', 'lenovo-s5.jpg', 'lenovo-z6.jpg', 40, 'Lenovo', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?'),
(8, 2, 3, '2020-07-07 20:54:52', 'Samsung Mobile', 'samsung galaxy 8.jpg', 'samsung-galaxy-s6-edge.jpeg', 'samsung-galaxy-s10-lite.jpg', 90, 'Samsung', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?'),
(9, 3, 1, '2020-07-07 20:55:54', 'Apple Tablet', 'IPad 3.jpg', 'Ipad pro 3.jpg', 'Ipad(with wifi-32gb).jpg', 130, 'Apple', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?'),
(10, 3, 2, '2020-07-07 20:56:49', 'Huawei Tablet', 'huawei m3.jpg', 'huawei m5 pro.jpg', 'huawei t3.jpg', 70, 'Huawei', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?'),
(11, 3, 3, '2020-07-07 20:57:56', 'Samsung Tablet', 'samsung 4.jpg', 'samsung A10.1.jpg', 'samsung s6.jpg', 90, 'Samsung', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?'),
(12, 3, 4, '2020-07-07 20:58:57', 'Lenovo Tablet', 'Lenovo Tab M8.jpg', 'lenovo_tab_4.jpg', 'Lenovo-Tab-3.jpg', 40, 'Lenovo', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim officia odio, exercitationem ducimus aspernatur quos sit, tempora fuga error animi dolores, iure, impedit pariatur quia repellendus minus dicta saepe praesentium?');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `p_cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL,
  PRIMARY KEY (`p_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'Laptop ', 'yes', 'laptop logo.jpg'),
(2, 'Mobile ', 'yes', 'mobile logo.jpg'),
(3, 'Tablet ', 'no', 'tablet logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slide_id` int(10) NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) DEFAULT NULL,
  `slide_image` text,
  `slide_url` varchar(255) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(5, 'Slide number 1', 'rsz_apple_extra_logo.jpg', 'http://localhost/gadgets.pk/index.php'),
(6, 'Slide number 2', 'slider-number-10.jpg', 'http://localhost/gadgets.pk/shop.php'),
(7, 'Slide number 3', 'slider-number-14.jpg', 'http://localhost/gadgets.pk/contact.php'),
(8, 'Slide number 4', 'slider-number-9.jpg', 'http://localhost/gadgets.pk/registration.php');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
CREATE TABLE IF NOT EXISTS `terms` (
  `term_id` int(10) NOT NULL AUTO_INCREMENT,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'terms & conditions ', 'terms', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem praesentium, tenetur animi assumenda harum quae minus, odio, quisquam delectus, modi ipsa alias deserunt non vero eveniet nobis iure quis id. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem praesentium, tenetur animi assumenda harum quae minus, odio, quisquam delectus, modi ipsa alias deserunt non vero eveniet nobis iure quis id.'),
(2, 'Refund Policy ', 'refund', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem praesentium, tenetur animi assumenda harum quae minus, odio, quisquam delectus, modi ipsa alias deserunt non vero eveniet nobis iure quis id. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem praesentium, tenetur animi assumenda harum quae minus, odio, quisquam delectus, modi ipsa alias deserunt non vero eveniet nobis iure quis id.'),
(3, 'Promo', 'promo', ' Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem praesentium, tenetur animi assumenda harum quae minus, odio, quisquam delectus, modi ipsa alias deserunt non vero eveniet nobis iure quis id. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem praesentium, tenetur animi assumenda harum quae minus, odio, quisquam delectus, modi ipsa alias deserunt non vero eveniet nobis iure quis id.');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD CONSTRAINT `c_c_o_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD CONSTRAINT `c_p_o_fk` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `p_c_fk` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `p_p_c_fk` FOREIGN KEY (`p_cat_id`) REFERENCES `product_categories` (`p_cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
