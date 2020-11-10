-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2017 at 08:16 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guidancedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` enum('admin','student','guidance','testing') NOT NULL,
  `client_num` int(11) DEFAULT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `username`, `password`, `usertype`, `client_num`, `fname`, `lname`, `status`) VALUES
(1, 'guidance', 'guidance', 'guidance', NULL, '', '', 'inactive'),
(2, 'testing', 'testing', 'testing', NULL, '', '', 'active'),
(3, '12100469', '12100469', 'student', 1, '', '', 'active'),
(4, '118967901', '118967901', 'student', 4, '', '', 'inactive'),
(5, '15678940', '15678940', 'student', 5, '', '', 'inactive'),
(6, '131967812', '131967812', 'student', 6, '', '', 'inactive'),
(7, '134565782', '134565782', 'student', 7, '', '', 'inactive'),
(8, '135678941', '135678941', 'student', 8, '', '', 'inactive'),
(9, '546174561', '546174561', 'student', 9, '', '', 'inactive'),
(10, '123456784', '123456784', 'student', 10, '', '', 'inactive'),
(11, '123546178', '123546178', 'student', 11, '', '', 'inactive'),
(12, '123456713', '123456713', 'student', 12, '', '', 'active'),
(13, '13107159', '13107159', 'student', 13, 'Chris Zendy', 'Pesudas ', 'inactive'),
(14, 'admin', 'admin', 'admin', NULL, 'jomari', 'gwapo', 'active'),
(15, 'superadmin', 'suoeradmin', 'admin', NULL, 'jomari', 'saragena', ''),
(16, 'override', 'override', 'admin', NULL, 'Marjorie', 'Saragena', 'active'),
(17, '56789845', '56789845', 'student', 15, 'Jervey', 'Cruz', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `activitylog`
--

CREATE TABLE `activitylog` (
  `log_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` enum('reactivate account','reactivate student','deactivate account','activate exam','create exam','deactivate student','add exam','deactivate exam','edit exam','add student','print record','print report','take exam','edit information') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activitylog`
--

