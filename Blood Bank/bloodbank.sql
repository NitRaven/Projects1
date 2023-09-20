-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2023 at 02:57 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `bg_id` int(100) NOT NULL,
  `bg_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(1, 'O+'),
(2, 'O-'),
(3, 'AB+'),
(4, 'AB-'),
(5, 'A+'),
(6, 'A-'),
(7, 'B+'),
(8, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `camp_id` int(100) NOT NULL,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `state` int(100) NOT NULL,
  `city` int(100) NOT NULL,
  `detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_title`, `organised_by`, `state`, `city`, `detail`) VALUES
(1, 'VITC', 'VIT', 1, 1, ''),
(2, 'Jntu College', 'Health Club', 4, 2, ''),
(3, 'Iyers College', 'Iyers Clg', 1, 1, ''),
(4, 'Whitefield clg', 'Donors_banglore', 4, 2, ''),
(5, 'Mahatma Gandhi', 'City Hospital', 4, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `pin_code`, `district`, `state`) VALUES
(1, 'Chennai', '600116', 'Kanchipuram', 1),
(2, 'Hyderabad', '500085', 'Kukatpally', 4),
(3, 'Banglore', '560100', 'Electronic city', 5),
(4, 'New Delhi', '110001', 'Delhi', 3),
(5, 'Mumbai', '400012', 'Mumbai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `row_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subj` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`row_id`, `name`, `email`, `mobile`, `subj`) VALUES
(1, 'Mark', 'mark@gmail.com', '9875435676', 'save life'),
(2, 'Sathwik', 'sathwik@yahoo.com', '9812347821', 'need blood'),
(3, 'Avinash', 'avinash@gmail.com', '2345871290', 'require blood'),
(4, 'Neetu', 'neetu@gmail.com', '6789232121', 'save life'),
(5, 'Ankita', 'ankita@yahoo.com', '8911189237', 'save life'),
(6, 'Shivani', 'shivani@gmail.com', '3281937865', 'need blood'),
(7, 'Harshit', 'harshit@yahoo.com', '9875673452', 'require blood');

-- --------------------------------------------------------

--
-- Table structure for table `donarregistration`
--

CREATE TABLE `donarregistration` (
  `donar_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donarregistration`
--

INSERT INTO `donarregistration` (`donar_id`, `name`, `gender`, `age`, `mobile`, `b_id`, `email`, `pwd`) VALUES
(1, 'ragavi', 'female', '20', '7823982343', 5, 'ragavi@gmail.com', 'don123'),
(2, 'John', 'male', '29', '2348982637', 4, 'john@gmail.com', 'don1234'),
(3, 'Harshitha', 'Female', '28', '8763452318', 1, 'harshita@yahoo.com', 'don123'),
(4, 'Hemansh', 'Male', '35', '9823456712', 1, 'hemansh@yahoo.com', 'don123'),
(5, 'Sahithi', 'Female', '30', '9987023456', 2, 'sahithi@gmail.com', 'don123'),
(6, 'Ravi', 'Male', '26', '1887255678', 7, 'ravi@yahoo.com', 'don123'),
(7, 'Sita', 'Female', '25', '7702211882', 7, 'sita@gmail.com', 'don123'),
(8, 'Sneha', 'Female', '36', '8019198127', 8, 'sneha@gmail.com', 'don123'),
(9, 'Ram', 'Male', '39', '8978812023', 3, 'ram@yahoo.com', 'don123'),
(10, 'Suresh', 'Male', '29', '7861237892', 6, 'suresh@yahoo.com', 'don123'),
(11, 'Saniya', 'Female', '36', '9876789876', 6, 'saniya@gmail.com', 'don123'),
(30, 'Raghavi', 'female', '25', '4567891235', 3, 'raghavi@gmail.com', 'don123'),
(31, 'Dave', 'male', '48', '45678912456', 5, 'dave@gmail.com', 'dave123');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(100) NOT NULL,
  `camp_id` int(100) NOT NULL,
  `ddate` date NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `camp_id`, `ddate`, `units`, `detail`, `email`) VALUES
(1, 1, '2021-08-20', 10, 'Give Blood Donation Camp', 'john@gmail.com'),
(2, 5, '2021-09-13', 13, 'Save Life Foundation', 'harshita@yahoo.com'),
(3, 3, '2021-10-10', 9, 'Private Family', 'john@gmail.com'),
(4, 2, '2021-08-02', 30, 'Donate Blood, Save Life Foundation', 'sahithi@gmail.com'),
(5, 4, '2021-09-20', 21, 'VITC donation camp', 'sneha@gmail.com'),
(38, 1, '2021-12-01', 45, 'No disease', 'john@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE `requestes` (
  `req_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` int(100) NOT NULL,
  `reqdate` date NOT NULL,
  `detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`req_id`, `name`, `gender`, `age`, `mobile`, `email`, `bgroup`, `reqdate`, `detail`) VALUES
(1, 'Mark', 'Male', '22', '3452194859', 'mark@gmail.com', 5, '2022-01-22', 'Fever'),
(2, 'John', 'Male', '28', '1237849321', 'john@gmail.com', 7, '2021-12-30', 'save life'),
(3, 'Shravya', 'female', '30', '1234217892', 'shravya@gmail.com', 8, '2022-02-12', ''),
(4, 'Surya', 'female', '19', '1346784324', 'surya@gmail.com', 4, '2022-01-01', 'low platelets'),
(5, 'Aisha', 'Female', '25', '3423552566', 'aisha@gmail.com', 1, '2022-03-05', ''),
(6, 'Ram', 'male', '43', '1298326789', 'ram@gmail.com', 1, '2022-01-21', 'Accident'),
(7, 'vicky', 'male', '28', '9876543219', 'vicky@gmail.com', 2, '2022-02-14', 'Save Life'),
(15, 'Jacquelin', 'female', '23', '7861345268', 'jac@gmail.com', 3, '2022-01-01', 'Had an accident');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(100) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Tamil Nadu'),
(2, 'Maharashtra'),
(3, 'New Delhi'),
(4, 'Telengana'),
(5, 'Karnataka');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `pwd`, `typeofuser`) VALUES
('admin', 'admin1234', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`bg_id`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`camp_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `donarregistration`
--
ALTER TABLE `donarregistration`
  ADD PRIMARY KEY (`donar_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `requestes`
--
ALTER TABLE `requestes`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `bg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `camp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `row_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `donarregistration`
--
ALTER TABLE `donarregistration`
  MODIFY `donar_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `requestes`
--
ALTER TABLE `requestes`
  MODIFY `req_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
