-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2024 at 11:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuyresto`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `no_meja` varchar(255) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `hari` date DEFAULT NULL,
  `jam` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `no_meja`, `nama_pelanggan`, `hari`, `jam`) VALUES
(2, 'C1', 'sasasa', '2024-01-21', '09:37:38'),
(3, 'C2', 'fafa', '2024-01-21', '10:05:56'),
(4, 'B1', 'zacky', '2024-01-21', '10:05:59'),
(5, 'A2', 'dea', '2024-01-21', '10:30:30'),
(6, 'A1', 'vincent', '2024-01-21', '10:32:36'),
(7, 'B1', 'nyoman', '2024-01-21', '10:32:40'),
(8, 'A3', 'zacky', '2024-01-21', '10:32:43'),
(9, 'A1', 'asdasd', '2024-01-21', '10:33:50'),
(10, 'A2', 'kaka', '2024-01-21', '10:33:52'),
(11, 'A3', 'saprui', '2024-01-21', '10:33:53'),
(12, 'B1', 'test', '2024-01-21', '10:33:54'),
(13, 'B2', 'hasbi', '2024-01-21', '10:33:56'),
(14, 'B3', 'juhril', '2024-01-21', '10:33:59'),
(15, 'C2', 'fathir', '2024-01-21', '10:34:06'),
(16, 'C3', 'sultan', '2024-01-21', '10:34:11'),
(17, 'C1', 'fajrin', '2024-01-21', '10:34:13');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id` int(11) NOT NULL,
  `no_meja` varchar(255) NOT NULL,
  `tipe_meja` varchar(255) NOT NULL DEFAULT 'standar',
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `jumlah_orang` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id`, `no_meja`, `tipe_meja`, `nama_pelanggan`, `jumlah_orang`, `status`) VALUES
(1, 'A1', 'standar', NULL, NULL, 0),
(2, 'A2', 'standar', 'dea', 123, 1),
(3, 'A3', 'standar', NULL, NULL, 0),
(4, 'B1', 'premium', NULL, NULL, 0),
(5, 'B2', 'premium', NULL, NULL, 0),
(6, 'B3', 'premium', 'dada', 2, 1),
(7, 'C1', 'vip', NULL, NULL, 0),
(8, 'C2', 'vip', NULL, NULL, 0),
(9, 'C3', 'vip', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_meja` (`no_meja`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
