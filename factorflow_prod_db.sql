-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: aws-ec2-database.cyxpeevzvuth.us-east-1.rds.amazonaws.com    Database: factorflow_prod_db
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
-- Table structure for table `client_advocate_clients`
--

DROP TABLE IF EXISTS `client_advocate_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_advocate_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `prospect_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_advocate_clients_user_id_index` (`user_id`),
  KEY `client_advocate_clients_client_id_index` (`prospect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_advocate_clients`
--

LOCK TABLES `client_advocate_clients` WRITE;
/*!40000 ALTER TABLE `client_advocate_clients` DISABLE KEYS */;
INSERT INTO `client_advocate_clients` VALUES (1,3,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `client_advocate_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_attachments`
--

DROP TABLE IF EXISTS `client_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_attachments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_attachments_id_index` (`id`),
  KEY `client_attachments_client_id_index` (`client_id`),
  CONSTRAINT `client_attachments_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_attachments`
--

LOCK TABLES `client_attachments` WRITE;
/*!40000 ALTER TABLE `client_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_department_documents`
--

DROP TABLE IF EXISTS `client_department_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_department_documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_department_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_department_documents_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_department_documents`
--

LOCK TABLES `client_department_documents` WRITE;
/*!40000 ALTER TABLE `client_department_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_department_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_departments`
--

DROP TABLE IF EXISTS `client_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_departments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_departments_id_index` (`id`),
  KEY `client_departments_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_departments`
--

LOCK TABLES `client_departments` WRITE;
/*!40000 ALTER TABLE `client_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_date_established` date DEFAULT NULL,
  `company_county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_cell_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_web_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_legal_status` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `company_fein` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_business_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_number_of_employees` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_company_taxes_past_due_status` tinyint(1) NOT NULL DEFAULT '0',
  `company_taxes_past_due_amount` decimal(10,2) DEFAULT NULL,
  `company_taxes_past_due_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_tax_lien_field` tinyint(1) DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_opening_date` date DEFAULT NULL,
  `bank_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_checking_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_loan_outstanding_status` tinyint(1) NOT NULL DEFAULT '0',
  `business_loan_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_loan_account_amount` decimal(10,2) DEFAULT NULL,
  `bank_officer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthly_factoring_volume` text COLLATE utf8mb4_unicode_ci,
  `receivables_outstanding` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requested_funding_date` date DEFAULT NULL,
  `funding_amount` decimal(10,2) DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factored_before_status` tinyint(1) NOT NULL DEFAULT '0',
  `factored_before_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leasing_business_space` tinyint(1) NOT NULL DEFAULT '0',
  `present_lease_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_monthly_rent` decimal(10,2) DEFAULT NULL,
  `landlord_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cb_invoices_to_factor` tinyint(1) NOT NULL DEFAULT '0',
  `cb_customer_list_with_addresses` tinyint(1) NOT NULL DEFAULT '0',
  `cb_accounts_receivable_aging` tinyint(1) NOT NULL DEFAULT '0',
  `cb_current_financial_statements` tinyint(1) NOT NULL DEFAULT '0',
  `cb_accounts_payable_aging` tinyint(1) NOT NULL DEFAULT '0',
  `cb_bank_authorization_form` tinyint(1) NOT NULL DEFAULT '0',
  `cb_tax_authorization_form` tinyint(1) NOT NULL DEFAULT '0',
  `cb_tax_returns` tinyint(1) NOT NULL DEFAULT '0',
  `cb_liability_insurance_certificate` tinyint(1) NOT NULL DEFAULT '0',
  `cb_articles_of_incorporation_or_assumed_name_certificate` tinyint(1) NOT NULL DEFAULT '0',
  `cb_copy_of_941s_with_proof_of_payment` tinyint(1) NOT NULL DEFAULT '0',
  `cb_sample_copy_of_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `cb_workers_comp_insurance` tinyint(1) NOT NULL DEFAULT '0',
  `cb_copy_of_current_PACA_license` tinyint(1) NOT NULL DEFAULT '0',
  `cb_copy_of_applicant_driver_license` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clients_company_email_unique` (`company_email`),
  KEY `clients_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_terms`
--

DROP TABLE IF EXISTS `clients_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients_terms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `term_id` bigint unsigned NOT NULL,
  `effective_date` date DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clients_terms_id_index` (`id`),
  KEY `clients_terms_client_id_index` (`client_id`),
  KEY `clients_terms_term_id_index` (`term_id`),
  CONSTRAINT `clients_terms_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `clients_terms_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_terms`
--

LOCK TABLES `clients_terms` WRITE;
/*!40000 ALTER TABLE `clients_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_documents`
--

DROP TABLE IF EXISTS `collection_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `collection_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `collection_documents_id_index` (`id`),
  KEY `collection_documents_collection_id_index` (`collection_id`),
  CONSTRAINT `collection_documents_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_documents`
--

LOCK TABLES `collection_documents` WRITE;
/*!40000 ALTER TABLE `collection_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_invoices`
--

DROP TABLE IF EXISTS `collection_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `collection_id` bigint unsigned NOT NULL,
  `collection_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `collection_invoices_invoice_id_index` (`invoice_id`),
  KEY `collection_invoices_collection_id_index` (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_invoices`
--

