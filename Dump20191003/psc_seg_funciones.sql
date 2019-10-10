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
-- Table structure for table `seg_funciones`
--

DROP TABLE IF EXISTS `seg_funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seg_funciones` (
  `CVE_MODULO` varchar(6) NOT NULL,
  `CVE_FUNCION` varchar(6) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL,
  `F_ALTA` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `F_MODIF` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CVE_USUARIO_ALTA` varchar(15) NOT NULL,
  `CVE_USUARIO_MODIF` varchar(15) NOT NULL,
  `ETIQUETA` varchar(45) DEFAULT NULL,
  `ICONO` varchar(15) DEFAULT NULL,
  `ORDEN` int(11) DEFAULT NULL,
  `URL` varchar(100) DEFAULT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CVE_FUNCION`),
  KEY `fk_table1_MODULOS1_idx` (`CVE_MODULO`),
  KEY `fk_funciones_usuarios_idx` (`CVE_USUARIO_ALTA`),
  KEY `fk_func_usu_mod_idx` (`CVE_USUARIO_MODIF`),
  CONSTRAINT `fk_func_usu_mod` FOREIGN KEY (`CVE_USUARIO_MODIF`) REFERENCES `seg_usuarios` (`CVE_USUARIO`),
  CONSTRAINT `fk_funciones_usuarios` FOREIGN KEY (`CVE_USUARIO_ALTA`) REFERENCES `seg_usuarios` (`CVE_USUARIO`),
  CONSTRAINT `fk_table1_MODULOS1` FOREIGN KEY (`CVE_MODULO`) REFERENCES `seg_modulos` (`CVE_MODULO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seg_funciones`
--

LOCK TABLES `seg_funciones` WRITE;
/*!40000 ALTER TABLE `seg_funciones` DISABLE KEYS */;
-- INSERT INTO `seg_funciones` VALUES ('ADM','A_1_1','ESTADO DE RESULTADOS','2019-05-23 19:40:09','2019-05-23 19:40:09','ADMIN','ADMIN','func.A_1_1.name','func.A_1_1.icon',10,'/admon/estadoResultados',NULL),('ADM','A_1_2','BALANCE GENERAL','2019-05-23 19:40:43','2019-05-23 19:40:43','ADMIN','ADMIN','func.A_1_2.name','func.A_1_2.icon',20,'/admon/balanceGeneral',NULL),('ADM','A_1_3','RAZONES FINANCIERAS','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.A_1_3.name','func.A_1_3.icon',30,'/admon/razonesFinancieras',NULL),('OPE','A_1_4','CONCENTRADO OBRAS EJECUTADAS','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.A_2_1.name','func.A_1_4.icon',40,'',NULL),('ADM','A_2_1','REPORTE DE FACTURACION','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.A_2_1.name','func.A_2_1.icon',60,'/admon/facturacion',NULL),('ADM','A_2_2','REPORTE DE CUENTAS POR COBRAR','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.A_2_2.name','func.A_2_2.icon',70,'/admon/cobranza',NULL),('ADM','A_3_1','REPORTE DE CUENTAS POR PAGAR','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.A_3_1.name','func.A_3_1.icon',80,NULL,NULL),('ADM','A_4_1','REPORTE DE NOMINAS PAGADAS','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.A_4_1.name','func.A_4_1.icon',90,NULL,NULL),('ADM','A_4_2','REPORTE DE CAPACITACION','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.A_4_2.name','func.A_4_2.icon',100,NULL,NULL),('ADM','A_4_3','REPORTE DE ROTACION','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.A_4_3.name','func.A_4_3.icon',110,NULL,NULL),('ADM','A_4_4','REPORTE DE RECLUTAMIENTO','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.A_4_4.name','func.A_4_4.icon',120,NULL,NULL),('OPE','O_1_1','CAPTURA DE PRESUPUESTO DE OBRA','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.O_1_1.name','func.O_1_1.icon',130,'/opera/presupuesto',NULL),('OPE','O_1_2','CONCEPTOS DE PRESUPUESTOS','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.O_1_2.name','func.O_1_2.icon',140,'/opera/conceptos',NULL),('OPE','O_1_3','AVANCE OBRA EJECUTADA','2019-05-23 19:55:58','2019-05-23 19:55:58','ADMIN','ADMIN','func.O_1_3.name','func.O_1_3.icon',135,'/opera/avances',NULL),('SEG','S_1','USUARIOS','2019-05-23 20:04:07','2019-05-23 20:04:07','ADMIN','ADMIN','func.S_1.name','func.S_1.icon',140,'/security/usuarios',NULL),('SEG','S_2','ROLES','2019-05-23 20:04:07','2019-05-23 20:04:07','ADMIN','ADMIN','func.S_2.name','func.S_2.icon',150,'/security/roles',NULL),('SEG','S_3','FUNCIONES','2019-05-23 20:04:07','2019-05-23 20:04:07','ADMIN','ADMIN','func.S_3.name','func.S_3.icon',160,'/security/funciones',NULL),('SEG','S_4','MODULOS','2019-05-23 20:04:07','2019-05-23 20:04:07','ADMIN','ADMIN','func.S_4.name','func.S_4.icon',170,'/security/modulos',NULL),('SEG','S_5','ASIGNA FUNCIONES A ROLES','2019-05-23 20:04:07','2019-05-23 20:04:07','ADMIN','ADMIN','func.S_5.name','func.S_5.icon',180,'/security/funcionRol',NULL),('SEG','S_7','PARAMETROS DEL SISTEMA','2019-05-23 20:04:07','2019-05-23 20:04:07','ADMIN','ADMIN','func.S_6.name','func.S_6.icon',190,'/security/parametros',NULL),('SEG','S_8','BITACORA','2019-05-23 20:04:07','2019-05-23 20:04:07','ADMIN','ADMIN','func.S_8.name','func.S_8.icon',200,'/security/bitacora',NULL);
/*!40000 ALTER TABLE `seg_funciones` ENABLE KEYS */;
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
