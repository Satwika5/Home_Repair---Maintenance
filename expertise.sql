-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2024 at 07:08 AM
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
-- Database: `expertise`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userid`, `password`) VALUES
(1, 'admin', 'admin@1234');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `cid` int(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`cid`, `name`, `image`) VALUES
(2, 'Electrical Expert', ''),
(3, 'Plumber', ''),
(4, 'Carpenter', ''),
(5, 'Painting', ''),
(6, 'Gas Stove Repair', ''),
(7, 'Electronics', '');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(20) NOT NULL,
  `type` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `queres`
--

CREATE TABLE `queres` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `catagory` varchar(30) NOT NULL,
  `experience` int(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(150) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `photo` varchar(25) NOT NULL,
  `password` varchar(30) NOT NULL,
  `verification_code` varchar(255) NOT NULL,
  `is_verified` int(10) NOT NULL DEFAULT 0,
  `token` varchar(100) DEFAULT NULL,
  `tokenexpire` date DEFAULT NULL,
  `add_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `usertype`, `firstname`, `lastname`, `catagory`, `experience`, `email`, `phone`, `address`, `zipcode`, `photo`, `password`, `verification_code`, `is_verified`, `token`, `tokenexpire`, `add_on`) VALUES
(72, 'expert', 'Rumpa', 'Chakraborty', 'Electrical Expert', 3, 'rumpachakraborty462@gmail.com', '6295727627', 'Bazarpara, Uluberia, Howrah, West Bengal 711315', '711315', 'rumpa.jpg', '123456', 'fadece4c0c7ffbabad6fa97cfe3637b4', 1, NULL, NULL, '2024-05-29 15:43:41'),
(73, 'expert', 'Satwika', 'Dutta', 'Electrical Expert', 3, 'satwikadutta@gmail.com', '8158044903', 'Bazarpara, Uluberia, Howrah, West Bengal 711315', ' 711315', 'satwika.jpg', '123456', '36b4ebe91aa87a585f42a193eb4dd37a', 1, NULL, NULL, '2024-05-29 15:45:50'),
(74, 'expert', 'Ayan Kumar', 'Dhara', 'Electrical Expert', 2, 'ayandhara@gmail.com', '8910776613', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', '711316', 'ayan.jpg', '123456', 'b21edf0f6d1fe52f43cb0a3a0b8c740b', 1, NULL, NULL, '2024-05-29 15:48:25'),
(75, 'expert', 'Sk', 'Bakibilla', 'Electrical Expert', 2, 'akbakibilla@gmail.com', '7319324761', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', '711316', 'billa.jpg', '123456', '830576e31ceb949e26e3631c543aa14b', 1, NULL, NULL, '2024-05-29 15:48:50'),
(76, 'expert', 'Sk', 'Bakibilla', 'Plumber', 2, 'bakibilla123@gmail.com', '7319324761', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', '711316', 'billa.jpg', '123456', 'd5e0db9fbd267d0391143c279507c375', 1, NULL, NULL, '2024-05-29 15:49:21'),
(77, 'expert', 'Rumpa', 'Chakraborty', 'Plumber', 0, 'rumpa12@gmail.com', '6295727627', 'BazarparaUluberia, Howrah, West Bengal 711315\r\n', '711315', 'RUMPA.jpg', '123456', '4af4f1e2bff8be71de0185dab97c5d3d', 1, NULL, NULL, '2024-05-29 14:52:24'),
(78, 'expert', 'Ayan Kumar', 'Dhara', 'Plumber', 4, 'ayankumar@gmail.com', '8910776613', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', ' 711316', 'AYAN.jpg', '123456', '46e827604cbb7450f51865028d737e35', 1, NULL, NULL, '2024-05-29 14:53:38'),
(79, 'expert', 'Satwika', 'Dutta', 'Plumber', 3, 'satwika123@gmail.com', '8158044903', 'Uluberia, Bazarpara,Howrah, West Bengal 711315\r\n', '711315', 'SATWIKA.jpg', '123456', '78de5b10745b510e3ad4a425d38c8836', 1, NULL, NULL, '2024-05-29 14:55:43'),
(80, 'expert', 'Rumpa ', 'Chakraborty', 'Carpenter', 2, 'rumpa465@gmail.com', '6295727627', 'BazarparaUluberia, Howrah, West Bengal 711315\r\n', '711315', 'RUMPA.jpg', '123456', 'f3e4d13b690bf910fe92995d05c607c4', 1, NULL, NULL, '2024-05-29 14:57:43'),
(81, 'expert', 'Satwika', 'Dutta', 'Carpenter', 3, 'sawtika12356@gmail.com', '8158044903', 'BazarparaUluberia, Howrah, West Bengal 711315\r\n', '711315', 'SATWIKA.jpg', '123456', 'db8a9907c7e3d966e4056feb777bf3f0', 1, NULL, NULL, '2024-05-29 14:59:01'),
(82, 'expert', 'Sk', 'Bakibilla', 'Carpenter', 4, 'bakibill78@gmail.com', '7319324761', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', ' 711316', 'billa.jpg', '123456', '39454848c7f1ffb9472ef646540181ce', 1, NULL, NULL, '2024-05-29 15:49:39'),
(83, 'expert', 'Ayan', 'Dhara', 'Carpenter', 2, 'ayandhara12567@gmail.com', '6295727627', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', '711316', 'AYAN.jpg', '123456', '1889babd1c74ab8c7c238a30f985ae26', 1, NULL, NULL, '2024-05-29 15:01:28'),
(84, 'expert', 'Ayan Kumar', 'Dhara', 'Painting', 3, 'ayandhara23@gmail.com', '6295727627', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', '711316', 'AYAN.jpg', '123456', '70bd7683ca14e00e3ac7ce0e865f7559', 1, NULL, NULL, '2024-05-29 15:02:38'),
(85, 'expert', 'Rumpa', 'Chakraborty', 'Painting', 3, 'rumpa1823@gmail.com', '6295727627', 'BazarparaUluberia, Howrah, West Bengal 711315\r\n', '711316', 'RUMPA.jpg', '123456', '755c8469c6b798e55665171fed9954b2', 1, NULL, NULL, '2024-05-29 15:03:52'),
(86, 'expert', 'Satwika', 'Dutta', 'Gas Stove Repair', 4, 'satwika456@gmail.com', '7074459514', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', '711316', 'SATWIKA.jpg', '123456', '6df404800e2357fa9f14bf256a7e2984', 1, NULL, NULL, '2024-05-29 15:05:04'),
(87, 'expert', 'Rumpa ', 'Chakraborty', 'Gas Stove Repair', 3, 'rumpa489@gmail.com', '6265727627', 'BazarparaUluberia, Howrah, West Bengal 711315\r\n', '711315', 'RUMPA.jpg', '123456', '95f838171073a69dd480c5ece7f179e5', 1, NULL, NULL, '2024-05-29 15:06:10'),
(88, 'expert', 'Ayan Kumar', 'Dhara', 'Electronics', 2, 'ayan40@gmail.com', '6295727627', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', '711316', 'AYAN.jpg', '123456', 'b704557d71321d5bdc17d3a629833559', 1, NULL, NULL, '2024-05-29 15:07:24'),
(89, 'expert', 'Sk', 'Bakibilla', 'Painting', 2, 'sakbilla12359@gmail.com', '7319324761', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', '711316', 'billa.jpg', '123456', 'b8286c152ded45b10230f53b64a7c95d', 1, NULL, NULL, '2024-05-29 15:51:42'),
(90, 'expert', 'Sk ', 'Bakibilla', 'Electronics', 4, 'billabaki45@gmail.com', '6295727627', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', '711316', 'billa.jpg', '123456', '4fbd8c75be0f839b0cc4ef74728b67f8', 1, NULL, NULL, '2024-05-29 15:53:33'),
(91, 'expert', 'Satwika', 'Dutta', 'Painting', 3, 'satwikadutta15@gmail.com', '8158044903', 'BazarparaUluberia, Howrah, West Bengal 711315\r\n', '711315', 'SATWIKA.jpg', '123456', '9fdaa9c8131af554e524227a11809653', 1, NULL, NULL, '2024-05-29 15:11:09'),
(92, 'expert', 'Sk', 'Bakibilla', 'Gas Stove Repair', 3, 'skbilla1256@gmail.com', '7319324761', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', '711316', 'billa.jpg', '123456', '998aa0558290d7b5bc447bc9bd534423', 1, NULL, NULL, '2024-05-29 15:54:22'),
(93, 'expert', 'Satwika', 'Dutta', 'Electronics', 4, 'sawtika4893@gmailcom', '7319324761', 'BazarparaUluberia, Howrah, West Bengal 711315\r\n', '711315', 'SATWIKA.jpg', '123456', '2deec81cc90adbbfe45e7fad732d2bd4', 1, NULL, NULL, '2024-05-29 15:13:53'),
(94, 'expert', 'Ayan Kumar', 'Dhara', 'Gas Stove Repair', 4, 'ayan@gmail.com', '8910776613', 'Birshibpur, Uluberia, Mahespur, Howrah, West Bengal 711316', '711316', 'AYAN.jpg', '123456', 'f69ac6ab58dc3eae13b2be4cf9ccee32', 1, NULL, NULL, '2024-05-29 15:15:30'),
(95, 'expert', 'Rumpa', 'Chakraborty', 'Electronics', 3, 'rumpa99@gmail.com', '6295727627', 'BazarparaUluberia, Howrah, West Bengal 711315\r\n', '711315', 'RUMPA.jpg', '123456', 'eae1268e4eb08a570d631eadb907d916', 1, NULL, NULL, '2024-05-29 15:16:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queres`
--
ALTER TABLE `queres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `cid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `queres`
--
ALTER TABLE `queres`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
