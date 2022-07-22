-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 08:57 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccine tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminoxygen`
--

CREATE TABLE `adminoxygen` (
  `CenterName` varchar(50) NOT NULL,
  `Liters` varchar(50) NOT NULL,
  `CenterAddress` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminoxygen`
--

INSERT INTO `adminoxygen` (`CenterName`, `Liters`, `CenterAddress`, `Contact`, `id`) VALUES
('Manipal Hospital', '30', 'Jayamahal', '2645781364', '1'),
('Sparsh Hospital', '1000', 'Infantry Road	', '8745261289', '10'),
('Fortis Hospital', '12', 'Shivajinagar', '2494476526', '2'),
('Santosh Hospital', '1000', 'Frazer Town', '45569981', '3'),
('Jain Hospital', 'nil', 'Benson Town	', '264578136', '4'),
('Vikram Hospital', '500 ', 'Mekhri Circle		', '987452642', '5'),
('Vishwa Hospital', 'nil', 'Yelhanka	', '245789634', '6'),
('Apollo Hospital', '600', 'Tumkur', '9874147852', '7'),
('Divine Hospital', 'nil', 'SK Garden', '8798745327', '8'),
('Sundar Hospital', 'nil', 'Promenade Road', '983215632', '9');

-- --------------------------------------------------------

--
-- Table structure for table `adminregister`
--

CREATE TABLE `adminregister` (
  `u_id` int(11) NOT NULL,
  `u_fname` varchar(50) NOT NULL,
  `u_lname` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_address` varchar(50) NOT NULL,
  `u_uname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminregister`
--

INSERT INTO `adminregister` (`u_id`, `u_fname`, `u_lname`, `u_pass`, `u_address`, `u_uname`) VALUES
(1, 'Manipal', 'Hospital', 'mani123', 'Jayamahal', 'mani98'),
(2, 'Fortis', 'Hospital', 'fortiss', 'Shivajinagar', 'forti123'),
(3, 'Santosh', 'Hospital', 'santo', 'Frazer Town', 'santii123'),
(4, 'Jain', 'Hospital', 'jhjh', 'Benson Town', 'jain123'),
(5, 'Vikram', 'Hospital', 'viku', 'Mekhri Circle', 'vikram123'),
(6, 'Vishwa', 'Hospital', 'vishwahh', 'Yelhanka', 'vishwa123'),
(7, 'Apollo', 'Hospital', 'apoloo', 'Tumkur', 'apollo123'),
(8, 'Divine', 'Hospital', 'divinee', 'SK Garden', 'divine123'),
(9, 'Sundar', 'Hospital', 'sundarr', 'Promenade Road', 'sundar123'),
(10, 'Sparsh', 'Hospital', 'sparsh123', 'Infantry Road', 'sparsh123'),
(11, 'Fortiss', 'Hospital', '12345', '', 'fortiiss'),
(12, 'Fortiss', 'Hospital', '12345', 'Lingrajpuram', 'fortiiss');

-- --------------------------------------------------------

--
-- Table structure for table `adminvaccine`
--

CREATE TABLE `adminvaccine` (
  `HospitalName` varchar(50) NOT NULL,
  `HospitalAddress` varchar(100) NOT NULL,
  `VaccineAvailable` varchar(50) NOT NULL,
  `NoOfDoses` varchar(50) NOT NULL,
  `AgeGroup` varchar(100) NOT NULL,
  `Contact` varchar(11) NOT NULL,
  `id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminvaccine`
--

INSERT INTO `adminvaccine` (`HospitalName`, `HospitalAddress`, `VaccineAvailable`, `NoOfDoses`, `AgeGroup`, `Contact`, `id`) VALUES
('Manipal Hospital', 'Jayamahal\r\n			', 'Covaxin', '78', '18-60', '2645781364', '1'),
('Sparsh Hospital', 'Infantry Road', 'Covishield', '20', '18-65', '234587123', '10'),
('Fortis Hospital', 'Shivajinagar', 'Covaxin', '32', '21-45', '98654862856', '2'),
('Santosh Hospital', 'Frazer town					', 'Covaxin', '122', '12-59', '45569981', '3'),
('Jain Hospital', 'Benson Town', 'Covishield', '45', '18-65', '546546565', '4'),
('VCare', 'Yelhanka', 'covaxin', '2', '18-65', '21542243423', '43'),
('Vikram Hospital', 'Mekhri Circle', 'Covaxin', '10', '40-60', '7896541236', '5'),
('Vishwa Hospital', 'Yelhanka	', 'Nil', 'Nil', 'Nil', '265478912', '6'),
('Apollo Hospital', 'Tumkur', 'Covishield', '30', '40-65', '245789623', '7'),
('Divine Hospital', 'SK Garden', 'Nil', 'Nil', 'Nil', '245879634', '8'),
('Sundar Hospital', 'Promenade Rd', 'Covaxin', '5', '18-76', '9738428085', '9');

-- --------------------------------------------------------

--
-- Table structure for table `userregister`
--

CREATE TABLE `userregister` (
  `u_id` int(11) NOT NULL,
  `u_fname` varchar(50) NOT NULL,
  `u_lname` varchar(50) NOT NULL,
  `u_pass` varchar(50) NOT NULL,
  `u_address` varchar(50) NOT NULL,
  `u_uname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userregister`
--

INSERT INTO `userregister` (`u_id`, `u_fname`, `u_lname`, `u_pass`, `u_address`, `u_uname`) VALUES
(1, 'Kakashi', 'Hatake', 'chidori', 'Konoha', 'kakashi123'),
(2, 'Siddharth', 'B', 'sid123', 'SK Garden', 'siddharth123'),
(3, 'Itachi', 'Uchiha', 'LeafV', 'Indranagar', 'itachiMS'),
(4, 'Hashirama', 'Senju', 'Senju901', 'JP Nagar', 'hashi123'),
(5, 'akhilesh', 'S', 'akhi', 'Nagwara', 'siddharth123'),
(6, 'praveen', 'kumar', 'praveen', 'Shivajinagar', 'praveen78'),
(7, 'sharath', 'ricahrd', 'sharath', 'benson town', 'sharath78'),
(8, 'samarth', 'p', 'sam', 'Indranagar', 'sam78');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminoxygen`
--
ALTER TABLE `adminoxygen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminregister`
--
ALTER TABLE `adminregister`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `adminvaccine`
--
ALTER TABLE `adminvaccine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregister`
--
ALTER TABLE `userregister`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminregister`
--
ALTER TABLE `adminregister`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `userregister`
--
ALTER TABLE `userregister`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
