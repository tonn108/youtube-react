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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `users_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_profile_picture` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `user_create_at` datetime NOT NULL,
  `user_update_at` datetime NOT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'tonn108','tonn18707','pon010991@gmail.com','https://www.facebook.com/photo/?fbid=875620784322470&set=a.101626995055190','test','database','2024-11-09 23:22:45','2024-11-09 23:22:45'),(2,'test1','123456','test1@gmail.com','https://yt3.ggpht.com/ytc/AIdro_mDYSRcfkWdWGbmKNL3…Zg-PkpcPO9VVpG2g7H_n1vM=s88-c-k-c0x00ffffff-no-rj','test1','test11','2024-11-10 09:50:58','2024-11-10 09:50:58'),(3,'test2','123456','test1@gmail.com','https://yt3.ggpht.com/UmC7nAE7qP_E3mGY_CbSDAKV7_KH…6Hgw0Eq6Aw4WaLzPaRFx5jc=s88-c-k-c0x00ffffff-no-rj','test2','test22','2024-11-10 09:50:58','2024-11-10 09:50:58'),(4,'test3','123456','test1@gmail.com','https://yt3.ggpht.com/ZAMbCbAcGn39Uk1eZI__3uBYpX0L…1n-mPCKsXSkDIngJUWY7uIA=s88-c-k-c0x00ffffff-no-rj','test3','test33','2024-11-10 09:50:58','2024-11-10 09:50:58'),(5,'test4','123456','test1@gmail.com','https://yt3.ggpht.com/XPwxqjkL6tTVsYfBGvkEjmSWUfjZ…a_8LDjpZWVdPrGB_8IAoByQ=s88-c-k-c0x00ffffff-no-rj','test4','test44','2024-11-10 09:50:58','2024-11-10 09:50:58'),(6,'test5','123456','test1@gmail.com','https://yt3.ggpht.com/IOdhPVB9p1xLP2JSgXWYNZqxN6B5…gYSk2xrXbEdTVf3YWks-UzA=s88-c-k-c0x00ffffff-no-rj','test5','test55','2024-11-10 09:50:58','2024-11-10 09:50:58'),(7,'test6','123456','test1@gmail.com','https://yt3.ggpht.com/ytc/AIdro_kYdVG603ZWgmRiJERy…N_HPVk70Fja-g8GvMY1Bmwg=s88-c-k-c0x00ffffff-no-rj','test6','test66','2024-11-10 09:50:58','2024-11-10 09:50:58'),(8,'test7','123456','test1@gmail.com','https://yt3.ggpht.com/QmNyr0ceJz7u0BcJjHawevG0Cli1…anTOhb77OX3Q1JCcH-WqYyB=s48-c-k-c0x00ffffff-no-rj','test7','test77','2024-11-10 09:50:58','2024-11-10 09:50:58'),(9,'test8','123456','test1@gmail.com','https://yt3.ggpht.com/P4DIpd7DchX-Ub987uBze8I5otcl…ZAn3teXBoxwM01pbeS0LsKg=s88-c-k-c0x00ffffff-no-rj','test8','test88','2024-11-10 09:50:58','2024-11-10 09:50:58'),(10,'test9','123456','test1@gmail.com','https://yt3.ggpht.com/QTb98BYOpgdelS5GHS308Fx254ib…f_WD6p5YR7LjMcsev7UkeFg=s88-c-k-c0x00ffffff-no-rj','test9','test99','2024-11-10 09:50:58','2024-11-10 09:50:58'),(11,'test10','123456','test1@gmail.com','https://yt3.ggpht.com/qdNK8REcmPWvt7YdqxlHdgRI2fXd…RL0RbLpT62mSzEIFSZeIS0s=s88-c-k-c0x00ffffff-no-rj','test10','test1010','2024-11-10 09:50:58','2024-11-10 09:50:58'),(12,'test11','123456','test1@gmail.com','https://yt3.ggpht.com/qKHAoNYyed8AK0cNUFPYeNNaUPPX…r5nCW0kcxbVN6qcigaivIrw=s88-c-k-c0x00ffffff-no-rj','test11','test1111','2024-11-10 09:50:58','2024-11-10 09:50:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
