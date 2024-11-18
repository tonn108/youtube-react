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
-- Table structure for table `video_short`
--

DROP TABLE IF EXISTS `video_short`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_short` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `video_description` varchar(255) NOT NULL,
  `video_title` varchar(255) NOT NULL,
  `video_url` varchar(255) NOT NULL,
  `video_thumbnail` varchar(255) NOT NULL,
  `video_duration` int NOT NULL,
  `video_create_at` datetime NOT NULL,
  `video_update_at` datetime NOT NULL,
  `chanel_id` int NOT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_short`
--

LOCK TABLES `video_short` WRITE;
/*!40000 ALTER TABLE `video_short` DISABLE KEYS */;
INSERT INTO `video_short` VALUES (2,'ทำไมไคจู Kaiju No. 8 ถึงมาสิงร่างของพระเอก','ทำไมไคจู Kaiju No. 8 ถึงมาสิงร่างของพระเอก','https://www.youtube.com/shorts/uRyB4Bv_1lk','https://i.ytimg.com/vi/uRyB4Bv_1lk/oardefault.jpg?sqp=-oaymwEdCJUDENAFSFWQAgHyq4qpAwwIARUAAIhCcAHAAQY=&rs=AOn4CLCD1QuvSJq-ADVY-0mWBOodDQullw',1,'2024-11-10 09:24:04','2024-11-10 09:24:04',1),(3,'นักแข่ง RoV โปรลีกอยู่แรงก์อะไร และกี่ดาว!? #shorts #rov','นักแข่ง RoV โปรลีกอยู่แรงก์อะไร และกี่ดาว!? #shorts #rov','https://www.youtube.com/shorts/V6ZvsJa8zcw','https://i.ytimg.com/vi/V6ZvsJa8zcw/oar2.jpg?sqp=-o…IhCcAHAAQY=&rs=AOn4CLCQ8jUxMRFgdWsraKuEOOhhqjYYmQ',1,'2024-11-10 09:24:04','2024-11-10 09:24:04',2),(4,'ภาพจากยุค 60s ที่กำลังไวรัลสุดๆ ตอนนี้! #AddamsFamily #Wednesday #catdumb','ภาพจากยุค 60s ที่กำลังไวรัลสุดๆ ตอนนี้! #AddamsFamily #Wednesday #catdumb','https://www.youtube.com/shorts/jg9vv0P_lTE','https://i.ytimg.com/vi/jg9vv0P_lTE/oardefault.jpg?…IhCcAHAAQY=&rs=AOn4CLCWqSieVXK3fTTCm0wIomBK4967sA',1,'2024-11-10 09:24:04','2024-11-10 09:24:04',3),(5,'BEATING UP the THUGS in the HOOD ?','BEATING UP the THUGS in the HOOD ?','https://www.youtube.com/shorts/MOZwznrm3Zs','https://i.ytimg.com/vi/MOZwznrm3Zs/oar2.jpg?sqp=-o…IhCcAHAAQY=&rs=AOn4CLD9Vh8PoM7O9PDYBKhLXn85vFc7xg',0,'2024-11-10 09:24:04','2024-11-10 09:24:04',4),(6,'ยัดเยียดให้ @GooGid กินบลูชีส ??#บลูชีส #ชีส #สปาเกตตี้ #ครีมซอส #cheese #gorgonzola #pedpedtv','ยัดเยียดให้ @GooGid กินบลูชีส ??#บลูชีส #ชีส #สปาเกตตี้ #ครีมซอส #cheese #gorgonzola #pedpedtv','https://www.youtube.com/shorts/wBOWuLWzzmY','https://i.ytimg.com/vi/wBOWuLWzzmY/oardefault.jpg?…IhCcAHAAQY=&rs=AOn4CLAuSD6vxCjGQZX5Sth7yr-NpcWAjQ',1,'2024-11-10 09:24:04','2024-11-10 09:24:04',5);
/*!40000 ALTER TABLE `video_short` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18 11:26:20
