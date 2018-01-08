-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2018 at 06:20 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mdbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BILL_NO` int(3) NOT NULL,
  `EMP_ID` varchar(5) NOT NULL,
  `CUST_ID` varchar(5) NOT NULL,
  `PRICE` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BILL_NO`, `EMP_ID`, `CUST_ID`, `PRICE`) VALUES
(1, '130', '1', 1505),
(2, '133', '1', 0),
(3, '125', '1', 0),
(4, '45', '1', 0),
(5, '46', '1', 1220),
(6, '456', '17', 70),
(7, '252', '', 0),
(8, '100', '7', 0),
(9, '100', '7', 210),
(10, '200', '10', 136),
(11, '300', '9', 139),
(12, '200', '10', 0),
(13, '100', '', 0),
(14, '456', '17', 0),
(15, '111', '', 0),
(16, '123', '', 0),
(17, '44', '', 0),
(18, '456', '17', 136),
(19, '456', '17', 70),
(20, '456', '17', 136),
(21, '456', '17', 132);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CUST_ID` int(5) NOT NULL,
  `CUST_NAME` varchar(20) NOT NULL,
  `CUST_PHONE` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_ID`, `CUST_NAME`, `CUST_PHONE`) VALUES
(1, 'sad', 456),
(2, 'dfads', 789456),
(3, 'sadfg', 4568),
(4, 'dfsk', 456),
(5, 'dsaf', 456),
(6, 'this works', 564),
(7, 'aashi', 456),
(8, 'asdfgsad', 456123),
(9, ' sufi fuck', 456123),
(10, 'safd', 156),
(11, '', 0),
(12, '', 0),
(13, 'Kiran', 2147483647),
(14, 'Sufi', 2147483647),
(15, 'sufi', 8845613),
(16, 'khatri', 4561234),
(17, 'sufiyan', 654123798);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMP_ID` varchar(5) NOT NULL,
  `EMP_NAME` varchar(20) NOT NULL,
  `EMP_PHONE` bigint(10) NOT NULL,
  `EMP_ADD` varchar(30) NOT NULL,
  `EMP_SALARY` bigint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMP_ID`, `EMP_NAME`, `EMP_PHONE`, `EMP_ADD`, `EMP_SALARY`) VALUES
('', '', 0, '', 0),
('456', 'gg', 7845, 'ez', 4875),
('MV100', 'SUFI', 7878787878, 'RT NAGAR', 10000),
('MV200', 'KHATRI', 9898989898, 'HEBBAL', 11000),
('MV300', 'ANIMESH', 8787878787, 'VIDYARANYAPURA', 12000);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `MED_ID` int(4) NOT NULL,
  `MED_NAME` varchar(20) NOT NULL,
  `COMPANY` varchar(20) NOT NULL,
  `COST` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`MED_ID`, `MED_NAME`, `COMPANY`, `COST`) VALUES
(0, '', '', 0),
(1, 'bobo', 'mrunal', 1),
(454, 'asfd', 'gsad', 50),
(987, 'afsd', 'fsadafs', 65),
(1111, 'CROCIN', 'CIPLA', 20),
(1235, 'asfd', 'sdaf', 65),
(1245, 'fsafsad', 'gasdgag', 60),
(2030, 'hahahaha', 'dfasasf', 45),
(2121, 'sadf', 'sdga', 90),
(2222, 'METACIN', 'VIPLA', 25),
(3030, 'dsaf', 'sdfafasd', 45),
(3333, 'DISPRIN', 'DIPLA', 22),
(4040, 'sadfha', 'jioga', 50),
(4444, 'VOLINI', 'CADBURY', 30),
(4567, 'adsffads', '789asdf', 4561),
(5050, 'sdafas', 'fsad', 65),
(5555, 'IMOL', 'DAIRY MILK', 600),
(6666, 'DESLOR', 'KINDER JOY', 45),
(7777, 'DOLO', 'YOLO', 13),
(8888, 'NEXPRO', 'OREO', 34),
(9999, 'PARCCETMOL', 'ABC', 50);

-- --------------------------------------------------------

--
-- Table structure for table `pwd`
--

CREATE TABLE `pwd` (
  `pass` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pwd`
--

INSERT INTO `pwd` (`pass`) VALUES
('final');

-- --------------------------------------------------------

--
-- Table structure for table `qty_med`
--

CREATE TABLE `qty_med` (
  `BNO` int(4) NOT NULL,
  `MED_ID` int(4) NOT NULL,
  `QUANTITY` int(3) NOT NULL,
  `COST` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qty_med`
--

INSERT INTO `qty_med` (`BNO`, `MED_ID`, `QUANTITY`, `COST`) VALUES
(1, 1111, 1, 20),
(1, 2222, 2, 50),
(1, 1111, 1, 20),
(1, 5555, 2, 1200),
(1, 6666, 3, 135),
(1, 1111, 1, 20),
(1, 4444, 2, 60),
(4, 1111, 1, 20),
(4, 5555, 2, 1200),
(5, 1111, 1, 20),
(5, 5555, 2, 1200),
(6, 1111, 1, 20),
(6, 2222, 2, 50),
(9, 2222, 4, 100),
(9, 3333, 5, 110),
(10, 1111, 1, 20),
(10, 2222, 2, 50),
(10, 3333, 3, 66),
(11, 1111, 1, 20),
(11, 2222, 3, 75),
(11, 3333, 2, 44),
(12, 1111, 1, 20),
(12, 2222, 2, 50),
(14, 1111, 1, 20),
(14, 2222, 2, 50),
(18, 1111, 1, 20),
(18, 2222, 2, 50),
(18, 3333, 3, 66),
(19, 1111, 1, 20),
(19, 2222, 2, 50),
(20, 1111, 1, 20),
(20, 2222, 2, 50),
(20, 3333, 3, 66),
(21, 1111, 3, 60),
(21, 2222, 2, 50),
(21, 3333, 1, 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BILL_NO`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CUST_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`MED_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `BILL_NO` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CUST_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
