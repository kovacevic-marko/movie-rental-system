-- MySQL dump 10.15  Distrib 10.0.31-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: kovacevi_videoklub
-- ------------------------------------------------------
-- Server version	10.0.31-MariaDB-cll-lve

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
-- Table structure for table `Film`
--

DROP TABLE IF EXISTS `Film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naslov` varchar(120) NOT NULL,
  `zanr` varchar(45) NOT NULL,
  `opis` varchar(10000) DEFAULT '',
  `godina_izdanja` varchar(11) DEFAULT '',
  `jezik` varchar(45) DEFAULT '',
  `ocena_imdb` double NOT NULL,
  `trajanje_minuti` varchar(11) DEFAULT '',
  `glavni_glumci` varchar(45) DEFAULT '',
  `dostupno` varchar(4) NOT NULL DEFAULT 'da',
  `rezervisano` varchar(4) DEFAULT 'ne',
  `rezervisao_id` varchar(8) DEFAULT '',
  `vreme_rezervisanja` datetime DEFAULT NULL,
  `poslednji_iznajmio` varchar(11) DEFAULT '',
  `poslednji_datum_iznajmljivanja` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Film`
--

LOCK TABLES `Film` WRITE;
/*!40000 ALTER TABLE `Film` DISABLE KEYS */;
INSERT INTO `Film` (`id`, `naslov`, `zanr`, `opis`, `godina_izdanja`, `jezik`, `ocena_imdb`, `trajanje_minuti`, `glavni_glumci`, `dostupno`, `rezervisano`, `rezervisao_id`, `vreme_rezervisanja`, `poslednji_iznajmio`, `poslednji_datum_iznajmljivanja`) VALUES (1,'Zikina dinastija 2','Comedy','','1986','Serbian',7.4,'90','Dragomir Bojanic,Marko Todorovic,Nikola Kojo','da','da','','2017-06-12 00:00:00','','11 05 2017'),(2,'Forrest Gump','Comedy,Drama,Romance','Forrest Gump is a simple man with a low I.Q. but good intentions. He is running through childhood with his best and only friend Jenny. His mama teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, creates the smiley, writes bumper stickers and songs, donates to people and meets the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran, who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone.','1994','English',8.8,'144','Tom Hanks,Sally Field','ne','ne','','2017-06-14 14:00:00','6AI3RS','29 12 2017'),(4,'The Good, the Bad and the Ugly','Western','A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.','1966','English',8.9,'178','Eli Wallach,Clint Eastwood,Lee Van Cleef','da','ne','6AI3RS','2017-06-22 15:31:31','6AI3RS','22 06 2017'),(5,'The Shawshank Redemption','Crime, Drama ','Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.','1994','English',9.3,'144','Tim Robbins, Morgan Freeman, Bob Gunton','da','da','6AI3RS','2017-09-10 13:18:12','','20 06 2017'),(6,'Star Wars: Episode V - The Empire Strikes Back','Action, Adventure, Fantasy ','After the rebels are overpowered by the Empire on their newly established base, Luke Skywalker begins Jedi training with Master Yoda. His friends accept shelter from a questionable ally as Darth Vader hunts them in a plan to capture Luke.','1980','English',8.8,'124','Mark Hamill, Harrison Ford, Carrie Fisher','da','ne','','2017-06-08 00:00:00','6AI3RS','22 06 2017'),(7,'Fight Club','Drama','An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more.','1999','English',8.8,'139','Brad Pitt, Edward Norton, Meat Loaf','da','ne','','2017-06-15 00:00:00','',''),(11,'The Lord of the Rings: The Return of the King ','Adventure, Drama, Fantasy ','A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle Earth from the Dark Lord Sauron.','2003','English',8.9,'201','Elijah Wood, Viggo Mortensen, Ian McKellen','da','ne','','2017-06-09 00:00:00','',''),(15,'The Transporter','Action, Crime, Thriller','Frank is hired to \"transport\" packages for unknown clients and has made a very good living doing so. But when asked to move a package that begins moving, complications arise.','2002','English',8.5,'120','Jason Statham','da','ne','',NULL,'','');
/*!40000 ALTER TABLE `Film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Korisnik`
--

DROP TABLE IF EXISTS `Korisnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Korisnik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_korisnika` varchar(20) NOT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `jmbg` varchar(45) NOT NULL,
  `adresa` varchar(45) NOT NULL,
  `broj_telefona` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jmbg_UNIQUE` (`jmbg`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Korisnik`
--

LOCK TABLES `Korisnik` WRITE;
/*!40000 ALTER TABLE `Korisnik` DISABLE KEYS */;
INSERT INTO `Korisnik` (`id`, `id_korisnika`, `ime`, `prezime`, `jmbg`, `adresa`, `broj_telefona`, `email`) VALUES (1,'6AI3RS','Marko','Stefanovic','505995054145','Ulica 10','60565452',''),(2,'RQLFEC','Miki','Petrovic','1006980159897','Ulica 5','061564789',''),(3,'ZQ0DU1','Pavle','Jovanovic','0510995456585','Ulica 4','0647897878','email@example.com'),(6,'UVM93I','Stefan','Jovanovic','0504994548857','Ulica 22','0641548785','email2@example.com'),(7,'9WNJRH','Petar','Nedeljkovic','0105991104450','Ulica 5','064456456',''),(8,'J535YC','Milun','Petrovic','0402990156110','Ulica 53','064154789',''),(17,'MU3RP2','Jovan','Milovanovic','1010994456789','Ulica 34','064564789',''),(18,'YLWF9C','Pera','Peric','0105989789789','Ulica 2','060154789','email3@example.com');
/*!40000 ALTER TABLE `Korisnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pozadina`
--

DROP TABLE IF EXISTS `Pozadina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pozadina` (
  `id` int(11) NOT NULL,
  `pozadina` varchar(45) NOT NULL,
  UNIQUE KEY `pozadina_UNIQUE` (`pozadina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pozadina`
--

LOCK TABLES `Pozadina` WRITE;
/*!40000 ALTER TABLE `Pozadina` DISABLE KEYS */;
INSERT INTO `Pozadina` (`id`, `pozadina`) VALUES (1,'background2');
/*!40000 ALTER TABLE `Pozadina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SigurnosniKod`
--

DROP TABLE IF EXISTS `SigurnosniKod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SigurnosniKod` (
  `id` int(11) NOT NULL,
  `kod` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SigurnosniKod`
--

LOCK TABLES `SigurnosniKod` WRITE;
/*!40000 ALTER TABLE `SigurnosniKod` DISABLE KEYS */;
INSERT INTO `SigurnosniKod` (`id`, `kod`) VALUES (1,'demo');
/*!40000 ALTER TABLE `SigurnosniKod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'kovacevi_videoklub'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `Rezervacije` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = '' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`kovacevi`@`localhost`*/ /*!50106 EVENT `Rezervacije` ON SCHEDULE EVERY 5 SECOND STARTS '2017-06-15 00:00:00' ENDS '2017-06-17 00:00:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE Film SET rezervisano='ne'
WHERE vreme_rezervisanja < NOW() AND rezervisano='da' */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'kovacevi_videoklub'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-05  2:54:49
