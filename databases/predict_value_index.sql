-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2024 at 07:37 PM
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
-- Database: `gamecenter`
--

-- --------------------------------------------------------

--
-- Table structure for table `index_predict_search_results`
--

CREATE TABLE `index_predict_search_results` (
  `id` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `binary_name` varchar(255) DEFAULT NULL,
  `binary_index_found` int(11) DEFAULT NULL,
  `binary_time_taken` decimal(10,7) DEFAULT NULL,
  `jump_name` varchar(255) DEFAULT NULL,
  `jump_index_found` int(11) DEFAULT NULL,
  `jump_time_taken` decimal(10,7) DEFAULT NULL,
  `exponential_name` varchar(255) DEFAULT NULL,
  `exponential_index_found` int(11) DEFAULT NULL,
  `exponential_time_taken` decimal(10,7) DEFAULT NULL,
  `fibonacci_name` varchar(255) DEFAULT NULL,
  `fibonacci_index_found` int(11) DEFAULT NULL,
  `fibonacci_time_taken` decimal(10,7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `index_predict_search_results`
--

INSERT INTO `index_predict_search_results` (`id`, `value`, `binary_name`, `binary_index_found`, `binary_time_taken`, `jump_name`, `jump_index_found`, `jump_time_taken`, `exponential_name`, `exponential_index_found`, `exponential_time_taken`, `fibonacci_name`, `fibonacci_index_found`, `fibonacci_time_taken`) VALUES
(1, 64, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 31, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(2, 66, 'Binary Search', 67, 0.1000000, 'Jump Search', 67, 0.0000000, 'Exponential Search', 67, 0.0000000, 'Fibonacci Search', 67, 0.1000000),
(3, 60, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 31, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(4, 44, 'Binary Search', 30, 0.0000000, 'Jump Search', 30, 0.0000000, 'Exponential Search', 32, 0.0000000, 'Fibonacci Search', 33, 0.0000000),
(5, 74, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 63, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(6, 87, 'Binary Search', 84, 0.0000000, 'Jump Search', 84, 0.0000000, 'Exponential Search', 84, 0.0000000, 'Fibonacci Search', 84, 1.2000000),
(7, 48, 'Binary Search', 47, 0.0000000, 'Jump Search', 46, 0.0000000, 'Exponential Search', 46, 0.0000000, 'Fibonacci Search', 46, 0.0000000),
(8, 68, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 63, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(9, 32, 'Binary Search', 30, 0.0000000, 'Jump Search', 30, 0.0000000, 'Exponential Search', 30, 0.0000000, 'Fibonacci Search', 30, 1.0000000),
(10, 68, 'Binary Search', 62, 0.0000000, 'Jump Search', 62, 0.0000000, 'Exponential Search', 62, 0.0000000, 'Fibonacci Search', 62, 0.2000000),
(11, 86, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 63, 0.1000000, 'Fibonacci Search', -1, 0.6000000),
(12, 16, 'Binary Search', 14, 0.1000000, 'Jump Search', 14, 0.0000000, 'Exponential Search', 14, 0.1000000, 'Fibonacci Search', 14, 0.2000000),
(13, 65, 'Binary Search', 69, 0.0000000, 'Jump Search', 69, 0.0000000, 'Exponential Search', 69, 0.0000000, 'Fibonacci Search', 69, 0.0000000),
(14, 86, 'Binary Search', 4295, 0.4000000, 'Jump Search', 4275, 0.1000000, 'Exponential Search', 4275, 0.0000000, 'Fibonacci Search', 4324, 3.9000000),
(15, 77, 'Binary Search', 413, 0.1000000, 'Jump Search', 409, 0.3000000, 'Exponential Search', 409, 0.1000000, 'Fibonacci Search', 410, 4.2000000),
(16, 33, 'Binary Search', -1, 0.2000000, 'Jump Search', -1, 0.2000000, 'Exponential Search', 7, 0.1000000, 'Fibonacci Search', -1, 3.7000000),
(17, 40, 'Binary Search', -1, 0.2000000, 'Jump Search', -1, 0.3000000, 'Exponential Search', -1, 0.2000000, 'Fibonacci Search', -1, 8.6000000),
(18, 217, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 8.6000000),
(19, 304506, 'Binary Search', -1, 0.3000000, 'Jump Search', -1, 0.3000000, 'Exponential Search', 1023, 0.1000000, 'Fibonacci Search', -1, 7.6000000),
(20, 608759, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 2047, 0.1000000, 'Fibonacci Search', -1, 2.8000000),
(21, 481052, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 3.6000000),
(22, 564013, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 1.6000000),
(23, 751350, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 2.6000000),
(24, 875574, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 4095, 0.0000000, 'Fibonacci Search', -1, 3.0000000),
(25, 838650, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 4095, 0.0000000, 'Fibonacci Search', -1, 2.8000000),
(26, 111235, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 511, 0.0000000, 'Fibonacci Search', -1, 4.3000000),
(27, 388326, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 1023, 0.1000000, 'Fibonacci Search', -1, 2.3000000),
(28, 731629, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 1.9000000),
(29, 197320, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 511, 0.0000000, 'Fibonacci Search', -1, 2.6000000),
(30, 716418, 'Binary Search', -1, 0.2000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 2047, 0.1000000, 'Fibonacci Search', -1, 3.7000000),
(31, 595708, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.2000000, 'Exponential Search', 2047, 0.2000000, 'Fibonacci Search', -1, 6.1000000),
(32, 134171, 'Binary Search', -1, 0.2000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 511, 0.9000000, 'Fibonacci Search', -1, 6.3000000),
(33, 287144, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 1023, 0.0000000, 'Fibonacci Search', -1, 1.3000000),
(34, 916471, 'Binary Search', -1, 0.2000000, 'Jump Search', -1, 0.4000000, 'Exponential Search', 4095, 0.3000000, 'Fibonacci Search', -1, 33.9000000),
(35, 322244, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 1023, 0.1000000, 'Fibonacci Search', -1, 3.3000000),
(36, 212368, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 1023, 0.0000000, 'Fibonacci Search', -1, 2.3000000),
(37, 773831, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 9.4000000),
(38, 429374, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 4.5000000),
(39, 741036, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 2.5000000),
(40, 612476, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 2.1000000),
(41, 674277, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 3.4000000),
(42, 963244, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 4095, 0.0000000, 'Fibonacci Search', -1, 5.5000000),
(43, 613399, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 3.4000000),
(44, 955880, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 4095, 0.0000000, 'Fibonacci Search', -1, 3.0000000),
(45, 500333, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 2.2000000),
(46, 850746, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 4095, 0.1000000, 'Fibonacci Search', -1, 6.5000000),
(47, 780424, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 2.0000000),
(48, 96298, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 255, 0.0000000, 'Fibonacci Search', -1, 1.6000000),
(49, 421605, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 2.9000000),
(50, 614734, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 2.8000000),
(51, 236110, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 1023, 0.0000000, 'Fibonacci Search', -1, 3.4000000),
(52, 973329, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 4095, 0.0000000, 'Fibonacci Search', -1, 2.8000000),
(53, 695698, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 5.3000000),
(54, 263128, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 1023, 0.0000000, 'Fibonacci Search', -1, 3.1000000),
(55, 707420, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 2.3000000),
(56, 917079, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 4095, 0.0000000, 'Fibonacci Search', -1, 4.3000000),
(57, 452526, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.2000000, 'Exponential Search', 2047, 0.1000000, 'Fibonacci Search', -1, 1.6000000),
(58, 269698, 'Binary Search', -1, 0.2000000, 'Jump Search', -1, 0.2000000, 'Exponential Search', 1023, 0.0000000, 'Fibonacci Search', -1, 4.9000000),
(59, 52278, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 255, 0.0000000, 'Fibonacci Search', -1, 2.7000000),
(60, 50009, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 127, 0.0000000, 'Fibonacci Search', -1, 3.9000000),
(61, 206249, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 1023, 0.0000000, 'Fibonacci Search', -1, 3.5000000),
(62, 235972, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 1023, 0.0000000, 'Fibonacci Search', -1, 3.5000000),
(63, 242586, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 1023, 0.0000000, 'Fibonacci Search', -1, 3.7000000),
(64, 805573, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 3.2000000),
(65, 545849, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 3.5000000),
(66, 671, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 1, 0.0000000, 'Fibonacci Search', -1, 3.4000000),
(67, 346678, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 1023, 0.0000000, 'Fibonacci Search', -1, 5.5000000),
(68, 525330, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 3.7000000),
(69, 502533, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 5.6000000),
(70, 693589, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.3000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 4.1000000),
(71, 241856, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 1023, 0.0000000, 'Fibonacci Search', -1, 3.1000000),
(72, 709104, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 4.6000000),
(73, 172041, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 511, 0.0000000, 'Fibonacci Search', -1, 4.0000000),
(74, 271405, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 1023, 0.0000000, 'Fibonacci Search', -1, 3.9000000),
(75, 724695, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 2047, 0.1000000, 'Fibonacci Search', -1, 3.7000000),
(76, 915811, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', 4095, 0.0000000, 'Fibonacci Search', -1, 4.4000000),
(77, 813631, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 4095, 0.0000000, 'Fibonacci Search', -1, 4.0000000),
(78, 618456, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 3.8000000),
(79, 995317, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 4095, 0.1000000, 'Fibonacci Search', -1, 4.1000000),
(80, 412054, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 2047, 0.0000000, 'Fibonacci Search', -1, 4.8000000),
(81, 207034, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 511, 0.0000000, 'Fibonacci Search', -1, 3.9000000),
(82, 158687, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 511, 0.0000000, 'Fibonacci Search', -1, 4.4000000),
(83, 197237, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 511, 0.0000000, 'Fibonacci Search', -1, 3.4000000),
(84, 878174, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', 4095, 0.0000000, 'Fibonacci Search', -1, 3.6000000),
(85, 822400, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.2000000),
(86, 461545, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(87, 323785, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(88, 453830, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(89, 133745, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(90, 863866, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(91, 97781, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(92, 397668, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(93, 576258, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(94, 34358, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.2000000),
(95, 480148, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(96, 502317, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(97, 208247, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(98, 348660, 'Binary Search', -1, 0.2000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(99, 880988, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(100, 842814, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(101, 551204, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(102, 770481, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(103, 209169, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(104, 452894, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(105, 689319, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(106, 966515, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.2000000),
(107, 703092, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(108, 808823, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(109, 291669, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(110, 526400, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(111, 649928, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(112, 402598, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(113, 537628, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(114, 160287, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.2000000),
(115, 36766, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(116, 328405, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(117, 952841, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(118, 654805, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(119, 796797, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(120, 536650, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.7000000),
(121, 527045, 'Binary Search', -1, 0.2000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.7000000),
(122, 827784, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.4000000),
(123, 522261, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.2000000),
(124, 139623, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(125, 401904, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.1000000),
(126, 443006, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(127, 513310, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(128, 378342, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(129, 85561, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(130, 77292, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.2000000, 'Fibonacci Search', -1, 0.1000000),
(131, 96718, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(132, 970504, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.2000000),
(133, 179981, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(134, 253985, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(135, 726154, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(136, 436453, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(137, 485253, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(138, 19956, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.2000000),
(139, 596423, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(140, 30630, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(141, 920132, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(142, 385070, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 1.6000000),
(143, 823230, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.2000000),
(144, 345077, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(145, 357606, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(146, 56564, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(147, 923724, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(148, 330091, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(149, 330285, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(150, 580237, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(151, 556352, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(152, 771352, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(153, 972568, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.5000000),
(154, 483188, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.6000000),
(155, 961613, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(156, 80957, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(157, 450770, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(158, 250570, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(159, 600183, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(160, 876332, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(161, 796233, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(162, 519576, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(163, 87197, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(164, 954795, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(165, 382744, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(166, 159297, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(167, 14974, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 2.2000000),
(168, 768522, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(169, 568079, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(170, 140987, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.4000000),
(171, 582310, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(172, 575688, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(173, 293275, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.1000000),
(174, 183650, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(175, 83872, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(176, 873949, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.3000000),
(177, 884493, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(178, 325827, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.1000000),
(179, 957653, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.2000000),
(180, 595714, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(181, 568124, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(182, 657640, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(183, 979080, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.4000000),
(184, 356378, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(185, 447080, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(186, 839473, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.3000000),
(187, 833825, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.1000000),
(188, 33724, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(189, 418203, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(190, 999296, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.0000000),
(191, 46847, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(192, 195334, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(193, 664750, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(194, 479815, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(195, 400597, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(196, 716719, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(197, 529093, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(198, 754968, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(199, 770610, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(200, 688544, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(201, 276356, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(202, 648725, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(203, 399234, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(204, 753601, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(205, 800052, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(206, 84178, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(207, 120692, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(208, 792564, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(209, 117405, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.1000000),
(210, 628804, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(211, 43687, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(212, 557475, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(213, 373985, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(214, 852967, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(215, 926842, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(216, 672451, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.1000000),
(217, 793396, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(218, 132758, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 3.2000000),
(219, 95620, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.4000000),
(220, 264536, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 1.8000000),
(221, 834024, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.5000000),
(222, 137325, 'Binary Search', -1, 0.1000000, 'Jump Search', -1, 0.2000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.4000000),
(223, 928073, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.1000000, 'Fibonacci Search', -1, 0.0000000),
(224, 113966, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.1000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.1000000),
(225, 471905, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.2000000),
(226, 687076, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(227, 652865, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(228, 122553, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(229, 773006, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(230, 52113, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(231, 746015, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(232, 813839, 'Binary Search', -1, 0.0000000, 'Jump Search', -1, 0.0000000, 'Exponential Search', -1, 0.0000000, 'Fibonacci Search', -1, 0.0000000),
(233, NULL, 'Binary Search', -1, 0.1000000, 'Jump Search', 0, 0.1000000, 'Exponential Search', 0, 0.0000000, 'Fibonacci Search', 0, 4.6000000),
(234, NULL, 'Binary Search', -1, 0.0000000, 'Jump Search', 0, 0.1000000, 'Exponential Search', 0, 0.0000000, 'Fibonacci Search', 0, 0.4000000),
(235, NULL, 'Binary Search', -1, 0.0000000, 'Jump Search', 0, 0.1000000, 'Exponential Search', 0, 0.0000000, 'Fibonacci Search', 0, 0.3000000),
(236, NULL, 'Binary Search', -1, 0.1000000, 'Jump Search', 0, 0.0000000, 'Exponential Search', 0, 0.1000000, 'Fibonacci Search', 0, 0.3000000),
(237, NULL, 'Binary Search', -1, 0.0000000, 'Jump Search', 0, 0.1000000, 'Exponential Search', 0, 0.0000000, 'Fibonacci Search', 0, 0.3000000),
(238, NULL, 'Binary Search', -1, 0.0000000, 'Jump Search', 0, 0.1000000, 'Exponential Search', 0, 0.0000000, 'Fibonacci Search', 0, 0.1000000),
(239, NULL, 'Binary Search', -1, 0.0000000, 'Jump Search', 0, 0.0000000, 'Exponential Search', 0, 0.1000000, 'Fibonacci Search', 0, 0.3000000),
(240, NULL, 'Binary Search', -1, 0.0000000, 'Jump Search', 0, 0.0000000, 'Exponential Search', 0, 0.1000000, 'Fibonacci Search', 0, 0.3000000),
(241, NULL, 'Binary Search', -1, 0.0000000, 'Jump Search', 0, 0.1000000, 'Exponential Search', 0, 0.1000000, 'Fibonacci Search', 0, 0.3000000),
(242, NULL, 'Binary Search', -1, 0.0000000, 'Jump Search', 0, 0.1000000, 'Exponential Search', 0, 0.0000000, 'Fibonacci Search', 0, 0.2000000),
(243, 657728, 'Binary Search', 3257, 0.2000000, 'Jump Search', 3257, 0.0000000, 'Exponential Search', 3257, 0.0000000, 'Fibonacci Search', 3257, 2.5000000),
(244, 773779, 'Binary Search', 3874, 0.0000000, 'Jump Search', 3874, 0.3000000, 'Exponential Search', 3874, 0.1000000, 'Fibonacci Search', 3874, 3.6000000),
(245, 269271, 'Binary Search', 1349, 0.0000000, 'Jump Search', 1349, 0.0000000, 'Exponential Search', 1349, 0.1000000, 'Fibonacci Search', 1349, 0.9000000),
(246, 907883, 'Binary Search', 4564, 0.1000000, 'Jump Search', 4564, 0.0000000, 'Exponential Search', 4564, 0.0000000, 'Fibonacci Search', 4564, 0.9000000),
(247, 441607, 'Binary Search', 2172, 0.0000000, 'Jump Search', 2172, 0.0000000, 'Exponential Search', 2172, 0.0000000, 'Fibonacci Search', 2172, 0.9000000),
(248, 791343, 'Binary Search', 3960, 0.0000000, 'Jump Search', 3960, 0.0000000, 'Exponential Search', 3960, 0.0000000, 'Fibonacci Search', 3960, 0.9000000),
(249, 337763, 'Binary Search', 1648, 0.0000000, 'Jump Search', 1648, 0.0000000, 'Exponential Search', 1648, 0.0000000, 'Fibonacci Search', 1648, 0.9000000),
(250, 2087, 'Binary Search', 13, 0.0000000, 'Jump Search', 13, 0.0000000, 'Exponential Search', 13, 0.0000000, 'Fibonacci Search', 13, 1.4000000),
(251, 902993, 'Binary Search', 4492, 0.1000000, 'Jump Search', 4492, 0.0000000, 'Exponential Search', 4492, 0.0000000, 'Fibonacci Search', 4492, 0.9000000),
(252, 743796, 'Binary Search', 3710, 0.1000000, 'Jump Search', 3710, 0.1000000, 'Exponential Search', 3710, 0.0000000, 'Fibonacci Search', 3710, 1.9000000),
(253, 690534, 'Binary Search', 3441, 0.0000000, 'Jump Search', 3441, 0.1000000, 'Exponential Search', 3441, 0.0000000, 'Fibonacci Search', 3441, 1.0000000),
(254, 862998, 'Binary Search', 4311, 0.0000000, 'Jump Search', 4311, 0.1000000, 'Exponential Search', 4311, 0.0000000, 'Fibonacci Search', 4311, 1.1000000),
(255, 333354, 'Binary Search', 1658, 0.1000000, 'Jump Search', 1658, 0.0000000, 'Exponential Search', 1658, 0.0000000, 'Fibonacci Search', 1658, 1.0000000),
(256, 354464, 'Binary Search', 1749, 0.1000000, 'Jump Search', 1749, 0.0000000, 'Exponential Search', 1749, 0.0000000, 'Fibonacci Search', 1749, 1.1000000),
(257, 624599, 'Binary Search', 3088, 0.0000000, 'Jump Search', 3088, 0.0000000, 'Exponential Search', 3088, 0.1000000, 'Fibonacci Search', 3088, 1.0000000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`) VALUES
(1, 'mahel'),
(2, 'mahel'),
(3, 'mahel'),
(4, 'henri'),
(5, 'jhon'),
(6, 'supun'),
(7, 'jerry'),
(8, 'mahel'),
(9, 'jesika'),
(10, 'jennifer'),
(11, 'mahel'),
(12, 'admin'),
(13, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `index_predict_search_results`
--
ALTER TABLE `index_predict_search_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `index_predict_search_results`
--
ALTER TABLE `index_predict_search_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
