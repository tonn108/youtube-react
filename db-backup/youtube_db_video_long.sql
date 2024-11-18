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
-- Table structure for table `video_long`
--

DROP TABLE IF EXISTS `video_long`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_long` (
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_long`
--

LOCK TABLES `video_long` WRITE;
/*!40000 ALTER TABLE `video_long` DISABLE KEYS */;
INSERT INTO `video_long` VALUES (1,'Lorem ipsum dolor sit, amet consectetur adipisicing elit.','Dead by Daylight เจ๊ฮาวมาสเตอร์ ขโมยหมาจอนวิคมาหวดเซอร์ ตัวใหม่เก่งหรือไม่?','https://www.youtube.com/watch?v=Q5MJZJDLrYg','https://i.ytimg.com/vi/Q5MJZJDLrYg/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLA2pKkNbvgd63u7UPqcOpF0-Y4kFQ',22,'2024-11-10 08:46:03','2024-11-10 08:46:03',1),(2,'ไฮไลท์บาสเกตบอล NBA ฤดูกาล 2024-25 ฟิลาเดลเฟีย เซเว่นตี้ซิกเซอร์ส พบ ลอสแองเจลิส เลเกอร์ส','ไฮไลท์บาสเกตบอล NBA ฤดูกาล 2024-25 ฟิลาเดลเฟีย เซเว่นตี้ซิกเซอร์ส พบ ลอสแองเจลิส เลเกอร์ส','https://www.youtube.com/watch?v=Oknybfv4qlg','https://i.ytimg.com/vi/Oknybfv4qlg/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLC743Cfp8f4ypaIR3KjWPFyq-f4Sw',10,'2024-11-10 08:46:03','2024-11-10 08:46:03',2),(3,'FC 25 : กัปตันคนเก่ากลับมาแล้ว! | MANCHESTER UNITED #4','FC 25 : กัปตันคนเก่ากลับมาแล้ว! | MANCHESTER UNITED #4','https://youtube.com/watch?v=3R22Th-mNa4','https://i.ytimg.com/vi/3R22Th-mNa4/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBVAS7u5_qc3QGgp_zNI5gqfImUFg',19,'2024-11-10 08:57:52','2024-11-10 08:57:52',3),(4,'รางวัลของคนเก่ง!ผอ.สวนสัตว์เปิดเขาเขียวจัดเต็มผลไม้รวมถาดยักษ์ให้ หมูเด้งทำนายผล ทรัมป์ ชนะเลือกตั้ง','รางวัลของคนเก่ง!ผอ.สวนสัตว์เปิดเขาเขียวจัดเต็มผลไม้รวมถาดยักษ์ให้ หมูเด้งทำนายผล ทรัมป์ ชนะเลือกตั้ง','https://www.youtube.com/watch?v=XexdHg7eVPE','https://i.ytimg.com/vi/XexdHg7eVPE/hqdefault.jpg?sqp=-oaymwEcCOADEI4CSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAIUXfNsq1QPNRowdoiy3J9jL3Z_w',1,'2024-11-10 08:57:52','2024-11-10 08:57:52',4),(5,'คำแนะนำในการเริ่มเป็น Web Developer & Programmer ในปี 2023 เริ่มยังไงดี? มาฟังครับ!','คำแนะนำในการเริ่มเป็น Web Developer & Programmer ในปี 2023 เริ่มยังไงดี? มาฟังครับ!','https://www.youtube.com/watch?v=dOb2WFNbM_g','https://i.ytimg.com/vi/dOb2WFNbM_g/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCbIQR_EM7Inqxk4dnyf19WJjrE6A',15,'2024-11-10 08:57:52','2024-11-10 08:57:52',5),(6,'โคตรเดือด!! เย็นตาโฟต้มยำ 8 กิโล!! ชามละ 1,000 บาท!! เข้มข้นรสแซ่บ!! ให้เยอะโคตรคุ้ม!!','โคตรเดือด!! เย็นตาโฟต้มยำ 8 กิโล!! ชามละ 1,000 บาท!! เข้มข้นรสแซ่บ!! ให้เยอะโคตรคุ้ม!!','https://www.youtube.com/watch?v=GFGuenz9m50','https://i.ytimg.com/vi/GFGuenz9m50/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLD9NXahzNN0cWeIzyjUpaGb-d9n_g',17,'2024-11-10 08:57:52','2024-11-10 08:57:52',6);
/*!40000 ALTER TABLE `video_long` ENABLE KEYS */;
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
