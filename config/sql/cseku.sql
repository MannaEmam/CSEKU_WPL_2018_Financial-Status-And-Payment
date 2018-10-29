-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 29, 2018 at 08:39 AM
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
-- Table structure for table `pms_hall_fee`
--

DROP TABLE IF EXISTS `pms_hall_fee`;
CREATE TABLE IF NOT EXISTS `pms_hall_fee` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` int(11) NOT NULL,
  `Batch` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `HallName` text NOT NULL,
  `FiscalYear` text NOT NULL,
  `Discipline` text NOT NULL,
  `Date` date NOT NULL,
  `Admission` int(11) NOT NULL,
  `Institutional` int(11) NOT NULL,
  `IdentificationCard` int(11) NOT NULL,
  `SeatRent` int(11) NOT NULL,
  `Utensil` int(11) NOT NULL,
  `CommonRoom` int(11) NOT NULL,
  `Sports` int(11) NOT NULL,
  `ReligiousEvent` int(11) NOT NULL,
  `SecurityReturnable` int(11) NOT NULL,
  `Contingency` int(11) NOT NULL,
  `HallAnniversary` int(11) NOT NULL,
  `Fine` int(11) NOT NULL,
  `Others` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pms_hall_fee`
--

INSERT INTO `pms_hall_fee` (`ID`, `UniversityID`, `Batch`, `Name`, `Email`, `HallName`, `FiscalYear`, `Discipline`, `Date`, `Admission`, `Institutional`, `IdentificationCard`, `SeatRent`, `Utensil`, `CommonRoom`, `Sports`, `ReligiousEvent`, `SecurityReturnable`, `Contingency`, `HallAnniversary`, `Fine`, `Others`, `Total`) VALUES
('{29879C14-ED41-47B8-8A8B-5CF8CB8FF74B}', 160204, 16, 'Emamul Haque Manna', 'mannaemam@gmail.com', 'Khan Jahan Ali Hall', '2017/2018', 'Computer Science and Engineering', '2018-10-21', 1, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 80),
('{7AF241F4-0E77-4EAA-9B89-8616B5CDD9ED}', 160216, 16, 'Aswad  Alam', 'aswad@gmail.com', 'Ahsanullah Hall', '2016/2017', 'Computer Science and Engineering', '2018-10-20', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2),
('{C06F2047-430A-4DC7-8587-7DEADCF82A5E}', 160204, 16, 'Emamul Haque Manna', 'mannaemam@gmail.com', 'Khan Jahan Ali Hall', '2016/2017', 'Computer Science and Engineering', '2018-10-20', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2),
('{C9917129-8C9B-436A-81EF-981279141873}', 160216, 16, 'Aswad  Alam', 'aswad@gmail.com', 'Ahsanullah Hall', '2018/2019', 'Computer Science and Engineering', '2018-10-22', 2, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 2, 6),
('{E5644EB1-53CB-44CA-AD47-BB43F205CF68}', 160216, 16, 'Aswad  Alam', 'aswad@gmail.com', 'Ahsanullah Hall', '2017/2018', 'Computer Science and Engineering', '2018-10-22', 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 3, 6),
('{F69B2CFA-1C9F-4DA6-8053-240D1B00E002}', 160204, 16, 'Emamul Haque Manna', 'mannaemam@gmail.com', '', '', 'Computer Science and Engineering', '2018-10-29', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('{FA0A55E0-0D9D-486D-9E66-1CC8299C7A56}', 160204, 16, 'Emamul Haque Manna', 'mannaemam@gmail.com', 'Khan Jahan Ali Hall', '2018/2019', 'Computer Science and Engineering', '2018-10-22', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pms_others_fee`
--

DROP TABLE IF EXISTS `pms_others_fee`;
CREATE TABLE IF NOT EXISTS `pms_others_fee` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` int(40) NOT NULL,
  `Batch` text NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Discipline` text NOT NULL,
  `Date` date NOT NULL,
  `Description` text NOT NULL,
  `Total` int(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pms_others_fee`
--

INSERT INTO `pms_others_fee` (`ID`, `UniversityID`, `Batch`, `Name`, `Email`, `Discipline`, `Date`, `Description`, `Total`) VALUES
('{48B9FB28-B876-4296-92B6-E8EE3453E488}', 160216, '16', 'Aswad  Alam', 'aswad@gmail.com', 'Computer Science and Engineering', '2018-10-22', 'DEVELOPMENT', 10),
('{615E147F-EA16-4E2F-9A01-05515A01D3F6}', 160216, '16', 'Aswad  Alam', 'aswad@gmail.com', 'Computer Science and Engineering', '2018-10-23', 'Sports', 100),
('{76A1ED3E-84CD-42BB-8BF4-4822FC6F163E}', 160216, '16', 'Aswad  Alam', 'aswad@gmail.com', 'Computer Science and Engineering', '2018-10-22', 'CLUSTER', 5),
('{D3779D9D-A8E8-4C89-9579-7CC5429A5609}', 160204, '16', 'Emamul Haque Manna', 'mannaemam@gmail.com', 'Computer Science and Engineering', '2018-10-22', 'Cluster', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pms_payment_type`
--

DROP TABLE IF EXISTS `pms_payment_type`;
CREATE TABLE IF NOT EXISTS `pms_payment_type` (
  `ID` varchar(40) CHARACTER SET utf8 NOT NULL,
  `PID` varchar(40) CHARACTER SET utf8 NOT NULL,
  `UniversityID` int(40) NOT NULL,
  `Type` text CHARACTER SET utf8 NOT NULL,
  `Date` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pms_payment_type`
--

INSERT INTO `pms_payment_type` (`ID`, `PID`, `UniversityID`, `Type`, `Date`) VALUES
('{0D5CEF22-7AE7-4F30-894A-EA093D756CB1}', '{C9917129-8C9B-436A-81EF-981279141873}', 160216, 'Hall Fee', '2018-10-22 00:00:00'),
('{0EA045CA-E9EA-47E0-809F-D72F4A8A5E36}', '{8D94B890-D07A-43CD-B1D7-84F6177B99C8}', 160204, 'Registration Fee', '2018-10-19 00:00:00'),
('{1F88B069-5F10-4FB9-A494-59A7B28C3A23}', '{630B4A5B-F075-4C4F-BF65-C99CB3003CB5}', 160204, 'Product', '2018-10-29 01:03:50'),
('{20735E4D-1273-4D55-83C0-5362B566B005}', '{9A69A4D3-5166-4F65-80A9-5B6347A30041}', 160204, 'Registration Fee', '2018-10-20 00:00:00'),
('{2B3BF89F-AB81-44D4-A9EF-24CB17EB1720}', '{615E147F-EA16-4E2F-9A01-05515A01D3F6}', 160216, 'Others Fee', '2018-10-23 00:00:00'),
('{2D20B95F-E2F2-49D3-9108-545E203CC3EC}', '{87956421-ABC3-4FAC-888B-41EA15315A69}', 160204, 'Registration Fee', '2018-10-20 00:00:00'),
('{4A9DB965-4C22-4DA8-9654-2735D3F1878D}', '{6A7DDBAF-99A7-49B2-94E0-B451E88A29E1}', 160216, 'Registration Fee', '2018-10-23 00:00:00'),
('{57957ECF-38C3-4796-B07E-FBFA87644AF6}', '{9734E6E8-74D0-48E7-8144-5F0016455100}', 160204, 'Registration Fee', '2018-10-29 01:48:41'),
('{59878D61-4946-4608-BE94-0C47D3A8EADA}', '{C06F2047-430A-4DC7-8587-7DEADCF82A5E}', 160204, 'Hall Fee', '2018-10-20 00:00:00'),
('{5E079CBB-1378-460F-BE0A-D37354390F52}', '{B12AA071-7ACA-4221-AEE6-D45E814D5514}', 160216, 'Registration Fee', '2018-10-23 00:00:00'),
('{62E60774-A20D-4EFC-BD9B-E37B4440940A}', '{25F764F6-8DF2-4276-AB86-F6639B887AAF}', 160204, 'Product', '2018-10-29 02:24:05'),
('{67AB46B8-1EEA-46A7-98E3-481D9E24CFC0}', '{8B38CC68-FBE3-49A7-B31C-DB8D2B915159}', 160204, 'Registration Fee', '2018-10-18 00:00:00'),
('{82439869-A13E-4BA8-A531-E8596211C3DC}', '{76A1ED3E-84CD-42BB-8BF4-4822FC6F163E}', 160216, 'Others Fee', '2018-10-22 00:00:00'),
('{8AD3FC1A-6F81-4C08-A843-2B66D8498400}', '{AD69CEC5-D998-4C67-94FA-F235D4DBC077}', 160204, 'Registration Fee', '2018-10-20 00:00:00'),
('{8D88F697-D9CA-4402-9C7B-63013B72CFBD}', '{41E2A1FA-20A8-4AC5-85B0-5E8C0026D1AF}', 160204, 'Product', '2018-10-29 12:43:51'),
('{909E7B34-B267-4924-8367-8A44AA42DE46}', '{E464BEA5-AFCC-4A96-9AEC-10587AF3C5AD}', 160216, 'Registration Fee', '2018-10-19 00:00:00'),
('{9377D689-0B4E-45CA-9A7D-45CE3E70B392}', '{7AF241F4-0E77-4EAA-9B89-8616B5CDD9ED}', 160216, 'Hall Fee', '2018-10-20 00:00:00'),
('{95BB204F-170B-4410-BC70-59CE969540BF}', '{48B9FB28-B876-4296-92B6-E8EE3453E488}', 160216, 'Others Fee', '2018-10-22 00:00:00'),
('{AF5104DA-382F-446E-8C53-10E096B9E1EE}', '{29879C14-ED41-47B8-8A8B-5CF8CB8FF74B}', 160204, 'Hall Fee', '2018-10-20 00:00:00'),
('{B1D84286-B44D-44D9-B1FB-9CFC6E3301CF}', '{FA0A55E0-0D9D-486D-9E66-1CC8299C7A56}', 160204, 'Hall Fee', '2018-10-22 00:00:00'),
('{B867A4D1-FBA2-45BD-B88C-8598B9DE2946}', '{4A72D47F-AEE4-434D-9154-BB09548F5034}', 160216, 'Registration Fee', '2018-10-22 00:00:00'),
('{C35B02E5-1861-4B1E-90C4-3123553ACA6A}', '{D3779D9D-A8E8-4C89-9579-7CC5429A5609}', 160204, 'Others Fee', '2018-10-22 00:00:00'),
('{D5385D52-73B0-40D9-BE15-8E9A9903A4BF}', '{F69B2CFA-1C9F-4DA6-8053-240D1B00E002}', 160204, 'Hall Fee', '2018-10-29 01:49:33'),
('{EB94F196-8FA6-4940-829B-0403498F4746}', '{E5644EB1-53CB-44CA-AD47-BB43F205CF68}', 160216, 'Hall Fee', '2018-10-22 00:00:00'),
('{EC7A83D9-47D4-4D05-9A52-A27C9AE6C303}', '{2326EBDC-36E5-4E45-A583-8F263E364353}', 160216, 'Registration Fee', '2018-10-22 00:00:00'),
('{FBAE33C2-1575-4F90-A661-8D09B7356DBA}', '{47EE1E78-A76B-4122-8147-106E94B1C480}', 160204, 'Registration Fee', '2018-10-17 00:00:00');

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
('{46D252E8-7694-4C15-AB10-99D14CEE73B1}', '2018-10-29 12:01:09', 'mannaemam@gmail.com', 1780),
('{94CEC983-C608-408E-86B5-EE99012CE047}', '2018-10-29 01:20:46', 'aswad@gmail.com', 1110);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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
(15, '2018-10-29 01:20:46', 'aswad@gmail.com', 20),
(16, '2018-10-29 12:01:09', 'mannaemam@gmail.com', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pms_reg_fee`
--

DROP TABLE IF EXISTS `pms_reg_fee`;
CREATE TABLE IF NOT EXISTS `pms_reg_fee` (
  `ID` varchar(40) CHARACTER SET utf8 NOT NULL,
  `UniversityID` int(40) NOT NULL,
  `Batch` int(40) NOT NULL,
  `Name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `Email` varchar(40) CHARACTER SET utf8 NOT NULL,
  `Term` text CHARACTER SET utf8 NOT NULL,
  `Discipline` text CHARACTER SET utf8 NOT NULL,
  `Date` date NOT NULL,
  `AdmissionFee` double NOT NULL,
  `PayBook` double NOT NULL,
  `Security` double NOT NULL,
  `Transportation` double NOT NULL,
  `CourseRegistration` double NOT NULL,
  `Verification` double NOT NULL,
  `Retake` double NOT NULL,
  `ReRetake` double NOT NULL,
  `Bncc` double NOT NULL,
  `Library` double NOT NULL,
  `Medical` double NOT NULL,
  `Cultural` double NOT NULL,
  `ReligiousFee` double NOT NULL,
  `ExaminationFee` double NOT NULL,
  `SessionCharge` double NOT NULL,
  `Gradesheet` double NOT NULL,
  `ProvisionalCertificate` double NOT NULL,
  `MainCertificate` double NOT NULL,
  `Transcript` double NOT NULL,
  `SecurityLibrary` double NOT NULL,
  `EquivalenceCertificate` double NOT NULL,
  `FineLibrary` double NOT NULL,
  `FineRegistration` double NOT NULL,
  `Mc_Mi` double NOT NULL,
  `MphilPhd` double NOT NULL,
  `StudentWelfare` double NOT NULL,
  `Sports` double NOT NULL,
  `Publication` double NOT NULL,
  `Others` double NOT NULL,
  `Total` int(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pms_reg_fee`
--

INSERT INTO `pms_reg_fee` (`ID`, `UniversityID`, `Batch`, `Name`, `Email`, `Term`, `Discipline`, `Date`, `AdmissionFee`, `PayBook`, `Security`, `Transportation`, `CourseRegistration`, `Verification`, `Retake`, `ReRetake`, `Bncc`, `Library`, `Medical`, `Cultural`, `ReligiousFee`, `ExaminationFee`, `SessionCharge`, `Gradesheet`, `ProvisionalCertificate`, `MainCertificate`, `Transcript`, `SecurityLibrary`, `EquivalenceCertificate`, `FineLibrary`, `FineRegistration`, `Mc_Mi`, `MphilPhd`, `StudentWelfare`, `Sports`, `Publication`, `Others`, `Total`) VALUES
('{2326EBDC-36E5-4E45-A583-8F263E364353}', 160216, 16, 'Aswad  Alam', 'aswad@gmail.com', '2-1', 'Computer Science and Engineering', '2018-10-22', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6),
('{47EE1E78-A76B-4122-8147-106E94B1C480}', 160204, 16, 'Emamul Haque Manna', 'mannaemam@gmail.com', '1-1', 'Computer Science and Engineering', '2018-10-17', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
('{4A72D47F-AEE4-434D-9154-BB09548F5034}', 160216, 16, 'Aswad  Alam', 'aswad@gmail.com', '1-2', 'Computer Science and Engineering', '2018-10-22', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 6),
('{6A7DDBAF-99A7-49B2-94E0-B451E88A29E1}', 160216, 16, 'Aswad  Alam', 'aswad@gmail.com', '3-1', 'Computer Science and Engineering', '2018-10-23', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 3),
('{87956421-ABC3-4FAC-888B-41EA15315A69}', 160204, 16, 'Emamul Haque Manna', 'mannaemam@gmail.com', '2-2', 'Computer Science and Engineering', '2018-10-20', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3),
('{8B38CC68-FBE3-49A7-B31C-DB8D2B915159}', 160204, 16, 'Emamul Haque Manna', 'mannaemam@gmail.com', '1-2', 'Computer Science and Engineering', '2018-10-18', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
('{8D94B890-D07A-43CD-B1D7-84F6177B99C8}', 160204, 16, 'Emamul Haque Manna', 'mannaemam@gmail.com', '2-1', 'Computer Science and Engineering', '2018-10-19', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
('{9734E6E8-74D0-48E7-8144-5F0016455100}', 160204, 16, 'Emamul Haque Manna', 'mannaemam@gmail.com', '', 'Computer Science and Engineering', '2018-10-29', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('{9A69A4D3-5166-4F65-80A9-5B6347A30041}', 160204, 16, 'Emamul Haque Manna', 'mannaemam@gmail.com', '3-1', 'Computer Science and Engineering', '2018-10-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 4),
('{AD69CEC5-D998-4C67-94FA-F235D4DBC077}', 160204, 16, 'Emamul Haque Manna', 'mannaemam@gmail.com', '3-2', 'Computer Science and Engineering', '2018-10-26', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2),
('{B12AA071-7ACA-4221-AEE6-D45E814D5514}', 160216, 16, 'Aswad  Alam', 'aswad@gmail.com', '4-1', 'Computer Science and Engineering', '2018-10-23', 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15),
('{E464BEA5-AFCC-4A96-9AEC-10587AF3C5AD}', 160216, 16, 'Aswad  Alam', 'aswad@gmail.com', '1-1', 'Computer Science and Engineering', '2018-10-19', 5, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course`
--

DROP TABLE IF EXISTS `reg_course`;
CREATE TABLE IF NOT EXISTS `reg_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course`
--

INSERT INTO `reg_course` (`ID`, `CourseNo`, `Title`, `Credit`, `CourseTypeID`, `DisciplineID`, `IsDeleted`) VALUES
('{2A038C6A-B6DA-408D-8458-7493D4EE5D6C}', 'cse-3200', 'Web Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'cse-4112', 'Computer Networks Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0),
('{683A3D91-D124-44AF-82A3-FB43837A4392}', 'cse-4111', 'Computer Networks', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{B17BDB32-6D88-4537-9545-65D940E17EEF}', 'cse-2115', 'Advanced Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_resource`
--

DROP TABLE IF EXISTS `reg_course_resource`;
CREATE TABLE IF NOT EXISTS `reg_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_sessional_type`
--

DROP TABLE IF EXISTS `reg_course_sessional_type`;
CREATE TABLE IF NOT EXISTS `reg_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_sessional_type`
--

INSERT INTO `reg_course_sessional_type` (`ID`, `Name`) VALUES
('{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}', 'N/A'),
('{45B2147F-5FE0-4CC9-880C-C19EB6323955}', 'physics'),
('{4B342686-B38E-449C-AAD2-1F7DD77E6594}', 'chemistry'),
('{D1E54E03-CDEB-4155-AD0C-27C70A3A490C}', 'ece'),
('{D3F895D3-7389-487F-A604-0BD546DCC764}', 'software'),
('{F1D0443A-EC5D-41C4-94BA-D6F0D9AB1691}', 'hardware');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_student_registration`
--

DROP TABLE IF EXISTS `reg_course_student_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_student_registration` (
  `ID` varchar(40) NOT NULL,
  `Regs_TeacherID` varchar(40) DEFAULT NULL,
  `StudentID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) DEFAULT NULL,
  `YearID` varchar(40) DEFAULT NULL,
  `TermID` varchar(40) DEFAULT NULL,
  `IsRetake` tinyint(1) DEFAULT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_student_registration`
--

INSERT INTO `reg_course_student_registration` (`ID`, `Regs_TeacherID`, `StudentID`, `CourseID`, `SessionID`, `YearID`, `TermID`, `IsRetake`, `Status`) VALUES
('{31FDEF1E-F280-436A-AFD3-A48BA772D23D}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{3CA3ABF7-7FF8-4A32-B328-235861061B72}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B7F17833-430E-489A-9CA6-E9BBE0EFA0FD}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B8B362F3-D164-4082-AA6C-08F3EC73E2A8}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{C8AE75F9-1644-48C5-87D0-4AFEC777C122}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'submitted'),
('{DBE4ED93-4A97-41CF-B8E3-5E42AEC0246F}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher`
--

DROP TABLE IF EXISTS `reg_course_teacher`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `NoOfTests` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher`
--

INSERT INTO `reg_course_teacher` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `NoOfTests`) VALUES
('{0BA78ECC-A6E7-4EA8-9BFA-6C599F88F76D}', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 5),
('{C4490FFA-154B-45FE-9773-744B3E6FDFF7}', '{683A3D91-D124-44AF-82A3-FB43837A4392}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher_registration`
--

DROP TABLE IF EXISTS `reg_course_teacher_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher_registration` (
  `ID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher_registration`
--

INSERT INTO `reg_course_teacher_registration` (`ID`, `TeacherID`, `SessionID`, `YearID`, `TermID`) VALUES
('{4D389527-643B-4B05-80AB-E05A6EF8DE2A}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_type`
--

DROP TABLE IF EXISTS `reg_course_type`;
CREATE TABLE IF NOT EXISTS `reg_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_type`
--

INSERT INTO `reg_course_type` (`ID`, `Name`, `SessionalTypeID`) VALUES
('{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'Theory', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{5F886686-4EB1-48C8-A801-8D46233739D1}', 'Thesis', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'Sessional', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_registration_session`
--

DROP TABLE IF EXISTS `reg_registration_session`;
CREATE TABLE IF NOT EXISTS `reg_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_registration_session`
--

INSERT INTO `reg_registration_session` (`ID`, `Name`) VALUES
('{05DA37EB-6C62-45E9-A0E3-7C5C6943F6AD}', '2012-2013'),
('{1399EEA3-B939-4155-B9F3-4DAD4928C4D5}', '2014-2015'),
('{65C2BA57-7231-497A-A5A7-90912259684C}', '2011-2012'),
('{A36A7057-CDB5-4E10-9E61-CCC85C74460E}', '2013-2014'),
('{DFF9E45F-6954-46A1-9088-D930EE460C3F}', '2015-2016'),
('{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `reg_term`
--

DROP TABLE IF EXISTS `reg_term`;
CREATE TABLE IF NOT EXISTS `reg_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_term`
--

INSERT INTO `reg_term` (`ID`, `Name`) VALUES
('{6DE3CF58-3A1A-4D6A-88CF-83F22C27E0BA}', 'Special'),
('{AF8B217E-4E76-41B8-A02A-7115BD4A6BE6}', '2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `reg_year`
--

DROP TABLE IF EXISTS `reg_year`;
CREATE TABLE IF NOT EXISTS `reg_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_year`
--

INSERT INTO `reg_year` (`ID`, `Name`) VALUES
('{1FAC0F1A-9D60-43F6-AB07-C933D5A4AA30}', 'Phd 1st'),
('{326B168F-58CC-42F3-B71A-DFE8DBBC05E8}', 'MSc 1st'),
('{6780C884-E112-4F58-9503-E2110B615547}', '4th'),
('{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '1st'),
('{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '3rd'),
('{ADBEDD3E-D8EA-47AA-A068-C4C703DB4AE6}', 'MSc 2nd'),
('{B9D6CC05-7AD4-4666-80AB-80797A872743}', 'Phd 2nd'),
('{CBE08035-94CD-4610-B4E2-A0E844184056}', 'Phd 4th'),
('{E3823AA6-6BE5-4A07-93EA-FA59DE4F616F}', 'Phd 3rd'),
('{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result`
--

DROP TABLE IF EXISTS `rms_course_marks_result`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `Status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_result`
--

INSERT INTO `rms_course_marks_result` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksID`, `MarksValue`, `Status`) VALUES
('{44C3C858-AFC6-4592-B160-10B921BF381C}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '10,25,25,25', '');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result_publish`
--

DROP TABLE IF EXISTS `rms_course_marks_result_publish`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result_publish` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `MarksTotal` varchar(20) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `GradeRanges` varchar(300) NOT NULL,
  `FinalGrade` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_tests`
--

DROP TABLE IF EXISTS `rms_course_marks_tests`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_tests` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_tests`
--

INSERT INTO `rms_course_marks_tests` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksValue`) VALUES
('{037E6C4F-CAAE-4587-B3E1-1CC6E59101A4}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020203', '12,20,20'),
('{222F2596-5F55-442C-80EA-F5AE7F466C70}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '15,25,20'),
('{71D63076-9096-4CAA-8D6D-782A25B076A7}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '15,20,20'),
('{B6BB339D-E40B-4CC4-8D34-07017EE2BE44}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '10,30,30,0,0'),
('{DBF1823F-0DF9-4E8F-9233-5AB1545BC1B7}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '20,20,20,0,0');

-- --------------------------------------------------------

--
-- Table structure for table `rms_grade_setup`
--

DROP TABLE IF EXISTS `rms_grade_setup`;
CREATE TABLE IF NOT EXISTS `rms_grade_setup` (
  `ID` varchar(40) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `Ranges` varchar(300) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_grade_setup`
--

INSERT INTO `rms_grade_setup` (`ID`, `Grades`, `Ranges`, `IsDefault`) VALUES
('{FC3DBA75-AF9C-4533-825E-D8A01D076F60}', 'F,E,D,C,C+,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rms_marks_setup`
--

DROP TABLE IF EXISTS `rms_marks_setup`;
CREATE TABLE IF NOT EXISTS `rms_marks_setup` (
  `ID` varchar(40) NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_marks_setup`
--

INSERT INTO `rms_marks_setup` (`ID`, `CourseTypeID`, `HeaderID`, `HeaderName`, `HeaderMax`, `IsDefault`) VALUES
('{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', 1),
('{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
CREATE TABLE IF NOT EXISTS `tbl_cart` (
  `ID` varchar(40) NOT NULL,
  `ProductID` varchar(40) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `Datetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `CategoryID` varchar(40) NOT NULL,
  `Price` double NOT NULL,
  `OfferedCredit` double NOT NULL,
  `PictureAddress` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`ID`, `Name`, `CategoryID`, `Price`, `OfferedCredit`, `PictureAddress`) VALUES
('{1A53D0E6-A580-4EA9-A2F9-B35CF92DDD01}', 'Forest Growth Simulation', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 600, 65, '9781604697285r.jpg'),
('{34A3C9A7-4B6C-4398-8845-76399D6878E0}', 'Compiler', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 300, 60, 'compilers.jpg'),
('{4308E3A8-E74F-49DC-A2BA-D26CEF37C37C}', 'Computer Graphics', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 400, 30, 'graphics.jpeg'),
('{8C35D14E-BA72-4FEC-8703-1C7BF08760A1}', 'Java', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 400, 40, 'bangla_c.jpg'),
('{9A912360-8C34-46EB-BFC2-698F237CC5D3}', 'Computer Networks', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 200, 20, 'networking.png'),
('{C7DA13A3-5A5C-4361-BCA5-12EA1C632E0A}', 'Web Learning', '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 400, 40, '9781785280351.png'),
('{CBF2600B-4FD3-41C8-A243-BFEE6C0DB1C3}', 'Bangla C', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 400, 40, 'bangla_c.jpg'),
('{CC9C78DE-7022-4053-8951-B92BDF35D33D}', 'Deep Learning', '{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 550, 55, 'deep_learning.jpg'),
('{F14C8CA7-7F3F-45A0-95E5-2359805F2B96}', 'Computer Fundamentals', '{3D212234-2F34-4AB0-83EF-1A772068403B}', 260, 26, 'computer_fundamentals.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

DROP TABLE IF EXISTS `tbl_product_category`;
CREATE TABLE IF NOT EXISTS `tbl_product_category` (
  `ID` varchar(40) NOT NULL,
  `Category` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`ID`, `Category`) VALUES
('{3D212234-2F34-4AB0-83EF-1A772068403B}', 'Book'),
('{44CAEE8D-A9D7-48C8-A2EA-A7463E00FCD6}', 'Thesis Book');

-- --------------------------------------------------------

--
-- Table structure for table `ums_discipline`
--

DROP TABLE IF EXISTS `ums_discipline`;
CREATE TABLE IF NOT EXISTS `ums_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_discipline`
--

INSERT INTO `ums_discipline` (`ID`, `Name`, `ShortCode`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics', 'MATH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', 'ARCH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', 'FWT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', 'URP', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'Foresty and Marine Resource Technology', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', 'PHY', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', 'CSE', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_permission`
--

DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE IF NOT EXISTS `ums_permission` (
  `TableID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`TableID`)
) ENGINE=InnoDB AUTO_INCREMENT=13553 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_permission`
--

INSERT INTO `ums_permission` (`TableID`, `ID`, `Name`, `Category`) VALUES
(13417, 'COURSE_C', 'COURSE_C', 'COURSE'),
(13418, 'COURSE_R', 'COURSE_R', 'COURSE'),
(13419, 'COURSE_U', 'COURSE_U', 'COURSE'),
(13420, 'COURSE_D', 'COURSE_D', 'COURSE'),
(13421, 'COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
(13422, 'COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
(13423, 'COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
(13424, 'COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
(13425, 'COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
(13426, 'COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
(13427, 'COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
(13428, 'COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
(13429, 'CLUB_C', 'CLUB_C', 'CLUB'),
(13430, 'CLUB_R', 'CLUB_R', 'CLUB'),
(13431, 'CLUB_U', 'CLUB_U', 'CLUB'),
(13432, 'CLUB_D', 'CLUB_D', 'CLUB'),
(13433, 'DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
(13434, 'DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
(13435, 'DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
(13436, 'DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
(13437, 'DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
(13438, 'DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
(13439, 'DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
(13440, 'DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
(13441, 'DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
(13442, 'DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
(13443, 'DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
(13444, 'DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
(13445, 'DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
(13446, 'DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
(13447, 'DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
(13448, 'DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
(13449, 'FILE_C', 'FILE_C', 'FILE'),
(13450, 'FILE_R', 'FILE_R', 'FILE'),
(13451, 'FILE_U', 'FILE_U', 'FILE'),
(13452, 'FILE_D', 'FILE_D', 'FILE'),
(13453, 'PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
(13454, 'PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
(13455, 'PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
(13456, 'PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
(13457, 'POSITION_C', 'POSITION_C', 'POSITION'),
(13458, 'POSITION_R', 'POSITION_R', 'POSITION'),
(13459, 'POSITION_U', 'POSITION_U', 'POSITION'),
(13460, 'POSITION_D', 'POSITION_D', 'POSITION'),
(13461, 'PROJECT_C', 'PROJECT_C', 'PROJECT'),
(13462, 'PROJECT_R', 'PROJECT_R', 'PROJECT'),
(13463, 'PROJECT_U', 'PROJECT_U', 'PROJECT'),
(13464, 'PROJECT_D', 'PROJECT_D', 'PROJECT'),
(13465, 'QUESTION_C', 'QUESTION_C', 'QUESTION'),
(13466, 'QUESTION_R', 'QUESTION_R', 'QUESTION'),
(13467, 'QUESTION_U', 'QUESTION_U', 'QUESTION'),
(13468, 'QUESTION_D', 'QUESTION_D', 'QUESTION'),
(13469, 'REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
(13470, 'REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
(13471, 'REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
(13472, 'REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
(13473, 'RESULT_C', 'RESULT_C', 'RESULT'),
(13474, 'RESULT_R', 'RESULT_R', 'RESULT'),
(13475, 'RESULT_U', 'RESULT_U', 'RESULT'),
(13476, 'RESULT_D', 'RESULT_D', 'RESULT'),
(13477, 'ATTENDANCE_C', 'ATTENDANCE_C', 'ATTENDANCE'),
(13478, 'ATTENDANCE_R', 'ATTENDANCE_R', 'ATTENDANCE'),
(13479, 'ATTENDANCE_U', 'ATTENDANCE_U', 'ATTENDANCE'),
(13480, 'ATTENDANCE_D', 'ATTENDANCE_D', 'ATTENDANCE'),
(13481, 'MARKS_SETUP_C', 'MARKS_SETUP_C', 'MARKS_SETUP'),
(13482, 'MARKS_SETUP_R', 'MARKS_SETUP_R', 'MARKS_SETUP'),
(13483, 'MARKS_SETUP_U', 'MARKS_SETUP_U', 'MARKS_SETUP'),
(13484, 'MARKS_SETUP_D', 'MARKS_SETUP_D', 'MARKS_SETUP'),
(13485, 'GRADE_SETUP_C', 'GRADE_SETUP_C', 'GRADE_SETUP'),
(13486, 'GRADE_SETUP_R', 'GRADE_SETUP_R', 'GRADE_SETUP'),
(13487, 'GRADE_SETUP_U', 'GRADE_SETUP_U', 'GRADE_SETUP'),
(13488, 'GRADE_SETUP_D', 'GRADE_SETUP_D', 'GRADE_SETUP'),
(13489, 'ROLE_C', 'ROLE_C', 'ROLE'),
(13490, 'ROLE_R', 'ROLE_R', 'ROLE'),
(13491, 'ROLE_U', 'ROLE_U', 'ROLE'),
(13492, 'ROLE_D', 'ROLE_D', 'ROLE'),
(13493, 'SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
(13494, 'SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
(13495, 'SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
(13496, 'SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
(13497, 'SESSION_C', 'SESSION_C', 'SESSION'),
(13498, 'SESSION_R', 'SESSION_R', 'SESSION'),
(13499, 'SESSION_U', 'SESSION_U', 'SESSION'),
(13500, 'SESSION_D', 'SESSION_D', 'SESSION'),
(13501, 'SURVEY_C', 'SURVEY_C', 'SURVEY'),
(13502, 'SURVEY_R', 'SURVEY_R', 'SURVEY'),
(13503, 'SURVEY_U', 'SURVEY_U', 'SURVEY'),
(13504, 'SURVEY_D', 'SURVEY_D', 'SURVEY'),
(13505, 'SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
(13506, 'SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
(13507, 'SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
(13508, 'SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
(13509, 'SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
(13510, 'SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
(13511, 'SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
(13512, 'SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
(13513, 'SURVEY_QUESTION_FILLUP_C', 'SURVEY_QUESTION_FILLUP_C', 'SURVEY QUESTION FILLUP'),
(13514, 'SURVEY_QUESTION_FILLUP_R', 'SURVEY_QUESTION_FILLUP_R', 'SURVEY QUESTION FILLUP'),
(13515, 'SURVEY_QUESTION_FILLUP_U', 'SURVEY_QUESTION_FILLUP_U', 'SURVEY QUESTION FILLUP'),
(13516, 'SURVEY_QUESTION_FILLUP_D', 'SURVEY_QUESTION_FILLUP_D', 'SURVEY QUESTION FILLUP'),
(13517, 'TERM_C', 'TERM_C', 'TERM'),
(13518, 'TERM_R', 'TERM_R', 'TERM'),
(13519, 'TERM_U', 'TERM_U', 'TERM'),
(13520, 'TERM_D', 'TERM_D', 'TERM'),
(13521, 'USER_C', 'USER_C', 'USER'),
(13522, 'USER_R', 'USER_R', 'USER'),
(13523, 'USER_U', 'USER_U', 'USER'),
(13524, 'USER_D', 'USER_D', 'USER'),
(13525, 'YEAR_C', 'YEAR_C', 'YEAR'),
(13526, 'YEAR_R', 'YEAR_R', 'YEAR'),
(13527, 'YEAR_U', 'YEAR_U', 'YEAR'),
(13528, 'YEAR_D', 'YEAR_D', 'YEAR'),
(13529, 'VIDEO_C', 'VIDEO_C', 'VIDEO'),
(13530, 'VIDEO_R', 'VIDEO_R', 'VIDEO'),
(13531, 'VIDEO_U', 'VIDEO_U', 'VIDEO'),
(13532, 'VIDEO_D', 'VIDEO_D', 'VIDEO'),
(13533, 'VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
(13534, 'VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
(13535, 'VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
(13536, 'VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT'),
(13537, 'PAYMENT_C', 'PAYMENT_C', 'PAYMENT'),
(13538, 'PAYMENT_R', 'PAYMENT_R', 'PAYMENT'),
(13539, 'PAYMENT_U', 'PAYMENT_U', 'PAYMENT'),
(13540, 'PAYMENT_D', 'PAYMENT_D', 'PAYMENT'),
(13541, 'PAYMENT_LOG_C', 'PAYMENT_LOG_C', 'PAYMENT_LOG'),
(13542, 'PAYMENT_LOG_R', 'PAYMENT_LOG_R', 'PAYMENT_LOG'),
(13543, 'PAYMENT_LOG_U', 'PAYMENT_LOG_U', 'PAYMENT_LOG'),
(13544, 'PAYMENT_LOG_D', 'PAYMENT_LOG_D', 'PAYMENT_LOG'),
(13545, 'PAYMENT_RECHARGE_C', 'PAYMENT_RECHARGE_C', 'PAYMENT_RECHARGE'),
(13546, 'PAYMENT_RECHARGE_R', 'PAYMENT_RECHARGE_R', 'PAYMENT_RECHARGE'),
(13547, 'PAYMENT_RECHARGE_U', 'PAYMENT_RECHARGE_U', 'PAYMENT_RECHARGE'),
(13548, 'PAYMENT_RECHARGE_D', 'PAYMENT_RECHARGE_D', 'PAYMENT_RECHARGE'),
(13549, 'PRODUCT_C', 'PRODUCT_C', 'PRODUCT'),
(13550, 'PRODUCT_R', 'PRODUCT_R', 'PRODUCT'),
(13551, 'PRODUCT_U', 'PRODUCT_U', 'PRODUCT'),
(13552, 'PRODUCT_D', 'PRODUCT_D', 'PRODUCT');

-- --------------------------------------------------------

--
-- Table structure for table `ums_position`
--

DROP TABLE IF EXISTS `ums_position`;
CREATE TABLE IF NOT EXISTS `ums_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_position`
--

INSERT INTO `ums_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role`
--

DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE IF NOT EXISTS `ums_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role`
--

INSERT INTO `ums_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role_permission`
--

DROP TABLE IF EXISTS `ums_role_permission`;
CREATE TABLE IF NOT EXISTS `ums_role_permission` (
  `Row` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL,
  PRIMARY KEY (`Row`)
) ENGINE=InnoDB AUTO_INCREMENT=2520 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role_permission`
--

INSERT INTO `ums_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(1453, 'teacher', 'COURSE_C'),
(1454, 'teacher', 'COURSE_D'),
(1455, 'teacher', 'COURSE_R'),
(1456, 'teacher', 'COURSE_U'),
(1457, 'teacher', 'DISCUSSION_C'),
(1458, 'teacher', 'DISCUSSION_D'),
(1459, 'teacher', 'DISCUSSION_R'),
(1460, 'teacher', 'DISCUSSION_U'),
(1461, 'teacher', 'DISCUSSION_CAT_C'),
(1462, 'teacher', 'DISCUSSION_CAT_D'),
(1463, 'teacher', 'DISCUSSION_CAT_R'),
(1464, 'teacher', 'DISCUSSION_CAT_U'),
(1465, 'teacher', 'DISCUSSION_COMMENT_C'),
(1466, 'teacher', 'DISCUSSION_COMMENT_D'),
(1467, 'teacher', 'DISCUSSION_COMMENT_R'),
(1468, 'teacher', 'DISCUSSION_COMMENT_U'),
(1469, 'teacher', 'FILE_C'),
(1470, 'teacher', 'FILE_D'),
(1471, 'teacher', 'FILE_R'),
(1472, 'teacher', 'FILE_U'),
(1473, 'teacher', 'PROJECT_C'),
(1474, 'teacher', 'PROJECT_D'),
(1475, 'teacher', 'PROJECT_R'),
(1476, 'teacher', 'PROJECT_U'),
(1477, 'teacher', 'QUESTION_C'),
(1478, 'teacher', 'QUESTION_D'),
(1479, 'teacher', 'QUESTION_R'),
(1480, 'teacher', 'QUESTION_U'),
(1481, 'teacher', 'REGISTRATION_C'),
(1482, 'teacher', 'REGISTRATION_D'),
(1483, 'teacher', 'REGISTRATION_R'),
(1484, 'teacher', 'REGISTRATION_U'),
(1485, 'teacher', 'RESULT_C'),
(1486, 'teacher', 'RESULT_D'),
(1487, 'teacher', 'RESULT_R'),
(1488, 'teacher', 'RESULT_U'),
(2211, '', 'PRODUCT_C'),
(2212, '', 'PRODUCT_R'),
(2213, '', 'PRODUCT_U'),
(2214, '', 'PRODUCT_D'),
(2351, 'student', 'CLUB_C'),
(2352, 'student', 'CLUB_R'),
(2353, 'student', 'CLUB_U'),
(2354, 'student', 'CLUB_D'),
(2355, 'student', 'DISCUSSION_C'),
(2356, 'student', 'DISCUSSION_R'),
(2357, 'student', 'DISCUSSION_U'),
(2358, 'student', 'DISCUSSION_D'),
(2359, 'student', 'DISCUSSION_COMMENT_C'),
(2360, 'student', 'DISCUSSION_COMMENT_R'),
(2361, 'student', 'DISCUSSION_COMMENT_U'),
(2362, 'student', 'DISCUSSION_COMMENT_D'),
(2363, 'student', 'PAYMENT_C'),
(2364, 'student', 'PAYMENT_R'),
(2365, 'student', 'PAYMENT_U'),
(2366, 'student', 'PAYMENT_D'),
(2367, 'student', 'PRODUCT_C'),
(2368, 'student', 'PRODUCT_R'),
(2369, 'student', 'PROJECT_C'),
(2370, 'student', 'PROJECT_R'),
(2371, 'student', 'PROJECT_U'),
(2372, 'student', 'PROJECT_D'),
(2373, 'student', 'QUESTION_C'),
(2374, 'student', 'QUESTION_R'),
(2375, 'student', 'QUESTION_U'),
(2376, 'student', 'QUESTION_D'),
(2377, 'student', 'REGISTRATION_R'),
(2378, 'student', 'RESULT_R'),
(2379, 'student', 'USER_R'),
(2380, 'student', 'VIDEO_C'),
(2381, 'student', 'VIDEO_R'),
(2382, 'student', 'VIDEO_U'),
(2383, 'student', 'VIDEO_D'),
(2384, 'administrator', 'ATTENDANCE_C'),
(2385, 'administrator', 'ATTENDANCE_R'),
(2386, 'administrator', 'ATTENDANCE_U'),
(2387, 'administrator', 'ATTENDANCE_D'),
(2388, 'administrator', 'CLUB_C'),
(2389, 'administrator', 'CLUB_R'),
(2390, 'administrator', 'CLUB_U'),
(2391, 'administrator', 'CLUB_D'),
(2392, 'administrator', 'COURSE_C'),
(2393, 'administrator', 'COURSE_R'),
(2394, 'administrator', 'COURSE_U'),
(2395, 'administrator', 'COURSE_D'),
(2396, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(2397, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(2398, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(2399, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(2400, 'administrator', 'COURSE_TYPE_C'),
(2401, 'administrator', 'COURSE_TYPE_R'),
(2402, 'administrator', 'COURSE_TYPE_U'),
(2403, 'administrator', 'COURSE_TYPE_D'),
(2404, 'administrator', 'DISCIPLINE_C'),
(2405, 'administrator', 'DISCIPLINE_R'),
(2406, 'administrator', 'DISCIPLINE_U'),
(2407, 'administrator', 'DISCIPLINE_D'),
(2408, 'administrator', 'DISCUSSION_C'),
(2409, 'administrator', 'DISCUSSION_R'),
(2410, 'administrator', 'DISCUSSION_U'),
(2411, 'administrator', 'DISCUSSION_D'),
(2412, 'administrator', 'DISCUSSION_CAT_C'),
(2413, 'administrator', 'DISCUSSION_CAT_R'),
(2414, 'administrator', 'DISCUSSION_CAT_U'),
(2415, 'administrator', 'DISCUSSION_CAT_D'),
(2416, 'administrator', 'DISCUSSION_COMMENT_C'),
(2417, 'administrator', 'DISCUSSION_COMMENT_R'),
(2418, 'administrator', 'DISCUSSION_COMMENT_U'),
(2419, 'administrator', 'DISCUSSION_COMMENT_D'),
(2420, 'administrator', 'FILE_C'),
(2421, 'administrator', 'FILE_R'),
(2422, 'administrator', 'FILE_U'),
(2423, 'administrator', 'FILE_D'),
(2424, 'administrator', 'GRADE_SETUP_C'),
(2425, 'administrator', 'GRADE_SETUP_R'),
(2426, 'administrator', 'GRADE_SETUP_U'),
(2427, 'administrator', 'GRADE_SETUP_D'),
(2428, 'administrator', 'MARKS_SETUP_C'),
(2429, 'administrator', 'MARKS_SETUP_R'),
(2430, 'administrator', 'MARKS_SETUP_U'),
(2431, 'administrator', 'MARKS_SETUP_D'),
(2432, 'administrator', 'PAYMENT_C'),
(2433, 'administrator', 'PAYMENT_R'),
(2434, 'administrator', 'PAYMENT_U'),
(2435, 'administrator', 'PAYMENT_D'),
(2436, 'administrator', 'PAYMENT_LOG_C'),
(2437, 'administrator', 'PAYMENT_LOG_R'),
(2438, 'administrator', 'PAYMENT_LOG_U'),
(2439, 'administrator', 'PAYMENT_LOG_D'),
(2440, 'administrator', 'PAYMENT_RECHARGE_C'),
(2441, 'administrator', 'PAYMENT_RECHARGE_R'),
(2442, 'administrator', 'PAYMENT_RECHARGE_U'),
(2443, 'administrator', 'PAYMENT_RECHARGE_D'),
(2444, 'administrator', 'PERMISSION_C'),
(2445, 'administrator', 'PERMISSION_R'),
(2446, 'administrator', 'PERMISSION_U'),
(2447, 'administrator', 'PERMISSION_D'),
(2448, 'administrator', 'POSITION_C'),
(2449, 'administrator', 'POSITION_R'),
(2450, 'administrator', 'POSITION_U'),
(2451, 'administrator', 'POSITION_D'),
(2452, 'administrator', 'PRODUCT_C'),
(2453, 'administrator', 'PRODUCT_R'),
(2454, 'administrator', 'PRODUCT_U'),
(2455, 'administrator', 'PRODUCT_D'),
(2456, 'administrator', 'PROJECT_C'),
(2457, 'administrator', 'PROJECT_R'),
(2458, 'administrator', 'PROJECT_U'),
(2459, 'administrator', 'PROJECT_D'),
(2460, 'administrator', 'QUESTION_C'),
(2461, 'administrator', 'QUESTION_R'),
(2462, 'administrator', 'QUESTION_U'),
(2463, 'administrator', 'QUESTION_D'),
(2464, 'administrator', 'REGISTRATION_C'),
(2465, 'administrator', 'REGISTRATION_R'),
(2466, 'administrator', 'REGISTRATION_U'),
(2467, 'administrator', 'REGISTRATION_D'),
(2468, 'administrator', 'RESULT_C'),
(2469, 'administrator', 'RESULT_R'),
(2470, 'administrator', 'RESULT_U'),
(2471, 'administrator', 'RESULT_D'),
(2472, 'administrator', 'ROLE_C'),
(2473, 'administrator', 'ROLE_R'),
(2474, 'administrator', 'ROLE_U'),
(2475, 'administrator', 'ROLE_D'),
(2476, 'administrator', 'SCHOOL_C'),
(2477, 'administrator', 'SCHOOL_R'),
(2478, 'administrator', 'SCHOOL_U'),
(2479, 'administrator', 'SCHOOL_D'),
(2480, 'administrator', 'SESSION_C'),
(2481, 'administrator', 'SESSION_R'),
(2482, 'administrator', 'SESSION_U'),
(2483, 'administrator', 'SESSION_D'),
(2484, 'administrator', 'SURVEY_C'),
(2485, 'administrator', 'SURVEY_R'),
(2486, 'administrator', 'SURVEY_U'),
(2487, 'administrator', 'SURVEY_D'),
(2488, 'administrator', 'SURVEY_QUESTION_C'),
(2489, 'administrator', 'SURVEY_QUESTION_R'),
(2490, 'administrator', 'SURVEY_QUESTION_U'),
(2491, 'administrator', 'SURVEY_QUESTION_D'),
(2492, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(2493, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(2494, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(2495, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(2496, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(2497, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(2498, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(2499, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(2500, 'administrator', 'TERM_C'),
(2501, 'administrator', 'TERM_R'),
(2502, 'administrator', 'TERM_U'),
(2503, 'administrator', 'TERM_D'),
(2504, 'administrator', 'USER_C'),
(2505, 'administrator', 'USER_R'),
(2506, 'administrator', 'USER_U'),
(2507, 'administrator', 'USER_D'),
(2508, 'administrator', 'VIDEO_C'),
(2509, 'administrator', 'VIDEO_R'),
(2510, 'administrator', 'VIDEO_U'),
(2511, 'administrator', 'VIDEO_D'),
(2512, 'administrator', 'VIDEO_COMMENT_C'),
(2513, 'administrator', 'VIDEO_COMMENT_R'),
(2514, 'administrator', 'VIDEO_COMMENT_U'),
(2515, 'administrator', 'VIDEO_COMMENT_D'),
(2516, 'administrator', 'YEAR_C'),
(2517, 'administrator', 'YEAR_R'),
(2518, 'administrator', 'YEAR_U'),
(2519, 'administrator', 'YEAR_D');

-- --------------------------------------------------------

--
-- Table structure for table `ums_school`
--

DROP TABLE IF EXISTS `ums_school`;
CREATE TABLE IF NOT EXISTS `ums_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_school`
--

INSERT INTO `ums_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', ''),
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user`
--

DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE IF NOT EXISTS `ums_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DisciplineID` varchar(40) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` varchar(10) DEFAULT NULL,
  `IsArchived` varchar(10) DEFAULT NULL,
  `IsDeleted` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `UniversityID` (`UniversityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user`
--

INSERT INTO `ums_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `MiddleName`, `LastName`, `DisciplineID`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('aswad@gmail.com', '160216', 'aswad@gmail.com', '$2y$10$bnSwX946Mgb9BGSd4Lk5jugkCY3dOCMl9Ec7L2khSjh8I7Pgx3VrG', 'Aswad', '', 'Alam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('aysha@gmail.com', '020208', 'aysha@gmail.com', '$2y$10$pJX46d.T.jkANrRShAm0qOMYkYJ/YbNfu09BFmcmMiYGKfuuEcWgO', 'Aysha', 'mrs', 'Akther', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('kashif@gmail.com', '020202', 'kashif@gmail.com', '123', 'Kashif', 'Nizam', 'Khan', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('mannaemam@gmail.com', '160204', 'mannaemam@gmail.com', '$2y$10$D5XCCvmo5jJjySr5QCo5g.MpRzgcpzvpTkvK7eff4ZY2izm68BLo.', 'Emamul', 'Haque', 'Manna', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('mkazi078@uottawa.ca', '020229', 'mkazi078@uottawa.ca', '$2y$10$l0gFzILMq03DcwcBGxIdgunnOd9G5kF8J8ucZZvCKkt8mNGlI74/W', 'Kazi', 'Masudul', 'Alam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('sumit@gmail.com', '160205', 'sumit@gmail.com', '$2y$10$rkXrq1vv8Q21JPa5pTLDV.Aghk/GwTa0uWDqgDA3SjqA8ib46oGnW', 'Sumit', 'Kumar', 'Dam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('zahid@gmail.com', '020203', 'zahid@gmail.com', '$2y$10$nLZhZRneURR.v2AFqWw9KOe6/J60pCV/ioBnJnruw5H/Xf3x0lFy6', 'Zahidul', '', 'Islam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_details`
--

DROP TABLE IF EXISTS `ums_user_details`;
CREATE TABLE IF NOT EXISTS `ums_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_details`
--

INSERT INTO `ums_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`) VALUES
('abir@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('aswad@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('aysha@gmail.com', 'f', 'm', 'Dr. Kazi Masudul Alam', '12313123123', 'Computer Science and Engineering Discipline, Khulna University', '45 '),
('kashif@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mannaemam@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mkazi078@uottawa.ca', 'Kazi Shahidul Alam', 'Hosneara Jahan', '49/2, Rokon Uddin Sarak, East Baniakhamar, Khulna', '0417223344', 'Same', '01711149360 '),
('sumit@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('zahid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_discipline`
--

DROP TABLE IF EXISTS `ums_user_discipline`;
CREATE TABLE IF NOT EXISTS `ums_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_position`
--

DROP TABLE IF EXISTS `ums_user_position`;
CREATE TABLE IF NOT EXISTS `ums_user_position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_position`
--

INSERT INTO `ums_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(50, 'aysha@gmail.com', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(51, 'mkazi078@uottawa.ca', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_role`
--

DROP TABLE IF EXISTS `ums_user_role`;
CREATE TABLE IF NOT EXISTS `ums_user_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_role`
--

INSERT INTO `ums_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(122, 'middle@test.com', 'student'),
(123, 'middle@test.com', 'student'),
(124, 'middle@test.com', 'student'),
(125, 'middle@test.com', 'student'),
(126, 'middle@test.com', 'student'),
(127, 'middle@test.com', 'student'),
(128, 'middle@test.com', 'student'),
(129, 'middle@test.com', 'student'),
(130, 'middle@test.com', 'student'),
(131, 'middle@test.com', 'student'),
(132, 'middle@test.com', 'student'),
(133, 'middle@test.com', 'student'),
(134, 'middle@test.com', 'student'),
(135, 'middle@test.com', 'student'),
(136, 'middle@test.com', 'student'),
(137, 'middle@test.com', 'student'),
(138, 'middle@test.com', 'student'),
(142, 'zahid@gmail.com', 'student'),
(144, 'middle1@test.com', 'student'),
(145, 'kashif@gmail.com', 'student'),
(164, 'aysha@gmail.com', 'administrator'),
(165, 'mkazi078@uottawa.ca', 'administrator'),
(167, 'mannaemam@gmail.com', 'administrator'),
(169, 'aswad@gmail.com', 'student'),
(170, 'abir@gmail.com', 'student'),
(171, 'sumit@gmail.com', 'student');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
