-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 23, 2024 at 04:24 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `cpassword`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin'),
(2, 'madhankumar@gmail.com', 'Madhan@123', 'Madhan@123'),
(3, 'karan@gmail.com', 'karan@123', 'karan@123'),
(4, 'gopikrishna@gmail.com', 'Gopi@1234', 'Gopi@1234'),
(5, 'bharath@gmail.com', 'barath123', 'barath123'),
(6, 'rajakumar@gmail.com', 'raja143', 'raja143'),
(7, 'jagadeesh@gmail.com', 'kicha@123', 'kicha@123'),
(8, 'raaghavvenkatesh@gmail.com', 'raghav123', 'raghav123'),
(9, 'kiruba@gmail.com', 'kiruba143', 'kiruba143'),
(10, 'shraddhagawade@gmail.com', 'shraddhu0404', 'shraddhu0404'),
(11, 'sijuaravind@gmail.com', 'siju@123', 'siju@123');

-- --------------------------------------------------------

--
-- Table structure for table `alltest`
--

DROP TABLE IF EXISTS `alltest`;
CREATE TABLE IF NOT EXISTS `alltest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `original_price` varchar(255) NOT NULL,
  `selling_price` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alltest`
--

INSERT INTO `alltest` (`id`, `test_id`, `name`, `original_price`, `selling_price`, `created_at`, `status`, `slug`) VALUES
(1, '1', ' RANTES test', '4999', '3599', '2023-11-20 05:07:06', 0, ' RANTES test'),
(2, '1', ' Hypersensitivity to mercaptans  and thioethers', '1199', '699', '2023-11-20 05:07:40', 0, ' Hypersensitivity to mercaptans  and thioethers'),
(3, '1', ' LTT test for dental metals,  ceramics and cement', '799', '449', '2023-11-20 05:08:11', 0, ' LTT test for dental metals,  ceramics and cement'),
(4, '1', ' Titanium sensitivity test', '1099', '599', '2023-11-20 05:08:42', 0, ' Titanium sensitivity test'),
(5, '1', ' DNA analysis of periodontitis -associated microbes', '799', '599', '2023-11-20 05:09:12', 0, ' DNA analysis of periodontitis -associated microbes'),
(6, '3', ' Bitewing X-Ray', '4999', '3999', '2023-11-20 05:12:54', 0, 'Bitewing X-Ray'),
(7, '3', ' Periapical X-Ray', '1199', '649', '2023-11-20 05:13:22', 0, 'Periapical X-Ray'),
(8, '3', ' Occlusal X-Ray', '799', '499', '2023-11-20 05:13:53', 0, 'Occlusal X-Ray'),
(9, '3', ' Panoramic X-Ray', '799', '599', '2023-11-20 05:14:36', 0, 'Panoramic X-Ray'),
(10, '3', ' Cephalometric Projection', '1099', '599', '2023-11-20 05:15:05', 0, 'Cephalometric Projection'),
(11, '2', 'Normal DentalCheckup', '4000', '3599', '2023-11-22 18:07:59', 0, ' Normal DentalCheckup'),
(12, '2', 'Teeth Care Checkup', '1199', '649', '2023-11-22 18:08:40', 0, ' Teeth Care Checkup'),
(13, '2', 'Gum Care Checkup', '799', '499', '2023-11-22 18:09:05', 0, ' Gum Care Checkup'),
(14, '2', 'Jawline Checkup', '1099', '799', '2023-11-22 18:09:37', 0, ' Jawline Checkup'),
(15, '2', 'Cavity Checkup', '799', '599', '2023-11-22 18:10:07', 0, ' Cavity Checkup');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `problem` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `booking_type` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `appointmentDate` date NOT NULL,
  `appointmentTime` time NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `appointment_status` varchar(255) NOT NULL,
  `doctor_status` varchar(255) NOT NULL,
  `image` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `location`, `problem`, `created_at`, `booking_type`, `age`, `gender`, `appointmentDate`, `appointmentTime`, `doctor_id`, `appointment_status`, `doctor_status`, `image`) VALUES
