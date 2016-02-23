
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
DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Matthew'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'wp_user_level','10'),(12,1,'dismissed_wp_pointers',''),(13,1,'show_welcome_panel','1'),(14,1,'session_tokens','a:3:{s:64:\"4c19616da41df3630af0cf1157bc9562166d82eeff5c8b489b164da79172801d\";a:4:{s:10:\"expiration\";i:1456203449;s:2:\"ip\";s:11:\"69.31.255.3\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0\";s:5:\"login\";i:1456030649;}s:64:\"b3a6c6d5f0e2c06cae3499a3be11d4df43fdd9b441225a1be53444b9f97fa8b1\";a:4:{s:10:\"expiration\";i:1456258472;s:2:\"ip\";s:11:\"69.31.255.3\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0\";s:5:\"login\";i:1456085672;}s:64:\"9dd900d81033780bf4cd63b36daed1b2ed9e545881462e3f51c5f3af6aceb92e\";a:4:{s:10:\"expiration\";i:1456369158;s:2:\"ip\";s:11:\"69.31.255.3\";s:2:\"ua\";s:76:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0\";s:5:\"login\";i:1456196358;}}'),(15,1,'wp_dashboard_quick_press_last_post_id','455'),(16,2,'nickname','mlloewen'),(17,2,'first_name',''),(18,2,'last_name',''),(19,2,'description',''),(20,2,'rich_editing','true'),(21,2,'comment_shortcuts','false'),(22,2,'admin_color','fresh'),(23,2,'use_ssl','0'),(24,2,'show_admin_bar_front','true'),(25,2,'wp_capabilities','a:1:{s:6:\"author\";b:1;}'),(26,2,'wp_user_level','2'),(27,2,'dismissed_wp_pointers',''),(28,3,'nickname','beckyloewenchinhama'),(29,3,'first_name',''),(30,3,'last_name',''),(31,3,'description',''),(32,3,'rich_editing','true'),(33,3,'comment_shortcuts','false'),(34,3,'admin_color','fresh'),(35,3,'use_ssl','0'),(36,3,'show_admin_bar_front','true'),(37,3,'wp_capabilities','a:1:{s:6:\"author\";b:1;}'),(38,3,'wp_user_level','2'),(39,3,'dismissed_wp_pointers',''),(40,1,'ac_21_ignore_notice','true'),(41,1,'wp_user-settings','libraryContent=browse&advImgDetails=show&align=center&editor=tinymce&imgsize=full'),(42,1,'wp_user-settings-time','1455768605'),(43,1,'closedpostboxes_post','a:0:{}'),(44,1,'metaboxhidden_post','a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";i:6;s:29:\"wp_statistics_editor_meta_box\";}'),(45,1,'wporg_favorites',''),(46,3,'s2_format','excerpt'),(47,3,'s2_autosub',NULL),(48,3,'s2_authors',''),(49,1,'s2_format','html_excerpt'),(50,1,'s2_autosub','yes'),(51,1,'s2_authors',''),(52,2,'s2_format','excerpt'),(53,2,'s2_autosub',NULL),(54,2,'s2_authors',''),(55,1,'s2_cat2','2'),(56,1,'s2_subscribed','2'),(57,1,'closedpostboxes_dashboard','a:0:{}'),(58,1,'metaboxhidden_dashboard','a:11:{i:0;s:29:\"wp-statistics-browsers-widget\";i:1;s:30:\"wp-statistics-countries-widget\";i:2;s:28:\"wp-statistics-hitsmap-widget\";i:3;s:25:\"wp-statistics-hits-widget\";i:4;s:26:\"wp-statistics-pages-widget\";i:5;s:27:\"wp-statistics-recent-widget\";i:6;s:30:\"wp-statistics-referring-widget\";i:7;s:27:\"wp-statistics-search-widget\";i:8;s:28:\"wp-statistics-summary-widget\";i:9;s:26:\"wp-statistics-words-widget\";i:10;s:33:\"wp-statistics-top-visitors-widget\";}'),(59,1,'wp_statistics','a:2:{s:13:\"dashboard_set\";s:6:\"10.0.5\";s:10:\"editor_set\";s:6:\"10.0.5\";}'),(60,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(61,1,'metaboxhidden_nav-menus','a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),(62,2,'default_password_nag',''),(64,2,'wp_statistics','a:1:{s:13:\"dashboard_set\";s:6:\"10.0.5\";}'),(65,2,'metaboxhidden_dashboard','a:11:{i:0;s:29:\"wp-statistics-browsers-widget\";i:1;s:30:\"wp-statistics-countries-widget\";i:2;s:28:\"wp-statistics-hitsmap-widget\";i:3;s:25:\"wp-statistics-hits-widget\";i:4;s:26:\"wp-statistics-pages-widget\";i:5;s:27:\"wp-statistics-recent-widget\";i:6;s:30:\"wp-statistics-referring-widget\";i:7;s:27:\"wp-statistics-search-widget\";i:8;s:28:\"wp-statistics-summary-widget\";i:9;s:26:\"wp-statistics-words-widget\";i:10;s:33:\"wp-statistics-top-visitors-widget\";}'),(66,2,'wp_dashboard_quick_press_last_post_id','456'),(67,1,'metaboxhidden_page','a:1:{i:0;s:29:\"wp_statistics_editor_meta_box\";}'),(68,3,'default_password_nag',''),(69,3,'session_tokens','a:1:{s:64:\"a603ddf2a78c053eb4b07793552dcb598735d20cc13d886b63b9ba820be312e2\";a:4:{s:10:\"expiration\";i:1456257208;s:2:\"ip\";s:15:\"154.127.239.145\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:44.0) Gecko/20100101 Firefox/44.0\";s:5:\"login\";i:1456084408;}}'),(70,3,'wp_statistics','a:2:{s:13:\"dashboard_set\";s:6:\"10.0.5\";s:10:\"editor_set\";s:6:\"10.0.5\";}'),(71,3,'metaboxhidden_dashboard','a:11:{i:0;s:29:\"wp-statistics-browsers-widget\";i:1;s:30:\"wp-statistics-countries-widget\";i:2;s:28:\"wp-statistics-hitsmap-widget\";i:3;s:25:\"wp-statistics-hits-widget\";i:4;s:26:\"wp-statistics-pages-widget\";i:5;s:27:\"wp-statistics-recent-widget\";i:6;s:30:\"wp-statistics-referring-widget\";i:7;s:27:\"wp-statistics-search-widget\";i:8;s:28:\"wp-statistics-summary-widget\";i:9;s:26:\"wp-statistics-words-widget\";i:10;s:33:\"wp-statistics-top-visitors-widget\";}'),(72,3,'wp_dashboard_quick_press_last_post_id','458'),(73,3,'metaboxhidden_post','a:1:{i:0;s:29:\"wp_statistics_editor_meta_box\";}'),(74,3,'metaboxhidden_page','a:1:{i:0;s:29:\"wp_statistics_editor_meta_box\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

