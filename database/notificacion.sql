-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2024 at 01:42 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ejemplocohete2`
--

-- --------------------------------------------------------

--
-- Table structure for table `notificacion`
--

CREATE TABLE `notificacion` (
  `id_notificacion` int NOT NULL,
  `mensaje` varchar(54) DEFAULT NULL,
  `mensaje2` varchar(54) NOT NULL,
  `mensaje3` varchar(54) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `notificacion`
--

INSERT INTO `notificacion` (`id_notificacion`, `mensaje`, `mensaje2`, `mensaje3`) VALUES
(1, 'dsahh', 'dsahh', 'dsahh'),
(2, 'aleee', 'kataa', 'sasa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`id_notificacion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `id_notificacion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
