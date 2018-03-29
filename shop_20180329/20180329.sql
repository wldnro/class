-- MySQL dump 10.16  Distrib 10.1.31-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	10.1.31-MariaDB

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
-- Table structure for table `member_table01`
--

DROP TABLE IF EXISTS `member_table01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_table01` (
  `custno` int(6) NOT NULL AUTO_INCREMENT,
  `custname` varchar(20) NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `joindate` date DEFAULT NULL,
  `grade` char(1) DEFAULT NULL,
  `city` char(2) DEFAULT NULL,
  PRIMARY KEY (`custno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_table01`
--

LOCK TABLES `member_table01` WRITE;
/*!40000 ALTER TABLE `member_table01` DISABLE KEYS */;
INSERT INTO `member_table01` VALUES (1,'test','01000000000','seoul','2018-03-29','1','se'),(2,'1234','01012345678','busan','2018-03-29','2','bu'),(3,'5678','01087654321','gwang','2018-03-29','3','gw'),(4,'1111','01011111111','inchan','2018-03-29','4','in'),(5,'2222','01022222222','seoul','2018-03-29','1','se'),(6,'123','123','123','2018-03-29','1','12'),(7,'null','1','1','2018-03-29','1','11'),(8,'1','1','1','2018-03-29','1','11');
/*!40000 ALTER TABLE `member_table01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `money_table01`
--

DROP TABLE IF EXISTS `money_table01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `money_table01` (
  `custno` int(6) NOT NULL,
  `salenum` int(8) NOT NULL,
  `pcost` int(8) DEFAULT NULL,
  `amount` int(4) DEFAULT NULL,
  `price` int(8) DEFAULT NULL,
  `pcode` varchar(4) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  PRIMARY KEY (`custno`,`salenum`),
  CONSTRAINT `money_table01_ibfk_1` FOREIGN KEY (`custno`) REFERENCES `member_table01` (`custno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `money_table01`
--

LOCK TABLES `money_table01` WRITE;
/*!40000 ALTER TABLE `money_table01` DISABLE KEYS */;
INSERT INTO `money_table01` VALUES (1,1001,100,5,500,'PenC','2000-05-13'),(2,1002,1000,3,3000,'BP','2002-08-12'),(3,1003,333,3,999,'Gum','2008-10-12'),(4,1004,500,2,1000,'IC','2018-03-29'),(5,1005,200,5,1000,'Pin','2017-02-19');
/*!40000 ALTER TABLE `money_table01` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-29 16:12:48
