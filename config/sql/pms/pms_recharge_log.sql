-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2018 at 07:27 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cseku`
--

-- --------------------------------------------------------

--
-- Table structure for table `pms_recharge_log`
--

DROP TABLE IF EXISTS `pms_recharge_log`;
CREATE TABLE IF NOT EXISTS `pms_recharge_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime NOT NULL,
  `Email` text CHARACTER SET utf8 NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pms_recharge_log`
--

INSERT INTO `pms_recharge_log` (`ID`, `Date`, `Email`, `Amount`) VALUES
(5, '2018-10-17 00:00:00', 'mannaemam@gmail.com', 100),
(6, '2018-10-19 00:00:00', 'aswad@gmail.com', 100),
(7, '2018-10-20 00:00:00', 'mannaemam@gmail.com', 50),
(8, '2018-10-20 00:00:00', 'aswad@gmail.com', 60),
(9, '2018-10-20 00:00:00', 'aswad@gmail.com', 70),
(10, '2018-10-23 00:00:00', 'aswad@gmail.com', 100),
(11, '2018-10-28 00:00:00', 'mannaemam@gmail.com', 2000),
(12, '2018-10-29 00:00:00', 'mannaemam@gmail.com', 2000),
(13, '2018-10-29 00:00:00', 'aswad@gmail.com', 1000),
(14, '2018-10-29 00:00:00', 'aswad@gmail.com', 10),
(15, '2018-10-29 01:20:46', 'aswad@gmail.com', 20);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
