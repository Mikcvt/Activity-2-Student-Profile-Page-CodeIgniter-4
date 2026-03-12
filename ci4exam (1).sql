-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2026 at 12:21 PM
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
-- Database: `ci4exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `title`, `description`, `category`, `status`, `created_at`, `updated_at`) VALUES
(5, 'The man who can\'t be move', 'DAWDFAS', 'Song', 'Inactive', '2026-03-12 11:18:13', '2026-03-12 11:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `student_id` varchar(20) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `year_level` tinyint(4) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `student_id`, `course`, `year_level`, `section`, `phone`, `address`, `profile_image`) VALUES
(1, 'Miko Cervantes', 'Cervantesmiko12@gmail.com', '$2y$12$NrUgnqpHFeE1vjhosLcqeuf08oaMgod0mb7H.PnAaBsAsbsQhzvRK', '2026-03-07 02:24:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'MikCvt', 'pigiaki12@gmail.com', '$2y$12$JogYw9nCk5CkfKQfo8/4e.pDMW26Fix0iiGNDgBx9RiIrFhTDaUf2', '2026-03-07 02:36:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'MikCvt', 'pigiaki@gmail.com', '$2y$12$ueipv7ttR9UM3hjqarblM.7g8aawZ.r.72E/N70W8HTu2ep48EZBa', '2026-03-12 18:36:07', '423003556', 'BSIT', 3, 'BSIT 3.7', '09942566037', '', 'avatar_4_1773312737.jpg'),
(5, 'MIKCVT', 'cervantesmiko13@gmail.com', '$2y$12$rWZUOSmEqfNv3uWIbPyFX.zUPrqF7cjqU8FKVROifSVAPoFRHy.ge', '2026-03-12 18:51:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Miko Cervantes', 'cervantes123@gmail.com', '$2y$12$kH8rWZ8ZuFz9dW0nsmREzOua0aTm34fI7srRd5Hdf0LamL1AJmW3a', '2026-03-12 19:03:33', '423003556', 'BSIT', 3, '3.7', '09942566037', '860 Miguelin ST. Sampaloc Manila', 'avatar_6_1773313512.jpg'),
(7, 'Miko Dayao Cervantes', 'cervantes12345@gmail.com', '$2y$12$8nIBMN3isV06UDSt/f77Fu0hRKvxZq2F5ekUFV61KX0dLjCaXOiJW', '2026-03-12 19:17:09', '423003556', 'BSIT', 3, '3.7', '09942566037', '860 Miguelin ST. Sampaloc MNL', 'avatar_7_1773314268.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
