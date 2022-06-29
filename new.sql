-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gldb_box
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add api key',7,'add_apikey'),(26,'Can change api key',7,'change_apikey'),(27,'Can delete api key',7,'delete_apikey'),(28,'Can view api key',7,'view_apikey'),(29,'Can add rand num type',8,'add_randnumtype'),(30,'Can change rand num type',8,'change_randnumtype'),(31,'Can delete rand num type',8,'delete_randnumtype'),(32,'Can view rand num type',8,'view_randnumtype'),(33,'Can add game info',9,'add_gameinfo'),(34,'Can change game info',9,'change_gameinfo'),(35,'Can delete game info',9,'delete_gameinfo'),(36,'Can view game info',9,'view_gameinfo'),(37,'Can add DrawTime',10,'add_drawtime'),(38,'Can change DrawTime',10,'change_drawtime'),(39,'Can delete DrawTime',10,'delete_drawtime'),(40,'Can view DrawTime',10,'view_drawtime');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$SAmD2PWessvIrrNb0GkF3z$5CW2bsGXwuZ9rqjFUYGMZsbNnuXJFgCWBsngsaelCaU=','2022-06-25 12:27:17.242033',1,'justin','','','got0247241858@gmail.com',1,1,'2022-05-24 12:21:02.250503'),(2,'pbkdf2_sha256$320000$ullhljliJhbQQida0aNw2N$wUpuhc9pD2LM9w/+GI/kh0/B6/ggkrAHUlVxwQP1Y7g=','2022-06-25 11:26:05.376717',1,'daveotengo','','','daveotengo@gmail.com',1,1,'2022-05-24 12:22:07.898825');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-05-24 12:53:56.543056','1','1',1,'[{\"added\": {}}]',8,2),(2,'2022-05-24 12:55:09.980715','2','2',1,'[{\"added\": {}}]',8,2),(3,'2022-05-24 12:55:58.102096','3','3',1,'[{\"added\": {}}]',8,2),(4,'2022-05-24 12:57:49.400210','4','4',1,'[{\"added\": {}}]',8,2),(5,'2022-05-24 12:58:21.324241','5','5',1,'[{\"added\": {}}]',8,2),(6,'2022-05-24 13:01:41.486538','1','10001',1,'[{\"added\": {}}]',9,2),(7,'2022-05-24 13:40:50.970702','2','10002',1,'[{\"added\": {}}]',9,1),(8,'2022-05-24 13:43:46.805626','3','10003',1,'[{\"added\": {}}]',9,1),(9,'2022-05-24 13:44:49.636387','4','10004',1,'[{\"added\": {}}]',9,1),(10,'2022-05-24 13:45:25.622263','5','10005',1,'[{\"added\": {}}]',9,1),(11,'2022-05-24 13:46:27.799275','6','10006',1,'[{\"added\": {}}]',9,1),(12,'2022-05-24 13:50:26.762364','7','10031',1,'[{\"added\": {}}]',9,1),(13,'2022-05-24 13:51:27.385893','8','10032',1,'[{\"added\": {}}]',9,1),(14,'2022-05-24 13:52:13.268147','9','10033',1,'[{\"added\": {}}]',9,1),(15,'2022-05-24 13:53:27.307293','10','10051',1,'[{\"added\": {}}]',9,1),(16,'2022-05-24 13:54:48.107267','11','10007',1,'[{\"added\": {}}]',9,1),(17,'2022-05-24 15:42:04.845744','0871daa0-4ef3-41ac-a8fd-fdedfef2a31a','test',1,'[{\"added\": {}}]',7,2),(18,'2022-05-24 16:14:27.147880','719ae0d2-5757-4d57-b8ec-cb4443740b8f','sysClient',1,'[{\"added\": {}}]',7,2),(19,'2022-05-26 12:16:06.951669','1','10001',2,'[{\"changed\": {\"fields\": [\"Hash\"]}}]',9,2),(20,'2022-05-26 14:15:53.250693','1','10001',2,'[]',9,1),(21,'2022-05-26 14:18:51.424599','1','10001',2,'[{\"changed\": {\"fields\": [\"Hash\"]}}]',9,1),(22,'2022-05-26 14:31:42.971112','2','10002',2,'[]',9,1),(23,'2022-05-26 15:00:49.686570','7','10008',2,'[{\"changed\": {\"fields\": [\"Seconds per issue\", \"Total num of issue\", \"Enable\", \"Start stop time\", \"End stop time\", \"Rand num type\", \"Min interval\"]}}]',9,1),(24,'2022-05-26 15:05:27.628012','8','10009',2,'[{\"changed\": {\"fields\": [\"Hash\"]}}]',9,1),(25,'2022-05-31 09:58:52.351357','6','10006',2,'[]',9,2),(26,'2022-05-31 10:00:14.117661','6','10006',2,'[{\"changed\": {\"fields\": [\"Hash\", \"Name\", \"Total num of issue\"]}}]',9,1),(27,'2022-05-31 10:04:12.181520','11','10007',2,'[{\"changed\": {\"fields\": [\"Total num of issue\"]}}]',9,1),(28,'2022-05-31 10:04:47.989046','7','10008',2,'[{\"changed\": {\"fields\": [\"Seconds per issue\"]}}]',9,1),(29,'2022-05-31 10:11:30.154670','10','10011',2,'[{\"changed\": {\"fields\": [\"Total num of issue\"]}}]',9,1),(30,'2022-05-31 10:33:24.018421','7','10008',2,'[{\"changed\": {\"fields\": [\"Total num of issue\"]}}]',9,1),(31,'2022-05-31 10:37:07.787327','6','10006',2,'[{\"changed\": {\"fields\": [\"Total num of issue\"]}}]',9,1),(32,'2022-05-31 11:59:50.524135','3','10003',2,'[{\"changed\": {\"fields\": [\"Ip\"]}}]',9,1),(33,'2022-05-31 12:01:50.124014','3','10003',2,'[{\"changed\": {\"fields\": [\"Ip\"]}}]',9,1),(34,'2022-05-31 12:07:10.687040','3','10003',2,'[{\"changed\": {\"fields\": [\"Enable\"]}}]',9,1),(35,'2022-05-31 12:10:15.540042','2','10002',2,'[{\"changed\": {\"fields\": [\"Enable\"]}}]',9,1),(36,'2022-05-31 12:10:49.257962','4','10004',2,'[{\"changed\": {\"fields\": [\"Enable\"]}}]',9,1),(37,'2022-05-31 12:11:00.585750','5','10005',2,'[{\"changed\": {\"fields\": [\"Enable\"]}}]',9,1),(38,'2022-05-31 12:11:07.822182','6','10006',2,'[{\"changed\": {\"fields\": [\"Enable\"]}}]',9,1),(39,'2022-05-31 12:14:33.591601','8','10009',2,'[{\"changed\": {\"fields\": [\"Enable\"]}}]',9,1),(40,'2022-05-31 12:44:43.508361','9','10010',2,'[{\"changed\": {\"fields\": [\"Enable\"]}}]',9,1),(41,'2022-05-31 12:44:49.838221','10','10011',2,'[{\"changed\": {\"fields\": [\"Enable\"]}}]',9,1),(42,'2022-05-31 13:24:38.392413','3','10003',2,'[{\"changed\": {\"fields\": [\"Start stop time\", \"End stop time\"]}}]',9,2),(43,'2022-05-31 13:41:36.378925','4','10004',2,'[{\"changed\": {\"fields\": [\"Seconds per issue\", \"Start stop time\", \"End stop time\", \"Std seconds\"]}}]',9,2),(44,'2022-05-31 13:42:28.571370','11','10007',2,'[{\"changed\": {\"fields\": [\"Enable\"]}}]',9,1),(45,'2022-05-31 14:01:59.960350','5','10005',2,'[{\"changed\": {\"fields\": [\"Start stop time\", \"End stop time\"]}}]',9,2),(46,'2022-05-31 14:09:07.533165','5','10005',2,'[{\"changed\": {\"fields\": [\"Seconds per issue\", \"Min interval\"]}}]',9,2),(47,'2022-05-31 14:19:37.219181','6','10006',2,'[{\"changed\": {\"fields\": [\"Seconds per issue\", \"Start stop time\", \"End stop time\", \"Std seconds\"]}}]',9,2),(48,'2022-05-31 14:26:23.146660','8','10009',2,'[{\"changed\": {\"fields\": [\"Rand num type\", \"Min interval\"]}}]',9,1),(49,'2022-05-31 14:26:34.507476','9','10010',2,'[{\"changed\": {\"fields\": [\"Rand num type\", \"Min interval\"]}}]',9,1),(50,'2022-05-31 15:29:04.100694','7','10008',2,'[{\"changed\": {\"fields\": [\"Seconds per issue\", \"Min interval\", \"Std seconds\"]}}]',9,2),(51,'2022-05-31 15:45:15.705267','8','10009',2,'[{\"changed\": {\"fields\": [\"Seconds per issue\", \"Start stop time\", \"End stop time\", \"Min interval\", \"Std seconds\"]}}]',9,2),(52,'2022-05-31 15:48:11.748511','8','10009',2,'[{\"changed\": {\"fields\": [\"Hash\"]}}]',9,1),(53,'2022-05-31 16:15:17.172218','9','10010',2,'[{\"changed\": {\"fields\": [\"Seconds per issue\", \"Start stop time\", \"End stop time\", \"Min interval\"]}}]',9,2),(54,'2022-05-31 16:24:32.530298','2','10002',2,'[{\"changed\": {\"fields\": [\"Total num of issue\"]}}]',9,1),(55,'2022-05-31 16:25:47.351097','2','10002',2,'[{\"changed\": {\"fields\": [\"Last insert time\", \"Start stop time\"]}}]',9,1),(56,'2022-05-31 16:26:02.818202','2','10002',2,'[{\"changed\": {\"fields\": [\"Last insert time\", \"Start stop time\", \"End stop time\"]}}]',9,1),(57,'2022-06-01 12:23:28.166704','2','10002',2,'[{\"changed\": {\"fields\": [\"Seconds per issue\", \"Min interval\"]}}]',9,2),(58,'2022-06-15 12:14:43.074221','12','10015',1,'[{\"added\": {}}]',9,1),(59,'2022-06-15 12:18:37.162880','13','10016',1,'[{\"added\": {}}]',9,1),(60,'2022-06-15 12:19:33.574060','13','10016',2,'[{\"changed\": {\"fields\": [\"Std seconds\"]}}]',9,1),(61,'2022-06-15 15:08:19.859875','1','10001',2,'[{\"changed\": {\"fields\": [\"Total num of issue\", \"Start stop time\", \"End stop time\"]}}]',9,1),(62,'2022-06-15 15:29:54.360935','12','10015',2,'[{\"changed\": {\"fields\": [\"Start stop time\", \"End stop time\"]}}]',9,2),(63,'2022-06-15 17:30:44.006504','12','10015',2,'[{\"changed\": {\"fields\": [\"Total num of issue\"]}}]',9,2),(64,'2022-06-15 17:31:42.170327','12','10015',2,'[]',9,2),(65,'2022-06-23 13:52:27.989939','10','10011',2,'[{\"changed\": {\"fields\": [\"Total num of issue\", \"Start stop time\", \"End stop time\"]}}]',9,1),(66,'2022-06-23 13:52:52.649655','10','10011',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(67,'2022-06-23 13:54:17.910827','10','10011',2,'[{\"changed\": {\"fields\": [\"Std seconds\"]}}]',9,1),(68,'2022-06-23 16:27:16.491349','10','10011',2,'[{\"changed\": {\"fields\": [\"Seconds per issue\"]}}]',9,2),(69,'2022-06-24 14:51:08.013680','10','10011',2,'[{\"changed\": {\"fields\": [\"Rand num type\"]}}]',9,2),(70,'2022-06-25 12:28:29.263229','1','10001',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(71,'2022-06-25 12:30:37.806317','2','10002',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(72,'2022-06-25 12:30:52.951349','3','10003',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(73,'2022-06-25 12:31:05.122995','4','10004',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(74,'2022-06-25 12:31:52.789334','5','10005',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(75,'2022-06-25 12:32:04.723557','6','10006',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(76,'2022-06-25 12:39:33.034219','7','10008',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(77,'2022-06-25 12:39:50.482718','8','10009',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(78,'2022-06-25 12:40:01.611176','9','10010',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(79,'2022-06-25 12:40:12.893178','11','10007',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(80,'2022-06-25 12:42:49.367415','02ce0453-ed37-49d6-9571-034ccf11c3e6','water',1,'[{\"added\": {}}]',7,2),(81,'2022-06-25 13:18:56.701854','02ce0453-ed37-49d6-9571-034ccf11c3e6','water',2,'[{\"changed\": {\"fields\": [\"Ip\"]}}]',7,2),(82,'2022-06-25 14:13:27.832607','12','10015',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(83,'2022-06-25 14:13:37.142880','13','10016',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',9,1),(84,'2022-06-26 14:23:02.706139','10','10011',2,'[{\"changed\": {\"fields\": [\"Min interval\"]}}]',9,1),(85,'2022-06-26 17:14:03.834994','10','10011',2,'[{\"changed\": {\"fields\": [\"Rand num type\", \"Min interval\"]}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'draw_time','drawtime'),(9,'game_info','gameinfo'),(8,'rand_num_type','randnumtype'),(7,'rest_framework_api_key','apikey'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-05-24 11:49:07.158833'),(2,'auth','0001_initial','2022-05-24 11:49:08.147534'),(3,'admin','0001_initial','2022-05-24 11:49:08.350432'),(4,'admin','0002_logentry_remove_auto_add','2022-05-24 11:49:08.359676'),(5,'admin','0003_logentry_add_action_flag_choices','2022-05-24 11:49:08.369455'),(6,'contenttypes','0002_remove_content_type_name','2022-05-24 11:49:08.747944'),(7,'auth','0002_alter_permission_name_max_length','2022-05-24 11:49:08.834495'),(8,'auth','0003_alter_user_email_max_length','2022-05-24 11:49:08.868804'),(9,'auth','0004_alter_user_username_opts','2022-05-24 11:49:08.880207'),(10,'auth','0005_alter_user_last_login_null','2022-05-24 11:49:08.949114'),(11,'auth','0006_require_contenttypes_0002','2022-05-24 11:49:08.954798'),(12,'auth','0007_alter_validators_add_error_messages','2022-05-24 11:49:08.964636'),(13,'auth','0008_alter_user_username_max_length','2022-05-24 11:49:09.052476'),(14,'auth','0009_alter_user_last_name_max_length','2022-05-24 11:49:09.148273'),(15,'auth','0010_alter_group_name_max_length','2022-05-24 11:49:09.184925'),(16,'auth','0011_update_proxy_permissions','2022-05-24 11:49:09.198577'),(17,'auth','0012_alter_user_first_name_max_length','2022-05-24 11:49:09.494348'),(18,'rand_num_type','0001_initial','2022-05-24 11:49:09.619328'),(19,'game_info','0001_initial','2022-05-24 11:49:09.749649'),(20,'rest_framework_api_key','0001_initial','2022-05-24 11:49:09.792406'),(21,'sessions','0001_initial','2022-05-24 11:49:09.843739'),(22,'draw_time','0001_initial','2022-06-25 11:24:58.338752');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9ogjpg6pbp0fa956oxc2260g5xibaoqi','.eJxVjDsOwjAQBe_iGln-ybCU9JzBWu96cQDZUpxUiLtDpBTQvpl5L5VwXWpaR5nTxOqsrDr8bhnpUdoG-I7t1jX1tsxT1puidzr0tXN5Xnb376DiqN-6eHYxWzkZx4IQnPccjiEakGgleGN8JHAEgg4IRUiAAgFGx1GY1fsD3Xo4aw:1o4ijk:_zThicmuziBpR8BLDfPjIbfFKOgVvrxwH3oGnrPofMM','2022-07-08 12:48:36.227284'),('cqm7c6og0bs8n0se0pm0jhgxr0nzh4yj','.eJxVjDEOwjAMRe-SGUWN0xiHkZ0zRI5jSAG1UtNOiLtDpQ6w_vfef5nE61LT2nROQzEnA-bwu2WWh44bKHceb5OVaVzmIdtNsTtt9jIVfZ539--gcqvfOlIIJWomyoSKnoA09NkJ41FUBACU0XtBLJEDRd8Rhi4D9M5dkc37A9ugN1c:1o1UMb:wHGvJa3M8HiUfsq9dT1o8gXYzaatiepqOkjeEcFaKBU','2022-06-29 14:51:21.450434'),('eg8ggxxkd2vn5id3r1xca1c5gri1xvsv','.eJxVjDsOwjAQBe_iGln-ybCU9JzBWu96cQDZUpxUiLtDpBTQvpl5L5VwXWpaR5nTxOqsrDr8bhnpUdoG-I7t1jX1tsxT1puidzr0tXN5Xnb376DiqN-6eHYxWzkZx4IQnPccjiEakGgleGN8JHAEgg4IRUiAAgFGx1GY1fsD3Xo4aw:1o54sf:DcKIgGxx_nJsWBhgaieWw5lcWDV9rTETZpLtAqs51qc','2022-07-09 12:27:17.242033'),('g2vvaftm8uo5eamridqu4florgj5m77c','.eJxVjDsOwjAQBe_iGln-ybCU9JzBWu96cQDZUpxUiLtDpBTQvpl5L5VwXWpaR5nTxOqsrDr8bhnpUdoG-I7t1jX1tsxT1puidzr0tXN5Xnb376DiqN-6eHYxWzkZx4IQnPccjiEakGgleGN8JHAEgg4IRUiAAgFGx1GY1fsD3Xo4aw:1o1Rrd:chqBBQbVCF6TywyGcnCMrNysammsXNpA7oK6fTE4j1I','2022-06-29 12:11:13.319176'),('gu0g3u59umorw5dlea0iltg7i3i625ku','.eJxVjDEOwjAMRe-SGUWN0xiHkZ0zRI5jSAG1UtNOiLtDpQ6w_vfef5nE61LT2nROQzEnA-bwu2WWh44bKHceb5OVaVzmIdtNsTtt9jIVfZ539--gcqvfOlIIJWomyoSKnoA09NkJ41FUBACU0XtBLJEDRd8Rhi4D9M5dkc37A9ugN1c:1o53vR:2qLCaJ8llTH5Xs-uc1oZFj1PUDYS7fQ1fEfWajpCtH0','2022-07-09 11:26:05.381617'),('gud6rv1ievpm22vcz0ewcccjh5gig6t3','.eJxVjDEOwjAMRe-SGUWN0xiHkZ0zRI5jSAG1UtNOiLtDpQ6w_vfef5nE61LT2nROQzEnA-bwu2WWh44bKHceb5OVaVzmIdtNsTtt9jIVfZ539--gcqvfOlIIJWomyoSKnoA09NkJ41FUBACU0XtBLJEDRd8Rhi4D9M5dkc37A9ugN1c:1o4ke1:b8o6z0mVOv16us0vEHvTOOzyk67WaZvSw7k_DbiH_is','2022-07-08 14:50:49.539458'),('nbfv797eqsoidw6moy0ox2bqfed5wpy2','.eJxVjDsOwjAQBe_iGln-ybCU9JzBWu96cQDZUpxUiLtDpBTQvpl5L5VwXWpaR5nTxOqsrDr8bhnpUdoG-I7t1jX1tsxT1puidzr0tXN5Xnb376DiqN-6eHYxWzkZx4IQnPccjiEakGgleGN8JHAEgg4IRUiAAgFGx1GY1fsD3Xo4aw:1nyXyu:1baU_EpPL5njD3Iod-kEt4Jvu_eqk0JvmaByb-Stx08','2022-06-21 12:06:44.276756'),('oebj5z2xq36jrpuyzcvc6z0kws8len8z','.eJxVjDEOwjAMRe-SGUWN0xiHkZ0zRI5jSAG1UtNOiLtDpQ6w_vfef5nE61LT2nROQzEnA-bwu2WWh44bKHceb5OVaVzmIdtNsTtt9jIVfZ539--gcqvfOlIIJWomyoSKnoA09NkJ41FUBACU0XtBLJEDRd8Rhi4D9M5dkc37A9ugN1c:1nvyQy:y5f7_40YpxQc9JfNDgUViMYv_EEaarDsXiLITElMjcw','2022-06-14 09:45:04.889136'),('rk2ufiqb355opc7cr9rfpaz8zez3j0fr','.eJxVjDsOwjAQBe_iGln-ybCU9JzBWu96cQDZUpxUiLtDpBTQvpl5L5VwXWpaR5nTxOqsrDr8bhnpUdoG-I7t1jX1tsxT1puidzr0tXN5Xnb376DiqN-6eHYxWzkZx4IQnPccjiEakGgleGN8JHAEgg4IRUiAAgFGx1GY1fsD3Xo4aw:1ntTai:q7ShKWq21MauEeB91qqMvCYJIKRvwoC9ZBX_05-W7DI','2022-06-07 12:24:48.980928'),('sg3vqu6bcbcs6rhimzf0hhzqaz7t725t','.eJxVjDEOwjAMRe-SGUWN0xiHkZ0zRI5jSAG1UtNOiLtDpQ6w_vfef5nE61LT2nROQzEnA-bwu2WWh44bKHceb5OVaVzmIdtNsTtt9jIVfZ539--gcqvfOlIIJWomyoSKnoA09NkJ41FUBACU0XtBLJEDRd8Rhi4D9M5dkc37A9ugN1c:1ntTYq:SlOYoCV3Axr2XbQiF3rn0Gy9pTj3A7xaIBhP9M_371w','2022-06-07 12:22:52.782454'),('wim0yvo9qqlmgv4zsbixaqbq8q4ejupv','.eJxVjDEOwjAMRe-SGUWN0xiHkZ0zRI5jSAG1UtNOiLtDpQ6w_vfef5nE61LT2nROQzEnA-bwu2WWh44bKHceb5OVaVzmIdtNsTtt9jIVfZ539--gcqvfOlIIJWomyoSKnoA09NkJ41FUBACU0XtBLJEDRd8Rhi4D9M5dkc37A9ugN1c:1ntTtM:TFbw34bGodn8OW2UyFIKT5wGslU05SXm4cEIrXCLGBA','2022-06-07 12:44:04.185296');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_info`
--

DROP TABLE IF EXISTS `game_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `game_id` varchar(50) NOT NULL,
  `hash` varchar(225) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `port` varchar(30) NOT NULL,
  `seconds_per_issue` varchar(10) NOT NULL,
  `total_num_of_issue` varchar(225) NOT NULL,
  `enable` int NOT NULL,
  `last_insert_date` varchar(30) DEFAULT NULL,
  `last_insert_time` varchar(30) DEFAULT NULL,
  `start_stop_time` varchar(30) DEFAULT NULL,
  `end_stop_time` varchar(30) DEFAULT NULL,
  `min_interval` int NOT NULL,
  `std_seconds` int NOT NULL,
  `rand_num_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `game_info_rand_num_type_id_962cf6ce_fk_rand_num_type_id` (`rand_num_type_id`),
  CONSTRAINT `game_info_rand_num_type_id_962cf6ce_fk_rand_num_type_id` FOREIGN KEY (`rand_num_type_id`) REFERENCES `rand_num_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_info`
--

LOCK TABLES `game_info` WRITE;
/*!40000 ALTER TABLE `game_info` DISABLE KEYS */;
INSERT INTO `game_info` VALUES (1,'10001','a73fd8ea9f04f980a8a0654cb39e0303','127.0.0.1','河内分分','2020','60','1380',1,NULL,NULL,'05:00:00','05:59:00',1,0,1),(2,'10002','167fd8e4c6bf356018828154e72b400d','127.0.0.1','河内5分','2020','300','276',1,NULL,NULL,'05:00:00','05:59:00',5,0,1),(3,'10003','fd5552b3d4b382120362f1ac3fa73d23','127.0.0.1','腾讯分分','2020','60','1380',1,NULL,NULL,'05:00:00','05:59:00',1,0,1),(4,'10004','7b3fb44d4bc2d5c5d8cd25891ba6e32c','127.0.0.1','极速1.5分','2020','90','920',1,NULL,NULL,'05:00:00','05:59:00',1,30,1),(5,'10005','d8a5ea3dbdb794b820ca8d860c4bcdb4','127.0.0.1','吉利3分','2020','180','460',1,NULL,NULL,'05:00:00','05:59:00',3,0,1),(6,'10006','724e4c18bf7a0290fcdc1342ebc775b6','127.0.0.1','乐利1.5分','2020','90','920',1,NULL,NULL,'05:00:00','05:59:00',1,30,1),(7,'10008','58024739a4fcccb1feb3935097294ce0','127.0.0.1','极速快三1.5分','2020','90','920',1,NULL,NULL,'05:00:00','05:59:00',1,30,3),(8,'10009','ddc47804c184e4e56fa67eb4c662a0d9','127.0.0.1','江苏快三1.5分','2020','90','920',1,NULL,NULL,'05:00:00','05:59:00',1,30,3),(9,'10010','f7ab469d1dc79166fc874dadcc0dd854','127.0.0.1','极速快三3分','2020','180','460',1,NULL,NULL,'05:00:00','05:59:00',3,0,3),(10,'10011','2ecfddb61558f48a090392026dc18fe4','127.0.0.1','pc28','2020','90','920',1,NULL,NULL,'05:00:00','05:59:00',1,30,2),(11,'10007','a73fd8ea9f04f980a8a0654cb39e0908','127.0.0.1','幸运排五','2020','60','1',1,NULL,NULL,NULL,NULL,1,0,1),(12,'10015','167fd8e4c6bf356018828154e72b800d','127.0.0.1','奇趣分分','2020','60','1380',1,NULL,NULL,'05:00:00','05:59:00',1,0,1),(13,'10016','167fd8e4c6bf356018828154e72b900d','127.0.0.1','福彩3D','2020','90','920',1,NULL,NULL,'05:00:00','05:59:00',1,30,3);
/*!40000 ALTER TABLE `game_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rand_num_type`
--

DROP TABLE IF EXISTS `rand_num_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rand_num_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `num_of_positions` varchar(10) NOT NULL,
  `rand_range` varchar(10) NOT NULL,
  `rand_type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rand_num_type`
--

LOCK TABLES `rand_num_type` WRITE;
/*!40000 ALTER TABLE `rand_num_type` DISABLE KEYS */;
INSERT INTO `rand_num_type` VALUES (1,'5','0-9','5d10'),(2,'3','0-9','3d10'),(3,'3','1-6','3d6'),(4,'5','1-11','1x11'),(5,'10','1-10','pk10');
/*!40000 ALTER TABLE `rand_num_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rest_framework_api_key_apikey`
--

DROP TABLE IF EXISTS `rest_framework_api_key_apikey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rest_framework_api_key_apikey` (
  `id` char(32) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `key` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `key` (`key`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rest_framework_api_key_apikey`
--

LOCK TABLES `rest_framework_api_key_apikey` WRITE;
/*!40000 ALTER TABLE `rest_framework_api_key_apikey` DISABLE KEYS */;
INSERT INTO `rest_framework_api_key_apikey` VALUES ('02ce0453ed3749d69571034ccf11c3e6','2022-06-25 12:42:48.957600','2022-06-25 13:18:56.326909','water','8aa3ba7837451dd5b140da2986b61e1b5090792c','154.39.158.16'),('0871daa04ef341aca8fdfdedfef2a31a','2022-05-24 15:42:04.445949','2022-05-24 15:42:04.445949','test','540bfda38a6564425017282b073d7f524bcde5c2','0.0.0.0'),('719ae0d257574d57b8eccb4443740b8f','2022-05-24 16:14:26.800994','2022-05-24 16:14:26.801991','sysClient','797fd54e81cafd9b9ffabf8e4bcbf44c2b572f98','1.1.1.1');
/*!40000 ALTER TABLE `rest_framework_api_key_apikey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-29  9:53:21
