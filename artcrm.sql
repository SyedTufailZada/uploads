-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: aws-ec2-database.cyxpeevzvuth.us-east-1.rds.amazonaws.com    Database: artcrm
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `broker_files`
--

DROP TABLE IF EXISTS `broker_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `broker_files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `broker_id` int unsigned NOT NULL,
  `filename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `broker_files_broker_id_foreign` (`broker_id`),
  KEY `broker_files_filename_unique` (`filename`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `broker_files`
--

LOCK TABLES `broker_files` WRITE;
/*!40000 ALTER TABLE `broker_files` DISABLE KEYS */;
INSERT INTO `broker_files` VALUES (34,172,'Total Emplyer Resource Solutions W9.pdf','W-9','2018-11-09 03:37:53','2018-11-09 03:37:53'),(62,233,'Lamarca - W9.pdf','W-9','2019-01-02 21:30:49','2019-01-02 21:30:49'),(3,195,'Key HR - AcriSource Executed Contract.pdf','Referral Agreement','2018-09-20 19:28:57','2018-09-20 19:28:57'),(4,196,'Key HR - AcriSource Executed Contract2.pdf','Referral Agreement','2018-09-20 19:42:23','2018-09-20 19:42:23'),(30,217,'Business Solution Experts - Broker Agreement X.pdf','Referral Agreement','2018-11-09 00:47:53','2018-11-09 00:47:53'),(6,211,'Insurance Services of Sarasota - W-9.pdf','W-9','2018-09-20 21:06:30','2018-09-20 21:06:30'),(7,195,'Acrisource - W9.pdf','W-9','2018-09-20 23:28:04','2018-09-20 23:28:04'),(8,196,'Acrisource - W9-2.pdf','W-9','2018-09-20 23:28:40','2018-09-20 23:28:40'),(9,212,'Employee Care Inc. - W9.pdf','W-9','2018-09-22 23:27:51','2018-09-22 23:27:51'),(28,211,'Insurance Services of Sarasota Broker Agreement X.pdf','Referral Agreement','2018-11-09 00:33:55','2018-11-09 00:33:55'),(11,215,'Smart Comp Solutions - W9.pdf','W-9','2018-10-02 19:46:17','2018-10-02 19:46:17'),(29,215,'Smart Comp Solutions - Broker Agreement X.pdf','Referral Agreement','2018-11-09 00:40:43','2018-11-09 00:40:43'),(13,214,'Employer Choice Solutions W-9.pdf','W-9','2018-10-02 19:48:58','2018-10-02 19:48:58'),(27,212,'Employee Care Inc - Broker Agreement X.pdf','Referral Agreement','2018-11-09 00:31:26','2018-11-09 00:31:26'),(16,216,'Stable HR, LLC - W-9.pdf','W-9','2018-10-02 20:04:33','2018-10-02 20:04:33'),(17,201,'One Force Workers Compensation - W9.pdf','W-9','2018-10-02 20:06:21','2018-10-02 20:06:21'),(18,217,'Business Solution Experts W9.pdf','W-9','2018-10-02 20:12:18','2018-10-02 20:12:18'),(23,219,'Legacy Employer Concepts - W9.pdf','W-9','2018-10-11 02:09:10','2018-10-11 02:09:10'),(24,219,'Legacy Employer Concepts - BA.pdf','Referral Agreement','2018-10-11 02:09:10','2018-10-11 02:09:10'),(26,214,'Employer Choice Solutions - Broker Agreement Executed.pdf','Referral Agreement','2018-11-09 00:22:47','2018-11-09 00:22:47'),(31,216,'Stable HR LLC - KEY HR BROKER AGREEMENT X.pdf','Referral Agreement','2018-11-09 01:50:01','2018-11-09 01:50:01'),(32,216,'Stable Hr LLC - Frontline Broker Agreement X.pdf','Referral Agreement','2018-11-09 01:50:28','2018-11-09 01:50:28'),(33,201,'One Force Workers Compensation - KEY HR BROKER  AGREEMENT X.pdf','Referral Agreement','2018-11-09 03:34:37','2018-11-09 03:34:37'),(223,315,'Associated Agencies Inc - Countersigned Key HR Broker Agreement.pdf','Referral Agreement','2021-11-20 05:21:45','2021-11-20 05:21:45'),(37,183,'Affordable One Insurance - W9.pdf','W-9','2018-11-13 21:41:01','2018-11-13 21:41:01'),(38,183,'Affordable One Insurance - Broker Agreement X.pdf','Referral Agreement','2018-11-13 21:41:01','2018-11-13 21:41:01'),(39,225,'PEO Connections - W9.pdf','W-9','2018-11-13 21:43:50','2018-11-13 21:43:50'),(40,225,'PEO Connections - Broker Agreement X.pdf','Referral Agreement','2018-11-13 21:43:50','2018-11-13 21:43:50'),(41,224,'Burton International - Broker Agreement X.pdf','Referral Agreement','2018-11-13 21:47:28','2018-11-13 21:47:28'),(215,311,'Omega Insurance Solutions_Countersigned Key Broker Agreement.pdf','Referral Agreement','2021-11-03 01:15:42','2021-11-03 01:15:42'),(214,311,'Omega Insurance Solutions_ W-9.pdf','W-9','2021-11-03 01:15:42','2021-11-03 01:15:42'),(44,222,'Third Eye Vision - W9.pdf','W-9','2018-11-13 21:51:10','2018-11-13 21:51:10'),(45,222,'Third Eye Vision - Broker Agreement X.pdf','Referral Agreement','2018-11-13 21:51:10','2018-11-13 21:51:10'),(167,220,'Key HR - Broker Referral Agreement - PEO SOURCE_Executed.pdf','Referral Agreement','2020-11-10 00:43:22','2020-11-10 00:43:22'),(166,220,'2020  Peo Source LLC w9 signed.pdf','W-9','2020-11-10 00:43:22','2020-11-10 00:43:22'),(48,221,'Platinum Transaction Services - W9.pdf','W-9','2018-11-13 21:57:52','2018-11-13 21:57:52'),(49,221,'Platinum Transaction Services - Broker Agreement X.pdf','Referral Agreement','2018-11-13 21:57:52','2018-11-13 21:57:52'),(50,228,'PEO Brokers Network, INC. - W9.pdf','W-9','2018-11-15 03:32:14','2018-11-15 03:32:14'),(51,228,'PEO Brokers Network, INC. - Broker Agreement X.pdf','Referral Agreement','2018-11-15 03:32:14','2018-11-15 03:32:14'),(52,231,'McGriff Insurance Services - BROKER AGREEMENT.pdf','W-9','2018-12-14 00:37:38','2018-12-14 00:37:38'),(53,231,'McGriff W-9.pdf','W-9','2018-12-18 21:44:26','2018-12-18 21:44:26'),(54,172,'Total Employer Resource Solutions, Inc - Key Broker Agreement X.pdf','Referral Agreement','2018-12-18 22:44:27','2018-12-18 22:44:27'),(55,172,'Total Employer Resource Solutions, Inc - Frontline Referral Partner Agreement X.pdf','Referral Agreement','2018-12-18 22:44:58','2018-12-18 22:44:58'),(213,290,'BRG AG signed Agreement 3 15 2120210315_09514589.pdf','Referral Agreement','2021-11-03 00:12:27','2021-11-03 00:12:27'),(58,181,'SETO W-9.pdf','W-9','2018-12-27 20:36:36','2018-12-27 20:36:36'),(59,181,'SETO - Broker Agreement X.pdf','Referral Agreement','2018-12-27 20:36:36','2018-12-27 20:36:36'),(61,232,'DS3 - KEY HR BROKER AGREEMENT X.pdf','Referral Agreement','2018-12-28 00:43:17','2018-12-28 00:43:17'),(64,233,'Lamarca Insurance - KEY HR BROKER AGREEMENT X.pdf','Referral Agreement','2019-01-02 21:35:22','2019-01-02 21:35:22'),(65,234,'Darren Metz - W9.pdf','W-9','2019-01-03 01:07:37','2019-01-03 01:07:37'),(66,234,'Darren Metz - KeyHr Broker Agreement X.pdf','Referral Agreement','2019-01-03 01:07:37','2019-01-03 01:07:37'),(67,235,'B2B Consults 4 U, LLC - W9.pdf','W-9','2019-01-12 22:18:38','2019-01-12 22:18:38'),(68,235,'B2B Consults 4 U, LLC - Key Hr Broker Agreement X.pdf','Referral Agreement','2019-01-12 22:18:38','2019-01-12 22:18:38'),(69,236,'Dane Payroll Solutions, LLC - W9.pdf','W-9','2019-01-12 22:27:56','2019-01-12 22:27:56'),(70,236,'Dane Payroll Solutions, LLC - Key Hr Broker Agreement X.pdf','Referral Agreement','2019-01-12 22:27:56','2019-01-12 22:27:56'),(71,169,'W Coleman Enterprise LLC - W9.pdf','W-9','2019-01-15 04:05:22','2019-01-15 04:05:22'),(72,169,'W Cloeman Enterprise LLC - Key Hr Broker Agreement X.pdf','Referral Agreement','2019-01-15 04:05:22','2019-01-15 04:05:22'),(73,198,'IPRG -W9.pdf','W-9','2019-01-17 04:31:06','2019-01-17 04:31:06'),(74,198,'IPRG - KEY HR BROKER REFERRAL AGREEMENT X.pdf','Referral Agreement','2019-01-17 04:31:06','2019-01-17 04:31:06'),(75,237,'Business Insurance Management W9.pdf','W-9','2019-01-17 04:53:28','2019-01-17 04:53:28'),(76,237,'Business Insurance Management - Key Hr Broker Agreement X.pdf','Referral Agreement','2019-01-17 04:53:28','2019-01-17 04:53:28'),(77,238,'James Chamberlain - W9.pdf','W-9','2019-01-24 22:16:43','2019-01-24 22:16:43'),(78,238,'James Chamberlain - Key Broker Agreement X.pdf','Referral Agreement','2019-01-24 22:16:43','2019-01-24 22:16:43'),(79,150,'Siracusa Staffing and Leasing - W9.pdf','W-9','2019-01-29 20:53:30','2019-01-29 20:53:30'),(80,150,'Siracusa Staffing and Leasing - Key Broker Agreement X.pdf','Referral Agreement','2019-01-29 20:53:30','2019-01-29 20:53:30'),(81,197,'Insurance Benefits Solutions - W9.pdf','W-9','2019-02-01 03:47:24','2019-02-01 03:47:24'),(82,197,'Insurance Benefits Solutions - KEY HR BROKER REFERRAL AGREEMENT.pdf','Referral Agreement','2019-02-01 03:47:49','2019-02-01 03:47:49'),(83,240,'Roxal Investments LLC - W9.pdf','W-9','2019-02-18 21:29:39','2019-02-18 21:29:39'),(84,240,'Roxal Investmetns LLC - Key HR Broker Agreement.pdf','Referral Agreement','2019-02-18 21:29:39','2019-02-18 21:29:39'),(85,203,'Discount Employee Leasing - W9.pdf','W-9','2019-02-18 21:31:57','2019-02-18 21:31:57'),(86,203,'Discount Employee Leasing -Key HR Broker Agreement X.pdf','Referral Agreement','2019-02-18 21:31:57','2019-02-18 21:31:57'),(87,203,'PCS Leasing - W9.pdf','W-9','2019-02-18 21:34:22','2019-02-18 21:34:22'),(88,203,'PCS LEasing - Key HR Broker Agreement X.pdf','Referral Agreement','2019-02-18 21:34:22','2019-02-18 21:34:22'),(89,241,'PEO Partners Inc. - W9.pdf','W-9','2019-02-19 01:51:24','2019-02-19 01:51:24'),(90,241,'PEO Partners Inc. - Key HR Broker Agreement X.pdf','Referral Agreement','2019-02-19 01:51:24','2019-02-19 01:51:24'),(91,242,'Ronald Coleman - W9.pdf','W-9','2019-02-25 22:31:13','2019-02-25 22:31:13'),(92,242,'Ronald Coleman - Key HR Broker Agreement.pdf','Referral Agreement','2019-02-25 22:31:13','2019-02-25 22:31:13'),(97,135,'Business Adminstrative Consultants - W9.pdf','W-9','2019-03-02 03:20:14','2019-03-02 03:20:14'),(95,239,'Discount Employee Leasing - W9.pdf','W-9','2019-02-27 03:36:09','2019-02-27 03:36:09'),(96,239,'Discount Employee Leasing -Key HR Broker Agreement X.pdf','Referral Agreement','2019-02-27 03:36:09','2019-02-27 03:36:09'),(98,135,'Business Adminstrative Consultants Key HR Broker Agreement X.pdf','Referral Agreement','2019-03-02 03:20:14','2019-03-02 03:20:14'),(99,246,'Bridgely Key - W9.pdf','W-9','2019-04-08 21:30:25','2019-04-08 21:30:25'),(107,246,'Bridgely Key - Frontline Agreement.pdf','Referral Agreement','2019-04-18 21:51:37','2019-04-18 21:51:37'),(101,245,'Foundations PEO - Robert Beck Completed W-9.pdf','W-9','2019-04-09 23:14:17','2019-04-09 23:14:17'),(102,245,'Foundations PEO Solutions, Inc- KEY HR BROKER REFERRAL AGREEMENT.pdf','Referral Agreement','2019-04-09 23:14:17','2019-04-09 23:14:17'),(103,247,'Adminisolve - W-9 for commissions.pdf','W-9','2019-04-09 23:40:14','2019-04-09 23:40:14'),(104,247,'Adminisolve, Inc. - Key Broker Agreement.pdf','Referral Agreement','2019-04-09 23:40:14','2019-04-09 23:40:14'),(105,248,'RHS Global W9.pdf','W-9','2019-04-17 20:17:17','2019-04-17 20:17:17'),(106,248,'RHS Global Group - Frontline Broker Agreement.pdf','Referral Agreement','2019-04-17 20:17:17','2019-04-17 20:17:17'),(108,208,'Secure Work Comp, LLC - W9.pdf','W-9','2019-06-04 22:06:51','2019-06-04 22:06:51'),(109,208,'Secure WorkComp LLC - Broker Agreement.pdf','Referral Agreement','2019-06-04 22:06:51','2019-06-04 22:06:51'),(110,207,'Secure Work Comp, LLC - W9.pdf','W-9','2019-06-04 22:07:23','2019-06-04 22:07:23'),(111,207,'Secure WorkComp LLC - Broker Agreement.pdf','Referral Agreement','2019-06-04 22:07:23','2019-06-04 22:07:23'),(112,170,'Danbranley - W9.pdf','W-9','2019-06-13 20:13:44','2019-06-13 20:13:44'),(113,170,'Danbranley, LLC - KEY HR BROKER REFERRAL AGREEMENT.pdf','Referral Agreement','2019-06-13 20:13:44','2019-06-13 20:13:44'),(114,169,'Bill Coleman updated W9.pdf','W-9','2019-06-13 20:52:36','2019-06-13 20:52:36'),(115,249,'Carlos Rojas - W9.pdf','W-9','2019-06-27 03:32:27','2019-06-27 03:32:27'),(116,249,'Carlos Rojas - Broker Agreement X.pdf','Referral Agreement','2019-06-27 03:33:32','2019-06-27 03:33:32'),(120,251,'Groeteke and Associates - KEY HR BROKER REFERRAL AGREEMENT.pdf','Referral Agreement','2019-11-19 03:17:52','2019-11-19 03:17:52'),(119,251,'Groeteke and Associates - W9.pdf','W-9','2019-11-19 03:17:52','2019-11-19 03:17:52'),(121,251,'Groeteke and Associates - Frontline Broker Agreement.pdf','Referral Agreement','2019-11-19 03:19:18','2019-11-19 03:19:18'),(122,252,'Monarch Partners Group W9.pdf','W-9','2019-11-19 03:29:42','2019-11-19 03:29:42'),(123,252,'Monarch Partners - Frontline Broker Agreement.pdf','Referral Agreement','2019-11-19 03:29:42','2019-11-19 03:29:42'),(124,253,'Empower Consulting Partners - W9.pdf','W-9','2019-12-03 22:36:10','2019-12-03 22:36:10'),(125,253,'Empower Consulting Partners - Key HR Broker Agreement.pdf','Referral Agreement','2019-12-03 22:36:52','2019-12-03 22:36:52'),(126,256,'ASAP - W9.pdf','W-9','2019-12-19 20:45:11','2019-12-19 20:45:11'),(127,256,'ASAP Insurance Brokerage Inc. - KEY HR BROKER REFERRAL AGREEMENT.pdf','Referral Agreement','2019-12-19 20:45:11','2019-12-19 20:45:11'),(181,270,'Fortune Business Consulting_W-9 updated 2.11.2021.pdf','W-9','2021-02-11 23:56:10','2021-02-11 23:56:10'),(130,161,'Platinum PEO - W9.pdf','W-9','2020-06-16 01:27:06','2020-06-16 01:27:06'),(131,161,'Platinum PEO Resources - KEY HR BROKER REFERRAL AGREEMENT.pdf','Referral Agreement','2020-06-16 01:27:06','2020-06-16 01:27:06'),(132,259,'Dynamic Employer Solutions - W9.pdf','W-9','2020-06-16 01:37:41','2020-06-16 01:37:41'),(133,259,'Dynamic EMployer Solutions - KEY HR BROKER REFERRAL AGREEMENT.pdf','Referral Agreement','2020-06-16 01:37:41','2020-06-16 01:37:41'),(134,260,'VERTICAL HR - W9.pdf','W-9','2020-06-16 02:06:46','2020-06-16 02:06:46'),(135,260,'VERTICAL HR - KEY HR BROKER REFERRAL AGREEMENT.pdf','Referral Agreement','2020-06-16 02:06:46','2020-06-16 02:06:46'),(136,176,'National Workmans Comp Solutions_W9.pdf','W-9','2020-07-27 22:54:28','2020-07-27 22:54:28'),(137,176,'National Workmans Comp Solutions_Broker Agreement.pdf','Referral Agreement','2020-07-27 22:54:53','2020-07-27 22:54:53'),(138,261,'Orca Insurance W-9.pdf','W-9','2020-07-27 23:09:35','2020-07-27 23:09:35'),(139,261,'Orca Insurance Broker Agreement.pdf','Referral Agreement','2020-07-27 23:09:35','2020-07-27 23:09:35'),(140,205,'PEO Securities W-9.pdf','W-9','2020-07-27 23:44:50','2020-07-27 23:44:50'),(141,170,'Danbranley W-9.pdf','W-9','2020-07-29 02:16:10','2020-07-29 02:16:10'),(142,170,'Danbranley Broker Agreement.pdf','Referral Agreement','2020-07-29 02:16:10','2020-07-29 02:16:10'),(143,241,'PEOPartners W-9.pdf','W-9','2020-08-21 03:45:06','2020-08-21 03:45:06'),(145,207,'W-9 Form_SECURE WORK COMP_2020.pdf','W-9','2020-09-09 20:23:25','2020-09-09 20:23:25'),(146,208,'W-9 Form_SECURE WORK COMP_2020.pdf','W-9','2020-09-09 20:25:59','2020-09-09 20:25:59'),(147,204,'W-9 Form_PEO ADVISORS_2020.pdf','W-9','2020-09-09 20:26:26','2020-09-09 20:26:26'),(148,204,'W-9 Form_PEO ADVISORS II_2020.pdf','W-9','2020-09-09 20:26:46','2020-09-09 20:26:46'),(149,204,'W-9 Form_PEO ADVISORS III_2020.pdf','W-9','2020-09-09 20:27:03','2020-09-09 20:27:03'),(150,150,'W-9 Form_SIRACUSA STAFFING_2020.pdf','W-9','2020-09-09 20:27:31','2020-09-09 20:27:31'),(151,215,'W-9 Form_SMARCOMP SOLUTIONS_2020.pdf','W-9','2020-09-09 20:28:33','2020-09-09 20:28:33'),(152,233,'W-9 Form_LAMARCA INSURANCE_2020.pdf','W-9','2020-09-09 20:29:11','2020-09-09 20:29:11'),(153,235,'W-9 Form_B2B CONSULTS 4  U_2020.pdf','W-9','2020-09-09 20:29:50','2020-09-09 20:29:50'),(154,236,'W-9 Form_DANE PAYROLL_2020.pdf','W-9','2020-09-09 20:30:13','2020-09-09 20:30:13'),(155,172,'W-9 Form_TOTAL EMPLOYER RESOURCE_2020.pdf','W-9','2020-09-09 20:30:50','2020-09-09 20:30:50'),(156,262,'Key HR_Broker Agreement_Countersigned_2020.pdf','Referral Agreement','2020-09-11 22:59:35','2020-09-11 22:59:35'),(157,271,'Dial Consulting Partners_W-9.pdf','W-9','2020-10-07 23:55:22','2020-10-07 23:55:22'),(216,312,'PEO Options - Key HR Countersigned Broker Agreement.pdf','Referral Agreement','2021-11-03 01:18:34','2021-11-03 01:18:34'),(159,272,'Dial Consulting Partners_W-9.pdf','W-9','2020-10-07 23:55:35','2020-10-07 23:55:35'),(160,270,'W-9 Completed Signed - Fortune Business Consulting .pdf','W-9','2020-10-07 23:57:03','2020-10-07 23:57:03'),(161,270,'Fortune Business Consulting_Countersigned Agreement.pdf','Referral Agreement','2020-10-07 23:57:03','2020-10-07 23:57:03'),(165,262,'W-9 Form_Tyler Reinholt_2020.pdf','W-9','2020-10-13 20:38:52','2020-10-13 20:38:52'),(168,268,'W-9_PEO Searcher.pdf','W-9','2020-11-10 22:56:25','2020-11-10 22:56:25'),(169,268,'Key HR - Broker Agreement_Countersigned_2020.pdf','Referral Agreement','2020-11-10 22:56:25','2020-11-10 22:56:25'),(170,275,'CBG Insurance_Executed Broker Agreement.pdf','Referral Agreement','2020-11-24 21:21:33','2020-11-24 21:21:33'),(171,278,'WorkComp 360_W-9_KEYHR.pdf','W-9','2020-12-31 01:10:00','2020-12-31 01:10:00'),(172,278,'WorkComp 360_W.9_FRONTLINE.pdf','W-9','2020-12-31 01:10:00','2020-12-31 01:10:00'),(173,278,'WorkComp 360 Broker Agreement_KEYHR.pdf','Referral Agreement','2020-12-31 01:10:00','2020-12-31 01:10:00'),(174,278,'WorkComp 360 Broker Agreement_FRONTLINE.pdf','Referral Agreement','2020-12-31 01:10:00','2020-12-31 01:10:00'),(175,280,'Key HR Broker Agreement_John Rurkowski.pdf','Referral Agreement','2021-01-06 22:27:27','2021-01-06 22:27:27'),(176,280,'W-9_Executed John Rurkowski.pdf','W-9','2021-01-06 22:32:24','2021-01-06 22:32:24'),(177,279,'Modern Risk Solutions_W-9.pdf','W-9','2021-01-06 22:40:19','2021-01-06 22:40:19'),(178,279,'Key HR Broker Agreement_Modern Risk Solutions.pdf','Referral Agreement','2021-01-06 22:40:57','2021-01-06 22:40:57'),(179,281,'Stephen Anderson_W-9.pdf','W-9','2021-01-20 21:18:38','2021-01-20 21:18:38'),(180,281,'Key HR Executed Broker Agreement_Stephen Anderson.pdf','Referral Agreement','2021-01-20 21:18:38','2021-01-20 21:18:38'),(182,287,'Steven McGivern_W-9.pdf','W-9','2021-02-19 22:24:29','2021-02-19 22:24:29'),(183,136,'Arrow PEO Brokerage W9.pdf','W-9','2021-03-24 20:54:52','2021-03-24 20:54:52'),(184,290,'BRG Insurance Group W-9.pdf','W-9','2021-03-24 20:55:57','2021-03-24 20:55:57'),(185,136,'Arrow PEO Brokerage_Countersigned Key HR Broker Agreement.pdf','Referral Agreement','2021-03-24 21:09:24','2021-03-24 21:09:24'),(186,193,'Easy Work Comp Solutions W9 2021 .pdf','W-9','2021-04-20 20:27:06','2021-04-20 20:27:06'),(187,193,'Easy Work Comp Solutions W9 2021 .pdf','W-9','2021-04-28 01:46:37','2021-04-28 01:46:37'),(188,193,'Easy Work Comp Solutions_Key HR Countersigned Broker Agreement.pdf','Referral Agreement','2021-04-28 01:46:37','2021-04-28 01:46:37'),(189,295,'Marsh USA Inc_W-9.pdf','W-9','2021-04-30 04:36:13','2021-04-30 04:36:13'),(190,295,'Assurance, Marsh & McLennan Agency_Key HR Countersigned Broker Agreement.pdf','Referral Agreement','2021-05-01 00:26:35','2021-05-01 00:26:35'),(191,301,'2021 IOA W-9.pdf','W-9','2021-07-24 06:09:05','2021-07-24 06:09:05'),(192,303,'W-9 - Sunshine Employee Professional Services 080421.pdf','W-9','2021-08-06 23:32:08','2021-08-06 23:32:08'),(197,302,'Blackford PEO Solutions_Key HR Countersigned Agreement.pdf','Referral Agreement','2021-08-25 03:08:10','2021-08-25 03:08:10'),(194,303,'KEY HR BROKER REFERRAL AGREEMENT - Sunshine Employee Professional Services 080421 (1).pdf','Referral Agreement','2021-08-17 20:28:58','2021-08-17 20:28:58'),(195,293,'LAK Consulting Service W9.pdf','W-9','2021-08-19 02:18:14','2021-08-19 02:18:14'),(196,293,'LAK Consulting Firm_Key HR Countersigned Broker Agreement.pdf','Referral Agreement','2021-08-19 02:18:14','2021-08-19 02:18:14'),(198,302,'Blackford W-9.pdf','W-9','2021-08-25 03:11:27','2021-08-25 03:11:27'),(200,304,'WorkComp Solutions W-9.pdf','W-9','2021-08-25 20:27:35','2021-08-25 20:27:35'),(201,304,'WorkComp Solutions - KEY HR BROKER REFERRAL AGREEMENT.pdf','Referral Agreement','2021-08-26 21:28:18','2021-08-26 21:28:18'),(202,306,'Josuhua Norman_W-9.pdf','W-9','2021-09-22 21:52:44','2021-09-22 21:52:44'),(203,306,'Countersigned Key HR Broker Agreement_Joshua Norman.pdf','Referral Agreement','2021-09-22 21:52:44','2021-09-22 21:52:44'),(204,301,'IOA_Countersigned Key HR Broker Agreement.pdf','Referral Agreement','2021-09-22 21:55:06','2021-09-22 21:55:06'),(205,307,'Your Leadership Legacy_W-9.pdf','W-9','2021-09-22 22:00:14','2021-09-22 22:00:14'),(206,307,'Your Leadership Legacy_Countersigned Broker Agreement Key HR.pdf','Referral Agreement','2021-09-22 22:00:14','2021-09-22 22:00:14'),(207,309,'W-9 - Advanced Insurance.pdf','W-9','2021-10-05 22:15:46','2021-10-05 22:15:46'),(208,309,'Key HR - Advanced Insurance Countersigned Broker Agreement_2021.pdf','Referral Agreement','2021-10-07 00:58:06','2021-10-07 00:58:06'),(209,310,'Breier Group - W-9_COMPLETED_20210921.pdf','W-9','2021-10-12 00:20:25','2021-10-12 00:20:25'),(210,310,'KEY HR BROKER REFERRAL AGREEMENT_Breier Group.pdf','Referral Agreement','2021-10-12 00:22:12','2021-10-12 00:22:12'),(211,312,'2018 PEO Options LLC W9.pdf','W-9','2021-10-15 01:51:19','2021-10-15 01:51:19'),(212,232,'DS3 W-9 IRS-signed.pdf','W-9','2021-10-21 03:06:08','2021-10-21 03:06:08'),(217,313,'Countersigned Key HR Broker Agreement_Dickinson Corporation.pdf','Referral Agreement','2021-11-03 20:05:31','2021-11-03 20:05:31'),(218,313,'Dickinson corportion W-9.pdf','W-9','2021-11-03 20:07:01','2021-11-03 20:07:01'),(219,316,'Linda Barnes_W9.pdf','W-9','2021-11-11 21:39:01','2021-11-11 21:39:01'),(220,209,'2020 W9 - StaffMarket Signed MASTER.pdf','W-9','2021-11-16 23:35:58','2021-11-16 23:35:58'),(221,316,'Linda Barnes_Countersigned Key HR Broker Agreement.pdf','Referral Agreement','2021-11-17 22:55:00','2021-11-17 22:55:00'),(222,315,'Associated W9 20211110.pdf','W-9','2021-11-18 21:22:59','2021-11-18 21:22:59'),(224,317,'John Jones - 11-19-21 W-9 signed.pdf','W-9','2021-11-22 23:58:37','2021-11-22 23:58:37'),(225,317,'John Jones -- Countersigned KeyHR Broker Agreement.pdf','Referral Agreement','2021-11-23 23:14:57','2021-11-23 23:14:57'),(226,318,'Jester, Ron W-9.pdf','W-9','2021-12-30 00:52:30','2021-12-30 00:52:30'),(227,319,'W-9- US Business Solutions.pdf','W-9','2022-01-12 22:25:57','2022-01-12 22:25:57'),(228,320,'Christy Insurance Agency -- Countersigned KeyHR Broker Agreement.pdf','Referral Agreement','2022-02-10 20:39:24','2022-02-10 20:39:24'),(229,321,'Natasha Pelak W9.pdf','W-9','2022-03-08 21:47:47','2022-03-08 21:47:47'),(230,322,'Arabella Consulting W-9 Form_03-2022.pdf','W-9','2022-04-01 04:19:02','2022-04-01 04:19:02'),(231,322,'Arabella Consulting -- Countersigned KeyHR Broker Agreement.pdf','Referral Agreement','2022-04-01 04:19:02','2022-04-01 04:19:02'),(232,323,'Dude Abides - 2021 W-9.pdf','W-9','2022-04-13 02:18:52','2022-04-13 02:18:52'),(233,324,'Chris Strzelecki - Countersigned Key HR Broker Agreement.pdf','Referral Agreement','2022-04-20 20:17:45','2022-04-20 20:17:45'),(234,326,'Robert Eric Meade - W9.pdf','W-9','2022-05-10 22:19:44','2022-05-10 22:19:44'),(235,326,'Robert Eric Meade_Countersigned Key HR Broker Agreement.pdf','Referral Agreement','2022-05-11 03:23:32','2022-05-11 03:23:32'),(236,327,'INLAND EMPIRE HR - W9.pdf','W-9','2022-05-20 18:48:32','2022-05-20 18:48:32'),(237,329,'V Partner-W-9.pdf','W-9','2022-07-05 16:12:49','2022-07-05 16:12:49'),(238,329,'V Partners- Broker Agreeement.pdf','Referral Agreement','2022-07-05 16:12:49','2022-07-05 16:12:49'),(239,330,'BB Insurance W-9.pdf','W-9','2022-07-15 17:22:46','2022-07-15 17:22:46'),(240,330,'KEY HR BROKER REFERRAL AGREEMENT-BB Insurance Marketing Inc.pdf','Referral Agreement','2022-07-15 17:23:19','2022-07-15 17:23:19'),(241,323,'The Dude Abides_Frontline Referral Partner Agreement - Nathan Ely.pdf','Referral Agreement','2022-07-21 14:09:40','2022-07-21 14:09:40'),(242,331,'Jacob Scott_Broker Agreement.pdf','Referral Agreement','2022-07-28 14:05:14','2022-07-28 14:05:14'),(243,331,'Jacob Scott W9.pdf','W-9','2022-07-28 14:06:23','2022-07-28 14:06:23'),(244,332,'Thomas Katovsky - Countersigned Key HR Broker Agreement.pdf','Referral Agreement','2022-07-28 14:13:13','2022-07-28 14:13:13'),(245,324,'Skil Ship W9.pdf','W-9','2022-09-12 16:57:43','2022-09-12 16:57:43'),(246,334,'Argenbright HR - W9.pdf','W-9','2022-11-04 14:26:06','2022-11-04 14:26:06'),(247,334,'Argenbright HR - KEY HR BROKER REFERRAL AGREEMENT Executed.pdf','Referral Agreement','2022-11-04 14:26:42','2022-11-04 14:26:42');
/*!40000 ALTER TABLE `broker_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brokers`
--

DROP TABLE IF EXISTS `brokers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brokers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sales_person` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brokerage_firm` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suite` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `broker` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `basis` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_percentage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wc_percentage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setup_fee` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=335 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brokers`
--

LOCK TABLES `brokers` WRITE;
/*!40000 ALTER TABLE `brokers` DISABLE KEYS */;
INSERT INTO `brokers` VALUES (144,'Scott Hanson','PayGo Plus LLC','55 Inlet Harbor Road','223 Box 8','Ponce Inlet','FL','32127','David G Bell',NULL,'855-729-4612',NULL,NULL,NULL,NULL,'2017-07-08 03:20:50','2018-09-15 04:04:05',NULL,NULL,NULL,NULL,NULL),(145,'Shane Williams','Business Outsourcing Solutions Consultants','108 East Central Blvd',NULL,'Cape Canaveral','FL','32920','Sarj Patel','President','407-924-4067',NULL,NULL,'352-534-0589','sarj@viksar.com','2017-07-08 03:22:28','2018-09-25 23:11:17',NULL,NULL,'40',NULL,NULL),(143,'Shane Williams','Axis Group','2107 West Cass Street','Suite A-B','Tampa','FL','33606','Patrick Moraites','VP Sales','(813) 251-3181','402',NULL,'(888) 833-7383','patrick@axisgroupllc.com','2017-07-08 03:19:31','2020-12-10 23:13:19',NULL,NULL,NULL,NULL,NULL),(310,'Chris Strzelecki','Breier Group Concepts, Inc.','34 Gramercy Park East',NULL,'New York','NY','10003','Sam Breier','Owner','(212) 254 2161',NULL,'(646) 237 7805',NULL,'samuel.breier@breiergroup.com','2021-10-06 10:07:17','2021-10-06 10:07:17',NULL,NULL,'TBD','TBD','0'),(135,'Glen Lancaster','Business Administrative Consultants','160 International Parkway','250','Heathrow','FL','32746','Andy Juster','CEo','321-441-9056',NULL,'407-963-3925','321-257-8021','ajuster@bacbenefits.com','2017-07-06 22:41:43','2019-03-02 03:20:14','Sent Welcome Package',NULL,'40','5',NULL),(136,'Karissa Pierson','Arrow Brokers, Inc.','800 Oak Ridge Turnpike','A-402','Oak Ridge','TN','37830','Tom Haumiller','Business Consultant','(865) 425 7447',NULL,'(865) 228 8343','(877) 299 9849','tom.haumiller@arrowbrokers.com','2017-07-06 22:43:00','2021-10-06 01:23:47',NULL,NULL,'40','N/A','N/A'),(142,'Shane Williams','Hybrid Financial Group LLC','5301 S Superstition Mountain Drive','104-101','Gold Canyon','AZ','85119','Steve Rabinette','Owner','(888) 982-3334',NULL,'(239) 898-7380','(888) 841-7028','steve@hybridfinancial.net','2017-07-07 02:16:33','2018-09-14 00:05:40',NULL,NULL,NULL,NULL,NULL),(141,'Shane Williams','Total Payroll Management Inc','715 NE 19th Place','44','Cape Coral','FL','33909','Steve Rabinette','Owner','(239) 898-7380',NULL,'239-898-7380',NULL,'steve@hybridfinancial.net','2017-07-07 02:05:18','2017-07-11 03:36:11',NULL,NULL,NULL,NULL,NULL),(140,'Shane Williams','Mascomanga LLC dba PEO EMPEROR','7429 Chaco Road NE',NULL,'Albuquerque','NM','87109','Nick Minetos','VP Sales','(505) 610-6885',NULL,NULL,'(505) 212-0366','nick@peoemperor.net','2017-07-07 02:01:57','2017-07-11 03:28:04',NULL,NULL,NULL,NULL,NULL),(147,'Scott Hanson','Songer & Associates LLC','2817 West End Avenue','126-270','Nashville','TN','37203','Andy Songer','President','615-329-9040',NULL,NULL,NULL,'asonger@songerandassociates.com','2017-07-08 03:37:49','2018-09-18 01:14:54',NULL,NULL,'40',NULL,NULL),(150,'Karissa Pierson','Siracusa Staffing & Leasing LLC','1944 N Hercules Ave','A','Clearwater','Florida','33763','David Siracusa','President','(844) 377-2635','801','(813) 267-4087',NULL,'david@ssandlnow.com','2017-07-11 01:42:19','2020-09-09 20:27:45',NULL,NULL,NULL,NULL,NULL),(148,'Frank Lewis','Praesidium Services LLC','1212 Park Drive',NULL,'Cherry Hill','NJ','08002','Raymond Barczak',NULL,'(856) 428-6296',NULL,NULL,'(425) 969-6402','rbarczak@praesidium.us','2017-07-10 21:40:34','2017-07-10 22:27:09',NULL,NULL,NULL,NULL,NULL),(249,'Ron Olewinski','Carlos M Rojas','1230 Chichester Street',NULL,'Orlando','FL','32803','Carlos M Rojas','Owner','(407) 497 2596','4074972596','(407) 497 2596',NULL,'momorojas13@gmail.com','2019-06-27 03:31:03','2021-10-23 02:05:24',NULL,NULL,'0','0','0'),(313,'Shelly Fiorelli','Dickinson Corporation','328 Big Tree Rd.',NULL,'South Daytona','FL','32119','Eileen C. Dickinson','Owner','(386) 882 0444',NULL,'(386) 882 0444',NULL,'eileen@compliancemattersusa.co','2021-10-28 20:24:13','2021-10-28 20:24:13',NULL,NULL,'40%','5%','0.00'),(152,'Shane Williams','Workforce Advantage One LLC','1315 Arboledas Lane',NULL,'Keller','TX','76248','Chris Layne','N/A','(972) 670 7750',NULL,'(972) 670 7750',NULL,'submissions@wfa1.com','2017-07-11 03:35:13','2021-02-18 01:47:34',NULL,NULL,'N/A','N/A','N/A'),(153,'Alicia Garcet','Kanekt 365','65 Water St',NULL,'Laconia','NH','03246','Jeffrey Morin','President','(323) 902 5673',NULL,'(603) 524 8974','(480) 287 5659','jeff@hroplus.com','2017-07-18 22:10:51','2021-03-12 04:50:55',NULL,NULL,'0','0','0'),(154,'Shane Williams','Hybrid Financial Group LLC','5301 S Superstition Mountain Drive','104-101','Gold Canyon','AZ','85119','David Croom',NULL,'(888) 982-3334',NULL,'(480) 338-4298','(888) 841-7028','dave@hybridfinancial.net','2017-07-28 01:25:24','2018-09-06 00:08:48',NULL,NULL,NULL,NULL,NULL),(155,'Scott Hanson','Simple Work Comp','671 W Lumsden Road',NULL,'Brandon','FL','33511','Mike Martin',NULL,'(813) 684-5684',NULL,NULL,NULL,'mike@simpleworkcomp.com','2017-07-31 21:58:29','2017-08-08 22:31:40',NULL,NULL,NULL,NULL,NULL),(156,NULL,'Syndicated Insurance Services Inc','55 Inlet Harbor Road','223-Box 8','Ponce Inlet','FL',NULL,'David Bell','President','(877) 333-8195',NULL,NULL,NULL,'dbell@syndicatedinsuranceresources.com','2017-08-01 20:07:50','2020-09-23 20:26:57',NULL,NULL,NULL,NULL,NULL),(157,NULL,'Syndicated Insurance Services Inc','55 Inlet Harbor Road, 223 Box 8','223 Box 8','Ponce Inlet','FL','32127','Tracy Bell','Controller','(877) 333-8195',NULL,NULL,NULL,'tbell@syndicatedinsuranceresources.com','2017-08-01 21:11:08','2020-09-23 20:27:05',NULL,NULL,NULL,NULL,NULL),(158,NULL,'Syndicated Insurance Services Inc','55 Inlet Harbor Road, 223 Box 8, 223 Box 8','223 Box 8','Ponce Inlet','FL','32127','Dean Radtke','Vice President of Sales','(877) 3338195',NULL,'(877) 3338195','8773338195','dradtke@syndicatedinsuranceresources.com','2017-08-01 21:12:53','2020-09-23 20:26:48',NULL,NULL,NULL,NULL,NULL),(159,'Shane Williams','Integrity Insource Group','2042 Town Center Blvd','167','Knoxville','TN','37922','Brian W. Nunley','President','(865) 386-6717',NULL,NULL,'(877) 213-8679','info@Integrityinsource.com','2017-08-16 11:24:36','2017-08-16 19:40:39',NULL,NULL,NULL,NULL,NULL),(160,'Shane Williams','PEO Principles, LLC','36 Tifton Way South',NULL,'Ponte Vedra Beach','FL','32082','MATTHEW FEEZOR',NULL,'(904) 910-2129',NULL,NULL,NULL,'mfeezor@peoprinciples.com','2017-08-30 21:55:06','2017-08-30 21:55:40',NULL,NULL,NULL,NULL,NULL),(161,'Shane Williams','Platinum PEO Resources','17595 S. Tamiami Trail','Suite 210','Fort Myers','FL','33908','Lynn Brewer','CEO','(239) 561-2591',NULL,NULL,'(239) 561-3589','lynnb@paygoworkerscomp.com','2017-09-07 03:23:14','2017-12-01 04:09:22',NULL,NULL,'40','5',NULL),(162,'Shane Williams','Urso Enterprises LLC','1011 Guys Court SW',NULL,'Lilburn','GA','30047','Brian Urso','CEO','(772) 215-2096',NULL,NULL,NULL,'burso7@gmail.com','2017-09-07 03:46:32','2020-12-09 21:52:47',NULL,NULL,'40','5',NULL),(163,'Shane Williams','Seacoast Business Funding','1880 N Congress Ave.','Suite 404','Boynton','FL','33426','Kevin Henry','Business Development Officer','(561) 623-1872',NULL,'(561) 676-8467',NULL,'Kevin.Henry@SeacoastBF.com','2017-09-07 04:05:04','2017-09-07 04:05:04',NULL,NULL,NULL,NULL,NULL),(164,'Alicia Garcet','Employee Leasing Quotes','3916 SW 69th Ave',NULL,'Gainesville','FL','32608','Mike Burgelin','Owner','(888) 582 8388',NULL,'(772) 352 2261','(207) 692 0095','Mike@EmployeeLeasingQuotes.com','2017-09-07 04:10:39','2021-03-12 04:44:20',NULL,NULL,'0','0','0'),(165,'Shane Williams','National PEO Brokers','4356 Lindsey Ave.',NULL,'Pico Rivera','CA','90660','Gino Saracho',NULL,'(951) 987-0513',NULL,'(562) 832-3407','(877) 695-0878','ginos@nationalpeobrokers.com','2017-10-14 03:52:13','2019-08-07 21:34:48',NULL,NULL,'40','5',NULL),(166,'Shane Williams','Dinsmore Steele','3 Breezy Point Road','NA','Wading River','NY','11792','Barbara Pailley','Senior VP','(888) 973 6276',NULL,'(727) 218 9712',NULL,'bp@dinsmoresteele.com','2017-10-20 00:55:23','2021-10-23 04:40:29','http://www.dinsmoresteele.com/',NULL,'40','5','0'),(167,'Shane Williams','Insured Solutions Inc.','2 Ravinia Drive NE','270','Atlanta','GA','30346','Brandon Martin',NULL,'(877) 213-1999',NULL,'(865) 776-2048','(678) 262-3201',NULL,'2017-10-20 00:58:51','2019-08-08 01:00:00',NULL,NULL,'40','5',NULL),(168,'Scott Hanson','Giga Solutions Inc.','101 Plaza Real South','201','Boca Raton','FL','33432','Chris Rhoden','President','407-519-1212',NULL,'(407) 406-4970',NULL,'wchrisrhoden2@aol.com','2017-11-02 21:39:38','2018-09-13 23:57:56',NULL,NULL,'40','5',NULL),(169,'Shane Williams or Angel Aponte','W Coleman Enterprise LLC','3116 STAGECOACH TRAIL',NULL,'WIMAUMA','FL','33598','Bill Coleman','OWNER','(941) 713 0119',NULL,'(941) 713 0119',NULL,'info@businesscompsolutions.com','2017-12-12 04:06:04','2021-07-13 23:08:23','Welcome Kit Sent',NULL,'40%','5%','0'),(170,'Karissa Pierson','Danbranley, LLC','1101 Admirals Walk',NULL,'Vero Beach','FL','32963','Ken Roberts','Owner','(772) 231 5826',NULL,'(772) 231 5826',NULL,'ken@flhip.com','2018-01-05 02:10:03','2021-02-18 01:48:03','7/28/2020 - spoke with Ken and introduced myself.  He appreciated the call. Introduction email with flyer sent.',NULL,'40','5','0'),(172,'Shane Williams','Total Employer Resource Solutions, Inc','4103 W. Watrous Ave.',NULL,'Tampa','FL','33629','James Cote aka Jim',NULL,'813-760-7222',NULL,'813-760-7222',NULL,'jim.cote11@gmail.com','2018-01-21 10:47:16','2020-08-20 22:23:49','4221 West Boy Scout Suite 300, Tampa\r\nWelcome Pack Sent',NULL,'40','5','0'),(173,'Angel Aponte','Fore Business Solutions','950 NW 93rd Ave',NULL,'Ft. Lauderdale','FL','33324','Brent Lawrence','Director of Business Development','954-475-7764',NULL,'305-785-4579',NULL,'brent@forebusinesinc.com','2018-02-23 06:08:16','2019-08-08 00:21:33',NULL,NULL,'40','5','0'),(174,'Shane Williams','Employernomics','13738 Crystal River Drive',NULL,'Orlando','FL','32828','Will Tenney',NULL,'800-788-8343',NULL,'(407) 383-3079',NULL,'office@peopros.com','2018-02-27 22:42:02','2020-08-27 01:14:21','8/26/2020 - spoke with Will and he said that he works 100% through PEO Depot now',NULL,NULL,NULL,NULL),(175,NULL,'Michael F Baluta','135 Kendale Drive',NULL,'Safety Harbor','FL','34695',NULL,NULL,'727-400-2527',NULL,'727-400-2527',NULL,'mikebaluta@gmail.com','2018-03-22 20:45:57','2018-09-15 03:28:36',NULL,NULL,NULL,NULL,NULL),(176,'Angel Aponte','National Workman\'s Comp Solutions','3119 SW 22nd St.','200','Coral Gables','FL','33145','Kyle Wilson','Owner','(800) 437 1009','101','(954) 483 0870','(877) 917 3212','kyle@nationalwcs.com','2018-03-23 04:10:41','2021-04-01 23:08:04','10/01/2020 - for email notifications also add the following email addresses: Idalmis Mesa <Idalmis@nationalwcs.com> & NWCS Office <nwcsoffice@nationalwcs.com>',NULL,'40%','5%','0'),(177,'Carmelite Souffront','PEO Depot','P.O. Box 16104',NULL,'Clearwater','FL','33766','Tim Bourdeau','Owner','(727) 787 9889','302','(727) 787 9889',NULL,'kbourdeau@peodepot.com','2018-03-23 04:13:59','2021-04-02 00:47:42',NULL,NULL,'50%','0','0'),(179,'Scott Hanson','Florida National Insurance Services','944 Country Club Blvd','202','Cape Coral','FL','33990','Nicholas Mladucky',NULL,'800-957-8830',NULL,'786-390-8240','305-602-5975','nic@flnational.com','2018-08-30 22:03:17','2018-08-30 22:03:17',NULL,NULL,'40','5',NULL),(180,'Scott Hanson','Daniel MacLachlan',NULL,NULL,NULL,NULL,NULL,'Daniel Machlan','Owner','314-709-7006',NULL,'314-709-7006',NULL,'dmaclachlan1981@gmail.com','2018-09-04 20:30:01','2018-09-04 20:30:01',NULL,NULL,'40','5',NULL),(181,'Shane Williams','SETO Corp Inc.','21 Rondell Lane',NULL,'South Amboy','NJ','08879','Cesare Cassara / Lorraine Cassara',NULL,'732-858-1448',NULL,NULL,'732-862-1335','setocorp2012@gmail.com','2018-09-04 21:58:17','2018-12-27 20:36:36',NULL,NULL,'50','5',NULL),(182,NULL,'AASOA','577 Barnes Blvd','650','Rockledge','FL','32955','Vipul Patel',NULL,'321-271-7072',NULL,NULL,'321-234-9292','vipul@aasoa.com','2018-09-05 21:28:02','2020-07-28 02:37:47',NULL,NULL,NULL,NULL,NULL),(183,'Karissa Pierson','Affordable One Insurance','6960 Aloma Ave',NULL,'Winter Park','FL','32792','Stacey / Donal Kirkendall',NULL,'407-965-4166',NULL,'407-969-9554',NULL,'stacey@affordableone.com','2018-09-05 21:33:14','2020-09-10 23:26:23','8/3/2020 - left a message with receptionist wanting to introduce myself to Don and confirm contact info. insuranceman@affordableone.com. Don\'s number: 407-359-5904',NULL,NULL,NULL,NULL),(184,NULL,'Alpha Business Solutions','207 44th Ave E',NULL,'Bradenton','FL','34203','Skip Deal',NULL,'941-705-0964',NULL,NULL,'866-782-3792','skip@alphabizsolutions.com','2018-09-05 21:37:13','2020-08-05 02:52:02','8/3/2020 - spoke with Skip (very pleasant), introduced myself and requested a W-9. He would like an email with some more info about Key and what makes us better than other PEO\'s. Introduction email sent',NULL,NULL,NULL,NULL),(185,'Shane Williams','Axiom Payroll Consultants','20101 Peachland Blvd.','Suite 208','Port Charlotte','FL','33954','Zach McNally','Business Consultant','(941) 391 9014',NULL,'(941) 391 9014',NULL,'zach@axiompayroll.com','2018-09-05 21:55:30','2021-02-03 00:15:57',NULL,NULL,'40','5','0'),(186,NULL,'Ban-Koe Companies','9401 James Ave. S','180','Minneapolis','MN','55431','Richard L. Metcalf',NULL,'952-278-8881',NULL,'612-900-4717',NULL,'richard.metcalf@bankoe.com','2018-09-05 22:27:36','2018-09-05 22:27:36',NULL,NULL,NULL,NULL,NULL),(187,NULL,'Becks Insurance Consulting','370 Centerpoint Circle','1108','Altamonte Springs','FL','32701','Scott Becks',NULL,'407-324-3106',NULL,NULL,NULL,'sbecks@deltafc.com','2018-09-05 22:32:43','2018-09-05 22:32:43',NULL,NULL,NULL,NULL,NULL),(188,NULL,'Compliance Matters','328 Big Tree Rd',NULL,'South Daytona','FL','32119','Eileen Dickinson',NULL,'386-236-9990',NULL,NULL,'386-310-4837','eileen@compliancemattersusa.com','2018-09-05 22:39:27','2018-09-05 22:39:27',NULL,NULL,NULL,NULL,NULL),(189,NULL,'Envoy Business Partners','16787 Beach Blvd','730','Huntington Neach','CA','92647','Karyl Reed',NULL,'949-230-6602',NULL,'949-209-1810',NULL,'karyl.reed@envoybp.com','2018-09-05 22:55:13','2019-08-08 00:17:14',NULL,NULL,NULL,NULL,NULL),(190,'Alicia Garcet','Florida Hospitality Agency','3700 34th Street','100 M','Orlando','FL','32805','Thom Norush, II','Owner','(407) 347 5960',NULL,'(407) 347 5960','(407) 347 5961','thom@fhi-agency.com','2018-09-05 23:00:34','2021-03-12 04:45:23',NULL,NULL,'0','0','0'),(191,NULL,'Freedom Anywhere, Inc.','P.O. Box 720514',NULL,'Oklahoma City','OK','73172','Steve Brown',NULL,'405-210-6941',NULL,'405-810-9355',NULL,'swbrown@peobrokersgroup.com','2018-09-05 23:35:09','2018-09-05 23:35:09',NULL,NULL,NULL,NULL,NULL),(192,NULL,'Gallagher','SunTrust Center 200 S. Orange Ave.','1350','Orlando','FL','32801','Rob Moore',NULL,'407-370-2320',NULL,'407-580-1336',NULL,'rob_moore@ajg.com','2018-09-05 23:37:50','2019-08-08 00:26:00',NULL,NULL,NULL,NULL,NULL),(193,'Carmelite Souffront','Easy Work Comp Solutions','11329 MInaret Dr.',NULL,'Tampa','FL','33629','Amanda Tojais','President','(813) 210 8662','8137481230','(813) 748 1230','(813) 210 8662','info@easyworkcompsolutions.com','2018-09-10 22:07:02','2021-04-20 20:27:06',NULL,NULL,'N/A','N/A','N/A'),(194,'Alicia Garcet','Firm Foundation Advisors','92 Argonaut','280','Aliso Viejo','CA','92656','Jason Poling','Partner','(833) 347 6476',NULL,'(310) 617 1813','(949) 271 3688','jp@firmfoundationadvisers.com','2018-09-10 22:15:21','2021-03-12 04:45:00',NULL,NULL,'40','5','50%'),(195,'Shane Williams','Acrisource','5664 Prairie Creek Dr.',NULL,'Caledonia','MI','49316','Michelle Yeager','Sales Operations Specialist','616-541-1294',NULL,NULL,'866-683-1048','MYeager@Acrisure.com','2018-09-12 23:52:28','2020-08-05 02:51:23','7/28/2020 - left introduction voicemail with Michelle.\r\n8/3/2020 - left voicemail and sent email requesting an updated W-9\r\n\r\nBroker Welcome Sent',NULL,'40','5','50%'),(196,'Shane Williams','Acrisource','100 Ottawa Ave SW',NULL,'Grand Rapids','MI','49503','Dan Mannes','Key Decision Maker','(616) 541 1294',NULL,'(616) 541 1294',NULL,'dmannes@acrisure.com','2018-09-13 00:32:24','2021-10-16 03:54:54','Broker Welcome Sent',NULL,'40','5','50%'),(197,'Ron Olewinski','Insurance Benefits Solutions','1155 Lousiana Ave','110','Winter Park','FL','32751','David Rimbach',NULL,'407-831-5166',NULL,NULL,NULL,'david@insurancebenefitssolutions.org','2018-09-14 02:23:23','2019-02-01 03:51:14','Sent Broker Welcome Package',NULL,'0','0',NULL),(198,'Ron Olewinski','Insurance & Payroll Resource Group of Florida Inc.','1101 N Lake Destiny Rd.','100','Maitland','FL','32751','Stephen Holleran',NULL,'407-480-3456',NULL,NULL,NULL,'steve@goiprg.com','2018-09-15 02:09:23','2020-12-03 03:51:22','Welcome Package Sent',NULL,'20','5',NULL),(220,'Karissa Pierson','PEO Source','2042 Town Center Blvd','134','Knoxville','TN','37922','Greg Yakoumis',NULL,NULL,NULL,'865-300-1914',NULL,'gregy@peosource.net','2018-11-12 20:38:03','2020-11-03 21:28:18',NULL,NULL,'40','5',NULL),(200,'Karissa Pierson','Niroc Consultants','1500 E. Hilsboro Blvd.','206','Deerfield Beach','FL','33441','Adam Corin','President','(954) 449 4353',NULL,'(954) 540 5205',NULL,'adam@nirocconsultants.com','2018-09-15 03:46:12','2021-01-29 00:23:07',NULL,NULL,'30','0','0'),(201,'Scott Hanson','One Force Workeers Comp','225 E. Commercial Blvd.','201','Lauderdale-By-The-Sea','FL','33308','Mauricio Paz','Owner','(877) 745 3335',NULL,'(954) 908 7822',NULL,'mpaz@oneforcewc.com','2018-09-15 03:50:48','2021-11-03 23:16:09',NULL,NULL,'40','5','0'),(202,NULL,'Payroll Management Innovations','403 Hollywood Blvd.','102 B','Ft. Walton Beach','FL','32548','Kristi Harris',NULL,'800-409-8958',NULL,'865-742-4078','865-472-4078','kpharris7801@gmail.com','2018-09-15 04:01:01','2018-09-15 04:02:06',NULL,NULL,NULL,NULL,NULL),(203,'Karissa Pierson','PCS Leasing Inc.','1020 W. Busch Blvd',NULL,'Tampa','FL','33612','Dave Freeman','Owner','(813) 682 8501',NULL,'(813) 682 8501',NULL,'freeman@pcsleasing.com','2018-09-15 04:13:30','2021-04-01 23:08:26','Welcome Kit Sent',NULL,'40','5','0'),(204,'Karissa Pierson','PEO Advisors','2141 Main St.','Q','Dunedin','FL','34698','Evan W. Collart',NULL,'855-321-7367','801','727-421-8250','866-596-4873','evan@peoadvisors.com','2018-09-15 04:21:04','2020-09-09 20:28:08',NULL,NULL,NULL,NULL,NULL),(205,NULL,'PEO Securities, LLC','137 Osprey Lakes Circle',NULL,'Chulota','FL','32766','Jordan Cason',NULL,'407-721-3186',NULL,NULL,NULL,'jcason21@gmail.com','2018-09-17 23:06:53','2020-08-05 02:50:40','7/29/2020 - spoke with Jordan (pleasant conversation). I mentioned if he had any submissions that he would like for us to work on that I would be his new contact. He appreciated the call. Email sent out.',NULL,'40%','5%',NULL),(206,NULL,'Project Aware','30151 Tomas','200','Rancho Santa Margartia','CA','92688','Daniel Machlan',NULL,'314-709-7006',NULL,'949-858-7657',NULL,'dmaclachlan1981@gmail.com','2018-09-17 23:22:36','2018-09-17 23:23:49',NULL,NULL,NULL,NULL,NULL),(207,'Karissa Pierson','Secure Work Comp LLC','2511 N. HOWARD AVENUE',NULL,'Tampa','FL','33607','Jonathan Fagerland',NULL,'813-540-7195',NULL,'813-703-2104',NULL,'jonathan@secureworkcomp.com','2018-09-17 23:38:01','2020-09-09 20:27:55',NULL,NULL,'40','5',NULL),(208,'Karissa Pierson','Secure Work Comp LLC','2511 N. HOWARD AVENUE',NULL,'Tampa','FL','33607','Daniel Ptaszynski','Business Consultant','(813) 540 7195',NULL,'(813) 666 7851','(732) 862 1335','daniel@secureworkcomp.com','2018-09-17 23:40:03','2021-02-18 01:49:29',NULL,NULL,'N/A','N/A','N/A'),(209,'Karissa Pierson','Staff Market Service, LLC','431 Old Main Street',NULL,'Bradenton','FL','34205','Jim Hamilton','President','(877) 822 7225',NULL,'(941) 281 4110',NULL,'jim@staffmarket.com','2018-09-18 01:18:30','2021-05-06 02:41:06',NULL,NULL,'N/A','N/A','N/A'),(211,'Greg Howard','Insurance Services of Sarasota','873 Tamiami Trial',NULL,'Osprey','FL','34229','Trevor Davis','Agent','941-966-6124','1324',NULL,'941-966-6124','trevord@inservsarasota.com','2018-09-20 20:49:23','2018-10-02 19:40:13','Broker Welcome Sent.',NULL,'30','0','0'),(212,'Greg Howard','Employee Care Inc.','3949 Evans Ave.','401','Fort Meyers','FL','33901','Maikel Delgado','President','239-411-7598',NULL,NULL,'855-411-7598','mdelgado@employeecare.us','2018-09-22 23:27:22','2018-10-02 19:41:03','Broker Welcome Sent',NULL,'40','5','50%'),(215,'Karissa Pierson','SmartComp Solutions Inc.','100 2nd Ave NE','Suite 300','St. Petersburg','FL','33701','Jarett T Maker','President','(727) 471 5559','101','(727) 481 4697','(727) 471 5562','jarettm@smartcompinc.com','2018-09-29 03:12:54','2021-06-04 03:00:09','Broker Welcome Sent',NULL,'40','5','0'),(214,'Karissa Pierson','Employers Choice Solution','22476 Sacramento Ave',NULL,'Port Charlotte','FL','33954','Joni Prose','President','(941) 627 0777',NULL,'(941) 769 3924',NULL,'jprose@employerchoice.com','2018-09-29 03:07:37','2021-02-18 01:49:59','Welcome Pack Sent',NULL,'40','5','0'),(216,'Scott Hanson','Stable HR','3405 Milton Ave','209','Dallas','TX','75205','Andrew Jones',NULL,'514-979-0100',NULL,NULL,'214-979-0101','ajones@andrewjoneslaw.com','2018-10-02 20:04:33','2018-10-02 20:04:33',NULL,NULL,'40','5',NULL),(217,'Greg, Jason, Jessica, Danille','Business Solutions Experts','4290 New Milford St.',NULL,'North Port','FL','34288','Adam Pacayaga',NULL,'941-815-7915',NULL,NULL,NULL,'adam@businesssolutionexperts.com','2018-10-02 20:12:18','2018-10-02 20:12:18','Broker Pack Sent',NULL,'40','5',NULL),(218,'Karissa Pierson','Power PEO Consulting','9121 Atlanta Ave','841','Huntington Beach','CA','92646','Archie Coupe','President','(949) 836 6376',NULL,'(949) 836 6376',NULL,'archie@powerpeoconsulting.com','2018-10-09 20:24:47','2021-02-18 01:50:25',NULL,NULL,'40','5','0'),(219,'Karissa Pierson','Legacy Employer Concepts','PO Box 3522',NULL,'Placida','FL','33946','Brad Stephens / Brett Arthur',NULL,'813-957-5879',NULL,NULL,NULL,'admin@legacyemployerconcepts.com','2018-10-11 02:09:10','2020-08-26 22:44:18','PHYSICAL ADDRESS: 3030 N Rocky Point Dr #150a, Tampa, FL 33607\r\nbrett@legacyemployerconcepts.com\r\n\r\nBroker Welcome Pack Sent',NULL,'40','5',NULL),(221,'Ron Olewinski','Platinum Transaction Merchant Services','2212 South Chickasaw Trail','150','Orlando','FL','32825','Aamir Donnie Khan','President','877-611-0002','10','407-580-9122','877-822-6116','donnie@platinumtransaction.com','2018-11-12 20:41:59','2018-11-12 20:41:59',NULL,NULL,'40','5',NULL),(222,'Karissa Pierson','Third Eye Vision','1969 S. Alafaya Trail','101','Orlando','FL','32828','Peter Patel','President','(321) 765 9006',NULL,'(321) 765 9006','(407) 207 3320','prash_pat77@hotmail.com','2018-11-12 20:55:33','2021-02-18 01:50:48','Welcome Pack Sent',NULL,'50','0','0'),(224,'Scott Hanson','Burton International','5020 Clark Road','117','Sarasota','FL','34233','Beau H Burton','Executive Producer','941-924-1952',NULL,'941-374-2868',NULL,'beauhburton@comcast.net','2018-11-12 21:17:31','2018-11-12 21:23:15',NULL,NULL,'40','5',NULL),(225,'Karissa Pierson','PEO Connections','1514 Fishing Lake Dr.',NULL,'Odessa','FL','33556','David Lallo','Owner','(239) 961 0535',NULL,'(478) 318 5298',NULL,'peoconnection@gmail.com','2018-11-12 21:25:05','2021-02-18 01:52:06','Welcome Pack Sent',NULL,'40','5','0'),(227,'Scott Hanson','PEO Exchange','13046 Racetrack Rd.','113','Tampa','FL','33626','Mike Erstling','President','(813) 336 4427',NULL,'(813) 469 5326',NULL,'mike@peoexchange.com','2018-11-12 21:56:20','2021-04-22 22:39:43',NULL,NULL,'15','15','0'),(228,'Ron Olewinski','PEO Insurance Brokers Network','17682 HUntington Beach Blvd','201','Huntington Beach','CA','92647','Garret Barbera',NULL,'714-693-0005',NULL,NULL,NULL,'quotes@peobrokersnetwork.com','2018-11-15 03:32:14','2018-12-18 23:09:37','Welcome Pack Sent',NULL,'40','5',NULL),(229,'Shane Williams','Bixby Zane c/o Brad Worley','1702 South 2nd Street',NULL,'Austin','TX','78704','Jocelyn Vega','Operations Manager','(512) 524 6247',NULL,'(512) 253 8026',NULL,'jvega@bixbyzane.com','2018-11-16 01:34:30','2021-05-06 01:29:50',NULL,NULL,'40','5','0'),(314,'Scott Hanson','Briceland Agency Inc.','6633 Main Street',NULL,'Williamsville','NY','14221','Bob Briceland','Owner','(716) 553 8801',NULL,'(716) 553 8801',NULL,'bob@briceland.com','2021-11-01 21:38:28','2021-11-01 22:24:40','Dan@Briceland.com / Cody@Briceland.com',NULL,'30%','10%','0'),(315,'Scott Hanson','Associated Agencies, Inc.','1701 Golf Road','Suite 3-700','Rolling Meadows','IL','60008','Grant Veitch','Vice President','(847) 427 3537',NULL,'(847) 372 8052',NULL,'gveitch@associated.cc','2021-11-01 22:01:49','2021-11-18 21:22:06',NULL,NULL,'30%','10%','0'),(231,'Alicia Garcet','McGriff Insurance Services','33 South Garland Avenue','Suite 1600','Orlando','FL','32801','Travis Bender','Owner','(407) 691 9893',NULL,'(407) 340 5994','(888) 635 4184','travis.bender@McGriffInsurance.com','2018-12-14 00:37:38','2021-04-28 00:09:33',NULL,NULL,'40','5','0'),(232,'Angel Aponte','DS3 Venture, Inc','3 Breezy Point Road','NA','Wading River','NY','11792','Rodney Steele','Managing Partner','(888) 973 6276100',NULL,'(646) 494 9101',NULL,'rs@dinsmoresteele.com','2018-12-28 00:43:17','2021-10-23 04:40:50','7/28/2020 - left a voicemail for Rodney. Introduction email sent',NULL,'40','5','0'),(233,'Karissa Pierson','Lamarca Insurance','1680 El Jobean Rd','1','Port Charlotte','FL','33948','Mike Lamarca',NULL,'941-206-0033',NULL,NULL,'941-206-0036','michael@lamarcainsurance.com','2019-01-02 21:30:49','2020-09-09 20:29:11','Sent Broker Welcome Packet',NULL,'40','5',NULL),(234,'jason, greg, danielle, jessica','Darren Metz','128 W Charlotte Ave',NULL,'Punta Gorda','FL','33950','Darren Metz','Business Consultant','(941) 769 1982',NULL,'(941) 769 1982',NULL,'darren@integrityel.com','2019-01-03 01:07:37','2021-02-20 05:25:03','Broker Welcome pack Sent.  percentage to vary from deal to deal',NULL,'30','5','0'),(235,'Karissa Pierson','B2B Consults 4 U, LLC','207 Cross St.','105','Punta Gorda','FL','33950','Dee Lefrancios and Sandy Mays','Owners','941-628-8940',NULL,'941-628-8940',NULL,'peobrokerdee@gmail.com','2019-01-12 22:18:38','2020-09-09 20:29:50','Welcome Pack Sent',NULL,'30','0',NULL),(236,'Karissa Pierson','Dane Payroll Solutions','501 Goodlette Frank Road','A204','Naples','FL','34112','Hunter Dane','President','(239) 206 1237',NULL,'(239) 877 9651',NULL,'hunter@daneinsurancegroup.com','2019-01-12 22:27:56','2021-02-18 01:52:40','7/28/2020 - left a voicemail for Hunter. Introduction email sent as well.\r\n8/17/2020 - met with Hunter and his crew in person. \r\n8/20/2020 - emailed updated 2020 underwriting guidelines, w/c codes, licensed state map.\r\n\r\n\r\nWelcome Package Sent',NULL,'40','5','0'),(237,'Karissa Pierson','Business Insurance Management','2013rd St.',NULL,'Carthage','MO','64836','Tony Fast / Mike Samuelson (President)',NULL,'417-237-0953',NULL,'417-793-0555',NULL,'TFast72@gmail.com','2019-01-16 02:11:08','2020-09-04 01:02:03','Welcome Package Sent\r\nmikebim60@gmail.com',NULL,'40','5',NULL),(238,'Glen Lancaster','James Chamberlain','9402 Barrington Lane',NULL,'Port Richey','FL','34668','James Chamberlain',NULL,'352-642-4523',NULL,'813-666-5706',NULL,'jdc352@gmail.com','2019-01-17 23:25:16','2019-01-24 22:16:43','Welcome Pack not Sent',NULL,'40','5',NULL),(239,'Jason Rubin','Discount Employee Leasing','2523 Belfort Rd.',NULL,'Jacksonville','FL','32216','Robert Summer',NULL,'904-424-7577',NULL,NULL,NULL,'bsummer@convergencepeo.com','2019-02-07 00:33:58','2019-02-26 02:28:43','Welcome Package Sent',NULL,'40','5',NULL),(240,'Juan Candelario','Roxal Investments LLC','3901 NW 79th Ave','223','Doral','FL','33166','Juan Candelario / Alfonso Cordero',NULL,'407-492-9030',NULL,'407-492-9030',NULL,'CorderoAlfonso@Aol.com','2019-02-09 03:55:17','2020-07-30 02:38:26','Sent Welcome Kit Sent',NULL,'40','5',NULL),(241,'Karissa Pierson','PEO Partners','2664 Airport Road S.',NULL,'Naples','FL','34112','Amanda Rincon-Voorhees','Office Manager','(239) 643 4677',NULL,'(239) 643 4677','(941) 240 2147','amanda.r@peopartners.com','2019-02-19 01:40:48','2021-02-18 01:53:55','8/17/2020 - met with Amanda in person and she mentioned that she will start keeping us in mind for future submissions\r\nSent Welcome Package',NULL,'40','5','0'),(242,'Angel Aponte','Ronald Coleman','1821 Automn Ridge',NULL,'Washington','IL','61571','Ronald Coleman',NULL,'309-370-8015',NULL,'309-370-8015',NULL,'rcoleman@elmllc.com','2019-02-25 22:28:06','2019-02-25 22:31:13','Welcome Package Sent',NULL,'40','5',NULL),(244,'Scott Hanson','LL Roberts Group','12225 Greenville Ave','300','Dallas','TX','75243','LJ Roberts',NULL,'877-878-6463','1222','214-763-5426',NULL,'ljroberts@llroberts.com','2019-04-04 01:24:33','2019-04-04 01:24:33',NULL,NULL,NULL,NULL,NULL),(245,'Glen Lancaster','Foundation Peo Solutions','220 Congress PArk Drive','138','Delray Beach','FL','33445','Robert Arthur Beck','President','(561) 327 4829',NULL,'(561) 809 7741',NULL,'rbeck@fpspeo.com','2019-04-06 03:39:14','2021-04-01 22:42:27','Sent Broker Welcome Kit',NULL,'40','5','0'),(246,'Alicia Garcet','Bridgely Key Options, LLC','1111 3rd Ave W','250','Bradenton','FL','34205','Ryan Varnadore','Owner','(855) 899 1589',NULL,'(855) 899 1589',NULL,'ryan.varnadore@bridgely.com','2019-04-08 21:29:38','2021-03-12 04:43:46','Broker Welcome Kit Sent',NULL,'40','5','0'),(247,'Jason Miller','Adminisolve, Inc.','849 Eagle Point Drive',NULL,'St. Augustine','FL','32092','David McDonie','President','(904) 859 8533',NULL,'(904) 859 8533',NULL,'dmcdonie@adminisolve.com','2019-04-09 23:40:14','2021-03-27 04:05:31','7/28/2020 - only Jason to have contact\r\n8/3/2020 - Left voicemail and sent email asking for an updated W-9\r\n8/4/2020 - NO LONGER CONTACT \r\n\r\nBroker Welcome Kit Sent',NULL,'40','5','0'),(248,'Shane Williams','V Luna Solutions','PO Box 7340',NULL,'Monroe','NJ','08831','Jose Munoz',NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-17 20:17:17','2020-07-28 01:05:06',NULL,NULL,'45%',NULL,NULL),(251,'Glen Lancaster','Robert Groetke and Associates','12028 Rising Oaks Dr E',NULL,'Jacksonville','FL','32223','Robert Groeteke','Owner','(904) 662 0300',NULL,'(904) 268 0373',NULL,'bobgroeteke@comcast.net','2019-11-19 03:07:09','2021-04-01 23:10:33',NULL,NULL,'40','5','0'),(252,'Shane Williams','Monarch Partners Group, LLC','9858 Glades Road','125','Boca Raton','FL','33434','Ken Heideger',NULL,'954-554-3456',NULL,NULL,NULL,'ken@monarchpartnersgroup.com','2019-11-19 03:29:42','2019-11-19 03:29:42',NULL,NULL,NULL,NULL,NULL),(253,'Alicia Garcet','Empower Consulting Partners','101 Plaza Real S','201','Boca Raton','FL','33432','Rachel Barden','President','(954) 873 4254','9548734254','(954) 873 4254',NULL,'rbarden@empowerconsulting.com','2019-12-03 22:35:35','2021-03-12 04:44:39','Broker Welcome Kit Sent',NULL,'40','5','0'),(254,'Alicia Garcet','Merritt Business Solutions','375 N. State Road 434','2001','Altamonte Springs','FL','32714','Jessica Meiresonne','Agent','(407) 863 0222',NULL,'(407) 863 0222',NULL,'jessica@mbspeobroker.com','2019-12-12 22:49:38','2021-03-12 04:50:21','Broker Welcome Kit Sent',NULL,'40','0','0'),(283,'Karissa Pierson','CJM Benefit Consulting Services LLC','77 Glasgow Drive',NULL,'St. Johns','FL','32259','Christian Maula','Owner','(561) 212 1715',NULL,'(561) 212 1715',NULL,'Christian@cjmbenefitservices.com','2021-01-29 00:06:41','2022-04-08 19:36:06',NULL,NULL,'30','0','0'),(256,'Scott Hanson','ASAP Insurance Brokerage Inc.','200 Broadhollow Rd.','207','Melville','NY','11747','Anthony Marotta','CEO','888-205-6660',NULL,'516-277-6677','515-888-5773','anthony@asapinsurance.com','2019-12-13 01:11:28','2019-12-13 01:11:28','Broker Welcome Kit Sent',NULL,'40',NULL,NULL),(257,'Karissa Pierson','Beverly Levy','28437 N. 46th St.',NULL,'Cave Creek','AZ','85331','Beverly Levy','Owner','(602) 717 3153',NULL,'(602) 717 3153',NULL,'blevybrokerage@gmail.com','2020-02-18 01:27:11','2021-02-18 01:54:21','20% Admin on Payroll. 480-428-6171 House phone',NULL,'40','5','0'),(258,'Glen Lancaster','TCE Insurance Service','490 Wheeler Rd.','125','Hauppauge','NY','11788','William DeMaio','President','(631) 761 6487',NULL,'(516) 313 1467',NULL,'wdemaio@tceins.com','2020-04-29 20:34:05','2021-04-01 23:11:00',NULL,NULL,'40','5','0'),(259,'Karissa Pierson','Dynamic Employer Solutions','8630 Tram Rd.',NULL,'Tallahassee','FL','32311','Logan Tuck','President','(813) 527 9993',NULL,'(352) 212 5568',NULL,'logantuck@dynamicemployer.com','2020-06-16 01:32:07','2021-10-21 03:00:54','You can send any candy to 6000 W Bainbridge Dr, Rogers, AR 72758 if you\'d like lol.',NULL,'40','5','0'),(260,'Glen Lancaster','Vertical Holdings, LLC','1508 Batvia Ave.','3rd floor','Geneva','IL','60134','Tony Langfeld','President','773-897-3894',NULL,NULL,NULL,'tony@verticalhr.com','2020-06-16 01:59:54','2020-06-16 01:59:54',NULL,NULL,'40','5',NULL),(261,'Karissa Pierson','Orca Insurance Group','6959 University Blvd.',NULL,'Winter Park','FL','32792','Caleb Sabat','Manager','(407) 595 3305',NULL,'(407) 595 3305',NULL,'caleb.sabat@orcaig.com','2020-07-27 20:15:21','2021-04-01 23:09:57',NULL,NULL,'40%','5%','50%'),(262,'Karissa Pierson','Tyler Reinholt','1011 E Ridgewood Street',NULL,'Orlando','Florida','32803','Tyler Reinholt',NULL,'574-371-6212',NULL,NULL,NULL,'reinholt.tyler@gmail.com','2020-07-28 02:52:44','2020-10-13 20:39:51','7/27/2020 - Spoke with Tyler, he is starting a role with Northwestern Mutual doing financial planning, working with a lot of business owners so he will keep us in mind for referral business.\r\n9/11/2020 - Welcome package sent',NULL,'30%','0%',NULL),(264,'Scott Hanson','ESI Peo - DO NOT CALL (8/3/2020)','2532 Trailmate Dr.',NULL,'Sarasota','FL','34243','Glenn Glasser','President, Founder & CEO','941-756-6770','0','941-928-8875','941-756-2661','gglasser@esipeo.com','2020-08-03 20:35:40','2020-08-03 20:36:11',NULL,NULL,NULL,NULL,NULL),(265,'Alicia Garcet','BlueWave HR','6751 NW 26th Way',NULL,'Fort Lauderdale','FL','33309','Michael Evans','Owner','(954) 488 3711',NULL,'(954) 837 8328','(954) 239 5435','mike.evans@bluewavehr.com','2020-08-27 00:52:38','2021-03-12 02:45:37',NULL,NULL,'0','0','0'),(266,'Scott Hanson','Prime Employer Solutions','2925 US Alt 19','Suite A','Palm Harbor','FL','34683','Terry Roberts','President','727-543-7349',NULL,NULL,'866-858-6570','troberts@primeemployer.com','2020-08-28 01:16:59','2020-08-28 01:16:59','8/27/2020 - spoke with Terry and he said that he is \"older\" and doesn\'t do much volume because he has built up his book of business. He only works a couple of hours a day and that is mostly servicing his existing clients. If they want him to shop the services, he will and but he is open to sending us business if the opportunity comes up. Sent email with underwriting guidelines.',NULL,NULL,NULL,NULL),(267,'Scott Hanson','Florida Payroll Partners',NULL,NULL,NULL,'FL',NULL,'Tina Wellman',NULL,'352-516-3961',NULL,NULL,NULL,'tinawellman@gmail.com','2020-08-28 03:18:25','2020-08-28 03:18:25',NULL,NULL,NULL,NULL,NULL),(268,'Karissa Pierson','PEO Searcher','21588 Halstead Drive',NULL,'Boca Raton','FL','33428','Gayle Taylor',NULL,'888-441-9494',NULL,'561-289-7442','561-634-2020','gtaylor@peosearcher.com','2020-09-10 00:54:40','2020-11-03 22:06:15',NULL,NULL,NULL,NULL,NULL),(269,'Karissa Pierson','PEOINC of America',NULL,NULL,NULL,NULL,NULL,'Al Defranchesco','President','1-833-736-4621','1',NULL,NULL,'al@peoincofamerica.com','2020-09-22 20:37:35','2020-09-22 21:48:54',NULL,NULL,NULL,NULL,NULL),(270,'Karissa Pierson','Fortune Business Consulting','7403 NW 76TH CT',NULL,'TAMARAC','FL','33321','Stephanie Fortune','President','(305) 748 1904',NULL,'(305) 748 1904',NULL,'stephanie@fortunebizconsulting.com','2020-09-23 00:12:53','2021-02-11 23:54:11','10/01/2020 - welcome package sent',NULL,'30%','0%','0'),(271,'Karissa Pierson','Dial Consulting Partners / Atlantic Payroll','3802 Crossroads Pkwy',NULL,'Fort Pierce','FL','34945','Gregg Borak',NULL,'772-466-0440',NULL,'954-716-2967',NULL,'gregg@atlanticpayroll.us','2020-10-02 00:39:27','2020-10-07 23:55:22','All marketing pieces go to Roche Johnson <roche@atlanticpayroll.us>',NULL,NULL,NULL,NULL),(272,'Karissa Pierson','Dial Consulting Partners / Atlantic Payroll','3802 Crossroads Pkwy',NULL,'Fort Pierce','FL','34945','Patrick Turner',NULL,'772-466-0440',NULL,'1-863-662-7817',NULL,'patrick@atlanticpayroll.us','2020-10-02 00:41:24','2020-10-07 23:55:35','All marketing pieces go to Roche Johnson <roche@atlanticpayroll.us>',NULL,NULL,NULL,NULL),(316,'Brett Masters','Epic Payment Solution','PO Box 10383',NULL,'Santa Ana','CA','92711','Linda Barnes','Owner','(949) 414 7161',NULL,'(714) 507 0261',NULL,'lindabarnesllb@gmail.com','2021-11-11 21:39:01','2021-11-11 21:39:01',NULL,NULL,'30','0','0'),(274,'Karissa Pierson','Venture HR','333 University Avenue','Suite 200','Sacramento','CA','95825','Kristi Harris','President','(800) 409 8958','ext. 113301','(800) 409 8958',NULL,'kristi.harris@insuredsolutions.net','2020-10-22 03:33:28','2021-04-01 23:11:43',NULL,NULL,'0','0','0'),(275,'Lee Ellison','CGB Insurance','2531 Green Forest Lane','106','Lutz','FL','33558','Erika Bloomquist','Sr. Insurance Agent','(813) 749 7948','106','(727) 337 8260',NULL,'erika@cgbinsurance.com','2020-11-13 21:24:47','2021-11-04 01:09:05',NULL,NULL,'40','5','0'),(276,'Shane Williams','Platinum PEO Resources, Inc','17595 S. Tamiami Trail','Suite 210','Fort Myers','FL','33908','Tom Marquardt',NULL,'239-561-2591',NULL,NULL,NULL,NULL,'2020-11-19 21:37:32','2020-11-19 21:39:44',NULL,NULL,NULL,NULL,NULL),(277,'Lee Ellison','Steven R Preston','4016 Long Branch Lane',NULL,'Apopka','FL','32712','Steven Preston',NULL,'407-562-2502',NULL,'321-947-9522',NULL,NULL,'2020-12-03 21:24:17','2020-12-03 21:24:17',NULL,NULL,'20','0','0'),(278,'Scott Hanson','WorkComp 360 LLC','6959 University Blvd.',NULL,'Winter Park','FL','32792','Scott Hanson',NULL,'888-463-5761',NULL,NULL,NULL,'info@workcomp360.com','2020-12-22 21:26:50','2020-12-22 21:26:50',NULL,NULL,'40','0',NULL),(279,'Lee Ellison','Modern Risk Solutions','808 Hawl Landing',NULL,'Fruitland Park','FL','34731','Danny Delgado','Business Consultant','352-409-4674',NULL,NULL,'352-460-4873','Danny@Modernrisk.net','2020-12-31 02:05:07','2020-12-31 02:05:07',NULL,NULL,'40',NULL,NULL),(280,'Karissa Pierson','John Rurkowski / M3','1690 Pinehurst Road',NULL,'Dunedin','FL','34698','John Rurkowski',NULL,NULL,NULL,'1-727-459-7356',NULL,'John@M3LFL.com','2021-01-06 02:02:03','2021-01-06 02:02:03',NULL,NULL,'30','N/A',NULL),(281,'Karissa Pierson','ACP Management Services, LLC','890 Summit Greens Blvd',NULL,'Clermont','FL','34711','Thomas Stephen Anderson','Owner','(407) 530 7783',NULL,'(407) 530 7783',NULL,'tsanderson50@gmail.com','2021-01-18 23:43:22','2021-01-18 23:43:22',NULL,NULL,'30','0','0'),(282,'Karissa Pierson','S4 Marketers, LLC','2708 Alternate 19 N.','Suite 507-12','Palm Harbor','FL','34683','Mark Kaspar','Owner','(727) 781 3300',NULL,'(727) 481 7811',NULL,'MTKaspar1@gmail.com','2021-01-19 03:26:55','2021-01-19 03:26:55',NULL,NULL,'30','0','0'),(284,'Karissa Pierson','Demsker Consulting LLC','3446 Lawton Lane',NULL,'Pepper Pike','OH','44124','Rob Demsker','President','(440) 462 2387',NULL,'(216) 644 4446',NULL,'rob@demskerconsulting.com','2021-02-09 23:23:31','2021-02-19 06:04:24',NULL,NULL,'30','0','0'),(285,'Scott Hanson','Star Group LLC','77 Hudson Street','Apartment 2512','Jersey City','NJ','07302','TBD','TBD','(123) 456 7890',NULL,'(123) 456 7890',NULL,'TBD@notsureyet.com','2021-02-16 03:19:02','2021-02-16 03:19:02',NULL,NULL,'TBD','TBD','0'),(286,'Alicia Garcet','Timothy Keough','6178 Bongolow Drive',NULL,'Lake Worth','FL','33463','Timothy Keough','Business Consultant','(561) 951 3078',NULL,'(561) 951 3078',NULL,'Keough19@gmail.com','2021-02-18 04:32:12','2021-04-01 23:09:18',NULL,NULL,'N/A','N/A','N/A'),(287,'Karissa Pierson','HR Connection Point, LLC','30 N. Gould Street','Suite R','Sheridan','WY','82801','Steven McGivern','Owner','(407) 342 1259',NULL,'(407) 342 1259',NULL,'stevenjmcgivern7@gmail.com','2021-02-19 22:24:13','2021-02-19 22:24:13',NULL,NULL,'30','0','0'),(288,'Karissa Pierson','Betty Duran','8335 Winnetka Ave. #119',NULL,'Winnetka','CA','91306','Betty Duran','Owner','(818) 645 0537',NULL,'(818) 645 0537',NULL,'bettyduran.php@gmail.com','2021-03-11 23:10:55','2021-03-11 23:10:55',NULL,NULL,'30','0','0'),(289,'Lee Ellison','Keyser Insurance Group','7303 Merchant Court',NULL,'Sarasota','FL','34240','David Viola','EVP','(941) 373 3888',NULL,'(407) 492 1881',NULL,'dviola@keyseragency.com','2021-03-11 23:24:17','2021-03-11 23:27:34',NULL,NULL,'35','0','0'),(290,'Scott Hanson','BRG Advisory Group','455 NE 5th Ave.','Suite D-183','Delray Beach','FL','33483','Kenneth Orr','President','(800) 971 3006',NULL,'(800) 971 3006',NULL,'kenneth.orr@brgadvisorygroup.com','2021-03-17 19:53:15','2021-03-17 19:53:15',NULL,NULL,'0','0','50%'),(291,'Scott Hanson','Aspen Risk Management Services, LLC','4221 W Boy Scout Blvd','Suite 300','Tampa','FL','33607','Jim Cote','President','(813) 760 7222',NULL,'(813) 760 7222',NULL,'Jcote@aspenrm.com','2021-04-20 20:35:38','2021-04-20 21:41:59',NULL,NULL,'N/A','N/A','N/A'),(292,'Karissa Pierson','CIM Construction in Motion','733 SE Norcross Ave.',NULL,'Port St. Lucie','FL','34983','Jim Barbieri','President','(772) 807 2155',NULL,'(772) 807 2155',NULL,'JimB@CIM-ConstructionInMotion.com','2021-04-20 20:41:22','2021-04-20 20:41:22',NULL,NULL,'30','0','0'),(293,'Alicia Garcet','LAK Consulting Services','8280 SW 103 Street','Suite 103','Miami','FL','33156','JC Bellon','President','(786) 474 8622',NULL,'(786) 474 8622',NULL,'JCbellon7@gmail.com','2021-04-27 00:25:11','2021-05-12 00:00:21',NULL,NULL,'30','0','0'),(294,'Alicia Garcet','BKS Partners','1115 Bartow Road','Suite 1400','Lakeland','FL','33801','Doug Beller','Owner','(954) 383 8326',NULL,'(954) 383 8326',NULL,'doug.beller@bkspartners.com','2021-04-28 00:10:54','2021-11-04 01:54:40',NULL,NULL,'N/A','N/A','N/A'),(295,'Karissa Pierson','Marsh USA, Inc.','20 N. Martingale Road','Suite 100','Schaumburg','IL','60173','KERRI QUIGLEY','Senior Vice President','(847) 463 7291',NULL,'(847) 463 7291',NULL,'kquigley@assuranceagency.com','2021-04-30 04:36:13','2021-04-30 04:36:13',NULL,NULL,'N/A','N/A','N/A'),(296,'Karissa Pierson','Victoria J. Boyd','10152 S. Ocean Drive','Suite #B311','Jensen Beach','FL','34957','Victoria J. Boyd','Owner','(772) 940 2827',NULL,'(772) 940 2827',NULL,'VBOYD1960@Gmail.com','2021-05-07 03:27:32','2021-05-07 04:10:19',NULL,NULL,'30','0','0'),(297,'Karissa Pierson','Glenn Strong','1166 Bayshore Drive','Suite 101','Fort Pierce','FL','34949','Glenn Strong','Owner','(772) 284 4049',NULL,'(772) 284 4049',NULL,'strongbrothersth@Gmail.com','2021-05-07 04:12:34','2021-05-07 04:12:34',NULL,NULL,'N/A','N/A','N/A'),(298,'Karissa Pierson','Silent Marketing Solution','2850 Telluride Loop','Unit 305','Sarasota','FL','34243','Mark Lukes','President','(941) 404 2591',NULL,'(941) 404 2591',NULL,'mark.lukes@silentmarketingsolution.con','2021-05-27 21:24:44','2021-05-27 21:24:44',NULL,NULL,'30','0','0'),(299,'Karissa Pierson / Brett Masters','Hutchinson Shores','1703 NE Arch Avenue',NULL,'Jensen Beach','FL','34957','Michael L. Vogler','President','(954) 873 5550',NULL,'(954) 873 5550',NULL,'chefmikev@hotmail.com','2021-06-10 00:44:22','2021-06-10 20:29:25',NULL,NULL,'30','0','0'),(300,'Scott Hanson','CarolinaPEO, Inc','6309 Mission Place',NULL,'Charlotte','NC','28210','Jef Fullagar','President','(704) 906 4665',NULL,'(704) 906 4665',NULL,'jef@carolinapeo.com','2021-07-23 22:14:22','2021-07-23 22:14:22',NULL,NULL,'0','0','0'),(301,'Carmelite Souffront','INSURANCE OFFICES OFAMERICA','1855 W. STATE ROAD 434',NULL,'LONGWOOD','FL','32750','DANA GAZARD','Sr. Carrier Management Specialist','(407) 998 5561',NULL,'(407) 998 5561',NULL,'Dana.Gazard@ioausa.com','2021-07-24 06:09:05','2021-07-24 06:09:05',NULL,NULL,'40','0','0'),(302,'Jason Miller','Blackford PEO Solutions LLC','4600 Touchton Road E','Suite 1150','Jacksonville','FL','32246','Raymond Blackford','President','(904) 719 4382',NULL,'(904) 719 4382',NULL,'rblackford@blackfordassociates.com','2021-08-04 04:25:10','2021-08-04 04:25:10',NULL,NULL,'40','0','0'),(303,'Carmelite Souffront','Sunshine Employee Professional Services, Inc.','3401 Lindsey Street',NULL,'Dover','FL','33527','Yadira Felix','President','(813) 638 7175',NULL,'(813) 704 4338','(813) 381 5333','sunshineproinc@icloud.com','2021-08-06 23:30:41','2021-08-06 23:30:41',NULL,NULL,'30%','0','50%'),(304,'Shane Williams','WorkComp Solutions LLC','7828 N Haven Avenue',NULL,'Rancho Cucamonga','CA','91730','Alejandro Cervantes-Garduno','Sr. Business Consultant','(323) 919 0051',NULL,'(323) 919 0051',NULL,'alex@workcomp.solutions','2021-08-25 20:27:35','2021-08-25 20:27:35',NULL,NULL,'25','0','0'),(305,'Karissa Pierson / Brett Masters','The HealthQuote','303 William Falls Drive',NULL,'Canton','GA','30114','James Regocki','Owner','(999) 999 9999',NULL,'(999) 999 9999',NULL,'tbd@healthquote.com','2021-08-25 21:48:20','2021-08-25 21:50:37',NULL,NULL,'30','0','0'),(306,'Karissa Pierson / Brett Masters','e3peo','130 Prospect Street','Apt. 110','East Orange','NJ','07017','Joshua Norman','Sales Representative','(908) 516 8555',NULL,'(908) 517 3855',NULL,'joshua@e3peo.com','2021-09-04 02:15:27','2021-09-04 02:15:27',NULL,NULL,'30','0','0'),(307,'Karissa Pierson / Brett Masters','Your Leadership Legacy','3799 S. Atlantic Ave.','Suite 1106','Daytona Beach','FL','32118','Oakland McCulloch','President','(386) 453 9185',NULL,'(386) 453 9185',NULL,'ltcoakmcculloch@gmail.com','2021-09-20 20:44:57','2021-09-20 20:44:57',NULL,NULL,'30','0','0'),(308,'Scott Hanson','CTK North American Insurance Services, LLC','1240 North Lakeview Avenue','Suite #125','Anaheim','CA','92807','Kevin Waldinger','President','(714) 779 2000','ext. 3108','(714) 779 2000','(714) 779 4129','kwaldinger@insurica.com','2021-10-01 23:47:21','2021-10-01 23:47:49',NULL,NULL,'TBD','TBD','TBD'),(309,'Carmelite Souffront','Advanced Insurance, Inc.','PO Box 470 3000 Gamber Rd','Suite 600','Finksburg','MD','21048','Scott Henderson','Agent/ Owner','(410) 861 6949',NULL,'(443) 880 8716',NULL,'scotth@advinsagent.com','2021-10-05 22:15:22','2021-10-05 22:15:46',NULL,NULL,'40%','0','0'),(311,'Angel Apointe','Omega Insurance Solutions, Inc.','1820 E Edgewood Drive',NULL,'Lakeland','FL','33803','Keith Steverson','Vice President','(866) 997 0711','x 205','(866) 997 07112',NULL,'keith@omega4agents.com','2021-10-08 00:15:23','2021-10-08 00:15:23',NULL,NULL,'30','0','0'),(312,'Carmelite Souffront','PEO Options, LLC','2820 S. Alma Road','Suite 18 PMB 215','Chandler','AZ','85286','Brian Van Anne','Business Consultant','(480) 431 8420',NULL,'(480) 431 8420',NULL,'brian@PEOptions.com','2021-10-15 01:39:58','2021-10-15 01:39:58',NULL,NULL,'40','5','0'),(317,'Karissa Pierson','John C. Jones & Associates, Inc.','2027 Hawaii Ave NE',NULL,'St. Petersburg','FL','33703','John Jones','President','(727) 577 0665','202','(727) 577 0665',NULL,'john@jjonesonline.com','2021-11-22 23:58:01','2022-02-04 21:32:31',NULL,NULL,'40','0','0'),(318,'Brett Masters','N/A','1432 W Emerald Ave.','Unit 646','Meza','AZ','85202','Ron Jester','Owner','(480) 869 1210',NULL,'(480) 869 1210',NULL,'ronjester@gmail.com','2021-12-30 00:49:59','2021-12-30 00:49:59',NULL,NULL,'30','0','0'),(319,'Carmelite Souffront','US Business Solutions Corp.','16630 Westwood Lane',NULL,'Weston','FL','33326','Ken Mantuo','Owner','(954) 655 7506',NULL,'(954) 655 7506',NULL,'KMantuosr@gmail.com','2022-01-12 22:25:20','2022-01-12 22:25:20',NULL,NULL,'35','0','0'),(320,'Carmelite Souffront','Christy Insurance Agency','1504 53rd Avenue W',NULL,'Bradenton','FL','34207','Kenneth Christy','President','(941) 755 4753',NULL,'(941) 932 1957',NULL,'kchristy05@yahoo.com','2022-02-02 00:02:05','2022-02-02 00:02:05',NULL,NULL,'35','0','0'),(321,'Brett Masters','Natasha Pelak and Associates LLC','2720 5th Street N',NULL,'St. Petersburg,','FL','33704','Natasha Pelak','Owner','(917) 683 5157',NULL,'(917) 683 5157',NULL,'natashapelak@gmail.com','2022-03-08 21:44:16','2022-03-08 21:44:16',NULL,NULL,'30','0','0'),(322,'Jeffrey Pyeatt','Arabella Consulting Inc.','814 E. Cartagena Street',NULL,'Long Beach','CA','90807','Michelle Nicole Mestas','President','(949) 466 2426',NULL,'(949) 466 2426',NULL,'mnschuh@gmail.com','2022-03-17 19:40:51','2022-03-17 19:40:51',NULL,NULL,'30','0','0'),(323,'Carmelite Souffront','The Dude Abides LLC','19342 Hearth Ct.',NULL,'Lakeville','MN','55044','Nathan Ely','President','(612) 357 7611',NULL,'(612) 357 7611',NULL,'nathanely353@gmail.com','2022-04-02 01:07:53','2022-04-02 01:07:53',NULL,NULL,'0','0','0'),(324,'Jeffrey Pyeatt','SCIL Ship LLC','63 Cherrywood Drive',NULL,'Somerset','NJ','08873','Chris Strzelecki','Owner','(908) 331 4701',NULL,'(908) 331 4701',NULL,'chris.strzelecki@unishippers.com','2022-04-20 03:05:34','2022-04-20 03:05:34',NULL,NULL,'TBD','TBD','TBD'),(325,'Scott Hanson','M3 HRO, LLC','PO Box 1263',NULL,'Orlando','FL','32802','Travis Bender','PEO Practice Leader','(407) 691 9893',NULL,'(407) 340 5994',NULL,'travis.bender@McGriffInsurance.com','2022-05-04 22:39:52','2022-05-04 22:39:52',NULL,NULL,'TBD','TBD','TBD'),(326,'Brett Masters','Robert Meade','134 Cayuqa Ave.',NULL,'Canastota','NY','13032','Robert Eric Meade','Owner','(516) 559 7002','ext. 108','(315) 559 3124',NULL,'eric@cedarparkgroup.com','2022-05-10 22:19:44','2022-05-10 22:19:44',NULL,NULL,'30','0','0'),(327,'Jeffrey Pyeatt','INLAND EMPIRE HR','1586 WHISPER CREEK',NULL,'BEAUMONT','CA','92223','PATRICK FLAHERTY','OWNER','(909) 223 6001',NULL,'(909) 223 6001',NULL,'PATRICKTFLAHERTY@AOL.COM','2022-05-20 18:48:32','2022-05-20 18:48:32',NULL,NULL,'0','0','0'),(328,'Carmelite Souffront','Racing For Heroes Inc.','1100 Ace Drive',NULL,'Alton','VA','24520','Brett Morash','President','(914) 563 44217',NULL,'(914) 563 44217',NULL,'morashb@racingforheroes.org','2022-06-06 21:32:51','2022-06-06 21:32:51',NULL,NULL,'0','0','0'),(329,'Brent Lawrence','V Partners','4802 51st W','#211','Bradenton','FL','34210','Vanessa Castro','Owner','(941) 253 0069',NULL,'(941) 253 0069',NULL,'vpartnersolutions@gmail.com','2022-07-05 16:11:58','2022-07-05 16:11:58',NULL,NULL,'30','0','50'),(330,'Brent Lawrence','BB Insurance Marketing','10167 W Sunrise Blvd','3rd Floor','Plantation','FL','33322','Jason Brown','Broker','(954) 452 4900',NULL,'(954) 452 4900',NULL,'jason@bbimi.com','2022-07-15 17:22:07','2022-07-15 17:22:07',NULL,NULL,'30','5','50%'),(331,'Brett Masters','Jacob Scott','25011  W. 86th Terrace',NULL,'Lenexa','KS','66227','Jacob Scott','Owner','(785) 250 3590',NULL,'(785) 250 3590',NULL,'jscott@tkmetals.com','2022-07-19 13:26:41','2022-07-19 14:03:11',NULL,NULL,'30%','0','0'),(332,'Brett Masters','Thomas Katovsky','13940 Cedar Road','#178','Cleveland','OH','44118','Healthy Referral - Thomas Katovsky','Owner','(347) 621 2351',NULL,'(347) 621 2351',NULL,'healthyreferral@gmail.com','2022-07-22 01:51:45','2022-07-22 01:53:09',NULL,NULL,'30%','0','0'),(333,'Scott Hanson','Your HR Doctors, LLC','699 N. Orlando Ave.',NULL,'Winter Park','FL','32789','Rick Graves','Owner','(407) 984 5857',NULL,'(407) 984 5857',NULL,'rgraves@hr-drs.com','2022-11-03 15:00:02','2022-11-03 16:03:43',NULL,NULL,'45%','0%','50%'),(334,'Scott Hanson','Argenbright HR','1100 Bolton Rd.',NULL,'New Symrna Beach','FL','32168','Charles Argenbright','Owner','(386) 299 9066',NULL,'(386) 299 9066',NULL,'charles@argenbrighthr.com','2022-11-03 16:02:48','2022-11-03 16:02:48',NULL,NULL,'45','0','50');
/*!40000 ALTER TABLE `brokers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csa_in_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `broker_agreement_in_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `broker` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basis` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wc_effective_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wc_deductible` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fees` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `wc_policyno` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setup` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epli` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loss_fund` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_setup_fee` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (23,'A.A.A. Ambulette Service Inc.','ASO','Shawn','Neville','Owner','(516) 474-2500',NULL,'122 Verdi Street, Farmingdale, NY 11735',NULL,'snev1234@aol.com','www.aaaambulette.com','No','No','Axis Group',NULL,NULL,'2016-10-02','No deductible',NULL,'2017-07-07 02:57:30','2018-03-28 02:14:26','8/16/2017: Policy number added-bjs','WC504000017','SUNZ',NULL,NULL,NULL,NULL,NULL),(24,'Ascend Staffing Solutions, Inc.','PEO','Tina','Yeager','RN, CEO/CNO','(561) 372-9333','(954) 415-8969','811 N.W. 6th Drive  Boca Raton, FL  33486','(561) 491-7430','tyeager@ascendstaffingsolutions.com','www.AscendStaffingSolutions.com','Yes','No','Axiom Payroll Consultants, Inc','40 & 5','Admin & WC Premium','2017-07-03','$500.00',NULL,'2017-07-07 03:05:16','2018-03-28 02:20:32','8/16/2017: Policy number updated-bjs \r\n(No longer a client)','WCP500112401GIC','GIC','$500.00','$250.00',NULL,'$1000.00',NULL),(25,'Belle Vista Bluffs, Inc.','ASO','Beverly','Mackin','Administrator','(757) 587-0880','(727) 244-9248','1138 Rosemary Drive, Largo, FL 363770','None','bellevista@aol.com','None','No','No','N/A',NULL,NULL,'2017-06-24',NULL,NULL,'2017-07-07 03:11:04','2018-03-28 02:17:41','8/16/2017: Policy number updated-bjs',NULL,'ASO',NULL,NULL,NULL,NULL,NULL),(26,'Belle Vista Retirement Homes, Inc.','ASO','Beverly','Mackin','Administrator / HR / Payroll / etc.','(727) 587-0880','(727) 244-6248','1453 Belleair Rd, Clearwater, FL 33756',NULL,'bellevista@aol.com','None','No','Yes','N/A',NULL,NULL,'2017-06-24',NULL,NULL,'2017-07-07 03:16:51','2018-03-28 02:19:55','8/16/2017: Policy number updated-bjs',NULL,'ASO',NULL,NULL,NULL,NULL,NULL),(27,'CL Quality II Corp','PEO','Rogelio','Cordero Fonseca','Owner','(239) 565-6713',NULL,'5677 Mcintosh Rd, Sarasota, FL 34233','None','CLQuality2@gmail.com','None','No','No','Siracusa Staffing & Leasing LLC','40 / 5','Admin / WC Premiums','2017-04-18','$1000.00 per claim',NULL,'2017-07-07 03:22:13','2018-03-28 02:21:15','8/16/2017: Policy number updated-bjs','TGW900056800','State National',NULL,NULL,NULL,NULL,NULL),(28,'CLM Quality Corp','PEO','Lucia','Lopes','Owner','(239) 565-6713','(239) 565-6713','2066 Airport Industrial Park Dr, Suite A, Marietta, GA  30060','None Listed','CLQualityCorp@yahoo.com','None','No','No','Siracusa Staffing & Leasing LLC','40 / 5','Admin / WC Premiums','2017-04-18','$1000.00 per claim',NULL,'2017-07-07 03:25:57','2018-03-28 02:21:30','8/16/2017: Policy number updated-bjs','TGW900056800','State National',NULL,NULL,NULL,NULL,NULL),(43,'Walsh Messenger Services','PEO','Larry','Porto','Manager','(516) 719-8097','(516) 351-6595','4 Third Street','(516) 746-4012','lporto@walshmessenger.com',NULL,'Yes','No','Axis Group','40 admin 10 W/C',NULL,NULL,NULL,NULL,'2017-07-28 21:48:26','2017-08-16 21:36:51','Drug Testing (if applicable) $30, Fee for each Supplemental check run & bonus run $50 per transaction ; 8/16/2017: Policy number added-bjs','WCP500112401GIC',NULL,NULL,'$35','$1.00',NULL,'waived'),(29,'CL Quality Corp.','PEO','Katterine','Mariano','CFO','(239) 674-9375','None listed','2535 Edison Ave. Fort Myers, FL 33901','(239) 674-9370','clqualitycorp@yahoo.com',NULL,'Yes','No','Siracusa Staffing & Leasing LLC','40','5','2017-05-22','$1,000.00',NULL,'2017-07-07 03:35:33','2018-03-28 02:21:00','8/16/2017: Policy number updated-bjs','TGW900056800','State National','$500.00','$35.00',NULL,'$0.00',NULL),(30,'Empire DM Inc.','Payroll Only','Carol','McLoughlin','President','(315) 477-1487',NULL,'222 Teall Ave, Suite 106, Syracuse, NY 13210',NULL,'empire_empiredm@yahoo.com','www.empiredm.com','No','No','Axis Group',NULL,NULL,'2016-10-12',NULL,NULL,'2017-07-07 03:47:45','2018-03-28 02:22:22','8/16/2017: Policy number updated-bjs\r\n(No longer a client)','WCP500113201GIC','GIC',NULL,NULL,NULL,NULL,NULL),(31,'FL Home Maintenance dba Her Majesty\'s Service','PEO','Ashley','Williams','Owner','(407) 280-2288','(407)-280-2288','221 Waverly Drive, Fern Park, FL 32730','None listed','hermajestypw@gmail.com','None Listed','Yes','Yes','Business Outsourcing Solutions Consultants','40','Administrative Fee','2017-04-04','Waived',NULL,'2017-07-07 04:12:43','2018-03-28 02:22:46','8/16/2017: Policy number updated-bjs','TGW900056800','State National',NULL,'$25.00',NULL,NULL,NULL),(32,'Job Connection Services, Inc','PEO','Donna','Kluk','CFO','(610) 760-3095','(570) 401-1741','475 Sand Quarry Road  Palmerton, PA  18071','(610) 826-6220','donna@jcsfamily.com','www.jcsfamily.com','Yes','No','N/A',NULL,NULL,'2017-02-02','$50,000.00',NULL,'2017-07-07 22:06:28','2018-03-28 02:24:09','8/16/2017:  (NJ)-WCP500112501GIC / (PA)-WCP500112801GIC / (NY)-WCP500113001GIC) 7/1/2017-7/1/2017- bjs\r\n$20k was paid for WC ded on 9/14/17 (Joseph Francis), $17k was paid for WC ded 9-21-17 (Blaine Smith)','WC507000017','UWIC',NULL,NULL,NULL,NULL,NULL),(33,'Joseph McDonnell dba Custom Carpet Center','Payroll Only','Joseph','McDonnell','Owner','(716) 508-3812',NULL,'2847 Southwestern Blvd., Orchard Park, NY 14127',NULL,'jmcdonnell@customcarpetcenters.com','www.customcarpetcenters.com','Yes','No','Axis Group','25 / 10','Admin & WC Premium',NULL,NULL,NULL,'2017-07-07 22:18:02','2018-03-28 02:24:31','8-11-17 - Called and left VM for whoever  8/16/207 Policy number updated-bjs\r\n(No longer a client)','WCP500112601GIC','GIC',NULL,NULL,NULL,NULL,NULL),(34,'M. W. Platt, Inc. dba Special T Metal','PEO','Janet','Paull','Office Manager','(724) 437-2239','(724) 322-5017','103 Oliver Rd., Uniontown, PA 15401','Not listed','jpaull@qualitysgroup.com','Not listed','Yes','No','Songer & Associates LLC','2','GAP','2016-05-23','$1500.00',NULL,'2017-07-07 22:22:09','2017-10-02 21:06:24','8/16/2017: Policy number updated-bis  10/3/2017: WCP500112701GIC (old GIC Policy #) bjs\r\n\r\nAsked for Loss Runs on August 29th, 2017.  Loss Runs were requested from GIC.  We received them and they were sent over to Andy Songer on August 29th, 2017 at 4:02pm.','TGW900056900','SNIC',NULL,NULL,NULL,NULL,NULL),(36,'Pallet Express','Payroll Only','Frank','Cervini','Owner','(585) 235-8590',NULL,'1069 Leyell Ave, Rochester, NY 14606',NULL,'palletex@rochester.rr.com','www.thepalletexpress.com','No','No','Axis Group','25 / 10','Admin & WC Premium','2016-10-06','0.00',NULL,'2017-07-07 22:41:50','2017-08-16 20:52:47','8/16/2017: Policy number added-bjs','WCP500113301GIC',NULL,NULL,NULL,NULL,NULL,NULL),(37,'Student Transport dba NY Bus Company','PEO','Rialyn','Maurent','Accounting Manager','(716) 681-2100 ext. 107',NULL,'79 Sheldon Avenuen  Depew, NY 14043','(716) 681-2900','rialyn@wnybusco.com',NULL,'No','Yes','Axis Group','25 / 10','Admin & WC Premium','2016-09-24','0.00',NULL,'2017-07-07 23:52:10','2018-03-28 02:25:15','*Policy number updated on 8/16/2017 bjs','WC507000017','UWIC',NULL,NULL,NULL,NULL,NULL),(38,'Transition Transportation Services','PEO','Kaheem','Freeman','President','(678) 361-8448','(678) 644-0337','100 Hartsfield Center Pwky. Ste. 500 Atlanta, GA 30354',NULL,'kaheem.freeman@transition-inc.com',NULL,'No','Yes','Axis Group','25 / 10','Admin & WC Premium','2017-01-28','$1000.00',NULL,'2017-07-07 23:59:56','2018-03-28 02:28:14','8/16/2017: Policy number updated-bjs','WC504000017','SUNZ',NULL,NULL,NULL,NULL,NULL),(40,'Kirby\'s Pool Service & Spa, Inc','Payroll Only','Paula','Wunderlich','Vice President','(239) 218-2536','(239) 218-2536','PO Box 1385, Venice, FL 34284',NULL,'pjwunder12@hitmail.com',NULL,'Yes','Yes','N/A',NULL,NULL,'2017-07-17','$250',NULL,'2017-07-20 00:27:07','2018-03-28 02:24:45','8/16/2017: Policy number updated-bjs\r\n(No longer a client)','WCP500112401GIC','GIC',NULL,NULL,NULL,NULL,NULL),(42,'Diversified People Placers Inc','ASO','Malinda','May','President','(229) 336-1040','(229) 336-1040','8 Industrial Blvd, Camilla, GA 31730',NULL,'diversified@camillago.net',NULL,'Yes','No','Axis Group','50%','10%',NULL,'$3500',NULL,'2017-07-25 20:24:28','2018-03-28 02:22:03','8/16/2017: Policy number added-bjs\r\n(No longer a client)','WCP500112401GIC','GIC',NULL,NULL,NULL,NULL,NULL),(44,'Weinstock Inc dba Del Val Messenger','PEO','Louis','Weiner','G.M. / Compliance Officer','(610) 521-5200','(215) 416-5474','400 Kaiser Drive  Folcroft, PA  19032','(610) 521-7669','lweiner@delvalmessenger.com',NULL,'Yes','Yes','Axis Group','40 admin 10 W/C',NULL,'2017-08-01',NULL,NULL,'2017-07-28 22:14:27','2018-03-28 02:26:05','8/16/2017 New policy added-bjs','WC507000017','UWIC',NULL,'$35','$1.00',NULL,'waived'),(45,'Global Vend Services LLC','PEO','Dennis','Horn','Owner','(407) 730-6629','(407) 242-4395','3071 N. Orange Blossom Trail Ste. W  Orlando, FL 32804','None','dhorn12@cfl.rr.com',NULL,'Yes','Yes','Siracusa Staffing & Leasing LLC','40','5','2017-10-15','$0.00',NULL,'2017-10-12 21:42:09','2018-03-28 02:23:33','10/12/17: The address above is the company headquarters / warehouse. They also provide cafeteria employees a the Hurston Cafe 400 W. Robbinson St. Orlando, FL 32803 / bjs','WC504000017','SUNZ',NULL,'$35.00',NULL,NULL,'$500.00'),(46,'Shriji 06 LLC dba Roadway Inn','Payroll Only','Shriji \"AL\"','Patel','Owner','540-314-4009','None','605 B Moore Road, Haines City, FL 33844','None','alpatel426@yahoo.com',NULL,'Yes','Yes','Business Outsourcing Solutions Consultants',NULL,NULL,NULL,NULL,NULL,'2017-10-12 23:55:05','2018-03-23 01:53:51','10/12/2017- This is a Payroll only client and WC pay-go. /bjs',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'Arrow Cor Construction LLC','PEO','Rodolfo','Cortez',NULL,'(813) 298-2578','(813) 298-2578','505 Frandor Place, Apollo Beach, FL 33572',NULL,'arrowcorconstruction@gmail.com',NULL,'Yes','Yes','W Coleman Enterprise LLC','40 admin 10 W/C',NULL,NULL,'250',NULL,'2017-12-12 04:13:21','2017-12-12 04:33:07',NULL,'TGW900056800','State National',NULL,'35',NULL,NULL,NULL),(48,'Fox Carpentry Inc.','PEO','Jose','Martinez',NULL,'(813) 473-0081',NULL,'6010 Forest Lane, Lakeland, FL 33811',NULL,'deliasandoval@gmail.com',NULL,'Yes','Yes','W Coleman Enterprise LLC','40 admin 10 W/C',NULL,NULL,'250',NULL,'2017-12-12 04:32:45','2017-12-12 04:32:45',NULL,'TGW900056800','State National',NULL,NULL,NULL,NULL,NULL),(49,'1-800 Packouts of Jacksonville LLC','PEO','Brian','Slaymon',NULL,'(317) 288-4962','(317) 288-4962','6582 Commonwealth Ave Ste 2, Jacksonville, FL 32254',NULL,'bslaymon@gmail.com',NULL,'Yes','Yes','Landon Cason Inc.','40 admin 10 W/C',NULL,'2018-01-14',NULL,NULL,'2018-01-13 02:41:09','2018-09-11 20:22:43',NULL,'WC504000017','SUNZ',NULL,NULL,NULL,NULL,NULL),(50,'Hotel Best Clean','PEO','Brayan','Campcho','Owner','(714) 947-1460','(714) 884-3551','1415 E 17th, Suite 140, Santa Ana, CA 92705','(714) 953-7473','info@hotelbestclean.com',NULL,'Yes','Yes','Axis Group','50% admin 0 % WC',NULL,'2018-02-25',NULL,NULL,'2018-02-28 20:41:21','2018-03-23 03:05:54','Carrier: Accident fund, 74  EE\'s for 1,746,500 GAP','WC 507-0000-17','UWIC',NULL,NULL,NULL,NULL,NULL),(51,'Audio Services Plus, Inc.','PEO','Danielle','Berendsen Smith',NULL,'(813) 714-8979',NULL,'11813 44th St N. Unit 1, Clearwater, FL 33762',NULL,'danielle@asplighting.com',NULL,'Yes','No','N/A',NULL,NULL,'2018-03-01',NULL,NULL,'2018-03-09 04:59:00','2018-03-09 04:59:00','3 EE\'s with GAP of $126,214','WC504000017','SUNZ',NULL,'$35',NULL,NULL,NULL),(52,'R. O. Express','PEO','Rodolfo','Ortega','Owner','305-345-9624','305-345-9624','20847 SW 89th Path, Miami, FL 33189',NULL,'rudy72euro@hotmail.com',NULL,'Yes','Yes','National Workman\'s Comp Solutions','50%',NULL,'2018-02-05','$5,000.00',NULL,'2018-03-23 01:51:02','2018-03-23 04:15:13',NULL,'WC504000017','SUNZ',NULL,'$0.00',NULL,'$0.00','$0.00'),(53,'Sikes Enterprises Inc. dba Brothers Well Drilling','PEO','Stacy','Hensley',NULL,'407-328-8221',NULL,'P.O. Box 356, Osten, FL 32764','N/A','ssshensley@hotmail.com','N/A','Yes','No','N/A',NULL,NULL,'2018-02-19','$0.00',NULL,'2018-03-23 02:01:54','2018-03-23 02:01:54',NULL,'WC504000017','SUNZ',NULL,'$35.00',NULL,'$0.00','$0.00'),(54,'Tinez Construction','PEO','Jessica','Martinez',NULL,'786-302-7937','786-543-7867','4725 SW 74th Ave., Miami, FL 33155','786-543-7867','tinezconstruction@gmail.com','www.tinezconstruction.com','Yes','Yes','PEO Depot',NULL,NULL,'2018-01-18','$750.00',NULL,'2018-03-23 02:23:33','2018-03-23 04:14:34',NULL,'WC504000017','SUNZ',NULL,'Cost',NULL,'$750.00','$0.00'),(55,'Dodd Construction LLC','PEO','Dan','Dodd',NULL,'352-280-0135','352-280-0135','7212 CR 315, Keystone Heights, FL 32656','N/A','doddconstructionsllc@gmail.com',NULL,'Yes','Yes','National Workman\'s Comp Solutions','50%',NULL,'2018-02-12','$2,500.00',NULL,'2018-03-23 02:46:47','2018-03-23 04:12:23',NULL,NULL,'State National',NULL,'Cost',NULL,'$0.00','$0.00'),(56,'E. E. G Leo\'s Painting LLC','PEO','Estefany','Garcia',NULL,'954-448-2254','954-448-2254','1739 NW 80th Ave., Margate, FL 33063','N/A','stef0719@hotmail.com',NULL,'Yes','Yes','National Workman\'s Comp Solutions','50%',NULL,'2018-02-13','$2,500.00',NULL,'2018-03-23 02:53:12','2018-03-23 04:12:00',NULL,NULL,'State National',NULL,'$35.00',NULL,'$0.00','$0.00'),(57,'Inclan Painting and Waterproofing Corp.','PEO','Luis','Inclan',NULL,'786-293-7428','305-992-8712','12252 SW 128th Street, Miami, FL 33186','786-293-7430','yuditf@inclanpainting.net','inclanpainting.net','Yes','Yes','National Workman\'s Comp Solutions','50%','0%','2018-03-07','$500.00',NULL,'2018-03-23 03:03:23','2018-03-23 04:11:43',NULL,'WC504000017','SUNZ',NULL,'$35.00',NULL,'$500.00','$0.00'),(58,'May Custom Home','PEO','Mike','Arodak',NULL,'(813) 223-2303','(813) 294-9797','1306 W Cypress Street, Tampa, FL 33606','(813) 200-8417','frs968@gmail.com','www.maycustomhome.com','Yes','No','Siracusa Staffing & Leasing LLC','3%',NULL,'2018-06-04','$1,000',NULL,'2018-06-13 19:44:59','2018-06-13 19:44:59',NULL,'WC 504-0000-17','Sunz',NULL,'$35.00',NULL,NULL,'$500.00'),(59,'Kare Construction Inc.','PEO','Alexandra','Barlitz',NULL,'(631) 459-2233','(631) 459-2233','12 Oakwood Street, Greenlawn, NY 11740','(631) 459-2233','abarlitz33@gmail.com','www.kareconstruction.com','Yes','Yes','Axis Group','50% admin-10% WC',NULL,'2018-05-05','$500.00',NULL,'2018-06-13 20:43:08','2018-06-13 20:43:08',NULL,NULL,'Accident Fund',NULL,'$35.00',NULL,'$500.00','$750.00'),(60,'TW Halsey Construction, LLC','PEO','Tom','Halsey',NULL,'(631) 723-2362','(631) 831-5840','PO Box 743, Hampton Bays, NY 11946',NULL,'tjhalsey@optonline.net',NULL,'Yes','Yes','N/A',NULL,NULL,NULL,'$1,000.00',NULL,'2018-06-13 20:54:29','2018-06-13 20:54:29',NULL,NULL,'Accident Fund',NULL,'$35.00',NULL,NULL,'$1,500.00'),(61,'Arden Construction Inc.','PEO','Dany','Mishele',NULL,'(561) 239-5884',NULL,'12212 Quilting Lane, Boca Raton, FL 33428',NULL,'ardencon@hotmail.com',NULL,'Yes','Yes','National Workman\'s Comp Solutions','NWCS-40% admin 5%',NULL,'2018-06-04','$1,000.00',NULL,'2018-06-13 21:00:28','2018-06-13 21:00:28',NULL,'WC004-00001-017','Sunz',NULL,'$35.00',NULL,NULL,NULL),(62,'Nazareno Waterproofing & Painting Corp','PEO','Pedro','Godoy',NULL,NULL,'(305) 803-8048','17555 SW 105th Ave, Miami, FL 33157',NULL,'godoypd@yahoo.com',NULL,'Yes','Yes','National Workman\'s Comp Solutions',NULL,NULL,'2018-05-29','$1,000.00',NULL,'2018-06-13 21:26:52','2018-06-13 21:26:52',NULL,'WC004-00001-017','Sunz',NULL,'$35.00',NULL,NULL,NULL),(63,'M&M Trucking Logistics','PEO','Maria','Zimmerman',NULL,'(714) 299-7800','(714) 299-7800','1811 Arcdale Ave, Rowland Heights, CA 91748',NULL,'mariaore@gmail.com',NULL,'Yes','Yes','N/A','3.5%',NULL,NULL,'$1,000',NULL,'2018-06-28 20:12:43','2018-06-28 20:12:43',NULL,NULL,'Accident Fund',NULL,'$35.00',NULL,NULL,'$1,000'),(64,'Quality Solid Surface Inc.','PEO','Cristina','Salazar',NULL,'(973) 357-9770',NULL,NULL,'(973) 357-9773','frontdesk@qsstops.com',NULL,'Yes','Yes','N/A','38.4%%',NULL,NULL,NULL,NULL,'2018-06-28 20:49:38','2018-06-28 20:49:38',NULL,NULL,'Accident Fund',NULL,'$35.00',NULL,NULL,'$250.00'),(65,'Bills Welding and Crane','PEO','Kim','Slocum',NULL,'(661) 251-8343','(661) 312-7533','16166 Sierea Highway, Santa Clarita, CA 91387','(661) 250-1080','billswedlingcrane@hotmail.com',NULL,'Yes',NULL,'Axis Group','50% admin 10% WC',NULL,NULL,'$750.00',NULL,'2018-07-02 20:09:27','2018-07-02 20:09:27',NULL,NULL,'Accident Fund',NULL,NULL,NULL,'$750.00',NULL),(66,'Punchlist Services, LCL','PEO','Alejandro (Alex)','Aaldes',NULL,'(305) 278-9872','(786) 525-4478','12950 SW 128th Street, Miami, FL 33186',NULL,'valdes72@gmail.com',NULL,'Yes',NULL,'N/A',NULL,NULL,'2018-07-01','$1,000.00',NULL,'2018-07-04 00:41:23','2018-07-04 00:41:23',NULL,'WC004-00001-017','Sunz',NULL,'$35.00',NULL,NULL,'$250.00'),(67,'Nipton, Inc.','PEO','Sean','Prophet',NULL,'(818) 730-4905',NULL,'HC1 Box 360, 107355 Nipton Road, Nipton, CA 92364',NULL,'sean@panpacificinternational.com',NULL,'Yes',NULL,'N/A','39.7% admin 5% WC',NULL,NULL,'$1,000.00',NULL,'2018-07-04 00:45:22','2018-07-04 00:45:22','Broker Secure Work Comp',NULL,'Accident Fund',NULL,'$35.00',NULL,NULL,NULL),(68,'Steel Solutions of South Florida, LLC','EOR','Pablo','Debs',NULL,'(786) 413-5095',NULL,'12900 SW 79th Street Miami, FL 33183',NULL,'steelsolutionspd@yahoo.com',NULL,'Yes','Yes','National Workman\'s Comp Solutions',NULL,NULL,'2018-06-25','$1,000',NULL,'2018-07-06 22:28:05','2018-07-06 22:28:05',NULL,'WC004-00001-017','Sunz',NULL,'$35.00',NULL,NULL,NULL),(69,'High Tech Construction of RI, Inc','PEO','Joe','Dalomba',NULL,'(401) 413-9364',NULL,'888 Lonsdale Ave, Central Falls, RI 02863','(401) 726-9719','jdalomb@hightechconstructioninc.com',NULL,'Yes','Yes','N/A',NULL,NULL,NULL,'$1,000',NULL,'2018-07-25 21:22:54','2018-07-25 21:22:54',NULL,'WC507-00020-017','UWIC',NULL,'$35.00',NULL,NULL,'$125.00');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_client_id_foreign` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (3,23,'Kelly  Neville','Payroll Contact','516-322-9683',NULL,NULL,NULL,'2017-07-07 02:57:30','2017-10-03 00:07:07'),(4,28,'Celio Lopes','Owner','239-565-6713','239-565-6713',NULL,'None','2017-07-07 03:27:35','2017-07-07 03:27:35'),(5,30,'Sharon Martin','Payroll','315-437-4601 Ext 28','None listed','315-432-9866','sharon@choicepaypayroll.com','2017-07-07 03:47:45','2017-07-07 03:47:45'),(6,30,'Linda Drazek','Workers Comp Administrator','315-477-1487',NULL,NULL,'linda@empiredm.com','2017-07-07 03:47:45','2017-07-07 03:47:45'),(7,31,'Jennifer Bowman','Owner','407-280-2288','407-280-2288','N/A','hermajestypw@gmail.com','2017-07-07 04:12:43','2017-07-07 04:12:43'),(8,32,'Jason Amorim','Director of Operations','610-760-3122','610-392-5193','610-826-6220','jason@jcsfamily.com','2017-07-07 22:06:29','2017-07-07 22:06:29'),(9,32,'Jarrod Saas','Director of Risk Management','610-973-2745','610-393-9313','610-826-6220','jarrod@jcsfamily.com','2017-07-07 22:06:29','2017-07-07 22:06:29'),(10,33,'Valerie allaire','Accounting','(716) 508-3812',NULL,NULL,'vallaire@customcarpetcenters.com','2017-07-07 22:18:02','2017-07-07 22:18:02'),(11,33,'Tom McDonnell','?','(716) 508-3812',NULL,NULL,'tmcdonnell@customcarpetcenters.com','2017-07-07 22:18:02','2017-07-07 22:18:02'),(12,33,'Pat Bussy','Payroll','(716) 508-3812',NULL,'716-674-2689','pbussy@customcarpetcenters.com','2017-07-07 22:18:02','2017-07-07 22:18:02'),(13,33,'Dave Pelosi','Commercial Dept.','716-712-1106 x2106',NULL,NULL,'dpelosi@customcarpetcenters.com','2017-07-07 22:18:02','2017-07-07 22:18:02'),(14,33,'Carole George',NULL,'cgeorge@customcarpetscenters.com',NULL,NULL,NULL,'2017-07-07 22:18:02','2017-07-07 22:18:02'),(15,36,'Michele Cervini','Payroll','(585)235-8590',NULL,NULL,'palletex@rochester.rr.com','2017-07-07 22:41:50','2017-07-07 22:41:50'),(16,36,'Angel Sampel','Workers Comp. Administrator','(585)235-8590',NULL,NULL,'palletex@rochester.rr.com','2017-07-07 22:41:50','2017-07-07 22:41:50'),(17,37,'Megan Myers','HR Manager','(716) 681-2100 ext. 108',NULL,'(716) 681 2900','megan@wnybusco.com','2017-07-07 23:52:10','2017-07-07 23:52:10'),(18,24,'Sue Housler','Payroll Contact','(561) 491-7430','Not listed','(561) 491-7430','shausler@ascendstaffingsolutions.com','2017-07-10 20:16:13','2017-07-10 20:16:13'),(19,34,'Daryl M. Husentis','President',NULL,'(724) 562-8194',NULL,'dmhusentis@gmail.com','2017-07-12 04:05:41','2017-07-12 04:05:41'),(21,45,'Sarah Schultz','Office Manager','407-730-6629',NULL,NULL,'sschultz@blindsterrefreshments.com','2017-10-12 22:04:51','2017-10-12 22:04:51'),(22,46,'VR','Accountant','813-381-3809',NULL,NULL,'tax4002@gmail.com','2017-10-12 23:55:05','2017-10-12 23:55:05'),(23,29,'Katterine Mariano','CFO','239-674-9375 ext. 103',NULL,NULL,'kathy@clqualitycorp.com','2017-10-17 22:25:40','2017-10-17 22:25:40');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_attachments`
--

