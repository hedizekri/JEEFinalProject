CREATE DATABASE  IF NOT EXISTS `yncrea_lab06` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `yncrea_lab06`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: yncrea_lab06
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (58,'Steven','Armstrong'),(59,'John','Arundel'),(60,'Jonathan','Baier'),(61,'Alex','Banks'),(62,'Daniel','Barrett'),(63,'Joe','Beda'),(64,'Amelia','Bellamy-Royds'),(65,'Colin','Bendell'),(66,'Walter','Bentley'),(67,'Nicolas','Bevacqua'),(68,'Joshua','Bloch'),(69,'Simon','Brown'),(70,'Todd','Brown'),(71,'Bill','Burke'),(72,'Brendan','Burns'),(73,'Kurt','Cagle'),(74,'Laine','Campbell'),(75,'David A.','Chappell'),(76,'Wu','Cheng-Yang'),(77,'Krishna','Choppella'),(78,'Kyran','Dale'),(79,'Ryn','Daniels'),(80,'Ian F.','Darwin'),(81,'Sebastian','Daschner'),(82,'Jennifer','Davis'),(83,'Allen','Downey'),(84,'Nick','Doyle'),(85,'Graham','Dumpleton'),(86,'Benjamin J.','Evans'),(87,'Nathaniel','Felsen'),(88,'David','Flanagan'),(89,'Scott','Gallagher'),(90,'Justin','Garrison'),(91,'Chetan','Giridhar'),(92,'Javier-Fernández','González'),(93,'Miguel','Grinberg'),(94,'Srdjan','Grubor'),(95,'Aditya','Gupta'),(96,'Munish Kumar','Gupta'),(97,'Arun','Guypta'),(98,'Elliotte','Harold'),(99,'Bill','Havanki'),(100,'David','Heffelfinger'),(101,'Saito','Hideto'),(102,'Kelsey','Hightower'),(103,'John','Horton'),(104,'Chloe Lee','Hui-Chuan'),(105,'Brenda','Jin'),(106,'Mike','Julian'),(107,'Tim','Kadlec'),(108,'Martin','Kalin'),(109,'Uday','Kamath'),(110,'Jesse','Keating'),(111,'Mick','Knutson'),(112,'Jaroslaw','Krochmalski'),(113,'Brent','Laster'),(114,'Eward','Lavieri'),(115,'Thomas','Lee'),(116,'Rafał','Leszko'),(117,'Daniel','Leuck'),(118,'Patricia','Liguori'),(119,'Robert','Liguori'),(120,'Callum','Macrae'),(121,'Ajay','Mahajan'),(122,'Charity','Majors'),(123,'Chris','Mayfield'),(124,'Mike','McCall'),(125,'Russ','McKendrick'),(126,'Eric','Meyer'),(127,'Richard','Monson-Haefel'),(128,'Elder','Moraes'),(129,'Peter','Mularien'),(130,'Maurice','Naftalin'),(131,'Thomas','Nield'),(132,'Patrick','Niemeyer'),(133,'','Ninja Squad'),(134,'Robin','Nixon'),(135,'Kris','Nova'),(136,'Scott','Oaks'),(137,'Prashant','Padmanabhan'),(138,'Nikhil','Pathania'),(139,'Sebastian','Peyrott'),(140,'Guy','Podjarny'),(141,'Eve','Porcello'),(142,'Dinesh','Rajput'),(143,'Abhishek','Ratan'),(144,'Mark','Richards'),(145,'Saurabh','Sahni'),(146,'Nick','Samoylov'),(147,'Mohamed','Sanaulla'),(148,'Fabien','Sanglard'),(149,'Shyam','Seshadri'),(150,'Amir','Shevat'),(151,'Ajitesh','Shukla'),(152,'Kyle','Simpson'),(153,'John','Smart'),(154,'Dudley','Storey'),(155,'Shyam','Sundar'),(156,'Greg','Turnquist'),(157,'Peter','Verhas'),(158,'Philip','Wadler'),(159,'Robert','Warburton'),(160,'Yoav','Weiss'),(161,'Estelle','Weyl'),(162,'Robert','Winch'),(163,'Duncan','Winn'),(164,'Henry','Wong');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (165,'http://jee.chticod.eu/img/lab06/angular_upandrunning.jpg','EN','Angular: Up and Running'),(166,'http://jee.chticod.eu/img/lab06/architectingmodernjavaeeapplications.png','EN','Architecting Modern Java EE applications'),(167,'http://jee.chticod.eu/img/lab06/automateit.jpg','EN','Automate it!'),(168,'http://jee.chticod.eu/img/lab06/buildingwebappswithspring5andangular.png','EN','Building Webapps with Spring 5 and Angular'),(169,'http://jee.chticod.eu/img/lab06/csspocketreference.jpg','EN','CSS Pocket Reference, 5th Edition'),(170,'http://jee.chticod.eu/img/lab06/css_thedefinitiveguide.jpg','EN','CSS: The Definitive Guide, 4th Edition'),(171,'http://jee.chticod.eu/img/lab06/cloudfoundry_thedefinitiveguide.jpg','EN','Cloud Foundry : The definitive guide'),(172,'http://jee.chticod.eu/img/lab06/cloudnativeinfrastructure.jpg','EN','Cloud native infrastructure'),(173,'http://jee.chticod.eu/img/lab06/cloud-nativeapplicationsinjava.png','EN','Cloud-Native Applications in Java'),(174,'http://jee.chticod.eu/img/lab06/continuousdeliverywithdockerandjenkins.png','EN','Continuous Delivery with Docker and Jenkins'),(175,'http://jee.chticod.eu/img/lab06/datavisualizationwithpythonandjavascript.jpg','EN','Data Visualization with Python and JavaScript'),(176,'http://jee.chticod.eu/img/lab06/databasereliabilityengineering.jpg','EN','Database reliability engineering'),(177,'http://jee.chticod.eu/img/lab06/deployingtoopenshift.jpg','EN','Deploying to Openshift'),(178,'http://jee.chticod.eu/img/lab06/deploymentwithdocker.png','EN','Deployment with Docker'),(179,'http://jee.chticod.eu/img/lab06/designingwebapis.jpg','EN','Designing Web APIs'),(180,'http://jee.chticod.eu/img/lab06/devopsfornetworking.png','EN','DevOps for Networking'),(181,'http://jee.chticod.eu/img/lab06/devopswithkubernetes.png','EN','DevOps with Kubernetes'),(182,'http://jee.chticod.eu/img/lab06/Deviens_un_Ninja_avec_Angular.png','FR','Deviens un Ninja avec Angular'),(183,'http://jee.chticod.eu/img/lab06/dockerandkubernetesforjavadevelopers.png','EN','Docker and Kubernetes for Java Developers'),(184,'http://jee.chticod.eu/img/lab06/effectivedevops.jpg','EN','Effective DevOps'),(185,'http://jee.chticod.eu/img/lab06/effectivedevopswithaws.png','EN','Effective DevOps with AWS'),(186,'http://jee.chticod.eu/img/lab06/Effective.Java.3rd.Edition.0134685997.png','EN','Effective Java, 3rd Edition'),(187,'http://jee.chticod.eu/img/lab06/flaskwebdevelopment.jpg','EN','Flask Web Development, 2nd Edition'),(188,'http://jee.chticod.eu/img/lab06/GameEngineBlackBook-Wolfenstein3D.png','EN','Game Engine Black Book - Wolfenstein 3D'),(189,'http://jee.chticod.eu/img/lab06/gettingstartedwithkubernetes_secondedition.png','EN','Getting Started with Kubernetes'),(190,'http://jee.chticod.eu/img/lab06/highperformanceimages.jpg','EN','High Performance Images'),(191,'http://jee.chticod.eu/img/lab06/jwt-handbook-v0_14_1.png','EN','JWT Handbook'),(192,'http://jee.chticod.eu/img/lab06/java11cookbook.png','EN','Java 11 Cookbook'),(193,'http://jee.chticod.eu/img/lab06/java8lambdas.jpg','EN','Java 8 lambdas'),(194,'http://jee.chticod.eu/img/lab06/java9programmingbyexample.png','EN','Java 9 Programming By Example'),(195,'http://jee.chticod.eu/img/lab06/java9concurrencycookbook.png','EN','Java 9 concurrency cookbook'),(196,'http://jee.chticod.eu/img/lab06/javacookbook.jpg','EN','Java Cookbook'),(197,'http://jee.chticod.eu/img/lab06/javaee8applicationdevelopment.png','EN','Java EE 8 Application Development'),(198,'http://jee.chticod.eu/img/lab06/javaee8cookbook.png','EN','Java EE 8 Cookbook'),(199,'http://jee.chticod.eu/img/lab06/javaee8andangular.png','EN','Java EE 8 and Angular'),(200,'http://jee.chticod.eu/img/lab06/javagenericsandcollections.jpg','EN','Java Generics and collections'),(201,'http://jee.chticod.eu/img/lab06/javamessageservice.jpg','EN','Java Message Service'),(202,'http://jee.chticod.eu/img/lab06/javanetworkprogramming.jpg','EN','Java Network Programming'),(203,'http://jee.chticod.eu/img/lab06/javapocketguide.jpg','EN','Java Pocket Guide'),(204,'http://jee.chticod.eu/img/lab06/javaprojects.png','EN','Java Projects'),(205,'http://jee.chticod.eu/img/lab06/javathreads.jpg','EN','Java Threads'),(206,'http://jee.chticod.eu/img/lab06/javawebservices_upandrunning.jpg','EN','Java Web Services : up and running'),(207,'http://jee.chticod.eu/img/lab06/javainanutshell.jpg','EN','Java in a nutshell'),(208,'http://jee.chticod.eu/img/lab06/javaperformance_thedefinitiveguide.jpg','EN','Java performance : the definitive guide'),(209,'http://jee.chticod.eu/img/lab06/jenkins2_upandrunning.jpg','EN','Jenkins 2 : up and running'),(210,'http://jee.chticod.eu/img/lab06/jenkins_thedefinitiveguide.jpg','EN','Jenkins : The definitive guide'),(211,'http://jee.chticod.eu/img/lab06/kubernetes_upandrunning.jpg','EN','Kubernetes : up and running'),(212,'http://jee.chticod.eu/img/lab06/learningcontinuousintegrationwithjenkins.png','EN','Learning Continuous Integration with Jenkins'),(213,'http://jee.chticod.eu/img/lab06/learninggraphql.jpg','EN','Learning GraphQL'),(214,'http://jee.chticod.eu/img/lab06/learningjava.jpg','EN','Learning Java'),(215,'http://jee.chticod.eu/img/lab06/learningjavabybuildingandroidgames.png','EN','Learning Java by Building Android Games'),(216,'http://jee.chticod.eu/img/lab06/learningjavascript.jpg','EN','Learning JavaScript, 3rd Edition'),(217,'http://jee.chticod.eu/img/lab06/learningphpmysqlandjavascript.jpg','EN','Learning PHP, MySQL & JavaScript, 5th Edition'),(218,'http://jee.chticod.eu/img/lab06/learningreact1.jpg','EN','Learning React'),(219,'http://jee.chticod.eu/img/lab06/learningrxjava.png','EN','Learning RxJava'),(220,'http://jee.chticod.eu/img/lab06/learningspringboot2.png','EN','Learning Spring Boot 2.0'),(221,'http://jee.chticod.eu/img/lab06/linuxpocketguide_3rdedition.jpg','EN','Linux Pocket Guide'),(222,'http://jee.chticod.eu/img/lab06/masteringansible.png','EN','Mastering Ansible'),(223,'http://jee.chticod.eu/img/lab06/masteringdocker.png','EN','Mastering Docker'),(224,'http://jee.chticod.eu/img/lab06/masteringjava11.png','EN','Mastering Java 11'),(225,'http://jee.chticod.eu/img/lab06/masteringjavamachinelearning.png','EN','Mastering Java Machine Learning'),(226,'http://jee.chticod.eu/img/lab06/masteringkubernetes.png','EN','Mastering Kubernetes'),(227,'http://jee.chticod.eu/img/lab06/masteringmodularjavascript.jpg','EN','Mastering Modular JavaScript'),(228,'http://jee.chticod.eu/img/lab06/minecraftmoddingwithforge.jpg','EN','Minecraft Modding with Forge'),(229,'http://jee.chticod.eu/img/lab06/movinghadooptothecloud.jpg','EN','Moving Hadoop to the cloud'),(230,'http://jee.chticod.eu/img/lab06/openstackadministrationwithansible2.png','EN','OpenStack Administration with Ansible 2'),(231,'http://jee.chticod.eu/img/lab06/practicalnetworkautomation.png','EN','Practical Network Automation'),(232,'http://jee.chticod.eu/img/lab06/practicalmonitoring.jpg','EN','Practical monitoring'),(233,'http://jee.chticod.eu/img/lab06/puppet5beginnersguide.png','EN','Puppet 5 Beginner\'s Guide'),(234,'http://jee.chticod.eu/img/lab06/resrestfuljavawithjaxrs2.jpg','EN','RESTful Java with JAX-RS-2.0'),(235,'http://jee.chticod.eu/img/lab06/software-architecture-for-developers.png','EN','Software Architecture for developers'),(236,'http://jee.chticod.eu/img/lab06/spring5designpatterns.png','EN','Spring 5 design patterns'),(237,'http://jee.chticod.eu/img/lab06/springsecurity.png','EN','Spring Security'),(238,'http://jee.chticod.eu/img/lab06/thinkjava.jpg','EN','Think Java'),(239,'http://jee.chticod.eu/img/lab06/usingsvgwithcss3andhtml5.jpg','EN','Using SVG with CSS3 and HTML5'),(240,'http://jee.chticod.eu/img/lab06/vuejs_upandrunning.jpg','EN','Vue.js: Up and Running'),(241,'http://jee.chticod.eu/img/lab06/windowsserver2016automationwithpowershellcookbook.png','EN','Windows Server 2016 Automation with PowerShell Cookbook'),(242,'http://jee.chticod.eu/img/lab06/youdontknowjs_es6andbeyond.jpg','EN','You Don\'t Know JS: ES6 & Beyond'),(243,'http://jee.chticod.eu/img/lab06/youdontknowjs_scopeandclosures.jpg','EN','You Don\'t Know JS: Scope & Closures'),(244,'http://jee.chticod.eu/img/lab06/youdontknowjs_upandgoing.jpg','EN','You Don\'t Know JS: Up & Going');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_author`
--

DROP TABLE IF EXISTS `book_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_author` (
  `book_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  KEY `FKi58evljxutyg4crade5qq9chg` (`author_id`),
  KEY `FKp9yng9x0cua3n2j4gfvlwpsc0` (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_author`
--

LOCK TABLES `book_author` WRITE;
/*!40000 ALTER TABLE `book_author` DISABLE KEYS */;
INSERT INTO `book_author` VALUES (165,149),(166,81),(167,91),(168,151),(169,126),(170,126),(170,161),(171,163),(172,90),(172,135),(173,121),(173,96),(173,155),(174,116),(175,78),(176,74),(176,122),(177,85),(178,94),(179,150),(179,105),(179,145),(180,58),(181,101),(181,104),(181,76),(182,133),(183,112),(184,82),(184,79),(185,87),(186,68),(187,93),(188,148),(189,60),(190,140),(190,107),(190,124),(190,160),(190,84),(190,65),(191,139),(192,146),(192,147),(193,159),(194,157),(195,92),(196,80),(197,100),(198,128),(199,137),(200,130),(200,158),(201,144),(201,127),(201,75),(202,98),(203,119),(203,118),(204,157),(205,136),(205,164),(206,108),(207,86),(207,88),(208,136),(209,113),(210,153),(211,102),(211,72),(211,63),(212,138),(213,61),(213,141),(214,132),(214,117),(215,103),(216,70),(217,134),(218,61),(218,141),(219,131),(220,156),(221,62),(222,110),(223,125),(223,89),(224,114),(225,109),(225,77),(226,125),(226,89),(227,67),(228,97),(228,95),(229,99),(230,66),(231,143),(232,106),(233,59),(234,71),(235,69),(236,142),(237,111),(237,162),(237,129),(238,83),(238,123),(239,73),(239,64),(239,154),(240,120),(241,115),(242,152),(243,152),(244,152);
/*!40000 ALTER TABLE `book_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_tag`
--

DROP TABLE IF EXISTS `book_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_tag` (
  `book_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  KEY `FKdmnl86p8lilamh8ooyjhvsx24` (`tag_id`),
  KEY `FKc5mec8ogc8jas7cf022nrsh11` (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_tag`
--

LOCK TABLES `book_tag` WRITE;
/*!40000 ALTER TABLE `book_tag` DISABLE KEYS */;
INSERT INTO `book_tag` VALUES (165,55),(165,2),(165,41),(166,27),(166,28),(166,5),(167,16),(167,47),(167,7),(168,27),(168,51),(168,2),(169,55),(169,14),(169,41),(170,55),(170,14),(170,41),(171,12),(171,16),(172,12),(172,16),(172,41),(173,27),(173,12),(174,16),(174,11),(174,17),(174,30),(175,55),(175,47),(175,29),(175,41),(176,15),(176,16),(176,41),(176,49),(177,17),(177,16),(177,41),(177,39),(178,16),(178,17),(179,55),(179,4),(179,41),(180,16),(180,38),(181,16),(181,17),(181,33),(182,2),(182,53),(182,55),(183,16),(183,17),(183,33),(184,16),(184,41),(185,16),(185,8),(186,27),(187,55),(187,47),(187,18),(187,41),(188,24),(188,21),(189,16),(189,17),(189,33),(190,55),(190,43),(190,26),(190,41),(191,32),(191,50),(192,27),(193,27),(193,19),(193,41),(194,27),(195,27),(195,13),(196,27),(196,41),(197,27),(197,28),(198,27),(198,28),(199,27),(199,28),(199,2),(200,27),(200,41),(201,27),(201,41),(201,31),(201,6),(202,27),(202,41),(202,38),(203,27),(203,41),(204,27),(205,27),(205,41),(205,6),(205,43),(206,27),(206,41),(206,55),(206,56),(207,27),(207,41),(208,27),(208,41),(208,43),(209,30),(209,16),(209,41),(210,27),(210,41),(210,11),(210,30),(210,16),(211,33),(211,16),(211,41),(212,16),(212,30),(212,11),(213,55),(213,22),(213,41),(214,27),(214,41),(215,27),(215,1),(215,20),(216,55),(216,29),(216,41),(217,55),(217,44),(217,29),(217,37),(217,41),(218,55),(218,48),(218,41),(219,27),(219,13),(220,27),(220,51),(220,9),(221,34),(221,16),(221,41),(222,16),(222,3),(222,7),(223,16),(223,17),(224,27),(225,27),(225,35),(226,16),(226,17),(226,33),(227,55),(227,29),(227,41),(228,27),(228,41),(228,20),(229,23),(229,12),(229,16),(229,41),(230,16),(230,3),(230,40),(231,16),(231,38),(231,7),(232,36),(232,16),(232,41),(233,16),(233,46),(234,27),(234,41),(234,55),(234,56),(235,5),(235,10),(236,27),(236,51),(236,42),(237,27),(237,51),(238,27),(238,41),(239,55),(239,52),(239,25),(239,41),(240,55),(240,54),(240,29),(240,41),(241,16),(241,57),(241,45),(242,55),(242,29),(242,41),(243,55),(243,29),(243,41),(244,55),(244,29),(244,41);
/*!40000 ALTER TABLE `book_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (358),(358),(358);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `id` bigint(20) NOT NULL,
  `dateOfReview` datetime DEFAULT NULL,
  `score` int(11) NOT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8d76td2o7d2d8foei85l93b9w` (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (245,'2019-10-06 18:38:48',4,169),(256,'2019-10-06 18:57:26',4,NULL),(257,'2019-10-06 19:00:20',4,169),(258,'2019-10-06 19:00:24',5,169),(259,'2019-10-06 19:00:25',2,169),(260,'2019-10-06 19:00:26',3,169),(261,'2019-10-06 19:00:27',1,169),(262,'2019-10-06 19:00:28',2,169),(263,'2019-10-06 19:00:29',1,169),(264,'2019-10-06 19:00:32',1,169),(265,'2019-10-06 19:00:33',1,169),(266,'2019-10-06 19:00:33',1,169),(267,'2019-10-06 19:00:33',1,169),(268,'2019-10-06 19:00:33',1,169),(269,'2019-10-06 19:00:34',1,169),(270,'2019-10-06 19:00:34',1,169),(271,'2019-10-06 19:01:46',1,169),(272,'2019-10-06 19:02:00',1,169),(273,'2019-10-06 19:02:02',2,169),(274,'2019-10-06 19:02:58',1,169),(275,'2019-10-06 19:02:59',2,169),(276,'2019-10-06 19:03:00',3,169),(277,'2019-10-06 19:03:01',4,169),(278,'2019-10-06 19:03:02',5,169),(279,'2019-10-06 19:03:15',4,167),(280,'2019-10-06 19:03:16',5,167),(281,'2019-10-06 19:03:17',3,167),(282,'2019-10-06 19:03:17',2,167);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'android'),(2,'angular'),(3,'ansible'),(4,'api'),(5,'architecture'),(6,'asynchronous'),(7,'automation'),(8,'aws'),(9,'boot'),(10,'c4'),(11,'ci'),(12,'cloud'),(13,'concurrency'),(14,'css'),(15,'database'),(16,'devops'),(17,'docker'),(18,'flask'),(19,'functional programming'),(20,'game'),(21,'game programming'),(22,'graphql'),(23,'hadoop'),(24,'history'),(25,'html5'),(26,'image'),(27,'java'),(28,'javaee'),(29,'javascript'),(30,'jenkins'),(31,'jms'),(32,'jwt'),(33,'kubernetes'),(34,'linux'),(35,'machine learning'),(36,'monitoring'),(37,'mysql'),(38,'network'),(39,'openshift'),(40,'openstack'),(41,'oreilly'),(42,'patterns'),(43,'performance'),(44,'php'),(45,'powershell'),(46,'puppet'),(47,'python'),(48,'react'),(49,'reliability'),(50,'security'),(51,'spring'),(52,'svg'),(53,'typscript'),(54,'vue'),(55,'web'),(56,'webservice'),(57,'windows');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'yncrea_lab06'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-06 21:30:56
