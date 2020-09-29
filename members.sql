-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2020 at 08:10 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gh_tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `memberID` int(11) NOT NULL,
  `rules` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `phone_no` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `gender` varchar(15) COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `profile_pic_path` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `active` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `resetToken` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `resetComplete` varchar(3) COLLATE utf8mb4_bin DEFAULT 'No',
  `creator_admin_username` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memberID`, `rules`, `username`, `password`, `email`, `phone_no`, `first_name`, `last_name`, `gender`, `address`, `profile_pic_path`, `active`, `resetToken`, `resetComplete`, `creator_admin_username`) VALUES
(1, 'admin', 'admin', '$2y$10$6XLt/O9.7LTyKb.PGFms2Oq5g67KA8JS7WtPN67IBsGiSBTVvKxgO', 'admin@admin.com', '017001', 'Admin', ' ', 'male', 'jessore', 'img/profile_pic/admin.jpg', 'Yes', NULL, 'No', ''),
(2, 'engineer', 'tarik', '$2y$10$U.Tq1JqGGQyYLCqsYTWxQOWvZ8snptC.9BFhYJvN/bsYzeZfhnFjy', 'tarik@gmail.com', '01700112233', 'Tarik', 'billa', 'male', 'jessore', 'img/profile_pic/tarik.jpg', 'Yes', NULL, 'No', ''),
(3, 'engineer', 'tarik01', '$2y$10$D7jkUVKiTJYGW3Jkat8Us.pvezqVIbPwY7dGRTst4BV.wy2cNy.B.', 'tarik@gmail.com', '0170011223', 'tarik', 'Billa', 'other', 'jessore', 'img/profile_pic/tarik01.jpg', 'f2e0d6ff7781584730e5dab1db0dab95', NULL, 'No', 'admin'),
(4, '', 'tarikbd', '$2y$10$PEeJcWZU47GbMsD39.soweVvViYuHEZCJjEhz3G6qnipqj2DLijum', 'tarikbilla@gmail.com', '', '', '', '', '', '', 'Yes', NULL, 'No', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`memberID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `memberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
