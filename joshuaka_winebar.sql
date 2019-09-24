-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2019 at 10:54 PM
-- Server version: 10.2.26-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joshuaka_winebar`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(4) NOT NULL,
  `employee_lname` varchar(50) NOT NULL,
  `employee_fname` varchar(50) NOT NULL,
  `employee_phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_lname`, `employee_fname`, `employee_phone`) VALUES
(1, 'Matsumoto', 'Tami', '7074433325'),
(2, 'Porter', 'Mike', '3372583223'),
(3, 'Monk', 'Angelo', '7174433321'),
(4, 'Davidson', 'Dale', '707443-2914'),
(6, 'AM', 'Sidney', '7074426242'),
(7, 'Baker', 'Brandon', '5302635399'),
(8, 'Teske', 'Jason', '54002635399'),
(9, 'Garcia', 'Robert', '54002635399'),
(10, 'NGO', 'Dang', '54042635399'),
(11, 'NGO', 'Lam', '54042635399'),
(12, 'Kittleson', 'Lyle', '7074462255'),
(13, 'stewart', 'joshua', '7073625628'),
(14, 'kittleson', 'lyle', '7072336622'),
(15, 'Misner', 'Eric', '7074458822'),
(16, 'Misner', 'Stanley', '7074458822'),
(17, 'Griffin', 'Jeremy', '7073625000'),
(18, 'Griffin', 'ScottRick', '7073625000'),
(19, 'Ponsano', 'John', '7073365566'),
(20, 'Fish', 'Alan', '7989932422'),
(21, 'Baker', 'Baker', '6185527132'),
(22, 'Baker', 'Baker', '6185527132'),
(23, 'Grilli', 'Michael SSgt', '7073342422'),
(24, 'Latchelet', 'Samuel', '7735532255'),
(3338, 'Wardrop', 'William', '7072693928'),
(3339, 'Ryan', 'Brandony', '7079212021'),
(3340, 'Davenport', 'Edmond JR', '7072736169');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `vint_num` int(4) NOT NULL,
  `num_sales` float(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`vint_num`, `num_sales`) VALUES
(3, 100.00),
(8, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `vintner`
--

CREATE TABLE `vintner` (
  `vint_num` int(11) NOT NULL,
  `vint_name` varchar(20) NOT NULL,
  `vint_loc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vintner`
--

INSERT INTO `vintner` (`vint_num`, `vint_name`, `vint_loc`) VALUES
(3, 'bogle', 'lodi'),
(8, 'wente', 'livermore'),
(9, 'Balletto', 'Sonoma'),
(22, 'gervertzdemeiner', 'alexander_valley'),
(33, 'gervertzdemeiner', 'Boston'),
(44, 'cloudy_bay', 'new_zeland'),
(1344, '14hands', 'napa'),
(1555, 'oldgrowth', 'sonoma');

-- --------------------------------------------------------

--
-- Table structure for table `vint_phone`
--

CREATE TABLE `vint_phone` (
  `vint_num` int(4) NOT NULL,
  `vint_phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vint_phone`
--

INSERT INTO `vint_phone` (`vint_num`, `vint_phone`) VALUES
(4, 10),
(7, 10),
(8, 9),
(1344, 10),
(1555, 10);

-- --------------------------------------------------------

--
-- Table structure for table `wine`
--

CREATE TABLE `wine` (
  `wine_num` int(11) NOT NULL,
  `wine_year` int(4) NOT NULL,
  `wine_price` decimal(9,2) NOT NULL,
  `wine_class` varchar(15) NOT NULL,
  `wine_color` varchar(8) NOT NULL,
  `vint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wine`
--

INSERT INTO `wine` (`wine_num`, `wine_year`, `wine_price`, `wine_class`, `wine_color`, `vint`) VALUES
(1, 1998, 250.52, 'chablis', 'rose', 9),
(2, 1700, 1500.50, 'chablis', 'blush', 8),
(3, 1980, 4000.50, 'rose', 'blush', 4),
(4, 1800, 5000.00, 'zinfandel', 'blush', 7),
(5, 1850, 25.00, 'cabernetfranc', 'red', 7),
(6, 1774, 8832.99, 'Cabernet', 'red', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`vint_num`);

--
-- Indexes for table `vintner`
--
ALTER TABLE `vintner`
  ADD PRIMARY KEY (`vint_num`);

--
-- Indexes for table `vint_phone`
--
ALTER TABLE `vint_phone`
  ADD PRIMARY KEY (`vint_num`);

--
-- Indexes for table `wine`
--
ALTER TABLE `wine`
  ADD PRIMARY KEY (`wine_num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `vint_num` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vintner`
--
ALTER TABLE `vintner`
  MODIFY `vint_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1556;

--
-- AUTO_INCREMENT for table `vint_phone`
--
ALTER TABLE `vint_phone`
  MODIFY `vint_num` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1556;

--
-- AUTO_INCREMENT for table `wine`
--
ALTER TABLE `wine`
  MODIFY `wine_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
