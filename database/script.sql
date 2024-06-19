-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 192.168.100.2    Database: STORAGE_UNIT
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.39-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (96,'Shelf A1 got removed.','2024-06-17 01:59:18'),(97,'Shelf A2 got removed.','2024-06-17 01:59:19'),(98,'Shelf B1 got removed.','2024-06-17 01:59:19'),(99,'Updated the registered_weight of shelf  to 0.','2024-06-17 01:59:27'),(100,'New ware called  added to shelf  with the weight of .','2024-06-17 01:59:27'),(101,'Updated the registered_weight of shelf  to 0.','2024-06-17 01:59:34'),(102,'New ware called f added to shelf  with the weight of 3.','2024-06-17 01:59:34'),(103,'New shelf called A1 controlled by 12AD34.','2024-06-17 02:03:37'),(104,'Shelf A1 got removed.','2024-06-17 02:04:31'),(105,'Updated the registered_weight of shelf  to 0.','2024-06-17 02:04:36'),(106,'New ware called asd added to shelf  with the weight of 12.','2024-06-17 02:04:36'),(107,'New shelf called A1 controlled by 112233445566.','2024-06-17 02:06:11'),(108,'New shelf called A2 controlled by 665544332211.','2024-06-17 02:06:19'),(109,'New shelf called A3 controlled by AABBCCDDEEFF.','2024-06-17 02:08:38'),(110,'New shelf called B1 controlled by A1B2C3D4E5F6.','2024-06-17 02:09:03'),(111,'Updated the registered_weight of shelf  to 100.','2024-06-17 02:09:39'),(112,'New ware called UTP Cables added to shelf A2 with the weight of 100.','2024-06-17 02:09:39'),(113,'Updated the registered_weight of shelf  to 145.','2024-06-17 02:19:51'),(114,'New ware called QWE added to shelf A1 with the weight of 145.','2024-06-17 02:19:51'),(115,'Updated the registered_weight of shelf  to 0.','2024-06-17 02:20:10'),(116,'Ware QWE got removed from A1.','2024-06-17 02:20:10'),(117,'Updated the registered_weight of shelf  to 234.','2024-06-17 02:27:33'),(118,'New ware called Electronic components added to shelf A1 with the weight of 234.','2024-06-17 02:27:33'),(119,'Updated the registered_weight of shelf  to 1065.','2024-06-17 02:27:56'),(120,'New ware called Heavy Stuff added to shelf B1 with the weight of 1065.','2024-06-17 02:27:56'),(121,'Updated the registered_weight of shelf B1 to 0.','2024-06-17 02:34:34'),(122,'Ware Heavy Stuff got removed from B1.','2024-06-17 02:34:34'),(123,'New shelf B2 added controlled by AAAADDDDBBBB.','2024-06-18 16:16:58'),(124,'New shelf B2 added controlled by AAAADDDDBBBB.','2024-06-18 16:22:51'),(125,'Shelf B2 got removed.','2024-06-18 16:22:53'),(126,'New ware called Optic cables added to shelf B2 with the weight of 50.','2024-06-18 16:24:00'),(127,'Updated the registered_weight of shelf B2 to 50.','2024-06-18 16:24:00'),(128,'New ware called Optic cables added to shelf B2 with the weight of 50.','2024-06-18 17:21:27'),(129,'Updated the registered_weight of shelf B2 to 100.','2024-06-18 17:21:27'),(130,'New ware called Optic cables added to shelf B2 with the weight of 50.','2024-06-18 17:21:31'),(131,'Updated the registered_weight of shelf B2 to 150.','2024-06-18 17:21:31'),(132,'Ware Optic cables got removed from B2.','2024-06-18 17:21:32'),(133,'Updated the registered_weight of shelf B2 to 100.','2024-06-18 17:21:32'),(134,'Ware Optic cables got removed from B2.','2024-06-18 17:21:33'),(135,'Updated the registered_weight of shelf B2 to 50.','2024-06-18 17:21:33'),(136,'Ware  got removed from .','2024-06-18 22:48:25'),(137,'Updated the registered_weight of shelf  to 0.','2024-06-18 22:48:25'),(138,'New ware called Keyboards, mouses and other stuff added to shelf B1 with the weight of 1500.','2024-06-18 23:10:38'),(139,'Updated the registered_weight of shelf B1 to 1500.','2024-06-18 23:10:38'),(140,'New shelf A0 added controlled by EF34AB21AD23E3.','2024-06-18 23:22:47'),(141,'New shelf A0 added controlled by AABBCCDDEE11.','2024-06-18 23:22:59'),(142,'New ware called Optic cables added to shelf B2 with the weight of 58.5.','2024-06-19 00:28:51'),(143,'Updated the registered_weight of shelf B2 to 109.','2024-06-19 00:28:51'),(144,'Ware Optic cables got removed from B2.','2024-06-19 00:28:53'),(145,'Updated the registered_weight of shelf B2 to 59.','2024-06-19 00:28:53'),(146,'Updated the actual_weight of shelf B2 to 59.','2024-06-19 05:47:40'),(147,'Ware Optic cables got removed from B2.','2024-06-19 05:54:47'),(148,'Updated the registered_weight of shelf B2 to 0.','2024-06-19 05:54:47'),(149,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:54:48'),(150,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:54:50'),(151,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:54:52'),(152,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:54:53'),(153,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:54:55'),(154,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:54:57'),(155,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:54:59'),(156,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:55:01'),(157,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:55:03'),(158,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:55:04'),(159,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:55:06'),(160,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:55:08'),(161,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:55:10'),(162,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:55:12'),(163,'New ware called Optic cables added to shelf B2 with the weight of 59.','2024-06-19 05:55:12'),(164,'Updated the registered_weight of shelf B2 to 59.','2024-06-19 05:55:12'),(165,'Ware Optic cables got removed from B2.','2024-06-19 05:55:50'),(166,'Updated the registered_weight of shelf B2 to 0.','2024-06-19 05:55:50'),(167,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:55:51'),(168,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:55:53'),(169,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:55:55'),(170,'Updated the actual_weight of shelf  to 0.','2024-06-19 05:55:57'),(171,'New ware called Optic cables added to shelf B2 with the weight of 62.','2024-06-19 05:55:59'),(172,'Updated the registered_weight of shelf B2 to 62.','2024-06-19 05:55:59'),(173,'Updated the actual_weight of shelf B2 to 62.','2024-06-19 06:01:32'),(174,'Updated the actual_weight of shelf B2 to 62.','2024-06-19 06:01:34'),(175,'Updated the actual_weight of shelf B2 to 62.','2024-06-19 06:01:36'),(176,'Updated the actual_weight of shelf B2 to 62.','2024-06-19 06:01:37'),(177,'Updated the actual_weight of shelf B2 to 62.','2024-06-19 06:01:39'),(178,'Updated the actual_weight of shelf B2 to 62.','2024-06-19 06:01:41'),(179,'Ware Optic cables got removed from B2.','2024-06-19 06:01:43'),(180,'Updated the registered_weight of shelf B2 to 0.','2024-06-19 06:01:43'),(181,'Shelf B2 got removed.','2024-06-19 06:01:48'),(182,'Shelf A0 got removed.','2024-06-19 06:02:18'),(183,'New shelf A4 added controlled by AAAABBBBDDDD.','2024-06-19 06:38:09'),(184,'Shelf B1 got removed.','2024-06-19 06:38:26'),(185,'Shelf A4 got removed.','2024-06-19 06:38:34'),(186,'New shelf A4 added controlled by AAAABBBBDDDD.','2024-06-19 06:39:26'),(187,'New ware called Optic cables added to shelf A4 with the weight of 59.','2024-06-19 06:39:52'),(188,'Updated the registered_weight of shelf A4 to 59.','2024-06-19 06:39:52'),(189,'Ware Optic cables got removed from A4.','2024-06-19 06:47:55'),(190,'Updated the registered_weight of shelf A4 to 0.','2024-06-19 06:47:55'),(191,'Shelf A4 got removed.','2024-06-19 06:47:58'),(192,'New shelf A4 added controlled by AAAADDDDBBBB.','2024-06-19 06:48:26'),(193,'New ware called Optic cables added to shelf A4 with the weight of 100.','2024-06-19 06:48:42'),(194,'Updated the registered_weight of shelf A4 to 100.','2024-06-19 06:48:42'),(195,'New ware called 480GB SATA SSD added to shelf A4 with the weight of 59.','2024-06-19 07:09:26'),(196,'Updated the registered_weight of shelf A4 to 159.','2024-06-19 07:09:26'),(197,'Ware Optic cables got removed from A4.','2024-06-19 07:09:50'),(198,'Updated the registered_weight of shelf A4 to 59.','2024-06-19 07:09:50'),(199,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:09'),(200,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:11'),(201,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:13'),(202,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:15'),(203,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:17'),(204,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:18'),(205,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:20'),(206,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:22'),(207,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:24'),(208,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:26'),(209,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:27'),(210,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:29'),(211,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:31'),(212,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:33'),(213,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:35'),(214,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:36'),(215,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:38'),(216,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:40'),(217,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:42'),(218,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:44'),(219,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:46'),(220,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:47'),(221,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:49'),(222,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:51'),(223,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:53'),(224,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:55'),(225,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:56'),(226,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:10:58'),(227,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:11:00'),(228,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:11:02'),(229,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:11:04'),(230,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:11:05'),(231,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:11:07'),(232,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:11:09'),(233,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:11:11'),(234,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:11:13'),(235,'Updated the actual_weight of shelf A4 to 59.','2024-06-19 07:11:15');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelves`
--

DROP TABLE IF EXISTS `shelves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shelves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(3) NOT NULL,
  `device` varchar(12) NOT NULL,
  `actual_weight` float NOT NULL,
  `registered_weight` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelves`
--

LOCK TABLES `shelves` WRITE;
/*!40000 ALTER TABLE `shelves` DISABLE KEYS */;
INSERT INTO `shelves` VALUES (5,'A1','112233445566',0,234),(6,'A2','665544332211',0,100),(7,'A3','AABBCCDDEEFF',0,0),(8,'B1','A1B2C3D4E5F6',0,1500),(14,'A4','AAAADDDDBBBB',59,59);
/*!40000 ALTER TABLE `shelves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wares`
--

DROP TABLE IF EXISTS `wares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `shelf` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `barcode` varchar(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wares_FK` (`shelf`),
  CONSTRAINT `wares_FK` FOREIGN KEY (`shelf`) REFERENCES `shelves` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wares`
--

LOCK TABLES `wares` WRITE;
/*!40000 ALTER TABLE `wares` DISABLE KEYS */;
INSERT INTO `wares` VALUES (40,'UTP Cables',6,100,'WER563'),(42,'Electronic components',5,234,'DFE363'),(47,'Keyboards, mouses and other stuff',8,1500,'WXD325'),(53,'480GB SATA SSD',14,59,'BBB222');
/*!40000 ALTER TABLE `wares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'STORAGE_UNIT'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-19  9:32:25
