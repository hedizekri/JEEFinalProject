CREATE DATABASE  IF NOT EXISTS `yncrea_coloc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `yncrea_coloc`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: yncrea_coloc
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
-- Table structure for table `colocataire`
--

DROP TABLE IF EXISTS `colocataire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colocataire` (
  `id_coloc` bigint(20) NOT NULL,
  `firstname_coloc` varchar(255) DEFAULT NULL,
  `lastname_coloc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_coloc`),
  KEY `FKp9yng9x0cua3n2j4gfvlwpsc0` (`id_coloc`),
  KEY `FKp9yng9x0cua3n2j4gfvlwpsc1` (`id_coloc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colocataire`
--

LOCK TABLES `colocataire` WRITE;
/*!40000 ALTER TABLE `colocataire` DISABLE KEYS */;
INSERT INTO `colocataire` VALUES (1, 'Hedi', 'Zekri'),
                                 (2, 'Rodolphe', 'Fourdinier'),
                                 (3, 'Alan', 'Turing'),
                                 (4, 'Albert', 'Einstein'),
                                 (5, 'Mark', 'Zuckerberg'),
                                 (6, 'Bill', 'Gates'),
                                 (7, 'Steve', 'Jobs'),
                                 (8, 'Jeff', 'Bezos'),
                                 (9, 'Amaury', 'Willemant');
/*!40000 ALTER TABLE `colocataire` ENABLE KEYS */;
UNLOCK TABLES;












--
-- Table structure for table `pense_bete`
--

DROP TABLE IF EXISTS `pense_bete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pense_bete` (
  `id_pense_bete` bigint(20) NOT NULL,
  `id_coloc` bigint(20) DEFAULT NULL,
  `contenu_pense_bete` varchar(255) DEFAULT NULL,
  `date_pense_bete` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pense_bete`),
  KEY `FKp9yng9x0cua3n2j4gfvlwpsc0` (`id_coloc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pense_bete`
--

LOCK TABLES `pense_bete` WRITE;
/*!40000 ALTER TABLE `pense_bete` DISABLE KEYS */;
INSERT INTO `pense_bete` VALUES (1, 2,'Anniv Hedi lundi prochain (ajouté par : Rodolphe Fourdinier)', '29022020'),
                                (2, 4,'Rappeler EDF (ajouté par : Albert Einstein)', '29022020'),
                                (3, 4, 'Recupérer colis au point relais (ajouté par : Albert Einstein)', '29022020'),
                                (4, 8, 'Dimanche : Fête des grand-mère (ajouté par : Jeff Bezos)', '02032020');
/*!40000 ALTER TABLE `pense_bete` ENABLE KEYS */;
UNLOCK TABLES;









--
-- Table structure for table `article_courses`
--

DROP TABLE IF EXISTS `article_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_courses` (
                             `id_article_courses` bigint(20) NOT NULL,
                             `id_coloc` bigint(20) DEFAULT NULL,
                             `produit` varchar(255) DEFAULT NULL,
                             PRIMARY KEY (`id_article_courses`),
                             KEY `FKp9yng9x0cua3n2j4gfvlwpsc0` (`id_coloc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_courses`
--

LOCK TABLES `article_courses` WRITE;
/*!40000 ALTER TABLE `article_courses` DISABLE KEYS */;
INSERT INTO `article_courses` VALUES (1, 2, 'Boite de thon (ajouté par : Rodolphe Fourdinier)'),
                                     (2, 1, 'Gel douche (ajouté par : Hedi Zekri)'),
                                     (3, 6, 'Carte SD 64 Go (ajouté par : Bill Gates)'),
                                     (4, 7, 'Beurre doux (ajouté par : Steve Jobs)'),
                                     (5, 7, 'Peigne fin (ajouté par : Steve Jobs)'),
                                     (6, 3, 'Biscottes avoine (ajouté par : Alan Turing)'),
                                     (7, 5, 'Café soluble (ajouté par : Mark Zuckerberg)');
/*!40000 ALTER TABLE `article_courses` ENABLE KEYS */;
UNLOCK TABLES;










--
-- Table structure for table `tache_menagere`
--

DROP TABLE IF EXISTS `tache_menagere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tache_menagere` (
                                 `id_tache_menagere` bigint(20) NOT NULL,
                                 `id_coloc_auteur` bigint(20) DEFAULT NULL,
                                 `id_coloc_destinataire` bigint(20) DEFAULT NULL,
                                 `contenu_tache_menagere` varchar(255) DEFAULT NULL,
                                 `date_tache_menagere` datetime DEFAULT NULL,
                                 PRIMARY KEY (`id_tache_menagere`),
                                 KEY `FKp9yng9x0cua3n2j4gfvlwpsc0` (`id_coloc_auteur`),
                                 KEY `FKp9yng9x0cua3n2j4gfvlwpsc1` (`id_coloc_destinataire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tache_menagere`
--

LOCK TABLES `tache_menagere` WRITE;
/*!40000 ALTER TABLE `tache_menagere` DISABLE KEYS */;
INSERT INTO `tache_menagere` VALUES (1, 9, 2, 'Faire la vaisselle (concerne : Rodolphe Fourdinier)', '29022020'),
                                    (2, 4, 6, 'Trier le courrier (concerne : Bill Gates)', '29022020'),
                                    (3, 6, 7, 'Passer la serpillère (concerne : Steve Jobs)', '01032020'),
                                    (4, 5, 5, 'Faire les courses (concerne : Mark Zuckerberg)' , '02032020'),
                                    (5, 1, 5, 'Laver les carreaux (concerne : Mark Zuckerberg)', '02032020'),
                                    (6, 4, 1, 'Faire la vaisselle (concerne : Hedi Zekri)', '02032020'),
                                    (7, 2, 9, 'Mettre 16/20 a ce projet JEE (concerne : Amaury Willemant)', '02032020');
/*!40000 ALTER TABLE `tache_menagere` ENABLE KEYS */;
UNLOCK TABLES;
















--
-- Dumping events for database 'yncrea_coloc'
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
