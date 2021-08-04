-- Adminer 4.6.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `calculation`;
CREATE TABLE `calculation` (
  `p_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `total_tax_amount` decimal(10,0) NOT NULL,
  `sub_total` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `taxes`;
CREATE TABLE `taxes` (
  `p_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `tax_name` varchar(80) NOT NULL,
  `tax_caption` varchar(80) NOT NULL,
  `tax` decimal(10,0) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `p_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `payment_method` varchar(80) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2021-08-04 05:22:36