DROP TABLE IF EXISTS `lead_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_attachments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int unsigned NOT NULL,
  `filename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_attachments_lead_id_foreign` (`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_attachments`
--

LOCK TABLES `lead_attachments` WRITE;
/*!40000 ALTER TABLE `lead_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_dispositions`
--

DROP TABLE IF EXISTS `lead_dispositions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_dispositions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int unsigned NOT NULL,
  `disp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `callback_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inperson_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `disp_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `callback_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `lead_dispositions_lead_id_foreign` (`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_dispositions`
--

LOCK TABLES `lead_dispositions` WRITE;
/*!40000 ALTER TABLE `lead_dispositions` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_dispositions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `company` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_source` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `industry` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annual_revenue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_employees` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_opt_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `leads_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES (6,24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-12-23 12:07:25','2020-12-23 12:07:25',NULL);
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_logs`
--

DROP TABLE IF EXISTS `login_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_logs`
--

LOCK TABLES `login_logs` WRITE;
/*!40000 ALTER TABLE `login_logs` DISABLE KEYS */;
INSERT INTO `login_logs` VALUES (1,'Test','test','test@keyhr.com','39.40.97.32','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36 Edg/88.0.705.56','2021-02-02 19:45:43','2021-02-02 19:45:43'),(2,'Glen Lancaster','glen.lancaster','glen.lancaster@keyhro.com','39.40.97.32','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36 Edg/88.0.705.56','2021-02-02 22:18:30','2021-02-02 22:18:30'),(3,'Glen Lancaster','glen.lancaster','glen.lancaster@keyhro.com','108.188.126.92','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36','2021-02-02 22:39:12','2021-02-02 22:39:12'),(4,'Test','test','test@keyhr.com','39.50.69.204','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','2021-02-03 01:27:47','2021-02-03 01:27:47'),(5,'Test','test','test@keyhr.com','39.50.69.204','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','2021-02-03 01:30:40','2021-02-03 01:30:40'),(6,'Test','test','test@keyhr.com','39.40.97.32','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36 Edg/88.0.705.56','2021-02-04 11:17:14','2021-02-04 11:17:14'),(7,'Test','test','test@keyhr.com','39.40.97.32','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36 Edg/88.0.705.56','2021-02-04 20:48:48','2021-02-04 20:48:48'),(8,'Test','test','test@keyhr.com','39.40.63.82','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.74','2021-02-24 11:05:35','2021-02-24 11:05:35'),(9,'Test','test','test@keyhr.com','39.50.9.145','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36','2021-02-25 06:21:23','2021-02-25 06:21:23'),(10,'Test','test','test@keyhr.com','39.50.9.145','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36','2021-02-25 06:22:15','2021-02-25 06:22:15'),(11,'Test','test','test@keyhr.com','39.40.86.233','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36 Edg/88.0.705.81','2021-03-02 15:04:11','2021-03-02 15:04:11'),(12,'Test','test','test@keyhr.com','39.40.27.161','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.63','2021-04-01 10:27:39','2021-04-01 10:27:39'),(13,'Test','test','test@keyhr.com','39.50.35.136','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36','2021-05-12 04:47:12','2021-05-12 04:47:12'),(14,'Test','test','test@keyhr.com','39.50.35.136','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36','2021-05-12 04:58:09','2021-05-12 04:58:09'),(15,'Glen Lancaster','glen.lancaster','glen.lancaster@keyhro.com','108.188.126.92','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36','2021-05-22 02:25:38','2021-05-22 02:25:38'),(16,'Test','test','test@keyhr.com','39.40.0.211','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 Edg/90.0.818.66','2021-05-25 21:48:35','2021-05-25 21:48:35'),(17,'Test','test','test@keyhr.com','39.40.17.48','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36 Edg/91.0.864.37','2021-05-31 19:09:23','2021-05-31 19:09:23'),(18,'Scott','scott','scott@keyhro.com','39.50.3.150','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36','2021-09-30 03:37:00','2021-09-30 03:37:00'),(19,'Carmelite Souffront','carmelite.souffront','carmelite@keyhro.com','39.50.3.150','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.54 Safari/537.36','2021-09-30 03:53:02','2021-09-30 03:53:02'),(20,'Carmelite Souffront','carmelite.souffront','carmelite@keyhro.com','39.50.3.150','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','2021-09-30 16:44:24','2021-09-30 16:44:24'),(21,'Carmelite Souffront','carmelite.souffront','carmelite@keyhro.com','72.238.66.73','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36','2021-10-04 22:35:42','2021-10-04 22:35:42'),(22,'Glen Lancaster','glen.lancaster','glen.lancaster@keyhro.com','39.32.52.30','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36 Edg/94.0.992.50','2021-10-20 12:29:48','2021-10-20 12:29:48'),(23,'Admin 1','admin1','admin1@keyhro.com','111.68.97.205','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36','2021-11-01 21:52:11','2021-11-01 21:52:11'),(24,'Saad Nadir','saad','saad@keyhro.com','111.68.97.205','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36','2021-11-01 21:53:16','2021-11-01 21:53:16'),(25,'Test','test','test@keyhr.com','111.68.97.205','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36','2021-11-01 21:57:50','2021-11-01 21:57:50'),(26,'Test','test','test@keyhr.com','39.32.159.229','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36','2021-11-02 15:23:48','2021-11-02 15:23:48'),(27,'Test','test','test@keyhr.com','39.32.176.234','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','2022-01-25 19:33:55','2022-01-25 19:33:55'),(28,'Test','test','test@keyhr.com','39.32.176.234','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','2022-01-26 10:04:20','2022-01-26 10:04:20'),(29,'Test','test','test@keyhr.com','39.32.139.220','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36','2022-03-03 21:49:41','2022-03-03 21:49:41'),(30,'Carmelite Souffront','carmelite.souffront','carmelite@keyhro.com','172.31.28.6','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','2022-06-10 19:12:58','2022-06-10 19:12:58'),(31,'Carmelite Souffront','carmelite.souffront','carmelite@keyhro.com','172.31.20.52','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','2022-08-11 18:14:48','2022-08-11 18:14:48'),(32,'Carmelite Souffront','carmelite.souffront','carmelite@keyhro.com','172.31.24.6','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36','2022-10-28 19:31:29','2022-10-28 19:31:29'),(33,'Test Admin','testadmin','testadmin@test.com','172.31.39.172','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36','2022-11-08 09:35:59','2022-11-08 09:35:59'),(34,'Test Admin','testadmin','testadmin@test.com','172.31.39.172','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36','2022-11-08 09:39:41','2022-11-08 09:39:41'),(35,'Test Admin','testadmin','testadmin@test.com','172.31.24.6','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26','2022-11-08 09:40:35','2022-11-08 09:40:35');
/*!40000 ALTER TABLE `login_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_replies`
--

DROP TABLE IF EXISTS `message_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_replies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `message_replies_message_id_foreign` (`message_id`),
  KEY `message_replies_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_replies`
--

LOCK TABLES `message_replies` WRITE;
/*!40000 ALTER TABLE `message_replies` DISABLE KEYS */;
INSERT INTO `message_replies` VALUES (1,2,19,'Test again','2021-01-05 05:55:06','2021-01-05 05:55:06');
/*!40000 ALTER TABLE `message_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int unsigned NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_sender_id_foreign` (`sender_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,11,'hello',NULL,'2017-08-11 20:00:23','2017-08-11 20:00:23'),(2,19,'Test','Test','2021-01-05 05:54:37','2021-01-05 05:55:06');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(8,'2017_06_21_112722_create_leads_table',2),(9,'2017_06_22_115124_create_brokers_table',3),(11,'2017_06_22_125552_create_clients_table',4),(14,'2017_06_23_125143_create_contacts_table',5),(17,'2017_06_23_171759_create_sharepoints_table',6),(18,'2017_06_23_172959_create_sharepoint_categories_table',6),(19,'2017_06_30_092152_create_roles_table',7),(20,'2017_06_30_092332_create_role_user_table',7),(21,'2017_07_06_122349_create_lead_dispositions_table',8),(22,'2017_07_06_184100_create_todos_table',9),(23,'2017_07_07_055707_alter_users_table',10),(27,'2017_07_11_112411_alter_addnotestoleadsbrokersclients',11),(28,'2017_07_12_111916_alter_lead_dispositions_table',11),(29,'2017_07_12_135527_alter_clients_table',11),(30,'2017_07_14_114917_create_lead_attachments_table',12),(31,'2017_07_14_141135_create_broker_files_table',12),(32,'2017_07_17_145101_add_carrier_clients_table',12),(33,'2017_07_25_111156_add_basis_adminper_wcper_setupfee_to_brokers',13),(34,'2017_07_25_113810_add_setup_delivery_epli_lossfund',13),(35,'2017_07_25_172011_add_clientsetupfee_to_clients',14),(36,'2017_07_26_140110_create_messages_table',15),(37,'2017_07_26_140641_create_user_messages_table',15),(38,'2017_08_11_102434_create_message_replies_table',15),(39,'2020_12_29_095517_add_soft_deletes_to_todo_table',16),(40,'2020_12_30_071845_add_attributes_to_brokers_table',16),(41,'2020_12_30_072320_add_attributes_to_clients_table',16),(42,'2020_12_30_073238_create_messages_table',16),(43,'2020_12_30_084747_create_message_replies_table',16),(44,'2020_12_30_085148_create_user_messages_table',16),(45,'2020_12_30_100257_add_default_read_to_user_messages',16),(46,'2021_01_05_035531_create_tickets_table',16),(47,'2021_01_05_092459_create_tickets_categories_table',16),(48,'2021_01_05_092525_create_tickets_categorie_details_table',16),(49,'2021_01_06_063803_create_tickets_responses_table',16),(50,'2021_01_08_062448_add_roles_to_tickets_responses_table',16),(51,'2021_01_19_085135_add_soft_deletes_to_users_table',17),(52,'2021_01_21_062346_create_login_logs_table',17),(53,'2021_02_02_093759_create_jobs_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (5,1,11,NULL,NULL),(6,1,12,NULL,NULL),(10,1,14,NULL,NULL),(9,1,13,NULL,NULL),(11,1,18,NULL,NULL),(12,1,19,NULL,NULL),(13,1,24,NULL,NULL),(14,4,19,'2021-02-02 19:22:06','2021-02-02 19:22:06'),(15,3,19,'2021-02-02 19:22:06','2021-02-02 19:22:06'),(16,3,30,'2021-11-02 01:16:27','2021-11-02 10:31:09');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator',NULL,NULL),(2,'Employee',NULL,NULL),(3,'Super Admin','2021-02-02 19:22:06','2021-02-02 19:22:06'),(4,'Technical Staff','2021-02-02 19:22:06','2021-02-02 19:22:06');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sharepoint_categories`
--

DROP TABLE IF EXISTS `sharepoint_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sharepoint_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sharepoint_categories`
--

LOCK TABLES `sharepoint_categories` WRITE;
/*!40000 ALTER TABLE `sharepoint_categories` DISABLE KEYS */;
INSERT INTO `sharepoint_categories` VALUES (3,'Miscellaneous',NULL,NULL),(4,'Documentation','2017-06-24 03:15:55','2017-06-24 03:15:55');
/*!40000 ALTER TABLE `sharepoint_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sharepoints`
--

DROP TABLE IF EXISTS `sharepoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sharepoints` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sharepoints_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sharepoints`
--

LOCK TABLES `sharepoints` WRITE;
/*!40000 ALTER TABLE `sharepoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `sharepoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tickets_category_id` int NOT NULL,
  `tickets_category_detail_id` int DEFAULT NULL,
  `severity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `needed_by` timestamp NULL DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_categories`
--

DROP TABLE IF EXISTS `tickets_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_categories`
--

LOCK TABLES `tickets_categories` WRITE;
/*!40000 ALTER TABLE `tickets_categories` DISABLE KEYS */;
INSERT INTO `tickets_categories` VALUES (1,'Clients',NULL,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(2,'Leads',NULL,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(3,'Brokers',NULL,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(4,'Messages',NULL,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(5,'Share Point',NULL,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(6,'Todo',NULL,'2021-01-18 20:39:02','2021-01-18 20:39:02');
/*!40000 ALTER TABLE `tickets_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_categories_details`
--

DROP TABLE IF EXISTS `tickets_categories_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_categories_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tickets_category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_categories_details`
--

LOCK TABLES `tickets_categories_details` WRITE;
/*!40000 ALTER TABLE `tickets_categories_details` DISABLE KEYS */;
INSERT INTO `tickets_categories_details` VALUES (1,'Unable to create',1,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(2,'Unable to View List',1,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(3,'Unable to view Single record',1,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(4,'Other',1,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(5,'Unable to create',2,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(6,'Unable to View List',2,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(7,'Unable to view Single record',2,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(8,'Other',2,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(9,'Unable to create',3,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(10,'Unable to View List',3,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(11,'Unable to view Single record',3,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(12,'Other',3,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(13,'Unable to create',4,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(14,'Unable to View List',4,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(15,'Unable to view Single record',4,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(16,'Other',4,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(17,'Unable to create',5,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(18,'Unable to View List',5,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(19,'Unable to view Single record',5,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(20,'Other',5,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(21,'Unable to create',6,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(22,'Unable to View List',6,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(23,'Unable to view Single record',6,'2021-01-18 20:39:02','2021-01-18 20:39:02'),(24,'Other',6,'2021-01-18 20:39:02','2021-01-18 20:39:02');
/*!40000 ALTER TABLE `tickets_categories_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets_responses`
--

DROP TABLE IF EXISTS `tickets_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets_responses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `response` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets_responses`
--

LOCK TABLES `tickets_responses` WRITE;
/*!40000 ALTER TABLE `tickets_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int unsigned NOT NULL,
  `status` int unsigned NOT NULL,
  `assigned_to` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `todos_created_by_foreign` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
INSERT INTO `todos` VALUES (12,'7/29/2020 - Send Introduction Email','7/29/2020 - Left a voicemail for Robert Beck. Send introduction email .',27,3,27,'2020-07-29 21:36:11','2020-07-30 02:57:06',NULL),(7,'Reach out to Dan Odorizzi','7/27/2020 - Received email from Dan: \r\nWe are an employee benefits brokerage so any product that removes are ability to work with the benefits on behalf of our company or our clients would not be a solution we would consider or market. With that said, if you can carve out the employee benefits from your offering, we are potentially looking for PEO partners.',27,3,27,'2020-07-28 22:16:55','2020-07-28 22:52:57',NULL),(8,'Send Introduction Email to Ken Roberts','7/28/2020 - spoke to Ken and need to send email with info',27,3,27,'2020-07-28 22:27:18','2020-07-29 19:56:31',NULL),(9,'Send Introduction Email to Dan with Parrot Insurance','dan@parrotinsurance.com',27,3,27,'2020-07-28 22:52:18','2020-07-29 19:55:55',NULL),(11,'7/30/2020 - Call Mike Lamarca','7/29/2020 - Called Mike and he was not in the office. Spoke to Melanie who took my information but confirmed that Mike will be in the office tomorrow.\r\n\r\n7/30/2020 - Call back tomorrow',27,3,27,'2020-07-29 21:34:53','2020-07-30 23:04:10',NULL),(14,'7/29/2020 - Send Introduction Email','7/29/2020 - Left voicemail for Kim and need to send Introduction Email',27,3,27,'2020-07-29 22:55:04','2020-07-30 02:59:45',NULL),(15,'7/29/2020 - Send Introduction Email','7/29/2020 - spoke with Jordan (pleasant conversation). I mentioned if he had any submissions that he would like for us to work on that I would be his new contact. He appreciated the call. Send Introduction Email',27,3,27,'2020-07-29 23:27:04','2020-07-30 03:03:53',NULL),(16,'7/29/2020 - Send Introduction Email','7/29/2020 - left a voicemail for Ronald Coleman. Follow up with Introduction e,mail',27,3,27,'2020-07-30 02:12:49','2020-07-30 03:05:01',NULL),(20,'7/30/2020 - Send Introduction Email to Mike Burgelin (Employee Leasing Quotes)','7/30/2020 - 7/30/2020 - Spoke to Mike, who was pleasant. Said that he tried to send some work to us in the past but was unable to get responses. I explained that this the reason I am here to solely focus on supporting our broker relationships and stated that if there was anything that he had in the pipeline that he would like for us to take a crack at we would really appreciate it. He said he would and he is anticipating my email.',27,3,27,'2020-07-30 23:00:03','2020-07-30 23:00:26',NULL),(18,'7/30/2020 - Call Secure Work Comp LLC','7/29/2020 - called twice and no answer with no option to leave a voicemail. Call again',27,0,27,'2020-07-30 02:42:38','2020-07-30 02:42:38',NULL),(19,'7/29/2020 - Send Introduction Email to Jarett with SmartComp Solutions','7/29/2020 - spoke with Jarret and explained that I am the new broker liaison. Mentioned that he still has Jason Rubin as a contact but I am an additional touchpoint if needed.',27,3,27,'2020-07-30 02:48:13','2020-07-30 03:41:20',NULL),(21,'7/30/2020 - Send Introduction Email to Mike Lamarca (Lamarca Insurance)','7/30/2020 - called and spoke to Diane. Mike was on the other line so left a message with Diane and confirmed Mike\'s email address.',27,0,27,'2020-07-30 23:05:22','2020-07-30 23:05:22',NULL);
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_messages`
--

DROP TABLE IF EXISTS `user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_messages_message_id_foreign` (`message_id`),
  KEY `user_messages_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_messages`
--

LOCK TABLES `user_messages` WRITE;
/*!40000 ALTER TABLE `user_messages` DISABLE KEYS */;
INSERT INTO `user_messages` VALUES (1,1,13,0,'2017-08-11 20:00:23','2017-08-11 20:00:23'),(2,1,11,0,'2017-08-11 20:00:23','2017-08-11 20:00:23'),(3,2,19,1,'2021-01-05 05:54:37','2021-01-05 05:55:11'),(4,2,19,0,'2021-01-05 05:54:37','2021-01-05 05:55:06');
/*!40000 ALTER TABLE `user_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (11,'Admin 1','admin1@keyhro.com','$2y$10$Q8tpiAu/0s.6d3s1RPglHuqSZYgRIrbPbiUTbdBZLrt3ekAAqpQ9e','PwdcoTyZx3bTKP8wUSEC8fnCPw0g4vAqZfI4vu7dN1OjPnxboYioIcNWGlfp','2017-07-06 02:31:57','2021-01-26 02:07:54','admin1',NULL,1),(12,'Admin 2','admin2@keyhro.com','$2y$10$HrL.Ry9OoKcG/VJ9ESDNOOIYSYG59NJlswnOTwFgs66InvQqP4BYa','7AfpgZq8fs72BbK6P7fKYchfthH0wUJ7DbRPWMMkstc66t2WemXCjKh9Wx4X','2017-07-06 02:37:50','2021-01-26 02:07:54','admin2',NULL,1),(13,'Jennifer','jennifer@keyhro.com','$2y$10$C5sjEgOWpCfjD0ETdJU8DujdBqRMmeB9bPLReKYdZswpRAnYhHqHm','EuCe6KFLx4THpOuIbW8EVp8qN3tcRN1JGsWr1CcGNjalTHlSYs6PWdcGpNEh','2017-07-06 02:39:02','2021-01-26 02:07:54','jennifer',NULL,1),(14,'Scott','scott@keyhro.com','$2y$10$PbQO0ZgM9T59jqf74z6rf.k9L59j/qenUbtZaVBRmAZ/.yHLPht9m','H3mtIcX1OIhLMhrpkF7IRnQCtZuoodtBPrnhiF2KcUG0SoVggmDfOy7a3d4J','2017-07-06 02:40:47','2021-01-26 02:07:54','scott',NULL,1),(21,'Darcy','darcy@example.com','$2y$10$2IuM6xnL74wki6zHKW1RDOkL58Bywmbotka6XjIXKHwb99JsrZrl2','S8ggGG9XbF0eNM6guobfMJbudkRDPemd6rHEQ8ReP1US0PsmYBC3nGLyYWYG','2017-10-02 20:46:08','2021-01-26 02:07:54','darcy',NULL,1),(16,'Tony','tony@keyhro.com','$2y$10$fS7sC5m5RpNX3xS65cb1TuIhJUKz82vUTFj4q5kEhYlNTX8xKA1Zq','CqfjtpvMNzKQ8Pt1SrGok4B5Jjnj1wx0J4u6kuYAZk0p0ASk1njxNfwCj3BS','2017-07-06 02:41:27','2021-01-26 02:07:54','tony',NULL,1),(17,'Jason','jason@keyhro.com','$2y$10$LzmHq79wVGauD9IlCMMtVOBRONmFAVwAmp/z3VkuuZgfuOmpuUzAy','Q2xL5dTq4a0gayRGHDXV4QnvPJPjvrI3S01c9B4chmgnPGnwOQL7eABEfuy5','2017-07-06 02:44:54','2021-01-26 02:07:54','jason',NULL,1),(18,'Risk','risk@keyhr.com','$2y$10$pcUSbjXN6TCie4wixhPo0uUFeaVsa9Wio2LqQJER1hpo.igBjknWu','6XK9SMbg1JxTYxkMnAekFCtQmVliDYm1aGOrHJCoi6dHOxX8vtO9FbcJQoNk','2017-07-07 23:55:03','2021-01-26 02:07:54','risk',NULL,1),(19,'Test','test@keyhr.com','$2y$10$4pulOjan3W8Jd5SGHpzc3uh5lDLZhKNtCAp7bT1GilNH3OaB025h6','u6Ff7gotVf3CZGHK7uFyJ8WlvA9wdzSNlIWfVYDKpRuxK13zFTmoF1fluvFl','2017-07-08 00:11:36','2021-01-26 02:07:54','test',NULL,1),(20,'Test Employee','testemployee@keyhr.com','$2y$10$cS6NK3JfPk.b0EZuVBCsHuTPDqWtirmm7jb9eOc/ZIun8/AauAa32','xVtWiFAXdTwHoE0vElAGIpqhRZPacdrLyTy6ViSsa3sOGdni6hYsRtvIBJDs','2017-07-08 00:12:59','2021-01-26 02:07:54','testemployee',NULL,1),(22,'Nathali Alfaro','nathali.alfaro@keyhro.com','$2y$10$t2gb4m0oHhidFCOycVjbuOnfGGbKo2FdMKNWdZuk9LXGhd8onZlfe','wp4kTvYlVVVOpBgfAxWSXR8LtH7XvfN4TkJn2Xdg3mgiWlcrU7T6IlBbb5KO','2018-08-29 04:05:54','2021-01-26 02:07:54','nathali.alfaro',NULL,1),(23,'Shana Simpson','shana.simpson@keyhro.com','$2y$10$W8gT6H2vcnGHRELqfkqURuWGgzH56pGQw1I79B7ozteV15uO0Yxl.','R33iNh4WqVDCBSD7laxR9ccFeThzdLNjQlmi3h5uybXUMAGxOi4DSVrFxbOg','2018-08-29 04:14:09','2021-01-26 02:07:55','shana.simpson',NULL,1),(24,'Glen Lancaster','glen.lancaster@keyhro.com','$2y$10$V8kMtiM4g2I.HBs7JT923./5WFukxUtarXOIWK6fpib.zJ8BIIt66','xL3nV5ATFVS1SS3YY4RmautVPBBZFOelbtMWzlQF56ab30Tr55uyKpIwW8Aq','2018-08-30 19:08:05','2021-01-26 02:07:55','glen.lancaster',NULL,1),(25,'Ben Hipps','ben@keyhro.com','$2y$10$GdlfxHoxduHPIVSWwaoSMO7YazRlz.68Aue03E79IQXy/iIPMsiPC','hZZOpAlzLpXdeCZR5FNofjSC3XiriigtxuHZRsYJssNcKys3iUF0d9PiK3dA','2020-06-18 13:29:07','2021-01-26 02:07:55','ben.hipps',NULL,1),(26,'Saad Nadir','saad@keyhro.com','$2y$10$9tuA/HC4rFn/.zvuZeB4I./ewLpVp5kG8E/fteYmDcFM9CN/OArb.','GFm0TGOzdUt5FAmbxek9CpngTawiL2FFNyXsNTv3VPzwN9eXtvxFDSU5mvni','2020-07-28 21:57:01','2021-01-26 02:07:55','saad',NULL,1),(27,'Karissa Pierson','karissa@keyhro.com','$2y$10$2DogXetwg5IA5oJArsHDu.wdG6gucOySsaEx57nkdL2YM0JB3pLhq','VDoUUBkWecksg4nwxXn0LvHInz64tKOVt1fwUr5pjdnSIIO01V2rRkpDZfZB','2020-07-28 22:04:44','2021-01-26 02:07:55','karissa.pierson',NULL,1),(28,'Jalib Khan','jalib@allresourcetech.com','$2y$10$k6Euk9kJlKfoWOXciaScouaUDOywRO742Y9FoOLskW0L3DwwmjGuu','ZXcAIRZ5rqcAuFYBKMB07X7pACl5pFRy6TkH8baNWoMfoXeBqjWgfzA9QXrg','2020-12-23 17:05:22','2021-01-26 02:07:55','jalib',NULL,1),(29,'Carmelite Souffront','carmelite@keyhro.com','$2y$10$f82jF.FXvJWk5vQwfuWvFeKrAgnKU.ytqLN3T0BBFqkOO7jwImdXS','DkT1D58ayAPhLqNvZBQ9HLnpOeuug7aimrljvyjJXUHsMse92kEMLS1CA40r','2021-09-30 03:41:37','2021-09-30 03:51:56','carmelite.souffront',NULL,1),(30,'Test Admin','testadmin@test.com','$2y$10$jIAZBYROWO6H4gQ7fZRHLerCtb8x7NQ1FVLqZfjVTqHpgr5R15Hsm','Q6Pwtp0dWFTeei7FUTIrcgECGJdK8vMEJtAM8YQltCi9lXlO5cKt1vNe2HMD','2021-11-02 01:16:27','2022-05-17 11:01:12','testadmin',NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-08 11:43:21
