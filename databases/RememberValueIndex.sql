-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: random
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `game_data`
--

DROP TABLE IF EXISTS `game_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `player_name` varchar(255) NOT NULL,
  `bubble_sort_time` decimal(10,7) NOT NULL,
  `insertion_sort_time` decimal(10,7) NOT NULL,
  `correct_response` varchar(255) NOT NULL,
  `merge_sort_time` decimal(10,7) NOT NULL,
  `radix_sort_time` decimal(10,7) NOT NULL,
  `shell_sort_time` decimal(10,7) NOT NULL,
  `quick_sort_time` decimal(10,7) NOT NULL,
  `tim_sort_time` decimal(10,7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_data`
--

LOCK TABLES `game_data` WRITE;
/*!40000 ALTER TABLE `game_data` DISABLE KEYS */;
INSERT INTO `game_data` VALUES (1,'Hizbu',46.7000000,11.7000000,'correct',-5.0000000,-5.6000000,-3.8000000,-6.0000000,-1.6000000),(2,'Hizbullah',45.5000000,29.1000000,'correct',-5.0000000,-7.1000000,-4.3000000,-7.1000000,-4.4000000),(3,'algo',37.5000000,27.2000000,'correct',5.4000000,5.0000000,5.4000000,5.5000000,4.1000000),(4,'supun',32.5000000,7.7000000,'correct',3.7000000,2.3000000,2.3000000,3.4000000,2.9000000),(5,'Hizbullah',32.5000000,11.3000000,'correct',3.7000000,4.7000000,2.3000000,4.3000000,3.2000000),(6,'Eranga',33.9000000,8.3000000,'correct',3.3000000,2.4000000,2.1000000,4.0000000,2.9000000),(7,'Hizbu',31.9000000,7.5000000,'correct',3.0000000,2.2000000,3.0000000,3.7000000,2.9000000),(8,'huawei',34.7000000,17.0000000,'correct',5.6000000,4.7000000,4.2000000,8.3000000,3.2000000),(9,'huawei',35.6000000,7.9000000,'correct',4.0000000,2.3000000,2.4000000,2.7000000,2.6000000),(10,'qwerty',32.0000000,10.1000000,'correct',4.3000000,4.8000000,11.8000000,7.1000000,3.3000000),(11,'t',35.1000000,9.7000000,'correct',3.9000000,2.3000000,3.2000000,4.9000000,3.2000000);
/*!40000 ALTER TABLE `game_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06 23:09:19
