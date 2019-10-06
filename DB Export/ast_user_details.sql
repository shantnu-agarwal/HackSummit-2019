-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: team-astroller.mysql.database.azure.com    Database: ast
-- ------------------------------------------------------
-- Server version	5.6.42.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_details` (
  `uidai` char(12) NOT NULL,
  `fullname` varchar(25) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phno` char(10) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `current_address` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `side` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`uidai`),
  UNIQUE KEY `phno` (`phno`,`uidai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES ('123141231232','Shantnu','1944-11-02','1231231231','shantnu@gm.com','12412e','2019-08-31 22:36:18','owner'),('886542010065','VVV','1991-02-03','8849932209','VVV@VVV.VVV','oori','2019-08-31 20:11:42','owner'),('898978787787','lolipop','2001-01-01','9711200282','ananyd9@gmail.com','Oori 702, SRM','2019-09-03 21:21:45','owner'),('989898989898','Vivek Mittal','1999-09-02','9898989898','vivekmittal199@gmail.com','House 36, Bombay','2019-09-01 11:11:08',NULL),('999911112222','Test User','0002-02-07','9876543212','abc@abc.com','ABC road, cdf street, mumbai','2019-09-01 02:59:12','owner'),('999911112232','Test User','0002-02-07','9876543212','abc@abc.com','ABC road, cdf street, mumbai','2019-09-01 03:01:23','owner');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-05 18:48:40