INSERT INTO `activitylog` (`log_id`, `account_id`, `date`, `action`) VALUES
(2, 1, '2017-01-15 16:00:00', 'edit information'),
(3, 1, '2017-01-15 16:00:00', 'add exam'),
(4, 1, '2017-01-15 16:00:00', 'add student'),
(5, 2, '2017-01-17 16:00:00', 'add exam'),
(6, 2, '2017-01-17 16:00:00', 'add exam'),
(7, 2, '2017-01-17 16:00:00', 'deactivate student'),
(8, 2, '2017-01-17 16:00:00', 'deactivate exam'),
(9, 2, '2017-01-17 16:00:00', 'deactivate exam'),
(10, 2, '2017-01-17 16:00:00', 'deactivate exam'),
(11, 1, '2017-01-17 16:00:00', 'deactivate student'),
(12, 1, '2017-01-17 16:00:00', 'add exam'),
(13, 1, '2017-01-17 16:00:00', 'add exam'),
(14, 1, '2017-01-17 16:00:00', 'add exam'),
(15, 1, '2017-01-17 16:00:00', 'deactivate student'),
(16, 1, '2017-01-17 16:00:00', 'deactivate student'),
(17, 2, '2017-01-17 16:00:00', 'add exam'),
(18, 2, '2017-01-17 16:00:00', 'deactivate student'),
(19, 2, '2017-01-17 16:00:00', 'add exam'),
(20, 2, '2017-01-17 16:00:00', 'deactivate student'),
(21, 2, '2017-01-17 16:00:00', 'deactivate student'),
(22, 1, '2017-01-17 16:00:00', 'add exam'),
(23, 1, '2017-01-17 16:00:00', 'add exam'),
(24, 1, '2017-01-17 16:00:00', 'add exam'),
(25, 2, '2017-01-17 16:00:00', 'deactivate exam'),
(26, 2, '2017-01-17 16:00:00', 'deactivate exam'),
(27, 2, '2017-01-17 16:00:00', 'deactivate exam'),
(28, 2, '2017-01-17 16:00:00', 'deactivate exam'),
(29, 2, '2017-01-17 16:00:00', 'deactivate exam'),
(30, 1, '2017-01-18 16:00:00', 'add exam'),
(31, 1, '2017-01-18 16:00:00', 'add exam'),
(32, 1, '2017-01-18 16:00:00', 'add exam'),
(33, 2, '2017-01-18 16:00:00', 'add exam'),
(34, 2, '2017-01-18 16:00:00', 'deactivate exam'),
(35, 2, '2017-01-20 16:00:00', 'activate exam'),
(36, 1, '2017-01-23 16:00:00', 'add student'),
(37, 1, '2017-01-23 16:00:00', 'add exam'),
(38, 14, '2017-01-23 16:00:00', 'deactivate account'),
(39, 14, '2017-01-23 16:00:00', 'deactivate account'),
(41, 14, '2017-01-23 16:00:00', 'deactivate account'),
(42, 2, '2017-01-24 16:00:00', 'activate exam'),
(43, 1, '2017-01-24 16:00:00', 'deactivate student'),
(44, 1, '2017-01-24 16:00:00', 'add student'),
(45, 1, '2017-01-24 16:00:00', 'add student'),
(46, 1, '2017-01-24 16:00:00', 'deactivate student'),
(47, 1, '2017-01-24 16:00:00', 'add exam'),
(48, 1, '2017-01-24 16:00:00', 'add exam'),
(49, 1, '2017-01-24 16:00:00', 'add exam'),
(50, 14, '2017-01-27 16:00:00', 'deactivate account'),
(51, 14, '2017-01-27 16:00:00', 'reactivate account'),
(52, 1, '2017-01-29 16:00:00', 'reactivate student'),
(53, 1, '2017-01-29 16:00:00', 'add exam'),
(54, 1, '2017-01-29 16:00:00', 'add exam'),
(55, 1, '2017-01-29 16:00:00', 'add exam'),
(56, 2, '2017-01-29 16:00:00', 'add exam'),
(57, 14, '2017-01-30 16:00:00', 'deactivate account'),
(58, 14, '2017-01-30 16:00:00', 'deactivate account'),
(59, 14, '2017-01-30 16:00:00', 'reactivate account'),
(60, 14, '2017-01-30 16:00:00', 'deactivate account'),
(61, 14, '2017-01-30 16:00:00', 'reactivate account'),
(62, 14, '2017-01-30 16:00:00', 'deactivate account'),
(63, 14, '2017-01-30 16:00:00', 'reactivate account'),
(64, 14, '2017-01-30 16:00:00', 'reactivate account'),
(65, 14, '2017-01-30 16:00:00', 'deactivate account'),
(66, 14, '2017-01-30 16:00:00', 'deactivate account'),
(67, 14, '2017-01-30 16:00:00', 'deactivate account'),
(68, 14, '2017-01-30 16:00:00', 'deactivate account'),
(69, 14, '2017-01-30 16:00:00', 'deactivate account'),
(70, 2, '2017-01-30 16:00:00', 'activate exam'),
(71, 2, '2017-01-30 16:00:00', 'activate exam'),
(72, 2, '2017-01-30 16:00:00', 'activate exam'),
(73, 2, '2017-01-30 16:00:00', 'deactivate exam'),
(74, 2, '2017-01-30 16:00:00', 'activate exam'),
(75, 2, '2017-01-30 16:00:00', 'activate exam'),
(76, 2, '2017-01-30 16:00:00', 'activate exam'),
(77, 2, '2017-01-30 16:00:00', 'activate exam'),
(78, 2, '2017-01-30 16:00:00', 'activate exam'),
(79, 2, '2017-01-30 16:00:00', 'activate exam'),
(80, 2, '2017-01-30 16:00:00', 'activate exam'),
(81, 2, '2017-01-30 16:00:00', 'activate exam'),
(82, 2, '2017-01-30 16:00:00', 'activate exam'),
(83, 2, '2017-01-30 16:00:00', 'activate exam'),
(84, 2, '2017-01-30 16:00:00', 'add exam'),
(85, 2, '2017-01-30 16:00:00', 'deactivate exam'),
(86, 2, '2017-01-30 16:00:00', 'deactivate exam'),
(87, 2, '2017-01-30 16:00:00', 'deactivate exam'),
(88, 2, '2017-01-30 16:00:00', 'deactivate exam'),
(89, 2, '2017-01-30 16:00:00', 'deactivate exam'),
(90, 2, '2017-01-30 16:00:00', 'deactivate exam'),
(91, 2, '2017-01-30 16:00:00', 'deactivate exam'),
(92, 2, '2017-01-30 16:00:00', 'deactivate exam'),
(93, 2, '2017-01-30 16:00:00', 'deactivate exam');

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `choices_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `choice` varchar(30) NOT NULL,
  `point_equivalent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`choices_id`, `item_id`, `choice`, `point_equivalent`) VALUES
