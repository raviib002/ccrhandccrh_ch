-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ccrhtest
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can use Structure mode',1,'use_structure'),(2,'Can change page',2,'change_page'),(3,'Can add log entry',3,'add_logentry'),(4,'Can change log entry',3,'change_logentry'),(5,'Can delete log entry',3,'delete_logentry'),(6,'Can view log entry',3,'view_logentry'),(7,'Can add permission',4,'add_permission'),(8,'Can change permission',4,'change_permission'),(9,'Can delete permission',4,'delete_permission'),(10,'Can view permission',4,'view_permission'),(11,'Can add group',5,'add_group'),(12,'Can change group',5,'change_group'),(13,'Can delete group',5,'delete_group'),(14,'Can view group',5,'view_group'),(15,'Can add user',6,'add_user'),(16,'Can change user',6,'change_user'),(17,'Can delete user',6,'delete_user'),(18,'Can view user',6,'view_user'),(19,'Can add content type',7,'add_contenttype'),(20,'Can change content type',7,'change_contenttype'),(21,'Can delete content type',7,'delete_contenttype'),(22,'Can view content type',7,'view_contenttype'),(23,'Can add site',8,'add_site'),(24,'Can change site',8,'change_site'),(25,'Can delete site',8,'delete_site'),(26,'Can view site',8,'view_site'),(27,'Can add cms plugin',9,'add_cmsplugin'),(28,'Can change cms plugin',9,'change_cmsplugin'),(29,'Can delete cms plugin',9,'delete_cmsplugin'),(30,'Can view cms plugin',9,'view_cmsplugin'),(31,'Can add alias plugin model',10,'add_aliaspluginmodel'),(32,'Can change alias plugin model',10,'change_aliaspluginmodel'),(33,'Can delete alias plugin model',10,'delete_aliaspluginmodel'),(34,'Can view alias plugin model',10,'view_aliaspluginmodel'),(35,'Can add Page global permission',11,'add_globalpagepermission'),(36,'Can change Page global permission',11,'change_globalpagepermission'),(37,'Can delete Page global permission',11,'delete_globalpagepermission'),(38,'Can view Page global permission',11,'view_globalpagepermission'),(39,'Can add page',2,'add_page'),(40,'Can delete page',2,'delete_page'),(41,'Can view page',2,'view_page'),(42,'Can publish page',2,'publish_page'),(43,'Can edit static placeholders',2,'edit_static_placeholder'),(44,'Can add Page permission',12,'add_pagepermission'),(45,'Can change Page permission',12,'change_pagepermission'),(46,'Can delete Page permission',12,'delete_pagepermission'),(47,'Can view Page permission',12,'view_pagepermission'),(48,'Can add User (page)',13,'add_pageuser'),(49,'Can change User (page)',13,'change_pageuser'),(50,'Can delete User (page)',13,'delete_pageuser'),(51,'Can view User (page)',13,'view_pageuser'),(52,'Can add User group (page)',14,'add_pageusergroup'),(53,'Can change User group (page)',14,'change_pageusergroup'),(54,'Can delete User group (page)',14,'delete_pageusergroup'),(55,'Can view User group (page)',14,'view_pageusergroup'),(56,'Can add placeholder',1,'add_placeholder'),(57,'Can change placeholder',1,'change_placeholder'),(58,'Can delete placeholder',1,'delete_placeholder'),(59,'Can view placeholder',1,'view_placeholder'),(60,'Can add placeholder reference',15,'add_placeholderreference'),(61,'Can change placeholder reference',15,'change_placeholderreference'),(62,'Can delete placeholder reference',15,'delete_placeholderreference'),(63,'Can view placeholder reference',15,'view_placeholderreference'),(64,'Can add static placeholder',16,'add_staticplaceholder'),(65,'Can change static placeholder',16,'change_staticplaceholder'),(66,'Can delete static placeholder',16,'delete_staticplaceholder'),(67,'Can view static placeholder',16,'view_staticplaceholder'),(68,'Can add title',17,'add_title'),(69,'Can change title',17,'change_title'),(70,'Can delete title',17,'delete_title'),(71,'Can view title',17,'view_title'),(72,'Can add user setting',18,'add_usersettings'),(73,'Can change user setting',18,'change_usersettings'),(74,'Can delete user setting',18,'delete_usersettings'),(75,'Can view user setting',18,'view_usersettings'),(76,'Can add urlconf revision',19,'add_urlconfrevision'),(77,'Can change urlconf revision',19,'change_urlconfrevision'),(78,'Can delete urlconf revision',19,'delete_urlconfrevision'),(79,'Can view urlconf revision',19,'view_urlconfrevision'),(80,'Can add QuickLink',22,'add_quicklink'),(81,'Can change QuickLink',22,'change_quicklink'),(82,'Can delete QuickLink',22,'delete_quicklink'),(83,'Can view QuickLink',22,'view_quicklink'),(84,'Can add News',23,'add_news'),(85,'Can change News',23,'change_news'),(86,'Can delete News',23,'delete_news'),(87,'Can view News',23,'view_news'),(88,'Can add Media',24,'add_media'),(89,'Can change Media',24,'change_media'),(90,'Can delete Media',24,'delete_media'),(91,'Can view Media',24,'view_media'),(92,'Can add Downloads',25,'add_downloads'),(93,'Can change Downloads',25,'change_downloads'),(94,'Can delete Downloads',25,'delete_downloads'),(95,'Can view Downloads',25,'view_downloads'),(96,'Can add media plugin model',26,'add_mediapluginmodel'),(97,'Can change media plugin model',26,'change_mediapluginmodel'),(98,'Can delete media plugin model',26,'delete_mediapluginmodel'),(99,'Can view media plugin model',26,'view_mediapluginmodel'),(100,'Can add session',27,'add_session'),(101,'Can change session',27,'change_session'),(102,'Can delete session',27,'delete_session'),(103,'Can view session',27,'view_session'),(104,'Can add cache key',28,'add_cachekey'),(105,'Can change cache key',28,'change_cachekey'),(106,'Can delete cache key',28,'delete_cachekey'),(107,'Can view cache key',28,'view_cachekey'),(108,'Can add text',29,'add_text'),(109,'Can change text',29,'change_text'),(110,'Can delete text',29,'delete_text'),(111,'Can view text',29,'view_text'),(112,'Can add clipboard',30,'add_clipboard'),(113,'Can change clipboard',30,'change_clipboard'),(114,'Can delete clipboard',30,'delete_clipboard'),(115,'Can view clipboard',30,'view_clipboard'),(116,'Can add clipboard item',31,'add_clipboarditem'),(117,'Can change clipboard item',31,'change_clipboarditem'),(118,'Can delete clipboard item',31,'delete_clipboarditem'),(119,'Can view clipboard item',31,'view_clipboarditem'),(120,'Can add file',32,'add_file'),(121,'Can change file',32,'change_file'),(122,'Can delete file',32,'delete_file'),(123,'Can view file',32,'view_file'),(124,'Can add Folder',33,'add_folder'),(125,'Can change Folder',33,'change_folder'),(126,'Can delete Folder',33,'delete_folder'),(127,'Can view Folder',33,'view_folder'),(128,'Can use directory listing',33,'can_use_directory_listing'),(129,'Can add folder permission',34,'add_folderpermission'),(130,'Can change folder permission',34,'change_folderpermission'),(131,'Can delete folder permission',34,'delete_folderpermission'),(132,'Can view folder permission',34,'view_folderpermission'),(133,'Can add image',35,'add_image'),(134,'Can change image',35,'change_image'),(135,'Can delete image',35,'delete_image'),(136,'Can view image',35,'view_image'),(137,'Can add thumbnail option',36,'add_thumbnailoption'),(138,'Can change thumbnail option',36,'change_thumbnailoption'),(139,'Can delete thumbnail option',36,'delete_thumbnailoption'),(140,'Can view thumbnail option',36,'view_thumbnailoption'),(141,'Can add source',37,'add_source'),(142,'Can change source',37,'change_source'),(143,'Can delete source',37,'delete_source'),(144,'Can view source',37,'view_source'),(145,'Can add thumbnail',38,'add_thumbnail'),(146,'Can change thumbnail',38,'change_thumbnail'),(147,'Can delete thumbnail',38,'delete_thumbnail'),(148,'Can view thumbnail',38,'view_thumbnail'),(149,'Can add thumbnail dimensions',39,'add_thumbnaildimensions'),(150,'Can change thumbnail dimensions',39,'change_thumbnaildimensions'),(151,'Can delete thumbnail dimensions',39,'delete_thumbnaildimensions'),(152,'Can view thumbnail dimensions',39,'view_thumbnaildimensions'),(153,'Can add link',40,'add_link'),(154,'Can change link',40,'change_link'),(155,'Can delete link',40,'delete_link'),(156,'Can view link',40,'view_link'),(157,'Can add Snippet',41,'add_snippet'),(158,'Can change Snippet',41,'change_snippet'),(159,'Can delete Snippet',41,'delete_snippet'),(160,'Can view Snippet',41,'view_snippet'),(161,'Can add Snippet Ptr',42,'add_snippetptr'),(162,'Can change Snippet Ptr',42,'change_snippetptr'),(163,'Can delete Snippet Ptr',42,'delete_snippetptr'),(164,'Can view Snippet Ptr',42,'view_snippetptr'),(165,'Can add google map',43,'add_googlemap'),(166,'Can change google map',43,'change_googlemap'),(167,'Can delete google map',43,'delete_googlemap'),(168,'Can view google map',43,'view_googlemap'),(169,'Can add google map marker',44,'add_googlemapmarker'),(170,'Can change google map marker',44,'change_googlemapmarker'),(171,'Can delete google map marker',44,'delete_googlemapmarker'),(172,'Can view google map marker',44,'view_googlemapmarker'),(173,'Can add google map route',45,'add_googlemaproute'),(174,'Can change google map route',45,'change_googlemaproute'),(175,'Can delete google map route',45,'delete_googlemaproute'),(176,'Can view google map route',45,'view_googlemaproute'),(177,'Can add style',46,'add_style'),(178,'Can change style',46,'change_style'),(179,'Can delete style',46,'delete_style'),(180,'Can view style',46,'view_style'),(181,'Can add file',47,'add_file'),(182,'Can change file',47,'change_file'),(183,'Can delete file',47,'delete_file'),(184,'Can view file',47,'view_file'),(185,'Can add folder',48,'add_folder'),(186,'Can change folder',48,'change_folder'),(187,'Can delete folder',48,'delete_folder'),(188,'Can view folder',48,'view_folder'),(189,'Can add picture',49,'add_picture'),(190,'Can change picture',49,'change_picture'),(191,'Can delete picture',49,'delete_picture'),(192,'Can view picture',49,'view_picture'),(193,'Can add video player',50,'add_videoplayer'),(194,'Can change video player',50,'change_videoplayer'),(195,'Can delete video player',50,'delete_videoplayer'),(196,'Can view video player',50,'view_videoplayer'),(197,'Can add video source',51,'add_videosource'),(198,'Can change video source',51,'change_videosource'),(199,'Can delete video source',51,'delete_videosource'),(200,'Can view video source',51,'view_videosource'),(201,'Can add video track',52,'add_videotrack'),(202,'Can change video track',52,'change_videotrack'),(203,'Can delete video track',52,'delete_videotrack'),(204,'Can view video track',52,'view_videotrack'),(205,'Can add form',53,'add_form'),(206,'Can change form',53,'change_form'),(207,'Can delete form',53,'delete_form'),(208,'Can view form',53,'view_form'),(209,'Can add form',54,'add_formdefinition'),(210,'Can change form',54,'change_formdefinition'),(211,'Can delete form',54,'delete_formdefinition'),(212,'Can view form',54,'view_formdefinition'),(213,'Can add form submission',55,'add_formsubmission'),(214,'Can change form submission',55,'change_formsubmission'),(215,'Can delete form submission',55,'delete_formsubmission'),(216,'Can view form submission',55,'view_formsubmission'),(217,'Can export Form Submission',55,'export_formsubmission'),(218,'Can add field',56,'add_formfield'),(219,'Can change field',56,'change_formfield'),(220,'Can delete field',56,'delete_formfield'),(221,'Can view field',56,'view_formfield'),(222,'Can add Page meta info (all languages)',57,'add_pagemeta'),(223,'Can change Page meta info (all languages)',57,'change_pagemeta'),(224,'Can delete Page meta info (all languages)',57,'delete_pagemeta'),(225,'Can view Page meta info (all languages)',57,'view_pagemeta'),(226,'Can add Page meta info (language-dependent)',58,'add_titlemeta'),(227,'Can change Page meta info (language-dependent)',58,'change_titlemeta'),(228,'Can delete Page meta info (language-dependent)',58,'delete_titlemeta'),(229,'Can view Page meta info (language-dependent)',58,'view_titlemeta'),(230,'Can add Page meta info (language-dependent)',59,'add_genericmetaattribute'),(231,'Can change Page meta info (language-dependent)',59,'change_genericmetaattribute'),(232,'Can delete Page meta info (language-dependent)',59,'delete_genericmetaattribute'),(233,'Can view Page meta info (language-dependent)',59,'view_genericmetaattribute');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$Yv4E9Gn7Lvbh$9iZZHQlWoT10Lc1Ml5rvbAK+t9bHhWbbn41a41U1oqY=','2020-09-02 13:55:05.852106',1,'test111','','','test111@gmail.com',1,1,'2020-09-02 13:50:19.206505'),(2,'pbkdf2_sha256$150000$MO2NQWGyAwhV$GoDSwL0Kc/x6oJwF5RWWlvtY3YBJv6MiSnuJornDhvI=',NULL,1,'test222','','','test222@gmail.com',1,1,'2020-09-02 13:50:50.309753'),(3,'pbkdf2_sha256$150000$ADJBcsXjq4zk$dJlgeeMsjh4lP5JdDnPhALqvhO9ok0Qgm1dj3d1mkiA=',NULL,1,'test333','','','test333@gmail.com',1,1,'2020-09-02 13:51:15.583116');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccrh_downloads`
--

DROP TABLE IF EXISTS `ccrh_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccrh_downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `download_headline` varchar(250) NOT NULL,
  `desc` longtext,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ccrh_downloads_created_by_id_996cc660` (`created_by_id`),
  KEY `ccrh_downloads_updated_by_id_216f8412` (`updated_by_id`),
  CONSTRAINT `ccrh_downloads_updated_by_id_216f8412_fk_auth_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `ccrh_downloads_created_by_id_996cc660_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccrh_downloads`
