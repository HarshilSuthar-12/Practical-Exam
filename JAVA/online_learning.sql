-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2022 at 02:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(30) NOT NULL,
  `course_id` varchar(30) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `course_price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `course_id`, `course_name`, `course_price`) VALUES
(32, 'OS001', 'Introduction to AWS', '100'),
(33, 'OS005', 'Basics of Data Structure', '599'),
(35, 'OS004', 'Inrtroduction to MATLAB', '0'),
(36, 'OS002', 'Basics of ASP .Net Framework', '999');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(30) NOT NULL,
  `Course_name` varchar(50) NOT NULL,
  `course_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `Course_name`, `course_price`) VALUES
('OS001', 'Introduction to AWS', 100),
('OS002', 'Basics of ASP .Net Framework', 999),
('OS003', 'Fundamental of Python', 100),
('OS005', 'Basics of Data Structure', 599),
('OS004', 'Inrtroduction to MATLAB', 0),
('OS006', 'Introduction to DBMS', 0),
('OS007', 'Introduction To Information Te', 1100),
('OS008', 'Web Technologies', 4999),
('OS009', 'Introduction to MONGO DB', 399),
('OS010', 'SQLite DB', 0),
('OS011', 'J2EE', 1200),
('OS012', 'Bootstrap Framework', 599),
('OS013', 'Cloud Computing & Network Security', 799);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(12) NOT NULL,
  `user_name` varchar(12) NOT NULL,
  `user_pass` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_pass`) VALUES
('amir', 'Amiruddin', 'amir123'),
('chintan01', 'chintan', 'chintan123'),
('amiruddin', 'Amiruddin', 'amir123'),
('Neha', 'Neha Singh', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD UNIQUE KEY `MyUniqueConstraint` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
