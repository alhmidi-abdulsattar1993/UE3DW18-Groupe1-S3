-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: lamp
-- ------------------------------------------------------
-- Server version	5.7.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tl_liens`
--

DROP TABLE IF EXISTS `tl_liens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_liens` (
  `lien_id` int(11) NOT NULL AUTO_INCREMENT,
  `lien_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien_titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien_desc` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`lien_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_liens`
--

LOCK TABLES `tl_liens` WRITE;
/*!40000 ALTER TABLE `tl_liens` DISABLE KEYS */;
INSERT INTO `tl_liens` VALUES (1,'https://cvtic.unilim.fr/','Campus Virtuel TIC','Site internet du CvTIC.',1),(2,'https://duckduckgo.com/','Duck Duck Go','Le moteur de recherche qui ne trace pas ses utilisateurs.',1),(3,'https://framasoft.org/','Framasoft','Un réseau dédié à la promotion du « libre » en général et du logiciel libre en particulier.',1);
/*!40000 ALTER TABLE `tl_liens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_tags`
--

DROP TABLE IF EXISTS `tl_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_tags`
--

LOCK TABLES `tl_tags` WRITE;
/*!40000 ALTER TABLE `tl_tags` DISABLE KEYS */;
INSERT INTO `tl_tags` VALUES (1,'fac'),(2,'vieprivee'),(3,'opensource'),(4,'apprendre');
/*!40000 ALTER TABLE `tl_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_tags_liens`
--

DROP TABLE IF EXISTS `tl_tags_liens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_tags_liens` (
  `tag_id` int(11) NOT NULL,
  `lien_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_tags_liens`
--

LOCK TABLES `tl_tags_liens` WRITE;
/*!40000 ALTER TABLE `tl_tags_liens` DISABLE KEYS */;
INSERT INTO `tl_tags_liens` VALUES (1,1),(2,2),(3,2),(3,3);
/*!40000 ALTER TABLE `tl_tags_liens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tl_users`
--

DROP TABLE IF EXISTS `tl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_users` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(88) COLLATE utf8_unicode_ci NOT NULL,
  `usr_salt` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `usr_role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ROLE_ADMIN',
  PRIMARY KEY (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tl_users`
--

LOCK TABLES `tl_users` WRITE;
/*!40000 ALTER TABLE `tl_users` DISABLE KEYS */;
INSERT INTO `tl_users` VALUES (1,'admin','9/jasWhSbiKK9kRzdPyGfzhgEGSk5o3J2RiszM8rLdhy+SVCaq5japf7et8BWl/f/p9f+NzKglDhEcRqWF/f8A==','b6d101785059c7abcd666e3','ROLE_ADMIN');
/*!40000 ALTER TABLE `tl_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-27 21:07:11
