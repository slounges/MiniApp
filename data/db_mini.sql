-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 03, 2020 at 01:33 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cars`
--

CREATE TABLE `tbl_cars` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(20) NOT NULL,
  `thumb` varchar(20) NOT NULL,
  `description` varchar(140) NOT NULL,
  `video` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cars`
--

INSERT INTO `tbl_cars` (`id`, `name`, `image`, `thumb`, `description`, `video`, `price`) VALUES
(1, 'Mini 3 Door Cooper', 'mini3.jpg', 'mini3_thumb.png', 'The original icon that started it all, delivering pure motoring fun in a feisty, fuel-efficient package.', 'm3.mp4', '$26,456'),
(2, 'Mini 5 Door Cooper', 'mini5.jpg', 'mini5_thumb.png', 'The iconic MINI hatch with 2 extra doors and a little more space for passengers and cargo.', 'm5.mp4', '$27,756'),
(3, 'Mini Countryman Cooper SE ALL4', 'country.jpg', 'minic_thumb.png', 'The adventurer, featuring a rugged ALL4 All-Wheel Drive system and our most spacious interior ever.', 'mc.mp4', '$47,956');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cars`
--
ALTER TABLE `tbl_cars`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
