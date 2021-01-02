-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2020 at 05:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(3) NOT NULL,
  `courseId` int(5) NOT NULL,
  `courseName` varchar(50) NOT NULL,
  `section` varchar(3) NOT NULL,
  `assigned` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseId`, `courseName`, `section`, `assigned`) VALUES
(3, 1, 'Physics', 'A', 'admin'),
(6, 2, 'Physics', 'B', 'ria999'),
(8, 3, 'Physics', 'C', 'ria');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id` int(3) NOT NULL,
  `studentId` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `lecturerName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id`, `studentId`, `name`, `course_name`, `grade`, `lecturerName`) VALUES
(1, '1', 'ria', 'physics', '3.20', 'admin'),
(6, '16', 'Alpha111', 'Physics', '3.20', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `type` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `type`, `name`, `email`, `mobile`) VALUES
(1, 'admin', '1234', 'lecturer', 'ria', 'ria@gmail.com', '0178655633'),
(4, 'ria999', '1234', 'lecturer', 'nahida ria', 'ria@gmail.com', '+8801778578'),
(5, 'ria', '1234', 'lecturer', 'ria rahman', 'ria@gmail.com', '+8801778578'),
(7, 'hasib999', '1234', 'lecturer', 'MD. HASIBUL ISLAM', 'hasibsanto0@gmail.com', '+8801778578');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `NoteID` int(3) NOT NULL,
  `noteName` varchar(200) NOT NULL,
  `Text` longtext NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`NoteID`, `noteName`, `Text`, `username`) VALUES
(1, 'Test', 'This is Test', 'admin'),
(2, 'Test1', 'This is Test 1', 'admin'),
(3, 'Test2', 'This is Test 2', 'admin'),
(4, 'Test3', 'hi', 'admin'),
(7, 'Test4', 'Lorem Ipsum is simply dummy text of the ', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(5) NOT NULL,
  `studentId` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `section` varchar(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `cgpa` varchar(50) NOT NULL,
  `depertment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `studentId`, `name`, `section`, `email`, `mobile`, `cgpa`, `depertment`) VALUES
(1, '1', 'ria rahman', 'A', 'ria@gmail.com', '01778578380', '3.50', 'CSE'),
(2, '2', 'ria', 'B', 'riarahman@gmail.com', '01554545456', '3.20', 'CSE'),
(5, '3', 'hasib', 'C', 'hasib@gmail.com', '01778578380', '3.50', 'EEE'),
(7, '4', 'alpha', 'A', 'alpha@gmail.com', '01454545474', '3.50', 'EEE'),
(8, '5', 'Beta', 'B', 'beta@gmail.com', '5454545454', '3.20', 'CSE'),
(15, '6', 'Alpha1', 'C', 'alpha1@gmail.com', '01778578320', '3.50', 'CSE'),
(16, '7', 'Beta1', 'C', 'beta1@gmail.com', '54545454544', '3.20', 'EEE'),
(18, '16', 'Alpha111', 'A', 'alpha1@gmail.com', '01778578380', '3.50', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `studentcourse`
--

CREATE TABLE `studentcourse` (
  `id` int(3) NOT NULL,
  `studentId` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `courseName` varchar(50) NOT NULL,
  `section` varchar(3) NOT NULL,
  `lecturerName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentcourse`
--

INSERT INTO `studentcourse` (`id`, `studentId`, `name`, `courseName`, `section`, `lecturerName`) VALUES
(4, 2, 'ria rahman', 'Physics', 'B', 'ria999'),
(7, 1, 'ria rahman', 'Physics', 'A', 'admin'),
(8, 16, 'Alpha111', 'Physics', 'A', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courseId` (`courseId`),
  ADD UNIQUE KEY `assigned` (`assigned`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`NoteID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `studentId` (`studentId`);

--
-- Indexes for table `studentcourse`
--
ALTER TABLE `studentcourse`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `studentId` (`studentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `NoteID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `studentcourse`
--
ALTER TABLE `studentcourse`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
