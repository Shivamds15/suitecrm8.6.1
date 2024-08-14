-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2024 at 05:20 AM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shivcrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('42194b72-08a9-80ca-c0ad-66a4d234467d', 'ddsds', '2024-07-02 10:58:37', '2024-07-27 10:58:37', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, '', NULL, '', '', '', '', '', NULL, NULL, NULL),
('d5dabe3a-74b2-95e1-c94a-66a4d20a3f56', 'ffrEDFSDFSD', '2024-07-27 10:58:57', '2024-07-27 10:58:57', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', NULL, '', '', '', NULL, '', NULL, '', '', '', '', '', NULL, NULL, NULL),
('d6a8cb98-aed3-5809-e5fb-66a4d2ee0506', 'fsfsdfdf', '2024-07-31 10:58:51', '2024-07-27 10:58:51', '1', '1', '', 0, '1', '', '', '', '', '', '', '', '', '', NULL, '', '', 'fdsff', NULL, '', NULL, '', '', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('42194b72-08a9-80ca-c0ad-66a4d234467d', 0.00000000, 0.00000000, NULL, NULL),
('d5dabe3a-74b2-95e1-c94a-66a4d20a3f56', 0.00000000, 0.00000000, NULL, NULL),
('d6a8cb98-aed3-5809-e5fb-66a4d2ee0506', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('1016b7f1-3aac-bdb7-838e-66a497a72308', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Accounts', 'module', 90, 0),
('1023d35c-8ee2-6bef-eca9-66a49789b9ff', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('102ed7e9-d1b1-eea3-349e-66a497d1175f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Calls', 'module', 90, 0),
('10b3c65d-9d42-d475-576e-66a497c96ddf', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'SurveyQuestionResponses', 'module', 90, 0),
('10e63e26-6262-6b13-7740-66a49781ed60', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'ExternalOAuthProvider', 'module', 90, 0),
('11265f1b-9b8b-9f6e-299d-66a497196711', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Prospects', 'module', 89, 0),
('115d24a0-3134-38af-2ad1-66a497b1350f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('1188dd34-116b-37f1-9077-66a497855bf7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('1237cdeb-e879-a798-1d8b-66a4975dac80', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('12b90b50-fd4a-c38e-d5d5-66a497e279bd', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('139d41e3-76da-ca5a-9cc8-66a4974bb3a0', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Accounts', 'module', 90, 0),
('13f561fe-0cc3-eb55-71e3-66a49710bec5', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Calls', 'module', 90, 0),
('1476c85d-5045-5ecc-db8a-66a497dca58a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('14c11541-f5f9-cadc-d4db-66a497ebed55', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Prospects', 'module', 90, 0),
('14de183a-be1d-4857-5258-66a497dc5473', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'SurveyQuestionResponses', 'module', 90, 0),
('15519cf9-b508-cd27-54b3-66a497c4a6a1', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('157e4aa8-5669-aa06-9d14-66a497774177', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('15925573-0bb0-9a5e-d246-66a4976f199e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'ExternalOAuthProvider', 'module', 90, 0),
('162f1ef8-bbd2-caaa-2c62-66a497dc0302', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Leads', 'module', 89, 0),
('1650b917-7bbc-a397-2271-66a49762fccb', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Alerts', 'module', 89, 0),
('165d8ed3-6bcf-e84b-fedb-66a497d93823', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('171d2223-6b33-f277-1fbb-66a4976ac439', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Calls', 'module', 90, 0),
('1747c3a1-8274-4b75-e748-66a497594efa', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('184fe7ad-b030-203c-6f57-66a4976de6b7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Prospects', 'module', 90, 0),
('18ddf41f-a299-bed1-7fbd-66a4976c7d53', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('193c52c3-2981-06d5-1f0e-66a497939c1b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Leads', 'module', 90, 0),
('195b478c-2da5-176b-ad30-66a49712076f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('198ccbe2-2725-b6f3-6740-66a49734a1b6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Calls', 'module', 90, 0),
('1993ade5-987f-0134-ca31-66a49786ef04', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Alerts', 'module', 90, 0),
('199885c9-1860-f6cb-4f85-66a4971d9a1d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('19a4e8ca-f8e2-9061-bb3b-66a497d0b5bf', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'ExternalOAuthProvider', 'module', 90, 0),
('1a105c93-3886-0387-7825-66a497597dce', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('1a3b2564-9d24-d9a8-7258-66a497e6522f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'SurveyQuestionResponses', 'module', 90, 0),
('1b5dd0d5-507d-6810-88ad-66a497715832', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('1c27b7d3-9034-79f5-b326-66a497012793', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('1c35391c-c152-cbcc-cf4a-66a497bcb5a2', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('1c54d46e-4f41-3751-eddc-66a4977b423f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('1cdbcd77-2466-ec84-02b7-66a497e2a19c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Leads', 'module', 90, 0),
('1cf3d15f-7bdf-d31e-160b-66a4976d960c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('1cf40933-f098-85a0-5678-66a49773370a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Alerts', 'module', 90, 0),
('1ddb8aa4-965b-b533-f7f5-66a49738547f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('1e5c3cd4-a6d6-5875-32d1-66a497b979b3', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'ExternalOAuthProvider', 'module', 90, 0),
('1f15c04d-f079-a28f-987b-66a497b0e80b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('1f399a04-64e9-0206-a30c-66a497b60fe3', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('1fab2dee-490e-6726-8a37-66a49765d961', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('1fc576b4-aad7-5817-3b05-66a49782ab88', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'SurveyQuestionResponses', 'module', 90, 0),
('2078100c-f3e5-f24f-9fcc-66a49799d563', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Leads', 'module', 90, 0),
('208ffd78-b72e-dc61-9c3e-66a497461917', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('211afe02-137f-a987-f2cc-66a4970d7367', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('211db468-6ec1-0571-1021-66a4971090a4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Prospects', 'module', 90, 0),
('214048d7-c50d-a96f-383c-66a49730764e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'EAPM', 'module', 89, 0),
('21b52265-e95e-6e94-bd81-66a497681277', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('22372468-7bbb-0df2-eb19-66a497fc5db1', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('23cfee55-6d84-3864-600a-66a49742de42', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Leads', 'module', 90, 0),
('245e7896-1547-17b5-fee1-66a49723697c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('248732ce-6fbb-59bd-67af-66a497fde5c0', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Prospects', 'module', 90, 0),
('24a0fc0c-90a2-8f40-131a-66a49742b9be', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('24be2904-5705-b619-30ca-66a49727a1aa', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'SurveyQuestionResponses', 'module', 90, 0),
('2513416a-a8c6-3136-9e7f-66a497c5fadd', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('253e8e80-efc5-39be-c5f5-66a497a57c09', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'EAPM', 'module', 90, 0),
('25ba960d-6fdf-343c-cbf0-66a497b1e1b9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Project', 'module', 89, 0),
('261c5c67-16f6-6ee3-6311-66a49716e1e2', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('27824dfd-269d-dc68-4840-66a497936030', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Leads', 'module', 90, 0),
('27f70401-068c-702f-425f-66a497637b14', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('2817549f-eab8-e921-710f-66a497e22716', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('282a33e7-edd1-a487-e6ea-66a497a0eda8', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Alerts', 'module', 90, 0),
('2908c2a3-278a-08e1-6737-66a4974b238a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Project', 'module', 90, 0),
('2938f886-a3aa-772e-2d27-66a497e0ef49', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'SurveyQuestionResponses', 'module', 90, 0),
('29a3625c-6392-e907-74cf-66a497c52905', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('29b1f594-1366-587d-01da-66a4975d1b28', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'EAPM', 'module', 90, 0),
('2b00d869-368b-1735-c1ea-66a497538e68', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('2b9ba57e-2e62-543f-b3bd-66a497aad4d7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Alerts', 'module', 90, 0),
('2b9d426b-28de-09e9-1864-66a497bd7538', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('2c0669aa-6bbb-4c1c-f13a-66a497f7450f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Leads', 'module', 90, 0),
('2d064824-2a77-7007-9e55-66a497b6fb70', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Project', 'module', 90, 0),
('2d9dd175-660f-55b7-b6d7-66a4973a6d93', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('2e7c8d9e-0569-57af-7770-66a4979db1fd', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('2ec2beba-bfa8-ece4-7cd4-66a497462ea6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'SurveyQuestionResponses', 'module', 90, 0),
('2f24c8fe-5124-1477-a04b-66a4978e8658', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('2f8598c3-ffd2-46ac-d5b3-66a497518cc9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('2fc3a9b4-002c-df9d-7b27-66a497be22fc', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('30b43292-8b42-478b-dfb7-66a49707ae89', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Project', 'module', 90, 0),
('31135eb6-0eb3-b380-87e7-66a4978b10ac', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('32e0c1f5-9106-38ea-812e-66a4976424c9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('33139edf-b648-949c-31d2-66a49742f030', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Emails', 'module', 89, 0),
('344e7ed9-ca64-2c5d-1ccc-66a497c5358f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Project', 'module', 90, 0),
('34b5321d-26fb-1cc5-4dc5-66a497cb0e75', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('34cadaf6-3f11-0451-1116-66a497e1338b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('36682483-c0b7-eb6a-b92e-66a497fd61d3', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Emails', 'module', 90, 0),
('37b6fae0-e017-7dc5-27f3-66a497c11fbd', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('37bd55a1-7ef3-7c53-423b-66a4974777d8', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Project', 'module', 90, 0),
('37ef646d-5d64-dbf1-3dc8-66a497c81ce9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'EAPM', 'module', 90, 0),
('39538da5-c21e-7ce7-b324-66a4972b7605', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Emails', 'module', 90, 0),
('3960935a-6923-b1d9-63d4-66a49795282a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('39e34e6b-1ee4-c430-3fb5-66a497b46ead', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('3a3f8d5e-e0ca-f1f4-d030-66a497660d67', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Project', 'module', 90, 0),
('3b93623b-86a7-860c-af54-66a4975b43d1', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('3bbd40e6-8918-d103-f5f0-66a4972b723e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('3c24ee04-ef9c-2c74-eb60-66a497b01cc4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'EAPM', 'module', 90, 0),
('3cfa98f8-250d-b88f-a1ca-66a497ad4fc2', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Emails', 'module', 90, 0),
('3d2996a3-3fda-3ccd-03f2-66a497241e25', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('3df1642b-61d6-4615-eb56-66a497f3638a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('3e590152-0392-80f8-0356-66a4971365bd', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('3e8001a8-da53-9977-a81b-66a4970ad0dd', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('3ed25948-2980-6322-a43b-66a4976ccd3e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('3ef47fc6-7582-662d-e203-66a497eeffd7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('3f9909fa-83df-eb88-a05d-66a497d59853', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('40330266-5fad-ce8d-0e12-66a497a44c6f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('406a7ca6-a505-90b7-8668-66a4970a9498', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Emails', 'module', 90, 0),
('40d4bbc3-90e1-76ec-ebb5-66a49709d5b3', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('41007a1e-dcf3-73c8-9d29-66a497755b44', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('4184ff51-40e1-012e-b732-66a4971317c2', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('4269fa71-377c-4d7c-83e9-66a497f80f18', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('42d577e8-b6e7-c9d3-23f4-66a497e549b8', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('43a00ccf-91af-a822-5d37-66a4975be0f0', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Accounts', 'module', 90, 0),
('43acb4a9-4a73-1e1e-cff9-66a4973cd5b8', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Emails', 'module', 90, 0),
('448c3327-46cb-01d6-5276-66a49779044a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('44c8186d-fb67-6413-bd6d-66a49787614b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('44ced1f1-ceff-8c8f-d7bb-66a4977564b1', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('45495614-4249-9cf4-1eab-66a4971db236', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('45ff3345-d37d-7059-a66f-66a497d09c2a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('468b0df7-e723-495c-5400-66a497433d6d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('46c384f9-48c6-6f41-bddf-66a497c76229', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Emails', 'module', 90, 0),
('46c7b61e-1dea-82bb-f60e-66a4978aba33', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('47cdaee2-df06-c99c-dbdf-66a49797e8e4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('483089b1-4f66-712a-5486-66a497740c1c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('48759f6e-315c-9b6f-a93e-66a497f6f054', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('497ba396-6b94-33d9-b5fb-66a4974ab9ff', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('49918392-efc5-a065-fe45-66a4979cf853', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('49b1f7c7-5771-06c6-18d7-66a49733a476', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('49bc7f3f-131c-5f1c-7e94-66a4976862e9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('4a16cd1e-3f5d-013f-0606-66a4977f2fb2', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('4a4a052f-f1c8-e07f-1c26-66a497858cec', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Accounts', 'module', 90, 0),
('4a544761-f487-f35b-c855-66a4975b8d90', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Documents', 'module', 89, 0),
('4af77365-4e6e-9cc8-b623-66a497f84c6d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('4b152a61-d856-2b59-0576-66a4973d8b13', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('4b3ef252-bf7b-693d-722f-66a497745ac4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('4bf395c5-6b7b-6740-a3a4-66a497797a0c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('4d52a95e-310c-99cd-9543-66a497e95393', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('4d5825d8-f190-e13b-77ea-66a497585ac3', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('4d8597f3-fc3f-b31a-f6fc-66a49771c14b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('4d9fa3a0-4fda-a050-22bb-66a497b96b66', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('4e153e42-352c-ab4a-e1ea-66a497b00127', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Documents', 'module', 90, 0),
('4e71975f-4bd1-d652-52a3-66a497d2a569', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('4ec479d4-d764-b93d-255f-66a4972b0e65', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('4f1b06c1-e31d-0eb2-02cc-66a4973cd7e0', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('4fd880d5-b0e7-272c-8d2c-66a4978557a9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'SurveyQuestions', 'module', 89, 0),
('4ff0009b-5996-87e1-359a-66a497189bca', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0),
('501a1d37-1215-77cc-a921-66a4972b001a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('50e310be-4416-501f-fe8f-66a4979c438c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('513ae186-9aaf-9c39-5a45-66a497552cd9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('51420cda-fa9b-6c7c-9c6b-66a4970f7b71', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('51499b59-5acb-1197-01ee-66a4970ccc78', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('51c4fde0-ee2a-cb88-e6ef-66a497183c6f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('51ca5280-ce4a-032c-ebcf-66a4973a6d49', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Documents', 'module', 90, 0),
('52cc9bc9-0910-b3a1-5ccd-66a4971d8677', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('54472a66-54fa-5cfd-929a-66a497d526d4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'SurveyQuestions', 'module', 90, 0),
('548d1fb4-589d-1c52-3208-66a4970e324a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('54c8aadd-694c-97af-c55d-66a497e184c4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('55a31a4f-a038-2c83-04b1-66a4975a801e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Documents', 'module', 90, 0),
('56277638-c704-b105-a193-66a49740dfa6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('56656a91-c333-a439-1bbe-66a4977e5ee1', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('567aa2c0-1af2-be7e-a711-66a49722a264', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('576cb5b0-ad90-0d0f-eadd-66a49785f656', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('583a2870-fcb5-4487-9e49-66a49764ecc6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('59001576-7816-859a-aae6-66a497c9aea8', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Documents', 'module', 90, 0),
('590f068e-47e3-4dc7-efd9-66a4978afe4f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'SurveyQuestions', 'module', 90, 0),
('59c853f5-5c1b-4223-0bfe-66a497e52d61', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('59e0839f-e1be-039e-bbbb-66a49708ce95', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('5ac309f0-6f6c-a3b0-7a6d-66a49798f1d4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('5b5ebc08-fa30-403d-5077-66a497f11c54', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('5be2bd13-981e-4dad-a42e-66a497df390f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('5c272705-6554-c49d-4e17-66a497940db7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Documents', 'module', 90, 0),
('5cab880c-6fed-e769-9ea5-66a497b8ec15', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('5d04ddda-c884-64b4-db74-66a497db5912', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('5d426848-4a74-1f4e-8abf-66a4973daf5b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'SurveyQuestions', 'module', 90, 0),
('5dbc7266-37c2-b8bd-5291-66a49772c3f0', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('5ecd358e-7d11-7690-b654-66a497386c31', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Documents', 'module', 90, 0),
('5f57db4e-eab3-d2ac-aae9-66a49703085a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('5fe0e1d0-1cca-8ff0-7baf-66a497c4fbe9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('6072c70a-8cc5-5620-c9a0-66a497f82ddc', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Cases', 'module', 89, 0),
('60bddd77-a33f-cec7-74ee-66a4976766d7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('61a57238-7ae9-5876-30eb-66a497cab0ad', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('61ff3560-9a56-6810-77c5-66a497a52216', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('624c5116-1e17-3575-eaac-66a497fb70ac', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'SurveyQuestions', 'module', 90, 0),
('640f0488-e543-f39a-53a6-66a497ad63a1', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('646ed7fa-4c06-f03f-ffc0-66a49775f78a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('64a6780c-8f1c-acce-70f1-66a49771cffb', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Cases', 'module', 90, 0),
('64ce2db2-c6a2-71e8-599b-66a49744a998', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('666d0adb-495c-1806-13b4-66a49795f265', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'SurveyQuestions', 'module', 90, 0),
('673c487d-aaf4-ad67-36b4-66a497d32987', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('67700773-bc12-328e-bfe7-66a497070b98', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'ExternalOAuthProvider', 'module', 90, 0),
('680087f5-a6f6-65d9-185f-66a4972aa4ee', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Cases', 'module', 90, 0),
('69523123-c25f-634b-9f83-66a4978f1a4a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Meetings', 'module', 89, 0),
('69afe742-d856-e70d-2a16-66a4978a7feb', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('69f418ae-1e02-f992-fedd-66a4973c7fa9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('6b7eed86-1fcb-2a1c-e292-66a497653bdd', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('6b89cd95-fadf-e15a-2eb8-66a497999489', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'SurveyQuestions', 'module', 90, 0),
('6c3cc98a-ff82-5699-2959-66a497aa57aa', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Cases', 'module', 90, 0),
('6ca805da-9bcf-ebbc-c60c-66a497621199', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Meetings', 'module', 90, 0),
('6cfebbee-b7ae-e186-06d6-66a49756d3d5', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('6d8c07b1-2237-79fa-533e-66a4978c1c7a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('6dfd31ef-3d89-6798-4b25-66a49707fd7a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('6e217adb-088e-74a5-c720-66a4974d0a2f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('6f200e59-86c7-340f-8e13-66a4974667c3', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('6f88f1d3-43a2-075b-2220-66a497c55c27', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Meetings', 'module', 90, 0),
('6f969031-85fb-5e40-3fc1-66a497efb18f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('6fa7ed94-d588-07f4-6bba-66a497435332', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Cases', 'module', 90, 0),
('7028e2d3-507f-da2d-709d-66a497dd2d24', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'SurveyQuestions', 'module', 90, 0),
('7113a9a3-6baf-4484-9ae3-66a497ae7779', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('72ea9321-1920-cb61-0886-66a497effe68', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('733d1c15-afdd-1556-8b7f-66a4972ef108', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('73722869-e133-7687-6a28-66a497a667f0', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('73f1a7c8-be0f-32f1-a7da-66a497129f20', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Cases', 'module', 90, 0),
('742467e2-f08d-0409-dd98-66a49720ae18', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('74790c91-453a-1669-9777-66a49748112b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'ExternalOAuthProvider', 'module', 90, 0),
('7582bab0-4397-0c8a-9164-66a4979c9a34', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('762ba8b9-d7da-b60d-886e-66a497bde68e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('769679c0-1c96-ecc6-a3df-66a497f11f69', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('77237707-8595-d505-5b6b-66a497a86a0a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Cases', 'module', 90, 0),
('77c451cb-0bcd-5d3c-6a8c-66a49743e631', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('783237b4-da57-eb9b-1203-66a497aaed33', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('79f82fce-629a-16f5-28f9-66a497faaaee', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('7a9b9dbd-06a5-e135-3c51-66a49793b69b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('7acf481f-25eb-c7f2-bd2c-66a49786a350', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Meetings', 'module', 90, 0),
('7ad005cf-0966-314a-af73-66a4974672c9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('7b5f5d3a-3655-39c3-75b3-66a4979c62be', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('7cbf56a3-c3e4-0fdb-2dda-66a497e46397', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('7dc8dffc-79cd-9c59-7295-66a497eec614', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('7dfd32c5-e550-0b06-4573-66a497dd6d74', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'SurveyResponses', 'module', 89, 0),
('7eb16c0f-384b-1923-f855-66a4978f586c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Meetings', 'module', 90, 0),
('7f85d46c-881d-8ffe-d471-66a497339293', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('7fb31b0b-ad51-f9cb-335a-66a4973f49c4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('80d1bbd2-5505-a7c2-07ff-66a49775040f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('81c40e4d-9868-8562-a456-66a497aa3b7f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Calls', 'module', 89, 0),
('81f22042-7be1-99ea-1317-66a497b24571', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'SurveyResponses', 'module', 90, 0),
('82344ab7-09c1-6e37-f626-66a497f0a533', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('828262a2-a4ff-54a4-d891-66a497d979a5', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('83ec22e8-341f-48d0-8a41-66a497a4c971', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'FP_events', 'module', 89, 0),
('83fcbf38-de21-7ee2-5a67-66a4970bff97', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('84db70b9-f614-1f1c-6c73-66a497ba6041', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('851c0656-76b0-5c66-b85f-66a497728d54', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('85226f13-8320-9ad2-a845-66a497c0c52d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'SurveyResponses', 'module', 90, 0),
('868f847b-be25-73e6-9ad5-66a497225c22', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('86ca30ad-1766-b21b-8b90-66a49761bbe6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'FP_events', 'module', 90, 0),
('87fe74c6-537c-b2c1-60e5-66a4979a1715', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'SurveyResponses', 'module', 90, 0),
('88648e9a-df8f-013b-a946-66a49795b110', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('88960589-b9c4-30fc-7101-66a497d66b50', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('88a0e6b4-ac3c-1b0e-f9a0-66a49796ccdd', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('890fe2e1-4378-5502-3d97-66a497ca5008', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'FP_events', 'module', 90, 0),
('8ad44e11-c826-fcbd-11cb-66a497d3c61e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('8b7256ef-3113-1ae4-3e61-66a49745f95b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('8b776e3b-1b6b-bbca-19a4-66a497ad675b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('8bb3e016-d15f-d0fb-fac4-66a49771df90', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'SurveyResponses', 'module', 90, 0),
('8c470311-6ecf-46bf-375b-66a49783498a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('8dd43961-ca7c-556f-f8cc-66a49725ab1b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('8ec6325a-c345-9ff0-a015-66a497b8813e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'SurveyResponses', 'module', 90, 0),
('8f0784f0-14b8-2259-3d44-66a497d38cce', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('8fa547d1-799b-fd8e-60f9-66a497c65588', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'SurveyQuestionOptions', 'module', 89, 0),
('90101bad-f3c4-e5c1-730e-66a4979c02bc', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('91110b3f-778d-b696-964c-66a4976e05e4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'InboundEmail', 'module', 89, 0),
('91e520b4-5045-cc1c-2d77-66a49776664d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('9247382b-1425-c15c-c3d8-66a497dcd7c9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('92e8fe13-4b4e-3937-2f96-66a497d7bee2', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'FP_events', 'module', 90, 0),
('93a804bd-2814-d650-2bad-66a4973e97d4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'InboundEmail', 'module', 90, 0),
('93b1e685-9d35-42b3-817c-66a4971dc1e7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'SurveyResponses', 'module', 90, 0),
('9520df69-0f0a-4d11-535a-66a4973e026e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'SurveyQuestionOptions', 'module', 90, 0),
('95889b20-ff33-c31e-c244-66a497097921', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('9654cb60-d0ec-c125-b7ef-66a497efb3b5', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('9654eab4-67b9-a80c-5561-66a497885407', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'FP_events', 'module', 90, 0),
('9738092a-4fee-d5d6-4796-66a4972393f4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('97398076-0d20-bd61-c746-66a497109dcb', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'InboundEmail', 'module', 90, 0),
('984c46f1-fa69-45e7-9810-66a49717be6c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('989e7bc2-7253-f7aa-7e81-66a497ba4cfe', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'SurveyResponses', 'module', 90, 0),
('9907fd64-d9a1-2a67-ab71-66a497ab67cc', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('99673bf5-c18f-f88c-6706-66a497d39c57', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('9a4d6fce-9021-da8a-34d6-66a4971a77d9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('9a59f7e4-91b4-2d2e-d07a-66a497c9b461', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'InboundEmail', 'module', 90, 0),
('9a7120ec-371c-96d2-5ba8-66a4972a1eb8', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'SurveyQuestionOptions', 'module', 90, 0),
('9acbf9b3-e942-358f-73a8-66a49745cb4b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('9bcdbd53-f079-8bbd-04c3-66a497928340', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('9bebbbbe-5f8f-0bc2-e259-66a4979bb517', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('9c8cc7bc-28c0-ff1b-c410-66a497dc112f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('9ce281a1-2b1f-20ad-11d9-66a4970d4396', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Tasks', 'module', 89, 0),
('9d97d58b-46ef-35a0-aa66-66a4977dd62d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('9df96f77-4bc6-e9ac-e426-66a497b5f4e8', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('9dfa8fa5-5813-461d-ffd3-66a497854e9d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'InboundEmail', 'module', 90, 0),
('9e024b94-0f88-3baa-872b-66a49792d6d1', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('9e4e299a-747f-560f-b823-66a497274233', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'SurveyQuestionOptions', 'module', 90, 0),
('9f512f57-de42-4101-c188-66a49773c20b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('9fb99049-73c9-b93a-3969-66a497464d42', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('9ff2b34f-35ec-cf10-e538-66a49739e727', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Tasks', 'module', 90, 0),
('a01e3109-35b4-3643-372f-66a497be5e0c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('a09f9b17-36e1-7489-314a-66a497a4355b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('a1095f8c-4842-7fa6-df22-66a4970b2722', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Bugs', 'module', 89, 0),
('a1a960da-6533-d1d2-dac4-66a4979080f6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'InboundEmail', 'module', 90, 0),
('a1b1db28-6f0a-327d-90b7-66a497c2fe64', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('a20e3ffd-a38c-9cdb-eb04-66a497331bbb', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'SurveyQuestionOptions', 'module', 90, 0),
('a2d14443-4ab1-4c65-ff7a-66a49782fd77', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('a2d570e7-470c-26e6-f97c-66a4973534d0', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('a362babe-5ed2-0c8c-a617-66a497b0ea2e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('a3776630-12fd-36f3-fabb-66a497a77846', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Tasks', 'module', 90, 0),
('a3da9c54-a8b3-f01f-b974-66a4970b5da6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Bugs', 'module', 90, 0),
('a42769c1-105e-b35c-ac61-66a497f15851', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('a4fd4f0b-a9cc-70c0-2e13-66a497db67e3', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('a544647b-1284-150c-b8ba-66a497680571', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'InboundEmail', 'module', 90, 0),
('a5e9a9b8-8172-d093-d600-66a497aac616', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'SurveyQuestionOptions', 'module', 90, 0),
('a5ed5c5e-9d07-2a0e-54d1-66a4977ffe9c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('a66a03ac-ea71-d429-e718-66a4973316e0', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('a6938c2f-84cb-9fd3-e468-66a497fc2749', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('a6f614a8-6434-1af7-5caf-66a497959db8', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('a7722545-33a9-f593-6eef-66a497317e47', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('a7f802f6-7224-ec46-649c-66a49708d8bf', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Bugs', 'module', 90, 0),
('a840d6dd-4804-7ec8-148d-66a4977415fa', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('a8639998-86c5-94ca-5359-66a497276954', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('a9074fcf-1c41-1ae9-4e93-66a497fcb2cf', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'InboundEmail', 'module', 90, 0),
('a9727217-ccd2-67ca-bab2-66a4970d0916', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('a9e8a4f6-a45e-efc9-8a32-66a49796052a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'SurveyQuestionOptions', 'module', 90, 0),
('aa800eb8-67af-7211-5b69-66a497b3f827', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('aac11bbb-0103-8ade-8e4d-66a49780d1be', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('aaf89da9-c796-9009-dbb6-66a497d5a54e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('aafe4f7d-8928-8bff-b0fc-66a49710eaa9', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('ab113df4-a0b3-2ab6-eaaf-66a497beddc5', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('ab75084a-3686-acd0-bace-66a497e1a958', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('ac21fc9b-814a-1709-744f-66a49714dcd5', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('ac76ab2b-3801-557b-5b44-66a4970977e2', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('adfa4f7e-f9f9-2479-b3f5-66a497b469b6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'SurveyQuestionOptions', 'module', 90, 0),
('ae3e0ab6-924b-e10d-644d-66a49785c374', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('ae3fa203-9bed-24d9-1a4b-66a497f80b27', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('ae713be4-82b0-09f4-664f-66a497a8037b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Tasks', 'module', 90, 0),
('aeb33500-fe9e-3642-0c73-66a4973d1ac6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('af1312ad-4764-298a-01eb-66a497d1138b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('af15e03a-6e40-a60a-61a6-66a4977c7aec', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('af24987e-93e1-3a17-7524-66a497dbc034', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Contacts', 'module', 89, 0),
('af766b43-415a-8f6d-c66b-66a4975151e7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('af8f5d8f-7a68-2cd2-0938-66a497e169d4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('b08c345b-45a0-34e7-99a9-66a49763210b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('b107e990-dff5-bb17-92ad-66a497588afa', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('b1a10946-47a0-1662-4a58-66a49794bf52', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Calls', 'module', 90, 0),
('b1d57df1-17b8-66b1-dfce-66a497fe9624', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Tasks', 'module', 90, 0),
('b271fcf4-59f4-a5db-d9d4-66a4977d5d8c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Contacts', 'module', 90, 0),
('b27de0a5-d964-e65d-dbc3-66a497f02410', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Bugs', 'module', 90, 0),
('b2ee00ed-2f88-4c1b-9e07-66a497019b80', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('b3317c23-ff93-03ee-58b8-66a497edd0e8', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('b3b42083-e460-8193-5227-66a4974992af', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('b3d6e08d-1923-69cd-59fd-66a4979a4806', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('b3fb8d8e-1b2b-4df8-e93e-66a49749b800', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('b54d2e85-ff8b-b43c-8feb-66a4973ef5b3', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('b5657bb4-64e8-3cc9-7f1c-66a4975ec323', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Contacts', 'module', 90, 0),
('b5803a34-c057-39ec-f2c8-66a4970a7f36', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Bugs', 'module', 90, 0),
('b594987c-fc0a-3daa-6161-66a497e13d59', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('b70ea1cd-30ff-955e-24a5-66a4974bd42d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('b781b7f2-7319-1e67-e7a9-66a497a9f061', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('b808d104-15c5-d070-94f3-66a497d4ba9f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('b839feea-84a6-468c-15cd-66a497abf8c6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('b83c7bc4-ca44-783a-ca56-66a497d50628', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('b83eaa2a-273f-a7f8-6633-66a4970d9359', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('ba706eaf-a4c9-f0ab-f4f9-66a4971c0ded', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'ExternalOAuthConnection', 'module', 89, 0),
('bab3c3e8-066a-21f5-9016-66a497851494', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('bb322836-5555-9fee-952a-66a4977d8672', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('bbd2e3a9-87ef-621a-4e4d-66a4976e32d6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('bcfb3b65-50da-3f76-cd19-66a497385c12', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('bd38d665-412f-14f3-4aa1-66a4972735c7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Surveys', 'module', 89, 0),
('bdc3b566-5a28-b44e-2c3f-66a497eba562', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'ExternalOAuthConnection', 'module', 90, 0),
('beb58993-2687-9491-7c5d-66a4973c4329', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Contacts', 'module', 90, 0),
('bedb7e76-b91e-dd0a-5429-66a497074276', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('c027e822-e6ce-e737-899f-66a497265174', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('c11901b7-efd1-1c9f-37aa-66a49782afe2', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'SurveyQuestionResponses', 'module', 89, 0),
('c15c1436-b3e0-669b-b4f1-66a4975b25fc', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Surveys', 'module', 90, 0),
('c20ef726-cded-48e1-63ca-66a497d2a4d8', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Contacts', 'module', 90, 0),
('c21684aa-79ea-2dad-6e2d-66a497ab7225', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('c26be173-0bb2-041e-2324-66a497b90c91', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('c26d7cc0-1b87-fec2-611d-66a497a2b845', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'ExternalOAuthConnection', 'module', 90, 0),
('c2b3aeeb-d6f5-b501-622e-66a497579a55', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('c33f005f-9e57-cf7e-e41d-66a49717170a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('c47ff576-3750-77fd-1040-66a4977c2995', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('c5042801-d986-d178-ba47-66a4977a4d8f', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('c55913a0-e0cf-1b4f-d7af-66a4970216a3', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Surveys', 'module', 90, 0),
('c5759c15-06b3-5d3c-9728-66a497765416', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('c60fa8d5-7406-b94f-fbb8-66a49751dc55', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('c67281a5-7353-7d18-76fa-66a4976b10ea', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('c6f90944-ce8b-02a4-765d-66a497f6a18b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'ExternalOAuthProvider', 'module', 90, 0),
('c743f394-145c-d480-75ba-66a49743e75b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'ExternalOAuthConnection', 'module', 90, 0),
('c8c4229d-5bc7-b1ae-4d14-66a4979f5790', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('c9afc8db-c1a2-0a11-cb3a-66a497aa654a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Surveys', 'module', 90, 0),
('c9e75995-85bc-c21b-976b-66a49790f8e1', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('ca5d0ac4-12e8-2981-0b67-66a4975042f8', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('cbac62dd-9a33-0486-5a40-66a497c8313b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Notes', 'module', 89, 0),
('cbe41b26-c239-72e6-32b3-66a4975e1408', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'ExternalOAuthConnection', 'module', 90, 0),
('ccd4b990-eadb-b297-1b12-66a497115392', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('cd9eabf6-8d04-7de4-aebf-66a497372ddd', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('ce881f0f-fdc6-e296-7c7b-66a49783ec42', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Surveys', 'module', 90, 0),
('cec2f3d5-fa6d-ea6e-169a-66a49738b91d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('ceec0d6e-cfb3-9195-1e34-66a49777b031', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Notes', 'module', 90, 0),
('d0553114-dc9d-25c0-9847-66a4971be9c3', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'ExternalOAuthConnection', 'module', 90, 0),
('d05812a1-6166-6b0c-2f8b-66a49713831e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('d0fd09a5-fc55-a9a5-20a9-66a4976796d2', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('d214010f-f87b-56cd-d32d-66a497db769c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Notes', 'module', 90, 0),
('d2b170bb-f2a9-0cd7-0498-66a4973a701e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Surveys', 'module', 90, 0),
('d2ea01b2-d986-0959-ae26-66a497761603', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('d2ebe104-7d53-f4a6-b52c-66a49782cac6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('d4d8859b-331c-aa5d-5a55-66a4973b12b7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Notes', 'module', 90, 0),
('d52c91b4-aec0-59a4-05c8-66a497a51135', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'ExternalOAuthConnection', 'module', 90, 0),
('d588221b-4ba8-811a-53c9-66a497f0c7bc', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('d6e3007b-01ca-bb57-4f81-66a49791cb08', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Surveys', 'module', 90, 0),
('d6e312a8-9334-2a9d-dd11-66a4971baa6d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('d8431375-218b-0b9a-0da1-66a497464f82', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('d84575d7-73d8-1b4e-dbe1-66a4976e5b48', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('d86630db-a2bf-8fbb-1c4e-66a49708cc5d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Notes', 'module', 90, 0),
('d8b90ee9-bef9-0610-be39-66a497a1efbb', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Calls', 'module', 90, 0),
('d9b06589-d9e6-d13d-92c9-66a497918715', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'ExternalOAuthConnection', 'module', 90, 0),
('da44c2c2-77c9-9ac4-c8ef-66a4976d1b10', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('da9e8b7a-c2b2-a573-8db4-66a497338c78', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Surveys', 'module', 90, 0),
('dc14106a-a5e8-b4f7-b85f-66a497ec1f92', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Users', 'module', 89, 0),
('dc4d4e37-0821-852b-7a6a-66a49788a859', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Notes', 'module', 90, 0),
('dd734567-daae-dfb5-7ab6-66a4976fd22e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('dd7cbf1c-58c6-0eef-8f1e-66a4974b145b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('dec259f2-edd3-f5eb-c7f5-66a49772b040', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('df7baee8-2b90-bd31-1a19-66a4974b325c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Notes', 'module', 90, 0),
('df887b6c-57c5-f0a4-8b09-66a49734eb88', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'Users', 'module', 90, 0),
('e0c71670-ef8b-575a-c7b0-66a497044186', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('e1391012-4104-ba9d-2e62-66a497fad463', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('e31623b4-e69d-b77f-def4-66a49772d875', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('e3520bd9-3307-b102-4f37-66a49788dd4d', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'Users', 'module', 90, 0),
('e39c9367-f6d1-429d-73bd-66a497cd3bc0', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('e41d84df-e98b-57b1-8f8d-66a497ef2eb7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('e51436e4-515b-8767-0885-66a497a3a0fc', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('e59cd462-a27b-ee40-c31e-66a497e1b103', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('e6988501-ab19-cd70-be93-66a4974e98f1', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'Users', 'module', 90, 0),
('e821e85d-be42-89c1-6ba7-66a497ca61bd', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('e87c01d7-6117-5c7d-2bae-66a497c8004c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('e9817eaa-049b-5b6d-f49c-66a49703ec4b', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('e98bd92d-a0ec-a335-b4bf-66a4972f9f5c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'Users', 'module', 90, 0),
('ea88e7c1-e982-e6f6-9259-66a497b0fe71', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('ebf0af19-edbf-9401-be60-66a497319c6c', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('ec50a2a7-079c-1a15-abbd-66a49711eddc', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'Users', 'module', 90, 0),
('ed770e52-fdad-e395-55e1-66a4978f6572', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('ee463c00-b238-0544-f342-66a4973d6ab7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('ef45caf7-a120-5825-33e0-66a49793e232', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('efd22602-3de8-0d3b-b2f7-66a497523442', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'Users', 'module', 90, 0),
('eff107dc-7fdc-4a07-cc2a-66a4979253b0', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('f0550757-617c-ad00-fc7f-66a497c00eba', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'ExternalOAuthProvider', 'module', 89, 0),
('f07447d5-e20e-bdf5-4a54-66a497ea5aa5', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('f0785d20-b44e-9db3-d8f6-66a49732bac7', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'access', 'Accounts', 'module', 89, 0),
('f2b78462-d42f-7ef7-da6f-66a497669e04', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('f3920ba0-2b4e-a0e9-39d4-66a497c5f7f6', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('f3aace84-850e-ffcc-e5c9-66a49757a577', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('fd6f0e0d-c0b5-c30f-4fac-66a497583773', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL,
  `snooze` datetime DEFAULT NULL,
  `date_start` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int DEFAULT '0',
  `predecessors` int DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int DEFAULT NULL,
  `order_number` int DEFAULT NULL,
  `estimated_effort` int DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int DEFAULT NULL,
  `y_field` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` longtext,
  `pdffooter` longtext,
  `margin_left` int DEFAULT '15',
  `margin_right` int DEFAULT '15',
  `margin_top` int DEFAULT '16',
  `margin_bottom` int DEFAULT '16',
  `margin_header` int DEFAULT '9',
  `margin_footer` int DEFAULT '9',
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0',
  `run_on_import` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `cache_rebuild`
--

CREATE TABLE `cache_rebuild` (
  `cache_key` varchar(255) DEFAULT NULL,
  `rebuild` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int DEFAULT '-1',
  `email_reminder_time` int DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int NOT NULL,
  `tracker_count` int DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', ''),
('MySettings', 'tab', 'YTozMjp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjk6IkNhbXBhaWducyI7aToxMDtzOjU6IkNhbGxzIjtpOjExO3M6ODoiTWVldGluZ3MiO2k6MTI7czo1OiJUYXNrcyI7aToxMztzOjU6Ik5vdGVzIjtpOjE0O3M6MTI6IkFPU19JbnZvaWNlcyI7aToxNTtzOjEzOiJBT1NfQ29udHJhY3RzIjtpOjE2O3M6NToiQ2FzZXMiO2k6MTc7czo5OiJQcm9zcGVjdHMiO2k6MTg7czoxMzoiUHJvc3BlY3RMaXN0cyI7aToxOTtzOjc6IlByb2plY3QiO2k6MjA7czoxOToiQU1fUHJvamVjdFRlbXBsYXRlcyI7aToyMTtzOjE2OiJBTV9UYXNrVGVtcGxhdGVzIjtpOjIyO3M6OToiRlBfZXZlbnRzIjtpOjIzO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7aToyNDtzOjEyOiJBT1NfUHJvZHVjdHMiO2k6MjU7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7aToyNjtzOjE3OiJBT1NfUERGX1RlbXBsYXRlcyI7aToyNztzOjExOiJBT1JfUmVwb3J0cyI7aToyODtzOjE3OiJBT0tfS25vd2xlZGdlQmFzZSI7aToyOTtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7aTozMDtzOjE0OiJFbWFpbFRlbXBsYXRlcyI7aTozMTtzOjc6IlN1cnZleXMiO30='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'SuiteCRM'),
('system', 'adminwizard', '1');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(250) DEFAULT NULL,
  `reply_to_addr` varchar(250) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses_audit`
--

CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int UNSIGNED DEFAULT NULL,
  `imap_uid` int UNSIGNED DEFAULT NULL,
  `msgno` int UNSIGNED DEFAULT NULL,
  `recent` tinyint DEFAULT NULL,
  `flagged` tinyint DEFAULT NULL,
  `answered` tinyint DEFAULT NULL,
  `deleted` tinyint DEFAULT NULL,
  `seen` tinyint DEFAULT NULL,
  `draft` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `body_html` longtext,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('1486f512-8e1e-2165-7b47-66a497c44dac', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'off', 'Confirmed Opt In', 'Email template to send to a contact to confirm they have opted in.', 'Confirm Opt In', 'Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address', '<p>Hi $contact_first_name $contact_last_name,</p>\n             <p>\n                Please confirm that you have opted in by selecting the following link:\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\n             </p>', 0, NULL, NULL, 'system'),
('7be5fea6-ad73-388c-6647-66a497d10eaf', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('7e834d14-f32d-0b95-8abe-66a497432eb0', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('80e2cedc-dca1-911e-2842-66a497e32a3e', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, 'system'),
('8338de55-f5c7-333a-dbda-66a497e73169', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('86518eef-013b-d7af-a917-66a49707ddb4', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Description</td><td>$acase_description</td></tr>\n					    </tbody></table>', 0, NULL, NULL, 'system'),
('87cc16d0-16e8-d9b6-1b88-66a4977c731a', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'off', 'Two Factor Authentication email', 'This template is used to send a user a code for Two Factor Authentication.', 'Two Factor Authentication Code', 'Two Factor Authentication code is $code.', '<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>', 0, NULL, 0, 'system'),
('8e809d49-5a99-5817-42f1-66a497281c82', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, 'system'),
('9616b7e9-4a07-974a-c1f1-66a4976015ae', '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'off', 'User Case Update', 'Email template to send to a SuiteCRM user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\n					     <p> </p>\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>', 0, NULL, NULL, 'system'),
('a02ed451-6199-88be-2763-66a49709b60a', '2013-05-24 14:31:45', '2024-07-27 06:45:22', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\n$fp_events_description\nYours Sincerely,\n', '\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n', 0, NULL, NULL, 'system');

-- --------------------------------------------------------

--
-- Table structure for table `external_oauth_connections`
--

CREATE TABLE `external_oauth_connections` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `client_id` varchar(32) DEFAULT NULL,
  `client_secret` varchar(32) DEFAULT NULL,
  `token_type` varchar(32) DEFAULT NULL,
  `expires_in` varchar(32) DEFAULT NULL,
  `access_token` text,
  `refresh_token` text,
  `external_oauth_provider_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `external_oauth_providers`
--

CREATE TABLE `external_oauth_providers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `connector` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` text,
  `url_authorize` varchar(255) DEFAULT NULL,
  `authorize_url_options` text,
  `url_access_token` varchar(255) DEFAULT NULL,
  `extra_provider_params` text,
  `get_token_request_grant` varchar(255) DEFAULT 'authorization_code',
  `get_token_request_options` text,
  `refresh_token_request_grant` varchar(255) DEFAULT 'refresh_token',
  `refresh_token_request_options` text,
  `access_token_mapping` varchar(255) DEFAULT 'access_token',
  `expires_in_mapping` varchar(255) DEFAULT 'expires_in',
  `refresh_token_mapping` varchar(255) DEFAULT 'refresh_token',
  `token_type_mapping` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2024-07-27 06:45:22', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `email_body_filtering` varchar(255) DEFAULT 'multi',
  `server_url` varchar(100) DEFAULT NULL,
  `connection_string` varchar(255) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int DEFAULT '143',
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `sentFolder` varchar(255) DEFAULT NULL,
  `trashFolder` varchar(255) DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT '0',
  `move_messages_to_trash_after_import` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT 'basic',
  `protocol` varchar(255) DEFAULT 'imap',
  `is_ssl` tinyint(1) DEFAULT '0',
  `distribution_user_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `create_case_template_id` char(36) DEFAULT NULL,
  `external_oauth_connection_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint DEFAULT NULL,
  `failure_count` tinyint DEFAULT NULL,
  `job_delay` int DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `lawful_basis`, `date_reviewed`, `lawful_basis_source`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `converted`, `refered_by`, `lead_source`, `lead_source_description`, `status`, `status_description`, `reports_to_id`, `account_name`, `account_description`, `contact_id`, `account_id`, `opportunity_id`, `opportunity_name`, `opportunity_amount`, `campaign_id`, `birthdate`, `portal_name`, `portal_app`, `website`) VALUES
('1ceda764-56e7-6ca2-0b48-66a4d43b8725', '2024-07-27 11:04:14', '2024-07-27 11:04:14', '1', '1', '', 0, '1', 'Mr.', 'x', 'zxx', '', NULL, '', 0, NULL, '', '', NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '', '', 'New', '', NULL, '', '', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `leads_cstm`
--

INSERT INTO `leads_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('1ceda764-56e7-6ca2-0b48-66a4d43b8725', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int DEFAULT NULL,
  `duration_minutes` int DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int DEFAULT '-1',
  `email_reminder_time` int DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2clients`
--

CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT '1',
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int DEFAULT NULL,
  `duration_amount` int DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2tokens`
--

CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) DEFAULT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `reply_to_name` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `signature` text,
  `mail_sendtype` varchar(8) DEFAULT 'SMTP',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '25',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `smtp_from_name`, `smtp_from_addr`, `reply_to_name`, `reply_to_addr`, `signature`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`) VALUES
('3a127b9e-1cec-5f26-ece1-66a4975067db', 'system', 'system', '1', NULL, NULL, NULL, NULL, NULL, 'SMTP', 'other', '', '25', '', '', 1, '0', NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int DEFAULT NULL,
  `time_finish` int DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int DEFAULT NULL,
  `percent_complete` int DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int DEFAULT '1',
  `task_number` int DEFAULT NULL,
  `estimated_effort` int DEFAULT NULL,
  `actual_effort` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('101d2c2d-c002-3401-cd7a-66a4cff13e1c', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('106f09a8-01f0-9763-b855-66a4cfc6b7b7', 'securitygroups_externaloauthprovider', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthProvider', 0, 0),
('111f3eb1-19ac-7227-899a-66a4cf9015bb', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('11f79721-0cf6-e0b1-4b7e-66a4cf432a46', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('12ab1449-8c0d-e54b-95f1-66a4cf424b40', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('12f17b3a-2d71-56b6-3079-66a4cffd827e', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('13a85507-e41f-19e8-dd57-66a4cf4314ee', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15576539-9f57-ab67-fa28-66a4cf49a444', 'oauth2tokens_modified_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('15da80af-7c23-d47e-1fba-66a4cf76aa9f', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1665420b-eaf0-4616-0246-66a4cf8f7863', 'oauth2tokens_created_by', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16f13ad8-a806-d8b8-6d56-66a4cf1fdfb6', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1745b675-49e7-d5bc-4b81-66a4cf80c767', 'oauth2tokens_assigned_user', 'Users', 'users', 'id', 'OAuth2Tokens', 'oauth2tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17cd469f-6878-8910-5f14-66a4cfe81d9e', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18de999f-8bf8-1a6b-4952-66a4cf6dc3f7', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('19197d6d-a8bd-b385-3600-66a4cfd557b1', 'oauth2clients_modified_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('19a5b861-b455-7574-243b-66a4cf7c5ec0', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1a2ceb91-0079-46a8-0c90-66a4cf6c6b5c', 'oauth2clients_created_by', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b12406e-8efc-13ee-6b23-66a4cf1435c8', 'oauth2clients_oauth2tokens', 'OAuth2Clients', 'oauth2clients', 'id', 'OAuth2Tokens', 'oauth2tokens', 'client', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1c4493cb-a5a8-b62e-56a2-66a4cff3d356', 'oauth2clients_assigned_user', 'Users', 'users', 'id', 'OAuth2Clients', 'oauth2clients', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1d7a7ffc-9d0f-63fd-6a84-66a4cf371c0a', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1deda171-a1fc-aa57-1084-66a4cf877382', 'surveyresponses_modified_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e6f511f-595b-13b1-2bb2-66a4cfd54783', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1ed63f53-b250-41d7-c74b-66a4cf4fc2f1', 'surveyresponses_created_by', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f2f86ab-77cf-f70a-f992-66a4cf6d899f', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1fe5803a-de53-759a-8b17-66a4cfe6f306', 'surveyresponses_assigned_user', 'Users', 'users', 'id', 'SurveyResponses', 'surveyresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('20990e13-75db-b134-1990-66a4cf39f330', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('20d76a2b-ab67-8dd8-66c7-66a4cf14c007', 'securitygroups_surveyresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyResponses', 'surveyresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyResponses', 0, 0),
('20f2f4c5-3b03-beba-b81c-66a4cf0f3bf6', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('21d84359-d806-4adc-1b48-66a4cf36f9d7', 'surveyresponses_surveyquestionresponses', 'SurveyResponses', 'surveyresponses', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyresponse_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('21d99491-9bbd-f340-95d3-66a4cf193b94', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('229ce8ff-2a47-df82-7ca3-66a4cffa8046', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22ca6f58-0fc7-7aa3-fb72-66a4cfa81271', 'surveyresponses_contacts', 'Contacts', 'contacts', 'id', 'SurveyResponses', 'surveyresponses', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22e4e0df-404f-066f-bc98-66a4cfe85452', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23855aad-eead-fc10-f11c-66a4cf3e3245', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('23d024f1-f3b7-cc09-9138-66a4cf61870b', 'surveyresponses_accounts', 'Accounts', 'accounts', 'id', 'SurveyResponses', 'surveyresponses', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('245fc52e-b70b-a267-1129-66a4cf106c5c', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('24c8dfa0-ef1c-ffd7-0f87-66a4cf1b21f4', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('256d0a43-aedb-18fa-ead9-66a4cf93ba70', 'securitygroups_outboundemailaccounts', 'SecurityGroups', 'securitygroups', 'id', 'OutboundEmailAccounts', 'outbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'OutboundEmailAccounts', 0, 0),
('25920518-9975-01e2-3dbf-66a4cfe4796b', 'surveys_modified_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25f80537-0cfd-6fba-11eb-66a4cfe525d3', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26847b01-9b4c-7fb0-107a-66a4cfbcff76', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26a66925-47f6-ba6f-7d10-66a4cf49a3e6', 'surveys_created_by', 'Users', 'users', 'id', 'Surveys', 'surveys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('278d2944-b0ea-ef43-cb74-66a4cfb02b6b', 'surveys_assigned_user', 'Users', 'users', 'id', 'Surveys', 'surveys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('284b544c-1402-caa7-0dbd-66a4cfbdcefc', 'securitygroups_inboundemail', 'SecurityGroups', 'securitygroups', 'id', 'InboundEmail', 'inbound_email', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'InboundEmail', 0, 0),
('28652e63-52c2-f4fa-c34c-66a4cf0b4b04', 'securitygroups_surveys', 'SecurityGroups', 'securitygroups', 'id', 'Surveys', 'surveys', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Surveys', 0, 0),
('28fe94d5-edb1-965f-59bd-66a4cfcebcaa', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('296def33-a3af-1ff2-8dac-66a4cfe1f7dc', 'surveys_surveyquestions', 'Surveys', 'surveys', 'id', 'SurveyQuestions', 'surveyquestions', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('29af1584-bf26-b241-9315-66a4cf26b109', 'inbound_emails_distribution_user', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'distribution_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2a367693-66d2-540d-85a6-66a4cf13bc00', 'surveys_surveyresponses', 'Surveys', 'surveys', 'id', 'SurveyResponses', 'surveyresponses', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ac3b324-de17-5623-cffc-66a4cfae59aa', 'inbound_emails_autoreply_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2af32951-ef44-9d54-45ee-66a4cf1ef2c1', 'surveys_campaigns', 'Surveys', 'surveys', 'id', 'Campaigns', 'campaigns', 'survey_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b9b0d18-ede4-c924-8afb-66a4cf41cc42', 'inbound_emails_case_email_templates', 'EmailTemplates', 'email_templates', 'id', 'InboundEmail', 'inbound_email', 'create_case_template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c5920ab-c2dc-a208-6166-66a4cfc175f3', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('2c61d5c7-e72f-0da6-75b0-66a4cf539a13', 'surveyquestionresponses_modified_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c743136-68e4-c866-a1ce-66a4cf2a93ce', 'inbound_emails_external_oauth_connections', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'InboundEmail', 'inbound_email', 'external_oauth_connection_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d1a96a5-7400-e01e-7893-66a4cf0ce832', 'surveyquestionresponses_created_by', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2db0b7cb-a64d-db0f-efd8-66a4cfdf5538', 'inbound_outbound_email_accounts', 'OutboundEmailAccounts', 'outbound_email', 'id', 'InboundEmail', 'inbound_email', 'outbound_email_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2de881ab-e500-9dec-7392-66a4cfd25dc3', 'surveyquestionresponses_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2e74b326-8afd-d8ff-4ad7-66a4cfd3b857', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('2ea2dc94-001c-df6b-2818-66a4cf7a7099', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('2f234852-b2b0-c152-0ce9-66a4cfb52feb', 'securitygroups_surveyquestionresponses', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionResponses', 0, 0),
('2f8d3a16-6623-23bf-7c9d-66a4cf328498', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('2ffa2943-3f75-cc10-941b-66a4cf1327e3', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30db78da-2a52-5a7f-ddd4-66a4cfb9f72f', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3111161b-57f1-2d68-7917-66a4cfef62c4', 'surveyquestions_modified_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('320f0942-1fdf-c4fc-0465-66a4cfffa68c', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('321c4f69-e511-a92a-345d-66a4cfedb21f', 'surveyquestions_created_by', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32b4257e-b929-331e-839e-66a4cf7a4fb8', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32e7e036-4400-212c-e980-66a4cfce5c5a', 'surveyquestions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestions', 'surveyquestions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33024ea2-f3d5-9545-5b05-66a4cfe0b8ba', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('33a4ca1b-2ee9-3e8a-b43e-66a4cf1c6ded', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33a95bae-da34-65c0-62f2-66a4cf4bc96c', 'securitygroups_surveyquestions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestions', 'surveyquestions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestions', 0, 0),
('341b9faf-5ba6-75ef-d08b-66a4cf9804a3', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('347c7329-d16a-e694-ab0a-66a4cf277418', 'surveyquestions_surveyquestionoptions', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'survey_question_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('350d7ad1-d3ee-7770-b810-66a4cf4856fd', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('357d8c90-2450-490f-c4b6-66a4cfd03c82', 'surveyquestions_surveyquestionresponses', 'SurveyQuestions', 'surveyquestions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'surveyquestion_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('359d014e-9883-37f4-d81a-66a4cf643e30', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('35c7fd24-4165-7f12-2f0a-66a4cf655e1a', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3667038b-f166-fa00-50ef-66a4cf5731a3', 'outbound_email_owner_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('369786bd-feab-1999-ad5a-66a4cfa09ef5', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36d1666a-db1c-6f67-81f8-66a4cfe44728', 'surveyquestionoptions_modified_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('37a5b02b-62eb-9385-4c54-66a4cf63157e', 'surveyquestionoptions_created_by', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('37f8c007-e5eb-84af-6c9e-66a4cf34e2c5', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('381e3d99-db84-6108-db19-66a4cfbbe873', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38887721-14e4-b6ae-c81f-66a4cfbc56a9', 'surveyquestionoptions_assigned_user', 'Users', 'users', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3908da9e-ec0e-4914-2d24-66a4cfb5bcec', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39341774-7fba-60dc-3487-66a4cfd18ee5', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('394caffa-eab9-ff25-38bf-66a4cf477523', 'securitygroups_surveyquestionoptions', 'SecurityGroups', 'securitygroups', 'id', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'SurveyQuestionOptions', 0, 0),
('39ed877c-94fd-b8ce-d45f-66a4cfcb66d7', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3a587a68-4b12-2092-8ee8-66a4cfe5a5c7', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('3a5f2ff2-5e37-9d07-ac6b-66a4cf2d2eb8', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('3b331eef-c2c4-5e4f-4e2e-66a4cf1881a0', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b8340db-03d5-5ffa-75c3-66a4cf741afc', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('3be9ca2b-43eb-cf61-5b07-66a4cffc9f41', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3cd76ce5-8504-0540-d646-66a4cf9b87ed', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3cd7c17f-9bd3-f11e-fead-66a4cfd4d831', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('3dbfb022-529c-1638-d4af-66a4cf28376d', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('3eaa92e7-f583-7f90-92f8-66a4cf4340ae', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3eb08a3c-9b92-8427-e57d-66a4cf7d207f', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3eee199f-556a-01e5-a0b8-66a4cf5171ac', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('3fbd7c64-a3ef-3dce-8a8a-66a4cf9b1c38', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3fe7583e-cbb1-f08c-df8a-66a4cf1e816b', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('3ff89e08-d94a-66c4-746a-66a4cf42bb72', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4092947e-5e7f-93a8-c62f-66a4cf90308d', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('4130acff-ae92-6925-c8a3-66a4cfdee89e', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4133dee7-5584-5444-ec7f-66a4cf6f4782', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('41544b3d-dffc-d05e-890e-66a4cfe5313f', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('4222ce3e-b998-98d3-11c7-66a4cf7d7359', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('423a5998-3c6a-ae4f-bfcf-66a4cfb3b463', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('42aa81b7-e299-752c-3ff9-66a4cfbd841d', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('42f58507-90d6-89e6-926a-66a4cf2e3eda', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('433625a7-85b2-6746-045e-66a4cfa2b926', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('43fc8f50-64d6-9c51-3c2c-66a4cfa475e0', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('44280ad6-4055-23cd-f9b5-66a4cfcec27e', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('44322b08-d159-6cca-fa52-66a4cf025b68', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('445c2a8f-39a4-52e6-fa24-66a4cf4bb199', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('450d637d-916b-70ab-b98d-66a4cf264ad0', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('4559c82a-09dd-f1c6-97c4-66a4cfa804fe', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46103761-f82c-79e9-557f-66a4cf466081', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('463d41e9-cd13-ed41-4e1e-66a4cf8af8cc', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('463de0a4-9fe4-2f12-2dca-66a4cf2e8d83', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('470004c0-13da-7002-14e7-66a4cf9dcd77', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('473bc6ea-a067-f8ce-bef5-66a4cf2b5788', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('479601eb-ced3-29c8-f2ea-66a4cfdfd1c7', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('47add813-c88c-7283-a884-66a4cf96e607', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4825be25-b3f4-220d-61e3-66a4cfab96a6', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('489ebbac-7145-102c-b0f4-66a4cf371d57', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('48bf09cf-3488-bced-97e5-66a4cf4fef51', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4917595a-89b6-4512-d495-66a4cfac2d05', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('49878485-1103-99ac-04ee-66a4cfc6eb32', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a068ce8-5dd6-c7c4-0a64-66a4cfd0e8c7', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('4a091ba1-31ac-1858-e6b7-66a4cf528937', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('4abb14d7-abdf-7b6e-eb7e-66a4cf9fe284', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4aeed5ea-d135-7a5e-4716-66a4cf4d73f0', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('4b4f2eca-4e12-9481-6010-66a4cfec1801', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b6b51f1-60fb-94b5-5c02-66a4cf2cf068', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4bf29f90-8413-59dd-e2bf-66a4cf0cbf50', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('4c79fd7a-2667-3614-d8e7-66a4cf639f0f', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d05e23b-1236-8173-4379-66a4cf5bdf93', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('4dc1aa01-e8a5-acfe-2ac0-66a4cf46ea42', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e033f13-4156-0c3d-6c50-66a4cff0a3d2', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('4e58970e-bfbc-2c3c-94b7-66a4cf6d74ed', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e789a5f-9bdc-1cf4-47c2-66a4cf599a74', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f17f095-1513-e0c8-08bc-66a4cfac880f', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('4f3c3daa-63e1-06d8-7243-66a4cfd9e2d9', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f47a179-c7ea-b3ab-1377-66a4cf760cc5', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4fe44e95-e53f-a613-c68a-66a4cf4fc34b', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('5036420e-ea18-2d4a-6789-66a4cf388684', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('503827ce-7e77-ff02-d35f-66a4cf81f2ab', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('50c5b4ab-f441-0a74-298f-66a4cf2ab282', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('5104fef0-79e0-545d-408c-66a4cfcae9d0', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('518cc157-2170-f36e-8e64-66a4cfcc523a', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51b3ab53-a0b5-d9a9-7a2c-66a4cf560931', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('522adda8-46d9-a72b-625b-66a4cfd7757d', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('5241096d-8f22-5bff-5b73-66a4cfac1732', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('529f428e-30cf-544d-6fa1-66a4cfce0002', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('52fa74b9-9570-65e9-acf2-66a4cf559475', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('531cd005-a2d3-d612-adb2-66a4cf3bbe6b', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('536d4654-2a95-521a-ccce-66a4cf7e101e', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('53bedb97-a055-e04b-410b-66a4cf2c47ae', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('545c8116-a78a-5c83-807c-66a4cfdfd219', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('549b78ea-99b0-3e85-92a4-66a4cfb1b3b5', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('54aee0ee-a41c-2f64-f4db-66a4cf0e4782', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5543cfa9-7cbc-68b2-3d95-66a4cf273840', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('55884343-55de-cddf-47ab-66a4cf7e4abf', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('55f05333-cc7a-ab5d-d3b9-66a4cfbb9510', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56561e0e-6e95-8ae4-2c18-66a4cfad3c5b', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('56a00faf-f0ac-87f5-b6d9-66a4cf407a65', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('570e8408-84d2-7bf5-8749-66a4cfa4f9c0', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('570ea570-dde5-b9eb-99f7-66a4cf2a4258', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5770ee5c-a7a9-e3fc-188d-66a4cf5cad63', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('5822598b-274a-c6c8-54ba-66a4cf4625ed', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('585dedd0-0ff4-e7d5-a18a-66a4cfadfb7e', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('58a47979-425b-0867-b872-66a4cfc90036', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('58e98a2b-8dc1-1f71-6910-66a4cfa25c06', 'users_users_password_link', 'Users', 'users', 'id', NULL, 'users_signatures', 'user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('59392984-4e43-e072-c837-66a4cf07e966', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('59b01628-0c19-253b-2b61-66a4cf9a2339', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('59c280b4-29d8-8f3b-0433-66a4cf4430eb', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('59ff0649-c94c-9c16-7174-66a4cf47ee84', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('5a97f7d3-ad09-7d24-3e32-66a4cf00867a', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('5ac50866-5b5f-912d-3a05-66a4cffbed75', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ad9c5bf-631a-336a-4db4-66a4cfa8a762', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('5bdaa63f-4f58-38e6-8ab0-66a4cf87a51c', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5bedb3c4-0781-3b82-5cbd-66a4cfbc8c21', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('5c314ed6-0d74-64b0-639a-66a4cfcdd0c7', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('5cc624c2-6972-f269-5b99-66a4cf054dbd', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5cd1ec76-f13a-1129-7f60-66a4cf445c8e', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('5da7b143-6cfb-1e2c-3db5-66a4cfdffefd', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e056ad8-9227-fe00-25f3-66a4cfdefca0', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('5e22272d-d651-646a-0945-66a4cf1e3b8d', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5ebea8f6-88d8-b720-bf17-66a4cf8200ae', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5efe8f92-730f-399f-ad75-66a4cf2f03e9', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('5f300477-3c52-874e-ade3-66a4cf7bcec8', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5f7643ef-3aad-0d67-e2d1-66a4cfa7f406', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5fa420dc-32db-e99b-f2e9-66a4cfa1ee42', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5fe247f5-8efe-1e85-9623-66a4cf004f62', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('60cdc781-185f-5d49-1e88-66a4cfec70df', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60db683c-3c48-f7f1-90ea-66a4cf444c00', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('61332150-dc92-251d-4e9c-66a4cf98c966', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('61ef72b7-71bc-68cc-dd8b-66a4cfdf8b07', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('61f2a1b4-d797-a82b-8f90-66a4cf198fec', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('625c4b7f-be9a-4551-814f-66a4cf3ef8f8', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('62c0ced4-d75a-2e87-1d05-66a4cf663cf4', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('6362cc49-af98-af27-3f17-66a4cfaa8332', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('63a3723b-74cb-f69d-dee1-66a4cf6a5464', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('64632b6a-b90b-1074-8b27-66a4cf1c8234', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('6482bcc1-f412-48a7-9c03-66a4cf2fb291', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('655e855d-8ba4-9357-d473-66a4cf95dc7e', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('65a5f2c5-3c23-9f7c-fc6d-66a4cf7a98b9', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('66496815-179b-09c6-1f16-66a4cf3c873f', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6698d9ad-2244-2cca-ac6e-66a4cf63122c', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('66c2137e-9f73-ad98-c7ef-66a4cfc018d2', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('67309c29-9cbc-39ad-ef17-66a4cf537716', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67a7645a-9f9b-aee5-6034-66a4cfe6b10f', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('67b50fc7-6e07-b268-88d7-66a4cfc835f9', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('680ce0ec-01fa-7677-d84d-66a4cf2dcfd9', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6878e690-03dd-cab8-8ef7-66a4cf778248', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('68d9563b-5d46-a9ae-4768-66a4cf9eede5', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('699e3e9e-2aed-49ed-3b3e-66a4cf38b96e', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('69af0527-428c-c597-c7dc-66a4cfcc00be', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a9319f0-90ae-fc09-4785-66a4cf4eedea', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('6ad23144-a42c-baf1-b593-66a4cfb151b4', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b94b136-581c-3d29-ed9a-66a4cf13159c', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('6ba05fe9-0f56-9f6c-ef5d-66a4cfe46389', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('6bff3f26-ca63-119b-73d8-66a4cff123c6', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6c87b46e-ce0e-7202-4857-66a4cf87f8a4', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('6c8de5ae-49f1-6eb3-04d0-66a4cf59ba37', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('6ced3c6b-fa92-468f-3f90-66a4cfda6422', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d76336e-a7c6-babb-223e-66a4cf483643', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('6db748f2-68f1-b044-3559-66a4cf07620c', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('6e2904a8-d8b9-0572-962d-66a4cfcac056', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ebfa466-b08a-4d57-32b0-66a4cf964c33', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('6f38b6c2-9a2c-1258-f863-66a4cfe35d52', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('6f7b1855-9792-02a1-17be-66a4cf015919', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f9590eb-dba1-7fc3-95b5-66a4cf78137a', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('70449d64-273f-8268-046b-66a4cfcd7ca2', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('7065fd2e-984e-0f46-926c-66a4cfaaf7f5', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('70a9fd3b-f950-664a-399d-66a4cf95a652', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7133c8d6-2054-733e-5e33-66a4cf77fee9', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('71429d88-5d7d-9c42-30b5-66a4cf82d27d', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('71ca0614-17a4-b9ed-fed4-66a4cf326f25', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('721f951c-fd1c-fd29-70f6-66a4cf0aac47', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('725a9a04-c166-b2be-5a8a-66a4cf601406', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('72e20924-6d51-3465-6958-66a4cf3dc6cf', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('731c3278-c5c4-6305-3cb6-66a4cf15d4e1', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7344b4f5-a161-24e5-dafa-66a4cfb5d348', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('7426b76c-934f-0a1a-ea6e-66a4cf1031a1', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('743c4a1c-f041-2ff8-0f5e-66a4cffe0976', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('74880ff6-9b4c-f26f-7246-66a4cfce616f', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75384849-5ad9-abc6-4e6f-66a4cfea4332', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('753dba9d-aaad-ee2e-508f-66a4cf7ed5dc', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('75f0680d-39ed-b8d9-e92e-66a4cff48a49', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75f32e3b-6acf-8c95-fcef-66a4cfb1312f', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('764ec2e1-860f-8a02-91b2-66a4cf66f198', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('76d234ff-f997-d276-c363-66a4cfa045bd', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('76fa9777-6782-b1ac-1de8-66a4cff423d0', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7740120b-3894-02b7-217b-66a4cf10ab78', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('77ae3d69-4361-76ba-a124-66a4cf28f022', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77db86bb-761d-e79d-e3a6-66a4cf26c3ee', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78606dff-1058-f396-9a57-66a4cf62115b', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('787b330e-896d-b9af-48b3-66a4cf695e8e', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7923e025-1e4a-d2ee-a810-66a4cfd2e040', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('7945ede1-9f7e-f801-c076-66a4cf2e1bf7', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('7969a99e-ec7d-f03d-e7f8-66a4cfaea5b7', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a6acfa4-81f5-6ca9-42f5-66a4cf745450', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a6ba267-d3ec-64eb-f85c-66a4cf9bdeef', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7bb6a5ca-caa1-c17b-0893-66a4cf8a6e5c', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7bc92c4f-18c2-08e1-852c-66a4cfb9d33e', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7cba4e1e-f625-7f36-1d80-66a4cf29dc8d', 'campaign_notes', 'Campaigns', 'campaigns', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Campaigns', 0, 0),
('7cbefe4a-51ad-5e6e-70b1-66a4cfc26d3f', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('7cc59185-0ff6-f483-91f3-66a4cfd1bfaf', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d9a88ce-aec6-3601-a7d1-66a4cf696d66', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7df84f00-ac7a-fad5-b935-66a4cf893469', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('7e6b7135-c283-9326-3e82-66a4cf5d4f6e', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7e87f02b-4568-06b8-9da2-66a4cfc2ab4f', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f08039a-795e-46de-230d-66a4cf80c071', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('7f75e775-77ec-24d2-6044-66a4cf8ea903', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f8b2bde-8b7a-3c61-d7f5-66a4cf6f7f41', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('7f9eec63-3ce3-4cb8-c60a-66a4cf25a5d3', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80b038c2-a7d4-48de-5c67-66a4cf733281', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80e5852c-5c48-cb36-f4b0-66a4cf08c1bf', 'surveyquestionoptions_surveyquestionresponses', 'SurveyQuestionOptions', 'surveyquestionoptions', 'id', 'SurveyQuestionResponses', 'surveyquestionresponses', 'id', 'surveyquestionoptions_surveyquestionresponses', 'surveyq72c7options_ida', 'surveyq10d4sponses_idb', 'many-to-many', NULL, NULL, 0, 0),
('80f2f7e3-4637-22b5-6df7-66a4cf467684', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81966b22-81d5-5d20-0bcf-66a4cf5ede49', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81deb861-dbdc-0863-0a4d-66a4cf3595d1', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8287b4b5-9260-083b-2fd4-66a4cf155230', 'surveyresponses_campaigns', 'Campaigns', 'campaigns', 'id', 'SurveyResponses', 'surveyresponses', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83141e75-8cf3-69cc-2739-66a4cf2ffc25', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84005b24-888e-bf94-56ce-66a4cfb88cfb', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'ProspectLists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84b8c33c-ec44-5524-9c88-66a4cf63af71', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84ff7201-3882-da59-79e9-66a4cfed0f8d', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('85b2ffb6-02a3-a981-5365-66a4cf3129a4', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('876f1b2d-2205-f42d-e650-66a4cf260df0', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('87ccba20-fa2e-4b8e-53db-66a4cf16a3e6', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88756d28-289e-b416-8be2-66a4cfe38d7d', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('891d940f-4d2b-967c-d9e2-66a4cf05e803', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89516ea0-b4f8-e1bd-8546-66a4cf83ef42', 'securitygroups_aor_scheduled_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Scheduled_Reports', 0, 0),
('8a2b21bd-da0f-8a74-be9d-66a4cfd6879a', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b256b57-6f87-3e3d-4064-66a4cf8a0612', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('8b71a815-3232-f77c-2c45-66a4cfbf11fa', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8bf6d5c7-343c-78c1-8113-66a4cf8cc702', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('8c84f845-948c-a4c5-9542-66a4cf8891aa', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8cda2479-af66-9a81-992a-66a4cfbf2c2a', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('8da18ff5-17ce-2459-ed99-66a4cf56e3d7', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e019beb-dc4d-e21e-7fa3-66a4cf2100b1', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('8e8cb94d-d110-4d4c-e6ed-66a4cf77995a', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('8ee43547-8594-0f44-fe48-66a4cf844d1a', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('8fe04f88-2c02-e796-f845-66a4cf0da7ea', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('8fe9d9d3-d483-2137-830c-66a4cffe80a1', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('90b91d60-fa14-e6eb-0a64-66a4cfa3fcc2', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('910b4b96-9d4d-cc85-d960-66a4cfa337eb', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('917427b6-92f3-34c1-155f-66a4cfdec6d0', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('91eb0894-5b97-ac9a-8f14-66a4cf14777c', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('9239e77c-4e2a-4a46-fb20-66a4cffeb5b5', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('927afdb5-42ad-231d-a8a5-66a4cfdc49f7', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('92eb0858-2a54-d85f-1d35-66a4cfbe4945', 'externaloauthconnection_modified_user', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('93bc904a-1886-7680-d0d4-66a4cf6f7d25', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('94d57705-e2c0-caac-961b-66a4cf59fdc0', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('953a0f45-ae3f-fdf0-e666-66a4cfe38b1b', 'securitygroups_emailmarketing', 'SecurityGroups', 'securitygroups', 'id', 'EmailMarketing', 'email_marketing', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailMarketing', 0, 0),
('959fe6be-464f-4a5c-7725-66a4cfa802f1', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('96294871-85e7-56f3-985b-66a4cf77ca00', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9795bb3c-6ea7-75b7-57e9-66a4cf1a556f', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97b80754-1c42-a151-3da8-66a4cff442cb', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98a846db-40bf-3934-3583-66a4cf8b0328', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9992b81b-40bf-40b9-aa1d-66a4cfd343e4', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a6e2b73-d45e-0fed-ad89-66a4cfbb5b9a', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('9b73ea39-c4a9-9254-7bb6-66a4cfd2d98e', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c84b100-6894-9976-edbe-66a4cfcb18d4', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('9cb0bdb9-4af6-68a1-c8d4-66a4cfa361fe', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9dada88b-f016-b0b7-06e8-66a4cfe8d0e2', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e439df3-03f9-5e94-26e2-66a4cfe09149', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ef6b652-f8ac-81f4-9b29-66a4cf1a07be', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9fc695b2-6e88-a59f-1246-66a4cf249dd1', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a01462a6-fcf3-f487-c301-66a4cfc9ead4', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0430296-8013-a7b1-f03f-66a4cf553df6', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('a0fd7d47-304a-1915-6761-66a4cf76121c', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1c702eb-15fe-8b26-5c50-66a4cf0e9cd2', 'externaloauthconnection_created_by', 'Users', 'users', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a2319127-6b1d-078d-03a3-66a4cf7b6397', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('a2fbd0ac-484a-2646-ced2-66a4cff6ce5a', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a42a5e8b-1a16-8470-4edf-66a4cf7b57e6', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4972454-014a-0e3f-4934-66a4cf57a7ab', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5556d80-4dd2-1484-cb40-66a4cf1d47b9', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a5cf7405-b10c-dcaa-2ce7-66a4cf08e228', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a621639c-5e8d-9dfe-21c7-66a4cf6a29dc', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('a6f23c62-b6b1-07f0-6100-66a4cf177b40', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a79d9122-a1e5-3d87-9ab5-66a4cf8b0022', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('a80db031-7ee6-aaad-61f7-66a4cf7248b8', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('a89769d2-36f2-8696-fab9-66a4cf60f1f1', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('a8f43f31-4764-cc78-4706-66a4cf2f5576', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9dbff36-b197-b097-098c-66a4cf41e05e', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('aad76c87-e139-65e3-4206-66a4cf19e012', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab00a16a-c555-3cf5-32de-66a4cfa7367c', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('abff8bdb-77a4-d900-47d7-66a4cfb13037', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ac15982d-eda8-d733-b83c-66a4cffc7e21', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('accf8a5e-18ec-427b-70c7-66a4cf4ca1d7', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad6c913b-15a2-0ed8-8c37-66a4cfd80ec0', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('adc3859b-1a8c-27da-3c16-66a4cf96bca8', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('ae835aef-0d43-0a09-db6e-66a4cf3b32ad', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('aed48db6-1497-57ab-fa36-66a4cf8b2e34', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af8fa8fb-f82d-6ca2-de99-66a4cf8dbf0a', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('b0c71d2a-d9c7-4a00-6d10-66a4cfd707ca', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('b12533ac-dca5-1852-b579-66a4cf0013da', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1be090f-5655-7407-7c05-66a4cf63e2da', 'securitygroups_externaloauthconnection', 'SecurityGroups', 'securitygroups', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ExternalOAuthConnection', 0, 0),
('b1e2649b-c0ae-b569-e57b-66a4cf287351', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b23406b0-b111-0593-8e4d-66a4cf3f7e60', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b2c7cab0-d801-4358-c9e0-66a4cf401c52', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b31da5a9-c923-d22b-46a0-66a4cfc38cdc', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3f57925-421a-0e25-f120-66a4cf91238c', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4411e6f-2d2f-9ed1-0525-66a4cff4971e', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4b92a9f-a361-2527-0c57-66a4cfae89e3', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b5e5a09f-2ea6-54b7-fb95-66a4cf679a9d', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b6f5c694-d0ae-53d9-433c-66a4cf087446', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7e0811a-9265-ebb4-2f48-66a4cfc759de', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8d78620-083b-d233-597f-66a4cf403fbd', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9542cef-7bd3-0474-5af7-66a4cfab2ebd', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba572f9c-60da-31a3-b3a8-66a4cf575d59', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb568c5e-4e82-ee52-1d44-66a4cfb20e41', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb733a7f-2e21-49ed-c72b-66a4cf22763b', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bc675b6a-4fa6-1678-d3ee-66a4cfd752ce', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('bcd80943-167b-9fb3-e359-66a4cf4f9e84', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Meetings', 0, 0),
('bcf2cb1b-89fa-5a37-b117-66a4cf6b28de', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd64a7ee-68ef-fcb2-8e68-66a4cfec8568', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('be482141-12c0-c7f8-9824-66a4cfddb4d4', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be68b73b-a83b-1c70-4d7b-66a4cf1af01f', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('bf324e6c-9d03-5017-73cb-66a4cf1e4ac0', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('bf7eb7ca-f94d-4c58-b374-66a4cf1aa855', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c04d0490-9ad4-4be9-782b-66a4cfda4f44', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c079af8b-b14b-1f3d-72e1-66a4cf9a39a4', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1060cf1-8efe-33ca-bf46-66a4cf408bf2', 'external_oauth_connections_external_oauth_providers', 'ExternalOAuthProvider', 'external_oauth_providers', 'id', 'ExternalOAuthConnection', 'external_oauth_connections', 'external_oauth_provider_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1395ac5-bcbb-b3f4-72c2-66a4cf221a07', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c18c72f3-fabe-f0ea-799e-66a4cffd77b2', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c272572c-817b-d800-6b1a-66a4cfcb5f42', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c2c080a6-39e4-ef75-c21e-66a4cf8d5473', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c38c71a8-7693-7586-0378-66a4cfc10789', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c3a5c95b-d642-e5ef-c5b1-66a4cf7b59bf', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c474bf58-ed8d-bfef-addf-66a4cfe33a5b', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c57a6407-a808-8f87-7905-66a4cfa0af8d', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c58a2e63-ab3b-bfee-38f8-66a4cf2405b1', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c67b8d24-cd87-6a6c-55d9-66a4cfd03364', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c698fec1-b45c-34ed-4581-66a4cf8b93ad', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c75d6c66-a82f-ffc8-1c5b-66a4cf5cf0cb', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c786fc66-1844-8051-ec9b-66a4cf177ef9', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('c86d14d3-37e6-1bf2-903f-66a4cf34a28b', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('c8a7cba6-6639-ec28-84de-66a4cf9fcbb5', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c959852b-362a-c7b6-a3ff-66a4cfd1171c', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9a0f4c6-a540-7073-d289-66a4cff5c3c6', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca7a598c-36f6-658c-045c-66a4cff95529', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca8df55a-4ae4-d7a2-54e0-66a4cf9476e7', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb58d2f9-d152-f730-0bf9-66a4cfcde4c5', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ccddab58-c792-c7eb-f578-66a4cfd4d5ab', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cdf8b19c-dcc6-5f27-23bf-66a4cfa25bdd', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce920114-a2b7-ac07-8893-66a4cf554820', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf8f9a81-1f83-02b3-cd7f-66a4cfa77537', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d075403d-f2eb-fe63-3585-66a4cfbdd3b8', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d0e3a5e3-9c09-a963-cdaa-66a4cf88386a', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d18b05c5-1aae-c34b-51a9-66a4cf90089b', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d2201bad-f3e7-c4d3-f8fa-66a4cfb032c9', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('d3274a11-afbd-c704-b80e-66a4cf0c4739', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('d372ce1b-af56-142f-f121-66a4cff24299', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d43f7856-8489-9282-1819-66a4cf6bde52', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('d47b31d5-a8c8-9e56-a65b-66a4cfc02307', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d51b1252-cdd9-182a-32de-66a4cfda40f3', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('d564e4e9-f02b-6074-3097-66a4cf1256e6', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6021127-0e48-5a17-b142-66a4cf5f1b13', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('d666ff6c-e678-3700-5889-66a4cfb98b30', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('d6eadd92-cddc-ede5-757a-66a4cf9b0853', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('d73778b0-950e-1a02-dd28-66a4cf8f0c43', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('d7e0108b-07f3-9d95-fb77-66a4cf395c01', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d800d631-e1e6-01cd-f63c-66a4cf8fd353', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('d8ecf0c3-8c80-8c83-a777-66a4cf28b59e', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('d94d4d24-f8f3-ea3d-fba2-66a4cfb87955', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d9d4124d-6321-6b96-a30a-66a4cf08ebfb', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('da4f4993-24ee-3f65-c496-66a4cff9e1c4', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('db0fb0f1-90f9-412a-c7aa-66a4cf21d186', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('db7a43ef-06fd-1e6f-bc72-66a4cf6c348e', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dbf60fbe-3edb-7756-7903-66a4cfb5ae5d', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('dcf3991d-0105-1140-9155-66a4cf91f055', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('dd84c0ed-fde5-b1ab-1138-66a4cfba15e3', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ddd1d5aa-a0ea-d2d6-b520-66a4cf551baa', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e0187523-3283-37d2-27a1-66a4cf646f6c', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0d740c0-4e40-92d6-2123-66a4cf65c38b', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('e132192e-0852-003e-dfcc-66a4cfafaec9', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e1fb79fc-4cce-8522-86c0-66a4cfd2ef43', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2110ca6-b1be-9066-3bb9-66a4cf2c725b', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2ea0f14-2b50-97ba-6ba0-66a4cf2d1504', 'externaloauthprovider_modified_user', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2f23df9-7857-77f4-4ec7-66a4cfa10d75', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('e3cb4615-af18-3c37-6711-66a4cfb1d728', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e4de51d8-8e08-151e-9166-66a4cf3f52ea', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e4fed6e3-694d-de26-cf98-66a4cf8167b0', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('e5ecd05d-87cf-1732-e945-66a4cf41f70b', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e5f47af2-253d-4b0a-fc25-66a4cf87d675', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6d04635-9f12-fdce-44d5-66a4cf10f2f9', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e718bc95-2ec2-9760-2974-66a4cf0d736c', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e7d1d316-f984-4f7e-7af0-66a4cf2869be', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('e937307c-6a96-ffa8-7b30-66a4cf947861', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e9ccc588-7f00-831d-f8a1-66a4cf8ae104', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ea5576af-b2ee-b52b-6678-66a4cfe3af4c', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb102f47-46f1-7c40-d8b3-66a4cfb57cd0', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb5b9b06-f8aa-87ef-f239-66a4cf1583d4', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ecb9b2f3-1436-74ce-01ff-66a4cfd82a07', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('ecc357eb-a54b-9a45-51e6-66a4cf9cb187', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ed430333-5f7a-80a7-59e6-66a4cf1bacb1', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee30eacf-4277-0aff-8b49-66a4cf7238ae', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('ee65e134-e9e1-ea63-5dd1-66a4cfd58869', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef5c51b7-5751-3a00-1bd0-66a4cfd584b7', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef6f5d7a-aa1a-69c9-31d5-66a4cf911cac', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f04a939e-4fd8-898a-1a5f-66a4cfd035b9', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0b3b4c3-3efe-a9a9-a046-66a4cfa80c53', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f214deef-6482-00f5-5d68-66a4cfaf4674', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f24d457e-ff0e-0859-9a46-66a4cfe923dd', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3677fbc-3f6e-5806-016c-66a4cf17febe', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3951548-8869-baf2-7840-66a4cf3782cb', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f8500734-eadc-5fb5-e764-66a4cf5191e9', 'externaloauthprovider_created_by', 'Users', 'users', 'id', 'ExternalOAuthProvider', 'external_oauth_providers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int DEFAULT '-1',
  `popup_viewed` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `quick_filter` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('4c464033-7a64-a1a8-ec3e-66a497555a8c', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Process Workflow Tasks', 'function::processAOW_Workflow', '2015-01-01 09:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('4f287e6a-9463-0cb6-37eb-66a49795fd29', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Run Report Generation Scheduled Tasks', 'function::aorRunScheduledReports', '2015-01-01 10:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('527f8a63-1ff9-f45a-2cfc-66a497ddbbee', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2015-01-01 16:45:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('55595305-bf82-ef6e-7042-66a497447210', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2015-01-01 14:30:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('588396fb-cfb9-fa04-b779-66a497a276b5', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2015-01-01 06:30:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('5bb892eb-a847-a4ea-44eb-66a4978386c6', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2015-01-01 10:00:01', NULL, '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('5eb2462a-4c57-cb98-5042-66a497c0bc6e', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2015-01-01 12:15:01', NULL, '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('61ec8de5-7950-a008-2771-66a4974e9185', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2015-01-01 17:00:01', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('64d9ef2e-651a-4fd2-28e7-66a497c5aac2', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2015-01-01 17:45:01', NULL, '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('67d64d41-635e-7f88-7fd0-66a4977cb145', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2015-01-01 13:45:01', NULL, '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('6aa8a1d9-b40e-a6a9-e9ee-66a4970e8c0f', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Prune SuiteCRM Feed Tables', 'function::trimSugarFeeds', '2015-01-01 08:15:01', NULL, '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('6ddc94b7-156e-ade6-974b-66a4978a6289', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Google Calendar Sync', 'function::syncGoogleCalendar', '2015-01-01 16:15:01', NULL, '*/15::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('7166d2a0-4ded-5f15-01f6-66a4971a435e', 0, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Perform Elasticsearch Index', 'function::runElasticSearchIndexerScheduler', '2015-01-01 07:00:01', NULL, '30::4::*::*::*', NULL, NULL, NULL, 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('228b40af-985d-30e8-0451-66a4d46c6fea', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:1ceda764-56e7-6ca2-0b48-66a4d43b8725:x zxx]', '2024-07-27 11:04:14', '2024-07-27 11:04:14', '1', '1', NULL, 0, '1', 'Leads', '1ceda764-56e7-6ca2-0b48-66a4d43b8725', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions`
--

CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_audit`
--

CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses`
--

CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestionresponses_audit`
--

CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions_audit`
--

CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses`
--

CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses_audit`
--

CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'LBL_DRAFT',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `surveys_audit`
--

CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `templatesectionline`
--

CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(1, '2923aa2b-2cad-6e8e-590c-66a4bb286dad', '1', 'Users', '1', 'Administrator', '2024-07-27 09:17:01', 'editview', 'kvn7kb5rmcfjua8lpa43v977pa', 1, 0),
(2, '4e11159c-9bec-0126-7740-66a4bb2b6fdd', '1', 'Users', '1', 'Administrator', '2024-07-27 09:17:02', 'detailview', 'kvn7kb5rmcfjua8lpa43v977pa', 1, 0),
(3, 'ac313a4d-5c03-299d-cbc8-66a4d239dedb', '1', 'Accounts', '42194b72-08a9-80ca-c0ad-66a4d234467d', 'ddsds', '2024-07-27 10:58:38', 'detailview', '8p7n8tkf31evfsj2lo29oan1mj', 1, 0),
(4, '725c020c-03d0-abb3-4dc0-66a4d2f7b9c3', '1', 'Accounts', 'd6a8cb98-aed3-5809-e5fb-66a4d2ee0506', 'fsfsdfdf', '2024-07-27 10:58:52', 'detailview', '8p7n8tkf31evfsj2lo29oan1mj', 1, 0),
(5, 'e3e3e824-1958-b774-7ac9-66a4d2aa9b6d', '1', 'Accounts', 'd5dabe3a-74b2-95e1-c94a-66a4d20a3f56', 'ffrEDFSDFSD', '2024-07-27 10:58:58', 'detailview', '8p7n8tkf31evfsj2lo29oan1mj', 1, 0),
(6, '11dd1670-f0cb-a1ca-56f2-66a4d39450f0', '1', 'Accounts', 'd5dabe3a-74b2-95e1-c94a-66a4d20a3f56', 'ffrEDFSDFSD', '2024-07-27 11:00:44', 'detailview', '8p7n8tkf31evfsj2lo29oan1mj', 1, 0),
(7, '465abb63-ef4e-8e56-f934-66a4d4a30794', '1', 'Leads', '1ceda764-56e7-6ca2-0b48-66a4d43b8725', 'Mr. x zxx', '2024-07-27 11:04:15', 'detailview', '8p7n8tkf31evfsj2lo29oan1mj', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`, `factor_auth`, `factor_auth_interface`) VALUES
('', 'adminn', 'adminn', NULL, '2024-08-08 06:40:58', NULL, 1, NULL, NULL, 0, 0, 1, NULL, '2024-08-08 06:40:58', '2024-08-08 06:40:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('1', 'admin', '$2y$10$88uG0vpSOQvqpL1cbl39zusMOtObxOjgoXEq0FCbTPXd/bodjHsxu', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2024-07-27 06:45:22', '2024-07-27 06:45:22', '1', '1', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `keyhash` varchar(255) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('345944c7-234d-124f-91af-66a49706a208', 'Home', 0, '2024-07-27 06:46:09', '2024-07-27 11:10:06', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImRhMDkzYzExLWFiMDgtYzNlMy02YjYyLTY2YTQ5NzA3ODg5NyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImRhNjJkZTI3LTFlMWEtYzZhOS0wN2U3LTY2YTQ5Nzg5NGMwYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImRhYzJiNTIzLWI4MjQtMTU3Ni1hZmUwLTY2YTQ5N2NiMWQ5MSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImRiNmI3ZTIwLWMwZDMtMWQwOC0yNDY0LTY2YTQ5N2U0NmU5MyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZGJkODAxMmQtNjRiZS00NjhiLTNiZmMtNjZhNDk3Y2RhOWZlIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiZGNhZmUxN2MtMjE2MS0xMWFmLTNmNWEtNjZhNDk3MWVhMjg4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJkYTYyZGUyNy0xZTFhLWM2YTktMDdlNy02NmE0OTc4OTRjMGMiO2k6MTtzOjM2OiJkYWMyYjUyMy1iODI0LTE1NzYtYWZlMC02NmE0OTdjYjFkOTEiO2k6MjtzOjM2OiJkYjZiN2UyMC1jMGQzLTFkMDgtMjQ2NC02NmE0OTdlNDZlOTMiO2k6MztzOjM2OiJkYmQ4MDEyZC02NGJlLTQ2OGItM2JmYy02NmE0OTdjZGE5ZmUiO2k6NDtzOjM2OiJkY2FmZTE3Yy0yMTYxLTExYWYtM2Y1YS02NmE0OTcxZWEyODgiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImRhMDkzYzExLWFiMDgtYzNlMy02YjYyLTY2YTQ5NzA3ODg5NyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('3a4a25f2-a29a-cb97-1362-66a497a4b6c3', 'Home2_CALL', 0, '2024-07-27 06:46:09', '2024-07-27 11:10:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3fc17ea8-9f79-c9ea-915b-66a497c0f1bc', 'Home2_MEETING', 0, '2024-07-27 06:46:09', '2024-07-27 11:10:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('444beff8-d978-29af-bbef-66a4977b894d', 'global', 0, '2024-07-27 06:45:22', '2024-08-13 07:05:24', '1', 'YToyMzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjQyNTNkYWVlLWJmZjktMDY3OS1hZDkzLTY2YTQ5NzMxZWE1MyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoxOiJtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjtzOjI6InV0IjtzOjE6IjEiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjM6Im9mZiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTA6InVzZXJfdGhlbWUiO3M6Njoic3VpdGU4IjtzOjI6InVpIjtzOjI1OTE6Insibm9vcCI6Im5vb3AiLCJhY2NvdW50cy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImFjY291bnRzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImFjY291bnRzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiREVTQyJ9LCJjb250YWN0cy1saXN0dmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2UsImNvbnRhY3RzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImNvbnRhY3RzLWxpc3R2aWV3LWN1cnJlbnQtc29ydCI6eyJvcmRlckJ5IjoiIiwic29ydE9yZGVyIjoiTk9ORSJ9LCJvcHBvcnR1bml0aWVzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjp0cnVlLCJvcHBvcnR1bml0aWVzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sIm9wcG9ydHVuaXRpZXMtbGlzdHZpZXctY3VycmVudC1zb3J0Ijp7Im9yZGVyQnkiOiIiLCJzb3J0T3JkZXIiOiJOT05FIn0sImxlYWRzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjp0cnVlLCJsZWFkcy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJsZWFkcy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6IkRFU0MifSwicXVvdGVzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwicXVvdGVzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sInF1b3Rlcy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6Ik5PTkUifSwiZG9jdW1lbnRzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiZG9jdW1lbnRzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImRvY3VtZW50cy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6Ik5PTkUifSwiY2FtcGFpZ25zLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiY2FtcGFpZ25zLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImNhbXBhaWducy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6Ik5PTkUifSwibWVldGluZ3MtbGlzdHZpZXctc2hvdy1zaWRlYmFyLXdpZGdldHMiOmZhbHNlLCJtZWV0aW5ncy1saXN0dmlldy1jdXJyZW50LWZpbHRlcnMiOnsiZGVmYXVsdCI6eyJrZXkiOiJkZWZhdWx0IiwibW9kdWxlIjoic2F2ZWQtc2VhcmNoIiwiYXR0cmlidXRlcyI6eyJjb250ZW50cyI6IiJ9LCJjcml0ZXJpYSI6eyJuYW1lIjoiZGVmYXVsdCIsImZpbHRlcnMiOltdfX19LCJtZWV0aW5ncy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6Ik5PTkUifSwiZXZlbnRzLWxpc3R2aWV3LXNob3ctc2lkZWJhci13aWRnZXRzIjpmYWxzZSwiZXZlbnRzLWxpc3R2aWV3LWN1cnJlbnQtZmlsdGVycyI6eyJkZWZhdWx0Ijp7ImtleSI6ImRlZmF1bHQiLCJtb2R1bGUiOiJzYXZlZC1zZWFyY2giLCJhdHRyaWJ1dGVzIjp7ImNvbnRlbnRzIjoiIn0sImNyaXRlcmlhIjp7Im5hbWUiOiJkZWZhdWx0IiwiZmlsdGVycyI6W119fX0sImV2ZW50cy1saXN0dmlldy1jdXJyZW50LXNvcnQiOnsib3JkZXJCeSI6IiIsInNvcnRPcmRlciI6Ik5PTkUifSwiYWNjb3VudHMtcmVjb3Jkdmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6dHJ1ZSwibGVhZHMtcmVjb3Jkdmlldy1zaG93LXNpZGViYXItd2lkZ2V0cyI6ZmFsc2V9IjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6NzoiRW1haWxzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO319'),
('45426221-0393-53e8-f0eb-66a4978c98ef', 'Home2_OPPORTUNITY', 0, '2024-07-27 06:46:09', '2024-07-27 11:10:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('46f4a502-f80d-7cf6-e070-66a497dd4163', 'GoogleSync', 0, '2024-07-27 06:45:22', '2024-07-27 09:17:06', '1', 'YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),
('4b7cbb5d-a356-6fa6-2c1d-66a497402125', 'Home2_ACCOUNT', 0, '2024-07-27 06:46:09', '2024-07-27 11:10:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('50ca3f14-94cc-dcfb-789d-66a4976c39f6', 'Home2_LEAD', 0, '2024-07-27 06:46:09', '2024-07-27 11:10:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('55827716-363f-9086-3a75-66a497fafbdf', 'Home2_SUGARFEED', 0, '2024-07-27 06:46:09', '2024-07-27 11:10:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6acd651f-0cfe-9f2b-ee17-66a4d1a930cf', 'Assistant', 0, '2024-07-27 10:51:46', '2024-07-27 11:10:06', '1', 'YTowOnt9'),
('86eb0358-a419-bf3f-ca68-66a497a93ccb', 'Home2_LEAD_dcafe17c-2161-11af-3f5a-66a4971ea288', 0, '2024-07-27 06:46:11', '2024-07-27 11:10:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bac35034-809b-b66e-dcf6-66a4bb85e369', 'Dashboard', 0, '2024-07-27 09:17:05', '2024-07-27 11:10:06', '1', 'YTowOnt9'),
('db6b9d5d-f458-3878-8d24-66a4bbdd93cb', 'Emails', 0, '2024-07-27 09:17:05', '2024-07-27 11:10:06', '1', 'YTowOnt9'),
('ff0806af-ad07-6f0c-3a15-66a4d2c4cbe8', 'ModuleBuilder', 0, '2024-07-27 10:55:27', '2024-07-27 11:10:06', '1', 'YTowOnt9');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indexes for table `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Indexes for table `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indexes for table `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Indexes for table `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indexes for table `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indexes for table `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Indexes for table `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Indexes for table `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indexes for table `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indexes for table `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indexes for table `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indexes for table `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indexes for table `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indexes for table `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indexes for table `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indexes for table `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indexes for table `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indexes for table `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indexes for table `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indexes for table `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`),
  ADD KEY `idx_survey_id` (`survey_id`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  ADD KEY `idx_email_cat` (`category_id`),
  ADD KEY `idx_email_uid` (`uid`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addresses_audit`
--
ALTER TABLE `email_addresses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_addresses_parent_id` (`parent_id`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `external_oauth_connections`
--
ALTER TABLE `external_oauth_connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `external_oauth_providers`
--
ALTER TABLE `external_oauth_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indexes for table `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indexes for table `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indexes for table `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indexes for table `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indexes for table `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Indexes for table `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indexes for table `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indexes for table `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indexes for table `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth2clients`
--
ALTER TABLE `oauth2clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth2tokens`
--
ALTER TABLE `oauth2tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indexes for table `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Indexes for table `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indexes for table `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indexes for table `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indexes for table `surveyquestionoptions`
--
ALTER TABLE `surveyquestionoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionoptions_audit`
--
ALTER TABLE `surveyquestionoptions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionoptions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestionoptions_surveyquestionresponses`
--
ALTER TABLE `surveyquestionoptions_surveyquestionresponses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`);

--
-- Indexes for table `surveyquestionresponses`
--
ALTER TABLE `surveyquestionresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestionresponses_audit`
--
ALTER TABLE `surveyquestionresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestionresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestions_audit`
--
ALTER TABLE `surveyquestions_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyquestions_parent_id` (`parent_id`);

--
-- Indexes for table `surveyresponses`
--
ALTER TABLE `surveyresponses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyresponses_audit`
--
ALTER TABLE `surveyresponses_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveyresponses_parent_id` (`parent_id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys_audit`
--
ALTER TABLE `surveys_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_surveys_parent_id` (`parent_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
