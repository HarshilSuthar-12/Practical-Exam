-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 05:43 PM
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
-- Database: `newdemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `STD_ID` int(10) DEFAULT NULL,
  `SKILL` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`STD_ID`, `SKILL`) VALUES
(1, 'Java'),
(1, 'Database'),
(2, 'Java'),
(2, 'Python'),
(2, 'Database'),
(3, 'Python'),
(3, 'Database'),
(4, 'Java'),
(5, 'Java'),
(5, 'Python'),
(5, 'Database'),
(6, 'Java'),
(7, 'Python'),
(8, 'Java'),
(8, 'Python');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STD_ID` int(10) NOT NULL,
  `STD_NAME` varchar(20) DEFAULT NULL,
  `STD_GENDER` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STD_ID`, `STD_NAME`, `STD_GENDER`) VALUES
(1, 'Amiruddin', 'Male'),
(2, 'Himani', 'Female'),
(3, 'Hatim', 'Male'),
(4, 'Devansh', 'Male'),
(5, 'Neha', 'Female'),
(6, 'Darsh', 'Male'),
(7, 'Het', 'Male'),
(8, 'Hetvi', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STD_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
