-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2021 at 03:54 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oxeenxb4_ozark_consulting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_business_profile`
--

CREATE TABLE `tbl_business_profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_business_profile`
--

INSERT INTO `tbl_business_profile` (`id`, `name`, `type`) VALUES
(1, 'Sole proprietorship', 'ownership'),
(2, 'Corporation', 'ownership'),
(3, 'Partnership', 'ownership'),
(4, 'LLC', 'ownership'),
(5, 'Retail', 'merchant'),
(6, 'Restaurant', 'merchant'),
(7, 'Lodging', 'merchant'),
(8, 'Service', 'merchant'),
(9, 'Internet', 'merchant'),
(10, 'Home-based', 'merchant'),
(11, 'Automotive', 'merchant'),
(12, 'Other', 'merchant'),
(13, 'Visa', 'card'),
(14, 'MasterCard', 'card'),
(15, 'American Express', 'card'),
(16, 'Discover', 'card'),
(18, 'Others', 'merchant');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `contactName` varchar(225) DEFAULT NULL,
  `contactEmail` varchar(225) DEFAULT NULL,
  `contactMessage` text,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `contactName`, `contactEmail`, `contactMessage`, `created_date`) VALUES
(1, '', '', '', '2020-12-18 17:38:32'),
(2, 'harsh', 'harsh', 'sacada', '2020-12-18 17:39:47'),
(3, 'ASDASD', 'JJ@gmail.com', 'xZXZXzx', '2020-12-18 17:48:30'),
(4, 'keshav', 'keshav.wowz@gmail.com', 'testing', '2021-01-14 18:47:54'),
(5, 'test', 'test@admin.com', 'testing', '2021-01-17 04:40:00'),
(6, 'Wesley Williams', 'wesleyw@outlook.com', 'Testing', '2021-01-26 19:16:32'),
(7, 'Wesley Williams', 'wesleyw@outlook.com', 'test', '2021-01-27 19:47:25'),
(8, 'Landon Paige', 'landon.paige@outlook.com', 'Testing', '2021-01-28 22:14:36'),
(9, 'Harsh', 'harsh@gmail.com', 'Hello This Testing data', '2021-02-01 05:01:06'),
(10, 'Harsh', 'harsh@gmail.com', 'Hello This is tesing Data', '2021-02-01 05:03:14'),
(11, 'Harsh', 'harsh@gmail.com', 'Hello This is tesing Data', '2021-02-01 05:04:32'),
(12, 'Harsh', 'harsh@gmail.com', 'hello testing', '2021-02-01 05:32:13'),
(13, 'Harsh', 'JJ@gmail.com', 'hello teeting data', '2021-02-01 13:04:33'),
(14, 'Harsh', 'JJ@gmail.com', 'asdsd', '2021-02-01 13:05:55'),
(15, 'Harsh', 'JJ@gmail.com', 'ddewrre', '2021-02-01 13:07:53'),
(16, 'Wesley Williams', 'wesleyw@outlook.com', 'Testing this mesg', '2021-02-01 13:11:25'),
(17, 'Harsh', 'harsh@gmail.com', 'Hello testing data', '2021-02-01 13:11:36'),
(18, 'Keshav', 'keshav.wowz@gmail.com', 'Testing contact page', '2021-02-01 13:12:12'),
(19, 'Wesley Williams', 'wesleyw@outlook.com', 'Test #2', '2021-02-01 13:12:25'),
(20, 'Wesley Williams', 'wesleyw@outlook.com', 'Testing', '2021-02-01 13:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_states`
--