(1, 1, 'A', 5),
(2, 1, 'B', 5),
(3, 1, 'C', 5),
(4, 1, 'D', 5),
(5, 4, 'A', 1),
(6, 4, 'B', 2),
(7, 4, 'C', 3),
(8, 4, 'D', 4),
(9, 5, '1', 1),
(10, 5, '2', 1),
(11, 5, '3', 1),
(12, 5, '4', 1),
(13, 6, 'A1', 1),
(14, 6, 'B2', 1),
(15, 6, 'C3', 1),
(16, 6, 'D4', 1),
(17, 8, 'A', 1),
(18, 8, 'B', 4),
(19, 8, 'C', 3),
(20, 9, '1', 1),
(21, 9, '2', 2),
(22, 9, '3', 3),
(23, 10, '2', 1),
(24, 10, '5', 0),
(25, 10, 'None of the Above', 0),
(26, 11, '1', 0),
(27, 11, '4', 1),
(28, 11, 'None', 0),
(29, 12, 'Jomari', 1),
(30, 12, 'Tj', 0),
(31, 13, 'Kim', 10),
(32, 13, 'Orange', 0);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_num` int(11) NOT NULL,
  `id_num` int(11) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `course` char(10) NOT NULL,
  `yrlvl` enum('1','2','3','4','5') NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_num`, `id_num`, `lname`, `fname`, `mname`, `course`, `yrlvl`, `sex`, `email`, `status`) VALUES
