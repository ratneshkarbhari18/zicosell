-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2021 at 06:59 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zicomart`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(255) NOT NULL,
  `uid` varchar(500) NOT NULL,
  `title` text NOT NULL,
  `store` varchar(500) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(255) NOT NULL,
  `uid` varchar(500) NOT NULL,
  `date` text NOT NULL,
  `status` text NOT NULL,
  `status_detail` longtext NOT NULL,
  `otp` text NOT NULL,
  `delivery_person_name` text NOT NULL,
  `delivery_person_number` text NOT NULL,
  `address` longtext NOT NULL,
  `phone_number` text NOT NULL,
  `store` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `uid` varchar(500) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sale_prirce` decimal(10,2) NOT NULL,
  `featured_image` varchar(500) NOT NULL,
  `inv_mgt` text NOT NULL,
  `inv_count` int(255) NOT NULL,
  `gallery_images` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(255) NOT NULL,
  `uid` varchar(500) NOT NULL,
  `title` text NOT NULL,
  `address` longtext NOT NULL,
  `phone` text NOT NULL,
  `adhaar_image` varchar(500) NOT NULL,
  `pan_image` varchar(500) NOT NULL,
  `business_proof` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `uid` varchar(500) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `mobile_number` text NOT NULL,
  `type` text NOT NULL,
  `google_token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `first_name`, `last_name`, `email`, `password`, `mobile_number`, `type`, `google_token`) VALUES
(1, 'uidstoreowner', 'Ratnesh', 'Karbhari', 'ratneshkarbhari18@gmail.com', '$2y$10$OLuIuagiFxYvEQMI6aJ2/uZ6fPeG95M1iexV1.EAgSeGcl9Zaoj/u', '9137976398', 'storeowner', ''),
(2, 'uidcustomer', 'Ratnesh', 'Karbhari', 'ratneshkarbhari18@gmail.com', '$2y$10$OLuIuagiFxYvEQMI6aJ2/uZ6fPeG95M1iexV1.EAgSeGcl9Zaoj/u', '9137976398', 'customer', ''),
(3, 'uiddelivery', 'Ratnesh', 'Karbhari', 'ratneshkarbhari18@gmail.com', '$2y$10$OLuIuagiFxYvEQMI6aJ2/uZ6fPeG95M1iexV1.EAgSeGcl9Zaoj/u', '9137976398', 'delivery', '');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
