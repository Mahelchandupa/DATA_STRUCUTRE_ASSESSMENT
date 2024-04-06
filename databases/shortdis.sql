-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2024 at 04:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shortdis`
--

-- --------------------------------------------------------

--
-- Table structure for table `algorithm_durations`
--

CREATE TABLE `algorithm_durations` (
  `id` int(11) NOT NULL,
  `algorithm` varchar(100) DEFAULT NULL,
  `duration_ms` bigint(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_results`
--

CREATE TABLE `game_results` (
  `id` int(11) NOT NULL,
  `player_name` varchar(100) DEFAULT NULL,
  `from_city` varchar(50) DEFAULT NULL,
  `to_city` varchar(50) DEFAULT NULL,
  `guessed_distance` int(11) DEFAULT NULL,
  `actual_distance` int(11) DEFAULT NULL,
  `correct_answer` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_results`
--

INSERT INTO `game_results` (`id`, `player_name`, `from_city`, `to_city`, `guessed_distance`, `actual_distance`, `correct_answer`, `created_at`) VALUES
(1, 'supun', 'D', 'E', 5, 5, 1, '2024-04-05 22:33:43'),
(2, 'supun', 'F', 'I', 17, 17, 1, '2024-04-05 22:54:51'),
(3, 'supun', 'H', 'I', 16, 16, 1, '2024-04-05 23:25:55'),
(4, 'supun', 'B', 'C', 8, 8, 1, '2024-04-06 00:52:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `algorithm_durations`
--
ALTER TABLE `algorithm_durations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_results`
--
ALTER TABLE `game_results`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `algorithm_durations`
--
ALTER TABLE `algorithm_durations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_results`
--
ALTER TABLE `game_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
