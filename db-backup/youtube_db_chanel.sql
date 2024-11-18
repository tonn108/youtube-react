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
-- Table structure for table `chanel`
--

DROP TABLE IF EXISTS `chanel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chanel` (
  `chanel_id` int NOT NULL AUTO_INCREMENT,
  `username_chanel` varchar(255) NOT NULL,
  `banner_url` varchar(255) NOT NULL,
  `name_chanel` varchar(255) NOT NULL,
  `description_chanel` varchar(255) NOT NULL,
  `profile_chanel_url` varchar(255) NOT NULL,
  `chanel_create_at` datetime NOT NULL,
  `chanel_update_at` datetime NOT NULL,
  `chanel_follower` int DEFAULT NULL,
  PRIMARY KEY (`chanel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanel`
--

LOCK TABLES `chanel` WRITE;
/*!40000 ALTER TABLE `chanel` DISABLE KEYS */;
INSERT INTO `chanel` VALUES (1,'@Nuengstory89','https://yt3.googleusercontent.com/TrG9R4WdVbcbxc58…fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj','Nueng Story ','ยินดีต้อนรับทุกท่านเข้าสู่โลกของ Nueng Story','https://yt3.googleusercontent.com/ytc/AIdro_mDYSRcfkWdWGbmKNL3fRFKZg-PkpcPO9VVpG2g7H_n1vM=s160-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',14000),(2,'@Nuengstory89','test','Nueng Story ','test','https://yt3.googleusercontent.com/UmC7nAE7qP_E3mGY_CbSDAKV7_KHiIYw4jUWPpuDTCPb4gZMR6Hgw0Eq6Aw4WaLzPaRFx5jc=s160-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',NULL),(3,'@Nuengstory89','test','Nueng Story ','test','https://yt3.googleusercontent.com/ZAMbCbAcGn39Uk1eZI__3uBYpX0LKPZHvl2SQwVhZ_PLOWUG5gB1n-mPCKsXSkDIngJUWY7uIA=s160-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',NULL),(4,'@Nuengstory89','test','Nueng Story ','test','https://yt3.googleusercontent.com/XPwxqjkL6tTVsYfBGvkEjmSWUfjZXo6X3jrlbON1PoGF0EZx33Da_8LDjpZWVdPrGB_8IAoByQ=s160-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',NULL),(5,'@Nuengstory89','test','Nueng Story ','test','https://yt3.googleusercontent.com/IOdhPVB9p1xLP2JSgXWYNZqxN6B5SiuxytX-i_H2kZUDMM8nCr7gYSk2xrXbEdTVf3YWks-UzA=s160-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',NULL),(6,'@Nuengstory89','test','Nueng Story ','test','https://yt3.ggpht.com/qWXm1WnmZUXDG1I_JhpuTGUpuc4tMwYM1bBhgPXQ-y937vePw7J9A4BXiv9bO4MGWBS7xdOWElY=s88-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',NULL),(7,'@Nuengstory89','test','Nueng Story ','test','https://yt3.googleusercontent.com/QmNyr0ceJz7u0BcJjHawevG0Cli1FH0vfHJwgBhS2swGdJvLwanTOhb77OX3Q1JCcH-WqYyB=s160-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',NULL),(8,'@Nuengstory89','test','Nueng Story ','test','https://yt3.googleusercontent.com/P4DIpd7DchX-Ub987uBze8I5otclLpayec5YAqQTnCQBkoPJLbeZAn3teXBoxwM01pbeS0LsKg=s160-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',NULL),(9,'@Nuengstory89','test','Nueng Story ','test','https://yt3.googleusercontent.com/QTb98BYOpgdelS5GHS308Fx254ibIhuMGXZdNhqMrVUjQlPZoslf_WD6p5YR7LjMcsev7UkeFg=s160-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',NULL),(10,'@Nuengstory89','test','Nueng Story ','test','https://yt3.googleusercontent.com/qdNK8REcmPWvt7YdqxlHdgRI2fXdrUx3QfbwcAq-CmaHPvbzmLBXRL0RbLpT62mSzEIFSZeIS0s=s160-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',NULL),(11,'@Nuengstory89','test','Nueng Story ','test','https://yt3.googleusercontent.com/qKHAoNYyed8AK0cNUFPYeNNaUPPXiQ_ClPIDS-edrB2y4nEDiYvr5nCW0kcxbVN6qcigaivIrw=s160-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',NULL),(12,'@Nuengstory89','test','Nueng Story ','test','https://yt3.googleusercontent.com/qKHAoNYyed8AK0cNUFPYeNNaUPPXiQ_ClPIDS-edrB2y4nEDiYvr5nCW0kcxbVN6qcigaivIrw=s160-c-k-c0x00ffffff-no-rj','2024-11-10 11:11:32','2024-11-10 11:11:32',NULL);
/*!40000 ALTER TABLE `chanel` ENABLE KEYS */;
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
