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
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `user_id`, `title`, `address`, `img`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user1', 'Freelancer', 'Dhaka, Banani', 'user1.png', '2017-02-23 09:25:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'user2', 'Database Expert', 'Rajshahi, Rani Nagar', 'user2.png', '2017-02-23 06:18:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'user3', 'Engineer', 'Tangail, Karatia', 'user3.png', '2017-02-23 08:16:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'user4', 'Freelancer', 'Dhaka, Wari', 'user4.png', '2017-02-23 09:19:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'user5', 'Wordpresian', 'Bogra, Gabtali', 'user5.png', '2017-02-23 11:27:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'user6', 'Designer', 'Dinajpur, Birampur', 'user6.png', '2017-02-23 09:23:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'user7', 'Bekar', 'Sylhet, Shekpur', 'user7.png', '2017-02-23 12:17:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'user8', 'Designer', 'Barisal, Kazipara', 'user8.jpg', '2017-02-23 09:25:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'user9', 'Html Designer', 'Natore, Lalpur', 'user9.png', '2017-02-23 09:21:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'user10', 'PHP Developer', 'Rajshahi, Natore', 'user10.png', '2017-02-23 06:19:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'user11', 'Database Expert', 'Khulna, Daspara', 'user11.png', '2017-02-23 05:15:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'user12', 'Freelancer', 'Habiganj, Shahpur', 'user12.png', '2017-02-23 13:20:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'user13', 'Wordpresian', 'Rangpur, Tajhat', 'user13.jpeg', '2017-02-23 09:22:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'user14', 'PHP Developer', 'Kustia, Mirpur', 'user14.jpg', '2017-02-23 10:26:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'user15', 'IT Expert', 'Dhaka, Mirpur', 'user15.png', '2017-02-23 08:20:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'user16', 'Designer', 'Jessore, Bankra', 'user16.jpg', '2017-02-23 09:20:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'user17', 'Bank Job', 'Chittagong, Bou Bazar', 'user17.jpg', '2017-02-23 09:25:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'user18', 'Engineer', 'Sreemangal, Kamalganj', 'user18.png', '2017-02-23 07:19:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'user19', 'Designer', 'Jamalpur, Shantinagor', 'user19.png', '2017-02-23 16:25:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'user20', 'Network Administrator', 'Tangail, Balla', 'user20.jpg', '2017-02-23 07:20:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
