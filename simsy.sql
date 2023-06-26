-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: simsy
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `ID_Nombre_Actividad` int NOT NULL AUTO_INCREMENT,
  `Descripcion_Actividades` varchar(100) NOT NULL,
  `Tipo_Actividad` varchar(50) DEFAULT NULL,
  `Fecha_Actividades` date DEFAULT NULL,
  `Nota` float DEFAULT NULL,
  `Porcentaje_Actividad` int DEFAULT NULL,
  `fk_Actividades_Id_NombreArea` int DEFAULT NULL,
  `fk_Actividades_Id_Cargo` int DEFAULT NULL,
  PRIMARY KEY (`ID_Nombre_Actividad`),
  KEY `fk_Actividades_Id_NombreArea` (`fk_Actividades_Id_NombreArea`),
  KEY `fk_Actividades_Id_Cargo` (`fk_Actividades_Id_Cargo`),
  CONSTRAINT `fk_Actividades_Id_Cargo` FOREIGN KEY (`fk_Actividades_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_Actividades_Id_NombreArea` FOREIGN KEY (`fk_Actividades_Id_NombreArea`) REFERENCES `area` (`Id_Nombre_Area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acudiente`
--

DROP TABLE IF EXISTS `acudiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acudiente` (
  `Id_Acudiente` int NOT NULL AUTO_INCREMENT,
  `Cod_Parentesco` int DEFAULT NULL,
  `fk_acudiente_Id_personas` int DEFAULT NULL,
  PRIMARY KEY (`Id_Acudiente`),
  KEY `fk_acudiente_Id_personas` (`fk_acudiente_Id_personas`),
  KEY `Cod_Parentesco` (`Cod_Parentesco`),
  CONSTRAINT `Cod_Parentesco` FOREIGN KEY (`Cod_Parentesco`) REFERENCES `parentesco` (`Id_Parentesco`),
  CONSTRAINT `fk_acudiente_Id_personas` FOREIGN KEY (`fk_acudiente_Id_personas`) REFERENCES `personas` (`Id_Personas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acudiente`
--

LOCK TABLES `acudiente` WRITE;
/*!40000 ALTER TABLE `acudiente` DISABLE KEYS */;
/*!40000 ALTER TABLE `acudiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `Id_Nombre_Area` int NOT NULL AUTO_INCREMENT,
  `Nombre_area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Nombre_Area`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (11,'Matematicas y Geometria'),(12,'Español, Humanidades e Idiomas'),(13,'Ciencias Naturales y Educacion Ambiental'),(14,'Ciencias Sociales'),(15,'Artística'),(16,'Educación Fisica'),(17,'Emprendimiento'),(18,'Etica y Valores, Catedra de paz'),(19,'Educación Religiosa'),(20,'Proyecto de afrocolombianidad');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arl`
--

DROP TABLE IF EXISTS `arl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arl` (
  `Id_ARL` int NOT NULL AUTO_INCREMENT,
  `NombreARL` varchar(100) DEFAULT NULL,
  `CodARL` varchar(8) NOT NULL,
  PRIMARY KEY (`Id_ARL`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arl`
--

LOCK TABLES `arl` WRITE;
/*!40000 ALTER TABLE `arl` DISABLE KEYS */;
INSERT INTO `arl` VALUES (21,'Seguros de vida Alfa SA','14-17'),(22,'Liberty seguros de vida','14-18'),(23,'Positiva Compañia de seguros','14-23'),(24,'Riesgos profesionales colmena SA Compañia de seguros de vida','14-25'),(25,'ARP SURA','14-28'),(26,'La equidad seguros de vida Organismo Cooperativo la equidad vida','14-29'),(27,'MAPFRE Colombia vida seguros SA','14-30'),(28,'Seguros de vida Colpatria SA','14-4'),(29,'CIA de seguros Bolivar SA','14-7'),(30,'Compañia de seguros de vida Aurora','14-8');
/*!40000 ALTER TABLE `arl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignacion_estudiante`
--

DROP TABLE IF EXISTS `asignacion_estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignacion_estudiante` (
  `Id_Asignacion_Estudiante` int NOT NULL AUTO_INCREMENT,
  `fk_asignacion_Id_grado` int DEFAULT NULL,
  `fk_asignacion_Id_curso` int DEFAULT NULL,
  `fk_asignacion_Id_Personas` int DEFAULT NULL,
  PRIMARY KEY (`Id_Asignacion_Estudiante`),
  KEY `fk_asignacion_Id_grado` (`fk_asignacion_Id_grado`),
  KEY `fk_asignacion_Id_curso` (`fk_asignacion_Id_curso`),
  KEY `fk_asignacion_Id_Personas` (`fk_asignacion_Id_Personas`),
  CONSTRAINT `fk_asignacion_Id_curso` FOREIGN KEY (`fk_asignacion_Id_curso`) REFERENCES `curso` (`Id_Curso`),
  CONSTRAINT `fk_asignacion_Id_grado` FOREIGN KEY (`fk_asignacion_Id_grado`) REFERENCES `grado` (`Id_Grado`),
  CONSTRAINT `fk_asignacion_Id_Personas` FOREIGN KEY (`fk_asignacion_Id_Personas`) REFERENCES `personas` (`Id_Personas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacion_estudiante`
--

LOCK TABLES `asignacion_estudiante` WRITE;
/*!40000 ALTER TABLE `asignacion_estudiante` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignacion_estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `Id_Nombre_Asignatura` int NOT NULL AUTO_INCREMENT,
  `Nombre_Asignatura` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Nombre_Asignatura`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'Matematicas'),(2,'eometría'),(3,'Estadística'),(4,'Desarrollo Pensamiento'),(5,'Español'),(6,'Literatura'),(7,'Caligrafía'),(8,'Plan Lector'),(9,'Ortografía'),(10,'Ingles'),(11,'Frances'),(12,'Ciencias Naturales'),(13,'Fisica'),(14,'Quimica'),(15,'Ed. Sexual'),(16,'Historia'),(17,'Geografía'),(18,'Cívica'),(19,'Artes y Dibujo'),(20,'Teatro'),(21,'Danzas'),(22,'Educación Fisica'),(23,'Emprendimiento'),(24,'Etica y Valores'),(25,'Catedra de paz'),(26,'Eduación Religiosa'),(27,'Proyecto de afrocolombianidad');
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barrios`
--

DROP TABLE IF EXISTS `barrios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barrios` (
  `Id_Barrios` int NOT NULL AUTO_INCREMENT,
  `barrios` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Barrios`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barrios`
--

LOCK TABLES `barrios` WRITE;
/*!40000 ALTER TABLE `barrios` DISABLE KEYS */;
INSERT INTO `barrios` VALUES (21,'Molino1 sur'),(22,'Molinos 2 sur'),(23,'Bochica'),(24,'Marruecos'),(25,'El pincipe de bochica'),(26,'Diana Turbay'),(27,'Chircales'),(28,'San Agustin'),(29,'San Calletano'),(30,'Palermo Sur'),(31,'Antio Morales'),(32,'La Peninsula'),(33,'Callejon de Santa Barbara'),(34,'Providencia Alta'),(35,'Providencia Baja'),(36,'Portal de la ascienda'),(37,'Mirador de Morrocos'),(38,'Molino Verde'),(39,'San Nicolas'),(40,'Lomas');
/*!40000 ALTER TABLE `barrios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `Id_Cargo` int NOT NULL AUTO_INCREMENT,
  `perfiles` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Id_Cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (8,'Administrador'),(9,'Rector'),(10,'Coordinador'),(11,'Profesor'),(12,'Secretaria');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargoporusuario`
--

DROP TABLE IF EXISTS `cargoporusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargoporusuario` (
  `Id_cargoporusuario` int NOT NULL AUTO_INCREMENT,
  `Id_Contraseña` int NOT NULL,
  `Id_cargo` int NOT NULL,
  PRIMARY KEY (`Id_cargoporusuario`),
  KEY `fk_cargoporusuario_id_contraseña` (`Id_Contraseña`),
  KEY `fk_cargoporusuario_id_cargo` (`Id_cargo`),
  CONSTRAINT `fk_cargoporusuario_id_cargo` FOREIGN KEY (`Id_cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_cargoporusuario_id_contraseña` FOREIGN KEY (`Id_Contraseña`) REFERENCES `usuario` (`Id_Contraseña`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargoporusuario`
--

LOCK TABLES `cargoporusuario` WRITE;
/*!40000 ALTER TABLE `cargoporusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargoporusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `Id_Ciudad` int NOT NULL AUTO_INCREMENT,
  `Ciudad` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Bogotá'),(2,'Cali'),(3,'Manizales'),(4,'Bucaramanga'),(5,'Ibague'),(6,'Medellin'),(7,'Barranquilla');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `Id_Curso` int NOT NULL AUTO_INCREMENT,
  `Indicativo_Curso` varchar(2) NOT NULL,
  PRIMARY KEY (`Id_Curso`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E'),(6,'F'),(7,'G');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dato_clinico_estudiante`
--

DROP TABLE IF EXISTS `dato_clinico_estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dato_clinico_estudiante` (
  `Id_Dto_Clinico_Estudiante` int NOT NULL AUTO_INCREMENT,
  `Dificultades_Aprendizaje` varchar(60) DEFAULT NULL,
  `Discapacidad` varchar(60) DEFAULT NULL,
  `fk_DCestudiante_Id_personas` int DEFAULT NULL,
  PRIMARY KEY (`Id_Dto_Clinico_Estudiante`),
  KEY `fk_DCestudiante_Id_personas` (`fk_DCestudiante_Id_personas`),
  CONSTRAINT `fk_DCestudiante_Id_personas` FOREIGN KEY (`fk_DCestudiante_Id_personas`) REFERENCES `personas` (`Id_Personas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dato_clinico_estudiante`
--

LOCK TABLES `dato_clinico_estudiante` WRITE;
/*!40000 ALTER TABLE `dato_clinico_estudiante` DISABLE KEYS */;
/*!40000 ALTER TABLE `dato_clinico_estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_localizacion`
--

DROP TABLE IF EXISTS `datos_localizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_localizacion` (
  `Id_Dto_Localiza` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(30) NOT NULL,
  `Dirección` varchar(45) NOT NULL,
  `fk_Id_Barrios` int DEFAULT NULL,
  `fk_Id_Localidades` int DEFAULT NULL,
  `fk_Id_Ciudad` int DEFAULT NULL,
  `fk_Id_Persona` int DEFAULT NULL,
  `Telefono` bigint DEFAULT NULL,
  PRIMARY KEY (`Id_Dto_Localiza`),
  KEY `fk_Id_Barrios` (`fk_Id_Barrios`),
  KEY `fk_Id_Localidades` (`fk_Id_Localidades`),
  KEY `fk_Id_Ciudad` (`fk_Id_Ciudad`),
  KEY `fk_Id_Persona` (`fk_Id_Persona`),
  CONSTRAINT `fk_Id_Barrios` FOREIGN KEY (`fk_Id_Barrios`) REFERENCES `barrios` (`Id_Barrios`),
  CONSTRAINT `fk_Id_Ciudad` FOREIGN KEY (`fk_Id_Ciudad`) REFERENCES `ciudad` (`Id_Ciudad`),
  CONSTRAINT `fk_Id_Localidades` FOREIGN KEY (`fk_Id_Localidades`) REFERENCES `localidades` (`Id_Localidades`),
  CONSTRAINT `fk_Id_Persona` FOREIGN KEY (`fk_Id_Persona`) REFERENCES `personas` (`Id_Personas`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_localizacion`
--

LOCK TABLES `datos_localizacion` WRITE;
/*!40000 ALTER TABLE `datos_localizacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos_localizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devolucion`
--

DROP TABLE IF EXISTS `devolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devolucion` (
  `Id_Consecutivo_Devolucion` int NOT NULL AUTO_INCREMENT,
  `Valor_Devolucion` int NOT NULL,
  `Fecha_Registro` date NOT NULL,
  `fk_devolucion_Id_Estudiante` int DEFAULT NULL,
  `fk_devolucion_Id_Pago` int DEFAULT NULL,
  `fk_devolucion_Id_Cargo` int DEFAULT NULL,
  PRIMARY KEY (`Id_Consecutivo_Devolucion`),
  KEY `fk_devolucion_Id_Estudiante` (`fk_devolucion_Id_Estudiante`),
  KEY `fk_devolucion_Id_Pago` (`fk_devolucion_Id_Pago`),
  KEY `fk_devolucion_Id_Cargo` (`fk_devolucion_Id_Cargo`),
  CONSTRAINT `fk_devolucion_Id_Cargo` FOREIGN KEY (`fk_devolucion_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_devolucion_Id_Estudiante` FOREIGN KEY (`fk_devolucion_Id_Estudiante`) REFERENCES `estudiante` (`Id_Estudiante`),
  CONSTRAINT `fk_devolucion_Id_Pago` FOREIGN KEY (`fk_devolucion_Id_Pago`) REFERENCES `pagos` (`Id_Pagos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devolucion`
--

LOCK TABLES `devolucion` WRITE;
/*!40000 ALTER TABLE `devolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `devolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `Id_Empleados` int NOT NULL AUTO_INCREMENT,
  `fk_empleado_Id_personas` int DEFAULT NULL,
  `fk_empleado_Id_cargo` int DEFAULT NULL,
  PRIMARY KEY (`Id_Empleados`),
  KEY `fk_empleado_Id_personas` (`fk_empleado_Id_personas`),
  KEY `fk_empleado_Id_cargo` (`fk_empleado_Id_cargo`),
  CONSTRAINT `fk_empleado_Id_cargo` FOREIGN KEY (`fk_empleado_Id_cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_empleado_Id_personas` FOREIGN KEY (`fk_empleado_Id_personas`) REFERENCES `personas` (`Id_Personas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eps`
--

DROP TABLE IF EXISTS `eps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eps` (
  `Id_EPS` int NOT NULL AUTO_INCREMENT,
  `NombreEPS` varchar(70) DEFAULT NULL,
  `CodEPS` varchar(8) NOT NULL,
  PRIMARY KEY (`Id_EPS`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eps`
--

LOCK TABLES `eps` WRITE;
/*!40000 ALTER TABLE `eps` DISABLE KEYS */;
INSERT INTO `eps` VALUES (26,'Salud Colmena E.P.S. S.A.','EPS001'),(27,'Salud Total  S.A. E.P.S.','EPS002'),(28,'Cafesalud E.P.S. S.A.','EPS003'),(29,'BONSALUD En Liquidación','EPS004'),(30,'E.P.S. Sanitas S.A.','EPS005'),(31,'Instituto de Seguros Sociales EPS','EPS006'),(32,'Unimec E.P.S. S.A.','EPS007'),(33,'Compensar E.P.S.','EPS008'),(34,'EPS Progr. Comfenalco Antioquia','EPS009'),(35,'SuSalud EPS','EPS010'),(36,'Colseguros E.P.S.','EPS011'),(37,'Comfenalco Valle  E.P.S.','EPS012'),(38,'E.P.S. Saludcoop','EPS013'),(39,'Humana  Vivir  S.A.  E.P.S.','EPS014'),(40,'Salud Colpatria E.P.S.','EPS015'),(41,'Coomeva E.P.S.  S.A.','EPS016'),(42,'E.P.S. Famisanar LTDA.','EPS017'),(43,'EPS Servicio Occidental de Salud S.A. - EPS-S.O.S. S.A.','EPS018'),(44,'EPS Risaralda Ltda. En Liquidación','EPS019'),(45,'Caprecom EPS','EPS020'),(46,'Corporanonimas en Liquidación','EPS021'),(47,'EPS CONVIDA','EPS022'),(48,'CRUZ BLANCA  EPS S.A.','EPS023'),(49,'CAJANAL EPS','EPS024'),(50,'CAPRESOCA EPS','EPS025');
/*!40000 ALTER TABLE `eps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_pago`
--

DROP TABLE IF EXISTS `estado_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_pago` (
  `Id_Estado_Pago` int NOT NULL AUTO_INCREMENT,
  `Estado_Cartera` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Id_Estado_Pago`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_pago`
--

LOCK TABLES `estado_pago` WRITE;
/*!40000 ALTER TABLE `estado_pago` DISABLE KEYS */;
INSERT INTO `estado_pago` VALUES (1,'Al dia'),(2,'En Mora');
/*!40000 ALTER TABLE `estado_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `Id_Estudiante` int NOT NULL AUTO_INCREMENT,
  `fk_estudiante_Id_personas` int DEFAULT NULL,
  `fk_estudiante_Id_Acudiente` int DEFAULT NULL,
  PRIMARY KEY (`Id_Estudiante`),
  KEY `fk_estudiante_Id_personas` (`fk_estudiante_Id_personas`),
  KEY `fk_estudiante_Id_Acudiente` (`fk_estudiante_Id_Acudiente`),
  CONSTRAINT `fk_estudiante_Id_Acudiente` FOREIGN KEY (`fk_estudiante_Id_Acudiente`) REFERENCES `acudiente` (`Id_Acudiente`),
  CONSTRAINT `fk_estudiante_Id_personas` FOREIGN KEY (`fk_estudiante_Id_personas`) REFERENCES `personas` (`Id_Personas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grado` (
  `Id_Grado` int NOT NULL AUTO_INCREMENT,
  `Nombre_Grado` varchar(15) NOT NULL,
  `Cod_Grado` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Id_Grado`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,'Trascicion','0°'),(2,'primero','1°'),(3,'segundo','2°'),(4,'tercero','3°'),(5,'cuarto','4°'),(6,'quinto','5°'),(7,'sexto','6°'),(8,'septimo','7°'),(9,'octavo','8°'),(10,'noveno','9°'),(11,'decimo','10°'),(12,'once','11°');
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intensidad_horario_semanal`
--

DROP TABLE IF EXISTS `intensidad_horario_semanal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `intensidad_horario_semanal` (
  `ID_Intensidad_Semanal` int NOT NULL AUTO_INCREMENT,
  `intensidad_horaria_semanal` int DEFAULT NULL,
  `fk_IHS_Id_NombreArea` int DEFAULT NULL,
  `fk_IHS_Id_Cargo` int DEFAULT NULL,
  PRIMARY KEY (`ID_Intensidad_Semanal`),
  KEY `fk_IHS_Id_NombreArea` (`fk_IHS_Id_NombreArea`),
  KEY `fk_IHS_Id_Cargo` (`fk_IHS_Id_Cargo`),
  CONSTRAINT `fk_IHS_Id_Cargo` FOREIGN KEY (`fk_IHS_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_IHS_Id_NombreArea` FOREIGN KEY (`fk_IHS_Id_NombreArea`) REFERENCES `area` (`Id_Nombre_Area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intensidad_horario_semanal`
--

LOCK TABLES `intensidad_horario_semanal` WRITE;
/*!40000 ALTER TABLE `intensidad_horario_semanal` DISABLE KEYS */;
/*!40000 ALTER TABLE `intensidad_horario_semanal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidades` (
  `Id_Localidades` int NOT NULL AUTO_INCREMENT,
  `Localidad` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Localidades`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidades`
--

LOCK TABLES `localidades` WRITE;
/*!40000 ALTER TABLE `localidades` DISABLE KEYS */;
INSERT INTO `localidades` VALUES (1,'Usaquén'),(2,'Chapinero'),(3,'Santa Fe'),(4,'San Cristobal'),(5,'Usme'),(6,'Tunjuelito'),(7,'Bosa'),(8,'Kennedy'),(9,'Fontibón'),(10,'Engativá'),(11,'Suba'),(12,'Barrios Unidos'),(13,'Teusaquillo'),(14,'Los Mártires'),(15,'Antonio Nariño'),(16,'Puente Aranda'),(17,'Candelaria'),(18,'Rafael Uribe Uribe'),(19,'Ciudad Bolívar'),(20,'Sumapaz');
/*!40000 ALTER TABLE `localidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logro_academico`
--

DROP TABLE IF EXISTS `logro_academico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logro_academico` (
  `Id_Logro_Academico` int NOT NULL AUTO_INCREMENT,
  `Nombre_Logro_Academico` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id_Logro_Academico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logro_academico`
--

LOCK TABLES `logro_academico` WRITE;
/*!40000 ALTER TABLE `logro_academico` DISABLE KEYS */;
/*!40000 ALTER TABLE `logro_academico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logro_convivencial`
--

DROP TABLE IF EXISTS `logro_convivencial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logro_convivencial` (
  `Id_Logro_Convivencial` int NOT NULL AUTO_INCREMENT,
  `Nombre_Logro_Convivencial` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id_Logro_Convivencial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logro_convivencial`
--

LOCK TABLES `logro_convivencial` WRITE;
/*!40000 ALTER TABLE `logro_convivencial` DISABLE KEYS */;
/*!40000 ALTER TABLE `logro_convivencial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logros`
--

DROP TABLE IF EXISTS `logros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logros` (
  `Id_Logro` int NOT NULL AUTO_INCREMENT,
  `Indicador_Logro` varchar(100) NOT NULL,
  `Porcentaje_Logro` int NOT NULL,
  `fk_Logros_Id_LAcademico` int DEFAULT NULL,
  `fk_Logros_Id_LConvivencial` int DEFAULT NULL,
  `fk_Logros_Id_Cargo` int DEFAULT NULL,
  `fk_Logros_Id_NombreActividad` int DEFAULT NULL,
  `fk_Logros_Id_Nombre_Area` int DEFAULT NULL,
  PRIMARY KEY (`Id_Logro`),
  KEY `fk_Logros_Id_LAcademico` (`fk_Logros_Id_LAcademico`),
  KEY `fk_Logros_Id_LConvivencial` (`fk_Logros_Id_LConvivencial`),
  KEY `fk_Logros_Id_Cargo` (`fk_Logros_Id_Cargo`),
  KEY `fk_Logros_Id_NombreActividad` (`fk_Logros_Id_NombreActividad`),
  KEY `fk_Logros_Id_Nombre_Area` (`fk_Logros_Id_Nombre_Area`),
  CONSTRAINT `fk_Logros_Id_Cargo` FOREIGN KEY (`fk_Logros_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_Logros_Id_LAcademico` FOREIGN KEY (`fk_Logros_Id_LAcademico`) REFERENCES `logro_academico` (`Id_Logro_Academico`),
  CONSTRAINT `fk_Logros_Id_LConvivencial` FOREIGN KEY (`fk_Logros_Id_LConvivencial`) REFERENCES `logro_convivencial` (`Id_Logro_Convivencial`),
  CONSTRAINT `fk_Logros_Id_Nombre_Area` FOREIGN KEY (`fk_Logros_Id_Nombre_Area`) REFERENCES `area` (`Id_Nombre_Area`),
  CONSTRAINT `fk_Logros_Id_NombreActividad` FOREIGN KEY (`fk_Logros_Id_NombreActividad`) REFERENCES `actividades` (`ID_Nombre_Actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logros`
--

LOCK TABLES `logros` WRITE;
/*!40000 ALTER TABLE `logros` DISABLE KEYS */;
/*!40000 ALTER TABLE `logros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `Id_Consecutivo_Matricula` int NOT NULL AUTO_INCREMENT,
  `Materiales_Matricula` varchar(80) NOT NULL,
  `fk_Matricula_Id_Estudiante` int DEFAULT NULL,
  `fk_Matricula_Id_Pago` int DEFAULT NULL,
  `fk_Matricula_Id_Cargo` int DEFAULT NULL,
  PRIMARY KEY (`Id_Consecutivo_Matricula`),
  KEY `fk_Matricula_Id_Estudiante` (`fk_Matricula_Id_Estudiante`),
  KEY `fk_Matricula_Id_Pago` (`fk_Matricula_Id_Pago`),
  KEY `fk_Matricula_Id_Cargo` (`fk_Matricula_Id_Cargo`),
  CONSTRAINT `fk_Matricula_Id_Cargo` FOREIGN KEY (`fk_Matricula_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_Matricula_Id_Estudiante` FOREIGN KEY (`fk_Matricula_Id_Estudiante`) REFERENCES `estudiante` (`Id_Estudiante`),
  CONSTRAINT `fk_Matricula_Id_Pago` FOREIGN KEY (`fk_Matricula_Id_Pago`) REFERENCES `pagos` (`Id_Pagos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes_pago`
--

DROP TABLE IF EXISTS `mes_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes_pago` (
  `Id_Mes` int NOT NULL AUTO_INCREMENT,
  `Mes` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Id_Mes`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes_pago`
--

LOCK TABLES `mes_pago` WRITE;
/*!40000 ALTER TABLE `mes_pago` DISABLE KEYS */;
INSERT INTO `mes_pago` VALUES (1,'Enero'),(2,'Febrero'),(3,'Marzo'),(4,'Abril'),(5,'Mayo'),(6,'Junio'),(7,'Julio'),(8,'Agosto'),(9,'Septiembre'),(10,'Octubre'),(11,'Noviembre'),(12,'Diciembre');
/*!40000 ALTER TABLE `mes_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_area`
--

DROP TABLE IF EXISTS `nota_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota_area` (
  `Id_Area` int NOT NULL AUTO_INCREMENT,
  `Nota_Area` float DEFAULT NULL,
  `Porcentaje_Nota_Area` int DEFAULT NULL,
  `fk_NtArea_Id_Nombre_Area` int DEFAULT NULL,
  `fk_NtArea_Id_Asignatura` int DEFAULT NULL,
  `fk_NtArea_Id_Logro` int DEFAULT NULL,
  `fk_NtArea_Id_Cargo` int DEFAULT NULL,
  `fk_NtArea_Id_NombreActividad` int DEFAULT NULL,
  PRIMARY KEY (`Id_Area`),
  KEY `fk_NtArea_Id_Nombre_Area` (`fk_NtArea_Id_Nombre_Area`),
  KEY `fk_NtArea_Id_Asignatura` (`fk_NtArea_Id_Asignatura`),
  KEY `fk_NtArea_Id_Logro` (`fk_NtArea_Id_Logro`),
  KEY `fk_NtArea_Id_Cargo` (`fk_NtArea_Id_Cargo`),
  KEY `fk_NtArea_Id_NombreActividad` (`fk_NtArea_Id_NombreActividad`),
  CONSTRAINT `fk_NtArea_Id_Asignatura` FOREIGN KEY (`fk_NtArea_Id_Asignatura`) REFERENCES `asignatura` (`Id_Nombre_Asignatura`),
  CONSTRAINT `fk_NtArea_Id_Cargo` FOREIGN KEY (`fk_NtArea_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_NtArea_Id_Logro` FOREIGN KEY (`fk_NtArea_Id_Logro`) REFERENCES `logros` (`Id_Logro`),
  CONSTRAINT `fk_NtArea_Id_Nombre_Area` FOREIGN KEY (`fk_NtArea_Id_Nombre_Area`) REFERENCES `area` (`Id_Nombre_Area`),
  CONSTRAINT `fk_NtArea_Id_NombreActividad` FOREIGN KEY (`fk_NtArea_Id_NombreActividad`) REFERENCES `actividades` (`ID_Nombre_Actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_area`
--

LOCK TABLES `nota_area` WRITE;
/*!40000 ALTER TABLE `nota_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota_asignatura`
--

DROP TABLE IF EXISTS `nota_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota_asignatura` (
  `ID_Asignatura` int NOT NULL AUTO_INCREMENT,
  `Nota_Asignatura` float DEFAULT NULL,
  `Porcentaje_Nota_Asign` int DEFAULT NULL,
  `fk_Nota_signatura_Id_Name_Asignatura` int DEFAULT NULL,
  `fk_Nota_signatura_Id_Name_Area` int DEFAULT NULL,
  `fk_Nota_signatura_Id_Logro` int DEFAULT NULL,
  `fk_Nota_signatura_Id_Cargo` int DEFAULT NULL,
  PRIMARY KEY (`ID_Asignatura`),
  KEY `fk_Nota_signatura_Id_Name_Asignatura` (`fk_Nota_signatura_Id_Name_Asignatura`),
  KEY `fk_Nota_signatura_Id_Name_Area` (`fk_Nota_signatura_Id_Name_Area`),
  KEY `fk_Nota_signatura_Id_Logro` (`fk_Nota_signatura_Id_Logro`),
  KEY `fk_Nota_signatura_Id_Cargo` (`fk_Nota_signatura_Id_Cargo`),
  CONSTRAINT `fk_Nota_signatura_Id_Cargo` FOREIGN KEY (`fk_Nota_signatura_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_Nota_signatura_Id_Logro` FOREIGN KEY (`fk_Nota_signatura_Id_Logro`) REFERENCES `logros` (`Id_Logro`),
  CONSTRAINT `fk_Nota_signatura_Id_Name_Area` FOREIGN KEY (`fk_Nota_signatura_Id_Name_Area`) REFERENCES `area` (`Id_Nombre_Area`),
  CONSTRAINT `fk_Nota_signatura_Id_Name_Asignatura` FOREIGN KEY (`fk_Nota_signatura_Id_Name_Asignatura`) REFERENCES `asignatura` (`Id_Nombre_Asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_asignatura`
--

LOCK TABLES `nota_asignatura` WRITE;
/*!40000 ALTER TABLE `nota_asignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novedad`
--

DROP TABLE IF EXISTS `novedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novedad` (
  `Id_Novedad` int NOT NULL AUTO_INCREMENT,
  `Descripcion_Novedad` varchar(100) NOT NULL,
  `Fecha_Registro` date NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Fecha_Final` date NOT NULL,
  `Soporte` blob,
  `fk_Novedad_Id_TPNovedad` int DEFAULT NULL,
  `fk_Novedad_Id_Cargo` int DEFAULT NULL,
  PRIMARY KEY (`Id_Novedad`),
  KEY `fk_Novedad_Id_TPNovedad` (`fk_Novedad_Id_TPNovedad`),
  KEY `fk_Novedad_Id_Cargo` (`fk_Novedad_Id_Cargo`),
  CONSTRAINT `fk_Novedad_Id_Cargo` FOREIGN KEY (`fk_Novedad_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_Novedad_Id_TPNovedad` FOREIGN KEY (`fk_Novedad_Id_TPNovedad`) REFERENCES `tipo_novedad` (`Id_Tipo_Novedad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novedad`
--

LOCK TABLES `novedad` WRITE;
/*!40000 ALTER TABLE `novedad` DISABLE KEYS */;
/*!40000 ALTER TABLE `novedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `Id_Pagos` int NOT NULL AUTO_INCREMENT,
  `Fecha_Pago` date NOT NULL,
  `Valor_Pago` int NOT NULL,
  `fk_Pagos_Id_Estudiante` int DEFAULT NULL,
  `fk_Pagos_Id_Cargo` int DEFAULT NULL,
  PRIMARY KEY (`Id_Pagos`),
  KEY `fk_Pagos_Id_Estudiante` (`fk_Pagos_Id_Estudiante`),
  KEY `fk_Pagos_Id_Cargo` (`fk_Pagos_Id_Cargo`),
  CONSTRAINT `fk_Pagos_Id_Cargo` FOREIGN KEY (`fk_Pagos_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_Pagos_Id_Estudiante` FOREIGN KEY (`fk_Pagos_Id_Estudiante`) REFERENCES `estudiante` (`Id_Estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parentesco`
--

DROP TABLE IF EXISTS `parentesco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parentesco` (
  `Id_Parentesco` int NOT NULL AUTO_INCREMENT,
  `Parentesco` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Parentesco`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parentesco`
--

LOCK TABLES `parentesco` WRITE;
/*!40000 ALTER TABLE `parentesco` DISABLE KEYS */;
INSERT INTO `parentesco` VALUES (1,'Madre'),(2,'Padre'),(3,'Abuela'),(4,'Abuelo'),(5,'Tio'),(6,'Tia'),(7,'Primo'),(8,'Prima'),(9,'Padrastro'),(10,'Madrastra'),(11,'Hermano'),(12,'Hermana'),(13,'Tutor Legal');
/*!40000 ALTER TABLE `parentesco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pension`
--

DROP TABLE IF EXISTS `pension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pension` (
  `Id_Pension` int NOT NULL AUTO_INCREMENT,
  `Consecutivo_Pension` int DEFAULT NULL,
  `fk_Pension_Id_Mes` int NOT NULL,
  `fk_Pension_Id_Cartera` int NOT NULL,
  `fk_Pension_Id_Estudiante` int NOT NULL,
  `fk_Pension_Id_Pago` int NOT NULL,
  `fk_Pension_Id_Cargo` int NOT NULL,
  PRIMARY KEY (`Id_Pension`),
  KEY `fk_Pension_Id_Mes` (`fk_Pension_Id_Mes`),
  KEY `fk_Pension_Id_Cartera` (`fk_Pension_Id_Cartera`),
  KEY `fk_Pension_Id_Estudiante` (`fk_Pension_Id_Estudiante`),
  KEY `fk_Pension_Id_Pago` (`fk_Pension_Id_Pago`),
  KEY `fk_Pension_Id_Cargo` (`fk_Pension_Id_Cargo`),
  CONSTRAINT `pension_ibfk_1` FOREIGN KEY (`fk_Pension_Id_Mes`) REFERENCES `mes_pago` (`Id_Mes`),
  CONSTRAINT `pension_ibfk_2` FOREIGN KEY (`fk_Pension_Id_Cartera`) REFERENCES `estado_pago` (`Id_Estado_Pago`),
  CONSTRAINT `pension_ibfk_3` FOREIGN KEY (`fk_Pension_Id_Estudiante`) REFERENCES `estudiante` (`Id_Estudiante`),
  CONSTRAINT `pension_ibfk_4` FOREIGN KEY (`fk_Pension_Id_Pago`) REFERENCES `pagos` (`Id_Pagos`),
  CONSTRAINT `pension_ibfk_5` FOREIGN KEY (`fk_Pension_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pension`
--

LOCK TABLES `pension` WRITE;
/*!40000 ALTER TABLE `pension` DISABLE KEYS */;
/*!40000 ALTER TABLE `pension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `Id_Personas` int NOT NULL AUTO_INCREMENT,
  `Primer_Nombre` varchar(15) NOT NULL,
  `Segundo_Nombre` varchar(15) DEFAULT NULL,
  `Tercer_Nombre` varchar(15) DEFAULT NULL,
  `Primer_Apellido` varchar(15) NOT NULL,
  `Segundo_Apellido` varchar(15) DEFAULT NULL,
  `Tipo_Documento` varchar(10) NOT NULL,
  `N_Documento` int NOT NULL,
  `Edad` int DEFAULT NULL,
  `fk_Id_EPS` int DEFAULT NULL,
  `fk_Id_ARL` int DEFAULT NULL,
  PRIMARY KEY (`Id_Personas`),
  KEY `fk_Id_EPS` (`fk_Id_EPS`),
  KEY `fk_Id_ARL` (`fk_Id_ARL`),
  CONSTRAINT `fk_Id_ARL` FOREIGN KEY (`fk_Id_ARL`) REFERENCES `arl` (`Id_ARL`),
  CONSTRAINT `fk_Id_EPS` FOREIGN KEY (`fk_Id_EPS`) REFERENCES `eps` (`Id_EPS`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantel_administrativo`
--

DROP TABLE IF EXISTS `plantel_administrativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plantel_administrativo` (
  `Id_Rector` int NOT NULL AUTO_INCREMENT,
  `fk_PAdministrativo_Id_Empleado` int DEFAULT NULL,
  `fk_PAdministrativo_Id_Cargo` int DEFAULT NULL,
  `Firma_Digital` blob,
  PRIMARY KEY (`Id_Rector`),
  KEY `fk_PAdministrativo_Id_Empleado` (`fk_PAdministrativo_Id_Empleado`),
  KEY `fk_PAdministrativo_Id_Cargo` (`fk_PAdministrativo_Id_Cargo`),
  CONSTRAINT `fk_PAdministrativo_Id_Cargo` FOREIGN KEY (`fk_PAdministrativo_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_PAdministrativo_Id_Empleado` FOREIGN KEY (`fk_PAdministrativo_Id_Empleado`) REFERENCES `empleados` (`Id_Empleados`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantel_administrativo`
--

LOCK TABLES `plantel_administrativo` WRITE;
/*!40000 ALTER TABLE `plantel_administrativo` DISABLE KEYS */;
/*!40000 ALTER TABLE `plantel_administrativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plantel_docente`
--

DROP TABLE IF EXISTS `plantel_docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plantel_docente` (
  `Id_Docente` int NOT NULL AUTO_INCREMENT,
  `Intensidad_Horaria_Docente` int NOT NULL,
  `Cantidad_Estudiantes_Curso` int NOT NULL,
  `fk_PDocente_Id_Grado` int DEFAULT NULL,
  `fk_PDocente_Id_Curso` int DEFAULT NULL,
  `fk_PDocente_Id_NArea` int DEFAULT NULL,
  `fk_PDocente_Id_NAsignatura` int DEFAULT NULL,
  `fk_PDocente_Id_Cargo` int DEFAULT NULL,
  `fk_PDocente_Id_Personas` int DEFAULT NULL,
  PRIMARY KEY (`Id_Docente`),
  KEY `fk_PDocente_Id_Grado` (`fk_PDocente_Id_Grado`),
  KEY `fk_PDocente_Id_Curso` (`fk_PDocente_Id_Curso`),
  KEY `fk_PDocente_Id_NArea` (`fk_PDocente_Id_NArea`),
  KEY `fk_PDocente_Id_NAsignatura` (`fk_PDocente_Id_NAsignatura`),
  KEY `fk_PDocente_Id_Cargo` (`fk_PDocente_Id_Cargo`),
  KEY `fk_PDocente_Id_Personas` (`fk_PDocente_Id_Personas`),
  CONSTRAINT `fk_PDocente_Id_Cargo` FOREIGN KEY (`fk_PDocente_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_PDocente_Id_Curso` FOREIGN KEY (`fk_PDocente_Id_Curso`) REFERENCES `curso` (`Id_Curso`),
  CONSTRAINT `fk_PDocente_Id_Grado` FOREIGN KEY (`fk_PDocente_Id_Grado`) REFERENCES `grado` (`Id_Grado`),
  CONSTRAINT `fk_PDocente_Id_NArea` FOREIGN KEY (`fk_PDocente_Id_NArea`) REFERENCES `area` (`Id_Nombre_Area`),
  CONSTRAINT `fk_PDocente_Id_NAsignatura` FOREIGN KEY (`fk_PDocente_Id_NAsignatura`) REFERENCES `asignatura` (`Id_Nombre_Asignatura`),
  CONSTRAINT `fk_PDocente_Id_Personas` FOREIGN KEY (`fk_PDocente_Id_Personas`) REFERENCES `personas` (`Id_Personas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantel_docente`
--

LOCK TABLES `plantel_docente` WRITE;
/*!40000 ALTER TABLE `plantel_docente` DISABLE KEYS */;
/*!40000 ALTER TABLE `plantel_docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requerimiento_extraescolar`
--

DROP TABLE IF EXISTS `requerimiento_extraescolar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requerimiento_extraescolar` (
  `Id_Requerimiento` int NOT NULL AUTO_INCREMENT,
  `Descripcion_Requerimiento` varchar(100) NOT NULL,
  `Observaciones_Requerimiento` varchar(100) NOT NULL,
  `Nombre_Requerimiento` varchar(100) NOT NULL,
  `Descripcion_Actividad_Requerimiento` varchar(100) NOT NULL,
  `Fecha_Actividad_Requerimiento` date NOT NULL,
  `fk_RExtraescolar_Id_NameActividad` int DEFAULT NULL,
  `fk_RExtraescolar_Id_Cargo` int DEFAULT NULL,
  `fk_RExtraescolar_Id_Logro` int DEFAULT NULL,
  PRIMARY KEY (`Id_Requerimiento`),
  KEY `fk_RExtraescolar_Id_NameActividad` (`fk_RExtraescolar_Id_NameActividad`),
  KEY `fk_RExtraescolar_Id_Cargo` (`fk_RExtraescolar_Id_Cargo`),
  KEY `fk_RExtraescolar_Id_Logro` (`fk_RExtraescolar_Id_Logro`),
  CONSTRAINT `fk_RExtraescolar_Id_Cargo` FOREIGN KEY (`fk_RExtraescolar_Id_Cargo`) REFERENCES `cargo` (`Id_Cargo`),
  CONSTRAINT `fk_RExtraescolar_Id_Logro` FOREIGN KEY (`fk_RExtraescolar_Id_Logro`) REFERENCES `logros` (`Id_Logro`),
  CONSTRAINT `fk_RExtraescolar_Id_NameActividad` FOREIGN KEY (`fk_RExtraescolar_Id_NameActividad`) REFERENCES `actividades` (`ID_Nombre_Actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requerimiento_extraescolar`
--

LOCK TABLES `requerimiento_extraescolar` WRITE;
/*!40000 ALTER TABLE `requerimiento_extraescolar` DISABLE KEYS */;
/*!40000 ALTER TABLE `requerimiento_extraescolar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh`
--

DROP TABLE IF EXISTS `rh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rh` (
  `Id_Rh` int NOT NULL AUTO_INCREMENT,
  `Rh` varchar(10) NOT NULL,
  PRIMARY KEY (`Id_Rh`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh`
--

LOCK TABLES `rh` WRITE;
/*!40000 ALTER TABLE `rh` DISABLE KEYS */;
INSERT INTO `rh` VALUES (1,'Positivo'),(2,'Negativo');
/*!40000 ALTER TABLE `rh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_documento` (
  `Id_Tipo_Documento` int NOT NULL AUTO_INCREMENT,
  `Nombre_Tipo_Documento` varchar(25) NOT NULL,
  `Nomenclatura` varchar(6) NOT NULL,
  PRIMARY KEY (`Id_Tipo_Documento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_documento`
--

LOCK TABLES `tipo_documento` WRITE;
/*!40000 ALTER TABLE `tipo_documento` DISABLE KEYS */;
INSERT INTO `tipo_documento` VALUES (1,'Cedula de ciudadania','CC'),(2,'Cedula de extranjeria','CE'),(3,'NIT','NIT'),(4,'Tarjeta de Identidad','TI'),(5,'Pasaporte','PA'),(6,'Registro Civil','RC'),(7,'NUIP','NUIP'),(8,'Carnet Diplomatico','CD'),(9,'Permanencia Especial','PE'),(10,'Salvo Conduto','SV');
/*!40000 ALTER TABLE `tipo_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_novedad`
--

DROP TABLE IF EXISTS `tipo_novedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_novedad` (
  `Id_Tipo_Novedad` int NOT NULL AUTO_INCREMENT,
  `Tipo_Novedad` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Tipo_Novedad`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_novedad`
--

LOCK TABLES `tipo_novedad` WRITE;
/*!40000 ALTER TABLE `tipo_novedad` DISABLE KEYS */;
INSERT INTO `tipo_novedad` VALUES (1,'Permiso'),(2,'Licencia'),(3,'Incapacidad'),(4,'Calamidad');
/*!40000 ALTER TABLE `tipo_novedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_sangre`
--

DROP TABLE IF EXISTS `tipo_sangre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_sangre` (
  `Id_Tipo_Sangre` int NOT NULL AUTO_INCREMENT,
  `Tipo_Sangre` varchar(3) NOT NULL,
  `fk_Tsangre_Personas` int DEFAULT NULL,
  `fk_Tsangre_Rh` int DEFAULT NULL,
  PRIMARY KEY (`Id_Tipo_Sangre`),
  KEY `fk_Tsangre_Personas` (`fk_Tsangre_Personas`),
  KEY `fk_Tsangre_Rh` (`fk_Tsangre_Rh`),
  CONSTRAINT `fk_Tsangre_Personas` FOREIGN KEY (`fk_Tsangre_Personas`) REFERENCES `personas` (`Id_Personas`),
  CONSTRAINT `fk_Tsangre_Rh` FOREIGN KEY (`fk_Tsangre_Rh`) REFERENCES `rh` (`Id_Rh`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_sangre`
--

LOCK TABLES `tipo_sangre` WRITE;
/*!40000 ALTER TABLE `tipo_sangre` DISABLE KEYS */;
INSERT INTO `tipo_sangre` VALUES (9,'A',NULL,NULL),(10,'B',NULL,NULL),(11,'AB',NULL,NULL),(12,'O',NULL,NULL);
/*!40000 ALTER TABLE `tipo_sangre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `Id_Contraseña` int NOT NULL AUTO_INCREMENT,
  `Contraseña` varchar(150) DEFAULT NULL,
  `fk_contraseña_Id_personas` int DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id_Contraseña`),
  KEY `fk_contraseña_Id_personas` (`fk_contraseña_Id_personas`),
  CONSTRAINT `fk_contraseña_Id_personas` FOREIGN KEY (`fk_contraseña_Id_personas`) REFERENCES `personas` (`Id_Personas`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'simsy'
--
/*!50003 DROP PROCEDURE IF EXISTS `recuperarArl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarArl`()
select Id_ARL, NombreARL from arl ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarBarrio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarBarrio`()
select Id_Barrios, barrios from barrios ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarcargos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarcargos`()
select id_cargo, perfiles from cargo ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarciudad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarciudad`()
select Id_Ciudad, Ciudad from ciudad ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarContraseña` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarContraseña`(usuarioIngresado varchar (30))
SELECT Contraseña FROM usuario WHERE usuario = usuarioIngresado LIMIT 1 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarCurso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarCurso`()
select Id_Curso, Indicativo_Curso from curso ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarEps` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarEps`()
select Id_EPS, NombreEps from eps ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarGrado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarGrado`()
select Id_Grado, Nombre_Grado from grado ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarIdContraseña` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarIdContraseña`(usuarioIngresado varchar (30))
SELECT Id_Contraseña FROM usuario WHERE usuario = usuarioIngresado ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarLocalidades` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarLocalidades`()
select Id_Localidades, Localidad from localidades ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarNombreUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarNombreUsuario`(IdContraseña int)
SELECT p.Primer_Nombre, p.Segundo_Nombre, p.Primer_Apellido, p.Segundo_Apellido
FROM usuario u
JOIN personas p ON u.fk_contraseña_Id_personas = p.Id_Personas
WHERE Id_Contraseña = IdContraseña ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarParentesco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarParentesco`()
select Id_Parentesco, Parentesco from parentesco ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarPerfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarPerfil`(Id_contraseña int)
SELECT c.perfiles
		FROM usuario u
		JOIN cargoporusuario cu ON u.id_Contraseña = cu.id_contraseña
		join cargo c on cu.id_cargo = c.id_cargo
		where u.id_contraseña = Id_contraseña ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarRH` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarRH`()
select Id_Rh, Rh from rh ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarTipoDocumento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarTipoDocumento`()
select Id_Tipo_Documento, Nomenclatura from tipo_documento ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `recuperarTipoSangre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recuperarTipoSangre`()
select Tipo_Sangre from tipo_sangre ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registroEstudiante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registroEstudiante`(primerNombre varchar (15), 
								segundoNombre varchar (15),
                                tercerNombre varchar (15),
                                primerApellido varchar (15),
                                segundoApellido varchar (15),
                                tdocumento varchar (10),
                                nroDocumento int,
                                edad int,
                                idgrado int,
								idcurso int,
                                direccion varchar (45),
                                IdLocalidad INT,
                                IdBarrio INT,
                                IdCiudad int,
                                IdEps int,
                                IdArl int,
                                tipoSangre varchar (3),
                                IdRh int,
                                primerNombreAcud varchar (15),
                                segundoNombreAcud varchar (15),
                                primerApellidoAcud varchar (15),
                                segundoApellidoAcud varchar (15),
                                tipoDocumentoAcud varchar (10),
                                nroDocumentoAcud int,
                                idParentesco int,
                                email varchar (30),
                                telefono bigint)
BEGIN
DECLARE consultaIdPersonaEstudiante INT;
DECLARE consultaIdPersonaAcudiente INT;
DECLARE consultaIdAcudiente INT;

INSERT INTO Personas VALUES (0, primerNombre, segundoNombre, tercerNombre, primerApellido, segundoApellido, tdocumento, nroDocumento, edad, IdEps, IdArl);
SELECT Id_personas INTO consultaIdPersonaEstudiante FROM personas WHERE N_Documento = nroDocumento LIMIT 1;
INSERT INTO datos_localizacion (Telefono, Email, Dirección, fk_Id_persona, fk_Id_Localidades, fk_Id_Ciudad, fk_Id_Barrios) VALUES (telefono, email, direccion, consultaIdPersonaEstudiante, IdLocalidad, IdCiudad, IdBarrio);
INSERT INTO Personas (Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Tipo_Documento, N_Documento) VALUES (primerNombreAcud, segundoNombreAcud, primerApellidoAcud, segundoApellidoAcud, tipoDocumentoAcud, nroDocumentoAcud);
SELECT Id_personas INTO consultaIdPersonaAcudiente FROM personas WHERE N_Documento = nroDocumentoAcud LIMIT 1;
INSERT INTO acudiente VALUES (0, idParentesco, consultaIdPersonaAcudiente);
SELECT Id_Acudiente INTO consultaIdAcudiente FROM acudiente WHERE fk_acudiente_Id_personas = consultaIdPersonaAcudiente LIMIT 1;
INSERT INTO estudiante (fk_estudiante_Id_personas, fk_estudiante_Id_Acudiente) VALUES (consultaIdPersonaEstudiante, consultaIdAcudiente);
INSERT INTO datos_localizacion (Telefono, Email, Dirección, fk_Id_persona, fk_Id_Localidades, fk_Id_Ciudad, fk_Id_Barrios) VALUES (telefono, email, direccion, consultaIdPersonaAcudiente, IdLocalidad, IdCiudad, IdBarrio);
INSERT INTO asignacion_estudiante VALUES (0, idgrado, idcurso, consultaIdPersonaEstudiante);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrousuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrousuario`(primerNombre varchar (15), 
								segundoNombre varchar (15),
                                tercerNombre varchar (15),
                                primerApellido varchar (15),
                                segundoApellido varchar (15),
                                tdocumento varchar (10),
                                nroDocumento int,
                                edad int,
                                email varchar (30),
                                direccion varchar (45),
                                IdLocalidad INT,
                                IdEps int,
                                IdCiudad int,
                                telefono bigint,
                                usuarioEntrada varchar (30),
                                contrasenia varchar (150),
                                idcargo int,
                                Arl int)
BEGIN
DECLARE consultaIdUsuario INT;
DECLARE consultaIdPersona INT;

INSERT INTO Personas VALUES (0, primerNombre, segundoNombre, tercerNombre, primerApellido, segundoApellido, tdocumento, nroDocumento, edad, IdEps, Arl);
SELECT Id_personas INTO consultaIdPersona FROM personas WHERE N_Documento = nroDocumento LIMIT 1;
INSERT INTO datos_localizacion (Telefono, Email, Dirección, fk_Id_persona, fk_Id_Localidades, fk_Id_Ciudad) VALUES (telefono, email, direccion, consultaIdPersona, IdLocalidad, IdCiudad);
INSERT INTO usuario (usuario, Contraseña, fk_contraseña_Id_personas) VALUES (usuarioEntrada, contrasenia, consultaIdPersona);
SELECT Id_Contraseña INTO consultaIdUsuario FROM usuario WHERE usuario = usuarioEntrada LIMIT 1;
INSERT INTO cargoporusuario VALUES (0, consultaIdUsuario, idcargo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-26  0:48:22
