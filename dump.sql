-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `player_post`
--

DROP TABLE IF EXISTS `player_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_post`
--

LOCK TABLES `player_post` WRITE;
/*!40000 ALTER TABLE `player_post` DISABLE KEYS */;
INSERT INTO `player_post` VALUES (9,1,1),(11,2,4),(22,3,1),(23,3,2),(40,9,1),(41,8,3),(42,8,4),(43,4,5),(44,10,5),(45,11,4),(46,11,5),(47,12,3),(48,13,4),(49,13,5),(50,46,5),(51,26,5),(52,47,1),(53,27,2),(54,48,5),(55,58,2),(56,24,4),(57,46,4),(58,55,1),(59,56,2),(60,29,1),(61,15,2),(62,23,1),(63,21,4),(64,59,2),(65,50,5),(66,28,5),(67,47,3),(68,29,1),(69,23,3),(70,19,2),(71,46,1),(72,23,1),(73,14,3),(74,56,5),(75,31,5),(76,60,2),(77,52,2),(78,31,1),(79,19,4),(80,36,4),(81,37,5),(82,13,1),(83,24,5),(84,46,1),(85,26,2),(86,21,1),(87,20,4),(88,24,4),(89,42,4),(90,24,1),(91,37,2),(92,44,5),(93,34,5),(94,15,2),(95,56,3),(96,30,4),(97,34,1),(98,52,2),(99,26,1),(100,45,1),(101,16,1),(102,18,3),(103,17,3),(104,17,4),(105,63,1),(106,40,3),(107,40,4),(108,40,5),(109,51,1),(110,32,3),(111,49,1),(112,25,3),(113,35,2),(114,39,4),(115,33,4),(116,57,2),(117,54,5),(118,43,4),(119,53,3),(120,53,4),(121,62,2),(122,62,5),(123,22,5),(124,41,3),(125,61,5),(126,38,1),(127,38,2),(128,38,3),(129,38,4);
/*!40000 ALTER TABLE `player_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `size` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `point` double NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Stephen Curry',190,29,26.3,10),(2,'Lebron james',204,32,28.1,6),(3,'James Harden',196,28,31.6,2),(4,'bassirre',200,22,32.1,9),(8,'Giannis Antetokounmpo',211,23,29.9,16),(9,'Damian Lillard',191,27,26.3,24),(10,'DeMarcus Cousins',211,27,26.1,18),(11,'Kristaps Porzingis',221,22,26,19),(12,'Kevin Durant',213,29,25.7,10),(13,'Anthony Davis',211,24,25.1,18),(14,'Dominic',194,33,33.6,24),(15,'Ellynn',206,22,26.8,22),(16,'Blinni',198,35,33.3,8),(17,'Mort',214,40,32.9,30),(18,'Georges',206,24,33,2),(19,'Dasie',200,27,29,16),(20,'Arley',220,26,32.1,5),(21,'Horst',206,28,34,30),(22,'Hortensia',199,34,23.5,7),(23,'Edita',218,25,34.8,11),(24,'Wileen',218,19,32.9,21),(25,'Cass',217,33,29.4,13),(26,'Tomasine',198,34,33,16),(27,'Ann-marie',213,24,28.7,3),(28,'Morna',208,35,31.2,22),(29,'Gracie',197,34,32.4,16),(30,'Davide',217,21,24.7,28),(31,'Steffi',206,20,34.6,15),(32,'Ab',198,31,30.4,15),(33,'Alexei',215,28,26.5,18),(34,'Hyacinthe',198,21,30.4,24),(35,'Veronique',214,40,28.6,21),(36,'Devland',199,31,30.2,21),(37,'Noach',220,31,28.9,13),(38,'Neilla',195,36,24,19),(39,'Cornelia',190,26,26.9,24),(40,'Aloisia',214,29,31.4,17),(41,'Dill',208,26,24.1,9),(42,'Demetri',209,32,23.2,11),(43,'Emylee',214,39,24.6,30),(44,'Christie',200,21,34.2,7),(45,'Iggy',192,36,33.8,29),(46,'Gabbie',201,31,28.2,2),(47,'Lona',198,31,30.6,26),(48,'Janeta',193,40,32,8),(49,'Kori',205,27,30.2,27),(50,'Maryl',202,34,29.1,18),(51,'Guss',201,31,23.3,3),(52,'Marven',218,23,25.2,9),(53,'Edwin',201,29,24.2,18),(54,'Eliot',207,30,25.8,30),(55,'Franny',191,23,34.1,3),(56,'Danyette',199,36,30.5,18),(57,'Sly',212,24,26.1,7),(58,'Killy',211,28,32.3,25),(59,'Herminia',205,35,23.6,22),(60,'Deck',195,21,26.3,11),(61,'Aubry',218,31,23.2,9),(62,'Easter',198,28,24.1,25),(63,'Dolli',219,29,32.6,9);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'meneur'),(2,'arrière'),(3,'ailier'),(4,'ailier fort'),(5,'pivot');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Atlanta'),(2,'Boston'),(3,'Brooklyn'),(4,'Charlotte'),(5,'Chicago'),(6,'Cleveland'),(7,'Dallas '),(8,'Denver'),(9,'Detroit'),(10,'Golden State'),(11,'Houston'),(12,'LA Clipers'),(13,'LA Lakers'),(14,'Memphis'),(15,'Miami'),(16,'Milwaukee'),(17,'Minnesota'),(18,'New Orleans'),(19,'New York'),(20,'Oklahoma City'),(21,'Orlando'),(22,'Philadelphia'),(23,'Phoenix '),(24,'Portland'),(25,'Sacramento'),(26,'San Antonio'),(27,'Toronto'),(28,'Utah'),(29,'Washington'),(30,'indiana');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-15 15:07:41
