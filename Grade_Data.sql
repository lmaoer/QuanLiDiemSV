-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: qldsv
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
-- Table structure for table `diem`
--

DROP TABLE IF EXISTS `diem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diem` (
  `maBD` int NOT NULL AUTO_INCREMENT,
  `heso1` float NOT NULL,
  `heso3` float NOT NULL,
  `heso6` float NOT NULL,
  `tongDiem` float NOT NULL,
  `maGV` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `maSV` int NOT NULL,
  `maMH` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `maTC` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `maTL` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `maHK` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `maNH` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`maBD`),
  KEY `maGV` (`maGV`),
  KEY `maHK` (`maHK`),
  KEY `maNH` (`maNH`),
  KEY `maMH` (`maMH`),
  KEY `maSV` (`maSV`),
  KEY `maTC` (`maTC`),
  KEY `maTL` (`maTL`),
  CONSTRAINT `diem_ibfk_1` FOREIGN KEY (`maGV`) REFERENCES `giangvien` (`maGV`),
  CONSTRAINT `diem_ibfk_3` FOREIGN KEY (`maHK`) REFERENCES `hocky` (`maHK`),
  CONSTRAINT `diem_ibfk_4` FOREIGN KEY (`maNH`) REFERENCES `namhoc` (`maNH`),
  CONSTRAINT `diem_ibfk_5` FOREIGN KEY (`maMH`) REFERENCES `monhoc` (`maMH`),
  CONSTRAINT `diem_ibfk_6` FOREIGN KEY (`maSV`) REFERENCES `sinhvien` (`maSV`),
  CONSTRAINT `diem_ibfk_7` FOREIGN KEY (`maTC`) REFERENCES `tinchi` (`maTC`),
  CONSTRAINT `diem_ibfk_8` FOREIGN KEY (`maTL`) REFERENCES `theloai` (`maTL`)
) ENGINE=InnoDB AUTO_INCREMENT=553 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diem`
--

LOCK TABLES `diem` WRITE;
/*!40000 ALTER TABLE `diem` DISABLE KEYS */;
INSERT INTO `diem` VALUES (110,10,8,8,8.2,'GV1',111,'TOAN1','TC1','TL1','HK1','NH01'),(111,3,7,5,5.4,'GV1',112,'TOAN1','TC1','TL1','HK1','NH01'),(112,8,6,5,5.6,'GV1',113,'TOAN1','TC1','TL1','HK1','NH01'),(118,2,6,4,4.4,'GV1',121,'TOAN2','TC1','TL1','HK1','NH01'),(119,6,7,3,4.5,'GV1',122,'TOAN2','TC1','TL1','HK1','NH01'),(120,4,6,6,5.8,'GV1',123,'TOAN2','TC1','TL1','HK1','NH01'),(121,7,6,6,6.1,'GV1',131,'TOAN2','TC1','TL1','HK1','NH01'),(122,2,6,0,2,'GV1',111,'TOAN2','TC1','TL1','HK1','NH01'),(123,10,7,8,7.9,'GV1',112,'TOAN2','TC1','TL1','HK1','NH01'),(124,0,5,0,1.5,'GV1',113,'TOAN2','TC1','TL1','HK1','NH01'),(125,0,5,0,1.5,'GV1',121,'TOAN2','TC1','TL1','HK1','NH01'),(126,10,8,8,8.2,'GV1',122,'TOAN2','TC1','TL1','HK1','NH01'),(127,2,5,4,4.1,'GV1',123,'TOAN2','TC1','TL1','HK1','NH01'),(128,2,7,0,2.3,'GV1',131,'TOAN2','TC1','TL1','HK1','NH01'),(129,0,0,0,0,'GV1',111,'TOAN2','TC1','TL1','HK1','NH01'),(130,2,7,0,2.3,'GV1',131,'TOAN2','TC1','TL1','HK1','NH01'),(131,0,0,0,0,'GV1',111,'TOAN2','TC1','TL1','HK1','NH01'),(132,4,6,3,4,'GV1',112,'TOAN2','TC1','TL1','HK1','NH01'),(133,10,8,8,8.2,'GV1',113,'TOAN2','TC1','TL1','HK1','NH01'),(134,4,6,3,4,'GV1',112,'XH1','TC2','TL2','HK1','NH01'),(135,10,8,8,8.2,'GV1',113,'XH1','TC2','TL2','HK1','NH01'),(136,5,5,2,3.2,'GV1',123,'XH3','TC2','TL2','HK1','NH01'),(137,2,7,0,2.3,'GV1',131,'XH3','TC2','TL2','HK1','NH01'),(138,2,6,0,2,'GV1',111,'CN3','TC2','TL3','HK1','NH01'),(139,8,7,5,5.9,'GV1',112,'CN3','TC2','TL3','HK1','NH01'),(140,8,7,5,5.9,'GV1',113,'CN3','TC2','TL3','HK1','NH01'),(141,2,6,0,2,'GV1',121,'CN3','TC2','TL3','HK1','NH01'),(142,10,7,6,6.7,'GV1',122,'CN3','TC2','TL3','HK1','NH01'),(143,7,8,6,6.7,'GV1',123,'CN3','TC2','TL3','HK1','NH01'),(144,10,8,7,7.6,'GV1',131,'CN3','TC2','TL3','HK1','NH01'),(145,10,6,7,7,'GV1',111,'CN3','TC2','TL3','HK1','NH01'),(146,10,8,7,7.6,'GV1',131,'NN1','TC2','TL5','HK1','NH01'),(147,10,6,7,7,'GV1',111,'NN1','TC2','TL5','HK1','NH01'),(148,10,9,9,9.1,'GV1',112,'NN1','TC2','TL5','HK1','NH01'),(149,9,8,6,6.9,'GV1',113,'NN1','TC2','TL5','HK1','NH01'),(150,6,6,6,6,'GV1',121,'NN1','TC2','TL5','HK1','NH01'),(151,9,6,6,6.3,'GV1',122,'NN1','TC2','TL5','HK1','NH01'),(152,2,6,4,4.4,'GV1',123,'KT1','TC2','TL4','HK1','NH01'),(153,2,0,0,0.2,'GV1',131,'KT1','TC2','TL4','HK1','NH01'),(154,10,7,7,7.3,'GV1',111,'KT1','TC2','TL4','HK1','NH01'),(155,10,7,7,7.3,'GV1',112,'KT1','TC2','TL4','HK1','NH01'),(156,0,0,0,0,'GV1',113,'XH2','TC2','TL2','HK1','NH01'),(157,5,7,4,5,'GV1',121,'XH2','TC2','TL2','HK1','NH01'),(158,3,6,0,2.1,'GV1',122,'XH1','TC2','TL2','HK1','NH01'),(159,10,9,9,9.1,'GV1',123,'XH1','TC2','TL2','HK1','NH01'),(160,3,6,0,2.1,'GV1',122,'XH3','TC2','TL2','HK1','NH01'),(161,10,9,9,9.1,'GV1',123,'XH3','TC2','TL2','HK1','NH01'),(162,8,6,7,6.8,'GV1',131,'NN1','TC2','TL5','HK1','NH01'),(163,9,7,6,6.6,'GV1',111,'NN1','TC2','TL5','HK1','NH01'),(164,9,9,9,9,'GV1',112,'TOAN2','TC2','TL1','HK1','NH01'),(165,10,5,7,6.7,'GV1',113,'TOAN2','TC2','TL1','HK1','NH01'),(166,3,6,5,5.1,'GV1',121,'CN3','TC2','TL3','HK1','NH01'),(167,0,7,0,2.1,'GV1',122,'CN3','TC2','TL3','HK1','NH01'),(168,0,0,0,0,'GV1',123,'CN3','TC2','TL3','HK1','NH01'),(169,6,7,5,5.7,'GV1',131,'CN3','TC2','TL3','HK1','NH01'),(170,6,7,5,5.7,'GV1',111,'KT1','TC2','TL4','HK1','NH01'),(171,10,7,6,6.7,'GV1',112,'KT1','TC2','TL4','HK1','NH01'),(172,6,7,4,5.1,'GV1',113,'CN3','TC2','TL3','HK1','NH01'),(173,6,0,6,4.2,'GV1',121,'CN3','TC2','TL3','HK1','NH01'),(174,6,0,6,4.2,'GV1',121,'CN3','TC2','TL3','HK1','NH01'),(175,9,6,7,6.9,'GV1',122,'CN3','TC2','TL3','HK1','NH01'),(176,6,0,6,4.2,'GV1',121,'TOAN2','TC2','TL1','HK1','NH01'),(177,9,6,7,6.9,'GV1',122,'TOAN2','TC2','TL1','HK1','NH01'),(178,6,0,6,4.2,'GV4',121,'NN1','TC2','TL5','HK1','NH01'),(179,9,6,7,6.9,'GV4',122,'NN1','TC2','TL5','HK1','NH01'),(180,6,6,6,6,'GV1',111,'TOAN1','TC1','TL1','HK1','NH01'),(181,8.5,8.5,8.5,8.5,'GV4',121,'TOAN1','TC2','TL1','HK1','NH01'),(182,7,7,7,7,'GV4',122,'TOAN1','TC2','TL1','HK1','NH01'),(183,8.5,8.5,8.5,8.5,'GV3',121,'TOAN1','TC2','TL1','HK1','NH01'),(184,7,7,7,7,'GV3',122,'TOAN1','TC2','TL1','HK1','NH01'),(185,8.5,8.5,8.5,8.5,'GV3',121,'TOAN1','TC2','TL1','HK1','NH01'),(186,9,9,9,9,'GV3',122,'TOAN1','TC2','TL1','HK1','NH01'),(187,2,2,2,2,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(188,2,2,2,2,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(189,8,8,8,8,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(190,7,7,7,7,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(191,8,8,8,8,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(192,7,7,7,7,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(193,8,8,8,8,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(194,7,7,7,7,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(195,8,8,8,8,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(196,7,7,7,7,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(197,8,8,8,8,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(198,7,7,7,7,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(199,9,9,9,9,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(200,7,7,7,7,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(201,9,9,9,9,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(202,7,7,7,7,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(203,5,5,5,5,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(204,6,6,6,6,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(205,5,5,5,5,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(206,6,6,6,6,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(207,5,5,5,5,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(208,6,6,6,6,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(209,10,10,10,10,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(210,8.5,8.5,8.5,8.5,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(211,10,10,10,10,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(212,8.5,8.5,8.5,8.5,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(213,10,10,10,10,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(214,8.5,8.5,8.5,8.5,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(215,6,6,6,6,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(216,8,7.5,8,8,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(217,6,6,6,6,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(218,8,7.5,8,8,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(219,6,6,6,6,'GV1',121,'TOAN3','TC2','TL1','HK1','NH01'),(220,8,7.5,8,8,'GV1',122,'TOAN3','TC2','TL1','HK1','NH01'),(221,3,3,3,3,'GV1',121,'TOAN1','TC1','TL1','HK1','NH01'),(222,8,7.5,8,8,'GV1',122,'TOAN1','TC1','TL1','HK1','NH01'),(223,3,3,3,3,'GV1',121,'TOAN1','TC1','TL1','HK1','NH01'),(224,8,7.5,8,8,'GV1',122,'TOAN1','TC1','TL1','HK1','NH01'),(225,3,3,3,3,'GV1',121,'TOAN1','TC1','TL1','HK1','NH01'),(226,8,7.5,8,8,'GV1',122,'TOAN1','TC1','TL1','HK1','NH01'),(227,3,3,3,3,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(228,1,1,1,1,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(229,3,3,3,3,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(230,1,1,1,1,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(231,3,3,3,3,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(232,1,1,1,1,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(233,3,3,3,3,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(234,1,1,1,1,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(235,5,5,5,5,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(236,6,6,6,6,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(237,5,5,5,5,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(238,6,6,6,6,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(239,5,5,5,5,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(240,6,6,6,6,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(241,5,5,5,5,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(242,6,6,6,6,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(243,5,5,5,5,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(244,6,6,6,6,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(245,5,5,5,5,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(246,6,6,6,6,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(247,5,5,5,5,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(248,6,6,6,6,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(249,5,5,5,5,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(250,6,6,6,6,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(251,7,7,7,7,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(252,8,8,8,8,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(253,7,7,7,7,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(254,8,8,8,8,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(255,9,9,9,9,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(256,8,8,8,8,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(257,9,9,9,9,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(258,8,8,8,8,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(259,9,9,9,9,'GV3',121,'NN1','TC1','TL5','HK1','NH01'),(260,8,8,8,8,'GV3',122,'NN1','TC1','TL5','HK1','NH01'),(261,9,9,9,9,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(262,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(263,9,9,9,9,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(264,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(265,9,9,9,9,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(266,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(267,9,9,9,9,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(268,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(269,9,9,9,9,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(270,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(271,9,9,9,9,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(272,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(273,7,7,7,7,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(274,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(275,7,7,7,7,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(276,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(277,7,7,7,7,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(278,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(279,7,7,7,7,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(280,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(281,7,7,7,7,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(282,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(283,7,7,7,7,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(284,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(285,7,7,7,7,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(286,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(287,7,7,7,7,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(288,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(289,7,7,7,7,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(290,8,8,8,8,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(291,4,4,4,4,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(292,6,6,6,6,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(293,4,4,4,4,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(294,6,6,6,6,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(295,4,4,4,4,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(296,6,6,6,6,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(297,5,5,5,5,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(298,6,6,6,6,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(299,5,5,5,5,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(300,6,6,6,6,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(301,5,5,5,5,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(302,6,6,6,6,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(303,5,5,5,5,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(304,6,6,6,6,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(305,5,5,5,5,'GV5',121,'NN2','TC1','TL5','HK2','NH03'),(306,6,6,6,6,'GV5',122,'NN2','TC1','TL5','HK2','NH03'),(307,3,3,3,3,'GV3',121,'NN2','TC1','TL5','HK1','NH01'),(308,6,6,6,6,'GV3',122,'NN2','TC1','TL5','HK1','NH01'),(309,3,3,3,3,'GV3',121,'NN2','TC1','TL5','HK1','NH01'),(310,6,6,6,6,'GV3',122,'NN2','TC1','TL5','HK1','NH01'),(311,3,3,3,3,'GV3',121,'NN2','TC1','TL5','HK1','NH01'),(312,6,6,6,6,'GV3',122,'NN2','TC1','TL5','HK1','NH01'),(313,3,3,3,3,'GV3',121,'NN2','TC1','TL5','HK1','NH01'),(314,6,6,6,6,'GV3',122,'NN2','TC1','TL5','HK1','NH01'),(315,3,3,3,3,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(316,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(317,7,7,7,7,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(318,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(319,7,7,7,7,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(320,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(321,7,7,7,7,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(322,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(323,7,7,7,7,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(324,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(325,7,7,7,7,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(326,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(327,7,7,7,7,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(328,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(329,7,7,7,7,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(330,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(331,9,9,9,9,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(332,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(333,9,9,9,9,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(334,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(335,9,9,9,9,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(336,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(337,5,5,5,5,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(338,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(339,5,5,5,5,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(340,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(341,5,5,5,5,'GV4',121,'XH1','TC2','TL2','HK1','NH01'),(342,6,6,6,6,'GV4',122,'XH1','TC2','TL2','HK1','NH01'),(343,5,5,5,5,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(344,4,4,4,4,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(345,5,5,5,5,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(346,4,4,4,4,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(347,5,5,5,5,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(348,4,4,4,4,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(349,5,5,5,5,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(350,4,4,4,4,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(351,7,7,7,7,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(352,8,8,8,8,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(353,7,7,7,7,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(354,8,8,8,8,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(355,7,7,7,7,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(356,8,8,8,8,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(357,6,6,6,6,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(358,5,5,5,5,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(359,6,6,6,6,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(360,5,5,5,5,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(361,6,6,6,6,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(362,5,5,5,5,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(363,6,6,6,6,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(364,5,5,5,5,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(365,2,2,2,2,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(366,9,9,9,9,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(367,2,2,2,2,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(368,9,9,9,9,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(369,2,2,2,2,'GV2',121,'XH2','TC2','TL2','HK1','NH01'),(370,9,9,9,9,'GV2',122,'XH2','TC2','TL2','HK1','NH01'),(371,6,6,6,6,'GV4',121,'XH3','TC2','TL2','HK1','NH01'),(372,7,7,7,7,'GV4',122,'XH3','TC2','TL2','HK1','NH01'),(373,6,6,6,6,'GV4',121,'XH3','TC2','TL2','HK1','NH01'),(374,7,7,7,7,'GV4',122,'XH3','TC2','TL2','HK1','NH01'),(375,6,6,6,6,'GV4',121,'XH3','TC2','TL2','HK1','NH01'),(376,7,7,7,7,'GV4',122,'XH3','TC2','TL2','HK1','NH01'),(377,6,6,6,6,'GV4',121,'XH3','TC2','TL2','HK1','NH01'),(378,7,7,7,7,'GV4',122,'XH3','TC2','TL2','HK1','NH01'),(379,6,6,6,6,'GV4',121,'XH3','TC2','TL2','HK1','NH01'),(380,7,7,7,7,'GV4',122,'XH3','TC2','TL2','HK1','NH01'),(381,8,8,8,8,'GV4',121,'XH3','TC2','TL2','HK1','NH01'),(382,8,8,8,8,'GV4',122,'XH3','TC2','TL2','HK1','NH01'),(383,8,8,8,8,'GV4',121,'XH3','TC2','TL2','HK1','NH01'),(384,8,8,8,8,'GV4',122,'XH3','TC2','TL2','HK1','NH01'),(385,8,8,8,8,'GV4',121,'XH3','TC2','TL2','HK1','NH01'),(386,8,8,8,8,'GV4',122,'XH3','TC2','TL2','HK1','NH01'),(387,8,8,8,8,'GV4',121,'XH3','TC2','TL2','HK1','NH01'),(388,8,8,8,8,'GV4',122,'XH3','TC2','TL2','HK1','NH01'),(389,5,5,5,5,'GV4',121,'XH3','TC2','TL2','HK1','NH01'),(390,4,4,4,4,'GV4',122,'XH3','TC2','TL2','HK1','NH01'),(391,5,5,5,5,'GV4',121,'XH3','TC2','TL2','HK1','NH01'),(392,4,4,4,4,'GV4',122,'XH3','TC2','TL2','HK1','NH01'),(393,5,5,5,5,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(394,4,4,4,4,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(395,5,5,5,5,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(396,4,4,4,4,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(397,5,5,5,5,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(398,4,4,4,4,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(399,5,5,5,5,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(400,4,4,4,4,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(401,5,5,5,5,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(402,4,4,4,4,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(403,5,5,5,5,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(404,4,4,4,4,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(405,5,5,5,5,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(406,4,4,4,4,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(407,3,3,3,3,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(408,6,6,6,6,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(409,3,3,3,3,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(410,6,6,6,6,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(411,3,3,3,3,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(412,6,6,6,6,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(413,3,3,3,3,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(414,6,6,6,6,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(415,3,3,3,3,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(416,6,6,6,6,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(417,3,3,3,3,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(418,6,6,6,6,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(419,9,9,9,9,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(420,7,7,7,7,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(421,9,9,9,9,'GV1',121,'CN1','TC3','TL3','HK1','NH01'),(422,7,7,7,7,'GV1',122,'CN1','TC3','TL3','HK1','NH01'),(423,9,9,9,9,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(424,7,7,7,7,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(425,9,9,9,9,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(426,7,7,7,7,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(427,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(428,2,2,2,2,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(429,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(430,2,2,2,2,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(431,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(432,2,2,2,2,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(433,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(434,2,2,2,2,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(435,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(436,2,2,2,2,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(437,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(438,2,2,2,2,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(439,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(440,2,2,2,2,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(441,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(442,2,2,2,2,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(443,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(444,2,2,2,2,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(445,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(446,2,2,2,2,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(447,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(448,7,7,7,7,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(449,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(450,7,7,7,7,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(451,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(452,7,7,7,7,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(453,5,5,5,5,'GV1',121,'CN2','TC1','TL1','HK1','NH01'),(454,7,7,7,7,'GV1',122,'CN2','TC1','TL1','HK1','NH01'),(455,5,5,5,5,'GV1',121,'CN2','TC3','TL3','HK1','NH01'),(456,6,6,6,6,'GV1',122,'CN2','TC3','TL3','HK1','NH01'),(457,5,5,5,5,'GV1',121,'CN2','TC3','TL3','HK1','NH01'),(458,6,6,6,6,'GV1',122,'CN2','TC3','TL3','HK1','NH01'),(459,9,9,9,9,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(460,8,8,8,8,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(461,9,9,9,9,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(462,8,8,8,8,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(463,9,9,9,9,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(464,8,8,8,8,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(465,9,9,9,9,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(466,8,8,8,8,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(467,9,9,9,9,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(468,8,8,8,8,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(469,9,9,9,9,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(470,8,8,8,8,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(471,9,9,9,9,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(472,8,8,8,8,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(473,9,9,9,9,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(474,8,8,8,8,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(475,6,6,6,6,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(476,8,8,8,8,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(477,6,6,6,6,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(478,8,8,8,8,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(479,2,2,2,2,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(480,5,5,5,5,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(481,2,2,2,2,'GV5',121,'KT1','TC3','TL4','HK1','NH01'),(482,5,5,5,5,'GV5',122,'KT1','TC3','TL4','HK1','NH01'),(483,2,2,2,2,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(484,5,5,5,5,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(485,2,2,2,2,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(486,5,5,5,5,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(487,2,2,2,2,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(488,5,5,5,5,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(489,2,2,2,2,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(490,5,5,5,5,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(491,2,2,2,2,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(492,5,5,5,5,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(493,2,2,2,2,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(494,5,5,5,5,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(495,6,6,6,6,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(496,7,7,7,7,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(497,6,6,6,6,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(498,7,7,7,7,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(499,6,6,6,6,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(500,7,7,7,7,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(501,6,6,6,6,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(502,7,7,7,7,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(503,6,6,6,6,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(504,7,7,7,7,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(505,6,6,6,6,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(506,7,7,7,7,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(507,6,6,6,6,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(508,7,7,7,7,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(509,6,6,6,6,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(510,7,7,7,7,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(511,9,9,9,9,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(512,8,8,8,8,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(513,9,9,9,9,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(514,8,8,8,8,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(515,9,9,9,9,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(516,8,8,8,8,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(517,9,9,9,9,'GV5',121,'KT2','TC3','TL4','HK1','NH01'),(518,8,8,8,8,'GV5',122,'KT2','TC3','TL4','HK1','NH01'),(519,9,9,9,9,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(520,8,8,8,8,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(521,9,9,9,9,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(522,8,8,8,8,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(523,9,9,9,9,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(524,8,8,8,8,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(525,9,9,9,9,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(526,8,8,8,8,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(527,9,9,9,9,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(528,8,8,8,8,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(529,9,9,9,9,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(530,8,8,8,8,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(531,9,9,9,9,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(532,8,8,8,8,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(533,9,9,9,9,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(534,8,8,8,8,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(535,9,9,9,9,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(536,8,8,8,8,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(537,2,2,2,2,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(538,4,4,4,4,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(539,2,2,2,2,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(540,4,4,4,4,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(541,2,2,2,2,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(542,4,4,4,4,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(543,2,2,2,2,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(544,4,4,4,4,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(545,2,2,2,2,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(546,4,4,4,4,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(547,6,6,6,6,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(548,4,4,4,4,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(549,6,6,6,6,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(550,4,4,4,4,'GV3',122,'KT3','TC4','TL4','HK1','NH01'),(551,6,6,6,6,'GV3',121,'KT3','TC4','TL4','HK1','NH01'),(552,4,4,4,4,'GV3',122,'KT3','TC4','TL4','HK1','NH01');
/*!40000 ALTER TABLE `diem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giangvien`
--

DROP TABLE IF EXISTS `giangvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giangvien` (
  `maGV` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tenGV` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `diaChi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sdt` int NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`maGV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giangvien`
