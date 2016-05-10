-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: facebookbot
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `question` (`question`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'smartbox','1. A guide of activities, hotels, restaurants or care\r\n\r\n2. The gift certificate to enable the recipient to reserve the beneficiary\r\n\r\nThe Smartbox is also available in electronic format (ebox)'),(2,'what is ebox','EBox is 100% web version of the classic gift box. This is a personalized gift box sent by email.\r\n'),(3,'delivery shipping methods ship shipped','Smartbox offers 3 shipping methods: Colissimo, Mondial Relay and TNT Express.'),(4,'I lost my password','If you have lost your password, please visit the homepage of www.mysmartbox.fr and click Forgot your password?'),(5,'when activate not activated','For security reasons our gift boxes are activated only after purchase (checkout or purchase on our website). This information is reported in our systems and can take up to 72 hours.'),(6,'register received gift','To save your gift box to your account, enter the 9 digits of your gift card number (also called PIN or Pass number) - from your gift certificate or your e-box email - on your smartbox\'s account page (or 12 digits for former cabinet EUPHORIA).'),(7,'contact other question help','For other questions, please email us here http://www.smartbox.com/fr/contacts/ or call to 09 69323733'),(8,'pay payment purchase buy','The payment order may, at your option, be made by credit card, PayPal, Leisure voucher, or have Smartbox Smartbox gift card.'),(9,'book use','After creating an account and registering your Mysmartbox gift box:\r\n\r\n1. Visit the My gift vouchers page\r\n\r\n2. Click on Book');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,''),(2,''),(3,''),(4,''),(5,''),(6,''),(7,''),(8,''),(9,''),(10,''),(11,''),(12,'');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_tu`
--

DROP TABLE IF EXISTS `log_tu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_tu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_tu`
--

LOCK TABLES `log_tu` WRITE;
/*!40000 ALTER TABLE `log_tu` DISABLE KEYS */;
INSERT INTO `log_tu` VALUES (1,'dispatched'),(2,'dispatched'),(3,'dispatched'),(4,'dispatched'),(5,'dispatched'),(6,'dispatched'),(7,'dispatched');
/*!40000 ALTER TABLE `log_tu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_tung`
--

DROP TABLE IF EXISTS `log_tung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_tung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_tung`
--

LOCK TABLES `log_tung` WRITE;
/*!40000 ALTER TABLE `log_tung` DISABLE KEYS */;
INSERT INTO `log_tung` VALUES (1,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915224205,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915224191,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915224184:1b05d0eaf9a4058e42\',\n          \'seq\' => 130,\n          \'text\' => \'chao\',\n        ),\n      ),\n    ),\n  ),\n)'),(2,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915228651,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915228640,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915228632:7e2037301689358347\',\n          \'seq\' => 134,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(3,'array (\n  \'first_name\' => \'Tung\',\n  \'last_name\' => \'Trinh\',\n  \'profile_pic\' => \'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlp1/v/t1.0-1/p200x200/13096116_1306728266009900_3817024769399648157_n.jpg?oh=67a12a9697c027305445fbccaf2a35e0&oe=57BBCA9A&__gda__=1471717541_ed17e9b90e0daa26c1cd9d17aaafb44a\',\n)'),(4,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915230358,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915228640,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915228632:7e2037301689358347\',\n          \'seq\' => 134,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(5,'array (\n  \'first_name\' => \'Tung\',\n  \'last_name\' => \'Trinh\',\n  \'profile_pic\' => \'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlp1/v/t1.0-1/p200x200/13096116_1306728266009900_3817024769399648157_n.jpg?oh=67a12a9697c027305445fbccaf2a35e0&oe=57BBCA9A&__gda__=1471717541_ed17e9b90e0daa26c1cd9d17aaafb44a\',\n)'),(6,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915232071,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915228640,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915228632:7e2037301689358347\',\n          \'seq\' => 134,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(7,'array (\n  \'first_name\' => \'Tung\',\n  \'last_name\' => \'Trinh\',\n  \'profile_pic\' => \'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlp1/v/t1.0-1/p200x200/13096116_1306728266009900_3817024769399648157_n.jpg?oh=67a12a9697c027305445fbccaf2a35e0&oe=57BBCA9A&__gda__=1471717541_ed17e9b90e0daa26c1cd9d17aaafb44a\',\n)'),(8,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915233839,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915228640,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915228632:7e2037301689358347\',\n          \'seq\' => 134,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(9,'array (\n  \'first_name\' => \'Tung\',\n  \'last_name\' => \'Trinh\',\n  \'profile_pic\' => \'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlp1/v/t1.0-1/p200x200/13096116_1306728266009900_3817024769399648157_n.jpg?oh=67a12a9697c027305445fbccaf2a35e0&oe=57BBCA9A&__gda__=1471717541_ed17e9b90e0daa26c1cd9d17aaafb44a\',\n)'),(10,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915236052,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915228640,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915228632:7e2037301689358347\',\n          \'seq\' => 134,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(11,'array (\n  \'first_name\' => \'Tung\',\n  \'last_name\' => \'Trinh\',\n  \'profile_pic\' => \'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlp1/v/t1.0-1/p200x200/13096116_1306728266009900_3817024769399648157_n.jpg?oh=67a12a9697c027305445fbccaf2a35e0&oe=57BBCA9A&__gda__=1471717541_ed17e9b90e0daa26c1cd9d17aaafb44a\',\n)'),(12,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915240568,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915228640,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915228632:7e2037301689358347\',\n          \'seq\' => 134,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(13,'array (\n  \'first_name\' => \'Tung\',\n  \'last_name\' => \'Trinh\',\n  \'profile_pic\' => \'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlp1/v/t1.0-1/p200x200/13096116_1306728266009900_3817024769399648157_n.jpg?oh=67a12a9697c027305445fbccaf2a35e0&oe=57BBCA9A&__gda__=1471717541_ed17e9b90e0daa26c1cd9d17aaafb44a\',\n)'),(14,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915257417,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915228640,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915228632:7e2037301689358347\',\n          \'seq\' => 134,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(15,'array (\n  \'first_name\' => \'Tung\',\n  \'last_name\' => \'Trinh\',\n  \'profile_pic\' => \'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlp1/v/t1.0-1/p200x200/13096116_1306728266009900_3817024769399648157_n.jpg?oh=67a12a9697c027305445fbccaf2a35e0&oe=57BBCA9A&__gda__=1471717541_ed17e9b90e0daa26c1cd9d17aaafb44a\',\n)'),(16,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915329333,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915228640,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915228632:7e2037301689358347\',\n          \'seq\' => 134,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(17,'array (\n  \'first_name\' => \'Tung\',\n  \'last_name\' => \'Trinh\',\n  \'profile_pic\' => \'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlp1/v/t1.0-1/p200x200/13096116_1306728266009900_3817024769399648157_n.jpg?oh=67a12a9697c027305445fbccaf2a35e0&oe=57BBCA9A&__gda__=1471717541_ed17e9b90e0daa26c1cd9d17aaafb44a\',\n)'),(18,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915402777,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915228640,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915228632:7e2037301689358347\',\n          \'seq\' => 134,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(19,'array (\n  \'first_name\' => \'Tung\',\n  \'last_name\' => \'Trinh\',\n  \'profile_pic\' => \'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlp1/v/t1.0-1/p200x200/13096116_1306728266009900_3817024769399648157_n.jpg?oh=67a12a9697c027305445fbccaf2a35e0&oe=57BBCA9A&__gda__=1471717541_ed17e9b90e0daa26c1cd9d17aaafb44a\',\n)'),(20,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915479502,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915228640,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915228632:7e2037301689358347\',\n          \'seq\' => 134,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(21,'array (\n  \'first_name\' => \'Tung\',\n  \'last_name\' => \'Trinh\',\n  \'profile_pic\' => \'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlp1/v/t1.0-1/p200x200/13096116_1306728266009900_3817024769399648157_n.jpg?oh=67a12a9697c027305445fbccaf2a35e0&oe=57BBCA9A&__gda__=1471717541_ed17e9b90e0daa26c1cd9d17aaafb44a\',\n)'),(22,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915558530,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915228640,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915228632:7e2037301689358347\',\n          \'seq\' => 134,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(23,'array (\n  \'first_name\' => \'Tung\',\n  \'last_name\' => \'Trinh\',\n  \'profile_pic\' => \'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xlp1/v/t1.0-1/p200x200/13096116_1306728266009900_3817024769399648157_n.jpg?oh=67a12a9697c027305445fbccaf2a35e0&oe=57BBCA9A&__gda__=1471717541_ed17e9b90e0daa26c1cd9d17aaafb44a\',\n)'),(24,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915584934,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915584920,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915584913:4485e3efc7d6539791\',\n          \'seq\' => 135,\n          \'text\' => \'chao\',\n        ),\n      ),\n    ),\n  ),\n)'),(25,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915602687,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915602673,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915602666:638d6a2024f4b1a100\',\n          \'seq\' => 139,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(26,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915666822,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915666806,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915666798:927398e0ec20e30581\',\n          \'seq\' => 143,\n          \'text\' => \'hello bot\',\n        ),\n      ),\n    ),\n  ),\n)'),(27,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915698783,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915698769,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915698762:805f5113f72ff37e90\',\n          \'seq\' => 147,\n          \'text\' => \'chao\',\n        ),\n      ),\n    ),\n  ),\n)'),(28,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915702260,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915702251,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915702243:9d2a42a8ed008df223\',\n          \'seq\' => 151,\n          \'text\' => \'hey\',\n        ),\n      ),\n    ),\n  ),\n)'),(29,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915815669,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915815654,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915815647:1adc9fdddd50ed8c15\',\n          \'seq\' => 155,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(30,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461915829312,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461915829301,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461915829294:677f815578c395c051\',\n          \'seq\' => 159,\n          \'text\' => \'yayaya\',\n        ),\n      ),\n    ),\n  ),\n)'),(31,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461916090000,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461916089985,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461916089979:ecfb98f5c585322353\',\n          \'seq\' => 163,\n          \'text\' => \'chao\',\n        ),\n      ),\n    ),\n  ),\n)'),(32,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461916094115,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461916094099,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461916094091:a98d28dc58c9217083\',\n          \'seq\' => 167,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(33,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461916148366,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461916148352,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461916148346:69434310cfb2bae674\',\n          \'seq\' => 171,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(34,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461916160049,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461916160034,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461916160027:1417e5550b5ea8ae86\',\n          \'seq\' => 175,\n          \'text\' => \'hey\',\n        ),\n      ),\n    ),\n  ),\n)'),(35,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461916306154,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461916306141,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461916306134:14ba721103facbf613\',\n          \'seq\' => 179,\n          \'text\' => \'chao\',\n        ),\n      ),\n    ),\n  ),\n)'),(36,'false'),(37,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461916323879,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461916323864,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461916323858:0a97ace3232841e384\',\n          \'seq\' => 183,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(38,'true'),(39,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461916381122,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461916381107,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461916381100:a7fc0f552cb915f500\',\n          \'seq\' => 187,\n          \'text\' => \'chao\',\n        ),\n      ),\n    ),\n  ),\n)'),(40,'false'),(41,'array (\n  0 => \n  array (\n    \'id\' => 1185410308149364,\n    \'time\' => 1461916390117,\n    \'messaging\' => \n    array (\n      0 => \n      array (\n        \'sender\' => \n        array (\n          \'id\' => 726250370811483,\n        ),\n        \'recipient\' => \n        array (\n          \'id\' => 1185410308149364,\n        ),\n        \'timestamp\' => 1461916390091,\n        \'message\' => \n        array (\n          \'mid\' => \'mid.1461916390081:27a76a759a03f67026\',\n          \'seq\' => 191,\n          \'text\' => \'hello\',\n        ),\n      ),\n    ),\n  ),\n)'),(42,'true'),(43,'array (\n  \'attachment\' => \n  array (\n    \'type\' => \'template\',\n    \'payload\' => \n    array (\n      \'template_type\' => \'button\',\n      \'text\' => \'Hi Tung,\\\\nAre you looking for something to buy?\',\n      \'buttons\' => \n      array (\n        0 => \n        array (\n          \'type\' => \'postback\',\n          \'title\' => \'Yes\',\n          \'payload\' => \n          array (\n            \'beneficiary_self\' => true,\n          ),\n        ),\n        1 => \n        array (\n          \'type\' => \'postback\',\n          \'title\' => \'No\',\n          \'payload\' => \n          array (\n            \'beneficiary_self\' => false,\n          ),\n        ),\n      ),\n    ),\n  ),\n)');
/*!40000 ALTER TABLE `log_tung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `title` varchar(500) NOT NULL,
  `image` text NOT NULL,
  `subtitle` varchar(500) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES ('Rendez-vous Gourmand - 59,90 €','http://cdn.smartbox.com/media/catalog/product/T134/T134_listing_280.jpg','Un repas entrée, plat, dessert pour deux personnes','http://www.smartbox.com/fr/nos-smartbox/gastronomie/rendez-vous-gourmand-t134.html'),('Spa et volupté - 74,90 €','http://cdn.smartbox.com/media/catalog/product/U464/U464_listing_280.jpg','Une séance bien-être jusqu\'à quatre heures pour une ou deux personnes','http://www.smartbox.com/fr/nos-smartbox/bien-etre/spa-et-volupte-u464.html'),('Week-end bulle de bien-être - 199,90 €','http://cdn.smartbox.com/media/catalog/product/U449/U449_listing_280.jpg','Deux nuits avec petits-déjeuners et accès à l\'espace détente pour deux personnes','http://www.smartbox.com/fr/nos-smartbox/bien-etre/week-end-bulle-de-bien-etre-u449.html'),('Evasion bien-être - 99,90 €','http://cdn.smartbox.com/media/catalog/product/U466/U466_listing_280.jpg','Une nuit avec petit-déjeuner et accès à l\'espace détente pour deux personnes','http://www.smartbox.com/fr/nos-smartbox/sejour/evasion-bien-etre-u466.html'),('Dose d\'adrénaline - 99,90 €','http://cdn.smartbox.com/media/catalog/product/U473/U473_listing_280.jpg','De une à quatre personnes','http://www.smartbox.com/fr/nos-smartbox/sport-et-aventure/dose-d-adrenaline-u473.html');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-29 16:28:13
