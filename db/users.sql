-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2017 at 06:49 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user1', 'Abul Kalam Azad', '2017-02-23 07:20:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'user2', 'Aminur Rahman', '2017-02-23 12:25:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'user3', 'Sabbir Al Islam', '2017-02-23 10:26:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'user4', 'Jahin Rahman', '2017-02-23 06:19:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'user5', 'Anisul Khan', '2017-02-23 09:27:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'user6', 'Ziaul Haque', '2017-02-23 09:19:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'user7', 'Khan Md. Jibon', '2017-02-23 11:23:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'user8', 'Tania Sultana', '2017-02-23 10:26:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'user9', 'Rezvee Ahmed', '2017-02-23 08:24:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'user10', 'Khan Rabbi', '2017-02-23 09:22:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'user11', 'Kabir Shekh', '2017-02-23 09:17:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'user12', 'Jubayer Islam', '2017-02-23 07:20:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'user13', 'Farid Khan', '2017-02-23 08:21:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'user14', 'John Munir', '2017-02-23 07:19:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'user15', 'Hasina Parvin', '2017-02-23 09:22:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'user16', 'Abul Haque Nayem', '2017-02-23 09:24:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'user17', 'Afia Nurain', '2017-02-23 09:22:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'user18', 'Istiak Islam', '2017-02-23 08:17:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'user19', 'Tania Islam Payel', '2017-02-23 09:22:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'user20', 'Shekh Md. Jibon ', '2017-02-23 07:20:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