CREATE TABLE `tbl_states` (
  `id` int(11) NOT NULL,
  `code` char(2) NOT NULL DEFAULT '',
  `name` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_states`
--

INSERT INTO `tbl_states` (`id`, `code`, `name`) VALUES
(1, 'AL', 'Alabama'),
(2, 'AK', 'Alaska'),
(3, 'AS', 'American Samoa'),
(4, 'AZ', 'Arizona'),
(5, 'AR', 'Arkansas'),
(6, 'CA', 'California'),
(7, 'CO', 'Colorado'),
(8, 'CT', 'Connecticut'),
(9, 'DE', 'Delaware'),
(10, 'DC', 'District of Columbia'),
(11, 'FM', 'Federated States of Micronesia'),
(12, 'FL', 'Florida'),
(13, 'GA', 'Georgia'),
(14, 'GU', 'Guam'),
(15, 'HI', 'Hawaii'),
(16, 'ID', 'Idaho'),
(17, 'IL', 'Illinois'),
(18, 'IN', 'Indiana'),
(19, 'IA', 'Iowa'),
(20, 'KS', 'Kansas'),
(21, 'KY', 'Kentucky'),
(22, 'LA', 'Louisiana'),
(23, 'ME', 'Maine'),
(24, 'MH', 'Marshall Islands'),
(25, 'MD', 'Maryland'),
(26, 'MA', 'Massachusetts'),
(27, 'MI', 'Michigan'),
(28, 'MN', 'Minnesota'),
(29, 'MS', 'Mississippi'),
(30, 'MO', 'Missouri'),
(31, 'MT', 'Montana'),
(32, 'NE', 'Nebraska'),
(33, 'NV', 'Nevada'),
(34, 'NH', 'New Hampshire'),
(35, 'NJ', 'New Jersey'),
(36, 'NM', 'New Mexico'),
(37, 'NY', 'New York'),
(38, 'NC', 'North Carolina'),
(39, 'ND', 'North Dakota'),
(40, 'MP', 'Northern Mariana Islands'),
(41, 'OH', 'Ohio'),
(42, 'OK', 'Oklahoma'),
(43, 'OR', 'Oregon'),
(44, 'PW', 'Palau'),
(45, 'PA', 'Pennsylvania'),
(46, 'PR', 'Puerto Rico'),
(47, 'RI', 'Rhode Island'),
(48, 'SC', 'South Carolina'),
(49, 'SD', 'South Dakota'),
(50, 'TN', 'Tennessee'),
(51, 'TX', 'Texas'),
(52, 'UT', 'Utah'),
(53, 'VT', 'Vermont'),
(54, 'VI', 'Virgin Islands'),
(55, 'VA', 'Virginia'),
(56, 'WA', 'Washington'),
(57, 'WV', 'West Virginia'),
(58, 'WI', 'Wisconsin'),
(59, 'WY', 'Wyoming');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userinformation`
--

CREATE TABLE `tbl_userinformation` (
  `bIid` int(11) NOT NULL,
  `user_id` int(225) DEFAULT NULL,
  `business_name` varchar(225) DEFAULT NULL,
  `business_dba_r` varchar(11) DEFAULT NULL,
  `business_dba` varchar(225) DEFAULT NULL,
  `business_physical_address` varchar(225) DEFAULT NULL,
  `business_city` varchar(225) DEFAULT NULL,
  `business_state` varchar(225) DEFAULT NULL,
  `business_zip` varchar(225) DEFAULT NULL,
  `business_phone` varchar(225) DEFAULT NULL,
  `business_fax_r` varchar(11) DEFAULT NULL,
  `business_fax` varchar(225) DEFAULT NULL,
  `business_federal_tax_id` varchar(225) DEFAULT NULL,
  `business_contact_no` varchar(225) DEFAULT NULL,
  `business_email` varchar(225) DEFAULT NULL,
  `business_website_r` varchar(11) DEFAULT NULL,
  `business_website` varchar(225) DEFAULT NULL,
  `business_date` varchar(225) DEFAULT NULL,
  `business_length_of_ownership_month` varchar(225) DEFAULT NULL,
  `business_length_of_ownership_year` varchar(225) DEFAULT NULL,
  `business_year_at_location_month` varchar(225) DEFAULT NULL,
  `business_year_at_location_month_year` varchar(225) DEFAULT NULL,
  `business_locations` varchar(225) DEFAULT NULL,
  `ownership_r` varchar(25) DEFAULT '1',
  `ownership_name` varchar(225) DEFAULT NULL,
  `ownership_contact_phone_number` varchar(225) DEFAULT NULL,
  `ownership_adddress` varchar(225) DEFAULT NULL,
  `ownership_city` varchar(225) DEFAULT NULL,
  `ownership_state` varchar(225) DEFAULT NULL,
  `ownership_zip` varchar(225) DEFAULT NULL,
  `ownership_dob` varchar(225) DEFAULT NULL,
  `ownership_ssn` varchar(225) DEFAULT NULL,
  `ownership_of_company` varchar(225) DEFAULT NULL,
  `ownership_67` varchar(225) DEFAULT NULL,
  `ownership_title` varchar(225) DEFAULT NULL,
  `landlord_name` varchar(225) DEFAULT NULL,
  `landlord_contact` varchar(225) DEFAULT NULL,
  `landlord_m_rent` varchar(225) DEFAULT NULL,
  `landlord_phone_no` int(225) DEFAULT NULL,
  `business_profile_ownership` text,
  `business_profile_ownership_text` varchar(225) DEFAULT NULL,
  `business_merchant_profile` text,
  `business_card_profile_r` varchar(25) DEFAULT NULL,
  `business_card_profile` text,
  `cash_advance_amount` varchar(225) DEFAULT NULL,
  `cash_advance_plan_before_r` varchar(225) DEFAULT NULL,
  `cash_advance_plan_before` varchar(225) DEFAULT NULL,
  `cash_advance_master_m_sales` varchar(225) DEFAULT NULL,
  `cash_advance_company_use` varchar(225) DEFAULT NULL,
  `cash_advance_average_g_m_sales` varchar(225) DEFAULT NULL,
  `cash_advance_o_balance` varchar(225) DEFAULT NULL,
  `cash_advance_c_balance` varchar(225) DEFAULT NULL,
  `cash_advance_average_t_size` varchar(225) DEFAULT NULL,
  `cash_advance_c_payment` varchar(225) DEFAULT NULL,
  `description1` text,
  `description2` text,
  `myfile` varchar(225) DEFAULT NULL,
  `myfile2` varchar(225) DEFAULT NULL,
  `myfile3` varchar(225) DEFAULT NULL,
  `myfile4` varchar(225) DEFAULT NULL,
  `myfile5` varchar(225) DEFAULT NULL,
  `myfile6` varchar(225) DEFAULT NULL,
  `myfile7` varchar(225) DEFAULT NULL,
  `myfile8` varchar(225) DEFAULT NULL,
  `additional_for_to_upload_r` varchar(225) DEFAULT NULL,
  `myfile9` varchar(225) DEFAULT NULL,
  `signature_date` varchar(225) DEFAULT NULL,
  `signature` text,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_userinformation`
--

INSERT INTO `tbl_userinformation` (`bIid`, `user_id`, `business_name`, `business_dba_r`, `business_dba`, `business_physical_address`, `business_city`, `business_state`, `business_zip`, `business_phone`, `business_fax_r`, `business_fax`, `business_federal_tax_id`, `business_contact_no`, `business_email`, `business_website_r`, `business_website`, `business_date`, `business_length_of_ownership_month`, `business_length_of_ownership_year`, `business_year_at_location_month`, `business_year_at_location_month_year`, `business_locations`, `ownership_r`, `ownership_name`, `ownership_contact_phone_number`, `ownership_adddress`, `ownership_city`, `ownership_state`, `ownership_zip`, `ownership_dob`, `ownership_ssn`, `ownership_of_company`, `ownership_67`, `ownership_title`, `landlord_name`, `landlord_contact`, `landlord_m_rent`, `landlord_phone_no`, `business_profile_ownership`, `business_profile_ownership_text`, `business_merchant_profile`, `business_card_profile_r`, `business_card_profile`, `cash_advance_amount`, `cash_advance_plan_before_r`, `cash_advance_plan_before`, `cash_advance_master_m_sales`, `cash_advance_company_use`, `cash_advance_average_g_m_sales`, `cash_advance_o_balance`, `cash_advance_c_balance`, `cash_advance_average_t_size`, `cash_advance_c_payment`, `description1`, `description2`, `myfile`, `myfile2`, `myfile3`, `myfile4`, `myfile5`, `myfile6`, `myfile7`, `myfile8`, `additional_for_to_upload_r`, `myfile9`, `signature_date`, `signature`, `created_date`) VALUES
(2, 2362, 'wowz', '1', '4562', '#520 chd', 'Ambala', 'Idaho', '13300', '963254127', '1', '12345', '1899999', '9453453453', 'harsh@gmail.com', '1', 'google.com', '03-11-2021', '6', '2004', '4', '2004', '55', '0', 'Harsh', '9632541222222222', '#23', 'As', 'Federated States of Micronesia', '85222222', '03-31-2021', '222222222', '111', NULL, 'rterttr', 'asdsad', 'eqweeqw', '131232', 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-02 19:23:41'),
(6, 236, 'Wowz', '1', '11', '#1222', 'ambala', 'Georgia', '56666', '111', '1', 'asdasdsa', '999999999', '11', 'ha1rsh@gmail.com', '', '', '1', '7', '18', '1', '17', '63aa', '0', 'asdsads', '8566', 'Location Owner Street Address', 'Locat', 'Georgia', '55559', '2', '299999999', '123', NULL, 'QWEWQ2E', 'Harsh23', 'sgsfs23', '23', 23, 'a:1:{i:0;s:19:\"Sole proprietorship\";}', NULL, 'a:6:{i:0;s:6:\"Retail\";i:1;s:10:\"Restaurant\";i:2;s:7:\"Lodging\";i:3;s:8:\"Internet\";i:4;s:10:\"Home-based\";i:5;s:10:\"Automotive\";}', '1', 'a:4:{i:0;s:4:\"Visa\";i:1;s:10:\"MasterCard\";i:2;s:16:\"American Express\";i:3;s:8:\"Discover\";}', '9666', '1', 'dsadsad', '23', '2323', '23', '96656', '2323', '23', '223', '2323', '23', 'gallery-2133142634-1616521659.png', NULL, 'gallery-1779845488-1616516996.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '23/11/1111', '605a2a6d6f843.png', '2021-03-04 16:46:19'),
(7, 238, 'Ozark Consulting ', '0', '', '119 Prk Ave St 13 washing ton Dc', 'WashingTon DC', 'Washington', '90001', '0179227273', '', '', '647563728', 'Keshav', 'Keshav.wowz@gmail.com', '', '', '05-20-2021', '12', '2015', '4', '2017', '2', '0', 'Keshav', '0179227273', '119 Prk Ave St 13 washing ton Dc', 'Washi', 'Washington', '90001', '05-20-2021', '134324', '34', NULL, 'Keshav', 'Abel', '1309 Ne SW washing ton Dc', '3500', 179227272, 'a:2:{i:0;s:11:\"Corporation\";i:1;s:3:\"LLC\";}', NULL, 'a:6:{i:0;s:6:\"Retail\";i:1;s:10:\"Restaurant\";i:2;s:7:\"Lodging\";i:3;s:8:\"Internet\";i:4;s:10:\"Home-based\";i:5;s:10:\"Automotive\";}', '1', 'a:2:{i:0;s:4:\"Visa\";i:1;s:10:\"MasterCard\";}', '1000000', '1', 'yes', '10000', 'Bank of America', '900000', '20000000000', '10983000000', '2343', '30%', 'Bank of America', 'nothing at this moment', 'gallery-1575179483-1615016433.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-02-2021', '604331f75ad3e.png', '2021-03-06 07:22:40'),
(8, 239, 'Ozark Consulting', '0', '', '119 Prk Ave St 13 washing ton Dc', 'WashingTon DC', 'Washington', '90001', '0179227273', '', '', '234233325', 'Ozark Consulting', '1Keshav.wowz@gmail.com', '', '', '03-25-2021', '4', '2019', '3', '2019', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abel', '1309 Ne SW washing ton Dc', '3500', 179227272, 'a:2:{i:0;s:19:\"Sole proprietorship\";i:1;s:11:\"Partnership\";}', NULL, 'a:6:{i:0;s:6:\"Retail\";i:1;s:10:\"Restaurant\";i:2;s:7:\"Lodging\";i:3;s:8:\"Internet\";i:4;s:10:\"Home-based\";i:5;s:10:\"Automotive\";}', '1', 'a:4:{i:0;s:4:\"Visa\";i:1;s:10:\"MasterCard\";i:2;s:16:\"American Express\";i:3;s:8:\"Discover\";}', '1000000', '1', '', '10000', 'sdfdsf', '900000', '20000000000', '10983000000', '2343', '30%', 'Bank of America', 'No ', 'gallery-644873572-1615211368.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-08-2021', '6046349c118ce.png', '2021-03-08 13:43:29'),
(9, 240, 'OZARK', '0', '', '1310 e st ne washin ton DC', 'Dc', 'California', '90001', '4141241241', '1', '65365344', '43412', 'Abel', 'keshav@gmail.com', '', '', '03-08-2021', '9', '2010', '6', '2008', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abel', 'PEri', '3500', 1353315135, 'a:2:{i:0;s:11:\"Corporation\";i:1;s:11:\"Partnership\";}', NULL, 'a:6:{i:0;s:6:\"Retail\";i:1;s:10:\"Restaurant\";i:2;s:7:\"Lodging\";i:3;s:8:\"Internet\";i:4;s:10:\"Home-based\";i:5;s:10:\"Automotive\";}', '1', 'a:2:{i:0;s:4:\"Visa\";i:1;s:10:\"MasterCard\";}', '1221421', '1', '', '4243', 'Bank of america', '314', '4141', '122', '232', '3123', 'Bank of America', 'no', 'gallery-905165914-1615213422.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-08-2021', '604633763678a.png', '2021-03-08 14:15:17'),
(10, 241, 'Y', '0', '', 'Rr', 'Dd', 'American Samoa', '222', '23333', '', '', '22333', 'Sss', 'h@gmail.com', '', '', '03-04-2021', '5', '2017', '5', '2017', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sds', '2333', 'W', 333333, 'a:4:{i:0;s:19:\"Sole proprietorship\";i:1;s:11:\"Corporation\";i:2;s:11:\"Partnership\";i:3;s:3:\"LLC\";}', NULL, 'a:6:{i:0;s:6:\"Retail\";i:1;s:10:\"Restaurant\";i:2;s:7:\"Lodging\";i:3;s:8:\"Internet\";i:4;s:10:\"Home-based\";i:5;s:10:\"Automotive\";}', '0', '', '222', '0', '', 'Sss', '', 'Ssss', 'Sss', 'Ssss', 'Zzzz', 'Ssss', 'Szzz', 'Xxxx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-08 14:44:54'),
(11, 242, 'Ozark Consulting', '1', '43', '119 Prk Ave St 13 washing ton Dc', 'WashingTon DC', 'Washington', '90001', '0179227273', '', '', '151353535', 'Ozark Consulting', 'Keshav.wowz@gmail.com', '', '', '03-08-2021', '3', '2020', '2', '2020', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abel', '1309 Ne SW washing ton Dc', '3500', 179227272, 'a:2:{i:0;s:11:\"Partnership\";i:1;s:3:\"LLC\";}', NULL, 'a:4:{i:0;s:10:\"Restaurant\";i:1;s:8:\"Internet\";i:2;s:10:\"Home-based\";i:3;s:10:\"Automotive\";}', '1', 'a:2:{i:0;s:4:\"Visa\";i:1;s:10:\"MasterCard\";}', '1000000', '0', '', '10000', '', '900000', '20000000000', '10983000000', '2343', '30%', 'Bank of America', 'N/A', 'gallery-2000564301-1615215590.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-08-2021', '60463c0e3ea6f.png', '2021-03-08 14:57:32'),
(12, 243, 'Ozark Consulting', '1', '1241241', '119 Prk Ave St 13 washing ton Dc', 'WashingTon DC', 'Washington', '90001', '0179227273', '', '', '414114114', 'Ozark Consulting', 'yogesh.pph@gmail.com', '', '', '03-08-2021', '2', '2019', '2', '2021', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abel', '1309 Ne SW washing ton Dc', '3500', 1414151515, 'a:2:{i:0;s:19:\"Sole proprietorship\";i:1;s:11:\"Corporation\";}', NULL, 'a:6:{i:0;s:6:\"Retail\";i:1;s:10:\"Restaurant\";i:2;s:7:\"Lodging\";i:3;s:8:\"Internet\";i:4;s:10:\"Home-based\";i:5;s:10:\"Automotive\";}', '1', 'a:2:{i:0;s:4:\"Visa\";i:1;s:10:\"MasterCard\";}', '1000000', '1', '', '10000', 'Bank of America', '900000', '20000000000', '10983000000', '2343', '30%', 'Bank of America', 'N/A', 'gallery-729721894-1615221778.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-08-2021', '60465429924ce.png', '2021-03-08 16:41:38'),
(13, 245, 'Test Company', '0', '', '123 Main Street', 'New York', 'New York', '10005', '1234567890', '', '', '121111111', 'Test President', 'test1234@gmail.com', '', '', '01-20-2021', '11', '2016', '9', '2008', '1', '0', 'Test Owner', '1234567890', '123 Main Avenue', 'nyc', 'New York', '12345', '03-01-2021', '123457896', '100', NULL, 'President', 'test landlord', 'test landlord', '12312', 1234567890, 'a:1:{i:0;s:11:\"Corporation\";}', NULL, 'a:2:{i:0;s:6:\"Retail\";i:1;s:10:\"Restaurant\";}', '1', 'a:3:{i:0;s:4:\"Visa\";i:1;s:10:\"MasterCard\";i:2;s:16:\"American Express\";}', '32131', '1', '', '132', 'asdfasdf', '1233213', '332123', '321321', '321321', '312313', 'asdfasd', 'aasdfasd', 'gallery-770260601-1615394431.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-04-2021', '6048f6d58ea57.png', '2021-03-10 16:11:25'),
(14, 246, 'Ozark Consulting', '0', '', '119 Prk Ave St 13 washing ton Dc', 'WashingTon DC', 'Washington', '900', '0179227273', '', '', '32412', 'Ozark Consulting', 'Keshav.wowz@gmail.com', '', '', '03-12-2021', '4', '2019', '2', '2019', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abel', '1309 Ne SW washing ton Dc', '3500', 179227272, 'a:4:{i:0;s:19:\"Sole proprietorship\";i:1;s:11:\"Corporation\";i:2;s:11:\"Partnership\";i:3;s:3:\"LLC\";}', NULL, 'a:6:{i:0;s:6:\"Retail\";i:1;s:10:\"Restaurant\";i:2;s:7:\"Lodging\";i:3;s:8:\"Internet\";i:4;s:10:\"Home-based\";i:5;s:10:\"Automotive\";}', '1', 'a:4:{i:0;s:4:\"Visa\";i:1;s:10:\"MasterCard\";i:2;s:16:\"American Express\";i:3;s:8:\"Discover\";}', '1000000', '0', '', '10000', '', '900000', '20000000000', '10983000000', '2343', '30%', 'sdgds', 'dfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-18 13:31:37'),
(15, 247, 'Ozark Consulting', '0', '', '119 Prk Ave St 13 washing ton Dc', 'WashingTon DC', 'Washington', '90001', '0179227273', '', '', '253252523', '', 'Keshav.wowz@gmail.com', '', '', '14/08/2000', '6', '15', '5', '2', '3', '0', 'Keshav', '1247125421', 'asfhksdvkh', 'Washi', 'Washington', '9000', '12/12/0123', '4134123', '23', NULL, 'president', 'Abel', '1309 Ne SW washing ton Dc', '3500', 179227272, 'a:1:{i:0;s:11:\"Partnership\";}', NULL, 'a:3:{i:0;s:6:\"Retail\";i:1;s:10:\"Restaurant\";i:2;s:7:\"Lodging\";}', '1', 'a:3:{i:0;s:10:\"MasterCard\";i:1;s:16:\"American Express\";i:2;s:8:\"Discover\";}', '1000000', '1', '', '10000', 'Bank of America', '900000', '20000000000', '10983000000', '2343', '30%', 'Bank of America', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-08-2021', '605b265259a14.png', '2021-03-24 11:26:27'),
(16, 249, 'Test Biz', '0', '', '123 Test Street', 'test', 'New Jersey', '11005', '1234567890', '', '', '789456342', '', 'thirdtest@gmail.com', '', '', '', '3', '6', '2', '3', '1', '0', 'Test Owner', '1237895050', 'Test Street', 'fasdf', 'New Jersey', '00000', '15/08/1967', '123456789', '90', NULL, 'owner', 'test landlord', 'test landlord person ', '12358', 1234567890, 'a:1:{i:0;s:11:\"Corporation\";}', NULL, 'a:1:{i:0;s:10:\"Restaurant\";}', '1', '', '1233531', '1', '', '321321', 'asdf', '123132``', '0321321', '321321', '2313', '100', 'sdafsdafsd', 'asdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12/5', '606891ca24d87.png', '2021-04-03 15:30:10'),
(17, 251, 'eeeeee', '0', '', 'eeeee', 'eeeee', 'Alabama', '22222', '1232313313', '', '', '222222222', '123213', 'harsh@gmail.com', '', '', '1111-11-11', '1', '18', '11', '17', '22', '0', 'asdsad', '1111111111', '#2020', 'Abala', 'Hawaii', '55411', '03-08-2021', '111111111', '111', NULL, 'rterttr', '2222', 'eqweeqw', '52222', 2147483647, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-06 13:19:56'),
(18, 252, 'wewqewqw', '0', '', 'qweqwewq', 'qweeeeeeeeeeeeeeee', 'Alabama', '11111', '121211112', '', '', '111111111', '1111111111111111', 'harsh@gmail.com', '', '', '12/23/1988', '2', '18', '11', '16', '222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asadasd', 'asdsasa', '$212,313,213.21', 2131232131, 'a:1:{i:0;s:3:\"LLC\";}', '', 'a:2:{i:0;s:10:\"Home-based\";i:1;s:10:\"Automotive\";}', '0', 'a:1:{i:0;s:4:\"Visa\";}', '$111,111,111.11', '1', '', '$111,111,111,111.11', 'qwewewqw', '$111,111,111,111,111.11', '$111,111,111.11', '$1,212,111,121.21', '$111,111,112.22', 'qwewqewq', 'asdsasdada', 'adaasdsadadas', NULL, NULL, NULL, NULL, NULL, 'gallery-97918063-1617815395.jpg', NULL, 'gallery-1630402119-1617815412.jpg', '1', 'gallery-986414111-1617815432.jpg', '2222-02-22', '606de79f7fafd.png', '2021-04-07 17:05:40'),
(19, 253, 'Ozark Consulting', '0', '', '119 Prk Ave St 13 washing ton Dc', 'WashingTon DC', 'Washington', '90001', '0179227273', '', '', '121232331', 'Ozark Consulting', 'Keshav.wowz@gmail.com', '', '', '', '3', '2', '3', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abel', '1309 Ne SW washing ton Dc', '$650,000,000.00', 179227272, 'a:1:{i:0;s:3:\"LLC\";}', '', 'a:1:{i:0;s:8:\"Internet\";}', '0', '', '$1,000,000,000,000,000,000,000,000,000.00', '0', '', '$10,000,000.00', '', '$90,000,000.00', '$55,476,786.75', '$342,354,254.23', '$23,430,000.00', '20', 'nothing at this moment', '', 'gallery-1089430804-1617986132.png', NULL, NULL, NULL, NULL, NULL, 'gallery-780463584-1617986142.png', 'gallery-668152213-1617986166.png', '1', 'gallery-507414896-1617986244.png', '19-19-2021', '607082d57539b.png', '2021-04-09 16:03:22'),
(20, 248, 'nlkn', '1', 'knl', 'kbbk', 'nknk', 'Illinois', '90000', '090090', '1', '80980989000', '808098899', '', 'bjbjhvjh@dnkjhj.jhkj', '1', 'bbjbkjbk.com', '', '10', '17', '7', '34', '88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jjnk', 'kbkk', '$78.78', 2147483647, 'a:1:{i:0;s:19:\"Sole proprietorship\";}', '', 'a:3:{i:0;s:6:\"Retail\";i:1;s:10:\"Restaurant\";i:2;s:7:\"Lodging\";}', '0', '', '$1,627,362,836.28', '0', '', '$89,000,888,888.88', 'dvssdv', '$0,809,800,888.88', '$908,888,888,888.88', '$88,908,888,888.88', '$9,809,999,999.99', '888888888888', 'kjllkl', 'jkjljlkj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '08/09/1997', '6075a1f0e87f8.png', '2021-04-12 09:41:16'),
(21, 254, 'WowZ Co', '0', '', '#223', 'Ambala', 'Indiana', '13300', '9632541278', '', '', '888888888', 'CHD', 'harsh@wowz.com', '', '', '12/25/2001', '9', '11', '3', '4', '20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HARS', '963358741111111', '$9,663,333.33', 93556565, 'a:1:{i:0;s:3:\"LLC\";}', 'Hello Tik', 'a:3:{i:0;s:10:\"Home-based\";i:1;s:10:\"Automotive\";i:2;s:6:\"Others\";}', '0', '', '$999,989,898,989.98', '0', '', '$8,888,888,888.88', '', '$99,898,989,898.99', '$9,998,989,888.98', '$56,565,656,565.56', '$666,666,699.99', '213213', 'qweqwewewq', 'qweqwewwqqewqe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '12/25/2001', '60759e81a745b.png', '2021-04-13 13:29:03'),
(22, 255, 'Ozark', '1', '4217124782467826478247247', 'sdfkdsfdifu osdhash', 'afskjfgasfjkagasjkgsf', 'Alaska', '12471', '3764374637', '1', '39856325983265896235239862', '513985635', 'faskjfasfksja', 'faskjfhsak@gmail.com', '1', 'DKJFHDSFJK198.ahfga', '21/21/2020', '3', '2', '3', '3', '2478', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-13 13:44:53'),
(23, 257, 'ozark', '0', '', 'ahsfgdjgdhg', 'gdmgh', 'Alaska', '75758', '7657656775', '', '', '764764767', 'contact', 'keshav@gmail.com', '', '', '11/11/1111', '1', '1', '1', '1', '5', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-13 15:17:49'),
(24, 258, 'Ozark - Legal Name', '0', '', 'Physical Address, 1310 st ne', 'california', 'Alabama', '25656', '5534324324', '', '', '343243243', 'Contact Name', 'Keshav.wowz@gmail.com', '', '', '11/11/1111', '3', '2', '3', '2', '2', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Landlord Name', 'Contact - Ozark', '$10,000.00', 2147483647, 'a:1:{i:0;s:19:\"Sole proprietorship\";}', 'Others', 'a:3:{i:0;s:10:\"Restaurant\";i:1;s:10:\"Home-based\";i:2;s:6:\"Others\";}', '0', '', '$367,642,764,764.76', '1', '', '$32,422,784.78', 'Bank of America', '$1,227,862,174.22', '$897,986,784,186.12', '$78,164,781.61', '$72,816,372.22', '40%', 'Bank of America', 'tweitwe', 'gallery-1256768290-1618338297.jpg', 'gallery-1967935092-1618337941.jpg', 'gallery-915122888-1618338313.jpg', 'gallery-646046227-1618338322.jpg', 'gallery-82416868-1618337972.jpg', 'gallery-1366220191-1618338330.jpg', 'gallery-1275099056-1618338333.jpg', 'gallery-612147970-1618338345.jpg', '', 'gallery-1019964735-1618333661.png', '03-31-2021', '6075e23d2a7c0.png', '2021-04-13 16:54:35'),
(25, 259, 'tester', '0', '', 'tester', 'tester', 'Alaska', '12345', '900000000', '', '', '000000000', 'tester', 'tester@gmail.com', '', '', '11/30/1998', '4', '15', '9', '12', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jjnk', 'kbkk', '$78.78', 2147483647, 'a:1:{i:0;s:19:\"Sole proprietorship\";}', '', 'a:2:{i:0;s:6:\"Retail\";i:1;s:8:\"Internet\";}', '1', 'a:4:{i:0;s:4:\"Visa\";i:1;s:10:\"MasterCard\";i:2;s:16:\"American Express\";i:3;s:8:\"Discover\";}', '$99,098,329.03', '0', '', '$892,323,000.32', '', '$080,982,300.82', '$9,082,388,888.32', '$23,889,082.32', '$329,823,092.22', '436546', 'tester', 'tester', 'gallery-991972939-1618337224.png', 'gallery-215753072-1618336820.png', 'gallery-670970620-1618336827.png', 'gallery-2084667704-1618336834.png', 'gallery-555068974-1618336840.png', 'gallery-1060826992-1618336848.png', 'gallery-528881484-1618336854.png', 'gallery-164272054-1618336861.png', '', NULL, '07/07/1997', '6075dde18c2ec.png', '2021-04-13 17:39:11'),
(26, 260, 'Legal name Ozark', '0', '', 'dlkfjbdfjdfddsfhh ajfasj ajbjska', 'California CA', 'Arizona', '12412', '4112421123', '', '', '412124124', 'Contact name', 'Keshav.wowz@gmail.com', '', '', '11/11/1111', '2', '1', '2', '2', '3', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Landlord Name Ozark', 'Contact name Abel', '$523,562.38', 2147483647, 'a:1:{i:0;s:3:\"LLC\";}', '', 'a:2:{i:0;s:7:\"Lodging\";i:1;s:10:\"Home-based\";}', '1', 'a:4:{i:0;s:4:\"Visa\";i:1;s:10:\"MasterCard\";i:2;s:16:\"American Express\";i:3;s:8:\"Discover\";}', '$23,343,432.43', '0', '', '$3,141,443,434.14', '', '$141,411,414.12', '$1,424,124,241,424.14', '$1,412,421,214.14', '$1,414,244,141.14', '11', 'American Bank', 'asfjasfsjakf', 'gallery-606503386-1618338057.JPG', 'gallery-222902015-1618338068.png', 'gallery-84382333-1618338061.JPG', 'gallery-1694431807-1618338073.JPG', 'gallery-755672824-1618338079.JPG', 'gallery-144815790-1618338084.JPG', 'gallery-1294711569-1618338090.JPG', 'gallery-362250203-1618338094.JPG', '1', 'gallery-1344421910-1618338110.JPG', '11/11/1111', '6075e148eabd4.png', '2021-04-13 17:48:14'),
(27, 261, 'mhvvbcb', '0', '', 'kufhffh', 'kfghf', 'Alaska', '67465', '7656756785', '', '', '786789697', 'hgfghfg', '9765675@gmail.com', '', '', '11/11/1111', '1', '1', '1', '2', '4', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hfgifgihf', 'hgkgkyuguf', '$97,656,874.76', 2147483647, 'a:1:{i:0;s:3:\"LLC\";}', 'agsdgsgdg', 'a:1:{i:0;s:6:\"Others\";}', '0', '', '$68,685,467,568,756,786.74', '0', '', '$6,756,874,648,646.46', '', '$876,486,464,864.64', '$7,648,648,674.64', '$987,575,675,675.67', '$876,486,746,746.74', '45', '95967567567', '956567567', 'gallery-1737339781-1618396465.JPG', 'gallery-1352020037-1618396497.JPG', 'gallery-1158919361-1618396473.JPG', 'gallery-1285181421-1618396509.jpg', 'gallery-192256651-1618396479.JPG', 'gallery-1818855101-1618396516.JPG', 'gallery-1845277499-1618396487.JPG', 'gallery-1266566640-1618396524.JPG', '', NULL, '11/11/1111', '6076c686a2c89.png', '2021-04-14 10:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `plain_password` varchar(255) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `last_name` varchar(20) DEFAULT NULL,
  `role_id` tinyint(4) NOT NULL,
  `stateid` varchar(255) DEFAULT NULL,
  `status` tinyint(11) NOT NULL DEFAULT '1',
  `createdBy` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `plain_password`, `first_name`, `last_name`, `role_id`, `stateid`, `status`, `createdBy`, `created_date`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Admin', '9890098901', 1, NULL, 1, 0, '2015-07-01 18:56:49', 1, '2020-03-25 15:35:56'),
(260, 'Keshav.wowz@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin123', 'Keshav', 'b', 2, NULL, 1, 0, '2021-04-13 17:46:54', NULL, NULL),
(261, 'AdamsRobin@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin123', 'Robin', 'Adams', 2, NULL, 1, 0, '2021-04-14 10:08:41', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_business_profile`
--
ALTER TABLE `tbl_business_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_states`
--
ALTER TABLE `tbl_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userinformation`
--
ALTER TABLE `tbl_userinformation`
  ADD PRIMARY KEY (`bIid`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_business_profile`
--
ALTER TABLE `tbl_business_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_states`
--
ALTER TABLE `tbl_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_userinformation`
--
ALTER TABLE `tbl_userinformation`
  MODIFY `bIid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
