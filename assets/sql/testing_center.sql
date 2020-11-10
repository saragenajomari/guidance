-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2016 at 11:00 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing_center`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(8) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `user_type` varchar(30) NOT NULL,
  `client_num` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `item_id` int(8) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `point_equivalent` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `container`
--

CREATE TABLE `container` (
  `exam_num` int(8) NOT NULL,
  `client_num` int(8) NOT NULL,
  `counter` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `client_num` int(8) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `school_year` varchar(15) NOT NULL,
  `frequency` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_num` int(8) NOT NULL,
  `exam_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_type`
--

CREATE TABLE `exam_type` (
  `exam_num` int(8) NOT NULL,
  `exam_type_name` varchar(30) NOT NULL,
  `total_num_items` int(8) NOT NULL,
  `exam_type_num` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(8) NOT NULL,
  `question` text NOT NULL,
  `item_num` int(8) NOT NULL,
  `exam_type_num` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `norm_general`
--

CREATE TABLE `norm_general` (
  `norm_id` int(8) NOT NULL,
  `exam_num` int(8) NOT NULL,
  `min` int(8) NOT NULL,
  `max` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `norm_sub`
--

CREATE TABLE `norm_sub` (
  `norm_id` int(8) NOT NULL,
  `exam_num` int(8) NOT NULL,
  `exam_type_num` int(8) NOT NULL,
  `min` int(8) NOT NULL,
  `max` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `referral_num` int(8) NOT NULL,
  `client_num` int(8) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(8) NOT NULL,
  `num_takers_sem` int(8) NOT NULL,
  `num_takers_sy` int(8) NOT NULL,
  `num_takers_soe` int(8) NOT NULL,
  `num_takers_sas` int(8) NOT NULL,
  `num_takers_sbe` int(8) NOT NULL,
  `num_takers_shcp` int(8) NOT NULL,
  `num_takers_slg` int(8) NOT NULL,
  `num_takers_soed` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result1`
--

CREATE TABLE `result1` (
  `referral_num` int(8) NOT NULL,
  `exam_num` int(8) NOT NULL,
  `exam_type_num` int(8) NOT NULL,
  `total` int(8) NOT NULL,
  `result` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result2`
--

CREATE TABLE `result2` (
  `referral_num` int(8) NOT NULL,
  `exam_num` int(8) NOT NULL,
  `total` int(8) NOT NULL,
  `result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `client_num` int(8) NOT NULL,
  `id_num` int(8) NOT NULL,
  `name` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `year_lvl` int(8) NOT NULL,
  `sex` varchar(8) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `client_num` (`client_num`);

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `container`
--
ALTER TABLE `container`
  ADD KEY `exam_num` (`exam_num`),
  ADD KEY `client_num` (`client_num`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD KEY `client_num` (`client_num`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_num`);

--
-- Indexes for table `exam_type`
--
ALTER TABLE `exam_type`
  ADD PRIMARY KEY (`exam_type_num`),
  ADD KEY `exam_num` (`exam_num`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `exam_type_num` (`exam_type_num`);

--
-- Indexes for table `norm_general`
--
ALTER TABLE `norm_general`
  ADD PRIMARY KEY (`norm_id`),
  ADD KEY `exam_num` (`exam_num`);

--
-- Indexes for table `norm_sub`
--
ALTER TABLE `norm_sub`
  ADD PRIMARY KEY (`norm_id`),
  ADD KEY `exam_num` (`exam_num`),
  ADD KEY `exam_type_num` (`exam_type_num`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`referral_num`),
  ADD KEY `client_num` (`client_num`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `result1`
--
ALTER TABLE `result1`
  ADD KEY `exam_num` (`exam_num`),
  ADD KEY `exam_type_num` (`exam_type_num`);

--
-- Indexes for table `result2`
--
ALTER TABLE `result2`
  ADD KEY `referral_num` (`referral_num`),
  ADD KEY `exam_num` (`exam_num`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`client_num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `client_num` int(8) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`client_num`) REFERENCES `student` (`client_num`);

--
-- Constraints for table `choices`
--
ALTER TABLE `choices`
  ADD CONSTRAINT `choices_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- Constraints for table `container`
--
ALTER TABLE `container`
  ADD CONSTRAINT `container_ibfk_1` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`),
  ADD CONSTRAINT `container_ibfk_2` FOREIGN KEY (`client_num`) REFERENCES `student` (`client_num`);

--
-- Constraints for table `counter`
--
ALTER TABLE `counter`
  ADD CONSTRAINT `counter_ibfk_1` FOREIGN KEY (`client_num`) REFERENCES `student` (`client_num`);

--
-- Constraints for table `exam_type`
--
ALTER TABLE `exam_type`
  ADD CONSTRAINT `exam_type_ibfk_1` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`exam_type_num`) REFERENCES `exam_type` (`exam_type_num`);

--
-- Constraints for table `norm_general`
--
ALTER TABLE `norm_general`
  ADD CONSTRAINT `norm_general_ibfk_1` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`);

--
-- Constraints for table `norm_sub`
--
ALTER TABLE `norm_sub`
  ADD CONSTRAINT `norm_sub_ibfk_1` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`),
  ADD CONSTRAINT `norm_sub_ibfk_2` FOREIGN KEY (`exam_type_num`) REFERENCES `exam_type` (`exam_type_num`);

--
-- Constraints for table `referral`
--
ALTER TABLE `referral`
  ADD CONSTRAINT `referral_ibfk_1` FOREIGN KEY (`client_num`) REFERENCES `student` (`client_num`);

--
-- Constraints for table `result1`
--
ALTER TABLE `result1`
  ADD CONSTRAINT `result1_ibfk_1` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`),
  ADD CONSTRAINT `result1_ibfk_2` FOREIGN KEY (`exam_type_num`) REFERENCES `exam_type` (`exam_type_num`);

--
-- Constraints for table `result2`
--
ALTER TABLE `result2`
  ADD CONSTRAINT `result2_ibfk_1` FOREIGN KEY (`referral_num`) REFERENCES `referral` (`referral_num`),
  ADD CONSTRAINT `result2_ibfk_2` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
