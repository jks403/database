-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2019 at 10:47 PM
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
-- Database: `joshuaka_Bookstoredatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_needed`
--

CREATE TABLE `order_needed` (
  `order_needed_id` int(11) NOT NULL,
  `isbn` varchar(10) NOT NULL,
  `order_qty` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_placed` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_needed`
--

INSERT INTO `order_needed` (`order_needed_id`, `isbn`, `order_qty`, `date_created`, `date_placed`) VALUES
(1003, '0805343024', 10, '2018-09-12', '2018-09-13'),
(1004, '0201144719', 15, '2018-09-03', '2018-09-05'),
(1005, '0201117363', 12, '2018-08-08', '2018-08-10'),
(1006, '', 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `order_summary`
--

CREATE TABLE `order_summary` (
  `order_num` int(6) NOT NULL,
  `pub_id` int(3) NOT NULL,
  `date_placed` date NOT NULL,
  `date_completed` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_summary`
--

INSERT INTO `order_summary` (`order_num`, `pub_id`, `date_placed`, `date_completed`) VALUES
(11010, 111, '2018-09-02', '2018-09-04'),
(11011, 134, '2018-09-04', '2018-09-21'),
(11012, 201, '2018-09-19', '2018-09-21'),
(11013, 150, '2018-09-23', '2018-09-25');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `pub_id` int(11) NOT NULL,
  `pub_name` varchar(30) NOT NULL,
  `pub_city` varchar(15) NOT NULL,
  `pub_state` varchar(2) NOT NULL,
  `order_min` int(11) NOT NULL,
  `order_min_disc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`pub_id`, `pub_name`, `pub_city`, `pub_state`, `order_min`, `order_min_disc`) VALUES
(111, 'Addison-Wesley', 'reading', 'Ma', 250, 0),
(134, 'Irwin', 'Homewood', 'IL', 150, 0),
(147, 'Benjamin/Cummings', 'Menlo Park', 'Ca', 300, 0),
(150, 'Macmillan', 'Riverside', 'NJ', 100, 0),
(189, 'PWS', 'Boston', 'MA', 500, 0),
(201, 'Prentice-Hall', 'Eaglewood Clifs', 'NJ', 100, 0),
(225, 'Merril', 'columbus', 'OH', 200, 0),
(234, 'McGraw-Hill', 'New York', 'NY', 50, 0),
(247, 'Science Research Associates', 'Menlo Park', 'CA', 1000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `isbn` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `title_name` varchar(30) NOT NULL,
  `author` varchar(35) NOT NULL,
  `title_cost` decimal(10,2) NOT NULL,
  `title_price` decimal(10,2) NOT NULL,
  `qty_on_hand` int(11) NOT NULL,
  `order_point` int(11) NOT NULL,
  `auto_order_qty` int(11) NOT NULL,
  `on_order` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`isbn`, `pub_id`, `title_name`, `author`, `title_cost`, `title_price`, `qty_on_hand`, `order_point`, `auto_order_qty`, `on_order`) VALUES
(24154334, 150, 'Business Data Communications', 'Stamper', 39.50, 55.00, 3, 10, 15, 'T'),
(70366955, 234, 'Simulation Modeling Analysis', 'Law', 60.00, 75.00, 10, 20, 100, 'T'),
(131892428, 201, 'Software Engineering', 'Lamb', 30.00, 40.00, 10, 5, 5, 'F'),
(201106868, 111, 'Building Expert Systems', 'Hayes-Roth', 32.50, 41.95, 3, 1, 2, 'F'),
(201117363, 111, 'An Introduction to Database', 'Date', 29.95, 37.95, 10, 15, 12, 'T'),
(256027960, 134, 'Financial Accounting', 'Pyle', 26.95, 31.50, 10, 30, 15, 'T'),
(574214100, 247, 'The C Programming Language', 'Kernighan', 25.00, 39.95, 10, 25, 100, 'T'),
(805343024, 147, 'Visual Basic', 'kittner', 26.50, 29.95, 5, 10, 10, 'T'),
(805367802, 147, 'Database management', 'Mcfadden', 32.50, 37.95, 20, 5, 20, 'F'),
(871507870, 247, 'Intro To Biology', 'Farish', 32.50, 41.95, 35, 30, 150, 'F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_needed`
--
ALTER TABLE `order_needed`
  ADD PRIMARY KEY (`order_needed_id`);

--
-- Indexes for table `order_summary`
--
ALTER TABLE `order_summary`
  ADD PRIMARY KEY (`order_num`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`pub_id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `pub_id` (`pub_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_needed`
--
ALTER TABLE `order_needed`
  MODIFY `order_needed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `order_summary`
--
ALTER TABLE `order_summary`
  MODIFY `order_num` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11014;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `isbn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=871507871;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `title`
--
ALTER TABLE `title`
  ADD CONSTRAINT `title_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `publisher` (`pub_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
