-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: youtube_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `poppular`
--

DROP TABLE IF EXISTS `poppular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poppular` (
  `video_id` int NOT NULL,
  `view_count` int NOT NULL,
  `like_count` int NOT NULL,
  `dislike_count` int NOT NULL,
  `comment_count` int NOT NULL,
  `poppular_create_at` datetime NOT NULL,
  `poppular_update_at` datetime NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poppular`
--

LOCK TABLES `poppular` WRITE;
/*!40000 ALTER TABLE `poppular` DISABLE KEYS */;
INSERT INTO `poppular` VALUES (1,100,100,1,101,'2024-11-10 10:01:58','2024-11-10 10:01:58'),(2,2000,200,2,202,'2024-11-10 10:01:58','2024-11-10 10:01:58'),(3,30000,300,3,303,'2024-11-10 10:01:58','2024-11-10 10:01:58'),(4,400000,400,4,404,'2024-11-10 10:01:58','2024-11-10 10:01:58'),(5,5000000,500,5,505,'2024-11-10 10:01:58','2024-11-10 10:01:58'),(6,600,600,6,606,'2024-11-10 10:01:58','2024-11-10 10:01:58'),(7,700,700,7,707,'2024-11-10 10:01:58','2024-11-10 10:01:58'),(8,8000,800,8,808,'2024-11-10 10:01:58','2024-11-10 10:01:58'),(9,90000,900,9,909,'2024-11-10 10:01:58','2024-11-10 10:01:58'),(10,101000,1010,10,1010,'2024-11-10 10:01:58','2024-11-10 10:01:58'),(11,1111000,1111,11,1111,'2024-11-10 10:01:58','2024-11-10 10:01:58');
/*!40000 ALTER TABLE `poppular` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18 11:26:19