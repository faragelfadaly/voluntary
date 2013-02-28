-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2013 at 03:09 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `voluntary`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_service`
--

CREATE TABLE IF NOT EXISTS `blood_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voluteer_id` int(11) NOT NULL,
  `blood_type` char(2) NOT NULL,
  `last_donation_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Table contains all data about blood donation service' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `blood_service`
--

INSERT INTO `blood_service` (`id`, `voluteer_id`, `blood_type`, `last_donation_date`, `status`) VALUES
(1, 1, 'B', '2013-02-28 00:00:00', 1),
(2, 2, 'A', '2013-02-21 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE IF NOT EXISTS `volunteers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `home_phone` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `privacy` int(11) NOT NULL,
  `national_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  UNIQUE KEY `id_3` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Table contains all volunteers data' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `name`, `address`, `home_phone`, `mobile`, `email`, `privacy`, `national_id`) VALUES
(1, 'ahmed', 'alex', 12345, 6789, 'ahmed@yahoo', 1, 288);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
