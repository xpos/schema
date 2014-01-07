-- MySQL dump 10.11
--
-- Host: localhost    Database: xpos
-- ------------------------------------------------------

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
-- Table structure for table `camera_brand`
--

DROP TABLE IF EXISTS `camera_brand`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `camera_brand` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `camera_brand_model`
--

DROP TABLE IF EXISTS `camera_brand_model`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `camera_brand_model` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `megapixels` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lcd_screen_size` int(5) DEFAULT NULL,
  `memory_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `zoom` decimal(2,2) DEFAULT NULL,
  `small_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `large_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mount_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2561 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lens`
--

DROP TABLE IF EXISTS `lens`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lens_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_focal_length` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_focal_length` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_aperture_at_min_focal` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_aperture_at_max_focal` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compatible_camera_body` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compatible_camera_brand` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crop_factor` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mount_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1364 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lens_mount`
--

DROP TABLE IF EXISTS `lens_mount`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lens_mount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `photo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `photo_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tags` mediumtext COLLATE utf8_unicode_ci,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `photo_url_idx` (`url`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=10358 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `photo_has_exif`
--

DROP TABLE IF EXISTS `photo_has_exif`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `photo_has_exif` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `camera_brand_model_id` int(10) DEFAULT NULL,
  `shutter_speed` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aperture` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `focal_length` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_speed` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exposure_compensation` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flash` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `x_resolution` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `y_resolution` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `software` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `exposure_program` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sensitivity_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_date_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digitized_date_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_aperture_value` decimal(2,1) DEFAULT NULL,
  `metering_mode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `light_source` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_sec_time_original` tinyint(4) DEFAULT NULL,
  `sub_sec_time_digitized` tinyint(4) DEFAULT NULL,
  `sensing_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cfa_pattern` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_rendered` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exposure_mode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `white_balance` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital_zoom_ratio` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `focal_length_cropped_sensor` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scene_capture_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gain_control` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contrast` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saturation` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sharpness` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_distance_range` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lens_info` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lens_min_focal_length` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lens_max_focal_length` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lens_min_fl_min_aperture` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lens_max_fl_min_aperture` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compression` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coded_char_set` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xmp_toolkit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_tool` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approx_focus_distance` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_transform` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `camera_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) DEFAULT NULL,
  `flickr_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orientation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_space` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `focal_plane_x_resolution` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `focal_plane_y_resolution` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_offset` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_length` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flash_compensation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `camera_make` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gps_latititude` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gps_longitude` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gps_altitude` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gps_altitude_ref` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lens_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `camera_lens_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7559 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `oath_token` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_follows`
--

DROP TABLE IF EXISTS `user_follows`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_follows` (
  `follower_id` int(11) NOT NULL,
  `followee_id` int(11) NOT NULL,
  KEY `follower_id` (`follower_id`),
  KEY `followee_id` (`followee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_gear`
--

DROP TABLE IF EXISTS `user_gear`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_gear` (
  `user_id` int(11) NOT NULL,
  `camera_brand_model_id` int(11) DEFAULT NULL,
  `lens_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `camera_brand_model_id` (`camera_brand_model_id`),
  KEY `lens_id` (`lens_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_has_photo`
--

DROP TABLE IF EXISTS `user_has_photo`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_has_photo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `photo_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_theme`
--

DROP TABLE IF EXISTS `user_theme`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_theme` (
  `user_id` int(11) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `theme_id` (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-07 17:34:47