--

LOCK TABLES `ccrh_downloads` WRITE;
/*!40000 ALTER TABLE `ccrh_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccrh_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccrh_media`
--

DROP TABLE IF EXISTS `ccrh_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccrh_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headline` varchar(250) NOT NULL,
  `cover_photo` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ccrh_media_created_by_id_636d2e96` (`created_by_id`),
  KEY `ccrh_media_updated_by_id_852b35e9` (`updated_by_id`),
  CONSTRAINT `ccrh_media_updated_by_id_852b35e9_fk_auth_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `ccrh_media_created_by_id_636d2e96_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccrh_media`
--

LOCK TABLES `ccrh_media` WRITE;
/*!40000 ALTER TABLE `ccrh_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccrh_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccrh_news`
--

DROP TABLE IF EXISTS `ccrh_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccrh_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_headline` varchar(250) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `desc` longtext,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ccrh_news_created_by_id_f26cbbb3` (`created_by_id`),
  KEY `ccrh_news_updated_by_id_80f1ec8f` (`updated_by_id`),
  CONSTRAINT `ccrh_news_updated_by_id_80f1ec8f_fk_auth_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `ccrh_news_created_by_id_f26cbbb3_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccrh_news`
--

LOCK TABLES `ccrh_news` WRITE;
/*!40000 ALTER TABLE `ccrh_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccrh_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccrh_quick_link`
--

DROP TABLE IF EXISTS `ccrh_quick_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccrh_quick_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headline` varchar(250) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ccrh_quick_link_created_by_id_9154e70d` (`created_by_id`),
  KEY `ccrh_quick_link_updated_by_id_ee8e724d` (`updated_by_id`),
  CONSTRAINT `ccrh_quick_link_updated_by_id_ee8e724d_fk_auth_user_id` FOREIGN KEY (`updated_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `ccrh_quick_link_created_by_id_9154e70d_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccrh_quick_link`
--

LOCK TABLES `ccrh_quick_link` WRITE;
/*!40000 ALTER TABLE `ccrh_quick_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccrh_quick_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_aliaspluginmodel`
--

DROP TABLE IF EXISTS `cms_aliaspluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_aliaspluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  `alias_placeholder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` (`alias_placeholder_id`),
  KEY `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` (`plugin_id`),
  CONSTRAINT `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` FOREIGN KEY (`alias_placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_aliaspluginmodel`
--

LOCK TABLES `cms_aliaspluginmodel` WRITE;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cmsplugin`
--

DROP TABLE IF EXISTS `cms_cmsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` smallint(5) unsigned NOT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `placeholder_id` int(11) DEFAULT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_cmsplugin_path_4917bb44_uniq` (`path`),
  KEY `cms_cmsplugin_language_bbea8a48` (`language`),
  KEY `cms_cmsplugin_plugin_type_94e96ebf` (`plugin_type`),
  KEY `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` (`placeholder_id`),
  KEY `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` (`parent_id`),
  CONSTRAINT `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cmsplugin`
--

LOCK TABLES `cms_cmsplugin` WRITE;
/*!40000 ALTER TABLE `cms_cmsplugin` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_cmsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission`
--

DROP TABLE IF EXISTS `cms_globalpagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` (`group_id`),
  KEY `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission`
--

LOCK TABLES `cms_globalpagepermission` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission_sites`
--

DROP TABLE IF EXISTS `cms_globalpagepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_globalpagepermission_globalpagepermission_id__db684f41_uniq` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermis_site_id_00460b53_fk_django_si` (`site_id`),
  CONSTRAINT `cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`),
  CONSTRAINT `cms_globalpagepermis_site_id_00460b53_fk_django_si` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission_sites`
--

LOCK TABLES `cms_globalpagepermission_sites` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) NOT NULL,
  `changed_by` varchar(255) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `publication_date` datetime(6) DEFAULT NULL,
  `publication_end_date` datetime(6) DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `application_namespace` varchar(200) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `xframe_options` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `is_page_type` tinyint(1) NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_node_id_publisher_is_draft_c1293d6a_uniq` (`node_id`,`publisher_is_draft`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_page_publication_date_684fabf7` (`publication_date`),
  KEY `cms_page_publication_end_date_12a0c46a` (`publication_end_date`),
  KEY `cms_page_in_navigation_01c24279` (`in_navigation`),
  KEY `cms_page_soft_root_51efccbe` (`soft_root`),
  KEY `cms_page_reverse_id_ffc9ede2` (`reverse_id`),
  KEY `cms_page_navigation_extenders_c24af8dd` (`navigation_extenders`),
  KEY `cms_page_limit_visibility_in_menu_30db6aa6` (`limit_visibility_in_menu`),
  KEY `cms_page_is_home_edadca07` (`is_home`),
  KEY `cms_page_application_urls_9ef47497` (`application_urls`),
  KEY `cms_page_publisher_is_draft_141cba60` (`publisher_is_draft`),
  CONSTRAINT `cms_page_publisher_public_id_d619fca0_fk_cms_page_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_page_node_id_c87b85a9_fk_cms_treenode_id` FOREIGN KEY (`node_id`) REFERENCES `cms_treenode` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'test111','test111','2020-09-02 13:53:48.870693','2020-09-02 13:53:49.072787','2020-09-02 13:53:48.997360',NULL,1,0,NULL,NULL,'INHERIT',0,NULL,1,NULL,NULL,1,'en',0,2,0,1),(2,'test111','test111','2020-09-02 13:53:48.997851','2020-09-02 13:53:49.072787','2020-09-02 13:53:48.997360',NULL,1,0,NULL,NULL,'INHERIT',0,NULL,1,NULL,NULL,0,'en',0,1,0,1);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_placeholders`
--

DROP TABLE IF EXISTS `cms_page_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq` (`page_id`,`placeholder_id`),
  KEY `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` (`placeholder_id`),
  CONSTRAINT `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_placeholders`
--

LOCK TABLES `cms_page_placeholders` WRITE;
/*!40000 ALTER TABLE `cms_page_placeholders` DISABLE KEYS */;
INSERT INTO `cms_page_placeholders` VALUES (1,1,2),(2,1,3),(3,1,4),(4,1,5),(5,1,6),(6,1,7),(7,2,8),(8,2,9),(9,2,10),(10,2,11),(11,2,12),(12,2,13);
/*!40000 ALTER TABLE `cms_page_placeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagepermission`
--

DROP TABLE IF EXISTS `cms_pagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_group_id_af5af193_fk_auth_group_id` (`group_id`),
  KEY `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` (`page_id`),
  KEY `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pagepermission_group_id_af5af193_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagepermission`
--

LOCK TABLES `cms_pagepermission` WRITE;
/*!40000 ALTER TABLE `cms_pagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageuser`
--

DROP TABLE IF EXISTS `cms_pageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageuser`
--

LOCK TABLES `cms_pageuser` WRITE;
/*!40000 ALTER TABLE `cms_pageuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageusergroup`
--

DROP TABLE IF EXISTS `cms_pageusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageusergroup`
--

LOCK TABLES `cms_pageusergroup` WRITE;
/*!40000 ALTER TABLE `cms_pageusergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholder`
--

DROP TABLE IF EXISTS `cms_placeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(255) NOT NULL,
  `default_width` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_slot_0bc04d21` (`slot`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholder`
--

LOCK TABLES `cms_placeholder` WRITE;
/*!40000 ALTER TABLE `cms_placeholder` DISABLE KEYS */;
INSERT INTO `cms_placeholder` VALUES (1,'clipboard',NULL),(2,'Banner Images',NULL),(3,'Banner Content',NULL),(4,'Clinical Case Registry Heading',NULL),(5,'Clinical Case Registry Content',NULL),(6,'How to write a case report Section',NULL),(7,'Logo Section',NULL),(8,'Banner Images',NULL),(9,'Banner Content',NULL),(10,'Clinical Case Registry Heading',NULL),(11,'Clinical Case Registry Content',NULL),(12,'How to write a case report Section',NULL),(13,'Logo Section',NULL);
/*!40000 ALTER TABLE `cms_placeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholderreference`
--

DROP TABLE IF EXISTS `cms_placeholderreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholderreference` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder_ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_placeholderreference_placeholder_ref_id_244759b1` (`placeholder_ref_id`),
  CONSTRAINT `cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place` FOREIGN KEY (`placeholder_ref_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholderreference`
--

LOCK TABLES `cms_placeholderreference` WRITE;
/*!40000 ALTER TABLE `cms_placeholderreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_placeholderreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_plugins_downloadspluginmodel`
--

DROP TABLE IF EXISTS `cms_plugins_downloadspluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_plugins_downloadspluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `downloads_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_plugins_download_downloads_id_ced71fe0_fk_ccrh_down` (`downloads_id`),
  CONSTRAINT `cms_plugins_download_downloads_id_ced71fe0_fk_ccrh_down` FOREIGN KEY (`downloads_id`) REFERENCES `ccrh_downloads` (`id`),
  CONSTRAINT `cms_plugins_download_cmsplugin_ptr_id_b290b8f7_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_plugins_downloadspluginmodel`
--

LOCK TABLES `cms_plugins_downloadspluginmodel` WRITE;
/*!40000 ALTER TABLE `cms_plugins_downloadspluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_plugins_downloadspluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_plugins_mediapluginmodel`
--

DROP TABLE IF EXISTS `cms_plugins_mediapluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_plugins_mediapluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_plugins_mediapluginmodel_media_id_67bdcb17_fk_ccrh_media_id` (`media_id`),
  CONSTRAINT `cms_plugins_mediapluginmodel_media_id_67bdcb17_fk_ccrh_media_id` FOREIGN KEY (`media_id`) REFERENCES `ccrh_media` (`id`),
  CONSTRAINT `cms_plugins_mediaplu_cmsplugin_ptr_id_209c5dac_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_plugins_mediapluginmodel`
--

LOCK TABLES `cms_plugins_mediapluginmodel` WRITE;
/*!40000 ALTER TABLE `cms_plugins_mediapluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_plugins_mediapluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_plugins_newspluginmodel`
--

DROP TABLE IF EXISTS `cms_plugins_newspluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_plugins_newspluginmodel` (
  `news_id` int(11) NOT NULL,
  KEY `cms_plugins_newspluginmodel_news_id_67338a4b_fk_ccrh_news_id` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_plugins_newspluginmodel`
--

LOCK TABLES `cms_plugins_newspluginmodel` WRITE;
/*!40000 ALTER TABLE `cms_plugins_newspluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_plugins_newspluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_plugins_quicklinkpluginmodel`
--

DROP TABLE IF EXISTS `cms_plugins_quicklinkpluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_plugins_quicklinkpluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `quick_link_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_plugins_quicklin_quick_link_id_123e113c_fk_ccrh_quic` (`quick_link_id`),
  CONSTRAINT `cms_plugins_quicklin_quick_link_id_123e113c_fk_ccrh_quic` FOREIGN KEY (`quick_link_id`) REFERENCES `ccrh_quick_link` (`id`),
  CONSTRAINT `cms_plugins_quicklin_cmsplugin_ptr_id_7315ed33_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_plugins_quicklinkpluginmodel`
--

LOCK TABLES `cms_plugins_quicklinkpluginmodel` WRITE;
/*!40000 ALTER TABLE `cms_plugins_quicklinkpluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_plugins_quicklinkpluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_staticplaceholder`
--

DROP TABLE IF EXISTS `cms_staticplaceholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_staticplaceholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dirty` tinyint(1) NOT NULL,
  `creation_method` varchar(20) NOT NULL,
  `draft_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_staticplaceholder_code_site_id_21ba079c_uniq` (`code`,`site_id`),
  KEY `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` (`site_id`),
  KEY `cms_staticplaceholder_draft_id_5aee407b` (`draft_id`),
  KEY `cms_staticplaceholder_public_id_876aaa66` (`public_id`),
  CONSTRAINT `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id` FOREIGN KEY (`draft_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id` FOREIGN KEY (`public_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_staticplaceholder`
--

LOCK TABLES `cms_staticplaceholder` WRITE;
/*!40000 ALTER TABLE `cms_staticplaceholder` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_staticplaceholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_title`
--

DROP TABLE IF EXISTS `cms_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `redirect` varchar(2048) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_state` smallint(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_title_language_page_id_61aaf084_uniq` (`language`,`page_id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_title_page_id_5fade2a3_fk_cms_page_id` (`page_id`),
  KEY `cms_title_language_50a0dfa1` (`language`),
  KEY `cms_title_slug_4947d146` (`slug`),
  KEY `cms_title_path_c484314c` (`path`),
  KEY `cms_title_has_url_overwrite_ecf27bb9` (`has_url_overwrite`),
  KEY `cms_title_publisher_is_draft_95874c88` (`publisher_is_draft`),
  KEY `cms_title_publisher_state_9a952b0f` (`publisher_state`),
  CONSTRAINT `cms_title_page_id_5fade2a3_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_title_publisher_public_id_003a2702_fk_cms_title_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_title`
--

LOCK TABLES `cms_title` WRITE;
/*!40000 ALTER TABLE `cms_title` DISABLE KEYS */;
INSERT INTO `cms_title` VALUES (1,'en','test111@gmail.com',NULL,NULL,NULL,'test111gmailcom','',0,NULL,'2020-09-02 13:53:48.872598',1,1,0,1,2),(2,'en','test111@gmail.com',NULL,NULL,NULL,'test111gmailcom','',0,NULL,'2020-09-02 13:53:48.872598',1,0,0,2,1);
/*!40000 ALTER TABLE `cms_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_treenode`
--

DROP TABLE IF EXISTS `cms_treenode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_treenode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` (`parent_id`),
  KEY `cms_treenode_site_id_d3f46985_fk_django_site_id` (`site_id`),
  CONSTRAINT `cms_treenode_site_id_d3f46985_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_treenode` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_treenode`
--

LOCK TABLES `cms_treenode` WRITE;
/*!40000 ALTER TABLE `cms_treenode` DISABLE KEYS */;
INSERT INTO `cms_treenode` VALUES (1,'0001',1,0,NULL,1);
/*!40000 ALTER TABLE `cms_treenode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_urlconfrevision`
--

DROP TABLE IF EXISTS `cms_urlconfrevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_urlconfrevision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_urlconfrevision`
--

LOCK TABLES `cms_urlconfrevision` WRITE;
/*!40000 ALTER TABLE `cms_urlconfrevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_urlconfrevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_usersettings`
--

DROP TABLE IF EXISTS `cms_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `clipboard_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` (`clipboard_id`),
  CONSTRAINT `cms_usersettings_user_id_09633b2d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` FOREIGN KEY (`clipboard_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_usersettings`
--

LOCK TABLES `cms_usersettings` WRITE;
/*!40000 ALTER TABLE `cms_usersettings` DISABLE KEYS */;
INSERT INTO `cms_usersettings` VALUES (1,'en',1,1);
/*!40000 ALTER TABLE `cms_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(5,'auth','group'),(4,'auth','permission'),(6,'auth','user'),(10,'cms','aliaspluginmodel'),(9,'cms','cmsplugin'),(11,'cms','globalpagepermission'),(2,'cms','page'),(12,'cms','pagepermission'),(20,'cms','pagetype'),(13,'cms','pageuser'),(14,'cms','pageusergroup'),(1,'cms','placeholder'),(15,'cms','placeholderreference'),(16,'cms','staticplaceholder'),(17,'cms','title'),(21,'cms','treenode'),(19,'cms','urlconfrevision'),(18,'cms','usersettings'),(26,'cms_plugins','mediapluginmodel'),(7,'contenttypes','contenttype'),(47,'djangocms_file','file'),(48,'djangocms_file','folder'),(53,'djangocms_forms','form'),(54,'djangocms_forms','formdefinition'),(56,'djangocms_forms','formfield'),(55,'djangocms_forms','formsubmission'),(43,'djangocms_googlemap','googlemap'),(44,'djangocms_googlemap','googlemapmarker'),(45,'djangocms_googlemap','googlemaproute'),(40,'djangocms_link','link'),(59,'djangocms_page_meta','genericmetaattribute'),(57,'djangocms_page_meta','pagemeta'),(58,'djangocms_page_meta','titlemeta'),(49,'djangocms_picture','picture'),(41,'djangocms_snippet','snippet'),(42,'djangocms_snippet','snippetptr'),(46,'djangocms_style','style'),(29,'djangocms_text_ckeditor','text'),(50,'djangocms_video','videoplayer'),(51,'djangocms_video','videosource'),(52,'djangocms_video','videotrack'),(37,'easy_thumbnails','source'),(38,'easy_thumbnails','thumbnail'),(39,'easy_thumbnails','thumbnaildimensions'),(30,'filer','clipboard'),(31,'filer','clipboarditem'),(32,'filer','file'),(33,'filer','folder'),(34,'filer','folderpermission'),(35,'filer','image'),(36,'filer','thumbnailoption'),(25,'master','downloads'),(24,'master','media'),(23,'master','news'),(22,'master','quicklink'),(28,'menus','cachekey'),(27,'sessions','session'),(8,'sites','site');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-09-02 13:22:28.172098'),(2,'auth','0001_initial','2020-09-02 13:22:28.249367'),(3,'admin','0001_initial','2020-09-02 13:22:28.355697'),(4,'admin','0002_logentry_remove_auto_add','2020-09-02 13:22:28.380208'),(5,'admin','0003_logentry_add_action_flag_choices','2020-09-02 13:22:28.393850'),(6,'contenttypes','0002_remove_content_type_name','2020-09-02 13:22:28.438466'),(7,'auth','0002_alter_permission_name_max_length','2020-09-02 13:22:28.450668'),(8,'auth','0003_alter_user_email_max_length','2020-09-02 13:22:28.467444'),(9,'auth','0004_alter_user_username_opts','2020-09-02 13:22:28.483299'),(10,'auth','0005_alter_user_last_login_null','2020-09-02 13:22:28.503848'),(11,'auth','0006_require_contenttypes_0002','2020-09-02 13:22:28.507204'),(12,'auth','0007_alter_validators_add_error_messages','2020-09-02 13:22:28.525477'),(13,'auth','0008_alter_user_username_max_length','2020-09-02 13:22:28.547562'),(14,'auth','0009_alter_user_last_name_max_length','2020-09-02 13:22:28.569934'),(15,'auth','0010_alter_group_name_max_length','2020-09-02 13:22:28.587286'),(16,'auth','0011_update_proxy_permissions','2020-09-02 13:22:28.604018'),(17,'sites','0001_initial','2020-09-02 13:22:28.615838'),(18,'cms','0001_initial','2020-09-02 13:22:28.756556'),(19,'cms','0002_auto_20140816_1918','2020-09-02 13:22:29.228517'),(20,'cms','0003_auto_20140926_2347','2020-09-02 13:22:29.399096'),(21,'cms','0004_auto_20140924_1038','2020-09-02 13:22:29.563135'),(22,'cms','0005_auto_20140924_1039','2020-09-02 13:22:29.601359'),(23,'cms','0006_auto_20140924_1110','2020-09-02 13:22:29.927960'),(24,'cms','0007_auto_20141028_1559','2020-09-02 13:22:29.951270'),(25,'cms','0008_auto_20150208_2149','2020-09-02 13:22:29.969304'),(26,'cms','0008_auto_20150121_0059','2020-09-02 13:22:29.990160'),(27,'cms','0009_merge','2020-09-02 13:22:29.991889'),(28,'cms','0010_migrate_use_structure','2020-09-02 13:22:30.056262'),(29,'cms','0011_auto_20150419_1006','2020-09-02 13:22:30.090775'),(30,'cms','0012_auto_20150607_2207','2020-09-02 13:22:30.177643'),(31,'cms','0013_urlconfrevision','2020-09-02 13:22:30.184604'),(32,'cms','0014_auto_20160404_1908','2020-09-02 13:22:30.223535'),(33,'cms','0015_auto_20160421_0000','2020-09-02 13:22:30.249787'),(34,'cms','0016_auto_20160608_1535','2020-09-02 13:22:30.331159'),(35,'cms','0017_pagetype','2020-09-02 13:22:30.394157'),(36,'cms','0018_pagenode','2020-09-02 13:22:30.572880'),(37,'cms','0019_set_pagenode','2020-09-02 13:22:30.658258'),(38,'cms','0020_old_tree_cleanup','2020-09-02 13:22:31.044767'),(39,'cms','0021_auto_20180507_1432','2020-09-02 13:22:31.060716'),(40,'cms','0022_auto_20180620_1551','2020-09-02 13:22:31.095957'),(41,'cms','0023_auto_20200410_1338','2020-09-02 13:22:31.137557'),(42,'cms','0024_auto_20200410_1342','2020-09-02 13:22:31.185168'),(43,'master','0001_initial','2020-09-02 13:22:31.341659'),(44,'cms_plugins','0001_initial','2020-09-02 13:22:31.619261'),(45,'cms','0018_create_pagenode','2020-09-02 13:23:16.619024'),(46,'filer','0001_initial','2020-09-02 13:23:49.692850'),(47,'filer','0002_auto_20150606_2003','2020-09-02 13:23:49.809416'),(48,'filer','0003_thumbnailoption','2020-09-02 13:23:49.818948'),(49,'filer','0004_auto_20160328_1434','2020-09-02 13:23:49.841216'),(50,'filer','0005_auto_20160623_1425','2020-09-02 13:23:50.083949'),(51,'filer','0006_auto_20160623_1627','2020-09-02 13:23:50.132437'),(52,'djangocms_file','0001_initial','2020-09-02 13:23:50.178541'),(53,'djangocms_file','0002_auto_20151202_1551','2020-09-02 13:23:50.218587'),(54,'djangocms_file','0003_remove_related_name_for_cmsplugin_ptr','2020-09-02 13:23:50.275989'),(55,'djangocms_file','0004_set_related_name_for_cmsplugin_ptr','2020-09-02 13:23:50.328798'),(56,'djangocms_file','0005_auto_20160119_1534','2020-09-02 13:23:50.341459'),(57,'djangocms_file','0006_migrate_to_filer','2020-09-02 13:23:50.501433'),(58,'djangocms_file','0007_adapted_fields','2020-09-02 13:23:50.845536'),(59,'djangocms_file','0008_add_folder','2020-09-02 13:23:50.894251'),(60,'djangocms_file','0009_fixed_null_fields','2020-09-02 13:23:50.957879'),(61,'djangocms_file','0010_removed_null_fields','2020-09-02 13:23:50.989527'),(62,'djangocms_file','0011_auto_20181211_0357','2020-09-02 13:23:51.166411'),(63,'djangocms_forms','0001_initial','2020-09-02 13:23:51.370715'),(64,'djangocms_googlemap','0001_initial','2020-09-02 13:23:51.490782'),(65,'djangocms_googlemap','0002_auto_20160622_1031','2020-09-02 13:23:51.618382'),(66,'djangocms_googlemap','0003_auto_20160825_1829','2020-09-02 13:23:51.640134'),(67,'djangocms_googlemap','0004_adapted_fields','2020-09-02 13:23:52.434951'),(68,'djangocms_googlemap','0005_create_nested_plugins','2020-09-02 13:23:52.747169'),(69,'djangocms_googlemap','0006_remove_fields','2020-09-02 13:23:52.923272'),(70,'djangocms_googlemap','0007_reset_null_values','2020-09-02 13:23:52.993843'),(71,'djangocms_googlemap','0008_removed_null_fields','2020-09-02 13:23:53.025378'),(72,'djangocms_googlemap','0009_googlemapmarker_icon','2020-09-02 13:23:53.091469'),(73,'djangocms_googlemap','0010_auto_20190718_1021','2020-09-02 13:23:53.173968'),(74,'filer','0007_auto_20161016_1055','2020-09-02 13:23:53.195309'),(75,'filer','0008_auto_20171117_1313','2020-09-02 13:23:53.219443'),(76,'filer','0009_auto_20171220_1635','2020-09-02 13:23:53.254038'),(77,'filer','0010_auto_20180414_2058','2020-09-02 13:23:53.317713'),(78,'filer','0011_auto_20190418_0137','2020-09-02 13:23:53.450248'),(79,'djangocms_link','0001_initial','2020-09-02 13:23:53.524568'),(80,'djangocms_link','0002_auto_20140929_1705','2020-09-02 13:23:53.578002'),(81,'djangocms_link','0003_auto_20150212_1310','2020-09-02 13:23:53.619654'),(82,'djangocms_link','0004_auto_20150708_1133','2020-09-02 13:23:53.708015'),(83,'djangocms_link','0005_auto_20151003_1710','2020-09-02 13:23:53.754047'),(84,'djangocms_link','0006_remove_related_name_for_cmsplugin_ptr','2020-09-02 13:23:53.853897'),(85,'djangocms_link','0007_set_related_name_for_cmsplugin_ptr','2020-09-02 13:23:53.934263'),(86,'djangocms_link','0008_link_attributes','2020-09-02 13:23:53.980169'),(87,'djangocms_link','0009_auto_20160705_1344','2020-09-02 13:23:54.023976'),(88,'djangocms_link','0010_adapted_fields','2020-09-02 13:23:54.787406'),(89,'djangocms_link','0011_fixed_null_values','2020-09-02 13:23:54.916398'),(90,'djangocms_link','0012_removed_null','2020-09-02 13:23:55.120545'),(91,'djangocms_link','0013_fix_hostname','2020-09-02 13:23:55.173391'),(92,'djangocms_link','0014_link_file_link','2020-09-02 13:23:55.262189'),(93,'djangocms_link','0015_auto_20190621_0407','2020-09-02 13:23:55.345255'),(94,'djangocms_page_meta','0001_initial','2020-09-02 13:23:55.532503'),(95,'djangocms_page_meta','0002_auto_20150807_0936','2020-09-02 13:23:55.637357'),(96,'djangocms_page_meta','0003_auto_20151220_1734','2020-09-02 13:23:55.830282'),(97,'djangocms_page_meta','0004_auto_20160409_1852','2020-09-02 13:23:56.650745'),(98,'djangocms_page_meta','0005_pagemeta_fb_pages','2020-09-02 13:23:56.692111'),(99,'djangocms_page_meta','0006_auto_20160423_1859','2020-09-02 13:23:56.909925'),(100,'djangocms_page_meta','0007_auto_20160530_2257','2020-09-02 13:23:57.066126'),(101,'djangocms_page_meta','0008_auto_20160609_0754','2020-09-02 13:23:57.093375'),(102,'djangocms_page_meta','0009_auto_20171230_1954','2020-09-02 13:23:57.131171'),(103,'djangocms_page_meta','0010_auto_20180108_2316','2020-09-02 13:23:57.271330'),(104,'djangocms_page_meta','0011_auto_20190218_1010','2020-09-02 13:23:57.713964'),(105,'djangocms_picture','0001_initial','2020-09-02 13:23:57.800728'),(106,'djangocms_picture','0002_auto_20151018_1927','2020-09-02 13:23:58.464083'),(107,'djangocms_picture','0003_migrate_to_filer','2020-09-02 13:23:58.900269'),(108,'djangocms_picture','0004_adapt_fields','2020-09-02 13:24:01.160592'),(109,'djangocms_picture','0005_reset_null_values','2020-09-02 13:24:01.309957'),(110,'djangocms_picture','0006_remove_null_values','2020-09-02 13:24:01.478103'),(111,'djangocms_picture','0007_fix_alignment','2020-09-02 13:24:01.539858'),(112,'djangocms_picture','0008_picture_use_responsive_image','2020-09-02 13:24:01.626329'),(113,'djangocms_picture','0009_auto_20181212_1003','2020-09-02 13:24:01.976432'),(114,'djangocms_picture','0010_auto_20190627_0432','2020-09-02 13:24:02.212106'),(115,'djangocms_picture','0011_auto_20190314_1536','2020-09-02 13:24:02.439301'),(116,'djangocms_snippet','0001_initial','2020-09-02 13:24:02.524915'),(117,'djangocms_snippet','0002_snippet_slug','2020-09-02 13:24:02.552787'),(118,'djangocms_snippet','0003_auto_data_fill_slug','2020-09-02 13:24:02.655708'),(119,'djangocms_snippet','0004_auto_alter_slug_unique','2020-09-02 13:24:02.678149'),(120,'djangocms_snippet','0005_set_related_name_for_cmsplugin_ptr','2020-09-02 13:24:02.765761'),(121,'djangocms_snippet','0006_auto_20160831_0729','2020-09-02 13:24:02.839667'),(122,'djangocms_snippet','0007_auto_alter_template_helptext','2020-09-02 13:24:02.852374'),(123,'djangocms_snippet','0008_auto_change_name','2020-09-02 13:24:02.891822'),(124,'djangocms_style','0001_initial','2020-09-02 13:24:02.975427'),(125,'djangocms_style','0002_set_related_name_for_cmsplugin_ptr','2020-09-02 13:24:03.076984'),(126,'djangocms_style','0003_adapted_fields','2020-09-02 13:24:04.102643'),(127,'djangocms_style','0004_use_positive_small_integer_field','2020-09-02 13:24:04.347510'),(128,'djangocms_style','0005_reset_null_values','2020-09-02 13:24:04.421013'),(129,'djangocms_style','0006_removed_null_fields','2020-09-02 13:24:04.479288'),(130,'djangocms_style','0007_style_template','2020-09-02 13:24:04.519498'),(131,'djangocms_text_ckeditor','0001_initial','2020-09-02 13:24:04.582921'),(132,'djangocms_text_ckeditor','0002_remove_related_name_for_cmsplugin_ptr','2020-09-02 13:24:04.655760'),(133,'djangocms_text_ckeditor','0003_set_related_name_for_cmsplugin_ptr','2020-09-02 13:24:04.736498'),(134,'djangocms_text_ckeditor','0004_auto_20160706_1339','2020-09-02 13:24:04.838980'),(135,'djangocms_video','0001_initial','2020-09-02 13:24:04.932706'),(136,'djangocms_video','0002_set_related_name_for_cmsplugin_ptr','2020-09-02 13:24:05.008076'),(137,'djangocms_video','0003_field_adaptions','2020-09-02 13:24:05.413298'),(138,'djangocms_video','0004_move_to_attributes','2020-09-02 13:24:07.069952'),(139,'djangocms_video','0005_migrate_to_filer','2020-09-02 13:24:07.185598'),(140,'djangocms_video','0006_field_adaptions','2020-09-02 13:24:07.475404'),(141,'djangocms_video','0007_create_nested_plugin','2020-09-02 13:24:07.628718'),(142,'djangocms_video','0008_reset_null_values','2020-09-02 13:24:07.726892'),(143,'djangocms_video','0009_removed_null_values','2020-09-02 13:24:07.780848'),(144,'djangocms_video','0010_videoplayer_parameters','2020-09-02 13:24:07.831241'),(145,'easy_thumbnails','0001_initial','2020-09-02 13:24:07.907076'),(146,'easy_thumbnails','0002_thumbnaildimensions','2020-09-02 13:24:07.972830'),(147,'menus','0001_initial','2020-09-02 13:24:07.987349'),(148,'sessions','0001_initial','2020-09-02 13:24:07.998270'),(149,'sites','0002_alter_domain_unique','2020-09-02 13:24:08.023639');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('46rckv980f4whr5kxrnvt0abym15x4q3','M2Q3YWY5MzdjMTgxYTI5MTdmNzFhMjFlOTBiY2Y1Yzk3ZGE2YmVkNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcl9wcm9maWxlLmVtYWlsX2F1dGguRW1haWxBdXRoQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImMzYzVkMDg3YTUwOTQwYzNiNGE2M2ExNWM1NDYwYTA1N2QxN2U4ZWIiLCJjbXNfdG9vbGJhcl9kaXNhYmxlZCI6ZmFsc2UsImNtc19lZGl0Ijp0cnVlLCJjbXNfcHJldmlldyI6ZmFsc2UsIndpemFyZF93aXphcmRfY3JlYXRlX3ZpZXciOnsic3RlcCI6bnVsbCwic3RlcF9kYXRhIjp7fSwic3RlcF9maWxlcyI6e30sImV4dHJhX2RhdGEiOnt9fX0=','2020-09-16 13:53:54.569149'),('wlhc11suhepg21b7iqlearcrve7khrxs','NGFmYmZmZWI5OGI4ZjA4YjZhNmJiYTk5NGFjYzQ1ODk3NmIyMzNlNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcl9wcm9maWxlLmVtYWlsX2F1dGguRW1haWxBdXRoQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImMzYzVkMDg3YTUwOTQwYzNiNGE2M2ExNWM1NDYwYTA1N2QxN2U4ZWIifQ==','2020-09-16 13:55:05.858937');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_file_file`
--

DROP TABLE IF EXISTS `djangocms_file_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_file_file` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `file_src_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_file_file_src_id_74ac14a5` (`file_src_id`),
  CONSTRAINT `djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id` FOREIGN KEY (`file_src_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_file_file`
--

LOCK TABLES `djangocms_file_file` WRITE;
/*!40000 ALTER TABLE `djangocms_file_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_file_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_file_folder`
--

DROP TABLE IF EXISTS `djangocms_file_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_file_folder` (
  `template` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `folder_src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_folder_folder_src_id_9558406a` (`folder_src_id`),
  CONSTRAINT `djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id` FOREIGN KEY (`folder_src_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_file_folder`
--

LOCK TABLES `djangocms_file_folder` WRITE;
/*!40000 ALTER TABLE `djangocms_file_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_file_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_forms_form`
--

DROP TABLE IF EXISTS `djangocms_forms_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_forms_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djangocms_forms_form_name_8c49fa94` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_forms_form`
--

LOCK TABLES `djangocms_forms_form` WRITE;
/*!40000 ALTER TABLE `djangocms_forms_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_forms_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_forms_formdefinition`
--

DROP TABLE IF EXISTS `djangocms_forms_formdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_forms_formdefinition` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `submit_btn_txt` varchar(100) NOT NULL,
  `post_submit_msg` longtext NOT NULL,
  `success_redirect` tinyint(1) NOT NULL,
  `external_redirect` varchar(200) NOT NULL,
  `redirect_delay` int(10) unsigned DEFAULT NULL,
  `email_to` varchar(255) NOT NULL,
  `email_from` varchar(255) NOT NULL,
  `email_subject` varchar(255) NOT NULL,
  `email_uploaded_files` tinyint(1) NOT NULL,
  `save_data` tinyint(1) NOT NULL,
  `spam_protection` smallint(6) NOT NULL,
  `form_template` varchar(150) NOT NULL,
  `page_redirect_id` int(11) DEFAULT NULL,
  `plugin_reference_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_forms_formdefinition_page_redirect_id_6b1e768c` (`page_redirect_id`),
  KEY `djangocms_forms_formdefinition_plugin_reference_id_cc179476` (`plugin_reference_id`),
  CONSTRAINT `djangocms_forms_form_plugin_reference_id_cc179476_fk_djangocms` FOREIGN KEY (`plugin_reference_id`) REFERENCES `djangocms_forms_form` (`id`),
  CONSTRAINT `djangocms_forms_form_cmsplugin_ptr_id_aadddbaf_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_forms_form_page_redirect_id_6b1e768c_fk_cms_page_` FOREIGN KEY (`page_redirect_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_forms_formdefinition`
--

LOCK TABLES `djangocms_forms_formdefinition` WRITE;
/*!40000 ALTER TABLE `djangocms_forms_formdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_forms_formdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_forms_formfield`
--

DROP TABLE IF EXISTS `djangocms_forms_formfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_forms_formfield` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_type` varchar(100) NOT NULL,
  `label` varchar(255) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `placeholder_text` varchar(100) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `help_text` longtext NOT NULL,
  `initial` varchar(255) NOT NULL,
  `choice_values` longtext NOT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djangocms_forms_form_form_id_6c19c6dc_fk_djangocms` (`form_id`),
  CONSTRAINT `djangocms_forms_form_form_id_6c19c6dc_fk_djangocms` FOREIGN KEY (`form_id`) REFERENCES `djangocms_forms_formdefinition` (`cmsplugin_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_forms_formfield`
--

LOCK TABLES `djangocms_forms_formfield` WRITE;
/*!40000 ALTER TABLE `djangocms_forms_formfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_forms_formfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_forms_formsubmission`
--

DROP TABLE IF EXISTS `djangocms_forms_formsubmission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_forms_formsubmission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creation_date` datetime(6) NOT NULL,
  `ip` char(39) DEFAULT NULL,
  `referrer` varchar(150) NOT NULL,
  `form_data` longtext NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `plugin_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djangocms_forms_form_created_by_id_566220c2_fk_auth_user` (`created_by_id`),
  KEY `djangocms_forms_form_plugin_id_f1abce60_fk_djangocms` (`plugin_id`),
  CONSTRAINT `djangocms_forms_form_plugin_id_f1abce60_fk_djangocms` FOREIGN KEY (`plugin_id`) REFERENCES `djangocms_forms_form` (`id`),
  CONSTRAINT `djangocms_forms_form_created_by_id_566220c2_fk_auth_user` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_forms_formsubmission`
--

LOCK TABLES `djangocms_forms_formsubmission` WRITE;
/*!40000 ALTER TABLE `djangocms_forms_formsubmission` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_forms_formsubmission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemap`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemap` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `zoom` smallint(5) unsigned NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  `scrollwheel` tinyint(1) NOT NULL,
  `double_click_zoom` tinyint(1) NOT NULL,
  `draggable` tinyint(1) NOT NULL,
  `keyboard_shortcuts` tinyint(1) NOT NULL,
  `pan_control` tinyint(1) NOT NULL,
  `zoom_control` tinyint(1) NOT NULL,
  `street_view_control` tinyint(1) NOT NULL,
  `style` longtext NOT NULL,
  `fullscreen_control` tinyint(1) NOT NULL,
  `map_type_control` varchar(255) NOT NULL,
  `rotate_control` tinyint(1) NOT NULL,
  `scale_control` tinyint(1) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemap`
--

LOCK TABLES `djangocms_googlemap_googlemap` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemapmarker`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemapmarker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemapmarker` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `show_content` tinyint(1) NOT NULL,
  `info_content` longtext NOT NULL,
  `icon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_googlemap_googlemapmarker_icon_id_3b103213` (`icon_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_googlemap__icon_id_3b103213_fk_filer_ima` FOREIGN KEY (`icon_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemapmarker`
--

LOCK TABLES `djangocms_googlemap_googlemapmarker` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemaproute`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemaproute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemaproute` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `travel_mode` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemaproute`
--

LOCK TABLES `djangocms_googlemap_googlemaproute` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_link_link`
--

DROP TABLE IF EXISTS `djangocms_link_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_link_link` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `file_link_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` (`internal_link_id`),
  KEY `djangocms_link_link_file_link_id_c7869e4c` (`file_link_id`),
  CONSTRAINT `djangocms_link_link_file_link_id_c7869e4c_fk_filer_file_id` FOREIGN KEY (`file_link_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_link_link`
--

LOCK TABLES `djangocms_link_link` WRITE;
/*!40000 ALTER TABLE `djangocms_link_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_link_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_page_meta_genericmetaattribute`
--

DROP TABLE IF EXISTS `djangocms_page_meta_genericmetaattribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_page_meta_genericmetaattribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `value` varchar(2000) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `djangocms_page_meta__page_id_d594b38f_fk_djangocms` (`page_id`),
  KEY `djangocms_page_meta__title_id_e3ab795e_fk_djangocms` (`title_id`),
  CONSTRAINT `djangocms_page_meta__title_id_e3ab795e_fk_djangocms` FOREIGN KEY (`title_id`) REFERENCES `djangocms_page_meta_titlemeta` (`id`),
  CONSTRAINT `djangocms_page_meta__page_id_d594b38f_fk_djangocms` FOREIGN KEY (`page_id`) REFERENCES `djangocms_page_meta_pagemeta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_page_meta_genericmetaattribute`
--

LOCK TABLES `djangocms_page_meta_genericmetaattribute` WRITE;
/*!40000 ALTER TABLE `djangocms_page_meta_genericmetaattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_page_meta_genericmetaattribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_page_meta_pagemeta`
--

DROP TABLE IF EXISTS `djangocms_page_meta_pagemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_page_meta_pagemeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `og_type` varchar(255) NOT NULL,
  `og_author_url` varchar(255) NOT NULL,
  `og_author_fbid` varchar(16) NOT NULL,
  `og_publisher` varchar(255) NOT NULL,
  `og_app_id` varchar(255) NOT NULL,
  `twitter_author` varchar(255) NOT NULL,
  `twitter_site` varchar(255) NOT NULL,
  `twitter_type` varchar(255) NOT NULL,
  `gplus_author` varchar(255) NOT NULL,
  `gplus_type` varchar(255) NOT NULL,
  `extended_object_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `og_author_id` int(11) DEFAULT NULL,
  `public_extension_id` int(11) DEFAULT NULL,
  `fb_pages` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `extended_object_id` (`extended_object_id`),
  UNIQUE KEY `public_extension_id` (`public_extension_id`),
  KEY `djangocms_page_meta_pagemeta_image_id_ea4717af` (`image_id`),
  KEY `djangocms_page_meta__og_author_id_b3c1587d_fk_auth_user` (`og_author_id`),
  CONSTRAINT `djangocms_page_meta__public_extension_id_e12171c3_fk_djangocms` FOREIGN KEY (`public_extension_id`) REFERENCES `djangocms_page_meta_pagemeta` (`id`),
  CONSTRAINT `djangocms_page_meta_pagemeta_image_id_ea4717af_fk_filer_file_id` FOREIGN KEY (`image_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `djangocms_page_meta__extended_object_id_3e42f99f_fk_cms_page_` FOREIGN KEY (`extended_object_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `djangocms_page_meta__og_author_id_b3c1587d_fk_auth_user` FOREIGN KEY (`og_author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_page_meta_pagemeta`
--

LOCK TABLES `djangocms_page_meta_pagemeta` WRITE;
/*!40000 ALTER TABLE `djangocms_page_meta_pagemeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_page_meta_pagemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_page_meta_titlemeta`
--

DROP TABLE IF EXISTS `djangocms_page_meta_titlemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_page_meta_titlemeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(2000) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `og_description` varchar(2000) NOT NULL,
  `twitter_description` varchar(2000) NOT NULL,
  `gplus_description` varchar(2000) NOT NULL,
  `extended_object_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `public_extension_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `extended_object_id` (`extended_object_id`),
  UNIQUE KEY `public_extension_id` (`public_extension_id`),
  KEY `djangocms_page_meta_titlemeta_image_id_df083a43` (`image_id`),
  CONSTRAINT `djangocms_page_meta__public_extension_id_62b6abb6_fk_djangocms` FOREIGN KEY (`public_extension_id`) REFERENCES `djangocms_page_meta_titlemeta` (`id`),
  CONSTRAINT `djangocms_page_meta_titlemeta_image_id_df083a43_fk_filer_file_id` FOREIGN KEY (`image_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `djangocms_page_meta__extended_object_id_8d83fca1_fk_cms_title` FOREIGN KEY (`extended_object_id`) REFERENCES `cms_title` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_page_meta_titlemeta`
--

LOCK TABLES `djangocms_page_meta_titlemeta` WRITE;
/*!40000 ALTER TABLE `djangocms_page_meta_titlemeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_page_meta_titlemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_picture_picture`
--

DROP TABLE IF EXISTS `djangocms_picture_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_picture_picture` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_url` varchar(2040) DEFAULT NULL,
  `alignment` varchar(255) NOT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `caption_text` longtext,
  `link_attributes` longtext NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `thumbnail_options_id` int(11) DEFAULT NULL,
  `external_picture` varchar(255) DEFAULT NULL,
  `template` varchar(255) NOT NULL,
  `use_responsive_image` varchar(7) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_picture_picture_picture_id_f7d6711b` (`picture_id`),
  KEY `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` (`link_page_id`),
  KEY `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` (`thumbnail_options_id`),
  CONSTRAINT `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_picture_picture`
--

LOCK TABLES `djangocms_picture_picture` WRITE;
/*!40000 ALTER TABLE `djangocms_picture_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_picture_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_snippet_snippet`
--

DROP TABLE IF EXISTS `djangocms_snippet_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_snippet_snippet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `djangocms_snippet_snippet_slug_bd43cd96_uniq` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_snippet_snippet`
--

LOCK TABLES `djangocms_snippet_snippet` WRITE;
/*!40000 ALTER TABLE `djangocms_snippet_snippet` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_snippet_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_snippet_snippetptr`
--

DROP TABLE IF EXISTS `djangocms_snippet_snippetptr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_snippet_snippetptr` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `snippet_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms` (`snippet_id`),
  CONSTRAINT `djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms` FOREIGN KEY (`snippet_id`) REFERENCES `djangocms_snippet_snippet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_snippet_snippetptr`
--

LOCK TABLES `djangocms_snippet_snippetptr` WRITE;
/*!40000 ALTER TABLE `djangocms_snippet_snippetptr` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_snippet_snippetptr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_style_style`
--

DROP TABLE IF EXISTS `djangocms_style_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_style_style` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `padding_left` smallint(5) unsigned DEFAULT NULL,
  `padding_right` smallint(5) unsigned DEFAULT NULL,
  `padding_top` smallint(5) unsigned DEFAULT NULL,
  `padding_bottom` smallint(5) unsigned DEFAULT NULL,
  `margin_left` smallint(5) unsigned DEFAULT NULL,
  `margin_right` smallint(5) unsigned DEFAULT NULL,
  `margin_top` smallint(5) unsigned DEFAULT NULL,
  `margin_bottom` smallint(5) unsigned DEFAULT NULL,
  `additional_classes` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `id_name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_style_style`
--

LOCK TABLES `djangocms_style_style` WRITE;
/*!40000 ALTER TABLE `djangocms_style_style` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_style_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_text_ckeditor_text`
--

DROP TABLE IF EXISTS `djangocms_text_ckeditor_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_text_ckeditor_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_text_ckeditor_text`
--

LOCK TABLES `djangocms_text_ckeditor_text` WRITE;
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videoplayer`
--

DROP TABLE IF EXISTS `djangocms_video_videoplayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videoplayer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `embed_link` varchar(255) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `parameters` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videoplayer_poster_id_07790e24` (`poster_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_vide_poster_id_07790e24_fk_filer_ima` FOREIGN KEY (`poster_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videoplayer`
--

LOCK TABLES `djangocms_video_videoplayer` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videosource`
--

DROP TABLE IF EXISTS `djangocms_video_videosource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videosource` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `text_title` varchar(255) NOT NULL,
  `text_description` longtext NOT NULL,
  `attributes` longtext NOT NULL,
  `source_file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videosource_source_file_id_16f11167` (`source_file_id`),
  CONSTRAINT `djangocms_video_vide_source_file_id_16f11167_fk_filer_fil` FOREIGN KEY (`source_file_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videosource`
--

LOCK TABLES `djangocms_video_videosource` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videosource` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videosource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videotrack`
--

DROP TABLE IF EXISTS `djangocms_video_videotrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videotrack` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `srclang` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videotrack_src_id_e5a015d8` (`src_id`),
  CONSTRAINT `djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id` FOREIGN KEY (`src_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videotrack`
--

LOCK TABLES `djangocms_video_videotrack` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videotrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videotrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  KEY `easy_thumbnails_source_name_5fe0edc6` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`),
  CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboard`
--

DROP TABLE IF EXISTS `filer_clipboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboard`
--

LOCK TABLES `filer_clipboard` WRITE;
/*!40000 ALTER TABLE `filer_clipboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboarditem`
--

DROP TABLE IF EXISTS `filer_clipboarditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`),
  KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboarditem`
--

LOCK TABLES `filer_clipboarditem` WRITE;
/*!40000 ALTER TABLE `filer_clipboarditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboarditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_file`
--

DROP TABLE IF EXISTS `filer_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` bigint(20) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`),
  KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_file`
--

LOCK TABLES `filer_file` WRITE;
/*!40000 ALTER TABLE `filer_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folder`
--

DROP TABLE IF EXISTS `filer_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  KEY `filer_folder_tree_id_b016223c` (`tree_id`),
  KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`),
  KEY `filer_folder_tree_id_lft_088ce52b_idx` (`tree_id`,`lft`),
  CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folder`
--

LOCK TABLES `filer_folder` WRITE;
/*!40000 ALTER TABLE `filer_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folderpermission`
--

DROP TABLE IF EXISTS `filer_folderpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folderpermission`
--

LOCK TABLES `filer_folderpermission` WRITE;
/*!40000 ALTER TABLE `filer_folderpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folderpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_image`
--

DROP TABLE IF EXISTS `filer_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` int(11) DEFAULT NULL,
  `_width` int(11) DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  PRIMARY KEY (`file_ptr_id`),
  CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_image`
--

LOCK TABLES `filer_image` WRITE;
/*!40000 ALTER TABLE `filer_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_thumbnailoption`
--

DROP TABLE IF EXISTS `filer_thumbnailoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_thumbnailoption`
--

LOCK TABLES `filer_thumbnailoption` WRITE;
/*!40000 ALTER TABLE `filer_thumbnailoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_thumbnailoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_cachekey`
--

DROP TABLE IF EXISTS `menus_cachekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_cachekey`
--

LOCK TABLES `menus_cachekey` WRITE;
/*!40000 ALTER TABLE `menus_cachekey` DISABLE KEYS */;
INSERT INTO `menus_cachekey` VALUES (1,'en',1,'cms_3.7.1_menu_nodes_en_1_1_user:draft'),(2,'en',1,'cms_3.7.1_menu_nodes_en_1:public');
/*!40000 ALTER TABLE `menus_cachekey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ccrhtest'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-02  9:33:45
