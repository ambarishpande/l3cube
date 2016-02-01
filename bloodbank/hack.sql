-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hack
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bloodbank`
--

DROP TABLE IF EXISTS `bloodbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloodbank` (
  `bbid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `bno` varchar(20) DEFAULT NULL,
  `streetno` varchar(20) DEFAULT NULL,
  `area` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `cno` varchar(20) DEFAULT NULL,
  `uname` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`bbid`,`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodbank`
--

LOCK TABLES `bloodbank` WRITE;
/*!40000 ALTER TABLE `bloodbank` DISABLE KEYS */;
INSERT INTO `bloodbank` VALUES (13,'Shabbir Bawaji','A-402,Natasha Enclav','OPP NIBM','Knodhwa','Pune','654646464645','bawaji94','5d41402abc4b2a76b9719d911017c592','Maha'),(14,'abc','abca','abc','abc','Akola','','amb','4b2b6303956277ddfd7b8ea9cebb31db','Maharashtra'),(15,'asd','asd','asd','asd','Pune','','asdasd','a8f5f167f44f4964e6c998dee827110c','Maharashtra'),(16,'asd','asd','dsa','das','Akola','','asss','1ee9cb572c30a8f27ebec15c193d4617','Maharashtra'),(17,'dasd','adas','adas','ads','Akola','','ddd','77963b7a931377ad4ab5ad6a9cd718aa','Maharashtra');
/*!40000 ALTER TABLE `bloodbank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stocks` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `stickerno` int(11) NOT NULL DEFAULT '0',
  `bbid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `stored` date DEFAULT NULL,
  `Bgroup` varchar(20) DEFAULT NULL,
  `taken` int(11) DEFAULT NULL,
  PRIMARY KEY (`pid`,`stickerno`),
  KEY `bbid` (`bbid`),
  KEY `uid` (`uid`),
  CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`bbid`) REFERENCES `bloodbank` (`bbid`),
  CONSTRAINT `stocks_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
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
  `isdoner` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`uid`,`cno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (9,'Shabbir Bawaji','654646464645',NULL,'2016-01-22','A-402,Natasha Enclav','OPP NIBM','Kondhwa','Pune','Maha','','B-ve','','D'),(11,'','',NULL,'0000-00-00','','','','','','','','','D');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-31 23:05:14
