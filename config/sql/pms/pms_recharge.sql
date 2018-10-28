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
-- Table structure for table `pms_recharge`
--

DROP TABLE IF EXISTS `pms_recharge`;
CREATE TABLE IF NOT EXISTS `pms_recharge` (
  `ID` varchar(40) CHARACTER SET utf8 NOT NULL,
  `Date` datetime NOT NULL,
  `Email` text CHARACTER SET utf8 NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pms_recharge`
--

INSERT INTO `pms_recharge` (`ID`, `Date`, `Email`, `Amount`) VALUES
('{46D252E8-7694-4C15-AB10-99D14CEE73B1}', '2018-10-17 00:00:00', 'mannaemam@gmail.com', 2170),
('{94CEC983-C608-408E-86B5-EE99012CE047}', '2018-10-29 01:20:46', 'aswad@gmail.com', 1110);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
