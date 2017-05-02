-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version          5.5.46-0ubuntu0.14.04.2

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
-- Database creation
--
DROP DATABASE IF EXISTS `nest`;
CREATE DATABASE `nest`;
USE `nest`;

--
-- Table structure for table `rawdata`
--

DROP TABLE IF EXISTS `rawdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rawdata` (
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NestName` char(30) DEFAULT NULL,
  `NestUpdated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NestCurrentKelvin` decimal(7,3) NOT NULL,
  `NestTargetKelvin` decimal(7,3) NOT NULL,
  `NestTimeToTarget` int(15) NOT NULL,
  `NestHumidity` tinyint(3) unsigned NOT NULL,
  `NestHeating` tinyint(3) NOT NULL,
  `NestPostal_code` char(10) NOT NULL,
  `NestCountry` char(200) NOT NULL,
  `NestAutoAway` tinyint(3) unsigned NOT NULL,
  `NestManualAway` tinyint(3) unsigned NOT NULL,
  `WeatherMain` char(30) DEFAULT NULL,
  `WeatherDescription` char(100) DEFAULT NULL,
  `WeatherTempKelvin` decimal(7,3) NOT NULL,
  `WeatherHumidity` decimal(7,3) NOT NULL,
  `WeatherTempMinKelvin` decimal(7,3) NOT NULL,
  `WeatherTempMaxKelvin` decimal(7,3) NOT NULL,
  `WeatherPressure` decimal(7,3) NOT NULL,
  `WeatherWindspeed` decimal(7,3) NOT NULL,
  `WeatherCityName` char(30) DEFAULT NULL,
  `WeatherCloudiness` tinyint(3) NOT NULL,
  `WeatherSunRise` int(15) NOT NULL,
  `WeatherSunSet` int(15) NOT NULL,
PRIMARY KEY (`timestamp`),
  UNIQUE KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


