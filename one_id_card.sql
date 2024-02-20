-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2023 at 10:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `one_id_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_database`
--

CREATE TABLE `admin_database` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aadhar_no` varchar(12) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mb_id` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `department_database`
--

CREATE TABLE `department_database` (
  `id` int(11) NOT NULL,
  `department` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `aadhar_no` varchar(12) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mb_no` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_database`
--

CREATE TABLE `main_database` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `ph_no` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `aadhar_no` varchar(12) NOT NULL,
  `voter_no` varchar(10) NOT NULL,
  `ration_no` varchar(20) NOT NULL,
  `pan_no` varchar(10) NOT NULL,
  `driving_no` varchar(20) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `signature` varchar(200) NOT NULL,
  `department` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_database`
--

INSERT INTO `main_database` (`id`, `name`, `fname`, `mname`, `dob`, `address`, `ph_no`, `email`, `aadhar_no`, `voter_no`, `ration_no`, `pan_no`, `driving_no`, `photo`, `signature`, `department`, `username`, `password`) VALUES
(1, 'PRATAP PARAMANIK', 'BHABESH PARAMANIK', 'SHEFALI PARAMANIK', '25/11/2000', 'ASANSOL', '6296615148', 'pratap1000tx@gmail.com', '898989898989', 'ABCD4561', 'XRP2558', 'ppppp85', 'psst0420223', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reg_login`
--

CREATE TABLE `reg_login` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `mb_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_database`
--

CREATE TABLE `user_database` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `ph_no` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `aadhar_no` varchar(12) NOT NULL,
  `voter_no` varchar(10) NOT NULL,
  `pan_no` varchar(10) NOT NULL,
  `ration_no` varchar(20) NOT NULL,
  `driving_no` varchar(20) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `signature` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL COMMENT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_database`
--
ALTER TABLE `admin_database`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_database`
--
ALTER TABLE `department_database`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_database`
--
ALTER TABLE `main_database`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg_login`
--
ALTER TABLE `reg_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_database`
--
ALTER TABLE `user_database`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_database`
--
ALTER TABLE `admin_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department_database`
--
ALTER TABLE `department_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_database`
--
ALTER TABLE `main_database`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reg_login`
--
ALTER TABLE `reg_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_database`
--
ALTER TABLE `user_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
