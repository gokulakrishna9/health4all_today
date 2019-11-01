-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2019 at 01:19 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health4all_today`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer_option`
--

DROP TABLE IF EXISTS `answer_option`;
CREATE TABLE IF NOT EXISTS `answer_option` (
  `answer_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` text NOT NULL,
  `question_id` int(11) NOT NULL,
  `key_a` tinyint(4) NOT NULL,
  `answer_image` varchar(150) NOT NULL,
  PRIMARY KEY (`answer_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answer_option_language`
--

DROP TABLE IF EXISTS `answer_option_language`;
CREATE TABLE IF NOT EXISTS `answer_option_language` (
  `answer_option_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `answer_option_id` int(11) NOT NULL,
  `answer_in_regional_language` text NOT NULL,
  PRIMARY KEY (`answer_option_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grouping`
--

DROP TABLE IF EXISTS `grouping`;
CREATE TABLE IF NOT EXISTS `grouping` (
  `grouping_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `sub_group_id` int(11) NOT NULL,
  PRIMARY KEY (`grouping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_q`
--

DROP TABLE IF EXISTS `group_q`;
CREATE TABLE IF NOT EXISTS `group_q` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL,
  `group_image` varchar(150) NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(50) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

DROP TABLE IF EXISTS `level`;
CREATE TABLE IF NOT EXISTS `level` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(100) NOT NULL,
  `level_image` varchar(150) NOT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `explanation` text NOT NULL,
  `question_image` varchar(150) NOT NULL,
  `explanation_image` varchar(150) NOT NULL,
  `status_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question_language`
--

DROP TABLE IF EXISTS `question_language`;
CREATE TABLE IF NOT EXISTS `question_language` (
  `question_language_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question_in_regional_language` varchar(50) NOT NULL,
  `explanation_in_regional_language` varchar(50) NOT NULL,
  PRIMARY KEY (`question_language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_group`
--

DROP TABLE IF EXISTS `sub_group`;
CREATE TABLE IF NOT EXISTS `sub_group` (
  `sub_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_group` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `sub_group_image` varchar(150) NOT NULL,
  PRIMARY KEY (`sub_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
