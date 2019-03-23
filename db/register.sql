-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2017 at 12:01 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment_id` int(5) NOT NULL AUTO_INCREMENT,
  `appointment_doctor` int(30) NOT NULL,
  `appointment_patient` int(30) NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_available` varchar(3) NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_doctor`, `appointment_patient`, `appointment_time`, `appointment_date`, `appointment_available`) VALUES
(12, 1, 1, '02:34:00', '2017-04-24', 'YES'),
(16, 2, 3, '16:45:00', '2017-04-26', 'YES'),
(17, 1, 1, '00:49:00', '2017-04-11', 'YES'),
(18, 5, 7, '10:10:00', '2017-04-19', 'YES'),
(19, 5, 8, '01:05:00', '2017-05-10', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `delete_appointment`
--

CREATE TABLE IF NOT EXISTS `delete_appointment` (
  `appointment_id` int(5) NOT NULL,
  `appointment_doctor` int(30) NOT NULL,
  `appointment_patient` int(30) NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_available` varchar(3) NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`appointment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `doctor_id` int(5) NOT NULL AUTO_INCREMENT,
  `doctor_name` varchar(30) NOT NULL,
  `doctor_spec` varchar(30) NOT NULL,
  `doctor_available` varchar(3) NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `doctor_spec`, `doctor_available`) VALUES
(1, 'abhay', 'heart', 'YES'),
(2, 'aman', 'eye', 'YES'),
(3, 'raju', 'heart', 'NOT'),
(4, 'anup', 'eye', 'YES'),
(5, 'abdul', 'nurology', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(5) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(30) NOT NULL,
  `patient_address` varchar(30) NOT NULL,
  `patient_gender` varchar(6) NOT NULL,
  `patient_available` varchar(3) NOT NULL DEFAULT 'YES',
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `patient_address`, `patient_gender`, `patient_available`) VALUES
(1, 'anup', 'noida', 'male', 'YES'),
(2, 'anil', 'delhi', 'male', 'NOT'),
(3, 'sonu', 'agra', 'male', 'YES'),
(4, 'langa', 'noida', 'male', 'YES'),
(6, 'gggg', 'ggggggg', 'ggggg', 'YES'),
(7, 'manish', 'noida', 'male', 'YES'),
(8, 'sourav', 'bbbb', 'male', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(1, 'pankaj', 'pankaj@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2017-04-30 22:24:20'),
(2, 'dddd', 'in@gmail.com', '50f84daf3a6dfd6a9f20c9f8ef428942', '2017-05-09 06:26:04'),
(3, 'sourav kumar', 'iamsouravsaw@gmail.com', '202cb962ac59075b964b07152d234b70', '2017-05-11 08:33:04');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
