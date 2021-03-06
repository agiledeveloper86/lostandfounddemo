-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2012 at 04:12 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lostandfounddemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `code` char(2) COLLATE latin1_general_ci NOT NULL COMMENT 'Two-letter country code (ISO 3166-1 alpha-2)',
  `name` varchar(255) COLLATE latin1_general_ci NOT NULL COMMENT 'English country name',
  `full_name` varchar(255) COLLATE latin1_general_ci NOT NULL COMMENT 'Full English country name',
  `iso3` char(3) COLLATE latin1_general_ci NOT NULL COMMENT 'Three-letter country code (ISO 3166-1 alpha-3)',
  `number` smallint(3) unsigned zerofill NOT NULL COMMENT 'Three-digit country number (ISO 3166-1 numeric)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `country`
--


-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id of item',
  `item_type_id` int(1) NOT NULL,
  `title` varchar(64) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'for example "red purse", "black belt", "green gucci shoes"',
  `description` text COLLATE latin1_general_ci COMMENT 'detailed description of item',
  `spot` varchar(128) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Name of place where item was found/lost',
  `street` varchar(128) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'Street where item was found or lost (depending on type of item)',
  `city` varchar(128) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'city where item was lost/found',
  `zip` varchar(16) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'postcode',
  `country_id` int(11) DEFAULT NULL COMMENT 'id of country',
  `created` datetime DEFAULT NULL,
  `is_found` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_item_country` (`country_id`),
  KEY `fk_item_item_type1` (`item_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `item_type_id`, `title`, `description`, `spot`, `street`, `city`, `zip`, `country_id`, `created`, `is_found`) VALUES
(2, 0, 'Scarf', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 2, 'Girlfriend', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE IF NOT EXISTS `item_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`id`, `name`) VALUES
(1, 'Things'),
(2, 'People');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `first_name` varchar(64) COLLATE latin1_general_ci DEFAULT NULL,
  `last_name` varchar(64) COLLATE latin1_general_ci DEFAULT NULL,
  `company` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(254) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(254) COLLATE latin1_general_ci DEFAULT NULL COMMENT 'HASH of password',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `is_admin`, `first_name`, `last_name`, `company`, `email`, `password`, `created`) VALUES
(1, 1, 'Jonathan', 'Doe 123', NULL, 'demo@demo.com', 'demo', NULL),
(2, 1, 'Joe', 'Blogs...', NULL, 'test@google.com', 'test123', NULL),
(3, 0, 'Peter', 'Oink...', NULL, 'test@test.com', 'test', NULL),
(4, 0, 'Armin', 'Van Burren', NULL, '', '', NULL),
(8, 0, 'Romans', 'Malinovskis', NULL, 'r@agiletech.ie', '123', NULL),
(9, 1, 'admin', 'admin_surname', NULL, 'admin@website.com', 'password', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_item`
--

CREATE TABLE IF NOT EXISTS `user_item` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `action` enum('lost','found','left with') DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_item_user1` (`user_id`),
  KEY `fk_user_item_item1` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_item`
--

INSERT INTO `user_item` (`id`, `user_id`, `item_id`, `action`, `created`) VALUES
(0, 1, 11, 'lost', '0000-00-00 00:00:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fk_item_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_item_item_type1` FOREIGN KEY (`item_type_id`) REFERENCES `item_type` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_item`
--
ALTER TABLE `user_item`
  ADD CONSTRAINT `fk_user_item_item1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_item_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
