
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
DROP TABLE IF EXISTS `wp_revisr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_revisr` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message` text,
  `event` varchar(42) NOT NULL,
  `user` varchar(60) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_revisr` WRITE;
/*!40000 ALTER TABLE `wp_revisr` DISABLE KEYS */;
INSERT INTO `wp_revisr` VALUES (1,'2016-02-21 15:49:50','Successfully created a new repository.','init','Matthew'),(2,'2016-02-21 15:53:16','Error pushing changes to the remote repository.','error','Matthew'),(3,'2016-02-21 16:03:20','Committed <a href=\"http://chin.mlplace.ca/wp-admin/admin.php?page=revisr_view_commit&commit=01cbb15&success=true\">#01cbb15</a> to the local repository.','commit','Matthew'),(4,'2016-02-21 16:09:38','Successfully backed up the database.','backup','Matthew'),(5,'2016-02-21 16:09:48','Error pushing changes to the remote repository.','error','Matthew'),(6,'2016-02-21 16:11:38','Error pushing changes to the remote repository.','error','Matthew'),(7,'2016-02-22 20:00:36','Committed <a href=\"http://chin.mlplace.ca/wp-admin/admin.php?page=revisr_view_commit&commit=1f125dd&success=true\">#1f125dd</a> to the local repository.','commit','Matthew'),(8,'2016-02-22 20:00:52','Successfully backed up the database.','backup','Matthew'),(9,'2016-02-22 20:01:03','Error pushing changes to the remote repository.','error','Matthew'),(10,'2016-02-22 20:03:29','Committed <a href=\"http://chin.mlplace.ca/wp-admin/admin.php?page=revisr_view_commit&commit=f431507&success=true\">#f431507</a> to the local repository.','commit','Matthew'),(11,'2016-02-22 20:03:40','Error pushing changes to the remote repository.','error','Matthew'),(12,'2016-02-22 21:30:42','Committed <a href=\"http://chin.mlplace.ca/wp-admin/admin.php?page=revisr_view_commit&commit=5572701&success=true\">#5572701</a> to the local repository.','commit','Matthew'),(13,'2016-02-22 21:30:59','Error pushing changes to the remote repository.','error','Matthew');
/*!40000 ALTER TABLE `wp_revisr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