(1, 12100469, 'Saragena', 'Jomari', 'Cabajar', '1', '4', 'male', 'jomarisaragenaofficial@gmail.com', 'active'),
(2, 12110469, 'Masion', 'Timothy', 'Vallar Morgulis', '--------3-', '1', 'female', 'asdasd@gmail.com', 'inactive'),
(3, 12375671, 'Skeete', 'Marie Frances', 'Reyes', '2', '5', 'female', 'asdasdasd@gmail.com', 'active'),
(4, 118967901, 'Huan', 'Gerald Ryan', 'Sanchez', '3', '3', 'female', 'geraldryan@yahoo.com', 'active'),
(5, 15678940, 'Kintanar', 'Anton', 'Cruz', '2', '1', 'male', 'antonkintanar@gmail.com', 'active'),
(6, 131967812, 'Santiago', 'Justine', 'Melano', '4', '1', 'male', 'melanothereal@gmail.com', 'active'),
(7, 134565782, 'Dela Cruz', 'Juan', 'Vasquez', '1', '1', 'male', 'juanderful@gmail.com', 'active'),
(8, 135678941, 'Villa', 'Marian', 'Franco', '3', '1', 'female', 'marian.villa@gmail.com', 'active'),
(9, 546174561, 'Suwaysuway', 'Try', 'Halo', '1', '1', 'male', 'ambotnimo@rocketmail.com', 'inactive'),
(10, 123456784, 'Saragena', 'Marjorie', 'Cabajar', '4', '4', 'female', 'marjsaragenz@gmai.com', 'active'),
(11, 123546178, 'Luzano', 'Jesse', 'Fareed', '3', '5', 'male', 'yowyow@gmail.com', 'active'),
(12, 123456713, 'Velila', 'Iah', 'Vicente', '1', '1', 'male', 'ajahaugh@gmail.com', 'inactive'),
(13, 13107159, 'Pesudas ', 'Chris Zendy', 'Simporios', '3', '4', 'male', 'chrispesudas@gmail.com', 'active'),
(14, 56789845, 'Cruz', 'Jervey', 'Santos', '1', '1', 'male', 'santos@gmail.com', 'active'),
(15, 56789845, 'Cruz', 'Jervey', 'Santos', '1', '1', 'male', 'santos@gmail.com', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `container`
--

CREATE TABLE `container` (
  `exam_num` int(11) NOT NULL,
  `client_num` int(11) NOT NULL,
  `counter` int(11) NOT NULL,
  `ref_num` int(11) NOT NULL,
  `status` enum('finish','unfinish') NOT NULL,
  `container_num` int(11) NOT NULL,
  `con` enum('active','delete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `container`
--

INSERT INTO `container` (`exam_num`, `client_num`, `counter`, `ref_num`, `status`, `container_num`, `con`) VALUES
(1, 1, 0, 1, 'finish', 1, 'active'),
(2, 1, 0, 2, 'finish', 2, 'delete'),
(2, 4, 0, 7, 'finish', 3, 'active'),
(2, 1, 0, 8, 'finish', 4, 'delete'),
(2, 1, 0, 9, 'finish', 5, 'delete'),
(5, 3, 0, 18, 'unfinish', 14, 'active'),
(5, 3, 0, 19, 'unfinish', 15, 'active'),
(5, 3, 0, 20, 'unfinish', 16, 'active'),
(5, 4, 0, 21, 'unfinish', 17, 'active'),
(1, 1, 0, 22, 'unfinish', 18, 'active'),
(2, 1, 0, 23, 'finish', 19, 'active'),
(2, 1, 0, 24, 'finish', 20, 'active'),
(2, 8, 0, 25, 'finish', 21, 'active'),
(6, 5, 0, 28, 'finish', 24, 'active'),
(6, 5, 0, 29, 'finish', 25, 'active'),
(7, 1, 0, 30, 'unfinish', 26, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `client_num` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `school_year` int(11) NOT NULL,
  `frequency` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_num` int(11) NOT NULL,
  `exam_name` varchar(100) NOT NULL,
  `no_of_takers` int(11) NOT NULL,
  `date_create` date NOT NULL,
  `status` enum('active','deactivated') NOT NULL,
  `descrip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_num`, `exam_name`, `no_of_takers`, `date_create`, `status`, `descrip`) VALUES
(7, 'IQ', 0, '2017-01-31', 'deactivated', 'i love myself');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `exam_num` int(11) NOT NULL,
  `question` text NOT NULL,
  `subexam_num` int(11) NOT NULL,
  `item_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `exam_num`, `question`, `subexam_num`, `item_no`) VALUES
(1, 1, 'Question_SubExam1?', 1, 1),
(3, 2, '?', 3, 1),
(4, 3, 'Question 1?', 4, 1),
(5, 3, 'Question 2?', 4, 2),
(6, 3, 'Question 3?', 4, 3),
(7, 5, '1+1', 7, 2),
(8, 6, 'Test?', 11, 1),
(9, 6, 'Sample Question?', 12, 2),
(10, 7, '1+1?', 13, 1),
(11, 7, '2+2', 13, 2),
(12, 7, 'What is your name?', 14, 3),
(13, 7, 'Whats your pets name?', 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `normgen`
--

CREATE TABLE `normgen` (
  `norm_id` int(11) NOT NULL,
  `exam_num` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `normgen`
--

INSERT INTO `normgen` (`norm_id`, `exam_num`, `min`, `max`, `name`) VALUES
(1, 1, 1, 10, 'Gennorm'),
(2, 3, 1, 5, 'Low'),
(3, 3, 6, 10, 'High'),
(4, 6, 1, 5, 'Low'),
(6, 6, 6, 10, 'High'),
(7, 7, 8, 10, 'High'),
(8, 7, 4, 5, 'Low');

-- --------------------------------------------------------

--
-- Table structure for table `normsub`
--

CREATE TABLE `normsub` (
  `norm_id` int(11) NOT NULL,
  `exam_num` int(11) NOT NULL,
  `subexam_num` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `normsub`
--

INSERT INTO `normsub` (`norm_id`, `exam_num`, `subexam_num`, `min`, `max`, `name`) VALUES
(1, 1, 1, 0, 5, 'Min'),
(2, 1, 1, 6, 10, 'Max'),
(3, 3, 4, 1, 5, 'Min'),
(4, 3, 4, 6, 10, 'Max'),
(5, 6, 11, 1, 5, 'Low'),
(7, 6, 11, 6, 10, 'High'),
(9, 6, 12, 1, 5, 'Low'),
(10, 6, 12, 6, 10, 'High'),
(11, 7, 13, 8, 10, 'High'),
(12, 7, 13, 6, 8, 'Average'),
(13, 7, 13, 1, 5, 'Low'),
(14, 7, 14, 8, 10, 'High'),
(15, 7, 14, 1, 5, 'Average');

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `ref_num` int(11) NOT NULL,
  `client_num` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`ref_num`, `client_num`, `date`) VALUES
(1, 1, '2017-01-08'),
(2, 1, '2017-01-13'),
(3, 4, '2017-01-16'),
(4, 4, '2017-01-16'),
(5, 4, '2017-01-16'),
(6, 4, '2017-01-16'),
(7, 4, '2017-01-16'),
(8, 1, '2017-01-18'),
(9, 1, '2017-01-18'),
(10, 8, '2017-01-18'),
(11, 1, '2017-01-18'),
(12, 1, '2017-01-18'),
(13, 1, '2017-01-18'),
(14, 1, '2017-01-18'),
(15, 1, '2017-01-18'),
(16, 1, '2017-01-18'),
(17, 5, '2017-01-18'),
(18, 3, '2017-01-19'),
(19, 3, '2017-01-19'),
(20, 3, '2017-01-19'),
(21, 4, '2017-01-19'),
(22, 1, '2017-01-24'),
(23, 1, '2017-01-25'),
(24, 1, '2017-01-25'),
(25, 8, '2017-01-25'),
(26, 5, '2017-01-30'),
(27, 5, '2017-01-30'),
(28, 5, '2017-01-30'),
(29, 5, '2017-01-30'),
(30, 1, '2017-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `total_takers` int(11) NOT NULL,
  `soe_takers` int(11) NOT NULL,
  `sas_takers` int(11) NOT NULL,
  `sbe_takers` int(11) NOT NULL,
  `shcp_takers` int(11) NOT NULL,
  `slg_takers` int(11) NOT NULL,
  `soed_takers` int(11) NOT NULL,
  `firstyear_takers` int(11) NOT NULL,
  `secondyear_takers` int(11) NOT NULL,
  `thirdyear_takers` int(11) NOT NULL,
  `fourthyear_takers` int(11) NOT NULL,
  `fifthyear_takers` int(11) NOT NULL,
  `semester` enum('First Semester','Second Semester') NOT NULL,
  `schoolyear` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resultgen`
--

CREATE TABLE `resultgen` (
  `resultgen_num` int(11) NOT NULL,
  `ref_num` int(11) NOT NULL,
  `exam_num` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `result` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resultgen`
--

INSERT INTO `resultgen` (`resultgen_num`, `ref_num`, `exam_num`, `total`, `result`, `date`) VALUES
(1, 1, 1, 5, 'High', '0000-00-00'),
(2, 1, 1, 5, 'High', '0000-00-00'),
(3, 15, 3, 4, 'High', '0000-00-00'),
(4, 17, 3, 5, 'High', '0000-00-00'),
(5, 16, 3, 2, 'Low', '0000-00-00'),
(6, 28, 6, 1, 'Low', '2017-01-30'),
(7, 28, 6, 1, 'Low', '2017-01-30'),
(8, 29, 6, 3, 'Low', '2017-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `resultsub`
--

CREATE TABLE `resultsub` (
  `resultsub_num` int(11) NOT NULL,
  `ref_num` int(11) NOT NULL,
  `exam_num` int(11) NOT NULL,
  `subexam_num` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resultsub`
--

INSERT INTO `resultsub` (`resultsub_num`, `ref_num`, `exam_num`, `subexam_num`, `total`, `result`) VALUES
(1, 16, 3, 4, 3, 'Min'),
(2, 16, 3, 4, 3, 'Min'),
(4, 27, 6, 11, 1, 'Low'),
(5, 28, 6, 11, 1, 'Low'),
(6, 29, 6, 11, 4, 'Low');

-- --------------------------------------------------------

--
-- Table structure for table `subexam`
--

CREATE TABLE `subexam` (
  `subexam_num` int(11) NOT NULL,
  `exam_num` int(11) NOT NULL,
  `subexam_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subexam`
--

INSERT INTO `subexam` (`subexam_num`, `exam_num`, `subexam_name`) VALUES
(1, 1, 'SubEx1_Test'),
(3, 2, 'SubExam_test2'),
(4, 3, 'SubExam_test'),
(5, 4, 'Math'),
(6, 4, 'English'),
(7, 5, 'Math'),
(8, 5, 'English'),
(9, 5, 'Eq'),
(11, 6, 'Sample Sub Exam 1'),
(12, 6, 'Sample Sub Exam 2'),
(13, 7, 'Math'),
(14, 7, 'English');

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
-- Indexes for table `activitylog`
--
ALTER TABLE `activitylog`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`choices_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_num`);

--
-- Indexes for table `container`
--
ALTER TABLE `container`
  ADD PRIMARY KEY (`container_num`),
  ADD KEY `exam_num` (`exam_num`),
  ADD KEY `client_num` (`client_num`),
  ADD KEY `ref_num` (`ref_num`);

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
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `subexam_num` (`subexam_num`),
  ADD KEY `exam_num` (`exam_num`);

--
-- Indexes for table `normgen`
--
ALTER TABLE `normgen`
  ADD PRIMARY KEY (`norm_id`),
  ADD KEY `exam_num` (`exam_num`);

--
-- Indexes for table `normsub`
--
ALTER TABLE `normsub`
  ADD PRIMARY KEY (`norm_id`),
  ADD KEY `exam_num` (`exam_num`),
  ADD KEY `subexam_num` (`subexam_num`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`ref_num`),
  ADD KEY `fk_Perreferral` (`client_num`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `resultgen`
--
ALTER TABLE `resultgen`
  ADD PRIMARY KEY (`resultgen_num`),
  ADD KEY `exam_num` (`exam_num`),
  ADD KEY `ref_num` (`ref_num`);

--
-- Indexes for table `resultsub`
--
ALTER TABLE `resultsub`
  ADD PRIMARY KEY (`resultsub_num`),
  ADD KEY `ref_num` (`ref_num`),
  ADD KEY `subexam_num` (`subexam_num`),
  ADD KEY `exam_num` (`exam_num`);

--
-- Indexes for table `subexam`
--
ALTER TABLE `subexam`
  ADD PRIMARY KEY (`subexam_num`),
  ADD KEY `exam_num` (`exam_num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `activitylog`
--
ALTER TABLE `activitylog`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `choices_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `container`
--
ALTER TABLE `container`
  MODIFY `container_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `normgen`
--
ALTER TABLE `normgen`
  MODIFY `norm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `normsub`
--
ALTER TABLE `normsub`
  MODIFY `norm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `ref_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resultgen`
--
ALTER TABLE `resultgen`
  MODIFY `resultgen_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `resultsub`
--
ALTER TABLE `resultsub`
  MODIFY `resultsub_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subexam`
--
ALTER TABLE `subexam`
  MODIFY `subexam_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`client_num`) REFERENCES `client` (`client_num`);

--
-- Constraints for table `activitylog`
--
ALTER TABLE `activitylog`
  ADD CONSTRAINT `activitylog_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`);

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
  ADD CONSTRAINT `container_ibfk_2` FOREIGN KEY (`client_num`) REFERENCES `client` (`client_num`),
  ADD CONSTRAINT `container_ibfk_3` FOREIGN KEY (`ref_num`) REFERENCES `referral` (`ref_num`);

--
-- Constraints for table `counter`
--
ALTER TABLE `counter`
  ADD CONSTRAINT `counter_ibfk_1` FOREIGN KEY (`client_num`) REFERENCES `client` (`client_num`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`subexam_num`) REFERENCES `subexam` (`subexam_num`),
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`);

--
-- Constraints for table `normgen`
--
ALTER TABLE `normgen`
  ADD CONSTRAINT `normgen_ibfk_1` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`);

--
-- Constraints for table `normsub`
--
ALTER TABLE `normsub`
  ADD CONSTRAINT `normsub_ibfk_1` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`),
  ADD CONSTRAINT `normsub_ibfk_2` FOREIGN KEY (`subexam_num`) REFERENCES `subexam` (`subexam_num`);

--
-- Constraints for table `referral`
--
ALTER TABLE `referral`
  ADD CONSTRAINT `fk_Perreferral` FOREIGN KEY (`client_num`) REFERENCES `client` (`client_num`);

--
-- Constraints for table `resultgen`
--
ALTER TABLE `resultgen`
  ADD CONSTRAINT `resultgen_ibfk_1` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`),
  ADD CONSTRAINT `resultgen_ibfk_2` FOREIGN KEY (`ref_num`) REFERENCES `referral` (`ref_num`);

--
-- Constraints for table `resultsub`
--
ALTER TABLE `resultsub`
  ADD CONSTRAINT `resultsub_ibfk_1` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`),
  ADD CONSTRAINT `resultsub_ibfk_3` FOREIGN KEY (`ref_num`) REFERENCES `referral` (`ref_num`),
  ADD CONSTRAINT `resultsub_ibfk_5` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`);

--
-- Constraints for table `subexam`
--
ALTER TABLE `subexam`
  ADD CONSTRAINT `subexam_ibfk_1` FOREIGN KEY (`exam_num`) REFERENCES `exam` (`exam_num`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