--

LOCK TABLES `giangvien` WRITE;
/*!40000 ALTER TABLE `giangvien` DISABLE KEYS */;
INSERT INTO `giangvien` VALUES ('GV1','Nguyễn Văn Hùng','Hà Nội',123456,'hung@gmail'),('GV2','Nguyễn Văn Nam','Đà Nẵng',456789,'nam@gmail'),('GV3','Tô Thị Linh','TP.Hồ Chí Minh',789456,'linh@gmail'),('GV4','Hoàng Văn Chu','Hải Phòng',666666,'chu@gmail'),('GV5','Đỗ Thị Ngọc','Hà Nội',111111,'ngoc@gmail');
/*!40000 ALTER TABLE `giangvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocky`
--

DROP TABLE IF EXISTS `hocky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hocky` (
  `maHK` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tenHK` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`maHK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocky`
--

LOCK TABLES `hocky` WRITE;
/*!40000 ALTER TABLE `hocky` DISABLE KEYS */;
INSERT INTO `hocky` VALUES ('HK1','Học kỳ 1'),('HK2','Học kỳ 2'),('HK3','Học kỳ 3');
/*!40000 ALTER TABLE `hocky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoa`
--

DROP TABLE IF EXISTS `khoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khoa` (
  `maKH` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tenKH` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `lienheKH` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`maKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoa`
--

LOCK TABLES `khoa` WRITE;
/*!40000 ALTER TABLE `khoa` DISABLE KEYS */;
INSERT INTO `khoa` VALUES ('ATTT','An toàn thông tin','attt@gmail.com'),('CNTT','Công Nghệ Thông Tin','cntt@gmail.com'),('DPT','Đa phương tiện','dpt@gmail.com'),('DTVT','Điện tử viễn thông','dtvt@gmail.com'),('KT','Kế Toán','kt@gmail.com'),('MRK','Marketing','mar@gmail.com');
/*!40000 ALTER TABLE `khoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lop`
--

DROP TABLE IF EXISTS `lop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lop` (
  `maLop` int NOT NULL AUTO_INCREMENT,
  `tenLop` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `maKH` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`maLop`),
  KEY `maKH` (`maKH`),
  CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`maKH`) REFERENCES `khoa` (`maKH`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lop`
--

LOCK TABLES `lop` WRITE;
/*!40000 ALTER TABLE `lop` DISABLE KEYS */;
INSERT INTO `lop` VALUES (11,'D19CN1','CNTT'),(12,'D19CN2','CNTT'),(21,'D20MR1','MRK'),(22,'D20MR2','MRK'),(31,'D21KT1','KT'),(32,'D21KT2','KT'),(41,'D18AT1','ATTT'),(42,'D18AT2','ATTT'),(51,'D19DTVT1','DTVT'),(52,'D19DTVT2','DTVT'),(61,'D20DPT1','DPT'),(62,'D20DPT2','DPT');
/*!40000 ALTER TABLE `lop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monhoc`
--

DROP TABLE IF EXISTS `monhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monhoc` (
  `maMH` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tenMH` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `maTC` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `maTL` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`maMH`),
  KEY `maTC` (`maTC`),
  KEY `maTL` (`maTL`),
  CONSTRAINT `monhoc_ibfk_1` FOREIGN KEY (`maTC`) REFERENCES `tinchi` (`maTC`),
  CONSTRAINT `monhoc_ibfk_2` FOREIGN KEY (`maTL`) REFERENCES `theloai` (`maTL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monhoc`
--

LOCK TABLES `monhoc` WRITE;
/*!40000 ALTER TABLE `monhoc` DISABLE KEYS */;
INSERT INTO `monhoc` VALUES ('CN1','Lập trình hướng đối tượng','TC3','TL3'),('CN2','Cấu trúc dữ liệu và giải thuật','TC2','TL3'),('CN3','Lập trình web','TC3','TL3'),('KT1','Kinh tế lượng','TC2','TL4'),('KT2','Kinh tế vĩ mô','TC2','TL4'),('KT3','Nguyên lý thống kê','TC2','TL4'),('NN1','Tiếng anh','TC2','TL5'),('NN2','Tiếng Trung','TC1','TL5'),('TOAN1','Giải tích','TC2','TL1'),('TOAN2','Đại số','TC2','TL1'),('TOAN3','Toán cao cấp','TC2','TL1'),('XH1','Triết học','TC1','TL2'),('XH2','Chủ nghĩa Mác-Lênin','TC1','TL2'),('XH3','Tư tưởng HCM','TC1','TL2');
/*!40000 ALTER TABLE `monhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monhoc_giaovien`
--

DROP TABLE IF EXISTS `monhoc_giaovien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monhoc_giaovien` (
  `maMH` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `maGV` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`maMH`,`maGV`),
  KEY `maGV` (`maGV`),
  CONSTRAINT `monhoc_giaovien_ibfk_1` FOREIGN KEY (`maGV`) REFERENCES `giangvien` (`maGV`),
  CONSTRAINT `monhoc_giaovien_ibfk_2` FOREIGN KEY (`maMH`) REFERENCES `monhoc` (`maMH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monhoc_giaovien`
--

LOCK TABLES `monhoc_giaovien` WRITE;
/*!40000 ALTER TABLE `monhoc_giaovien` DISABLE KEYS */;
/*!40000 ALTER TABLE `monhoc_giaovien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `namhoc`
--

DROP TABLE IF EXISTS `namhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `namhoc` (
  `maNH` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tenNH` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`maNH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `namhoc`
--

LOCK TABLES `namhoc` WRITE;
/*!40000 ALTER TABLE `namhoc` DISABLE KEYS */;
INSERT INTO `namhoc` VALUES ('NH01','2020-2021'),('NH02','2021-2022'),('NH03','2023-2024');
/*!40000 ALTER TABLE `namhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nienkhoa`
--

DROP TABLE IF EXISTS `nienkhoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nienkhoa` (
  `maNK` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tenNK` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`maNK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nienkhoa`
--

LOCK TABLES `nienkhoa` WRITE;
/*!40000 ALTER TABLE `nienkhoa` DISABLE KEYS */;
INSERT INTO `nienkhoa` VALUES ('NKCD02','2019-2024'),('NKDH01','2020-2025'),('NKDH02','2021-2026');
/*!40000 ALTER TABLE `nienkhoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'Sinh Viên'),(3,'Giáo Viên');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinhvien` (
  `maSV` int NOT NULL,
  `tenSV` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `diaChi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `sdt` int NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `maLop` int NOT NULL,
  PRIMARY KEY (`maSV`),
  KEY `maLop` (`maLop`),
  CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`maLop`) REFERENCES `lop` (`maLop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinhvien`
--

LOCK TABLES `sinhvien` WRITE;
/*!40000 ALTER TABLE `sinhvien` DISABLE KEYS */;
INSERT INTO `sinhvien` VALUES (111,'Nguyễn Trung Kiên','Hà Nội',123456,'kien@gmail.com',11),(112,'Vũ Anh Khoa','Hà Nội',111111,'khoa@gmail.com',12),(113,'Đỗ Văn Hùng','Hà Nội',222222,'hung@gmail.com',11),(121,'Nguyễn Văn A','Hải Phòng',23442343,'an',41),(122,'Lê Thị B','Đà Nẵng',43244444,'bthi@gmail.com',42),(123,'Hoàng Văn C','Thái Bình',5555555,'vanc@gmail.com',31),(131,'Trần Linh Chi','Nam Định',6666666,'linhchi@gmail.com',32),(133,'Lê Văn Nam','Vĩnh Phúc',23334444,'nam@gmail',41);
/*!40000 ALTER TABLE `sinhvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `role` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES (1,'admin','123','admin@gmail.com',1),(2,'phophong','123','phophong@gmail.com',1),(3,'kien','123','kien@gmail.com',1);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theloai`
--

DROP TABLE IF EXISTS `theloai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theloai` (
  `maTL` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tenTL` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`maTL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theloai`
--

LOCK TABLES `theloai` WRITE;
/*!40000 ALTER TABLE `theloai` DISABLE KEYS */;
INSERT INTO `theloai` VALUES ('TL1','Khoa học'),('TL2','Xã hội học'),('TL3','Công nghệ'),('TL4','Kinh tế'),('TL5','Ngôn ngữ');
/*!40000 ALTER TABLE `theloai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tinchi`
--

DROP TABLE IF EXISTS `tinchi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tinchi` (
  `maTC` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `soTC` int NOT NULL,
  PRIMARY KEY (`maTC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tinchi`
--

LOCK TABLES `tinchi` WRITE;
/*!40000 ALTER TABLE `tinchi` DISABLE KEYS */;
INSERT INTO `tinchi` VALUES ('TC1',1),('TC2',2),('TC3',3),('TC4',4);
/*!40000 ALTER TABLE `tinchi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-07 16:19:33
