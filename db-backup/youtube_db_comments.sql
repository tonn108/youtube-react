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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `video_id` int NOT NULL,
  `user_id` int NOT NULL,
  `content` varchar(255) NOT NULL,
  `comment_create_at` datetime NOT NULL,
  `comment_update_at` datetime NOT NULL,
  `comment_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'this is first comment','2024-11-10 23:20:57','2024-11-10 23:20:57','this is first comment'),(2,1,2,'this is second comment','2024-11-10 23:20:57','2024-11-10 23:20:57','this is second comment'),(3,1,3,'this is third comment','2024-11-10 23:20:57','2024-11-10 23:20:57','this is third comment'),(4,2,2,'this is first comment','2024-11-16 15:05:01','2024-11-16 15:05:01','this is first comment'),(5,2,2,'this is second comment','2024-11-16 15:05:01','2024-11-16 15:05:01','this is second comment'),(6,2,3,'this is third comment','2024-11-16 15:05:01','2024-11-16 15:05:01','this is third comment'),(7,3,1,'this is first comment','2024-11-16 15:05:45','2024-11-16 15:05:45','this is first comment'),(8,3,2,'this is second comment','2024-11-16 15:05:45','2024-11-16 15:05:45','this is second comment'),(9,3,3,'this is third comment','2024-11-16 15:05:45','2024-11-16 15:05:45','this is third comment'),(10,4,1,'this is first comment','2024-11-16 15:06:03','2024-11-16 15:06:03','this is first comment'),(11,4,2,'this is second comment','2024-11-16 15:06:03','2024-11-16 15:06:03','this is second comment'),(12,4,3,'this is third comment','2024-11-16 15:06:03','2024-11-16 15:06:03','this is third comment'),(13,5,1,'this is first comment','2024-11-16 15:06:19','2024-11-16 15:06:19','this is first comment'),(14,5,2,'this is second comment','2024-11-16 15:06:19','2024-11-16 15:06:19','this is second comment'),(15,5,3,'this is third comment','2024-11-16 15:06:19','2024-11-16 15:06:19','this is third comment'),(16,6,1,'this is first comment','2024-11-16 15:06:35','2024-11-16 15:06:35','this is first comment'),(17,6,2,'this is second comment','2024-11-16 15:06:35','2024-11-16 15:06:35','this is second comment'),(18,6,3,'this is third comment','2024-11-16 15:06:35','2024-11-16 15:06:35','this is third comment');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18 11:26:21
