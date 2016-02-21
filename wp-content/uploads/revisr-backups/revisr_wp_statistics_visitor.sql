
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
DROP TABLE IF EXISTS `wp_statistics_visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_statistics_visitor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `last_counter` date NOT NULL,
  `referred` text NOT NULL,
  `agent` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `UAString` varchar(255) DEFAULT NULL,
  `ip` varchar(60) NOT NULL,
  `location` varchar(10) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `honeypot` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `date_ip_agent` (`last_counter`,`ip`,`agent`(75),`platform`(75),`version`(75)),
  KEY `agent` (`agent`),
  KEY `platform` (`platform`),
  KEY `version` (`version`),
  KEY `location` (`location`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_statistics_visitor` WRITE;
/*!40000 ALTER TABLE `wp_statistics_visitor` DISABLE KEYS */;
INSERT INTO `wp_statistics_visitor` VALUES (1,'2016-02-17','http://chin.mlplace.ca/wp-admin/update.php?action=install-plugin&plugin=wp-statistics&_wpnonce=c4a4e9a265','Firefox','Linux','45.0',NULL,'69.31.255.3','CA',NULL,NULL),(2,'2016-02-17','http://chin.mlplace.ca','Chrome','Linux','48.0.2564.109','','69.31.255.3','CA',2,0),(3,'2016-02-17','http://chin.mlplace.ca','MSIE','Windows','8.0','','72.66.115.10','US',2,0),(4,'2016-02-17','http://chin.mlplace.ca','Safari','Windows','5.1.7','','72.66.115.14','US',1,0),(5,'2016-02-17','http://chin.mlplace.ca','Firefox','Windows','44.0','','72.66.115.14','US',2,0),(6,'2016-02-18','http://chin.mlplace.ca','Opera Next','Linux','35.0.2070.100283','','69.31.255.3','CA',2,0),(7,'2016-02-18','http://chin.mlplace.ca','Firefox','Linux','45.0','','69.31.255.3','CA',13,0),(8,'2016-02-19','http://chin.mlplace.ca','Firefox','Windows','44.0','','105.172.50.204','AO',10,0),(9,'2016-02-19','http://chin.mlplace.ca','Opera Next','Android','35.0.2070.100283','','69.31.255.3','CA',13,0),(10,'2016-02-19','http://chin.mlplace.ca','Firefox','Linux','45.0','','69.31.255.3','CA',9,0),(11,'2016-02-19','http://chin.mlplace.ca','Chrome','Linux','48.0.2564.109','','69.31.255.3','CA',18,0),(12,'2016-02-19','http://chin.mlplace.ca','Firefox','Windows','6.0','','69.31.255.3','CA',1,0),(13,'2016-02-20','http://chin.mlplace.ca','Firefox','Linux','45.0','','69.31.255.3','CA',9,0),(14,'2016-02-20','http://chin.mlplace.ca','Chrome','Linux','48.0.2564.109','','69.31.255.3','CA',2,0),(15,'2016-02-21','http://chin.mlplace.ca','Firefox','Windows','6.0','','69.31.255.3','CA',1,0),(16,'2016-02-21','http://chin.mlplace.ca','Firefox','Windows','44.0','','154.127.239.145','AO',69,0),(17,'2016-02-21','http://chin.mlplace.ca','Firefox','Linux','45.0','','69.31.255.3','CA',4,0),(18,'2016-02-21','http://chin.mlplace.ca/wp-admin/post-new.php','Firefox','Windows','44.0','','105.172.26.62','AO',14,0);
/*!40000 ALTER TABLE `wp_statistics_visitor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