(1, '1', 'MADHAN R KUMAR', 'madhanrkumar2003@gmail.com', '9384840407', '52/96, MADDOX STREET\r\nCHOOLAI', 'Chennai', 'severe pain in premolar n gums', '0000-00-00 00:00:00', 'Normal Call', '20', 'Male', '0000-00-00', '00:00:00', '1', 'accepted', '', ''),
(2, '1', 'MADHAN R KUMAR', 'madhanrkumar2003@gmail.com', '9384840407', '52/96, MADDOX STREET\r\nCHOOLAI', 'Chennai', '.', '0000-00-00 00:00:00', 'Normal Call', '20', 'Male', '0000-00-00', '00:00:00', '1', '', '', ''),
(3, '1', 'Jagan ', 'jagan@gmail.com', '9384840407', '124, vadivel street, vallapuram', 'Chennai', 'severe pain in upper tooth', '0000-00-00 00:00:00', 'SMS', '32', 'Male', '0000-00-00', '00:00:00', '', '', '', 'logodental.jpeg'),
(4, '1', 'sugan', 'sugan@gmail.com', '9384840407', '15, panther road, chennai', 'near vasuki automobiles', 'severe pain in upper tooth', '0000-00-00 00:00:00', 'SMS', '14', 'Male', '0000-00-00', '00:00:00', '', '', '', 'logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `test_id` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `test_id`, `total_price`, `created_at`) VALUES
(4, '1', '1', '3599', '0000-00-00 00:00:00'),
(5, '1', '2', '699', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctor_register`
--

DROP TABLE IF EXISTS `doctor_register`;
CREATE TABLE IF NOT EXISTS `doctor_register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `doctor_register`
--

INSERT INTO `doctor_register` (`id`, `name`, `gender`, `age`, `password`, `cpassword`, `specialist`, `phone`, `email`, `status`) VALUES
(1, 'madhankumar', 'male', '20', 'Madhan@12345', 'Madhan@12345', 'bds', '9384840407', 'madhanrkumar2003@gmail.com', ''),
(2, 'Gopi Krishnan', 'male', '20', 'GopiKitty@1234', 'GopiKitty@1234', 'BDS', '9876543210', 'gopikrishnan@gmail.com', ''),
(3, 'Krishnan', 'male', '54', 'bekay@123', 'bekay@123', 'Ms.dentist', '8807098807', 'Krishnanb@gmail.com', ''),
(4, 'Shraddha Gawade', 'female', '35', 'shraddhu@123', 'shraddhu@123', 'Ms.dentist', '9551247896', 'shraddhagawade@gmail.com', ''),
(5, 'Kiruba', 'male', '20', 'kiruba@123', 'kiruba@123', 'BDS', '9552714368', 'kiruba@gmail.com', ''),
(6, 'rajaharish', 'male', '69', 'raja@123', 'raja@123', 'MDS', '7358946120', 'rajakumar@gmail.com', ''),
(7, 'santhosh', 'male', '25', 'sandy@123', 'sandy@123', 'BDS', '7536984127', 'santhosh@gmail.com', ''),
(8, 'rajaharish', 'male', '69', 'raja@123', 'raja@123', 'MDS', '7358946120', 'rajakumar@gmail.com', ''),
(9, 'Saajid', 'male', '40', 'sajid@123', 'sajid@123', 'BDS', '8496572310', 'saajid@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` int NOT NULL,
  `feedback_text` text NOT NULL,
  `user_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flat_no` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `card_id` int NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `tracking_no` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `online_pay` varchar(255) NOT NULL,
  `appointmentDate` date NOT NULL,
  `appointmentTime` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `flat_no`, `user_id`, `address`, `email`, `phone`, `created_at`, `card_id`, `total_price`, `tracking_no`, `payment_mode`, `online_pay`, `appointmentDate`, `appointmentTime`) VALUES
(1, '56', '1', '52/96, MADDOX STREET\r\nCHOOLAI', 'madhanrkumar2003@gmail.com', '9384840407', '0000-00-00 00:00:00', 0, '3599', 'dental201384840407', 'online', 'gpay', '0000-00-00', '00:00:00'),
(2, '56', '1', '52/96, MADDOX STREET\r\nCHOOLAI', 'madhanrkumar2003@gmail.com', '9384840407', '0000-00-00 00:00:00', 0, '3599', 'dental583884840407', 'online', '', '0000-00-00', '00:00:00'),
(3, '56', '1', '52/96, MADDOX STREET\r\nCHOOLAI', 'madhanrkumar2003@gmail.com', '9384840407', '0000-00-00 00:00:00', 0, '0', 'dental851184840407', 'online', '', '0000-00-00', '00:00:00'),
(4, '56', '1', '52/96, MADDOX STREET\r\nCHOOLAI', 'madhanrkumar2003@gmail.com', '9384840407', '0000-00-00 00:00:00', 0, '0', 'dental997384840407', 'online', '', '0000-00-00', '00:00:00'),
(5, '56', '1', '52/96, MADDOX STREET\r\nCHOOLAI', 'madhanrkumar2003@gmail.com', '9384840407', '0000-00-00 00:00:00', 0, '0', 'dental502684840407', 'online', '', '0000-00-00', '00:00:00'),
(6, '56', '1', '52/96, MADDOX STREET\r\nCHOOLAI', 'madhanrkumar2003@gmail.com', '9384840407', '0000-00-00 00:00:00', 0, '0', 'dental611584840407', 'online', '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `test_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `total_price`, `name`, `phone`, `email`, `created_at`, `test_id`) VALUES
(1, '1', '1', '3599', '', '', '', '0000-00-00 00:00:00', '11'),
(2, '1', '2', '3599', '', '', '', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE IF NOT EXISTS `prescription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `detail` varchar(255) NOT NULL,
  `scan_image` varchar(255) NOT NULL,
  `prescription_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `gender` varchar(255) NOT NULL,
  `sign` varchar(255) NOT NULL,
  `doc_id` varchar(255) NOT NULL,
  `sent_status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `booking_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `phone`, `age`, `gender`, `password`, `cpassword`, `booking_type`, `created_at`) VALUES
(1, 'MADHAN KUMAR R', 'madhanrkumar2003@gmail.com', '9384840407', '20', 'male', 'Madhan@12345', 'Madhan@12345', 'Video Call', '0000-00-00 00:00:00'),
(2, 'karan', 'karan@gmail.com', '9557842369', '21', 'male', 'Karan@123', 'Karan@123', '', '0000-00-00 00:00:00'),
(3, 'Shraddha Gawade', 'shraddhagawade@gmail.com', '9876543210', '35', 'Female', 'Shraddha@123', 'Shraddha@123', '', '0000-00-00 00:00:00'),
(4, 'Gopi Krishnan', 'gopikrishna@gmail.com', '7854129604', '65', 'male', 'Gopi@123', 'Gopi@123', '', '0000-00-00 00:00:00'),
(5, 'SANJAY', 'sanjay@gmail', '1234567890', '25', 'male', 'Sanjay123', 'Sanjay123', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `testtype`
--

DROP TABLE IF EXISTS `testtype`;
CREATE TABLE IF NOT EXISTS `testtype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_type` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint NOT NULL,
  `popular` tinyint NOT NULL,
  `create_at` timestamp NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testtype`
--

INSERT INTO `testtype` (`id`, `test_type`, `slug`, `image`, `status`, `popular`, `create_at`, `name`) VALUES
(1, '', 'Book Lab Tests', '1700456130.png', 0, 1, '0000-00-00 00:00:00', 'Book Lab Tests'),
(2, '', 'Popular  Health Check..', '1700456332.png', 0, 1, '0000-00-00 00:00:00', 'Popular  Health Check..'),
(3, '', 'X-Rays, Scans & MRI', '1700456424.png', 0, 1, '0000-00-00 00:00:00', 'X-Rays, Scans & MRI');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
