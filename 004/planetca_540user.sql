-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 07, 2015 at 12:04 PM
-- Server version: 5.5.45-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `planetca_540user`
--

-- --------------------------------------------------------

--
-- Table structure for table `preacher`
--

CREATE TABLE IF NOT EXISTS `preacher` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `preacher_firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preacher_lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preacher_role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preacher_image` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `preacher_firstname` (`preacher_firstname`,`preacher_lastname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `preacher`
--

INSERT INTO `preacher` (`id`, `preacher_firstname`, `preacher_lastname`, `preacher_role`, `preacher_image`) VALUES
(1, 'Joe', 'Rev', 'Priest', NULL),
(2, 'Alfa', 'Betts', 'Deacon', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sermon`
--

CREATE TABLE IF NOT EXISTS `sermon` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `sermon_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `audio_length` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `audio_fileloc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `transcript_fileloc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preacher_id` int(8) NOT NULL,
  `occasion_id` int(8) DEFAULT NULL,
  `source_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `audio_length` (`audio_length`),
  KEY `preacher_id` (`preacher_id`),
  KEY `occasion_id` (`occasion_id`),
  KEY `source_id` (`source_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sermon`
--

INSERT INTO `sermon` (`id`, `sermon_title`, `audio_length`, `audio_fileloc`, `transcript_fileloc`, `preacher_id`, `occasion_id`, `source_id`) VALUES
(5, 'Work of our hands', '00:20:16', 'http://www.defaultz.com', NULL, 1, 0, 0),
(7, 'This world and the next', '00:17:02', 'http://www.defaultz1.com', 'http://www.transcript_a.com', 2, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sermon`
--
ALTER TABLE `sermon`
  ADD CONSTRAINT `sermon_ibfk_4` FOREIGN KEY (`preacher_id`) REFERENCES `preacher` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
