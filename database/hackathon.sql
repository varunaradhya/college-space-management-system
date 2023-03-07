-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2021 at 09:34 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `ce`
--

CREATE TABLE `ce` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `downloads` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `sno` int(11) NOT NULL,
  `msg` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `stime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`sno`, `msg`, `name`, `stime`) VALUES
(32, 'hii shagg', 'ARALI', '2021-09-02 22:36:39'),
(33, 'whta are u dng bro', 'SHAGG123', '2021-09-02 22:37:51'),
(34, 'hw r u', 'mallikarjun s arali', '2021-09-02 22:38:52'),
(35, ' welldone', 'mallikarjun s arali', '2021-09-02 22:39:05'),
(36, 'great brother', 'mallikarjun s arali', '2021-09-02 22:39:16'),
(37, ' good night', 'SHAGG123', '2021-09-02 22:39:33'),
(38, 'hii', 'mallikarjun s arali', '2021-09-02 22:40:23'),
(39, 'hello', 'mohammed shagil khan', '2021-09-02 22:40:51'),
(40, 'cool', 'mallikarjun s arali', '2021-09-02 22:52:51'),
(41, 'nice', 'mohammed shagil khan', '2021-09-02 22:53:32'),
(42, 'hii ', 'mohammed shagil khan', '2021-09-04 14:12:34'),
(43, 'hello', 'mohammed shagil khan', '2021-09-11 11:41:26'),
(44, 'good morning', 'mallikarjun s arali', '2021-09-11 11:42:13'),
(45, 'good evening', 'mohammed shagil khan', '2021-09-16 12:13:47'),
(46, 'hey', 'mohammed shagil khan', '2021-09-16 12:37:20');

-- --------------------------------------------------------

--
-- Table structure for table `cs`
--

CREATE TABLE `cs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `downloads` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs`
--

INSERT INTO `cs` (`id`, `name`, `size`, `downloads`) VALUES
(2, 'Java - The Complete Reference - 11 Edition.pdf', 104046606, 0x30),
(3, 'java GUI reference.pdf', 5948506, 0x30),
(4, '20BECS415_NEHA_JAVA_LAB RECORD.pdf', 8642734, 0x30),
(5, 'Fees_ receipt1.pdf', 1107887, 0x30),
(6, 'feess receipt.pdf', 1107885, 0x30);

-- --------------------------------------------------------

--
-- Table structure for table `ec`
--

CREATE TABLE `ec` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `downloads` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ec`
--

INSERT INTO `ec` (`id`, `name`, `size`, `downloads`) VALUES
(1, 'FLAT UNIT- I.pdf', 16452251, 0x30),
(2, 'MMP_ATFL_notes_module_2_RE.pdf', 18799556, 0x30),
(3, 'ACFrOgA4P8TloWKEx4OYRjqb3wq5eplCeddv7I-VII38088e21ky0Ao2kJh_Z8S_TPHlo4BoQfOgwfDqfIwx0L4xvQl3A7lJeT8s0YxOWYmYnhod7JNSyumR29vO4Y26J4DM5FdzyO75PYX950As.pdf', 424120, 0x30);

-- --------------------------------------------------------

--
-- Table structure for table `ee`
--

CREATE TABLE `ee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `downloads` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ee`
--

INSERT INTO `ee` (`id`, `name`, `size`, `downloads`) VALUES
(1, '20BECS415_NEHA_DSA_LAB_RECORD.pdf', 16012306, 0x30);

-- --------------------------------------------------------

--
-- Table structure for table `facultydetails`
--

CREATE TABLE `facultydetails` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pswd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facultydetails`
--

INSERT INTO `facultydetails` (`id`, `name`, `course`, `subject`, `username`, `pswd`) VALUES
(3, 'bhavana ', 'ec', 'mpmc', 'bhavu', '12345'),
(5, 'civil', 'ce', 'mat', 'cvi', '555'),
(4, 'harish', 'cs', 'daa', 'hari', '123'),
(6, 'shagg', 'ee', 'wire', 'shahi', '121212');

-- --------------------------------------------------------

--
-- Table structure for table `me`
--

CREATE TABLE `me` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `downloads` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `res`
--

CREATE TABLE `res` (
  `id` int(11) NOT NULL,
  `regno` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `sub1` int(11) NOT NULL,
  `sub2` int(11) NOT NULL,
  `sub3` int(11) NOT NULL,
  `sub4` int(11) NOT NULL,
  `sub5` int(11) NOT NULL,
  `sub6` int(11) NOT NULL,
  `sub7` int(11) NOT NULL,
  `sub8` int(11) NOT NULL,
  `ia1` int(11) NOT NULL,
  `ia2` int(11) NOT NULL,
  `ia3` int(11) NOT NULL,
  `ia4` int(11) NOT NULL,
  `ia5` int(11) NOT NULL,
  `ia6` int(11) NOT NULL,
  `ia7` int(11) NOT NULL,
  `ia8` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `result` varchar(200) NOT NULL,
  `slot` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res`
--

INSERT INTO `res` (`id`, `regno`, `Name`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `sub8`, `ia1`, `ia2`, `ia3`, `ia4`, `ia5`, `ia6`, `ia7`, `ia8`, `total`, `result`, `slot`) VALUES
(117, 'reg no', 'name', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'result', 'nov 2019'),
(118, '308cs17024', 'sss', 100, 100, 55, 89, 100, 98, 42, 42, 25, 25, 23, 21, 25, 25, 23, 21, 814, 'pass', 'nov 2019'),
(119, '308cs17025', 'aaa', 80, 33, 45, 89, 22, 55, 79, 65, 25, 23, 22, 24, 25, 23, 22, 24, 656, 'pass', 'nov 2019'),
(120, '308cs17026', 'ggg', 90, 22, 45, 44, 88, 64, 97, 32, 25, 24, 15, 21, 25, 24, 15, 21, 652, 'pass', 'nov 2019'),
(121, '308cs17027', 'rrrr', 70, 54, 44, 65, 87, 32, 87, 78, 25, 23, 23, 21, 25, 23, 23, 21, 701, 'pass', 'nov 2019'),
(122, '308cs17028', 'yyyy', 80, 22, 64, 66, 97, 64, 54, 98, 25, 24, 22, 21, 25, 24, 22, 21, 729, 'pass', 'nov 2019'),
(123, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'nov 2019'),
(124, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'nov 2019');

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `id` int(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `usn` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` (`id`, `fname`, `usn`, `course`, `DOB`, `username`, `password`) VALUES
(5, 'akram', '11111', 'ec', '1666-02-02', 'akram', '111'),
(4, 'mallikarjun s arali', '1DS20CS414', 'CS', '2001-06-16', 'ARALI', '111'),
(3, 'mohammed shagil khan', '1DS20CS415', 'CS', '1999-06-02', 'SHAGG123', '121212');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ce`
--
ALTER TABLE `ce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `cs`
--
ALTER TABLE `cs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec`
--
ALTER TABLE `ec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ee`
--
ALTER TABLE `ee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facultydetails`
--
ALTER TABLE `facultydetails`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `me`
--
ALTER TABLE `me`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res`
--
ALTER TABLE `res`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ce`
--
ALTER TABLE `ce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `cs`
--
ALTER TABLE `cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ec`
--
ALTER TABLE `ec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ee`
--
ALTER TABLE `ee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `facultydetails`
--
ALTER TABLE `facultydetails`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `me`
--
ALTER TABLE `me`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `res`
--
ALTER TABLE `res`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `studentdetails`
--
ALTER TABLE `studentdetails`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
