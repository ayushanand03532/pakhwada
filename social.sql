-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2018 at 05:04 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id11613464_social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Hello', 'ayush_anand_1', 'test_ksj', '2018-12-19 21:03:13', 'no', 11),
(2, 'hello ayush congrats on your success!!!!!!!!!!', 'test_ksj', 'ayush_anand_1', '2018-12-19 21:08:04', 'no', 12),
(3, 'hi hello thi is bst ', 'ayush_anand_1', 'ayush_anand_1', '2018-12-19 21:58:16', 'no', 10),
(4, 'hello dude :)', 'ayush_anand_1', 'test_ksj', '2018-12-23 08:05:12', 'no', 19),
(5, 'hi', 'ayush_anand_1', 'ayush_anand_1', '2018-12-23 15:52:53', 'no', 29);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(1, 'test_ksj', 'ayush_anand_1'),
(2, 'test_ksj', 'ayush_anand_1'),
(3, 'test_ksj', 'ayush_anand_1');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(4, 'test_ksj', 12),
(5, 'ayush_anand_1', 12),
(8, 'ayush_anand_1', 16);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(4, 'ayush_anand_1', 'test_ksj', 'hello', '2018-12-23 09:02:20', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(16, 'this is my 11th post', 'ayush_anand_1', 'none', '2018-12-19 22:02:41', 'no', 'no', 1),
(17, 'hi', 'test_ksj', 'none', '2018-12-23 06:53:39', 'no', 'no', 0),
(18, 'sda', 'asdfsd', 'asdfsdaf', '2018-12-23 08:04:43', 'no', 'no', 0),
(19, 'hi ayush :)', 'test_ksj', 'ayush_anand_1', '2018-12-23 08:04:43', 'no', 'no', 0),
(20, 'sda', 'asdfsd', 'asdfsdaf', '2018-12-23 14:45:12', 'no', 'no', 0),
(21, 'hello', 'ayush_anand_1', 'none', '2018-12-23 14:45:12', 'no', 'no', 0),
(22, 'sda', 'asdfsd', 'asdfsdaf', '2018-12-23 14:54:28', 'no', 'no', 0),
(23, 'hello :)', 'anusha_priya', 'none', '2018-12-23 14:54:28', 'no', 'yes', 0),
(24, 'sda', 'asdfsd', 'asdfsdaf', '2018-12-23 14:55:51', 'no', 'no', 0),
(25, 'hello :)', 'anusha_priya', 'none', '2018-12-23 14:55:51', 'no', 'yes', 0),
(26, 'sda', 'asdfsd', 'asdfsdaf', '2018-12-23 14:56:01', 'no', 'no', 0),
(27, 'hello :)', 'anusha_priya', 'none', '2018-12-23 14:56:01', 'no', 'no', 0),
(28, 'sda', 'asdfsd', 'asdfsdaf', '2018-12-23 15:01:37', 'no', 'no', 0),
(29, 'She is a cat, rat, mice', 'ayush_anand_1', 'anusha_priya', '2018-12-23 15:01:37', 'no', 'yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(3, 'Ayush', 'Anand', 'ayush_anand_1', 'Ayushanand2005@gmail.com', '184a363ecd9b14b7bc28fcb08dda3986', '2018-12-16', 'assets/images/profile_pics/ayush_anand_170a72d2b29648aa47c855e3d24f486a2n.jpeg', 13, 3, 'no', ',anusha_priya,'),
(4, 'Test', 'Ksj', 'test_ksj', 'Test@gmail.com', '184a363ecd9b14b7bc28fcb08dda3986', '2018-12-19', 'assets/images/profile_pics/defaults/head_emerald.png', 6, 0, 'no', ','),
(5, 'Anusha', 'Priya', 'anusha_priya', 'Anushapriya00@gmail.com', '6bc80b9416b95aac0cf7757fc1bb1e65', '2018-12-23', 'assets/images/profile_pics/defaults/head_emerald.png', 3, 0, 'no', ',ayush_anand_1,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
