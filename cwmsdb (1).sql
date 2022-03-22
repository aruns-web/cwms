-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 03:45 PM
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
-- Database: `cwmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-12-10 11:18:49'),
(2, 'arun', 'arun01@s', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcarwashbooking`
--

CREATE TABLE `tblcarwashbooking` (
  `id` int(11) NOT NULL,
  `bookingId` bigint(10) DEFAULT NULL,
  `packageType` varchar(120) DEFAULT NULL,
  `fullName` varchar(150) DEFAULT NULL,
  `mobileNumber` bigint(12) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `vno` varchar(25) NOT NULL,
  `model` varchar(100) NOT NULL,
  `washDate` date DEFAULT NULL,
  `washTime` time DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `status` varchar(120) DEFAULT NULL,
  `adminRemark` mediumtext DEFAULT NULL,
  `paymentMode` varchar(120) DEFAULT NULL,
  `txnNumber` varchar(120) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcarwashbooking`
--

INSERT INTO `tblcarwashbooking` (`id`, `bookingId`, `packageType`, `fullName`, `mobileNumber`, `email`, `vno`, `model`, `washDate`, `washTime`, `message`, `status`, `adminRemark`, `paymentMode`, `txnNumber`, `postingDate`, `lastUpdationDate`) VALUES
(1, 316460298, '1', 'Anu Sivakumar', 8996541440, 'anusivakumar@gmail.com', 'KL 35E 5758', '', '2021-12-16', '11:45:00', 'NA', 'Completed', 'Washing completed', 'e-Wallet', '345345345', '2021-12-13 19:14:22', '2022-02-20 11:17:41'),
(9, 794462777, '1', 'Alex Joe', 8372924556, 'alex-joe@outlook.in', 'KL 67C 46358', 'HONDA Amaze', '2022-02-26', '10:55:00', '', 'New', NULL, NULL, NULL, '2022-02-15 17:26:12', '2022-02-20 11:22:37'),
(10, 432991796, '2', 'Abhinav S', 9048854452, 'abhinavs@outlook.com', 'KL 67C  4307', 'SUSUKI Alto', '2022-03-04', '11:30:00', '', 'New', NULL, NULL, NULL, '2022-02-16 18:00:15', '2022-02-20 11:26:08'),
(11, 489240077, '1', 'Arun  S', 9048862027, 'arun-s@outlook.in', 'KL 67D 8478', 'TATA Tiago', '2022-02-25', '12:58:00', '', 'Completed', 'Complete', 'Cash', '', '2022-02-16 19:29:33', '2022-02-20 11:26:55'),
(12, 259093658, '2', 'Arun  S', 9048862027, 'arun-s@outlook.in', 'KL 67C 9369', 'SUSUKI Swift', '2022-02-16', '13:06:00', '', 'New', NULL, NULL, NULL, '2022-02-16 19:33:15', '2022-02-20 11:15:21'),
(14, 469209572, '1', 'Arun  S', 9048862027, 'arun-s@outlook.in', 'KL 67C  4307', 'HONDA Amaze', '2022-03-06', '15:12:00', '', 'New', NULL, NULL, NULL, '2022-02-26 17:38:16', NULL),
(15, 599869199, '1', 'password', 4455544555, 'john@gmail.com', 'KL 67C  4307', 'HONDA DIO', '2022-03-06', '11:12:00', '', 'New', NULL, NULL, NULL, '2022-02-26 17:39:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(4, 'Anuj kumar', 'anuj@gmail.com', 'General Enquiry', 'I want to know the price of car wash', '2021-12-13 18:27:53', 1),
(5, 'Amit', 'amit@gmail.com', 'Test', 'Test', '2021-12-14 19:14:22', 1),
(6, 'Arun  S', 'arun-s@outlook.in', 'enquiry', 'hh', '2022-02-15 18:08:47', 1),
(7, 'Arun  S', 'arun-s@outlook.in', 'enquiry', 'Every time you attribute, you make a designer happy', '2022-02-15 19:36:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL,
  `openignHrs` varchar(255) DEFAULT NULL,
  `phoneNumber` bigint(20) DEFAULT NULL,
  `emailId` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`, `openignHrs`, `phoneNumber`, `emailId`) VALUES
(11, 'contact', '360 AutoSpa,\r\nMannar,Kaduthuruthy,Kerala', 'Mon - Fri, 8:30 AM - 8:00 PM', 918943603858, '360autospa@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcarwashbooking`
--
ALTER TABLE `tblcarwashbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcarwashbooking`
--
ALTER TABLE `tblcarwashbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
