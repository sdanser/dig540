-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2015 at 02:23 AM
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
-- Table structure for table `occasion`
--

CREATE TABLE IF NOT EXISTS `occasion` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `primary_occasion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `primary_occasion_type` (`primary_occasion`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `occasion`
--

INSERT INTO `occasion` (`id`, `primary_occasion`, `date`) VALUES
(0, 'Sunday Rite I', '2004-08-22'),
(4, 'Easter Vigil', '2011-04-10'),
(5, 'Funeral', '2015-07-11'),
(6, 'Advent 3', '2013-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `preacher`
--

CREATE TABLE IF NOT EXISTS `preacher` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `first_name` (`first_name`),
  KEY `last_name` (`last_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `preacher`
--

INSERT INTO `preacher` (`id`, `first_name`, `last_name`, `role`, `image`) VALUES
(0, 'Alfa', 'Betts', 'Priest', ''),
(4, 'Joe', 'Smith', 'Deacon', ''),
(5, 'Jane', 'Doe', 'Priest', ''),
(6, 'George', 'Burgess', 'Bishop', '');

-- --------------------------------------------------------

--
-- Table structure for table `sermon`
--

CREATE TABLE IF NOT EXISTS `sermon` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `audio_length` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `audio_fileloc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `transcript_fileloc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preacher_id` int(8) NOT NULL,
  `occasion_id` int(8) NOT NULL,
  `source_id` int(8) NOT NULL,
  `venue_id` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `preacher_id` (`preacher_id`),
  KEY `occasion_id` (`occasion_id`),
  KEY `venue_id` (`venue_id`),
  KEY `source_id` (`source_id`),
  KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `sermon`
--

INSERT INTO `sermon` (`id`, `title`, `audio_length`, `audio_fileloc`, `transcript_fileloc`, `preacher_id`, `occasion_id`, `source_id`, `venue_id`) VALUES
(1, 'Our island home', '15:20', 'http://www.defaultz.com', '', 0, 5, 0, 2),
(10, 'Easter homily', '08:05', 'http://www.defaultz_2.com', '', 6, 4, 2, 1),
(12, 'As ye sow, so shall ye reap', '17:01', 'C:\\sermons\\123xyz_3', '', 5, 0, 4, 3),
(13, 'Feasting and fasting', '12:58', '', '', 6, 6, 3, 5),
(15, 'Fertile ground', '14:39', '', '', 4, 0, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sermon_subject`
--

CREATE TABLE IF NOT EXISTS `sermon_subject` (
  `sermon_id` int(8) NOT NULL,
  `subject_id` int(8) NOT NULL,
  KEY `sermon_id` (`sermon_id`,`subject_id`),
  KEY `subject_id` (`subject_id`),
  KEY `sermon_id_2` (`sermon_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sermon_subject`
--

INSERT INTO `sermon_subject` (`sermon_id`, `subject_id`) VALUES
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(10, 15),
(10, 16),
(12, 1),
(12, 14),
(12, 17),
(13, 17);

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE IF NOT EXISTS `source` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `scripture_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `other_source` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scripture_source` (`scripture_source`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `source`
--

INSERT INTO `source` (`id`, `scripture_source`, `other_source`) VALUES
(0, 'Numbers 35:33-34', NULL),
(2, 'Acts 20:7-12', NULL),
(3, 'John 1:43-46', NULL),
(4, 'Matthew 13:1-9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `subject_term` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `add_descript` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `subject_term` (`subject_term`),
  KEY `subject_desc` (`add_descript`(255))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject_term`, `add_descript`) VALUES
(1, 'Seed', 'Seeds and sowing, literal and figurative'),
(9, 'Pollution', 'Description about pollution, polluting, and defilement'),
(10, 'Land', 'Subjects covering land, ground, and earth'),
(11, 'Bloodshed', ''),
(12, 'Israelites', 'People of Israel'),
(13, 'Lord', ''),
(14, 'Parable', 'Christ''s cryptic teachings'),
(15, 'Resurrection', 'Referring to Jesus Christ as well as others raised from the dead'),
(16, 'Paul', 'The apostle Paul, also known as Saul'),
(17, 'Jesus Christ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE IF NOT EXISTS `venue` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city` (`city`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`id`, `name`, `city`, `image`, `url`) VALUES
(1, 'St. John''s', 'Bangor', NULL, NULL),
(2, 'St. Luke''s', 'Wilton', NULL, NULL),
(3, 'St. Ann''s', 'Windham', NULL, NULL),
(4, 'St. Ann''s', 'Kennebunkport', NULL, NULL),
(5, 'Church of Our Father', 'Hull''s Cove', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sermon`
--
ALTER TABLE `sermon`
  ADD CONSTRAINT `sermon_ibfk_1` FOREIGN KEY (`preacher_id`) REFERENCES `preacher` (`id`),
  ADD CONSTRAINT `sermon_ibfk_4` FOREIGN KEY (`occasion_id`) REFERENCES `occasion` (`id`),
  ADD CONSTRAINT `sermon_ibfk_5` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`id`),
  ADD CONSTRAINT `sermon_ibfk_6` FOREIGN KEY (`source_id`) REFERENCES `source` (`id`);

--
-- Constraints for table `sermon_subject`
--
ALTER TABLE `sermon_subject`
  ADD CONSTRAINT `sermon_subject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  ADD CONSTRAINT `sermon_subject_ibfk_1` FOREIGN KEY (`sermon_id`) REFERENCES `sermon` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
