CREATE DATABASE  IF NOT EXISTS `base-sys` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `base-sys`;
-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: psc
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `seg_roles_funciones`
--

DROP TABLE IF EXISTS `seg_roles_funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seg_roles_funciones` (
  `CVE_FUNCION` varchar(6) NOT NULL,
  `CVE_ROL` varchar(15) NOT NULL,
  KEY `fk_table1_FUNCIONES1_idx` (`CVE_FUNCION`),
  KEY `fk_table1_ROLES1_idx` (`CVE_ROL`),
  CONSTRAINT `fk_RF_FUNCIONES` FOREIGN KEY (`CVE_FUNCION`) REFERENCES `seg_funciones` (`CVE_FUNCION`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_RF_ROLES` FOREIGN KEY (`CVE_ROL`) REFERENCES `seg_roles` (`CVE_ROL`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seg_roles_funciones`
--

LOCK TABLES `seg_roles_funciones` WRITE;
/*!40000 ALTER TABLE `seg_roles_funciones` DISABLE KEYS */;
-- INSERT INTO `seg_roles_funciones` VALUES ('A_1_1','02-DA'),('A_1_2','02-DA'),('A_1_3','02-DA'),('A_2_1','02-DA'),('A_2_2','02-DA'),('A_3_1','02-DA'),('A_4_1','02-DA'),('A_4_2','02-DA'),('A_4_3','02-DA'),('A_4_4','02-DA'),('A_1_4','02-DA'),('O_1_1','02-DA'),('S_1','02-DA'),('S_2','02-DA'),('S_3','02-DA'),('S_4','02-DA'),('S_5','02-DA'),('A_1_4','03-DO'),('O_1_1','03-DO'),('S_2','00-SEG'),('S_1','00-SEG'),('S_4','00-SEG'),('S_3','00-SEG'),('S_5','00-SEG'),('S_1','04-SUP'),('O_1_1','04-SUP'),('A_2_2','04-SUP'),('A_1_2','04-SUP'),('A_1_1','04-SUP'),('S_2','01-DG'),('S_1','01-DG'),('S_5','01-DG'),('S_8','01-DG'),('S_7','01-DG'),('O_1_3','01-DG'),('A_4_4','01-DG'),('A_4_3','01-DG'),('O_1_2','01-DG'),('A_4_2','01-DG'),('O_1_1','01-DG'),('A_4_1','01-DG'),('A_1_4','01-DG'),('A_1_3','01-DG'),('A_2_2','01-DG'),('A_3_1','01-DG'),('A_1_2','01-DG'),('A_2_1','01-DG'),('A_1_1','01-DG');
/*!40000 ALTER TABLE `seg_roles_funciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-03 11:58:47
