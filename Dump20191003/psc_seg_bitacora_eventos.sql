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
-- Table structure for table `seg_bitacora_eventos`
--

DROP TABLE IF EXISTS `seg_bitacora_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seg_bitacora_eventos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLAVE` varchar(20) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seg_bitacora_eventos`
--

LOCK TABLES `seg_bitacora_eventos` WRITE;
/*!40000 ALTER TABLE `seg_bitacora_eventos` DISABLE KEYS */;
-- INSERT INTO `seg_bitacora_eventos` VALUES (1,'ADD_USR','ADICION DE UN NUEVO USUARIO'),(2,'MOD_USR','MODIFICACION DE UN USUARIO'),(3,'DEL_USR','BORRADO DE UN USUARIO'),(4,'LOGIN_SYS','INICIO DE SESION AL SISTEMA'),(5,'LOGOUT_SYS','FIN DE LA SESION'),(6,'CON_EDO_RES','CONSULTA DE ESTADO DE RESULTADOS EN PANTALLA'),(7,'CON_PDF_EDO_RES','CONSULTA DE ESTADO DE RESULTADOS EN PDF'),(8,'CON_XLS_EDO_RES','CONSULTA DE ESTADO DE RESULTADOS EN EXCEL'),(9,'ADD_PARAM','ADICION DE UN NUEVO PARAMETRO DE SISTEMA'),(10,'MOD_PARAM','MODIFICACION DE UN PARAMETRO DE SISTEMA'),(11,'DEL_PARAM','ELIMINACION DE UN PARAMETRO DE SISTEMA'),(13,'CON_BAL_GRL','CONSULTA DE BALANCE GENERAL EN PANTALLA'),(14,'CON_PDF_BAL_GRL','CONSULTA DE BALANCE GENERAL EN PDF'),(15,'CON_XLS_BAL_GRL','CONSULTA DE BALANCE GENERAL EN EXCEL'),(17,'CON_RZN_FIN','CONSULTA DE BALANCE GENERAL EN PANTALLA'),(18,'CON_PDF_RZN_FIN','CONSULTA DE EBALANCE GENERAL EN PDF'),(19,'CON_XLS_RZN_FIN','CONSULTA DE BALANCE GENERAL EN EXCEL'),(20,'ADD_RZN_FIN','ADICION DE UNA RAZON FINANCIERA'),(21,'MOD_RZN_FIN','MODIFICACION DE UNA RAZON FINANCIERA'),(22,'DEL_RZN_FIN','BORRADO DE UNA RAZON FINANCIERA'),(23,'CON_FACTU','CONSULTA DE FACTURACION EN PANTALLA'),(24,'CON_PDF_FACTU','CONSULTA DE FACTURACION EN PDF'),(25,'CON_XLS_FACTU','CONSULTA DE FACTURACION EN EXCEL'),(26,'CON_COBRAN','CONSULTA DE COBRANZA EN PANTALLA'),(27,'CON_PDF_COBRAN','CONSULTA DE COBRANZA EN PDF'),(28,'CON_XLS_COBRAN','CONSULTA DE COBRANZA EN EXCEL'),(30,'ADD_PRESU','ADICION DE UN NUEVO PRESUPUESTO'),(31,'MOD_PRESU','MODIFICACION DE UN PRESUPUESTO'),(32,'ADD_CON_PRES','ADICION DE UN NUEVO CONCEPTO DE PRESUPUESTO'),(33,'MOD_CON_PRES','MODIFICACION DE UN CONCEPTO DE PRESUPUESTO'),(34,'DEL_CON_PRES','BORRADO DE UN USUARIO'),(35,'ADD_PARTIDA','ADICION DE PARTIDA'),(36,'MOD_PARTIDA','MODIFICACION DE PARTIDA'),(37,'DEL_PARTIDA','BORRADO DE PARTIDA'),(38,'ADD_AVANCE','ADICION DE AVANCE'),(39,'MOD_AVANCE','MODIFICACION DE AVANCE'),(40,'CON_PRESPUESTO','CONSULTA DE PRESUPUESTO'),(41,'RESET_PASS_USR','RESETEO DEL PASSWORD DE UN USUARIO'),(42,'RESET_PASS_USR_ENVIO','ENVIO RESETEO DEL PASSWORD DE UN USUARIO');
/*!40000 ALTER TABLE `seg_bitacora_eventos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-03 11:58:45