LOCK TABLES `collection_invoices` WRITE;
/*!40000 ALTER TABLE `collection_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_notes`
--

DROP TABLE IF EXISTS `collection_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `collection_id` bigint unsigned NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_notes`
--

LOCK TABLES `collection_notes` WRITE;
/*!40000 ALTER TABLE `collection_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint unsigned NOT NULL,
  `debtor_id` bigint unsigned NOT NULL,
  `invoices_total_amount` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `check_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_number` bigint NOT NULL,
  `check_date` date NOT NULL,
  `check_deposit_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `collections_prospect_id_index` (`prospect_id`),
  KEY `collections_debtor_id_index` (`debtor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_requests`
--

DROP TABLE IF EXISTS `credit_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint unsigned DEFAULT NULL,
  `debtor_id` bigint unsigned DEFAULT NULL,
  `requested_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_requests`
--

LOCK TABLES `credit_requests` WRITE;
/*!40000 ALTER TABLE `credit_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debtor_pocs`
--

DROP TABLE IF EXISTS `debtor_pocs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debtor_pocs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `debtor_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noa_sent_status` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `debtor_pocs_id_index` (`id`),
  KEY `debtor_pocs_debtor_id_index` (`debtor_id`),
  CONSTRAINT `debtor_pocs_debtor_id_foreign` FOREIGN KEY (`debtor_id`) REFERENCES `debtors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debtor_pocs`
--

LOCK TABLES `debtor_pocs` WRITE;
/*!40000 ALTER TABLE `debtor_pocs` DISABLE KEYS */;
INSERT INTO `debtor_pocs` VALUES (1,1,'Kara','zainab@frontlinefunding.com','239-772-2107',NULL,'2022-10-07 15:39:34','2022-10-07 15:39:34',NULL,'Account Receivable',0,NULL),(2,2,'Tammy','zainab@9ostech.com','239-995-5833',NULL,'2022-10-07 11:41:15','2022-10-07 11:41:15',NULL,'Operations',0,NULL);
/*!40000 ALTER TABLE `debtor_pocs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debtors`
--

DROP TABLE IF EXISTS `debtors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debtors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fein` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_date` date DEFAULT NULL,
  `business_description` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '0',
  `credit_limit` bigint DEFAULT NULL,
  `active_credit_limit` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remind_based_on` int NOT NULL DEFAULT '1',
  `reminder_frequency` int NOT NULL DEFAULT '7',
  `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `debtors_email_unique` (`email`),
  UNIQUE KEY `debtors_fein_unique` (`fein`),
  KEY `debtors_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debtors`
--

LOCK TABLES `debtors` WRITE;
/*!40000 ALTER TABLE `debtors` DISABLE KEYS */;
INSERT INTO `debtors` VALUES (1,1,NULL,'The Windsor Of Cape Coral','831 Santa Barbara Blvd','Cape Coral','FL','33991','239-772-2107',NULL,NULL,'eyJpdiI6IjNVemtCN0FhTnJiTzYvRjNUQk5kK2c9PSIsInZhbHVlIjoicWd4MHJmZzlqSy9lNG9ydnhEajNoQT09IiwibWFjIjoiNzA3ODM5YTdlMWNlMzMyZTU2NDVjZjAwNTg1YzM3MWYyOGM2YTVhNDMxODcwNWVmODRiYjU2OTNmZmVhYjJjZSIsInRhZyI6IiJ9',NULL,NULL,1,20000,20000.00,'2022-10-07 07:39:34','2022-10-07 07:42:38',NULL,1,7,NULL),(2,1,NULL,'Florida Preferred Care Development Center','2975 Garden St','North Fort Myers','FL','33917','239-995-5833',NULL,NULL,'eyJpdiI6ImhCMDZFbFVDSlBKd2JHMmQwdXNVbHc9PSIsInZhbHVlIjoiVG54UXpXdTZLUGsrOXE5N2ZISWxlQT09IiwibWFjIjoiNzFiMzEzNjEzNTBkMzViNjMxYTFlZTBiYzZlOTQ4NjBjZWE0NzNlYjIzMDhlYWJkYjVmMDA2ZjM2OGI0ZDA2OSIsInRhZyI6IiJ9',NULL,NULL,1,6000,6000.00,'2022-10-07 07:41:15','2022-10-07 07:42:56',NULL,1,7,NULL);
/*!40000 ALTER TABLE `debtors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debtors_terms`
--

DROP TABLE IF EXISTS `debtors_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debtors_terms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `debtor_id` bigint unsigned NOT NULL,
  `term_id` bigint unsigned NOT NULL,
  `effective_date` date DEFAULT NULL,
  `termination_date` date DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `debtors_terms_id_index` (`id`),
  KEY `debtors_terms_client_id_index` (`client_id`),
  KEY `debtors_terms_debtor_id_index` (`debtor_id`),
  KEY `debtors_terms_term_id_index` (`term_id`),
  CONSTRAINT `debtors_terms_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  CONSTRAINT `debtors_terms_debtor_id_foreign` FOREIGN KEY (`debtor_id`) REFERENCES `debtors` (`id`),
  CONSTRAINT `debtors_terms_term_id_foreign` FOREIGN KEY (`term_id`) REFERENCES `terms` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debtors_terms`
--

LOCK TABLES `debtors_terms` WRITE;
/*!40000 ALTER TABLE `debtors_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `debtors_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escrow_reserve_releases`
--

DROP TABLE IF EXISTS `escrow_reserve_releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escrow_reserve_releases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint unsigned NOT NULL,
  `invoice_id` bigint unsigned NOT NULL,
  `reserve_release_id` bigint DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `released` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escrow_reserve_releases`
--

LOCK TABLES `escrow_reserve_releases` WRITE;
/*!40000 ALTER TABLE `escrow_reserve_releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `escrow_reserve_releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_attachment_notes`
--

DROP TABLE IF EXISTS `invoice_attachment_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_attachment_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_attachment_id` bigint unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_attachment_notes`
--

LOCK TABLES `invoice_attachment_notes` WRITE;
/*!40000 ALTER TABLE `invoice_attachment_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_attachment_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_attachments`
--

DROP TABLE IF EXISTS `invoice_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_attachments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_attachments_invoice_id_index` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_attachments`
--

LOCK TABLES `invoice_attachments` WRITE;
/*!40000 ALTER TABLE `invoice_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint unsigned NOT NULL,
  `debtor_id` bigint unsigned NOT NULL,
  `schedule_id` bigint unsigned DEFAULT NULL,
  `reserve_release_id` bigint DEFAULT NULL,
  `invoice_no` int unsigned NOT NULL,
  `load` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_due_date` date DEFAULT NULL,
  `age` int NOT NULL DEFAULT '0',
  `invoice_amount` decimal(10,2) DEFAULT NULL,
  `dilution` int unsigned NOT NULL,
  `dilution_value` decimal(10,2) DEFAULT NULL,
  `advance_amount` decimal(10,2) DEFAULT NULL,
  `advance_percentage` decimal(10,2) DEFAULT NULL,
  `net_invoice_term` int unsigned DEFAULT NULL,
  `estimated_days_out` int unsigned DEFAULT NULL,
  `flag_invoice_day` int unsigned DEFAULT NULL,
  `float_days` int unsigned DEFAULT NULL,
  `status` int unsigned DEFAULT NULL,
  `approval_date` date DEFAULT NULL,
  `customer_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` int DEFAULT NULL,
  `deduct_initial_discount` tinyint(1) NOT NULL DEFAULT '0',
  `funding_date` date DEFAULT NULL,
  `collection_date` date DEFAULT NULL,
  `reserve_release_date` date DEFAULT NULL,
  `reserved_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pending_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cb` decimal(10,2) DEFAULT NULL,
  `uc` decimal(10,2) DEFAULT NULL,
  `hold_account_status` int NOT NULL DEFAULT '0',
  `wo` decimal(10,2) DEFAULT NULL,
  `fee_charged` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_per_day` decimal(10,2) DEFAULT NULL,
  `recourse_fee_charged` decimal(10,2) NOT NULL DEFAULT '0.00',
  `chargeback_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `escrow_reserves` decimal(10,2) NOT NULL DEFAULT '0.00',
  `available_escrow_reserves` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debtor_contact` text COLLATE utf8mb4_unicode_ci,
  `reserve_release_status` int NOT NULL DEFAULT '0',
  `charge_back_settle_status` int NOT NULL DEFAULT '0',
  `charge_back_settled` tinyint(1) NOT NULL DEFAULT '0',
  `chargeback_settled_against_id` int DEFAULT NULL,
  `charge_back_settled_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_prospect_id_index` (`prospect_id`),
  KEY `invoices_debtor_id_index` (`debtor_id`),
  KEY `invoices_schedule_id_index` (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_12_14_000001_create_personal_access_tokens_table',1),(3,'2022_03_28_123114_create_user_roles_table',1),(4,'2022_04_01_070345_create_terms_table',1),(5,'2022_04_01_070346_create_clients_table',1),(6,'2022_04_01_070347_create_schedules_table',1),(7,'2022_04_01_070348_create_debtors_table',1),(8,'2022_04_01_070352_create_credit_requests_table',1),(9,'2022_04_01_070426_create_schedule_documents_table',1),(10,'2022_04_01_070527_create_invoices_table',1),(11,'2022_04_01_070530_create_collections_table',1),(12,'2022_04_01_070725_create_clients_terms_table',1),(13,'2022_04_01_070819_create_debtors_terms_table',1),(14,'2022_04_01_070923_create_collection_documents_table',1),(15,'2022_04_01_070940_create_invoice_documents_table',1),(16,'2022_04_01_071004_create_debtor_pocs_table',1),(17,'2022_04_01_102157_add_soft_delete_to_users_table',1),(18,'2022_04_05_065412_create_client_attachments_table',1),(19,'2022_04_14_113219_create_client_departments_table',1),(20,'2022_04_14_113459_create_client_department_documents_table',1),(21,'2022_04_18_064800_create_prospects_table',1),(22,'2022_04_18_072024_create_prospect_owners_table',1),(23,'2022_04_18_072302_create_prospect_suppliers_table',1),(24,'2022_04_20_052304_create_prospect_attachments_table',1),(25,'2022_04_20_052313_create_prospect_attachment_notes_table',1),(26,'2022_04_20_124922_create_prospect_term_sheets_table',1),(27,'2022_04_21_084724_create_prospect_term_notes_table',1),(28,'2022_04_27_121911_create_prospect_contracts_table',1),(29,'2022_04_28_105220_add_contract_date_contracts_table',1),(30,'2022_04_28_131754_add_entries_prospects_terms_table',1),(31,'2022_04_29_143415_create_prospect_w9_forms_table',1),(32,'2022_05_07_143259_add_fields_to_term_sheets_table',1),(33,'2022_05_09_163518_create_quality_controls_table',1),(34,'2022_05_09_164243_create_quality_control_notes_table',1),(35,'2022_05_10_113930_update_prospect_contracts_table',1),(36,'2022_05_10_114908_add_unsigned_attachment_to_prospect_contracts_table',1),(37,'2022_05_12_142534_create_notifications_table',1),(38,'2022_05_12_145811_create_quality_control_users_table',1),(39,'2022_05_12_150058_drop_user_id_from_quality_controls_table',1),(40,'2022_05_13_093952_create_prospect_noas_table',1),(41,'2022_05_16_054237_drop_invoices_table',1),(42,'2022_05_16_054754_add_invoices_table',1),(43,'2022_05_16_064141_drop_schedules_table',1),(44,'2022_05_16_064224_add_schedules_table',1),(45,'2022_05_16_065231_drop_invoice_documents_table',1),(46,'2022_05_16_065321_add_invoice_attachments_table',1),(47,'2022_05_16_065942_create_invoice_attachment_notes_table',1),(48,'2022_05_18_120859_add_prospect_no_to_invoices_table',1),(49,'2022_05_18_181046_add_prospect_id_to_debtors_table',1),(50,'2022_05_19_120817_create_prospect8821_forms_table',1),(51,'2022_05_26_141434_change_schedule_id_in_invoices_table',1),(52,'2022_05_30_092135_create_payments_table',1),(53,'2022_05_31_050034_add_fields_schedules_table',1),(54,'2022_05_31_050832_add_fields_invoices_table',1),(55,'2022_05_31_054707_drop_schedule_number_invoices_table',1),(56,'2022_06_01_060709_drop_entries_collections_table',1),(57,'2022_06_01_073315_update_transaction_number_in_payments_table',1),(58,'2022_06_02_105809_drop_collections_table',1),(59,'2022_06_02_105846_add_collections_table',1),(60,'2022_06_02_105910_add_collection_invoices_table',1),(61,'2022_06_05_121222_create_client_advocate_clients_table',1),(62,'2022_06_06_140013_update_client_advocate_client_table',1),(63,'2022_06_08_131852_drop_deleted_at_from_invoices_table',1),(64,'2022_06_08_132125_drop_deleted_at_from_schedules_table',1),(65,'2022_06_09_102824_change_attributes_users_table',1),(66,'2022_06_09_112419_change_attribites_collections_table',1),(67,'2022_06_09_113208_add_department_pocs_table',1),(68,'2022_06_09_175833_delete_prospects_and_related_data',1),(69,'2022_06_09_224341_delete_prospects_invoice_schedules_collections_and_related_data',1),(70,'2022_06_10_101317_create_prospect_support_attachments_table',1),(71,'2022_06_13_080008_update_invoice_table_pending_amount_field',1),(72,'2022_06_13_080229_update_collections_table_amount_field',1),(73,'2022_06_13_101941_update_payments_table_amount_field',1),(74,'2022_06_13_102115_update_prospect_term_sheets_table_first_day_discount_field',1),(75,'2022_06_13_102814_update_schedule_table_amount_field',1),(76,'2022_06_16_132541_create_failed_jobs_table',1),(77,'2022_06_16_133426_add_is_funding_field_schedules_table',1),(78,'2022_06_20_120615_add_aging_dates_to_invoices_table',1),(79,'2022_06_20_132316_add_reserve_release_date_to_invoices_table',1),(80,'2022_06_21_065752_create_reserve_releases_table',1),(81,'2022_06_21_112526_add_fields_to_term_sheet',1),(82,'2022_06_23_100919_add_channel_notifications_table',1),(83,'2022_06_26_155908_update_bad_debt_reserves_in_prospect_term_sheets',1),(84,'2022_06_27_063307_add_prospect_id_reserve_release_table',1),(85,'2022_06_27_074726_remove_foreign_key_contraints_from_prospect_term_sheets',1),(86,'2022_06_27_075103_remove_foreign_key_contraints',1),(87,'2022_06_28_104314_create_under_writings_table',1),(88,'2022_06_29_101520_create_under_writing_tasks_table',1),(89,'2022_06_30_112830_create_under_writing_task_notes_table',1),(90,'2022_07_01_075050_add_available_credit_limit_prospects_table',1),(91,'2022_07_06_115624_change_client_id_to_prospect_id_credit_requests_table',1),(92,'2022_07_13_125805_update_debtor_pocs_email',1),(93,'2022_07_14_110838_create_tickets_table',1),(94,'2022_07_14_111336_create_ticket_responses_table',1),(95,'2022_07_14_123530_add_per_day_tax_to_invoices_table',1),(96,'2022_08_12_075713_add_deleted_at_columns',1),(97,'2022_08_12_104919_update_per_day_tax_in_invoices_table',1),(98,'2022_08_22_143632_add_new_fields_in_invoices_table',1),(99,'2022_08_22_144152_add_new_fields_in_reserve_releases_table',1),(100,'2022_08_29_113421_add_hold_account_status_invoices_table',1),(101,'2022_08_30_045520_add_reminder_settings_debtors_table',1),(102,'2022_08_30_055729_add_escrow_reserves_invoices_table',1),(103,'2022_08_31_064529_change_data_type_escrow_invoices_table',1),(104,'2022_09_02_095650_add_counties_to_prospects_table',1),(105,'2022_09_02_100750_add_counties_to_prospect_owners_table',1),(106,'2022_09_02_113019_create_collection_notes_table',1),(107,'2022_09_05_080246_add_county_to_debtors_table',1),(108,'2022_09_07_085156_add_debtor_contact_to_invoices_table',1),(109,'2022_09_07_110843_add_noa_send_status_debtor_pocs_table',1),(110,'2022_09_09_110436_change_all_decimal_columns_range',1),(111,'2022_09_12_035158_change_collection_amount_to_decimal_in_collection_invoices_table',1),(112,'2022_09_13_102209_add_reserve_release_status_invoices_table',1),(113,'2022_09_14_065450_add_mandatory_column_under_writing_table',1),(114,'2022_09_22_080336_add_title_to_pocs_table',1),(115,'2022_09_22_124127_add_charge_back_fields_invoices_table',1),(116,'2022_09_27_021256_add_wire_fee_payments_table',1),(117,'2022_09_27_030452_add_charge_back_settled_against_id_invoices_table',1),(118,'2022_09_27_054124_add_chargeback_fields_in_prospect_term_sheets_table',1),(119,'2022_09_28_040215_update_wire_fee_payments_table',1),(120,'2022_09_28_070336_add_recourse_cb_fee_in_invoices_table',1),(121,'2022_09_28_102248_change_all_decimal_columns_to_two_decimal',1),(122,'2022_09_28_113729_change_recourse_cb_fee_in_invoices_table',1),(123,'2022_09_29_015846_add_charge_back_setteled_date_invoices_table',1),(124,'2022_09_29_040659_add_fee_columns_invoices_table',1),(125,'2022_09_29_072435_create_escrow_reserve_releases_table',1),(126,'2022_10_03_014941_add_prospect_id_escrow_reserve_releases_table',1),(127,'2022_10_03_105949_add_invoice_age_column',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` bigint NOT NULL,
  `sub_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_user_id_foreign` (`user_id`),
  CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1,'A new client application has been received','New Client Application',1,NULL,1,'2022-10-06 12:02:54','2022-10-06 12:03:56',NULL,'prospect_new_application'),(2,2,'A new client application has been received','New Client Application',1,NULL,0,'2022-10-06 12:02:54','2022-10-06 12:02:54',NULL,'prospect_new_application'),(3,5,'Welcome To Frontline Funding! Your client Advocate is <strong>Areej</strong>','Welcome Onboard',1,NULL,0,'2022-10-06 12:32:51','2022-10-06 12:32:51',NULL,'prospect_welcome'),(4,3,'A new client has been assigned to you','New Client Assigned',1,NULL,0,'2022-10-06 12:32:51','2022-10-06 12:32:51',NULL,'advocate_prospect_assigned'),(5,1,'A new debtor request has been received from client <strong>Careway Healthcare Staffing, LLC</strong>','New Debtor Request',1,NULL,1,'2022-10-07 07:39:36','2022-10-07 07:41:31',NULL,'new_debtor_request'),(6,2,'A new debtor request has been received from client <strong>Careway Healthcare Staffing, LLC</strong>','New Debtor Request',1,NULL,0,'2022-10-07 07:39:36','2022-10-07 07:39:36',NULL,'new_debtor_request'),(7,1,'A new debtor request has been received from client <strong>Careway Healthcare Staffing, LLC</strong>','New Debtor Request',2,NULL,1,'2022-10-07 07:41:18','2022-10-07 07:42:42',NULL,'new_debtor_request'),(8,2,'A new debtor request has been received from client <strong>Careway Healthcare Staffing, LLC</strong>','New Debtor Request',2,NULL,0,'2022-10-07 07:41:18','2022-10-07 07:41:18',NULL,'new_debtor_request');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule_fund_date` date DEFAULT NULL,
  `transaction_number` bigint unsigned DEFAULT NULL,
  `payment_type` int DEFAULT NULL,
  `schedule_id` bigint unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `wire_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect8821_forms`
--

DROP TABLE IF EXISTS `prospect8821_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect8821_forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint unsigned NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect8821_forms_prospect_id_foreign` (`prospect_id`),
  CONSTRAINT `prospect8821_forms_prospect_id_foreign` FOREIGN KEY (`prospect_id`) REFERENCES `prospects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect8821_forms`
--

LOCK TABLES `prospect8821_forms` WRITE;
/*!40000 ALTER TABLE `prospect8821_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect8821_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_attachment_notes`
--

DROP TABLE IF EXISTS `prospect_attachment_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_attachment_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_attachment_id` bigint unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_attachment_notes_user_id_foreign` (`user_id`),
  CONSTRAINT `prospect_attachment_notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_attachment_notes`
--

LOCK TABLES `prospect_attachment_notes` WRITE;
/*!40000 ALTER TABLE `prospect_attachment_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_attachment_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_attachments`
--

DROP TABLE IF EXISTS `prospect_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_attachments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_attachments`
--

LOCK TABLES `prospect_attachments` WRITE;
/*!40000 ALTER TABLE `prospect_attachments` DISABLE KEYS */;
INSERT INTO `prospect_attachments` VALUES (1,1,'BNS_Careway Healthcare Staffing','https://aws-oakstreet-bucket.s3.amazonaws.com/c4lYhpTJ3tCareway%20Healthcare%20-%20BNS.pdf','2022-10-06 16:07:04','2022-10-06 16:07:04',NULL);
/*!40000 ALTER TABLE `prospect_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_contracts`
--

DROP TABLE IF EXISTS `prospect_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_contracts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint unsigned NOT NULL,
  `owner_id` bigint unsigned NOT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci,
  `signed_attachment` text COLLATE utf8mb4_unicode_ci,
  `unsigned_attachment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `signature_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_contracts_prospect_id_foreign` (`prospect_id`),
  KEY `prospect_contracts_owner_id_foreign` (`owner_id`),
  CONSTRAINT `prospect_contracts_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `prospect_owners` (`id`),
  CONSTRAINT `prospect_contracts_prospect_id_foreign` FOREIGN KEY (`prospect_id`) REFERENCES `prospects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_contracts`
--

LOCK TABLES `prospect_contracts` WRITE;
/*!40000 ALTER TABLE `prospect_contracts` DISABLE KEYS */;
INSERT INTO `prospect_contracts` VALUES (1,1,1,NULL,'https://aws-oakstreet-bucket.s3.amazonaws.com/VrAxJxeKoHContract-Careway%20Healthcare%20Staffing-10-06-2022.pdf','https://aws-oakstreet-bucket.s3.amazonaws.com/bYWVgSLAklProspect%20Contract%20%281%29.pdf','2022-10-06 12:23:33','2022-10-06 12:31:00',NULL,NULL);
/*!40000 ALTER TABLE `prospect_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_noas`
--

DROP TABLE IF EXISTS `prospect_noas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_noas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint unsigned NOT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_noas`
--

LOCK TABLES `prospect_noas` WRITE;
/*!40000 ALTER TABLE `prospect_noas` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_noas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_owners`
--

DROP TABLE IF EXISTS `prospect_owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_owners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_owned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_owned` tinyint(1) NOT NULL DEFAULT '0',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ssn` text COLLATE utf8mb4_unicode_ci,
  `signature` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_owners_id_index` (`id`),
  KEY `prospect_owners_prospect_id_index` (`prospect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_owners`
--

LOCK TABLES `prospect_owners` WRITE;
/*!40000 ALTER TABLE `prospect_owners` DISABLE KEYS */;
INSERT INTO `prospect_owners` VALUES (1,1,'Shanice Williams, Owner','100','W45-279-19-351-8','3028 Franklin st ',0,'Fort Myers ','FL','33916','239-324-5181','areej@frontlinefunding.com','1993-01-18','eyJpdiI6Ik1EdXhhanZIUkZOSUdXdlRzcFNkc1E9PSIsInZhbHVlIjoia0gzNzU4cHF0TmpEeUVybDFMSWxqdz09IiwibWFjIjoiMWMzNWNjNDkzMzY4ZTc3ODBkOTU0ODM3MjFiOTQ4Yzc5NjI0OTM2OTdhMmNjOGYzNWUzZGRmNTczOTA1NjQ2NiIsInRhZyI6IiJ9','https://aws-oakstreet-bucket.s3.amazonaws.com/19xcrKO9FrZY9cKynmSdmnlU17lZxm.svg','2022-10-06 16:02:48','2022-10-06 16:02:48',NULL,'Lee');
/*!40000 ALTER TABLE `prospect_owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_suppliers`
--

DROP TABLE IF EXISTS `prospect_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_suppliers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_supplied` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_suppliers_id_index` (`id`),
  KEY `prospect_suppliers_prospect_id_index` (`prospect_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_suppliers`
--

LOCK TABLES `prospect_suppliers` WRITE;
/*!40000 ALTER TABLE `prospect_suppliers` DISABLE KEYS */;
INSERT INTO `prospect_suppliers` VALUES (1,1,'Kara','Invoices','523-221-4566','2022-10-06 16:02:48','2022-10-06 16:02:48',NULL);
/*!40000 ALTER TABLE `prospect_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_support_attachments`
--

DROP TABLE IF EXISTS `prospect_support_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_support_attachments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint NOT NULL,
  `invoices_to_factor` longtext COLLATE utf8mb4_unicode_ci,
  `customer_list_with_addresses` longtext COLLATE utf8mb4_unicode_ci,
  `accounts_receivable_aging` longtext COLLATE utf8mb4_unicode_ci,
  `current_financial_statements` longtext COLLATE utf8mb4_unicode_ci,
  `accounts_payable_aging` longtext COLLATE utf8mb4_unicode_ci,
  `bank_authorization_form` longtext COLLATE utf8mb4_unicode_ci,
  `tax_authorization_form` longtext COLLATE utf8mb4_unicode_ci,
  `tax_returns` longtext COLLATE utf8mb4_unicode_ci,
  `liability_insurance_certificate` longtext COLLATE utf8mb4_unicode_ci,
  `articles_of_incorporation_or_assumed_name_certificate` longtext COLLATE utf8mb4_unicode_ci,
  `copy_of_941s_with_proof_of_payment` longtext COLLATE utf8mb4_unicode_ci,
  `sample_copy_of_invoice` longtext COLLATE utf8mb4_unicode_ci,
  `workers_comp_insurance` longtext COLLATE utf8mb4_unicode_ci,
  `copy_of_current_PACA_license` longtext COLLATE utf8mb4_unicode_ci,
  `copy_of_applicant_driver_license` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_support_attachments`
--

LOCK TABLES `prospect_support_attachments` WRITE;
/*!40000 ALTER TABLE `prospect_support_attachments` DISABLE KEYS */;
INSERT INTO `prospect_support_attachments` VALUES (1,1,NULL,'[\"https:\\/\\/aws-oakstreet-bucket.s3.amazonaws.com\\/ADFnV2epJ2Client%20%26%20Debtors%20List.pdf\"]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2022-10-06 16:02:48','2022-10-06 16:02:48',NULL);
/*!40000 ALTER TABLE `prospect_support_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_term_notes`
--

DROP TABLE IF EXISTS `prospect_term_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_term_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_term_sheets_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_term_notes_prospect_term_sheets_id_foreign` (`prospect_term_sheets_id`),
  KEY `prospect_term_notes_user_id_foreign` (`user_id`),
  CONSTRAINT `prospect_term_notes_prospect_term_sheets_id_foreign` FOREIGN KEY (`prospect_term_sheets_id`) REFERENCES `prospect_term_sheets` (`id`),
  CONSTRAINT `prospect_term_notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_term_notes`
--

LOCK TABLES `prospect_term_notes` WRITE;
/*!40000 ALTER TABLE `prospect_term_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_term_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_term_sheets`
--

DROP TABLE IF EXISTS `prospect_term_sheets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_term_sheets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint unsigned NOT NULL,
  `owner_id` bigint unsigned NOT NULL,
  `fund_rate` decimal(10,2) DEFAULT NULL,
  `fee_charged` decimal(10,2) DEFAULT NULL,
  `fee_charged_days` int NOT NULL DEFAULT '0',
  `fee_charged_per_day` decimal(10,2) DEFAULT NULL,
  `recourse_after` int NOT NULL DEFAULT '0',
  `account_credit_limit` decimal(10,2) DEFAULT NULL,
  `time_limit_term` int DEFAULT NULL,
  `term_setup_fee` decimal(10,2) DEFAULT NULL,
  `min_first_funding` decimal(10,2) DEFAULT NULL,
  `term_termination_charge_fee` decimal(10,2) DEFAULT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `sent_date` date DEFAULT NULL,
  `first_day_discount` decimal(10,2) DEFAULT NULL,
  `incremental_day_discount` decimal(10,2) DEFAULT NULL,
  `first_discount_period_days` int DEFAULT NULL,
  `incremental_discount_period_days` int DEFAULT NULL,
  `automatic_months_renewal` int DEFAULT NULL,
  `less_than_days` int DEFAULT NULL,
  `more_than_days` int DEFAULT NULL,
  `business_days_clearance` int DEFAULT NULL,
  `credit_proposal_weeks` int DEFAULT NULL,
  `bad_debt_reserve` double DEFAULT NULL,
  `day_outstanding` int DEFAULT NULL,
  `cb_per_day_fee_status` tinyint(1) NOT NULL DEFAULT '0',
  `cb_per_day_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cb_fee_status` tinyint(1) NOT NULL DEFAULT '0',
  `cb_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_term_sheets_id_index` (`id`),
  KEY `prospect_term_sheets_prospect_id_foreign` (`prospect_id`),
  KEY `prospect_term_sheets_owner_id_foreign` (`owner_id`),
  CONSTRAINT `prospect_term_sheets_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `prospect_owners` (`id`),
  CONSTRAINT `prospect_term_sheets_prospect_id_foreign` FOREIGN KEY (`prospect_id`) REFERENCES `prospects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_term_sheets`
--

LOCK TABLES `prospect_term_sheets` WRITE;
/*!40000 ALTER TABLE `prospect_term_sheets` DISABLE KEYS */;
INSERT INTO `prospect_term_sheets` VALUES (1,1,1,90.00,NULL,0,NULL,0,NULL,24,500.00,25000.00,NULL,'https://aws-oakstreet-bucket.s3.amazonaws.com/OzteX9E8ff6C7MQzfHWPxzRXjQI3L9.svg',NULL,'2022-10-06','2022-10-06 12:10:03','2022-10-06 12:19:23',1,'2022-10-06',2.00,0.04,30,1,12,30,60,3,2,0,90,1,0.00,1,0.00,NULL);
/*!40000 ALTER TABLE `prospect_term_sheets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_w9_forms`
--

DROP TABLE IF EXISTS `prospect_w9_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_w9_forms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint unsigned NOT NULL,
  `pdf_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paths` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_w9_forms_prospect_id_foreign` (`prospect_id`),
  CONSTRAINT `prospect_w9_forms_prospect_id_foreign` FOREIGN KEY (`prospect_id`) REFERENCES `prospects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_w9_forms`
--

LOCK TABLES `prospect_w9_forms` WRITE;
/*!40000 ALTER TABLE `prospect_w9_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_w9_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company_business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_date_established` date DEFAULT NULL,
  `company_county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_cell_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_web_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_legal_status` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `company_fein` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_business_description` text COLLATE utf8mb4_unicode_ci,
  `company_number_of_employees` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_company_taxes_past_due_status` tinyint(1) NOT NULL DEFAULT '0',
  `company_taxes_past_due_amount` decimal(10,2) DEFAULT NULL,
  `company_taxes_past_due_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_tax_lien_field` tinyint(1) DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_opening_date` date DEFAULT NULL,
  `bank_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_checking_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_loan_outstanding_status` tinyint(1) NOT NULL DEFAULT '0',
  `business_loan_account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_loan_account_amount` decimal(10,2) DEFAULT NULL,
  `bank_officer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthly_factoring_volume` text COLLATE utf8mb4_unicode_ci,
  `receivables_outstanding` decimal(10,2) DEFAULT NULL,
  `requested_funding_date` date DEFAULT NULL,
  `funding_amount` decimal(10,2) DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `factored_before_status` tinyint(1) NOT NULL DEFAULT '0',
  `factored_before_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leasing_business_space` tinyint(1) NOT NULL DEFAULT '0',
  `present_lease_period` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_monthly_rent` decimal(10,2) DEFAULT NULL,
  `landlord_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landlord_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cb_invoices_to_factor` tinyint(1) NOT NULL DEFAULT '0',
  `cb_customer_list_with_addresses` tinyint(1) NOT NULL DEFAULT '0',
  `cb_accounts_receivable_aging` tinyint(1) NOT NULL DEFAULT '0',
  `cb_current_financial_statements` tinyint(1) NOT NULL DEFAULT '0',
  `cb_accounts_payable_aging` tinyint(1) NOT NULL DEFAULT '0',
  `cb_bank_authorization_form` tinyint(1) NOT NULL DEFAULT '0',
  `cb_tax_authorization_form` tinyint(1) NOT NULL DEFAULT '0',
  `cb_tax_returns` tinyint(1) NOT NULL DEFAULT '0',
  `cb_liability_insurance_certificate` tinyint(1) NOT NULL DEFAULT '0',
  `cb_articles_of_incorporation_or_assumed_name_certificate` tinyint(1) NOT NULL DEFAULT '0',
  `cb_copy_of_941s_with_proof_of_payment` tinyint(1) NOT NULL DEFAULT '0',
  `cb_sample_copy_of_invoice` tinyint(1) NOT NULL DEFAULT '0',
  `cb_workers_comp_insurance` tinyint(1) NOT NULL DEFAULT '0',
  `cb_copy_of_current_PACA_license` tinyint(1) NOT NULL DEFAULT '0',
  `cb_copy_of_applicant_driver_license` tinyint(1) NOT NULL DEFAULT '0',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `active_credit_limit` decimal(10,2) DEFAULT NULL,
  `landlord_county` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `prospects_company_email_unique` (`company_email`),
  KEY `prospects_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
INSERT INTO `prospects` VALUES (1,'Careway Healthcare Staffing','2021-09-02','Lee','1318 N Cleveland Ave #306 ','239-689-7722','Nort Fort Myers','FL','33903',NULL,NULL,NULL,'239-288-0009',2,1,'eyJpdiI6IkxhLzdZYUZFN1kxUGZEZE9DWVdaaFE9PSIsInZhbHVlIjoic05Zc1JoTjU4UFF5Q1A2OXlLV1ZiUT09IiwibWFjIjoiMDk4ODM3ODM1OWJjZDRiYThhN2RhZThhY2Q1MjJlY2E0MDIwODFhNWNkYTExNGFlMzBlYzk4YmRmZDllN2U5NyIsInRhZyI6IiJ9',NULL,'2',0,NULL,NULL,0,'Wells fargo','2021-09-01','Fort myers ','FL','33916','180-086-9355','277418290',0,'2774182907',100000.00,'Williams','100000',1000.00,'2021-01-04',10000.00,'Through a friend',0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'33916',NULL,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,'2022-10-06 12:02:48','2022-10-07 07:42:57',NULL,-1000.00,NULL);
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quality_control_notes`
--

DROP TABLE IF EXISTS `quality_control_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quality_control_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `quality_control_id` bigint unsigned NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quality_control_notes_user_id_foreign` (`user_id`),
  KEY `quality_control_notes_quality_control_id_foreign` (`quality_control_id`),
  CONSTRAINT `quality_control_notes_quality_control_id_foreign` FOREIGN KEY (`quality_control_id`) REFERENCES `quality_controls` (`id`),
  CONSTRAINT `quality_control_notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quality_control_notes`
--

LOCK TABLES `quality_control_notes` WRITE;
/*!40000 ALTER TABLE `quality_control_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `quality_control_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quality_control_users`
--

DROP TABLE IF EXISTS `quality_control_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quality_control_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `quality_control_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `status` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quality_control_users`
--

LOCK TABLES `quality_control_users` WRITE;
/*!40000 ALTER TABLE `quality_control_users` DISABLE KEYS */;
INSERT INTO `quality_control_users` VALUES (1,1,1,1,'2022-10-06 12:04:09','2022-10-06 12:04:09',NULL),(2,1,1,1,'2022-10-06 12:04:40','2022-10-06 12:04:40',NULL),(3,2,1,1,'2022-10-06 12:05:39','2022-10-06 12:05:39',NULL),(4,3,1,1,'2022-10-06 12:07:02','2022-10-06 12:07:02',NULL),(5,4,1,1,'2022-10-06 12:19:28','2022-10-06 12:19:28',NULL),(6,5,1,1,'2022-10-06 12:21:55','2022-10-06 12:21:55',NULL),(7,6,1,1,'2022-10-06 12:32:14','2022-10-06 12:32:14',NULL),(8,7,1,1,'2022-10-07 07:41:39','2022-10-07 07:41:39',NULL),(9,8,1,1,'2022-10-07 07:41:44','2022-10-07 07:41:44',NULL);
/*!40000 ALTER TABLE `quality_control_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quality_controls`
--

DROP TABLE IF EXISTS `quality_controls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quality_controls` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type_id` bigint NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quality_controls`
--

LOCK TABLES `quality_controls` WRITE;
/*!40000 ALTER TABLE `quality_controls` DISABLE KEYS */;
INSERT INTO `quality_controls` VALUES (1,1,'Prospect',1,'ProfileCompanyInformation','2022-10-06 12:04:09','2022-10-06 12:04:09',NULL),(2,1,'Prospect',1,'MiscellaneousInformation','2022-10-06 12:05:39','2022-10-06 12:05:39',NULL),(3,1,'Prospect',1,'BusinessName','2022-10-06 12:07:02','2022-10-06 12:07:02',NULL),(4,1,'Prospect',1,'TermSheet','2022-10-06 12:19:28','2022-10-06 12:19:28',NULL),(5,1,'Prospect',1,'TermSheet','2022-10-06 12:21:55','2022-10-06 12:21:55',NULL),(6,1,'Prospect',1,'Contract','2022-10-06 12:32:14','2022-10-06 12:32:14',NULL),(7,1,'Debtor',1,'DebtorPoc','2022-10-07 07:41:39','2022-10-07 07:41:39',NULL),(8,1,'Debtor',1,'DebtorProfile','2022-10-07 07:41:44','2022-10-07 07:41:44',NULL);
/*!40000 ALTER TABLE `quality_controls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserve_releases`
--

DROP TABLE IF EXISTS `reserve_releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve_releases` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint NOT NULL,
  `wire_fee` int NOT NULL,
  `payment_type` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `released_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve_releases`
--

LOCK TABLES `reserve_releases` WRITE;
/*!40000 ALTER TABLE `reserve_releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserve_releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_documents`
--

DROP TABLE IF EXISTS `schedule_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_documents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` bigint unsigned NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedule_documents_id_index` (`id`),
  KEY `schedule_documents_schedule_id_index` (`schedule_id`),
  CONSTRAINT `schedule_documents_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_documents`
--

LOCK TABLES `schedule_documents` WRITE;
/*!40000 ALTER TABLE `schedule_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint unsigned NOT NULL,
  `schedule_no` int unsigned NOT NULL,
  `is_funding` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `funded_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedules_prospect_id_index` (`prospect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci,
  `fee_rate` decimal(10,2) NOT NULL,
  `collection_rate` decimal(10,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `terms_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms`
--

LOCK TABLES `terms` WRITE;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_responses`
--

DROP TABLE IF EXISTS `ticket_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket_responses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` int NOT NULL,
  `user_id` int NOT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_responses`
--

LOCK TABLES `ticket_responses` WRITE;
/*!40000 ALTER TABLE `ticket_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_responses` ENABLE KEYS */;
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
  `admin_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `severity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `needed_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'O',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `under_writing_task_notes`
--

DROP TABLE IF EXISTS `under_writing_task_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `under_writing_task_notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `under_writing_task_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `under_writing_task_notes`
--

