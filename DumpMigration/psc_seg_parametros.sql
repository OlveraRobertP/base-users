CREATE DATABASE  IF NOT EXISTS `base-sys` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
-- Table structure for table `seg_parametros`
--

DROP TABLE IF EXISTS `seg_parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `seg_parametros` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLAVE` varchar(45) NOT NULL,
  `DESCRIPCION` varchar(200) DEFAULT NULL,
  `VALOR` varchar(200) NOT NULL,
  `F_ALTA` datetime NOT NULL,
  `CVE_USUARIO_ALTA` varchar(15) NOT NULL,
  `F_MODIF` datetime DEFAULT NULL,
  `CVE_USUARIO_MODIF` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seg_parametros`
--

LOCK TABLES `seg_parametros` WRITE;
/*!40000 ALTER TABLE `seg_parametros` DISABLE KEYS */;
INSERT INTO `seg_parametros` VALUES (1,'REP_LEGAL','Titulo y Nombre del representante legal de la empresa. Es utilizado para los reportes financieros.','Ing. Santiago Rubio Huizar','2019-05-23 19:19:38','ADMIN','2019-05-23 19:19:38','ADMIN'),(2,'CONTADOR','Titulo y Nombre del contador de la empresa. Es utilizado para los reportes financieros. Prueba','CP. J. Agustín López Garrido','2019-05-23 19:19:38','ADMIN','2019-10-02 16:32:18','SRUBIO'),(3,'HOST','Direccion del host del sistema','192.168.16.15','2019-05-23 19:19:38','ADMIN','2019-05-23 19:19:38','ADMIN'),(4,'MAIL_HOST','Direccion del host del servidor de correo','192.168.16.15','2019-05-23 19:19:38','ADMIN','2019-05-23 19:19:38','ADMIN'),(5,'MAIN_URL','Direccion URL de inicio del sistema','http://localhost:8080/webapp/','2019-05-23 19:19:38','ADMIN','2019-05-23 19:19:38','ADMIN'),(6,'MAIL_MAIN_FROM','Direccion de correo electronico principal','pruebas@pscmexico.mx','2019-05-23 19:19:38','ADMIN','2019-05-23 19:19:38','ADMIN'),(7,'SYSTEM_NAME','Nombre del sistema','SA-PSC','2019-05-23 19:19:38','ADMIN','2019-05-23 19:19:38','ADMIN');
/*!40000 ALTER TABLE `seg_parametros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-03 11:58:43
