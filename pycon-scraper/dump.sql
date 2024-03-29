-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: librarebook
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.15.10.1

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
-- Table structure for table `items_authors`
--

DROP TABLE IF EXISTS `items_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_authors` (
  `items` bigint(20) NOT NULL,
  `authors` bigint(20) NOT NULL,
  PRIMARY KEY (`items`,`authors`),
  KEY `FK_2rj3v4kqv550dly6xe1actasp` (`authors`),
  CONSTRAINT `FK_2rj3v4kqv550dly6xe1actasp` FOREIGN KEY (`authors`) REFERENCES `authors` (`id`),
  CONSTRAINT `FK_kqm0elfly916jajevb375vs4g` FOREIGN KEY (`items`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_authors`
--

LOCK TABLES `items_authors` WRITE;
/*!40000 ALTER TABLE `items_authors` DISABLE KEYS */;
INSERT INTO `items_authors` VALUES (1,1),(26,4),(27,5),(28,6),(29,7),(30,8),(44,8),(31,9),(32,9),(33,9),(34,9),(35,9),(36,9),(37,9),(38,9),(39,9),(40,9),(43,9),(41,10),(42,10),(45,11),(46,12),(47,13),(48,13),(49,13),(52,13),(68,13),(71,13),(50,14),(51,15),(53,16),(54,17),(55,18),(56,18),(57,19),(58,19),(59,20),(60,21),(61,22),(62,23),(63,24),(64,25),(65,26),(66,27),(70,27),(67,28),(69,29),(72,30),(73,31),(74,32),(112,32),(75,33),(76,34),(77,35),(78,36),(143,36),(79,37),(80,38),(81,39),(82,40),(83,41),(84,42),(85,43),(86,44),(118,44),(87,45),(88,46),(89,47),(90,48),(91,49),(92,50),(93,51),(94,52),(95,53),(96,54),(97,55),(98,56),(99,57),(100,58),(101,59),(102,60),(103,60),(106,60),(107,60),(104,61),(105,62),(108,63),(109,64),(110,65),(111,66),(113,67),(114,68),(115,69),(116,70),(117,71),(119,72),(120,73),(121,74),(122,75),(123,76),(124,77),(125,78),(126,79),(127,80),(128,81),(129,82),(130,83),(131,84),(132,85),(133,86),(134,87),(135,88),(136,89),(137,90),(138,91),(139,92),(140,93),(141,94),(142,95),(144,96),(145,97),(146,97),(147,97),(148,97),(149,98),(150,99),(151,99);
/*!40000 ALTER TABLE `items_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `item_type` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cover_image_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `total_licenses` int(11) NOT NULL,
  `year_published` int(11) NOT NULL,
  `publisher` bigint(20) DEFAULT NULL,
  `series` bigint(20) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jxvg5o0sjqu3q3t8y8pow36fq` (`publisher`),
  KEY `FK_s5274tbqnsbtcy5cmfm3nndsa` (`series`),
  CONSTRAINT `FK_jxvg5o0sjqu3q3t8y8pow36fq` FOREIGN KEY (`publisher`) REFERENCES `publishers` (`id`),
  CONSTRAINT `FK_s5274tbqnsbtcy5cmfm3nndsa` FOREIGN KEY (`series`) REFERENCES `series` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('book',1,NULL,'Sequel to Space Peanut Butter','ENGLISH','Available','Space Jam',30,2016,1,NULL,NULL),('book',26,NULL,NULL,'ENGLISH','Available','Cordillera Real Sud',46,2004,7,NULL,'2016-04-10 22:55:12'),('book',27,NULL,NULL,'ENGLISH','Available','Plaisir des sons',5,1990,8,NULL,'2016-04-10 22:55:12'),('book',28,NULL,NULL,'ENGLISH','Available','Pricing Statistics Sourcebook 1995',18,1995,10,NULL,'2016-04-10 22:55:12'),('book',29,NULL,NULL,'ENGLISH','Available','Two Welsh Revivalists',27,1990,11,NULL,'2016-04-10 22:55:12'),('book',30,NULL,NULL,'ENGLISH','Available','Cfr 27 Rev 1993',1,2000,12,NULL,'2016-04-10 22:55:12'),('book',31,NULL,NULL,'ENGLISH','Available','Executing the Basics of Healing',27,2002,9,NULL,'2016-04-10 22:55:12'),('book',32,NULL,NULL,'ENGLISH','Available','Winning in the Time of Trouble',17,2003,9,NULL,'2016-04-10 22:55:12'),('book',33,NULL,NULL,'ENGLISH','Available','Reigning in Life as a King (Faith Library)',44,2002,9,NULL,'2016-04-10 22:55:12'),('book',34,NULL,NULL,'ENGLISH','Available','Winning the War of Words (Faith Library)',25,2002,9,NULL,'2016-04-10 22:55:12'),('book',35,NULL,NULL,'ENGLISH','Available','Staying Positive in a Negative World (Faith Library)',31,2002,9,NULL,'2016-04-10 22:55:12'),('book',36,NULL,NULL,'ENGLISH','Available','What It Means to Believe with the Heart (Faith Library)',3,2002,9,NULL,'2016-04-10 22:55:12'),('book',37,NULL,NULL,'ENGLISH','Available','Defeating the Giants in Your Life (Faith Library)',9,2002,9,NULL,'2016-04-10 22:55:12'),('book',38,NULL,NULL,'ENGLISH','Available','Healing Scriptures (Faith Library)',14,2006,13,NULL,'2016-04-10 22:55:12'),('book',39,NULL,NULL,'ENGLISH','Available','Knowing God as Your Father',18,2003,9,NULL,'2016-04-10 22:55:12'),('book',40,NULL,NULL,'ENGLISH','Available','Knowing God as Your Fa -PR',22,2004,9,NULL,'2016-04-10 22:55:12'),('book',41,NULL,NULL,'ENGLISH','Available','Staying Positive in a Negative World',43,2006,9,NULL,'2016-04-10 22:55:12'),('book',42,NULL,NULL,'ENGLISH','Available','Winning the War of Words (Faith Library)',15,2006,9,NULL,'2016-04-10 22:55:12'),('book',43,NULL,NULL,'ENGLISH','Available','Reigning in Life as a King',18,2005,9,NULL,'2016-04-10 22:55:12'),('book',44,NULL,NULL,'ENGLISH','Available','Cfr 42 Rev 1994',17,1995,12,NULL,'2016-04-10 22:55:12'),('book',45,NULL,NULL,'ENGLISH','Available','Course in Miracles, 1989',47,1920,1,NULL,'2016-04-10 22:59:38'),('book',46,NULL,NULL,'ENGLISH','Available','Having Your Baby in Kansas City',47,1920,1,NULL,'2016-04-10 22:59:38'),('book',47,NULL,NULL,'ENGLISH','Available','Games Trio',44,1992,1,NULL,'2016-04-10 22:59:38'),('book',48,NULL,NULL,'ENGLISH','Available','Teamwork',5,1996,1,NULL,'2016-04-10 22:59:39'),('book',49,NULL,NULL,'ENGLISH','Available','Teamwork PAL Video Package (European Video Standards - PAL)',20,1996,1,NULL,'2016-04-10 22:59:39'),('book',50,NULL,NULL,'ENGLISH','Available','Visions of an Island',37,1999,1,NULL,'2016-04-10 22:59:39'),('book',51,NULL,NULL,'ENGLISH','Available','Bumps Proof Copy',43,1997,1,NULL,'2016-04-10 22:59:39'),('book',52,NULL,NULL,'ENGLISH','Available','Knock Your Socks Off Trio',32,1996,19,NULL,'2016-04-10 22:59:39'),('book',53,NULL,NULL,'ENGLISH','Available','Atlas of Canada and the World',24,1984,1,NULL,'2016-04-10 22:59:39'),('book',54,NULL,NULL,'ENGLISH','Available','Accursed Mountains',13,1998,1,NULL,'2016-04-10 22:59:39'),('book',55,NULL,NULL,'ENGLISH','Available','Diversophy Professional Editio',36,1994,19,NULL,'2016-04-10 22:59:39'),('book',56,NULL,NULL,'ENGLISH','Available','Diversophy Conference Edition',21,1994,19,NULL,'2016-04-10 22:59:39'),('book',57,NULL,NULL,'ENGLISH','Available','Managing Conflict and Disagreement',30,1996,20,NULL,'2016-04-10 22:59:39'),('book',58,NULL,NULL,'ENGLISH','Available','Management of Differences Inventory',26,1996,20,NULL,'2016-04-10 22:59:39'),('book',59,NULL,NULL,'ENGLISH','Available','Mama Tina - Bca Only',37,1998,18,NULL,'2016-04-10 22:59:39'),('book',60,NULL,NULL,'ENGLISH','Available','Trainers Games Set',10,1996,21,NULL,'2016-04-10 22:59:39'),('book',61,NULL,NULL,'ENGLISH','Available','Tricks for Trainers 2 Vol Set',18,1996,19,NULL,'2016-04-10 22:59:39'),('book',62,NULL,NULL,'ENGLISH','Available','National Hockey League/0204',13,1988,1,NULL,'2016-04-10 22:59:39'),('book',63,NULL,NULL,'ENGLISH','Available','Zen Art Set',1,1996,1,NULL,'2016-04-10 22:59:39'),('book',64,NULL,NULL,'ENGLISH','Available','Pictorial History of Baseball',29,1893,25,NULL,'2016-04-10 22:59:39'),('book',65,NULL,NULL,'ENGLISH','Available','Cobra Road Bca Only',43,1999,18,NULL,'2016-04-10 22:59:39'),('book',66,NULL,NULL,'ENGLISH','Available','High Performance Team Set',13,1998,21,NULL,'2016-04-10 22:59:39'),('book',67,NULL,NULL,'ENGLISH','Available','Victorian Underworld BC Only',22,1998,26,NULL,'2016-04-10 22:59:39'),('book',68,NULL,NULL,'ENGLISH','Available','Deluxe Practical Guidebooks Se',31,1998,19,NULL,'2016-04-10 22:59:39'),('book',69,NULL,NULL,'ENGLISH','Available','VICTORIAN UNDERWORLD TSP',3,1998,18,NULL,'2016-04-10 22:59:39'),('book',70,NULL,NULL,'ENGLISH','Available','Quality Improvement Series Set',25,1996,21,NULL,'2016-04-10 22:59:39'),('book',71,NULL,NULL,'ENGLISH','Available','Workplace Diversity Series',49,1996,30,NULL,'2016-04-10 22:59:39'),('book',72,NULL,NULL,'ENGLISH','Available','Performance Excellence Planning: Facilitator\'s Guide Pkg',15,1996,20,NULL,'2016-04-10 22:59:39'),('book',73,NULL,NULL,'ENGLISH','Available','Smoker Proof Copy',45,1999,24,NULL,'2016-04-10 22:59:39'),('book',74,NULL,NULL,'ENGLISH','Available','Now We Are Sixty BC Only',18,1999,26,NULL,'2016-04-10 22:59:39'),('book',75,NULL,NULL,'ENGLISH','Available','Tsp Only Railwaymen Politics',10,1997,18,NULL,'2016-04-10 22:59:39'),('book',76,NULL,NULL,'ENGLISH','Available','American Bar',16,1998,35,NULL,'2016-04-10 22:59:39'),('book',77,NULL,NULL,'ENGLISH','Available','Everyone\'s a Coach Coaching from the Heart',39,1997,1,NULL,'2016-04-10 22:59:39'),('book',78,NULL,NULL,'ENGLISH','Available','Angels of Russia Proof Copy',49,1999,24,NULL,'2016-04-10 22:59:39'),('book',79,NULL,NULL,'ENGLISH','Available','Treasured Perennials BC Only',40,1999,26,NULL,'2016-04-10 22:59:39'),('book',80,NULL,NULL,'ENGLISH','Available','Antonio Gaudi Architect Bca Only',15,2000,34,NULL,'2016-04-10 22:59:39'),('book',81,NULL,NULL,'ENGLISH','Available','Goat Bca Only',15,2000,26,NULL,'2016-04-10 22:59:39'),('book',82,NULL,NULL,'ENGLISH','Available','Step by Step Reengineering Trainers Set',50,1996,21,NULL,'2016-04-10 22:59:39'),('book',83,NULL,NULL,'ENGLISH','Available','Ben Nicholson BC Only',25,2000,26,NULL,'2016-04-10 22:59:39'),('book',84,NULL,NULL,'ENGLISH','Available','Malta Convoys 1940-43 BC Only',42,2000,26,NULL,'2016-04-10 22:59:39'),('book',85,NULL,NULL,'ENGLISH','Available','Importance of Being Edward BC Onl',40,2000,26,NULL,'2016-04-10 22:59:39'),('book',86,NULL,NULL,'ENGLISH','Available','Scoop-Wallah BC Only',11,2000,26,NULL,'2016-04-10 22:59:39'),('book',87,NULL,NULL,'ENGLISH','Available','Nineteen Eighteen (1918) BC Only',5,2000,26,NULL,'2016-04-10 22:59:39'),('book',88,NULL,NULL,'ENGLISH','Available','The Chinese Tsp Paperback',43,2000,26,NULL,'2016-04-10 22:59:39'),('book',89,NULL,NULL,'ENGLISH','Available','George IV Grand Entertainment',43,2001,26,NULL,'2016-04-10 22:59:39'),('book',90,NULL,NULL,'ENGLISH','Available','The Bomber War BC Only',37,2001,26,NULL,'2016-04-10 22:59:39'),('book',91,NULL,NULL,'ENGLISH','Available','Golf Handbook',23,1997,35,NULL,'2016-04-10 22:59:39'),('book',92,NULL,NULL,'ENGLISH','Available','Odysseys',40,1936,1,NULL,'2016-04-10 22:59:39'),('book',93,NULL,NULL,'ENGLISH','Available','River Town BC Only',48,2001,26,NULL,'2016-04-10 22:59:39'),('book',94,NULL,NULL,'ENGLISH','Available','Cicero BC Only',3,2001,26,NULL,'2016-04-10 22:59:39'),('book',95,NULL,NULL,'ENGLISH','Available','Living Bible Abraham & His Sons',24,1997,35,NULL,'2016-04-10 22:59:39'),('book',96,NULL,NULL,'ENGLISH','Available','Living Bible Journey\'s of St Paul',11,1997,35,NULL,'2016-04-10 22:59:39'),('book',97,NULL,NULL,'ENGLISH','Available','Sultry Climes BC Only',46,2001,26,NULL,'2016-04-10 22:59:39'),('book',98,NULL,NULL,'ENGLISH','Available','Paris Between Empires BC Only',9,2001,26,NULL,'2016-04-10 22:59:39'),('book',99,NULL,NULL,'ENGLISH','Available','Life is Like a Taxi Ride... Display',21,1998,42,NULL,'2016-04-10 22:59:39'),('book',100,NULL,NULL,'ENGLISH','Available','Maconochie S Experiment BC Only',8,2001,26,NULL,'2016-04-10 22:59:39'),('book',101,NULL,NULL,'ENGLISH','Available','Self Abuse Qpd Only',6,2001,26,NULL,'2016-04-10 22:59:39'),('book',102,NULL,NULL,'ENGLISH','Available','Rijksmuseum English',22,1997,33,NULL,'2016-04-10 22:59:39'),('book',103,NULL,NULL,'ENGLISH','Available','Rijksmuseum French',45,1997,33,NULL,'2016-04-10 22:59:39'),('book',104,NULL,NULL,'ENGLISH','Available','Caravaggio BC Only',21,2001,26,NULL,'2016-04-10 22:59:39'),('book',105,NULL,NULL,'ENGLISH','Available','The Hit Proof Copy',44,1999,24,NULL,'2016-04-10 22:59:39'),('book',106,NULL,NULL,'ENGLISH','Available','Rijksmuseum German',1,1997,33,NULL,'2016-04-10 22:59:39'),('book',107,NULL,NULL,'ENGLISH','Available','Rijksmuseum Dutch',50,1997,33,NULL,'2016-04-10 22:59:39'),('book',108,NULL,NULL,'ENGLISH','Available','Good in a Bed BC Only',48,2001,26,NULL,'2016-04-10 22:59:39'),('book',109,NULL,NULL,'ENGLISH','Available','Four Mothers Proof Copy',18,1999,24,NULL,'2016-04-10 22:59:39'),('book',110,NULL,NULL,'ENGLISH','Available','Peacemakers BC Only',7,2001,26,NULL,'2016-04-10 22:59:39'),('book',111,NULL,NULL,'ENGLISH','Available','Collected Poems (New Edtn) BC Onl',35,2001,26,NULL,'2016-04-10 22:59:39'),('book',112,NULL,NULL,'ENGLISH','Available','Knocking on BC Only',32,2001,26,NULL,'2016-04-10 22:59:39'),('book',113,NULL,NULL,'ENGLISH','Available','A Few Bloody Noses BC Only',32,2001,26,NULL,'2016-04-10 22:59:39'),('book',114,NULL,NULL,'ENGLISH','Available','The Glasgow Boys (Bca)',43,2002,26,NULL,'2016-04-10 22:59:39'),('book',115,NULL,NULL,'ENGLISH','Available','One Hundred and One Ways Proof',28,1999,24,NULL,'2016-04-10 22:59:39'),('book',116,NULL,NULL,'ENGLISH','Available','The Last Crusade BC Only',20,2002,26,NULL,'2016-04-10 22:59:39'),('book',117,NULL,NULL,'ENGLISH','Available','Spies Beneath Berlin Bca Edition',29,2002,26,NULL,'2016-04-10 22:59:39'),('book',118,NULL,NULL,'ENGLISH','Available','Bollywood Boy Bca',39,2002,26,NULL,'2016-04-10 22:59:39'),('book',119,NULL,NULL,'ENGLISH','Available','Its Raining Plums Bca Edition',28,2002,26,NULL,'2016-04-10 22:59:39'),('book',120,NULL,NULL,'ENGLISH','Available','Hunt for Zerzura BC Only',33,2002,26,NULL,'2016-04-10 22:59:39'),('book',121,NULL,NULL,'ENGLISH','Available','Bones of Contention Tsp Bca',19,2002,26,NULL,'2016-04-10 22:59:39'),('book',122,NULL,NULL,'ENGLISH','Available','Raphael Bca Only',14,2002,34,NULL,'2016-04-10 22:59:39'),('book',123,NULL,NULL,'ENGLISH','Available','Greenwich Time and Longitude',34,1997,29,NULL,'2016-04-10 22:59:39'),('book',124,NULL,NULL,'ENGLISH','Available','The Terror Before Trafalgar Bca',20,2002,26,NULL,'2016-04-10 22:59:39'),('book',125,NULL,NULL,'ENGLISH','Available','Palace & Gardens of Quelez Englis',25,1997,33,NULL,'2016-04-10 22:59:39'),('book',126,NULL,NULL,'ENGLISH','Available','Women\'s Evangelical Commentary',46,2003,1,NULL,'2016-04-10 22:59:39'),('book',127,NULL,NULL,'ENGLISH','Available','Ontario',11,1987,1,NULL,'2016-04-10 22:59:39'),('book',128,NULL,NULL,'ENGLISH','Available','Pictorial History of American Football',36,1863,25,NULL,'2016-04-10 22:59:39'),('book',129,NULL,NULL,'ENGLISH','Available','The rise and fall of the dinosaur',33,1987,25,NULL,'2016-04-10 22:59:39'),('book',130,NULL,NULL,'ENGLISH','Available','The Pictorial History of Hockey',29,1987,1,NULL,'2016-04-10 22:59:39'),('book',131,NULL,NULL,'ENGLISH','Available','Ducks of Canada and the Northern Hemisphere',6,1897,25,NULL,'2016-04-10 22:59:39'),('book',132,NULL,NULL,'ENGLISH','Available','Images of Canada',23,1982,1,NULL,'2016-04-10 22:59:39'),('book',133,NULL,NULL,'ENGLISH','Available','THE HEALTHY HOUSPLANTS HANDBOOK (The practical guide to growing indoor plants)',2,1988,35,NULL,'2016-04-10 22:59:39'),('book',134,NULL,NULL,'ENGLISH','Available','Bank Heist',39,1998,42,NULL,'2016-04-10 22:59:39'),('book',135,NULL,NULL,'ENGLISH','Available','Bruno Springs Up Poster',44,1998,42,NULL,'2016-04-10 22:59:39'),('book',136,NULL,NULL,'ENGLISH','Available','God\'s Funeral',36,1999,18,NULL,'2016-04-10 22:59:39'),('book',137,NULL,NULL,'ENGLISH','Available','A Passionate Pen Poster',36,1998,42,NULL,'2016-04-10 22:59:39'),('book',138,NULL,NULL,'ENGLISH','Available','Big Girls Don T Cry Proof Copy',11,1999,24,NULL,'2016-04-10 22:59:39'),('book',139,NULL,NULL,'ENGLISH','Available','The Mentor Proof Copy',15,1999,24,NULL,'2016-04-10 22:59:39'),('book',140,NULL,NULL,'ENGLISH','Available','Princess Stinky-Toes and the Brave Frog Robert Poster',20,1998,42,NULL,'2016-04-10 22:59:39'),('book',141,NULL,NULL,'ENGLISH','Available','Warriors of Darkmyre',1,1999,1,NULL,'2016-04-10 22:59:39'),('book',142,NULL,NULL,'ENGLISH','Available','Lit Bk Cocktails',16,2000,1,NULL,'2016-04-10 22:59:39'),('book',143,NULL,NULL,'ENGLISH','Available','Glass Palace Chronicle Proof',4,2000,24,NULL,'2016-04-10 22:59:39'),('book',144,NULL,NULL,'ENGLISH','Available','Larousse 12 Book Display Unit',45,1994,68,NULL,'2016-04-10 22:59:39'),('book',145,NULL,NULL,'ENGLISH','Available','Lonely Planet: Healthy Travel',10,2000,1,NULL,'2016-04-10 22:59:39'),('book',146,NULL,NULL,'ENGLISH','Available','Lonely Planet: Healthy Travel',5,2000,70,NULL,'2016-04-10 22:59:39'),('book',147,NULL,NULL,'ENGLISH','Available','Lonely Planet: Healthy Travel',35,2000,70,NULL,'2016-04-10 22:59:39'),('book',148,NULL,NULL,'ENGLISH','Available','Australia, New Zealand and the Pacific (Lonely Planet Healthy Travel)',33,2000,1,NULL,'2016-04-10 22:59:39'),('book',149,NULL,NULL,'ENGLISH','Available','Getting Everything You Can Proof',22,2001,24,NULL,'2016-04-10 22:59:39'),('book',150,NULL,NULL,'ENGLISH','Available','Ga Reprints 1991',47,1999,1,NULL,'2016-04-10 22:59:39'),('book',151,NULL,NULL,'ENGLISH','Available','Ga Reprints 1991',2,1916,74,NULL,'2016-04-10 22:59:39');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `biography` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,NULL,'Ernest','Hemingway',NULL),(2,NULL,'JK','Rowling',NULL),(4,NULL,'Collectif','',NULL),(5,NULL,'Massia','Kaneman-Pougatch',NULL),(6,NULL,'Council','Government',NULL),(7,NULL,'Eifion','Evans',NULL),(8,NULL,'United','Office',NULL),(9,NULL,'Kenneth','Hagin',NULL),(10,NULL,'Kenneth,','Hagin',NULL),(11,NULL,'Gordons.','',NULL),(12,NULL,'Kansas','Clinic',NULL),(13,NULL,'Pfeiffer','',NULL),(14,NULL,'Neville','Weereratne',NULL),(15,NULL,'Zoe','Barnes',NULL),(16,NULL,'B.M.','Willett',NULL),(17,NULL,'Robert','Carver',NULL),(18,NULL,'Multus','Inc',NULL),(19,NULL,'Kindler','',NULL),(20,NULL,'CHRISTINA','NOBLE',NULL),(21,NULL,'SCANNELL','',NULL),(22,NULL,'Arch','',NULL),(23,NULL,'Edward','Dolan',NULL),(24,NULL,'Bailey.','',NULL),(25,NULL,'John','Bowman',NULL),(26,NULL,'TREV','FISHLOCK',NULL),(27,NULL,'CHANG','',NULL),(28,NULL,'Donald','Thomas',NULL),(29,NULL,'D','THOMAS',NULL),(30,NULL,'Vital','',NULL),(31,NULL,'P','RUCKA',NULL),(32,NULL,'C','MATTHEW',NULL),(33,NULL,'ADRIAN','VAUGHAN',NULL),(34,NULL,'Charles','Schumann',NULL),(35,NULL,'Kenneth','Blanchard',NULL),(36,NULL,'P','ROY',NULL),(37,NULL,'Thomas','Graham',NULL),(38,NULL,'J.B.','Nonell',NULL),(39,NULL,'J','HARDY',NULL),(40,NULL,'MISCHE','',NULL),(41,NULL,'S','CHECKLAND',NULL),(42,NULL,'R.','Woodman',NULL),(43,NULL,'Stanley','Weintraub',NULL),(44,NULL,'Justine','Hardy',NULL),(45,NULL,'George','Dallas',NULL),(46,NULL,'Jasper','Becker',NULL),(47,NULL,'S','PARRISIEN',NULL),(48,NULL,'R','NEILLANDS',NULL),(49,NULL,'Vivien','Saunders',NULL),(50,NULL,'Freeman','Patterson',NULL),(51,NULL,'R','HESSLER',NULL),(52,NULL,'A','EVERITT',NULL),(53,NULL,'RABBI','ROMAIN',NULL),(54,NULL,'M','BRAYBROOKE',NULL),(55,NULL,'I','LITTLEWOOD',NULL),(56,NULL,'P','MANSEL',NULL),(57,NULL,'J.','MacInnis',NULL),(58,NULL,'John','Clay',NULL),(59,NULL,'J','SELF',NULL),(60,NULL,'S2165','',NULL),(61,NULL,'JOHN','PIKE',NULL),(62,NULL,'Denise','Ryan',NULL),(63,NULL,'Ursula','Buchan',NULL),(64,NULL,'Shifra','Horn',NULL),(65,NULL,'M.','Macmillan',NULL),(66,NULL,'John','Betjeman',NULL),(67,NULL,'P','Harvey',NULL),(68,NULL,'R','BILLCLIFFE',NULL),(69,NULL,'Mako','Yoshikawa',NULL),(70,NULL,'Anthony','Bruce',NULL),(71,NULL,'David','Stafford',NULL),(72,NULL,'Xanthe','Clay',NULL),(73,NULL,'Saul','Kelly',NULL),(74,NULL,'PUAL','CHAMBERS',NULL),(75,NULL,'VECCHI','',NULL),(76,NULL,'D','Howse',NULL),(77,NULL,'Tom','Pocock',NULL),(78,NULL,'INES','FERRO',NULL),(79,NULL,'Dorothy','Patterson',NULL),(80,NULL,'Catharine','Haley',NULL),(81,NULL,'Roland','Lazenby',NULL),(82,NULL,'Joseph','Wallace',NULL),(83,NULL,'Joseph;','Romain',NULL),(84,NULL,'John','Gooders',NULL),(85,NULL,'PHIL','SURGUY',NULL),(86,NULL,'David','Squire',NULL),(87,NULL,'Walter','Stewart',NULL),(88,NULL,'Sylvie','Daigneault',NULL),(89,NULL,'A','WILSON',NULL),(90,NULL,'Jill','Downie',NULL),(91,NULL,'F','CLEMENTIS',NULL),(92,NULL,'S.','Stuart',NULL),(93,NULL,'Leslie','Watts',NULL),(94,NULL,'Hein','',NULL),(95,NULL,'Hamlyn','',NULL),(96,NULL,'Christopher','Foulkes',NULL),(97,NULL,'Isabelle','Young',NULL),(98,NULL,'J','ABRAHAM',NULL),(99,NULL,'Various','',NULL);
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publishers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cover_image_path` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `profile_image_path` varchar(255) DEFAULT NULL,
  `address` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6hfeubb8cqc6wuj84uu5k3u4v` (`address`),
  CONSTRAINT `FK_6hfeubb8cqc6wuj84uu5k3u4v` FOREIGN KEY (`address`) REFERENCES `addresses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (1,NULL,'penguinpublicity@us.penguingroup.com','Penguin Random House','212-782-9000',NULL,8),(7,NULL,'alpenveiren@gmail.com','Alpen Veiren','288-7836-3553',NULL,NULL),(8,NULL,'hatier-didier@gmail.com','Hatier-Didier','484-3542-8841',NULL,NULL),(9,NULL,'faithlibrarypublications@gmail.com','Faith Library Publications','586-2922-3876',NULL,NULL),(10,NULL,'councilofstategovernment@gmail.com','Council of State Government','357-5784-9994',NULL,NULL),(11,NULL,'christianliteraturecrusade@gmail.com','Christian Literature Crusade','168-3874-1628',NULL,NULL),(12,NULL,'unitedstatesgovernmentprinting@gmail.com','United States Government Printing','834-9892-2993',NULL,NULL),(13,NULL,'harrisonhouse@gmail.com','Harrison House','616-7417-8322',NULL,NULL),(14,NULL,'meercierpress@gmail.com','Meercier Press','749-6416-5836',NULL,NULL),(15,NULL,'langenscheidtdictionaries@gmail.com','Langenscheidt Dictionaries','926-1914-9191',NULL,NULL),(16,NULL,'notavail@gmail.com','Not Avail','969-7412-3641',NULL,NULL),(17,NULL,'gordons@gmail.com','Gordons','532-4883-7728',NULL,NULL),(18,NULL,'johnmurray@gmail.com','John Murray','951-2484-3265',NULL,NULL),(19,NULL,'prenticehall(apearsoneducationcompany)@gmail.com','Prentice Hall (a Pearson Education company)','846-5539-8169',NULL,NULL),(20,NULL,'johnwiley&sonsaustralialtd@gmail.com','John Wiley & Sons Australia Ltd','661-6787-2892',NULL,NULL),(21,NULL,'titlessuppliedbyjohnwiley&sonsaustralia@gmail.com','Titles Supplied by John Wiley & Sons Australia','725-5174-2162',NULL,NULL),(22,NULL,'campbellbooks@gmail.com','Campbell Books','926-5123-9789',NULL,NULL),(23,NULL,'hoddermurray@gmail.com','Hodder Murray','433-4818-3141',NULL,NULL),(24,NULL,'piatkusbooks@gmail.com','Piatkus Books','894-3343-6422',NULL,NULL),(25,NULL,'b.mitchell@gmail.com','B. Mitchell','752-4818-9842',NULL,NULL),(26,NULL,'abbevillepress@gmail.com','Abbeville Press','694-3593-2115',NULL,NULL),(27,NULL,'apapublications@gmail.com','APA Publications','558-4452-9162',NULL,NULL),(28,NULL,'exetera@gmail.com','Exetera','734-8162-2985',NULL,NULL),(29,NULL,'philipwilsonpublishersltd@gmail.com','Philip Wilson Publishers Ltd','324-6926-2786',NULL,NULL),(30,NULL,'johnwileyandsonsltd@gmail.com','John Wiley and Sons Ltd','285-2366-2574',NULL,NULL),(31,NULL,'fontana@gmail.com','Fontana','189-5116-6435',NULL,NULL),(32,NULL,'elandpublishingltd@gmail.com','Eland Publishing Ltd','329-9162-8819',NULL,NULL),(33,NULL,'scala@gmail.com','Scala','993-2832-9978',NULL,NULL),(34,NULL,'abbevillepressinc.,u.s.@gmail.com','Abbeville Press Inc.,U.S.','697-7532-1835',NULL,NULL),(35,NULL,'marshalleditions@gmail.com','Marshall Editions','499-1824-9349',NULL,NULL),(36,NULL,'jossey-bassincpub@gmail.com','Jossey-Bass Inc Pub','367-5821-5186',NULL,NULL),(37,NULL,'harpercollinspublishersltd@gmail.com','HarperCollins Publishers Ltd','318-8996-2755',NULL,NULL),(38,NULL,'apapublicationspteltd,singapore@gmail.com','APA Publications Pte Ltd,Singapore','753-3334-4578',NULL,NULL),(39,NULL,'farmholidayguidespublications(fhg)@gmail.com','Farm Holiday Guides Publications (FHG)','632-7532-6733',NULL,NULL),(40,NULL,'taschengmbh@gmail.com','Taschen GmbH','984-5216-8128',NULL,NULL),(41,NULL,'institutgeographiquenational(ign)@gmail.com','Institut Geographique National (IGN)','683-6798-2168',NULL,NULL),(42,NULL,'harpercollinspublishers@gmail.com','HarperCollins Publishers','422-8228-7251',NULL,NULL),(43,NULL,'geocenterinternational@gmail.com','GeoCenter International','763-3865-3474',NULL,NULL),(44,NULL,'antiquecollectors\'club@gmail.com','Antique Collectors\' Club','574-9347-1656',NULL,NULL),(45,NULL,'universityofbirmingham@gmail.com','University of Birmingham','115-1978-6938',NULL,NULL),(46,NULL,'zen-ongakufushuppan-sha@gmail.com','Zen-On Gakufu Shuppan-Sha','669-5443-4116',NULL,NULL),(47,NULL,'cadoganguides@gmail.com','Cadogan Guides','355-3967-3237',NULL,NULL),(48,NULL,'boosey&hawkesmusicpublishersltd@gmail.com','Boosey & Hawkes Music Publishers Ltd','717-1593-9996',NULL,NULL),(49,NULL,'pelicanpublishingco@gmail.com','Pelican Publishing Co','365-5913-5557',NULL,NULL),(50,NULL,'specialprojects@gmail.com','Special Projects','175-5153-1555',NULL,NULL),(51,NULL,'bradttravelguides@gmail.com','Bradt Travel Guides','892-7892-6877',NULL,NULL),(52,NULL,'pepinpress@gmail.com','Pepin Press','857-2233-6181',NULL,NULL),(53,NULL,'osprey@gmail.com','Osprey','632-9692-2162',NULL,NULL),(54,NULL,'ontario:b.mitchell@gmail.com','Ontario: B. Mitchell','477-4487-5659',NULL,NULL),(55,NULL,'broadmanandholman@gmail.com','Broadman and Holman','416-8251-3921',NULL,NULL),(56,NULL,'b.mitchell@gmail.com','B.Mitchell','732-6926-4813',NULL,NULL),(57,NULL,'marshallcavendish@gmail.com','Marshall Cavendish','212-8847-4954',NULL,NULL),(58,NULL,'b.mitchell/bison/w.h.smith@gmail.com','B.Mitchell/Bison/W.H. Smith','643-1291-2597',NULL,NULL),(59,NULL,'bmitchell@gmail.com','B Mitchell','892-2743-2593',NULL,NULL),(60,NULL,'geocenterinternationalltd@gmail.com','GeoCenter International Ltd','358-7673-9354',NULL,NULL),(61,NULL,'lifewaypress@gmail.com','LifeWay Press','244-8648-7913',NULL,NULL),(62,NULL,'twistedjesterstudios@gmail.com','Twisted Jester Studios','374-5119-3879',NULL,NULL),(63,NULL,'hamlyn@gmail.com','Hamlyn','583-3112-8337',NULL,NULL),(64,NULL,'mosaik@gmail.com','Mosaik','168-7479-4139',NULL,NULL),(65,NULL,'applepress@gmail.com','Apple Press','921-9574-2915',NULL,NULL),(66,NULL,'b&hpublishinggroup@gmail.com','B&H Publishing Group','963-4166-5334',NULL,NULL),(67,NULL,'ospreypublishing@gmail.com','Osprey Publishing','569-9699-9432',NULL,NULL),(68,NULL,'editionslarousse@gmail.com','Editions Larousse','947-6192-8587',NULL,NULL),(69,NULL,'sterling@gmail.com','Sterling','977-2515-4929',NULL,NULL),(70,NULL,'lonelyplanetpublicationsltd@gmail.com','Lonely Planet Publications Ltd','191-5781-4214',NULL,NULL),(71,NULL,'lonelyplanetpublications@gmail.com','Lonely Planet Publications','425-8359-4986',NULL,NULL),(72,NULL,'collins&brown@gmail.com','Collins & Brown','421-4351-4732',NULL,NULL),(73,NULL,'compassmaps@gmail.com','Compass Maps','432-4889-3256',NULL,NULL),(74,NULL,'audioamateurinc.@gmail.com','Audio Amateur Inc.','234-6239-4688',NULL,NULL),(75,NULL,'marshallpublishing@gmail.com','Marshall Publishing','897-7748-7116',NULL,NULL);
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `num_pages` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_cg5l88g7o28gqpcsr4xttsbbe` FOREIGN KEY (`id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (50,1),(321,26),(96,27),(333,28),(138,29),(88,30),(195,31),(388,32),(258,33),(89,34),(285,35),(238,36),(138,37),(140,38),(41,39),(257,40),(219,41),(361,42),(69,43),(244,44),(110,45),(205,46),(323,47),(310,48),(355,49),(233,50),(307,51),(293,52),(43,53),(238,54),(288,55),(134,56),(135,57),(233,58),(295,59),(211,60),(361,61),(93,62),(63,63),(220,64),(396,65),(388,66),(207,67),(224,68),(331,69),(379,70),(135,71),(171,72),(186,73),(244,74),(37,75),(229,76),(48,77),(75,78),(392,79),(368,80),(271,81),(198,82),(93,83),(386,84),(326,85),(185,86),(127,87),(59,88),(377,89),(171,90),(106,91),(87,92),(197,93),(307,94),(128,95),(117,96),(160,97),(341,98),(283,99),(231,100),(38,101),(81,102),(305,103),(103,104),(207,105),(226,106),(128,107),(292,108),(208,109),(152,110),(297,111),(107,112),(207,113),(100,114),(59,115),(294,116),(286,117),(136,118),(360,119),(119,120),(314,121),(178,122),(315,123),(229,124),(315,125),(285,126),(293,127),(298,128),(143,129),(263,130),(317,131),(380,132),(224,133),(214,134),(80,135),(360,136),(121,137),(252,138),(204,139),(32,140),(136,141),(306,142),(150,143),(382,144),(272,145),(272,146),(240,147),(208,148),(48,149),(116,150),(116,151);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-13  0:48:36