LOCK TABLES `under_writing_task_notes` WRITE;
/*!40000 ALTER TABLE `under_writing_task_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `under_writing_task_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `under_writing_tasks`
--

DROP TABLE IF EXISTS `under_writing_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `under_writing_tasks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `under_writing_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `mandatory` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `under_writing_tasks`
--

LOCK TABLES `under_writing_tasks` WRITE;
/*!40000 ALTER TABLE `under_writing_tasks` DISABLE KEYS */;
INSERT INTO `under_writing_tasks` VALUES (1,1,'Client Application',0,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(2,1,'Business Name Search',1,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(3,1,'Term Sheet',2,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(4,1,'UCC1 Filing',3,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(5,1,'Client Contract',4,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(6,2,'Client Approved',0,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(7,2,'Accounts Payable Aging Review',1,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(8,2,'Accounts Receivable Preliminary Review',2,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(9,2,'Bank Verification Done (Including Signor Authorization)',3,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(10,2,'941/940/943 And State Returns Reviewed',4,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(11,2,'Corporate Tax Returns Reviewed (If Required)',5,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(12,2,'Background Check Completed',6,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(13,2,'Personal Financial Statement Reviewed',7,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(14,2,'Miscellaneous Lien Search On Officers',8,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(15,2,'Taxes Lien Search',9,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(16,2,'Preliminary UCC Lien Search',10,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(17,2,'Picture ID Reviewed Matches Company Info',11,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(18,2,'Company Name and Officer Search Complete',12,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(19,3,'Explained Debtor Approval Process',0,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(20,3,'Client Advocate Assigned',1,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(21,3,'Onboarding Call Initiated',2,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(22,3,'Review of App.frontlinefunding.com website',3,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(23,3,'Explained Frontline Funding Procedure and Process',4,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(24,3,'Example Invoice',5,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(25,3,'Customer Ownership Document',6,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(26,3,'Account Receivable Aging',7,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(27,3,'Customer Contracts',8,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(28,3,'Customer List',9,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(29,3,'Voided Check',10,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(30,3,'Welcome Email',11,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(31,3,'Form 8821',12,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(32,3,'Form W-9',13,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(33,4,'General Liability Insurance',0,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(34,4,'Schedule Of Assigment',1,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0),(35,4,'Notice Of Assignment',2,0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL,0);
/*!40000 ALTER TABLE `under_writing_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `under_writings`
--

DROP TABLE IF EXISTS `under_writings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `under_writings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `prospect_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `under_writings`
--

LOCK TABLES `under_writings` WRITE;
/*!40000 ALTER TABLE `under_writings` DISABLE KEYS */;
INSERT INTO `under_writings` VALUES (1,1,'Sales',0,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL),(2,1,'Underwriting',1,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL),(3,1,'Onboarding',2,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL),(4,1,'Implementation',3,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL),(5,1,'Daily Operations',4,'2022-10-06 12:02:52','2022-10-06 12:02:52',NULL);
/*!40000 ALTER TABLE `under_writings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_roles_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'Super Admin','2022-10-06 10:01:53','2022-10-06 10:01:53',NULL),(2,'Client Advocate','2022-10-06 10:01:53','2022-10-06 10:01:53',NULL),(3,'Client','2022-10-06 10:01:53','2022-10-06 10:01:53',NULL);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int NOT NULL,
  `prospect_id` int DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@email.com','admin',NULL,'$2y$10$nouhwzYiJFPAd4valjW4JOVyAgY9fufXEc4K.o1Ob84Qh0fAMyhzC',1,NULL,'9aTp8gZscCRyAqPOaaAaC7xfioZ66wAJRR5qonC5HfuxXojEqCDOoDxL0iXq','2022-10-06 10:01:53','2022-10-06 10:01:53',NULL),(2,'Saad Nadir','saad@9ostech.com','snadir',NULL,'$2y$10$cICVOHG24hx8/qmnGppnLu0FntLSnOB3P36ujLEY8o2rx/Z47qwQO',1,NULL,NULL,'2022-10-06 10:01:53','2022-10-06 10:01:53',NULL),(3,'Areej','areej@9ostech.com','areej',NULL,'$2y$10$Uy3zmvMJ9Wx3gaxblo4kjey4yb0q46OwAToxkb7d5LSqKnGMhdYd2',2,NULL,NULL,'2022-10-06 10:01:53','2022-10-06 11:45:22',NULL),(4,'Zainab','zainab@9ostech.com','zainab',NULL,'$2y$10$sRqJKa3UdCe2oGrGrzTFq.Tljw9vhkkBbzg//g2DpM9s5pNZLOGhy',2,NULL,NULL,'2022-10-06 10:01:53','2022-10-06 11:45:40',NULL),(5,'Shanice Williams, Owner','areej@frontlinefunding.com','shanice williams,_owner796',NULL,'$2y$10$ThfPHZzFrzj/r64aMzX2quaEMFw1AmosK5Ay95rzw3N0FIQa2gBDS',3,1,NULL,'2022-10-06 12:32:51','2022-10-06 12:32:51',NULL);
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

-- Dump completed on 2022-10-07 16:20:12
