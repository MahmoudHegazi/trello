-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2021 at 12:14 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task-board`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `label_title` varchar(100) NOT NULL,
  `label_color` varchar(50) NOT NULL,
  `list_title` varchar(255) NOT NULL,
  `card_order` int(11) NOT NULL,
  `list_id` varchar(50) NOT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `card_timestamp` varchar(255) DEFAULT NULL,
  `archive_class` varchar(50) DEFAULT '',
  `create_date` varchar(60) DEFAULT NULL,
  `card_attachment` varchar(20000) DEFAULT NULL,
  `labels_string` varchar(1000) CHARACTER SET utf8 DEFAULT '',
  `checklist_string` text CHARACTER SET utf8,
  `is_complete` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`id`, `title`, `description`, `label_title`, `label_color`, `list_title`, `card_order`, `list_id`, `due_date`, `card_timestamp`, `archive_class`, `create_date`, `card_attachment`, `labels_string`, `checklist_string`, `is_complete`) VALUES
(225, 'New Card', NULL, 'Priority', 'blue', 'Board List', 0, '1', '2021-08-06', '1628020875002', '', '2021-08-03 22:01PM', NULL, 'One more step,?;.|fasl&;|,red,?;.|fasl&;|,2?|s3atbbt7sl;.|/|:=?|Priority,?;.|fasl&;|,blue,?;.|fasl&;|,3?|s3atbbt7sl;.|/|:=?|', 'tested1,?;.|fasl&;|,1,?;.|fasl&;|,?|s3atbbt7sl;.|/|:=?|tested1,?;.|fasl&;|,2?|s3atbbt7sl;.|/|:=?|', 0),
(226, 'test card', NULL, '', '', 'Board List', 1, '1', '2021-08-06', '1628020888633', '', '2021-08-03 22:01PM', NULL, '', NULL, 1),
(227, 'card1', NULL, 'Design Team', 'orange', 'Board List', 2, '1', '2021-08-05', '1628020900861', '', '2021-08-03 22:01PM', NULL, 'Design Team,?;.|fasl&;|,orange,?;.|fasl&;|,4?|s3atbbt7sl;.|/|:=?|', NULL, 0),
(228, 'another card', 'I changed my mind', 'Important', 'darkblue', 'Pending', 1, '3', '2021-08-06', '1628020912465', '', '2021-08-03 22:01PM', 'https://www.google.com,|https://www.google/revesion.pdf,|https://www.google/scrape.csv,|myimage.gif,|notes.txt,|static.jpg', 'Important,?;.|fasl&;|,darkblue,?;.|fasl&;|,8?|s3atbbt7sl;.|/|:=?|', 'my checklist,?;.|fasl&;|,2,?;.|fasl&;|,?|s3atbbt7sl;.|/|:=?|another one,?;.|fasl&;|,3,?;.|fasl&;|,?|s3atbbt7sl;.|/|:=?|', 0),
(229, 'test card', NULL, '', '', 'test', 0, '7', NULL, '1628020919065', '', '2021-08-03 22:01PM', NULL, '', NULL, 0),
(232, 'my title', NULL, '', '', 'To Do', 0, '2', NULL, '1628021041208', '', '2021-08-03 22:04PM', 'www.google.com/mypdf.pdf,|www.udacity.com/course.csv', '', 'tested5,?;.|fasl&;|,2,?;.|fasl&;|,?|s3atbbt7sl;.|/|:=?|are you ok,?;.|fasl&;|,3,?;.|fasl&;|,?|s3atbbt7sl;.|/|:=?|Nice now,?;.|fasl&;|,3,?;.|fasl&;|,?|s3atbbt7sl;.|/|:=?|Very User frienly,?;.|fasl&;|,4?|s3atbbt7sl;.|/|:=?|', 0),
(233, 'test', NULL, '', '', 'To Do', 1, '2', NULL, '1628178182631', '', '2021-08-05 17:43PM', NULL, '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `color` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `title`, `color`) VALUES
(1, 'Copy Request', 'green'),
(2, 'One more step', 'red'),
(3, 'Priority', 'blue'),
(4, 'Design Team', 'orange'),
(5, 'Product Marketing', 'purple'),
(6, 'Help', 'lightblue'),
(7, 'Meeting', 'lightgreen'),
(8, 'Important', 'darkblue');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `list_order` int(255) DEFAULT NULL,
  `createdate` varchar(255) DEFAULT NULL,
  `db_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(500) NOT NULL,
  `list_timestamp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `list_order`, `createdate`, `db_date`, `title`, `list_timestamp`) VALUES
(1, 0, '7/10/2021 8:59 am', '2021-07-10 06:59:06', 'Board List', NULL),
(2, 1, '7/10/2021 8:59 am', '2021-07-10 06:59:06', 'To Do', NULL),
(3, 2, '7/10/2021 8:59 am', '2021-07-10 06:59:06', 'Pending', NULL),
(6, 5, '8/1/2021 17:58PM', '2021-08-01 15:58:03', 'myList', '1627833483024'),
(7, 1, '8/3/2021 19:22PM', '2021-08-03 17:22:05', 'test', '1628011325595');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
