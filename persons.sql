-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 11:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `persons`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `employeeID` int(11) NOT NULL,
  `Person` int(11) NOT NULL,
  `Role` varchar(30) NOT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeID`, `Person`, `Role`, `Salary`) VALUES
(11, 7, 'junior developer', 1500),
(15, 10, 'junior developer', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
CREATE TABLE `persons` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`ID`, `Name`, `LastName`, `DateOfBirth`) VALUES
(1, 'John', 'Deer', '1990-01-10'),
(2, 'Jack', 'Harisson', '1970-03-19'),
(3, 'Jasmin', 'Smith', '1985-05-04'),
(6, 'Harry', 'Potter', '1991-07-05'),
(7, 'Billy', 'Idol', '1999-11-30'),
(8, 'Joe', 'Miller', '2001-03-23'),
(9, 'Bruce', 'Winter', '1965-02-28'),
(10, 'Kevin', 'Malcolm', '1975-08-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `ID` (`Person`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `ID` FOREIGN KEY (`Person`) REFERENCES `persons` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
