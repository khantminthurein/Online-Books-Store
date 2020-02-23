-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2020 at 04:52 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `summary`, `price`, `category_id`, `cover`, `created_date`, `modified_date`) VALUES
(10, 'Database', 'floke', 'remark table', 4500, 8, '20060108-burma-2090cn.jpg', '2019-11-12 10:32:31', '2019-11-12 10:32:31'),
(12, 'DBMS', 'damage', 'success record', 35000, 9, '7893152_orig.jpg', '2019-11-12 10:38:33', '2019-11-12 10:38:33'),
(13, 'AI', 'phay myint', 'artificial intelligence', 8900, 4, 'law-kar-nandar-pagoda.jpg', '2019-11-12 10:56:37', '2019-11-12 10:56:37'),
(15, 'war lock', 'calvin', 'lock security', 20000, 1, '9461285341_b641bf1dce.jpg', '2019-11-12 11:12:26', '2019-11-12 11:12:26'),
(16, 'Human Intelligence', 'Smith', 'right thinking', 3700, 3, '20060108-burma-2090cn.jpg', '2019-11-12 11:14:05', '2019-11-12 11:14:05'),
(17, 'People', 'kkk', 'Resource 	\r\n        	\r\n        	\r\n    ', 4500, 10, '12783387_1552956198336630_1967669008_n.jpg', '2019-11-12 11:15:29', '2020-02-23 07:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `remark`, `created_date`, `modified_date`) VALUES
(1, 'History', 'Books about historic events, historical facts or history based fictions.	 		 	', '2019-11-05 00:45:07', '2019-11-06 09:30:15'),
(3, 'Mythology', '', '2019-11-05 00:46:46', '2019-11-05 00:46:46'),
(4, 'Sciences', '', '2019-11-05 00:50:46', '2019-11-05 00:50:46'),
(6, 'News', '', '2019-11-05 00:51:30', '2019-11-05 00:58:19'),
(7, 'Magazine', '', '2019-11-05 00:51:49', '2019-11-05 00:51:49'),
(8, 'Language', '', '2019-11-05 00:52:05', '2019-11-05 00:52:05'),
(9, 'Magazine', '', '2019-11-05 00:55:13', '0000-00-00 00:00:00'),
(10, 'Foxes', 'Wind Animals	 	', '2019-11-05 22:24:15', '2019-11-12 20:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_date`, `modified_date`) VALUES
(1, 'khant min', 'khant@gmail.com', '09388737828', 'Yangon', 0, '2019-11-12 01:28:30', '2019-11-17 11:14:26'),
(3, 'khant min', 'vvv@email.com', '09388737828', 'ygn', 0, '2019-11-12 01:36:48', '2019-11-12 11:05:23'),
(5, 'mg mg', 'khant@gmail.com', '09388737828', 'ygn', 0, '2019-11-12 01:37:16', '2019-11-12 02:19:54'),
(6, 'Ko Htet', 'kohtet@gmail.com', '0938775838', 'Mdy', 0, '2019-11-12 11:09:16', '2019-11-12 11:09:16'),
(7, 'U Htay', 'htaylin@gmail.com', '09738859399', 'Myittha', 0, '2019-11-12 11:17:06', '2019-11-12 11:17:06'),
(8, 'kmtr', 'khtr@gmail.com', '097378585888', 'Ngathayouk', 1, '2019-11-12 20:06:23', '2019-11-12 20:08:05'),
(9, 'kk', 'kk@gmail.com', '0987777474888', 'Mdy', 0, '2019-11-17 11:12:27', '2019-11-17 11:12:27'),
(10, '', '', '', '', 0, '2019-11-23 21:32:02', '2019-11-23 21:32:02'),
(11, 'khant min', 'khant@gmail.com', '09388737828', 'Ygn', 0, '2020-02-23 07:19:47', '2020-02-23 07:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
