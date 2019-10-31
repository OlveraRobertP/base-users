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
-- Table structure for table `seg_modulos`
--

DROP TABLE IF EXISTS `seg_modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `seg_modulos` (
  `CVE_MODULO` varchar(6) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `F_ALTA` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `F_MODIF` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CVE_USUARIO_ALTA` varchar(15) NOT NULL,
  `CVE_USUARIO_MODIF` varchar(15) NOT NULL,
  `ETIQUETA` varchar(45) DEFAULT NULL,
  `ICONO` varchar(15) DEFAULT NULL,
  `ORDEN` int(11) DEFAULT NULL,
  PRIMARY KEY (`CVE_MODULO`),
  KEY `fk_modulos_usuarios_idx` (`CVE_USUARIO_ALTA`),
  KEY `fk_mod_usu_modif_idx` (`CVE_USUARIO_MODIF`),
  CONSTRAINT `fk_mod_usu_modif` FOREIGN KEY (`CVE_USUARIO_MODIF`) REFERENCES `seg_usuarios` (`CVE_USUARIO`),
  CONSTRAINT `fk_modulos_usuarios` FOREIGN KEY (`CVE_USUARIO_ALTA`) REFERENCES `seg_usuarios` (`CVE_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seg_modulos`
--

LOCK TABLES `seg_modulos` WRITE;
/*!40000 ALTER TABLE `seg_modulos` DISABLE KEYS */;
INSERT INTO `seg_modulos` VALUES ('ADM','ADMINISTRATIVO','2019-05-23 19:19:38','2019-05-23 19:19:38','ADMIN','ADMIN','menu.adm.name','menu.adm.icon',10),('ALM','ALMACEN','2019-05-23 19:24:03','2019-05-23 19:24:03','ADMIN','ADMIN','menu.alm.name','menu.alm.icon',30),('INI','INICIO','2019-06-14 17:35:09','2019-06-14 17:35:09','ADMIN','ADMIN','menu.ini.name','menu.ini.icon',1),('LOG','LOGISTICA','2019-05-23 19:24:03','2019-05-23 19:24:03','ADMIN','ADMIN','menu.log.name','menu.log.icon',40),('OPE','OPERATIVO','2019-05-23 19:19:55','2019-05-23 19:19:55','ADMIN','ADMIN','menu.ope.name','menu.ope.icon',20),('SEG','USUARIOS','2019-05-23 20:00:20','2019-05-23 20:00:20','ADMIN','ADMIN','menu.seg.name','menu.seg.icon',5),('VEN','VENTAS','2019-05-23 19:24:03','2019-05-23 19:24:03','ADMIN','ADMIN','menu.ven.name','menu.ven.icon',60);
/*!40000 ALTER TABLE `seg_modulos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-03 11:58:44
