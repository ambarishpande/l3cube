-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 01, 2016 at 03:17 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hack`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank`
--

CREATE TABLE `bloodbank` (
  `bbid` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `bno` varchar(20) DEFAULT NULL,
  `streetno` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  `uname` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodbank`
--

INSERT INTO `bloodbank` (`bbid`, `name`, `bno`, `streetno`, `area`, `city`, `cno`, `uname`, `password`, `state`) VALUES
(13, 'Shabbir Bawaji', 'A-402,Natasha Enclav', 'OPP NIBM', 'Knodhwa', 'Pune', '654646464645', 'bawaji94', '5d41402abc4b2a76b9719d911017c592', 'Maha'),
(14, 'abc', 'abca', 'abc', 'abc', 'Akola', '', 'amb', '4b2b6303956277ddfd7b8ea9cebb31db', 'Maharashtra'),
(15, 'asd', 'asd', 'asd', 'asd', 'Pune', '', 'asdasd', 'a8f5f167f44f4964e6c998dee827110c', 'Maharashtra'),
(16, 'asd', 'asd', 'dsa', 'das', 'Akola', '', 'asss', '1ee9cb572c30a8f27ebec15c193d4617', 'Maharashtra'),
(17, 'dasd', 'adas', 'adas', 'ads', 'Akola', '', 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', 'Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eid` int(11) NOT NULL,
  `bno` varchar(20) DEFAULT NULL,
  `streetno` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `tdate` date DEFAULT NULL,
  `stime` time DEFAULT NULL,
  `etime` time DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `eventname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eid`, `bno`, `streetno`, `area`, `city`, `state`, `uid`, `tdate`, `stime`, `etime`, `description`, `eventname`) VALUES
(1, '5', '5', '5', 'Pune', 'Maharashtra', 9, '2016-02-20', '06:00:00', '23:00:00', 'Blah', 'Awesome Donation Drive');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `pid` int(11) NOT NULL,
  `stickerno` int(11) NOT NULL DEFAULT '0',
  `bbid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `stored` date DEFAULT NULL,
  `Bgroup` varchar(20) DEFAULT NULL,
  `taken` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`pid`, `stickerno`, `bbid`, `uid`, `stored`, `Bgroup`, `taken`) VALUES
(8, 1102, 13, 9, '2016-02-01', 'B-ve', 1),
(9, 1103, 13, 9, '2016-02-01', 'B-ve', 0),
(10, 1103, 13, 9, '2016-02-01', 'B-ve', 0),
(11, 1103, 13, 9, '2016-02-01', 'B-ve', 0),
(12, 1103, 13, 9, '2016-02-01', 'B-ve', 0),
(13, 1103, 13, 9, '2016-02-01', 'B-ve', 0),
(14, 1043, 13, 9, '2016-02-01', 'B-ve', 0),
(15, 1043, 13, 9, '2016-02-01', 'B-ve', 0),
(16, 124, 13, 9, '2016-02-01', 'B-ve', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `cno` varchar(30) NOT NULL DEFAULT '',
  `ldonated` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `bno` varchar(20) DEFAULT NULL,
  `streetno` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `passord` varchar(50) DEFAULT NULL,
  `Bgroup` varchar(6) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `isdoner` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `cno`, `ldonated`, `dob`, `bno`, `streetno`, `area`, `city`, `state`, `passord`, `Bgroup`, `uname`, `isdoner`) VALUES
(9, 'Shabbir Bawaji', '654646464645', '2016-02-01', '2016-01-22', 'A-402,Natasha Enclav', 'OPP NIBM', 'Kondhwa', 'Pune', 'Maha', '', 'B-ve', '', 'D'),
(14, 'Ambarish Pande', 'aasda', NULL, '2003-03-03', 'asd', 'asd', 'asd', 'Pune', 'Maharashtra', 'a3aca2964e72000eea4c56cb341002a4', 'O+', 'hhh', 'D');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodbank`
--
ALTER TABLE `bloodbank`
  ADD PRIMARY KEY (`bbid`,`uname`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`pid`,`stickerno`),
  ADD KEY `bbid` (`bbid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`,`cno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodbank`
--
ALTER TABLE `bloodbank`
  MODIFY `bbid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`bbid`) REFERENCES `bloodbank` (`bbid`),
  ADD CONSTRAINT `stocks_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
