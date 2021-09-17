-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2021 at 04:56 AM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apexwwyr_tax_resale`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_businessinformation`
--

CREATE TABLE `tbl_businessinformation` (
  `bIid` int(11) NOT NULL,
  `user_id` int(225) DEFAULT NULL,
  `bankName` varchar(225) DEFAULT NULL,
  `personalBank` varchar(225) DEFAULT NULL,
  `creditCardPayments` varchar(225) DEFAULT NULL,
  `onlinePaymentProcessor` varchar(225) DEFAULT NULL,
  `naics` varchar(225) DEFAULT NULL,
  `firstDateOfTaxableSales` varchar(225) DEFAULT NULL,
  `businessPhoneNumber` varchar(225) DEFAULT NULL,
  `businessEmailAddress` varchar(225) DEFAULT NULL,
  `businessStreetAddress` varchar(225) DEFAULT NULL,
  `businessStreetAddress2` varchar(225) DEFAULT NULL,
  `businessState` varchar(225) DEFAULT NULL,
  `businessCity` varchar(225) DEFAULT NULL,
  `businessZip` varchar(225) DEFAULT NULL,
  `businessCounty` varchar(225) DEFAULT NULL,
  `businessCountytxt` varchar(225) DEFAULT NULL,
  `merchantIdentificationNumber` varchar(225) DEFAULT NULL,
  `websiteAddress` varchar(225) DEFAULT NULL,
  `landlordOwnerName` varchar(225) DEFAULT NULL,
  `landlordOwnerStreetAddress` varchar(225) DEFAULT NULL,
  `landlordCity` varchar(225) DEFAULT NULL,
  `landlordState` varchar(225) DEFAULT NULL,
  `landlordZip` varchar(225) DEFAULT NULL,
  `involvedInMerger` varchar(225) DEFAULT NULL,
  `businessLocation` varchar(225) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_businessinformation`
--

INSERT INTO `tbl_businessinformation` (`bIid`, `user_id`, `bankName`, `personalBank`, `creditCardPayments`, `onlinePaymentProcessor`, `naics`, `firstDateOfTaxableSales`, `businessPhoneNumber`, `businessEmailAddress`, `businessStreetAddress`, `businessStreetAddress2`, `businessState`, `businessCity`, `businessZip`, `businessCounty`, `businessCountytxt`, `merchantIdentificationNumber`, `websiteAddress`, `landlordOwnerName`, `landlordOwnerStreetAddress`, `landlordCity`, `landlordState`, `landlordZip`, `involvedInMerger`, `businessLocation`, `created_date`) VALUES
(5, 77, 'Icici Bank', '1', '0', '', 'NAICS Code', '0022-11-22', 'ewqewqee', 'business@gmail.com', 'Location Owner Street Address', 'sadsda', '2', 'Location Owner City', 'Location Owner Zip', NULL, NULL, 'Merchant Identification Number', 'Location Owner Street Address', 'Location Owner Name', 'Location Owner Street Address', 'Location Owner City', 'Location Owner State', 'Location Owner Zip', NULL, NULL, '2020-12-15 14:04:17'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-09 11:16:16'),
(8, 87, 'asgsdfsgscvwfsdf dfds sdvsd sdv ', '0', '0', '', '123456', '2020-12-29', '123456678990', 'asfsfs@gmail.com', 'sdsdfasdf. wefq f we ew', '    asgagsgas', '16', 'sadfsdfsd', '23234223234324', 'BOWIE', NULL, '353251351351', 'www.website.com', 'qwfqwfwf', 'werwee', 'sdsada', 'FDSAFSDF', 'ASDFSDFD', NULL, NULL, '2020-12-18 17:14:29'),
(9, 89, 'Chase bank', '1', '1', 'Chase', '123', '2008-05-26', '9728777838', 'wesleyw@Any.com', '2634 SIR GAWAIN LN', '2', '44', 'LEWISVILLE', '75056', 'ANDERSON', NULL, '125', 'google.com', 'Dallas DWI Lawyers', '2736 Royal Ln', 'Dallas', 'Texas', '75019', NULL, NULL, '2020-12-18 20:41:18'),
(10, 95, 'Bank name', '1', '1', 'Online processer', '4324423423', '2020-12-01', '1413123123', 'fsdfds@gmail.com', 'test the address', '', '1', 'panchkula', '134290', 'ATASCOSA', NULL, '14141413', 'xvvvsvsddfdfff', 'dsfdfas', 'asfasfsasa', 'adasdsa', 'asdasdas', 'adasd', '0', '1', '2020-12-22 18:01:49'),
(11, 78, '1232132', '1', '1', '123231231', '2323231', '231232-02-13', '1312313221', 'business@gmail.com', 'Location Owner Street Address', '', '44', 'Location Owner City', 'Location Owner Zip', 'BRAZORIA', 'testing', '123131', '12313', '1231232132', '1232132133', '12313', '312321321', '123213', '1', '1', '2021-01-21 16:12:15'),
(12, 100, 'Chase bank', '1', '1', 'Wesley Williams', '123', '2012-10-02', '9728777838', 'wesleyw@outlook.com', '320 TX-121', '#301', '44', 'Coppell', '75019', 'BOSQUE', '', '125', '2634 SIR GAWAIN LN', 'dfdfd', '2634 SIR GAWAIN LN', 'LEWISVILLE', 'Tx', '76126', '1', '1', '2020-12-24 17:28:20'),
(13, 107, 'Bank Name', '0', '0', '', '1234567890', '2021-01-06', '1234567789', 'example@gmail.com', 'testing Business Street Address', 'Business Street Address 2', '44', 'texas', '234566', 'ANDERSON', '', '', 'www.google.com', 'Landlord Or Owner Of This Place Of Business', 'Landlord Or Owner Of This Place Of Business', 'Landlord Or Owner Of This Place Of Business', 'texas', '234567', '0', '1', '2021-01-21 17:32:29'),
(14, 0, '1232132', '0', '1', '123231231', '2323231', '231232-02-13', '1312313221', 'business@gmail.com', 'Location Owner Street Address', '', '44', 'Location Owner City', 'Location Owner Zip', 'ARCHER', 'testing', '123131', '12313', '1231232132', '1232132133', '12313', '312321321', '123213', '1', '1', '2021-01-21 15:52:08'),
(15, 121, 'EECU', '1', '0', '', '454110', '2021-01-14', '8176803207', 'customkreationbycrystal@gmail.com', '1024 Shenandoah Drive ', '', '44', 'Arlington ', '76014', 'TARRANT', '', '', 'Customkreationbycrystal.com', 'Crystal Russell ', '1024 Shenandoah Drive ', 'Arlington ', 'Tx', '76014', '0', '1', '2021-02-06 18:29:34'),
(16, 127, 'Chase', '0', '0', '', '454111', '2021-02-02', '2516227154', 'milesstover1@gmail.com', '4400 MEMORIAL DR', 'APT 3076', '44', 'HOUSTON', '77007', 'HARRIS', '', '', 'https://www.amazon.com/s?me=A36G1XI2BLOPPT&marketplaceID=ATVPDKIKX0DER', 'Miles Stover', '4400 MEMORIAL DR', 'HOUSTON', 'TX', '77007', '0', '1', '2021-02-07 12:11:18'),
(17, 136, 'Navy federal', '0', '0', '', '42', '2021-02-08', '2566918311', 'hybridrenttoownllc@gmail.com', 'Samuels Avenue, Fort Worth, TX, USA', '4060', '44', 'FORT WORTH', '76102', 'TARRANT', '', '', 'www.hybridrenttoown.com', 'Hybrid rent to own llc', '940 Cotton depot lane', 'Fort worth', 'TX', '76102', '0', '1', '2021-02-08 03:32:31'),
(18, 138, 'JP Morgan Chase ', '0', '1', 'guadalupe sandoval garibay  ', '423990', '2021-03-01', '8177690900', 'lupegnzlz12@gmail.com', '4708 woodview', '', '44', 'FOREST HILL', '76140', 'TARRANT', '', '85195659', '4708 woodview', 'Maria Hernandez', '4716 Woodview ', 'forest hill ', 'TX', '76140', '0', '1', '2021-02-08 08:52:31'),
(19, 142, 'community resources', '0', '0', '', '44', '2021-02-08', '2817556949', 'FEW1960@YAHOO.COM', '17818 ABAFT CT', '105 BELCHER', '44', 'CLEVELAND', '77327', 'LIBERTY', '', '', 'few1960@yahoo.com', 'RITA HENDEREZ', '105 BELCHER', 'cleveland', 'texas', '77327', '0', '1', '2021-02-08 12:56:19'),
(20, 152, 'WELLS FARGO', '0', '0', '', '735905', '02-09-2021', '3183447180', 'batesprosound@yahoo.com', '1602 Enclave Pkwy', 'Apt 2301', '44', 'Houston', '77077', 'HARRIS', '', '', 'www.SheauxTymeEvents.com', 'THE ABBEY AT ELDRIDGE', '13101 BRIAR FOREST DRIVE', 'HOUSTON', 'TX', '77077', '0', '1', '2021-02-09 11:05:18'),
(21, 157, 'BFCU', '0', '0', 'summer n thomas', '448150', '04012021', '3184719166', 'sthomas1202@yahoo.com', '279 county road 265', '', '44', 'Beckville', '75631', 'PANOLA', '', '', 'facebook', 'summer thomas', '279 county road 265', 'Beckville', 'Texas', '75631', '0', '1', '2021-02-09 21:27:24'),
(22, 163, 'Bank of America', '1', '0', '', '541410', '08-17-2018', '4693460439', 'kristie.brooks@berkstonllc.com', '5140 Steinbeck St', '', '44', 'Carrollton', '75010', 'DENTON', '', '', 'www.berkstonllc.com', 'Mark Brooks', '5140 Steinbeck St', 'Carrollton', 'Texas', '75010', '0', '1', '2021-02-10 08:08:48'),
(23, 167, 'Prosperity Bank Odessa ', '1', '0', 'David Castillo', '722513', '03-01-2021', '4329408128', 'david@lanortenatamalefactory.com', '2901 E I-20 Suite A', '', '44', 'Odessa ', '79766', 'ECTOR', '', '', 'lanortenatamales.com', 'La Nortena Tamale Factory', 'Saulsbury Ventures', 'Odessa ', 'Texas', '79766', '0', '1', '2021-02-10 11:28:39'),
(24, 170, 'Bank Of American', '0', '1', 'Paypal', '4445', '02-10-2021', '2102797348', 'felixle119@gmail.com', '8531 Espanola dr', '', '44', 'Helotes', '78023', 'BEXAR', '', '02600959', 'https://sellercentral.amazon.com/gp/homepage.html', 'Hieu Le', '8531 Espanola DR', 'Helotes', 'Texas', '78023', '0', '1', '2021-02-10 14:46:03'),
(25, 171, 'FivePoint Credit Union', '0', '1', 'Shopify', '448110', '02-10-2021', '4095406903', 'fullcountbaseball15@gmail.com', '3915 Plantation Drive', '', '44', 'Orange', '77630', 'ORANGE', '', '52022444', 'fullcountbaseball.myshopify.com', 'Eric Soliz', '3915 Plantation Drive', 'Orange', 'TX', '77630', '0', '1', '2021-02-10 15:23:20'),
(26, 162, 'Icici Bank', '1', '0', '', '31231', '02-17-2021', '123123213', 'business@gmail.com', 'Location Owner Street Address', '', '16', 'Location Owner City', 'Location Owner Zip', NULL, 'eqwewqe', '', 'Location Street Address', '123213', 'Location Owner Street Address', 'Location Owner City', 'dasdsdsa', 'Location Owner Zip', '1', '1', '2021-02-11 05:23:41'),
(27, 179, 'Prosperity Bank', '1', '0', '', '236110', '03-01-2021', '5122229481', 'gabe@jdbatx.com', '1100 S Lamar Blvd', 'Suite 1145', '44', 'Austin', '78704', 'TRAVIS', '', '', 'www.jdbatx.com', 'FHF I Lamar Union LLC', 'C/O TA Realty; Attn: Asset Manager - Austin, Texas; 28 State Street', 'Boston', 'MA', '02109', '0', '1', '2021-02-11 11:13:16'),
(28, 182, 'Wells Fargo', '0', '1', 'Ja\'Net Scott', '454110', '03-01-2021', '3462981845', 'behindclozzeddoorz@gmail.com', '1212 GRAND PLAZA DR', '1308', '44', 'HOUSTON', '77067', 'HARRIS', '', '0000000', 'www.behindclozzeddoorz.info', 'Behind Clozzed Doorz', '1212 Grand Plaza DR, 1308', 'Houston', 'Texas', '77067', '0', '1', '2021-02-11 14:54:58'),
(29, 197, 'Wood Forest', '0', '0', 'Amazon Payment', '4445', '02-14-2021', '3463325232', 'hareem.riaz5@gmail.com', '6013 Queenston Blvd Apt# 316', '', '44', 'Houston', '77084', 'HARRIS', '', '', 'asharsupplies.com', 'Hareem Riaz', '6013 Queenston Blvd Apt# 316', 'Houston', 'Texas', '77084', '0', '1', '2021-02-12 23:05:47'),
(30, 199, 'Southwest Heritage Credit Union', '1', '0', '', '441120', '11-04-2020', '4324138431', 'fpbarkley@gmail.com', '3703 S County Road 1307', '', '44', 'Odessa', '79765', 'ECTOR', '', '', '3703 S County Road 1307', 'Forrest Barkley', 'Kenny Barkley', 'Odessa', 'Tx', '79765', '0', '1', '2021-02-13 12:57:55'),
(31, 225, 'wqewqewq', '0', '0', '', '134324324', '02-16-2021', '4324234234', 'test@gmail.com', 'sddfds', '', '2', 'sdfsdfs', '8000', NULL, 'mars', '', 'www.test.com', 'dsfsdfs', 'sdfdsfsd', 'sdfsd', 'sdfsd', '8000', '0', '0', '2021-02-16 04:00:17'),
(32, 227, 'asdsadsa', '1', '0', '', '123213', '02-16-2021', '4526546', 'lc479@gmail.com', 'wadasd', '', '12', 'sadsad', '23242141', NULL, 'sdfdsb', '', 'sadfsf.com', 'sdasd', 'dsdsa', 'dsadsad', 'Iowa', '23214', '0', '0', '2021-02-16 10:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `contactName` varchar(225) DEFAULT NULL,
  `contactEmail` varchar(225) DEFAULT NULL,
  `contactMessage` text DEFAULT NULL,
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
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `stateid` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `country`, `stateid`) VALUES
(1, 'ANDERSON', 'Texas'),
(2, 'ANDREWS', 'Texas'),
(3, 'ANGELINA', 'Texas'),
(4, 'ARANSAS', 'Texas'),
(5, 'ARCHER', 'Texas'),
(6, 'ARMSTRONG', 'Texas'),
(7, 'ATASCOSA', 'Texas'),
(8, 'AUSTIN', 'Texas'),
(9, 'BAILEY', 'Texas'),
(10, 'BANDERA', 'Texas'),
(11, 'BASTROP', 'Texas'),
(12, 'BAYLOR', 'Texas'),
(13, 'BEE', 'Texas'),
(14, 'BELL', 'Texas'),
(15, 'BEXAR', 'Texas'),
(16, 'BLANCO', 'Texas'),
(17, 'BORDEN', 'Texas'),
(18, 'BOSQUE', 'Texas'),
(19, 'BOWIE', 'Texas'),
(20, 'BRAZORIA', 'Texas'),
(21, 'BRAZOS', 'Texas'),
(22, 'BREWSTER', 'Texas'),
(23, 'BRISCOE', 'Texas'),
(24, 'BROOKS', 'Texas'),
(25, 'BROWN', 'Texas'),
(26, 'BURLESON', 'Texas'),
(27, 'BURNET', 'Texas'),
(28, 'CALDWELL', 'Texas'),
(29, 'CALHOUN', 'Texas'),
(30, 'CALLAHAN', 'Texas'),
(31, 'CAMERON', 'Texas'),
(32, 'CAMP', 'Texas'),
(33, 'CARSON', 'Texas'),
(34, 'CASS', 'Texas'),
(35, 'CASTRO', 'Texas'),
(36, 'CHAMBERS', 'Texas'),
(37, 'CHEROKEE', 'Texas'),
(38, 'CHILDRESS', 'Texas'),
(39, 'CLAY', 'Texas'),
(40, 'COCHRAN', 'Texas'),
(41, 'COKE', 'Texas'),
(42, 'COLEMAN', 'Texas'),
(43, 'COLLIN', 'Texas'),
(44, 'COLLINGSWORTH', 'Texas'),
(45, 'COLORADO', 'Texas'),
(46, 'COMAL', 'Texas'),
(47, 'COMANCHE', 'Texas'),
(48, 'CONCHO', 'Texas'),
(49, 'COOKE', 'Texas'),
(50, 'CORYELL', 'Texas'),
(51, 'COTTLE', 'Texas'),
(52, 'CRANE', 'Texas'),
(53, 'CROCKETT', 'Texas'),
(54, 'CROSBY', 'Texas'),
(55, 'CULBERSON', 'Texas'),
(56, 'DALLAM', 'Texas'),
(57, 'DALLAS', 'Texas'),
(58, 'DAWSON', 'Texas'),
(59, 'DEAF SMITH', 'Texas'),
(60, 'DELTA', 'Texas'),
(61, 'DENTON', 'Texas'),
(62, 'DEWITT', 'Texas'),
(63, 'DICKENS', 'Texas'),
(64, 'DIMMIT', 'Texas'),
(65, 'DOÑA ANA', 'Texas'),
(66, 'DONLEY', 'Texas'),
(67, 'DUVAL', 'Texas'),
(68, 'EASTLAND', 'Texas'),
(69, 'ECTOR', 'Texas'),
(70, 'EDWARDS', 'Texas'),
(71, 'EL PASO', 'Texas'),
(72, 'ELLIS', 'Texas'),
(73, 'ERATH', 'Texas'),
(74, 'FALLS', 'Texas'),
(75, 'FANNIN', 'Texas'),
(76, 'FAYETTE', 'Texas'),
(77, 'FISHER', 'Texas'),
(78, 'FLOYD', 'Texas'),
(79, 'FOARD', 'Texas'),
(80, 'FORT BEND', 'Texas'),
(81, 'FRANKLIN', 'Texas'),
(82, 'FREESTONE', 'Texas'),
(83, 'FRIO', 'Texas'),
(84, 'GAINES', 'Texas'),
(85, 'GALVESTON', 'Texas'),
(86, 'GARZA', 'Texas'),
(87, 'GILLESPIE', 'Texas'),
(88, 'GLASSCOCK', 'Texas'),
(89, 'GOLIAD', 'Texas'),
(90, 'GONZALES', 'Texas'),
(91, 'GRAY', 'Texas'),
(92, 'GRAYSON', 'Texas'),
(93, 'GREGG', 'Texas'),
(94, 'GRIMES', 'Texas'),
(95, 'GUADALUPE', 'Texas'),
(96, 'HALE', 'Texas'),
(97, 'HALL', 'Texas'),
(98, 'HAMILTON', 'Texas'),
(99, 'HANSFORD', 'Texas'),
(100, 'HARDEMAN', 'Texas'),
(101, 'HARDIN', 'Texas'),
(102, 'HARRIS', 'Texas'),
(103, 'HARRISON', 'Texas'),
(104, 'HARTLEY', 'Texas'),
(105, 'HASKELL', 'Texas'),
(106, 'HAYS', 'Texas'),
(107, 'HEMPHILL', 'Texas'),
(108, 'HENDERSON', 'Texas'),
(109, 'HIDALGO', 'Texas'),
(110, 'HILL', 'Texas'),
(111, 'HOCKLEY', 'Texas'),
(112, 'HOOD', 'Texas'),
(113, 'HOPKINS', 'Texas'),
(114, 'HOUSTON', 'Texas'),
(115, 'HOWARD', 'Texas'),
(116, 'HUDSPETH', 'Texas'),
(117, 'HUNT', 'Texas'),
(118, 'HUTCHINSON', 'Texas'),
(119, 'IRION', 'Texas'),
(120, 'JACK', 'Texas'),
(121, 'JACKSON', 'Texas'),
(122, 'JASPER', 'Texas'),
(123, 'JEFF DAVIS', 'Texas'),
(124, 'JEFFERSON', 'Texas'),
(125, 'JIM HOGG', 'Texas'),
(126, 'JIM WELLS', 'Texas'),
(127, 'JOHNSON', 'Texas'),
(128, 'JONES', 'Texas'),
(129, 'KARNES', 'Texas'),
(130, 'KAUFMAN', 'Texas'),
(131, 'KENDALL', 'Texas'),
(132, 'KENEDY', 'Texas'),
(133, 'KENT', 'Texas'),
(134, 'KERR', 'Texas'),
(135, 'KIMBLE', 'Texas'),
(136, 'KING', 'Texas'),
(137, 'KINNEY', 'Texas'),
(138, 'KLEBERG', 'Texas'),
(139, 'KNOX', 'Texas'),
(140, 'LA SALLE', 'Texas'),
(141, 'LAMAR', 'Texas'),
(142, 'LAMB', 'Texas'),
(143, 'LAMPASAS', 'Texas'),
(144, 'LAVACA', 'Texas'),
(145, 'LEE', 'Texas'),
(146, 'LEON', 'Texas'),
(147, 'LIBERTY', 'Texas'),
(148, 'LIMESTONE', 'Texas'),
(149, 'LIPSCOMB', 'Texas'),
(150, 'LIVE OAK', 'Texas'),
(151, 'LLANO', 'Texas'),
(152, 'LOVING', 'Texas'),
(153, 'LUBBOCK', 'Texas'),
(154, 'LYNN', 'Texas'),
(155, 'MADISON', 'Texas'),
(156, 'MARION', 'Texas'),
(157, 'MARTIN', 'Texas'),
(158, 'MASON', 'Texas'),
(159, 'MATAGORDA', 'Texas'),
(160, 'MAVERICK', 'Texas'),
(161, 'MCCULLOCH', 'Texas'),
(162, 'MCLENNAN', 'Texas'),
(163, 'MCMULLEN', 'Texas'),
(164, 'MEDINA', 'Texas'),
(165, 'MENARD', 'Texas'),
(166, 'MIDLAND', 'Texas'),
(167, 'MILAM', 'Texas'),
(168, 'MILLS', 'Texas'),
(169, 'MITCHELL', 'Texas'),
(170, 'MONTAGUE', 'Texas'),
(171, 'MONTGOMERY', 'Texas'),
(172, 'MOORE', 'Texas'),
(173, 'MORRIS', 'Texas'),
(174, 'MOTLEY', 'Texas'),
(175, 'NACOGDOCHES', 'Texas'),
(176, 'NAVARRO', 'Texas'),
(177, 'NEWTON', 'Texas'),
(178, 'NOLAN', 'Texas'),
(179, 'NUECES', 'Texas'),
(180, 'OCHILTREE', 'Texas'),
(181, 'OLDHAM', 'Texas'),
(182, 'ORANGE', 'Texas'),
(183, 'PALO PINTO', 'Texas'),
(184, 'PANOLA', 'Texas'),
(185, 'PARKER', 'Texas'),
(186, 'PARMER', 'Texas'),
(187, 'PECOS', 'Texas'),
(188, 'POLK', 'Texas'),
(189, 'POTTER', 'Texas'),
(190, 'PRESIDIO', 'Texas'),
(191, 'RAINS', 'Texas'),
(192, 'RANDALL', 'Texas'),
(193, 'REAGAN', 'Texas'),
(194, 'REAL', 'Texas'),
(195, 'RED RIVER', 'Texas'),
(196, 'REEVES', 'Texas'),
(197, 'REFUGIO', 'Texas'),
(198, 'ROBERTS', 'Texas'),
(199, 'ROBERTSON', 'Texas'),
(200, 'ROCKWALL', 'Texas'),
(201, 'RUNNELS', 'Texas'),
(202, 'RUSK', 'Texas'),
(203, 'SABINE', 'Texas'),
(204, 'SAN AUGUSTINE', 'Texas'),
(205, 'SAN JACINTO', 'Texas'),
(206, 'SAN PATRICIO', 'Texas'),
(207, 'SAN SABA', 'Texas'),
(208, 'SCHLEICHER', 'Texas'),
(209, 'SCURRY', 'Texas'),
(210, 'SHACKELFORD', 'Texas'),
(211, 'SHELBY', 'Texas'),
(212, 'SHERMAN', 'Texas'),
(213, 'SMITH', 'Texas'),
(214, 'SOMERVELL', 'Texas'),
(215, 'STARR', 'Texas'),
(216, 'STEPHENS', 'Texas'),
(217, 'STERLING', 'Texas'),
(218, 'STONEWALL', 'Texas'),
(219, 'SUTTON', 'Texas'),
(220, 'SWISHER', 'Texas'),
(221, 'TARRANT', 'Texas'),
(222, 'TAYLOR', 'Texas'),
(223, 'TERRELL', 'Texas'),
(224, 'TERRY', 'Texas'),
(225, 'THROCKMORTON', 'Texas'),
(226, 'TITUS', 'Texas'),
(227, 'TOM GREEN', 'Texas'),
(228, 'TRAVIS', 'Texas'),
(229, 'TRINITY', 'Texas'),
(230, 'TYLER', 'Texas'),
(231, 'UPSHUR', 'Texas'),
(232, 'UPTON', 'Texas'),
(233, 'UVALDE', 'Texas'),
(234, 'VAL VERDE', 'Texas'),
(235, 'VAN ZANDT', 'Texas'),
(236, 'VICTORIA', 'Texas'),
(237, 'WALKER', 'Texas'),
(238, 'WALLER', 'Texas'),
(239, 'WARD', 'Texas'),
(240, 'WASHINGTON', 'Texas'),
(241, 'WEBB', 'Texas'),
(242, 'WHARTON', 'Texas'),
(243, 'WHEELER', 'Texas'),
(244, 'WICHITA', 'Texas'),
(245, 'WILBARGER', 'Texas'),
(246, 'WILLACY', 'Texas'),
(247, 'WILLIAMSON', 'Texas'),
(248, 'WILSON', 'Texas'),
(249, 'WINKLER', 'Texas'),
(250, 'WISE', 'Texas'),
(251, 'WOOD', 'Texas'),
(252, 'YOAKUM', 'Texas'),
(253, 'YOUNG', 'Texas'),
(254, 'ZAPATA', 'Texas'),
(255, 'ZAVALA', 'Texas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_generalquestions`
--

CREATE TABLE `tbl_generalquestions` (
  `gqid` int(11) NOT NULL,
  `user_id` int(225) DEFAULT NULL,
  `alcoholicBeverages` varchar(225) DEFAULT NULL,
  `alcoholicBeveragesPermit` varchar(225) DEFAULT NULL,
  `temporaryLocations` varchar(225) DEFAULT NULL,
  `temporaryLocationName` varchar(225) DEFAULT NULL,
  `periodInAttendance` varchar(225) DEFAULT NULL,
  `homeBased` varchar(225) DEFAULT NULL,
  `mailOrder` varchar(225) DEFAULT NULL,
  `directions` varchar(225) DEFAULT NULL,
  `salesPeople` varchar(225) DEFAULT NULL,
  `atCustomersLocation` varchar(225) DEFAULT NULL,
  `healthSpa` varchar(225) DEFAULT NULL,
  `wineryOutsideTexas` varchar(225) DEFAULT NULL,
  `electronicCigarettes` varchar(225) DEFAULT NULL,
  `electronicCigarettesOnline` varchar(225) DEFAULT NULL,
  `telecommunicationServices` varchar(225) DEFAULT NULL,
  `telecommunicationServicesUnderChapter711` varchar(225) DEFAULT NULL,
  `sellFireworks` varchar(225) DEFAULT NULL,
  `dieselPoweredEquipment` varchar(225) DEFAULT NULL,
  `otherDistributionPoints` varchar(225) DEFAULT NULL,
  `exceed8k` varchar(225) DEFAULT NULL,
  `takingOrderTaxableItems` varchar(225) DEFAULT NULL,
  `receiptFromPersonalProperty` varchar(225) DEFAULT NULL,
  `franchiseeOperatingUnderName` varchar(225) DEFAULT NULL,
  `electronicOrPhysicalMarketplace` varchar(225) DEFAULT NULL,
  `ownershipInSimilarBusiness` varchar(225) DEFAULT NULL,
  `ownershipInBusinessMaintainsLocation` varchar(225) DEFAULT NULL,
  `purchaseExistingBusiness` varchar(225) DEFAULT NULL,
  `anyOftheFollowing` varchar(225) DEFAULT NULL,
  `previousOwnerTradeName` varchar(225) DEFAULT NULL,
  `previousOwnerPurchasePrice` varchar(225) DEFAULT NULL,
  `previousOwnerPurchaseDate` varchar(225) DEFAULT NULL,
  `previousOwnerTexasTaxpayerNumber` varchar(225) DEFAULT NULL,
  `previousOwnerFEIN` varchar(225) DEFAULT NULL,
  `previousOwnerStreetAddress` varchar(225) DEFAULT NULL,
  `previousOwnerCity` varchar(225) DEFAULT NULL,
  `previousOwnerState` varchar(225) DEFAULT NULL,
  `previousOwnerCounty` varchar(225) DEFAULT NULL,
  `previousCountytxt` varchar(225) DEFAULT NULL,
  `previousOwnerZip` varchar(225) DEFAULT NULL,
  `purchased` text DEFAULT NULL,
  `otherPurchased` varchar(225) DEFAULT NULL,
  `locationStreetAddress` varchar(225) DEFAULT NULL,
  `locationCity` varchar(225) DEFAULT NULL,
  `locationState` varchar(225) DEFAULT NULL,
  `gCounty` varchar(225) DEFAULT NULL,
  `gCountytxt` varchar(225) DEFAULT NULL,
  `locationZip` varchar(225) DEFAULT NULL,
  `operationmonth` varchar(225) DEFAULT NULL,
  `operatemonths` varchar(225) DEFAULT NULL,
  `telecommunicationsservice` varchar(225) DEFAULT NULL,
  `wirelessemergency` varchar(225) DEFAULT NULL,
  `emergencyservices` varchar(225) DEFAULT NULL,
  `equalizationsurcharge` varchar(225) DEFAULT NULL,
  `sellwireless` varchar(225) DEFAULT NULL,
  `beveragecommission` varchar(225) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_generalquestions`
--

INSERT INTO `tbl_generalquestions` (`gqid`, `user_id`, `alcoholicBeverages`, `alcoholicBeveragesPermit`, `temporaryLocations`, `temporaryLocationName`, `periodInAttendance`, `homeBased`, `mailOrder`, `directions`, `salesPeople`, `atCustomersLocation`, `healthSpa`, `wineryOutsideTexas`, `electronicCigarettes`, `electronicCigarettesOnline`, `telecommunicationServices`, `telecommunicationServicesUnderChapter711`, `sellFireworks`, `dieselPoweredEquipment`, `otherDistributionPoints`, `exceed8k`, `takingOrderTaxableItems`, `receiptFromPersonalProperty`, `franchiseeOperatingUnderName`, `electronicOrPhysicalMarketplace`, `ownershipInSimilarBusiness`, `ownershipInBusinessMaintainsLocation`, `purchaseExistingBusiness`, `anyOftheFollowing`, `previousOwnerTradeName`, `previousOwnerPurchasePrice`, `previousOwnerPurchaseDate`, `previousOwnerTexasTaxpayerNumber`, `previousOwnerFEIN`, `previousOwnerStreetAddress`, `previousOwnerCity`, `previousOwnerState`, `previousOwnerCounty`, `previousCountytxt`, `previousOwnerZip`, `purchased`, `otherPurchased`, `locationStreetAddress`, `locationCity`, `locationState`, `gCounty`, `gCountytxt`, `locationZip`, `operationmonth`, `operatemonths`, `telecommunicationsservice`, `wirelessemergency`, `emergencyservices`, `equalizationsurcharge`, `sellwireless`, `beveragecommission`, `created_date`) VALUES
(7, NULL, '0', '0', '0', '', '', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '0', '0', '0', '0', '', '2020-12-17 15:11:42'),
(8, 7, '1', '1', '1', 'Location and/or Event Name', 'Location and/or Event Name', '1', '0', 'Testingadad', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', 'Trade Name', 'Purchase Price', '2020-12-12', 'Previous Owner\'s Texas Taxpayer Number', '', 'Location Owner Street Address', 'Location Owner City', '14', '', NULL, 'Location Owner Zip', 'a:2:{i:0;s:11:\"Real Estate\";i:1;s:5:\"Other\";}', '', 'Location Street Address', 'Location City222', 'Location State', NULL, NULL, 'Location Zip', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-17 15:12:58'),
(10, 87, '0', '', '0', '', '', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '1', '1', '0', 'Trade Name', 'Trade Name', '2020-12-16', 'Trade Name', '1324234234', 'sdfsdfsd', 'wffsf', '5', 'BAYLOR', NULL, '23423432432423423', 'a:2:{i:0;s:9:\"Inventory\";i:1;s:11:\"Real Estate\";}', '', '24234234', '12414124', 'asDasfasF', NULL, NULL, 'acaccsd23E23E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-18 17:19:16'),
(11, 89, '1', '1', '1', 'Any', 'WW', '1', '1', 'SHOULD NOT BE A REQUIRED FIELD', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Any', '200', '2015-06-28', '1', '1', '141 Covington Drive', 'Benbrook', '45', 'ANDERSON', NULL, '76126', 'a:3:{i:0;s:9:\"Inventory\";i:1;s:9:\"Equipment\";i:2;s:5:\"Other\";}', '', '320 TX-121', 'Coppell', 'TX', NULL, NULL, '75019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-18 20:44:04'),
(12, 95, '0', '0', '0', '', '', '0', '0', '', '0', '0', '1', '1', '1', '0', '1', '1', '0', '1', '1', '0', '1', '0', '0', '1', '0', '1', '0', '0', '', '', '', '', '', '', '', '', '', NULL, '', '', '', 'test the address', 'panchkula', 'Chandigarh', NULL, NULL, '134290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-22 16:28:59'),
(13, 78, '1', '1', '1', 'dsfsdfds', 'fsdd', '1', '1', 'sdadsada', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '0', NULL, 'qwewqe', 'qwewqeqe', '0003-12-31', '12323133', '', '123213', '1232', '16', 'BLANCO', '', '1232131', 'a:2:{i:0;s:15:\"Corporate Stock\";i:1;s:9:\"Equipment\";}', '', '', 'qeewqeqe', '', '', '', 'wewq', '1', 'qweewqeqeq', '0', '1', '1', '1', '0', 'asdsada', '2020-12-24 12:12:46'),
(14, 100, '1', '1', '1', 'dfdfd', 'dfdfd', '1', '1', 'dfdfdf', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, 'Any', '200', '2014-11-30', '1', '1', '2634 SIR GAWAIN LN', 'LEWISVILLE', '25', 'ANGELINA', NULL, '75056', 'a:4:{i:0;s:9:\"Inventory\";i:1;s:11:\"Real Estate\";i:2;s:15:\"Corporate Stock\";i:3;s:9:\"Equipment\";}', '', 'eeeee', 'LEWISVILLE', 'TX', NULL, NULL, '75056', '1', 'dfdfd', '1', '0', '0', '0', '1', 'dfdfd', '2020-12-24 17:31:56'),
(15, 107, '1', '1', '1', 'Event Name', 'Attendance', '1', '1', 'Rural Area', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '0', '0', '0', '0', '', '2021-01-13 18:08:13'),
(16, 121, '0', '', '0', '', '', '1', '1', 'In Arlington TX ', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-06 18:37:20'),
(17, 127, '0', '', '0', '', '', '1', '1', 'N/A', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-07 12:13:05'),
(18, 136, '0', '', '0', '', '', '1', '1', 'Cbd resale', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-08 03:34:20'),
(19, 112, '1', '1', '1', 'Harsh Evnt Son', '1256 Period in Attendance', '1', '0', 'Hello Testsiadsdsadsad', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '0', '0', '0', '0', '', '2021-02-08 05:29:21'),
(20, 138, '0', '', '0', '', '', '1', '1', 'I am not in a rural area, just off two hwys ', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-08 08:58:45'),
(21, 142, '0', '', '0', '', '', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-08 12:58:46'),
(22, 152, '0', '', '0', '', '', '1', '1', 'N/A', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-09 11:07:55'),
(23, 157, '0', '', '0', '', '', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-09 21:29:31'),
(24, 158, '0', '', '0', '', '', '0', '1', '', '1', '1', '0', '0', '1', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '0', '1', '1', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1', '0', '1', '0', '1', '', '2021-02-09 23:28:14'),
(25, 159, '0', '', '0', '', '', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-09 23:44:16'),
(26, 162, '0', '0', '0', '', '', '1', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '1', '0', '1', '0', '', '2021-02-10 05:02:33'),
(27, 164, '0', '', '0', '', '', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '1', '1', '1', '1', '0', '', '2021-02-10 08:08:57'),
(28, 171, '0', '', '0', '', '', '1', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-10 15:27:26'),
(29, 182, '0', '', '0', '', '', '1', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-11 14:58:17'),
(30, 197, '0', '0', '0', '', '', '1', '1', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '0', '0', '0', '0', '', '2021-02-12 23:07:44'),
(31, 199, '0', '', '0', '', '', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-13 13:02:11'),
(32, 225, '0', '', '0', '', '', '0', '0', '', '0', '0', '0', '0', '1', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '1', '', '2021-02-16 04:01:00'),
(33, 227, '0', '', '0', '', '', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '0', '', '', '', '0', '', '2021-02-16 10:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `id` int(11) NOT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `location`) VALUES
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'Florida'),
(10, 'Georgia'),
(11, 'Hawaii'),
(12, 'Idaho'),
(13, 'Illinois'),
(14, 'Indiana'),
(15, 'Iowa'),
(16, 'Kansas'),
(17, 'Kentucky'),
(18, 'Louisiana'),
(19, 'Maine'),
(20, 'Maryland'),
(21, 'Massachusetts'),
(22, 'Michigan'),
(23, 'Minnesota'),
(24, 'Mississippi'),
(25, 'Missouri'),
(26, 'Montana'),
(27, 'Nebraska'),
(28, 'Nevada'),
(29, 'New Hampshire'),
(30, 'New Jersey'),
(31, 'New Mexico'),
(32, 'New York'),
(33, 'New York'),
(34, 'North Carolina'),
(35, 'North Dakota'),
(36, 'Ohio'),
(37, 'Oklahoma'),
(38, 'Oregon'),
(39, 'Pennsylvania'),
(40, 'Rhode Island'),
(41, 'South Carolina'),
(42, 'South Dakota'),
(43, 'Tennessee'),
(44, 'Texas'),
(45, 'Utah'),
(46, 'Vermont'),
(47, 'Virginia'),
(48, 'Washington'),
(49, 'West Virginia'),
(50, 'Wisconsin'),
(51, 'Wyoming');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organizationinformation`
--

CREATE TABLE `tbl_organizationinformation` (
  `orgid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `businessName` varchar(255) DEFAULT NULL,
  `registrationDate` varchar(255) DEFAULT NULL,
  `reasonForApplying` varchar(255) DEFAULT NULL,
  `typeOfEntity` varchar(255) DEFAULT NULL,
  `FEIN` varchar(255) DEFAULT NULL,
  `individualSSN` varchar(255) DEFAULT NULL,
  `texasTaxpayerNumber` varchar(255) DEFAULT NULL,
  `formationState` int(255) DEFAULT NULL,
  `TIN` varchar(255) DEFAULT NULL,
  `texasTIN` varchar(255) DEFAULT NULL,
  `texasFileNumber` varchar(255) DEFAULT NULL,
  `LegalNameofSoleProprietor` varchar(225) DEFAULT NULL,
  `fname` varchar(225) DEFAULT NULL,
  `middle` varchar(225) DEFAULT NULL,
  `lname` varchar(225) DEFAULT NULL,
  `created_Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_organizationinformation`
--

INSERT INTO `tbl_organizationinformation` (`orgid`, `user_id`, `businessName`, `registrationDate`, `reasonForApplying`, `typeOfEntity`, `FEIN`, `individualSSN`, `texasTaxpayerNumber`, `formationState`, `TIN`, `texasTIN`, `texasFileNumber`, `LegalNameofSoleProprietor`, `fname`, `middle`, `lname`, `created_Date`) VALUES
(3, 77, 'Wowz Comapny1', '2222-12-12', '1', '5', 'Federal Employer ID number ', '', 'Texas Taxpayer Numbe', 19, '0', '0', 'xcvfdsffds', NULL, NULL, NULL, NULL, '2020-12-11 16:28:14'),
(5, 85, 'ecoMIST Rx', '2020-12-14', '1', '1', '123456789', '123456', '', 44, '0', '0', '', NULL, NULL, NULL, NULL, '2020-12-14 23:11:01'),
(6, NULL, 'Venoux Rising', '02-09-2021', '1', '5', '862292858', '', '', 44, '0', '', '', NULL, '', '', '', '2020-12-15 20:43:10'),
(7, 86, 'Legal Business Name - HERE', '2011-05-19', '1', '1', '', '123456789', '', 44, '0', '1', '123456789', NULL, NULL, NULL, NULL, '2020-12-18 16:31:38'),
(8, 87, 'Legal Business Name - HERE', '1978-12-13', '1', '2', '123456789987654321', '', '', 11, '0', '1', '12345678765432', NULL, NULL, NULL, NULL, '2020-12-18 17:06:16'),
(9, 89, 'ecoMIST Rx', '2001-11-30', '1', '6', '123456789', '', '', 44, '1', '0', '', NULL, NULL, NULL, NULL, '2020-12-18 20:38:39'),
(10, 94, 'testing - Legal Name of Business/Entity', '2020-12-01', '1', '1', '141412412322313131', '2321315234234234234', '23432dfdf232df32rfwd23r32fwe32r', 1, '0', '343241434324234324343434', '12312124124124141214', 'Legal Name of Sole Proprietor', 'Legal Name of Sole Proprietor', 'Legal Name of Sole Proprietor', 'Legal Name of Sole Proprietor', '2020-12-22 11:30:38'),
(11, 95, 'Legal Name of Business/Entity', '2020-12-02', '1', '6', '2545343453', '1234123423', '12334543545', 1, '1', '1342325245', '', NULL, 'First naem', 'middle name', 'last name', '2020-12-22 15:57:00'),
(12, 78, 'Wowz Comapny', '275760-02-13', '2', '1', '1121321323', '852314562', '12112111313', 8, '0', '', '1ww3332', NULL, 'wqewewq', '', 'wewewe', '2020-12-22 18:00:00'),
(13, 100, 'Testing', '2016-09-27', '1', '4', '123456789', '', '11', 44, '1', '123456789', '1234', NULL, '', '', '', '2020-12-24 17:22:00'),
(14, 107, 'Legal Name of Business2', '2021-01-04', '2', '8', '1414124123', '', '23432153454', 44, '0', '', '0123456789', NULL, '', '', '', '2021-01-13 17:54:48'),
(15, 115, '', '2021-02-03', '1', '1', '', '360548424', '', 44, '0', '', '', NULL, 'Martha', 'Ann', 'Collins', '2021-02-04 00:05:48'),
(16, 117, '', '2021-02-06', '1', '1', '', '640183428', '', 44, '0', '', '', NULL, 'Ashley', 'Nichole', 'Chandler', '2021-02-06 13:52:45'),
(17, 118, '', '2021-02-05', '1', '1', '', '630322367', '', 44, '0', '', '', NULL, 'Brittney', 'Snider', 'Castleman', '2021-02-06 13:55:40'),
(18, 120, '', '2021-02-06', '1', '1', '', '635789332', '', 44, '0', '', '', NULL, 'Juanita ', 'Flores', 'Almodovar ', '2021-02-06 15:10:17'),
(19, 121, '', '2021-01-14', '1', '1', '861461644', '463716274', '', 44, '0', '', '', NULL, 'Crystal ', 'Gayle', 'Russell ', '2021-02-06 18:16:06'),
(20, 122, '', '2021-02-06', '1', '1', '', '459435689', '', 44, '0', '', '', NULL, 'Laquita', 'Ann', 'Williams', '2021-02-06 20:13:19'),
(21, 127, '', '2021-02-07', '1', '1', '', '417452956', '', 44, '0', '', '', NULL, 'Miles', '', 'Stover', '2021-02-07 12:03:11'),
(22, 129, '', '2021-02-08', '1', '1', '', '737174632', '', 44, '0', '', '', NULL, 'Glenda ', 'Lilivet', 'Munguia', '2021-02-07 12:52:43'),
(23, 131, 'Verite Ventures International ', '2020-07-10', '2', '1', '', '378778206', '', 44, '0', '', '', NULL, 'Affiong ', 'Mfon', 'Amana', '2021-02-07 22:00:35'),
(24, 136, '', '2021-02-08', '1', '1', '', '427553063', '', 10, '0', '', '', NULL, 'Larry', 'Terrell', 'Dillon', '2021-02-08 03:30:02'),
(25, 138, 'Triple G Firearms ', '1979-12-10', '1', '1', '851956598', '456915520', '', 44, '0', '', '', NULL, 'guadalupe', 'nmn', 'sandoval garibay ', '2021-02-08 08:45:36'),
(26, 139, 'Sugar N Spice Kid\'s Boutique', '2020-12-18', '1', '1', '', '465430186', '', 44, '0', '', '', NULL, 'Bernadette', 'Denise', 'Scott', '2021-02-08 09:05:19'),
(27, 142, 'WENDY BOUTIQUE', '2021-02-08', '1', '1', '', '465292664', '32012310903', 44, '0', '', '', NULL, 'FREDDIE', 'E', 'white', '2021-02-08 12:45:00'),
(28, 145, '', '2021-02-08', '2', '1', '', '644567608', '', 44, '0', '', '', NULL, 'Sabrina ', 'Lynn', 'Gracia ', '2021-02-08 15:19:22'),
(29, 146, '', '2021-02-08', '1', '1', '', '459412612', '', 44, '0', '', '', NULL, 'CK', '\"CK\"', 'O\'Neal', '2021-02-08 15:30:40'),
(30, 152, 'BATES PRO SOUND', '02-09-2021', '2', '1', '', '433457387', '', 18, '0', '', '', NULL, 'BRANDON', 'KINGSLEY', 'BATES', '2021-02-09 10:55:36'),
(31, 153, 'Keshav', '02-16-2021', '1', '3', '23432', '', '', 3, '0', '', '653413', NULL, '', '', '', '2021-02-09 12:11:33'),
(32, 157, '', '02-09-2021', '1', '1', '', '590464724', '', 44, '0', '', '', NULL, 'summer', '', 'thomas', '2021-02-09 21:07:09'),
(33, 161, '', '02-10-2021', '2', '1', '', '645522916', '', 44, '0', '', '', NULL, 'Alex', 'Nicolas', 'Olivas', '2021-02-10 01:12:51'),
(34, 163, 'Berkston LLC', '06-14-2018', '2', '5', '830769143', '', '32067363278', 44, '0', '', '803033522', NULL, '', '', '', '2021-02-10 07:23:45'),
(35, 167, '212% LLC   DBA La Nortena Tamale Factory', '09-21-2020', '1', '5', '853338384', '', '17525872085', 44, '0', '', '803772039', NULL, '', '', '', '2021-02-10 11:09:51'),
(36, 170, '', '02-10-2021', '1', '1', '', '487356247', '', 44, '0', '', '', NULL, 'Hieu', 'Trung', 'Le', '2021-02-10 14:31:40'),
(37, 171, 'Full Count Baseball Apparel', '01-14-2021', '1', '6', '861671665', '', '', 44, '0', '', '861671665', NULL, '', '', '', '2021-02-10 15:01:09'),
(38, 174, 'Yard Love LCP', '02-10-2021', '1', '1', '', '467135835', '', 44, '0', '', '', NULL, 'Alma', 'Jeane', 'Dodson', '2021-02-10 20:49:05'),
(39, 176, 'The Swanky Foxx', '02092021', '1', '5', '861995230', '', '', 44, '0', '', '803932889', NULL, '', '', '', '2021-02-10 23:00:01'),
(40, 162, 'Wowz Comapny', '02-11-2021', '1', '2', '132332131', '', '', 16, '0', '', '12321323', NULL, '', '', '', '2021-02-11 05:15:01'),
(41, 179, 'Joseph Design Build Inc', '02-11-2021', '2', '2', '831497311', '', '32067864945', 44, '0', '', '803074136', NULL, '', '', '', '2021-02-11 10:32:33'),
(42, 181, '', '07122019', '1', '1', '', '642015021', '862015395', 44, '0', '', '', NULL, 'SharDel ', '', 'Ross', '2021-02-11 11:32:03'),
(43, 182, 'Behind Clozzed Doorz', '03-01-2021', '1', '1', '', '462636351', '32077723982', 44, '0', '', '', NULL, 'Ja\'Net', '', 'Scott', '2021-02-11 14:43:54'),
(44, 183, 'Automatic Entrance Solutions LLC', '11-23-2020', '1', '5', '854046615', '', '', 44, '0', '', '803838671', NULL, '', '', '', '2021-02-11 15:26:15'),
(45, 185, '', '02-11-2021', '1', '1', '', '636328675', '', 44, '0', '', '', NULL, 'Anthony', '', 'Srey', '2021-02-11 19:02:19'),
(46, 186, '', '02-11-2021', '2', '1', '', '227553912', '', 44, '0', '', '', NULL, 'Tassie', 'R', 'Nash-Murphy ', '2021-02-11 20:50:57'),
(47, 187, '', '02-11-2021', '1', '1', '', '723289245', '', 44, '0', '', '', NULL, 'Dalia ', 'Esther', 'Flores', '2021-02-11 22:32:27'),
(48, 190, 'Easlon Essays Freelancing', '02-12-2021', '1', '1', '862043332', '543530800', '', 44, '0', '', '', NULL, 'Sarah', 'McKenzie', 'Easlon', '2021-02-12 11:58:57'),
(49, 194, 'Celebrate Kids, Inc.', '07-16-1992', '2', '3', '752440900', '', '', 44, '0', '', '123807401', NULL, 'Kathy', '', 'Koch', '2021-02-12 15:09:47'),
(50, 197, 'Ashar\'s Supplies LLC', '01-29-2021', '1', '5', '861990016', '', '', 44, '0', '', '0803901869', NULL, '', '', '', '2021-02-12 22:48:39'),
(51, 199, 'Midessa Motors LLC', '11-04-2020', '1', '5', '853298313', '', '', 44, '0', '', '803785062', NULL, '', '', '', '2021-02-13 12:49:13'),
(52, 201, '', '02-13-2021', '1', '1', '', '464436973', '', 44, '0', '', '', NULL, 'Liana', '', 'Rodriguez', '2021-02-13 16:43:48'),
(53, 203, 'EMZz Studios LLC', '01302021', '2', '5', '681904144', '', '32077620600', 44, '0', '', '803919393', NULL, '', '', '', '2021-02-13 18:51:33'),
(54, 207, 'CHOSEDEV', '05-15-2018', '2', '1', '830541479', '86619865', '', 44, '0', '', '', NULL, 'Misbah', '', 'Gul', '2021-02-14 00:01:07'),
(55, 208, '', '02-14-2021', '1', '1', '', '562939', '', 44, '0', '', '', NULL, 'Vivian', 'Marilyn', 'Schroeder', '2021-02-14 01:40:58'),
(56, 209, '', '02-14-2021', '1', '1', '', '642185712', '', 44, '0', '', '', NULL, 'Gladys', '', 'Landers', '2021-02-14 04:59:54'),
(57, 210, 'The Golden Ranch', '02-11-2021', '1', '5', '862014169', '', '', 44, '0', '', 'TX', NULL, '', '', '', '2021-02-14 11:56:47'),
(58, 212, 'TRJ CREATIONS', '10-20-2020', '2', '1', '231498485', '231498485', '', 44, '0', '', '', NULL, 'Christy', 'Jean', 'Traylor', '2021-02-14 16:45:35'),
(59, 214, 'HOME TOWN LIQUOR & SPIRITS, LLC', '10-26-2020', '1', '5', '000025997', '', '000025997', 44, '1', '4580', '802041801', NULL, '', '', '', '2021-02-14 17:21:48'),
(60, 216, '', '02-14-2021', '1', '1', '', '631428265', '', 44, '0', '', '', NULL, 'Maleka', 'I', 'Barber', '2021-02-14 21:06:46'),
(61, 215, '', '12-04-2020', '1', '1', '', '462559702', '', 44, '0', '', '', NULL, 'Jocasta', '', 'Daniels', '2021-02-14 21:30:47'),
(62, 217, 'KCs Trading Post', '07-28-2020', '1', '1', '852207851', '463870837', '32060042218', 44, '1', '3206004221', '', NULL, 'Katherine', '', 'Luckie', '2021-02-14 23:01:15'),
(63, 219, '', '02-14-2021', '1', '1', '', '606425123', '', 44, '0', '', '', NULL, 'Marlene ', '', 'Munoz', '2021-02-14 23:29:19'),
(64, 221, '1', '02-16-2021', '1', '3', '1212121', '11111', '12123131232', 17, '1', '1212121212', '12121211212', NULL, 'Jez', '2', 'Ramz', '2021-02-15 14:04:58'),
(65, 225, 'asdsada', '02-10-2021', '1', '2', '1212312', '', '', 1, '0', '', '232132131', NULL, '', '', '', '2021-02-16 03:59:07'),
(66, 227, '', '02-16-2021', '2', '1', '', '1312425523', '', 14, '0', '', '', NULL, 'Lavenia', 'Carmela', 'Berame', '2021-02-16 10:46:28'),
(67, 229, ' FLORA & GARDENS DESIGN LLC', '02-19-2021', '2', '5', '862165025', '', '', 44, '0', '', '803940603', NULL, '', '', '', '2021-02-22 11:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` varchar(225) DEFAULT NULL,
  `balance_transaction` varchar(225) DEFAULT NULL,
  `carduserName` varchar(225) DEFAULT NULL,
  `payment_method_details` text DEFAULT NULL,
  `LicenseNumber` text DEFAULT NULL,
  `payment_status` varchar(225) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `orderStatus` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payid`, `user_id`, `amount`, `balance_transaction`, `carduserName`, `payment_method_details`, `LicenseNumber`, `payment_status`, `created_date`, `orderStatus`) VALUES
(3, 78, '10', 'txn_1I47oZCKQvPFa2xjnqzWPbKw', 'harsh', '{\"id\":\"ch_1I47oZCKQvPFa2xjB97lYyGV\",\"object\":\"charge\",\"amount\":1000,\"amount_captured\":1000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1I47oZCKQvPFa2xjnqzWPbKw\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"Stripe\",\"captured\":true,\"created\":1609346783,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{\"user_id\":\"78\",\"carduserName\":\"harsh\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":3,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1I47oXCKQvPFa2xjKqvxxX3R\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":12,\"exp_year\":2020,\"fingerprint\":\"Ro4N9htWY8KzCw71\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"1111\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1BGFtyCKQvPFa2xj\\/ch_1I47oZCKQvPFa2xjB97lYyGV\\/rcpt_IfSkAQEgEPVr5zDDECCMYWd1SDYNodd\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1I47oZCKQvPFa2xjB97lYyGV\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1I47oXCKQvPFa2xjKqvxxX3R\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2020,\"fingerprint\":\"Ro4N9htWY8KzCw71\",\"funding\":\"credit\",\"last4\":\"1111\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', NULL, 'complete', '2020-12-30 16:46:24', 'Complete'),
(4, 78, '10', 'txn_1I49LPCKQvPFa2xj6bfhO6LV', 'harsh', '{\"id\":\"ch_1I49LOCKQvPFa2xjoHHEFQOc\",\"object\":\"charge\",\"amount\":1000,\"amount_captured\":1000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1I49LPCKQvPFa2xj6bfhO6LV\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"Stripe\",\"captured\":true,\"created\":1609352662,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{\"user_id\":\"78\",\"carduserName\":\"harsh\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":19,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1I49LMCKQvPFa2xjbwwUoKqQ\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":12,\"exp_year\":2020,\"fingerprint\":\"Ro4N9htWY8KzCw71\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"1111\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1BGFtyCKQvPFa2xj\\/ch_1I49LOCKQvPFa2xjoHHEFQOc\\/rcpt_IfUKDk7r5pQuunT4op52urQzgo9nSpv\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1I49LOCKQvPFa2xjoHHEFQOc\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1I49LMCKQvPFa2xjbwwUoKqQ\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2020,\"fingerprint\":\"Ro4N9htWY8KzCw71\",\"funding\":\"credit\",\"last4\":\"1111\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', NULL, 'complete', '2020-12-30 18:24:23', 'Complete'),
(5, 78, '158', 'txn_1I9DEoCKQvPFa2xjS6HzQqju', 'Harsh', '{\"id\":\"ch_1I9DEnCKQvPFa2xjtCCQrtwa\",\"object\":\"charge\",\"amount\":15800,\"amount_captured\":15800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1I9DEoCKQvPFa2xjS6HzQqju\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"Stripe\",\"captured\":true,\"created\":1610559269,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{\"user_id\":\"78\",\"carduserName\":\"Harsh\",\"LicenseNumber\":\"Mr12345\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":27,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1I9DElCKQvPFa2xjKgVSMy5A\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":12,\"exp_year\":2021,\"fingerprint\":\"Ro4N9htWY8KzCw71\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"1111\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1BGFtyCKQvPFa2xj\\/ch_1I9DEnCKQvPFa2xjtCCQrtwa\\/rcpt_IkigiuSM8k2UOdfX7j5wGptezbIiO90\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1I9DEnCKQvPFa2xjtCCQrtwa\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1I9DElCKQvPFa2xjKgVSMy5A\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2021,\"fingerprint\":\"Ro4N9htWY8KzCw71\",\"funding\":\"credit\",\"last4\":\"1111\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', 'Mr12345', 'complete', '2021-01-13 17:34:30', 'Complete'),
(6, 107, '158', 'txn_1I9DnlCKQvPFa2xjeV9OEPxv', 'Keshav', '{\"id\":\"ch_1I9DnkCKQvPFa2xjOlhew1Hn\",\"object\":\"charge\",\"amount\":15800,\"amount_captured\":15800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1I9DnlCKQvPFa2xjeV9OEPxv\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"Stripe\",\"captured\":true,\"created\":1610561436,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{\"user_id\":\"107\",\"carduserName\":\"Keshav\",\"LicenseNumber\":\"13444222\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":8,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1I9DniCKQvPFa2xjliwTTqrq\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":5,\"exp_year\":2022,\"fingerprint\":\"bwKJB5st0d1fu1Mm\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"4242\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1BGFtyCKQvPFa2xj\\/ch_1I9DnkCKQvPFa2xjOlhew1Hn\\/rcpt_IkjGxjfGH55iBKFMpu83j6sXQd4s9SF\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1I9DnkCKQvPFa2xjOlhew1Hn\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1I9DniCKQvPFa2xjliwTTqrq\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":5,\"exp_year\":2022,\"fingerprint\":\"bwKJB5st0d1fu1Mm\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '13444222', 'complete', '2021-01-13 18:10:37', 'In-Processing'),
(7, 109, '109', 'txn_1I9NBQCKQvPFa2xjLW0qo9Vb', 'fsdfsdfsdf', '{\"id\":\"ch_1I9NBQCKQvPFa2xj739etwnp\",\"object\":\"charge\",\"amount\":10900,\"amount_captured\":10900,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1I9NBQCKQvPFa2xjLW0qo9Vb\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"Stripe\",\"captured\":true,\"created\":1610597500,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{\"user_id\":\"109\",\"carduserName\":\"fsdfsdfsdf\",\"LicenseNumber\":\"123456789\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":6,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1I9NBOCKQvPFa2xjqOW3kj91\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":1,\"exp_year\":2021,\"fingerprint\":\"bwKJB5st0d1fu1Mm\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"4242\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1BGFtyCKQvPFa2xj\\/ch_1I9NBQCKQvPFa2xj739etwnp\\/rcpt_Iksx74gsbRobnQMxGqmFILlGSyYc4Dl\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1I9NBQCKQvPFa2xj739etwnp\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1I9NBOCKQvPFa2xjqOW3kj91\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":1,\"exp_year\":2021,\"fingerprint\":\"bwKJB5st0d1fu1Mm\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '123456789', 'complete', '2021-01-14 04:11:40', 'Incomplete'),
(8, 110, '109', 'txn_1I9aqjCKQvPFa2xjA865uBDz', 'keshav1', '{\"id\":\"ch_1I9aqjCKQvPFa2xj5P9Pt2kg\",\"object\":\"charge\",\"amount\":10900,\"amount_captured\":10900,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1I9aqjCKQvPFa2xjA865uBDz\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"Stripe\",\"captured\":true,\"created\":1610650033,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{\"user_id\":\"110\",\"carduserName\":\"keshav1\",\"LicenseNumber\":\"2344\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":49,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1I9aqhCKQvPFa2xj9pw6NCyU\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":2,\"exp_year\":2022,\"fingerprint\":\"bwKJB5st0d1fu1Mm\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"4242\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1BGFtyCKQvPFa2xj\\/ch_1I9aqjCKQvPFa2xj5P9Pt2kg\\/rcpt_Il74qi7VDmmYflIpzTNwA5eV9LHn0Xd\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1I9aqjCKQvPFa2xj5P9Pt2kg\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1I9aqhCKQvPFa2xj9pw6NCyU\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":2,\"exp_year\":2022,\"fingerprint\":\"bwKJB5st0d1fu1Mm\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '2344', 'complete', '2021-01-14 18:47:13', 'Complete'),
(10, 78, '148', 'txn_1IDseZCKQvPFa2xjKLTKTjhI', 'harsh', '{\"id\":\"ch_1IDseZCKQvPFa2xjKl2ZwWtT\",\"object\":\"charge\",\"amount\":14800,\"amount_captured\":14800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1IDseZCKQvPFa2xjKLTKTjhI\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"Stripe\",\"captured\":true,\"created\":1611671783,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{\"user_id\":\"78\",\"carduserName\":\"harsh\",\"LicenseNumber\":\"Test123\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":13,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1IDseXCKQvPFa2xjkICzHh12\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":12,\"exp_year\":2021,\"fingerprint\":\"Ro4N9htWY8KzCw71\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"1111\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1BGFtyCKQvPFa2xj\\/ch_1IDseZCKQvPFa2xjKl2ZwWtT\\/rcpt_IpXkwiSGG71tlXFHXz8a1u1CXEVw4R7\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1IDseZCKQvPFa2xjKl2ZwWtT\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1IDseXCKQvPFa2xjkICzHh12\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2021,\"fingerprint\":\"Ro4N9htWY8KzCw71\",\"funding\":\"credit\",\"last4\":\"1111\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', 'Test123', 'complete', '2021-01-26 14:36:23', NULL),
(11, 112, '99', 'txn_1IGQb6CKQvPFa2xjfuVsicMf', 'harsh', '{\"id\":\"ch_1IGQb6CKQvPFa2xjM0zTBQOx\",\"object\":\"charge\",\"amount\":9900,\"amount_captured\":9900,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1IGQb6CKQvPFa2xjfuVsicMf\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"Stripe\",\"captured\":true,\"created\":1612278920,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{\"user_id\":\"112\",\"carduserName\":\"harsh\",\"LicenseNumber\":\"Test123\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":31,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1IGQb4CKQvPFa2xj5qG06mIx\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":12,\"exp_year\":2021,\"fingerprint\":\"Ro4N9htWY8KzCw71\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"1111\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1BGFtyCKQvPFa2xj\\/ch_1IGQb6CKQvPFa2xjM0zTBQOx\\/rcpt_IsAxgJuXbQireS5LzmQY0wqB2YKNZ76\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1IGQb6CKQvPFa2xjM0zTBQOx\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1IGQb4CKQvPFa2xj5qG06mIx\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":12,\"exp_year\":2021,\"fingerprint\":\"Ro4N9htWY8KzCw71\",\"funding\":\"credit\",\"last4\":\"1111\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', 'Test123', 'complete', '2021-02-02 10:15:21', 'Complete'),
(12, 113, '10', 'txn_1IGoTsHK36mH6SeAzeaHqSTh', 'Yogesh Tanwar', '{\"id\":\"ch_1IGoTqHK36mH6SeADDYmCuTr\",\"object\":\"charge\",\"amount\":1000,\"amount_captured\":1000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1IGoTsHK36mH6SeAzeaHqSTh\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"TAX PERMIT CERTIFICATE\",\"captured\":true,\"created\":1612370726,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":true,\"metadata\":{\"user_id\":\"113\",\"carduserName\":\"Yogesh Tanwar\",\"LicenseNumber\":\"Test123\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1IGoToHK36mH6SeAkVdjdxWh\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"IN\",\"exp_month\":11,\"exp_year\":2022,\"fingerprint\":\"VRTvSAyocefIkPDN\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"4537\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1I3O1YHK36mH6SeA\\/ch_1IGoTqHK36mH6SeADDYmCuTr\\/rcpt_IsZdFUPm73CBf0JRyVO6ZDyTr9B9EUg\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1IGoTqHK36mH6SeADDYmCuTr\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1IGoToHK36mH6SeAkVdjdxWh\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"IN\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":11,\"exp_year\":2022,\"fingerprint\":\"VRTvSAyocefIkPDN\",\"funding\":\"credit\",\"last4\":\"4537\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', 'Test123', 'complete', '2021-02-03 11:45:29', NULL),
(13, 114, '141', 'txn_1IGyZxHK36mH6SeARXPWsPJ7', 'Wesley Williams', '{\"id\":\"ch_1IGyZwHK36mH6SeAEVYZHOE8\",\"object\":\"charge\",\"amount\":14100,\"amount_captured\":14100,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1IGyZxHK36mH6SeARXPWsPJ7\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"TAX PERMIT CERTIFICATE\",\"captured\":true,\"created\":1612409544,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":true,\"metadata\":{\"user_id\":\"114\",\"carduserName\":\"Wesley Williams\",\"LicenseNumber\":\"Test123\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1IGyZvHK36mH6SeAMN5hbCB2\",\"payment_method_details\":{\"card\":{\"brand\":\"amex\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":8,\"exp_year\":2024,\"fingerprint\":\"ZdjDWDHGN8CyipJV\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"3007\",\"network\":\"amex\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1I3O1YHK36mH6SeA\\/ch_1IGyZwHK36mH6SeAEVYZHOE8\\/rcpt_Isk4CmcD3G5ekrycXsU4hZcurvLw0dc\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1IGyZwHK36mH6SeAEVYZHOE8\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1IGyZvHK36mH6SeAMN5hbCB2\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"American Express\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":8,\"exp_year\":2024,\"fingerprint\":\"ZdjDWDHGN8CyipJV\",\"funding\":\"credit\",\"last4\":\"3007\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', 'Test123', 'complete', '2021-02-03 22:32:25', NULL),
(14, 127, '141', 'txn_1IIGpjHK36mH6SeAzFiBbq5B', 'Miles Stover', '{\"id\":\"ch_1IIGpiHK36mH6SeAIbw5iPLh\",\"object\":\"charge\",\"amount\":14100,\"amount_captured\":14100,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1IIGpjHK36mH6SeAzFiBbq5B\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"TAX PERMIT CERTIFICATE\",\"captured\":true,\"created\":1612718042,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":true,\"metadata\":{\"user_id\":\"127\",\"carduserName\":\"Miles Stover\",\"LicenseNumber\":\"Test123\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1IIGphHK36mH6SeAt6DKRdkT\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":10,\"exp_year\":2025,\"fingerprint\":\"wJgb5jJteyCWINSh\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"1028\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1I3O1YHK36mH6SeA\\/ch_1IIGpiHK36mH6SeAIbw5iPLh\\/rcpt_Iu4zPUTi1vCbe4FfytRLJG1Rkdc9xNr\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1IIGpiHK36mH6SeAIbw5iPLh\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1IIGphHK36mH6SeAt6DKRdkT\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":10,\"exp_year\":2025,\"fingerprint\":\"wJgb5jJteyCWINSh\",\"funding\":\"credit\",\"last4\":\"1028\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', 'Test123', 'complete', '2021-02-07 12:14:03', 'Complete'),
(15, 163, '141', 'txn_1IJKI9HK36mH6SeApkdTVSR8', 'Mark Brooks', '{\"id\":\"ch_1IJKI8HK36mH6SeAfoaBHB3d\",\"object\":\"charge\",\"amount\":14100,\"amount_captured\":14100,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1IJKI9HK36mH6SeApkdTVSR8\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"TAX PERMIT CERTIFICATE\",\"captured\":true,\"created\":1612969664,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":true,\"metadata\":{\"user_id\":\"163\",\"carduserName\":\"Mark Brooks\",\"LicenseNumber\":\"Test123\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1IJKI6HK36mH6SeAdOh0efoy\",\"payment_method_details\":{\"card\":{\"brand\":\"mastercard\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":6,\"exp_year\":2023,\"fingerprint\":\"st9WrgLAYcsQtFtV\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"5828\",\"network\":\"mastercard\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1I3O1YHK36mH6SeA\\/ch_1IJKI8HK36mH6SeAfoaBHB3d\\/rcpt_IvAdIiAUVWne7cdVkx24L0jqIYxIUOR\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1IJKI8HK36mH6SeAfoaBHB3d\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1IJKI6HK36mH6SeAdOh0efoy\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"MasterCard\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":6,\"exp_year\":2023,\"fingerprint\":\"st9WrgLAYcsQtFtV\",\"funding\":\"credit\",\"last4\":\"5828\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', 'Test123', 'complete', '2021-02-10 10:07:45', NULL),
(16, 171, '104', 'txn_1IJPK0HK36mH6SeAhvk2SaLV', 'Kirsten Soliz', '{\"id\":\"ch_1IJPJzHK36mH6SeASQ4NMDya\",\"object\":\"charge\",\"amount\":10400,\"amount_captured\":10400,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1IJPK0HK36mH6SeAhvk2SaLV\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":null,\"phone\":null},\"calculated_statement_descriptor\":\"TAX PERMIT CERTIFICATE\",\"captured\":true,\"created\":1612988999,\"currency\":\"usd\",\"customer\":null,\"description\":\"payment from Tax resale\",\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":true,\"metadata\":{\"user_id\":\"171\",\"carduserName\":\"Kirsten Soliz\",\"LicenseNumber\":\"Test123\"},\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1IJPJyHK36mH6SeArCo3aeYt\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":9,\"exp_year\":2024,\"fingerprint\":\"66IGvCIhTa7ZB0M5\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"9917\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1I3O1YHK36mH6SeA\\/ch_1IJPJzHK36mH6SeASQ4NMDya\\/rcpt_IvFpkzMGgIY5lBCCYnGmOZwVwP6olJu\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1IJPJzHK36mH6SeASQ4NMDya\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1IJPJyHK36mH6SeArCo3aeYt\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":9,\"exp_year\":2024,\"fingerprint\":\"66IGvCIhTa7ZB0M5\",\"funding\":\"credit\",\"last4\":\"9917\",\"metadata\":[],\"name\":null,\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', 'Test123', 'complete', '2021-02-10 15:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_primary`
--

CREATE TABLE `tbl_primary` (
  `pryid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `primaryContactTitle` varchar(255) DEFAULT NULL,
  `primaryContactFirstName` varchar(255) DEFAULT NULL,
  `primaryContactLastName` varchar(255) DEFAULT NULL,
  `primaryContactPhoneNumber` varchar(255) DEFAULT NULL,
  `primaryContactMobilePhoneNumber` varchar(255) DEFAULT NULL,
  `primaryContactEmailAddress` varchar(255) DEFAULT NULL,
  `primaryContactPhoneNumberExt` varchar(255) DEFAULT NULL,
  `primaryContactDOB` varchar(255) DEFAULT NULL,
  `primaryContactSSN` varchar(255) DEFAULT NULL,
  `primaryContactDriverLicenceState` varchar(25) DEFAULT NULL,
  `primaryContactDriverLicenceNumber` varchar(25) DEFAULT NULL,
  `primaryContactState` varchar(25) DEFAULT NULL,
  `primaryContactCounty` varchar(25) DEFAULT NULL,
  `primaryContactStreetAddress` varchar(25) DEFAULT NULL,
  `primaryContactCity` varchar(25) DEFAULT NULL,
  `primaryContactZip` varchar(25) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_primary`
--

INSERT INTO `tbl_primary` (`pryid`, `user_id`, `primaryContactTitle`, `primaryContactFirstName`, `primaryContactLastName`, `primaryContactPhoneNumber`, `primaryContactMobilePhoneNumber`, `primaryContactEmailAddress`, `primaryContactPhoneNumberExt`, `primaryContactDOB`, `primaryContactSSN`, `primaryContactDriverLicenceState`, `primaryContactDriverLicenceNumber`, `primaryContactState`, `primaryContactCounty`, `primaryContactStreetAddress`, `primaryContactCity`, `primaryContactZip`, `created_date`) VALUES
(35, 86, '1', 'Harsh', 'K', 'sadjbsdjf233223', '1234567890vvsdvs', 'harsh@gmail.com', 'svsdscv', '2020-12-03', '123vdcv33', 'Arizona', '132dwd', 'Texas', 'BOWIE', 'test the address', 'panchkula', '132432', '2020-12-18 16:36:08'),
(36, 87, '2', 'wfdfwd', 'cacac', '2423423424', '1212121233', 'example@gmail.com', 'qr23423432zccsd', '2020-12-08', '123233', 'Hawaii', 'dfsda1312312', 'Texas', 'BELL', 'twesfd', 'assSDSD', '21312312141414', '2020-12-18 17:10:49'),
(37, 89, '1', 'Wesley', 'Williams', '9728777838', '9728777838', 'wesleyw@outlook.com', '', '2020-12-31', '123456789', 'Alabama', '12345678', 'Texas', 'BOSQUE', '2634 SIR GAWAIN LN', 'LEWISVILLE', '75056', '2020-12-18 20:39:15'),
(59, 95, '1', 'Yogesh', 'Tanwar', '1241241241', '1231213123', 'yogesh@gmail.com', '141242', '2020-12-09', '132123424323421312321321321213123', 'Arkansas', '324123412342342', 'Texas', 'ANDERSON', 'test the address', 'panchkula', '134290', '2020-12-22 16:01:19'),
(60, 95, '2', 'Tanwar ', 'Yogesh', '2342343243', '4414124123', 'tanwar@gmail.com', '321235', '2020-12-03', '14324234324324342343', 'Alabama', '1231235235', 'Texas', 'ARANSAS', 'test the address', 'panchkula', '134290', '2020-12-22 16:02:43'),
(61, 95, '4', 'ldbfdhsfhJBHBJL', 'ljblbbb', '6597659675', '7676858675', 'bljkbb@jblkjbjk.com', '596759', '2020-12-03', '251252355235123512312352135', 'Arkansas', '4234234234', 'Texas', 'ANDREWS', 'test the address', 'panchkula', '121212', '2020-12-22 16:05:19'),
(62, 78, '1', 'Harsh', 'Kumar', '2311233213', '89898959', 'gg@gmail.com', '4555', '275760-02-13', '998955', 'Kansas', '', 'Pennsylvania', 'ffdeewqew', 'Location Street Address', 'Location City', '231213', '2020-12-23 13:59:32'),
(64, 100, '2', 'Wesley', 'Williams', '9728777838', '9728777838', 'wesleywdddd@outlook.com', '', '2016-12-29', '123456789', 'Texas', '12345678', 'Texas', 'ANDERSON', '2634 SIR GAWAIN LN', 'LEWISVILLE', '75056', '2020-12-24 17:22:55'),
(65, 117, '1', 'Ashley', 'Chandler', '8324232120', '8324232120', 'achandler15@icloud.com', '', '1990-06-14', '640183428', 'Texas', '35840019', 'Texas', 'GALVESTON', '1645 Canchola Lane', 'League City', '77573', '2021-02-06 13:55:00'),
(66, 121, '1', 'Crystal ', 'Russell ', '8176803207', '8176803207', 'Customkreationbycrystal@gmail.com ', '', '1982-11-07', '463716274', 'Texas', '17780559', 'Texas', 'TARRANT', '1024 Shenandoah Drive ', 'Arlington ', '76014', '2021-02-06 18:20:35'),
(67, 127, '1', 'Miles', 'Stover', '2516227154', '2516227154', 'milesstover1@gmail.com', '', '1995-11-08', '417452956', 'Texas', '45370821', 'Texas', 'HARRIS', '4400 MEMORIAL DR APT 3076', 'HOUSTON', '77007', '2021-02-07 12:04:43'),
(68, 139, '1', 'Bernadette', 'Scott', '2818271813', '2818271813', 'sugarnspicekidsboutique@gmail.com', '', '1969-09-16', '465430186', 'Texas', '14454007', 'Texas', 'FORT', '3546 Truesdale Drive', 'Missouri City', '77459', '2021-02-08 09:07:00'),
(69, 145, '1', 'Sabrina ', 'Gracia ', '2103022197', '2103022197', 'bris.be.you.tique@gmail.com', '', '1997-05-31', '644567608', 'Texas', '40239199', 'Texas', 'MEDINA', '148 CR 4613 ', 'Castroville ', '78009', '2021-02-08 15:22:25'),
(70, 157, '1', 'summer', 'thomas', '3184719166', '3184719166', 'sthomas1202@yahoo.com', '', '12021981', '590464724', 'Texas', '46113626', 'Texas', 'PANOLA', '279 CR 265', 'Beckville', '75631', '2021-02-09 21:13:23'),
(71, 157, '1', 'summer', 'thomas', '3184719166', '3184719166', 'sthomas1202@yahoo.com', '', '12021981', '590464724', 'Texas', '46113626', 'Texas', 'PANOLA', '279 CR 265', 'Beckville', '75631', '2021-02-09 21:13:39'),
(72, 163, '1', 'Kristie', 'Brooks', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:24:53'),
(73, 163, '1', 'Kristie', 'Brooks', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:25:04'),
(74, 163, '1', 'Kristie', 'Brooks', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:25:32'),
(75, 163, '1', 'Kristie', 'Brooks', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:25:34'),
(76, 163, '1', 'Kristie', 'Brooks', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:25:58'),
(77, 163, '1', 'Kristie', 'Brooks', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:56:17'),
(78, 163, '5', 'Kristie', 'Brooks', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:56:31'),
(79, 163, '5', 'Kristie', 'Brooks', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:56:52'),
(80, 163, '5', 'Kristie', 'Brooks', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:56:54'),
(81, 163, '5', 'Kristie', 'Brooks', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:56:55'),
(82, 163, '5', 'Kristie ', 'Brooks ', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:57:19'),
(83, 163, '5', 'Kristie ', 'Brooks ', '4693490439', '4693490439', 'kristie.brooks@berkstonllc.com', '', '07-11-1974', '434214119', 'Texas', '08016213', 'Texas', 'DENTON', '5140 Steinbeck St', 'Carrollton', '75010', '2021-02-10 07:57:57'),
(87, 170, '2', 'Hieu', 'Le', '2102797348', '2102797348', 'lehieu121193@gmail.com', '', '11-12-1993', '487356247', 'Texas', '38925843', 'Texas', 'BEXAR', '8531 Espanola Dr', 'Helotes', '780230', '2021-02-10 14:33:42'),
(88, 170, '2', 'Hieu', 'Le', '2102797348', '2102797348', 'lehieu121193@gmail.com', '', '11-12-1993', '487356247', 'Texas', '38925843', 'Texas', 'BEXAR', '8531 Espanola Dr', 'Helotes', '780230', '2021-02-10 14:33:49'),
(89, 170, '2', 'Hieu', 'Le', '2102797348', '2102797348', 'lehieu121193@gmail.com', '', '11-12-1993', '487356247', 'Texas', '38925843', 'Texas', 'BEXAR', '8531 Espanola Dr', 'Helotes', '780230', '2021-02-10 14:34:07'),
(90, 170, '2', 'Hieu', 'Le', '2102797348', '2102797348', 'lehieu121193@gmail.com', '', '11-12-1993', '487356247', 'Texas', '38925843', 'Texas', 'BEXAR', '8531 Espanola Dr', 'Helotes', '780230', '2021-02-10 14:34:08'),
(91, 170, '2', 'Hieu', 'Le', '2102797348', '2102797348', 'lehieu121193@gmail.com', '', '11-12-1993', '487356247', 'Texas', '38925843', 'Texas', 'BEXAR', '8531 Espanola Dr', 'Helotes', '780230', '2021-02-10 14:34:09'),
(92, 170, '2', 'Hieu', 'Le', '2102797348', '2102797348', 'lehieu121193@gmail.com', '', '11-12-1993', '487356247', 'Texas', '38925843', 'Texas', 'BEXAR', '8531 Espanola Dr', 'Helotes', '780230', '2021-02-10 14:34:10'),
(93, 170, '1', 'Hieu', 'Le', '2102797348', '2102797348', 'lehieu121193@gmail.com', '', '11-12-1993', '487356247', 'Texas', '38925843', 'Texas', 'BEXAR', '8531 Espanola Dr', 'Helotes', '780230', '2021-02-10 14:34:18'),
(94, 170, '1', 'Hieu', 'Le', '2102797348', '2102797348', 'lehieu121193@gmail.com', '', '11-12-1993', '487356247', 'Texas', '38925843', 'Texas', 'BEXAR', '8531 Espanola Dr', 'Helotes', '78023', '2021-02-10 14:34:24'),
(95, 170, '1', 'Hieu', 'Le', '2102797348', '2102797348', 'lehieu121193@gmail.com', '', '11-12-1993', '487356247', 'Texas', '38925843', 'Texas', 'BEXAR', '8531 Espanola Dr', 'Helotes', '78023', '2021-02-10 14:34:45'),
(96, 170, '1', 'Hieu', 'Le', '2102797348', '2102797348', 'lehieu121193@gmail.com', '', '11-12-1993', '487356247', 'Texas', '38925843', 'Texas', 'BEXAR', '8531 Espanola Dr', 'Helotes', '78023', '2021-02-10 14:34:46'),
(97, 170, '1', 'Hieu', 'Le', '2102797348', '2102797348', 'lehieu121193@gmail.com', '', '11-12-1993', '487356247', 'Texas', '38925843', 'Texas', 'BEXAR', '8531 Espanola Dr', 'Helotes', '78023', '2021-02-10 14:34:46'),
(101, 171, '4', 'Eric', 'Soliz', '4095406903', '4095406903', 'fullcountbaseball15@gmail.com', '', '03-27-1981', '449914580', 'Texas', '17353354', 'Texas', 'ORANGE', '3915 Plantation Drive', 'Orange', '77630', '2021-02-10 15:03:49'),
(104, 171, '4', 'Kirsten', 'Soliz', '4097207382', '4097207382', 'kirstenfaye82@yahoo.com', '', '08-04-1982', '449914256', 'Texas', '15638245', 'Texas', 'ORANGE', '3915 Plantation Drive', 'Orange', '77630', '2021-02-10 15:05:10'),
(110, 176, '1', 'Sonya ', 'Kelley ', '2144756993', '2144756993', 'sonyamkelley@gmail.com ', '', '10201963', '408294286', 'Texas', '19557798', 'Texas', 'FORT', '2601 Cartwright Rd Ste. D', 'MISSOURI CITY', '77459', '2021-02-10 23:04:41'),
(111, 176, '1', 'Sonya ', 'Kelley ', '2144756993', '2144756993', 'sonyamkelley@gmail.com ', '', '10201963', '408294286', 'Texas', '19557798', 'Texas', 'FORT', '2601 Cartwright Rd Ste. D', 'MISSOURI CITY', '77459', '2021-02-10 23:04:54'),
(112, 172, '1', 'General Owner', 'dfsfd', '8178052554', '9728777838', 'wesleyw@outlook.com', '', '02-03-2021', '123456789', 'Texas', '', 'Texas', 'BLANCO', '2634 SIR GAWAIN LN', 'LEWISVILLE', '75056-', '2021-02-10 23:29:23'),
(113, 172, '1', 'General Owner', 'dfsfd', '8178052554', '9728777838', 'wesleyw@outlook.com', '', '02-03-2021', '123456789', 'Texas', '12345678', 'Texas', 'BLANCO', '2634 SIR GAWAIN LN', 'LEWISVILLE', '75056-', '2021-02-10 23:29:32'),
(114, 172, '1', 'General Owner', 'dfsfd', '8178052554', '9728777838', 'wesleyw@outlook.com', '444', '02-03-2021', '123456789', 'Texas', '13936955', 'Texas', 'ANDERSON', '2634 SIR GAWAIN Ln', 'LEWISVILLe', '75056', '2021-02-10 23:30:27'),
(117, 162, '2', 'Harsh', 'Kumar', '6565656565', '89898959', 'gg@gmail.com', '4555', '02-11-2021', '998955', 'Arizona', 'DR-13346', 'Connecticut', 'Kansas', 'Location Owner Street Add', 'Location Owner City', '989898', '2021-02-11 05:02:31'),
(118, 162, '2', 'Harsh', 'Kumar', '963524158', '89898959', 'gg@gmail.com', '4555', '02-24-2021', '998955', 'Alaska', 'DR-13346', 'Connecticut', 'Kansas', 'Location Owner Street Add', 'Location Owner City', '666', '2021-02-11 05:05:26'),
(120, 162, '2', 'Harsh', 'Kumar', '963524158', '89898959', 'gg@gmail.com', '4555', '02-16-2021', '998955', 'Alaska', 'DR-13346', 'Connecticut', 'Kansas', 'Location Owner Street Add', 'Location Owner City', '3333', '2021-02-11 05:06:16'),
(121, 179, '4', 'Gabe', 'Joseph', '5122305285', '5122305285', 'gabe@jdbatx.com', '', '02231984', '127785833', 'Texas', '44761917', 'Texas', 'TRAVIS', '1100 S Lamar Blvd, Suite ', 'Austin', '78704', '2021-02-11 10:50:08'),
(122, 179, '4', 'Thomas', 'Joseph', '5128508974', '5128508974', 'thomas@jdbatx.com', '', '02031987', '127787850', 'Texas', '39390345', 'Texas', 'TRAVIS', '1100 S Lamar Blvd, Suite ', 'Austin', '78704', '2021-02-11 10:53:13'),
(123, 181, '1', 'Shardel', 'Ross', '9034135940', '9034135940', 'thefierceallureboutique@gmail.com', '', '07231988', '642015021', 'Texas', '', 'Texas', 'DALLAS', '3931 Ivy Ridge st', 'Dallas', '75241', '2021-02-11 11:39:08'),
(124, 183, '2', 'Christopher ', 'Kurtz', '2105013150', '2105013150', 'Chris@auto-entry.com ', '', '10-05-1984', '571971037', 'Texas', '26468486', 'Texas', 'GUADALUPE', '108 Willow View ', 'Cibolo', '78108', '2021-02-11 15:29:18'),
(125, 185, '1', 'Anthony', 'Srey', '5122027887', '5122027887', 'anthonysrey92@gmail.com', '', '09-02-1992', '636328675', 'Texas', '35237016', 'Texas', 'WILLIAMSON', '1200 Hidden Valley Dr., A', 'Round Rock', '78665', '2021-02-11 19:04:17'),
(126, 187, '1', 'Dalia', 'Flores', '8066548466', '8066548466', 'dalia.e.acosta@gmail.com', '', '04251995', '723289245', 'Texas', '41442808', 'Texas', 'RANDALL', '9611 Westin Drive', 'Amarillo', '79119', '2021-02-11 22:36:09'),
(127, 201, '1', 'Liana', 'Rodriguez', '8323586286', '8323586286', 'lrodriguezartistry@gmail.com', '', '03271968', '464436973', 'Texas', '14292224', 'Texas', 'HARRIS', '3913 EDISON ST', 'Houston', '77009', '2021-02-13 16:45:45'),
(128, 207, '1', 'Misbah', 'Gul', '4844257642', '4844257642', ' sclub745@gmail.com', '', '01-15-1974', '866191865', 'Texas', '46310810', 'Texas', 'COLLIN', '1205 meadow gate Dr.', 'Allen', '75002', '2021-02-14 00:06:24'),
(129, 209, '1', 'Gladys', 'Landers', '3185057955', '3185057955', 'Stuffnthings1432@gmail.com', '', '11081990', '648185712', 'Texas', '33322353', 'Texas', 'TARRANT', '5109 Ohio Garden Rd, suit', 'River Oaks', '76114', '2021-02-14 04:58:26'),
(130, 210, '1', 'Amanda', 'Atkinson', '9282615136', '9282615136', 'atkinsonaa2018@gmail.com', '', '01261999', '601854864', 'Arizona', 'D09007531', 'Texas', 'TAYLOR', '1326 Summoner Ln', 'Abilene', '79602', '2021-02-14 11:58:33'),
(131, 216, '1', 'Maleka', 'Barber', '2147806072', '2147806072', 'joycheboutique@gmail.com', '', '05171994', '631428265', 'Texas', '', 'Texas', 'DALLAS', '2320 Hillglenn Rd', 'Dallas', '75228', '2021-02-14 21:08:45'),
(132, 219, '1', 'Marlene', 'Munoz', '9095201703', '9095201703', 'Munoz.marlene@yahoo.com', '', '11/13/1990', '606425123', 'Texas', '', 'Texas', 'HAYS', '1101 Leah Avenue, 1207', 'San Marcos', '78666', '2021-02-14 23:31:40'),
(133, 221, '1', 'Jez', 'Ramz', '121313131', '0468839998', 'jerx@gmail.com', '', '02-16-2021', '12121212121', 'Washington', '', 'Virginia', 'WA', 'Australia', 'Airly', '6140', '2021-02-15 14:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_states`
--

CREATE TABLE `tbl_states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_states`
--

INSERT INTO `tbl_states` (`id`, `name`) VALUES
(1, 'California'),
(2, 'Connecticut'),
(3, 'Florida'),
(4, 'Georgia'),
(5, 'Illinois'),
(6, 'Maryland'),
(7, 'Massachusetts'),
(8, 'Michigan'),
(9, 'New Jersey'),
(10, 'New York'),
(11, 'North Carolina'),
(12, 'Ohio'),
(13, 'Pennsylvania'),
(14, 'Tennessee'),
(15, 'Texas'),
(16, 'Virginia');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state_setting`
--

CREATE TABLE `tbl_state_setting` (
  `id` int(11) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `bg_image` varchar(225) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `basic_price` varchar(225) DEFAULT NULL,
  `expedited_price` varchar(225) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_state_setting`
--

INSERT INTO `tbl_state_setting` (`id`, `state_id`, `bg_image`, `description`, `basic_price`, `expedited_price`, `created_date`) VALUES
(1, 15, 'state-412380396-1611250878.png', '<h2><span style=\"font-size:18px\">A Texas Seller&#39;s Permit, Resale Certificate, Reseller License, Sales Tax ID, or a Wholesale ID is required if you buy items to resale either as a wholesaler or at retail&nbsp;in the State of Texas.&nbsp;&nbsp;</span></h2>\n\n<p>&nbsp;</p>\n\n<p><strong>How do you know if you&#39;re required to have&nbsp;a Texas State Resale Certificate?&nbsp;</strong> The easiest way to know if that if you&#39;re buying goods of any type to resale to others who are inside the State of Texas then yes, you&nbsp;must have a Texas State Resale Certificate to legally do business in the State of Texas. You may also need a Texas State Resale Certificate for selling services.&nbsp; If you plan to rent out property to others then&nbsp;you also must obtain a Texas Resale Certificate.&nbsp;&nbsp;By using our website, you are agreeing to our Terms &amp; Conditions. Please feel free to ask us any questions as our services also offer ongoing support to ensure you receive the best service possible.</p>\n', '104', '37', '2021-02-03 22:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplierinformation`
--

CREATE TABLE `tbl_supplierinformation` (
  `siid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `brContactName` varchar(225) DEFAULT NULL,
  `brContactEmailAddress` varchar(225) DEFAULT NULL,
  `brContactPhoneNumber` varchar(225) DEFAULT NULL,
  `brContactMobilePhoneNumber` varchar(225) DEFAULT NULL,
  `brContactPhoneNumberExt` varchar(225) DEFAULT NULL,
  `brAlternateContact` varchar(225) DEFAULT NULL,
  `brContactNameAlternate` varchar(225) DEFAULT NULL,
  `brContactEmailAddressAlternate` varchar(225) DEFAULT NULL,
  `brContactPhoneNumberAlternate` varchar(225) DEFAULT NULL,
  `brContactMobilePhoneNumberAlternate` varchar(225) DEFAULT NULL,
  `brContactPhoneNumberExtAlternate` varchar(225) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_supplierinformation`
--

INSERT INTO `tbl_supplierinformation` (`siid`, `user_id`, `brContactName`, `brContactEmailAddress`, `brContactPhoneNumber`, `brContactMobilePhoneNumber`, `brContactPhoneNumberExt`, `brAlternateContact`, `brContactNameAlternate`, `brContactEmailAddressAlternate`, `brContactPhoneNumberAlternate`, `brContactMobilePhoneNumberAlternate`, `brContactPhoneNumberExtAlternate`, `created_date`) VALUES
(1, 77, 'harsh', 'hhh@gmail.com', '5652333', '43433', '4343', '1', '34234342', 'fff@gmail.com', '132131', '21321321', '213213', '2020-12-15 16:52:56'),
(2, 87, 'NAME ', 'SADFNBSDF@gmail.com', '1234567890', '1234567890', '14214124', '0', '3123123', 'FSDFFDFS', 'fsdafdaf', 'asfasdfa', '123123', '2020-12-18 17:19:58'),
(3, 89, 'Wesley Williams', 'wesleyw@outlook.com', '9728777838', '', 'SHOULD NOT BE A REQUIRED FIELD', '0', 'Wesley Williams', 'wesleyw@outlook.com', '9728777838', '9728777838', 'SHOULD NOT BE A REQUIRED FIELD', '2020-12-18 20:45:04'),
(4, 95, '242234234', '434234324@gmail.com', '5870326578', '239853285', '322342332432234324234', '0', '4124141', '4324234', '43434', '3432432', '343434', '2020-12-22 16:43:57'),
(6, NULL, 'Kyle Ronat', 'kyle@jdbatx.com', '7736034588', '7736034588', 'sss', '1', 'Janie Lance', 'janie@jdbatx.com', '5125845249', '5125845249', 'ss', '2020-12-22 23:46:49'),
(7, 100, 'Wesley Williams', 'wesleyw@outlook.com', '9728777838', '', '', '0', 'Janet Williams', 'wesleyw@outlook.com', '9728777838', '2126347721', '', '2020-12-24 17:34:19'),
(8, 107, 'Keshav', '1keshav.wowz@gmail.com', '123456789', '123456789', '234', '0', '', '', '', '', '', '2021-01-13 18:08:47'),
(9, 108, 'Wesley Williams', 'wesleyw@outlook.com', '9728777838', '9728777838', '', '0', '', '', '', '', '', '2021-01-13 18:52:11'),
(10, 78, 'harsh', 'hhh@gmail.com', '5652333', '43433', '4343', '0', '', '', '', '', '', '2021-01-21 16:03:09'),
(11, 121, 'Crystal Russell ', 'Customkreationbycrystal@gmail.com ', '8176803207', '8176803207', '', '0', '', '', '', '', '', '2021-02-06 18:37:58'),
(12, 127, 'Miles Stover', 'milesstover1@gmail.com', '2516227154', '', '', '0', '', '', '', '', '', '2021-02-07 12:13:13'),
(13, 136, 'Larry Terrell Dillon', 'larrydillon369@gmail.com', '8173056432', '8173056432', '', '0', '', '', '', '', '', '2021-02-08 03:34:29'),
(14, 138, 'guadalupe sandoval', 'lupegnzlz12@gmail.com ', '8177690900', '8177690900', '', '0', '', '', '', '', '', '2021-02-08 08:59:23'),
(15, 142, 'freddie white', 'few1960@yahoo.com', '2817556949', '', '', '0', '', '', '', '', '', '2021-02-08 12:59:31'),
(16, 152, 'BRANDON K BATES', 'brandonbates89@yahoo.com', '3183447180', '3183447180', '', '0', '', '', '', '', '', '2021-02-09 11:08:17'),
(17, 157, 'summer n thomas', 'sthomas1202@yahoo.com', '3184719166', '', '', '0', '', '', '', '', '', '2021-02-09 21:30:00'),
(18, 163, 'Mark Brooks', 'mnkbrooks@mac.com', '4694005102', '4694005102', '', '0', '', '', '', '', '', '2021-02-10 08:13:11'),
(19, 171, 'Eric Soliz', 'fullcountbaseball15@gmail.com', '4095406903', '', '', '0', '', '', '', '', '', '2021-02-10 15:28:09'),
(20, 182, 'Ja\'Net Scott ', 'behindclozzeddoorz@gmail.com ', '7135173352', '', '', '0', '', '', '', '', '', '2021-02-11 14:58:57'),
(21, 197, 'Hareem Riaz', 'hareem.riaz5@gmail.com', '3463325232', '3463325232', '00', '0', 'Salman Arif Arif Muhammad', 'salmanmarif04@gmail.com', '832614011', '', '', '2021-02-12 23:08:15'),
(22, 199, 'Forrest Barkley', 'fpbarkley@gmail.com', '4324138431', '4324138431', 'none', '0', 'Forrest Barkley', 'fpbarkley@gmail.com', '14324138431', '14324138431', '', '2021-02-13 13:02:35'),
(23, 225, 'sdasda', 'test@gmail.com', '1234567890', '', '', '1', 'wrerew', 'test@gmail.com', '1234567890', '', '', '2021-02-16 04:01:13'),
(24, 227, 'LC LC', 'asdsda@gmail.com', '2342356765', '1231234235', 'sedfsdf', '1', 'cvdsvfsdf', 'efew@gmail.com', '1321312342', '213123423523', 'dsad', '2021-02-16 10:49:12'),
(25, 143, 'fghfhgfh', 'test@test.com', '1234567899', '', '', '0', '', '', '', '', '', '2021-02-20 16:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type_of_entity`
--

CREATE TABLE `tbl_type_of_entity` (
  `id` int(11) NOT NULL,
  `entity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_type_of_entity`
--

INSERT INTO `tbl_type_of_entity` (`id`, `entity`) VALUES
(1, 'Sole Proprietor (does not include single member LLCs)'),
(2, 'For-Profit Corporation'),
(3, 'Non-Profit Corporation'),
(4, 'Professional Corporation'),
(5, 'Limited Liability Company'),
(6, 'General Partnership'),
(7, 'Limited Partnership'),
(8, 'Joint Venture'),
(9, 'Professional Association'),
(10, 'Business Association'),
(11, 'Other Association');

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
  `expedite` varchar(5) DEFAULT NULL,
  `stateid` varchar(255) DEFAULT NULL,
  `status` tinyint(11) NOT NULL DEFAULT 1,
  `createdBy` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `plain_password`, `first_name`, `last_name`, `role_id`, `expedite`, `stateid`, `status`, `createdBy`, `created_date`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Admin', '9890098901', 1, NULL, NULL, 1, 0, '2015-07-01 18:56:49', 1, '2020-03-25 15:35:56'),
(119, 'p-perez-1229@hotmail.com', '1e4c4a319a646c067ef2aec0c4480d8c', 'SS4my052807#', 'Priscilla ', 'Ventura', 2, '0', 'Texas', 1, 0, '2021-02-06 14:26:19', NULL, NULL),
(160, 'yeldelllorrie@gmail.com', '91fdf9534177c538a40dc8e68b790ee4', 'Covid20#', 'Lorrie', 'Yeldell', 2, '1', 'Texas', 1, 0, '2021-02-10 01:10:15', NULL, NULL),
(120, 'juanita.almodovar45@gmail.com', '15b0d7d8653ea2ff6998994bf1246cc4', 'Ju@nita10', 'Juanita ', 'Almodovar ', 2, '1', 'Texas', 1, 0, '2021-02-06 15:09:19', NULL, NULL),
(121, 'customkreationbycrystal@gmail.com', '29182d535526072bde7cca240d6e5e2e', 'Crystal1982@', 'Crystal ', 'Russell ', 2, '1', 'Texas', 1, 0, '2021-02-06 18:13:13', NULL, NULL),
(122, 'laquita.williams@hotmail.com', 'd68ca5a3308f11ed0b6e178cfeb6652f', 'Sweetpea2012', 'Laquita', 'Williams', 2, '1', 'Texas', 1, 0, '2021-02-06 20:10:34', NULL, NULL),
(123, 'spainmegan@yahoo.com', 'f5e0e7928de55c2d75216f4474fcd93d', 'Jordyn29', 'Megan ', 'Spain ', 2, '0', 'Texas', 1, 0, '2021-02-06 21:17:56', NULL, NULL),
(124, 'taviant555@gmail.com', 'e3b2f362694f0450b910521336079a67', 'island123u!', 'Tavian', 'Torres', 2, '1', 'Texas', 1, 0, '2021-02-06 22:53:36', NULL, NULL),
(125, 'tanddhomemade@gmail.com', 'bae8ad1d5a80a47507ad7ed7f7404274', 'Tucker2021', 'Taylor', 'Wilhite', 2, '1', 'Texas', 1, 0, '2021-02-07 00:39:25', NULL, NULL),
(126, 'sales@ymtrucks.com', '29de2fe03a4b63114288f17bf7f176eb', 'Abclosing#1', 'Jarrett', 'Wilson', 2, '1', 'Texas', 1, 0, '2021-02-07 07:37:31', NULL, NULL),
(127, 'milesstover1@gmail.com', '6a67e461b5eb72e55dc4cdeaa906f3be', 'Zcbm1357!', 'Miles', 'Stover', 2, '1', 'Texas', 1, 0, '2021-02-07 12:01:32', NULL, NULL),
(128, 'dequariasf@yahoo.com', '2b9a34ccdccdf1abb7148fc90c0f6bb3', 'Kimberly85', 'Dequarias', 'Frazier', 2, '0', 'Texas', 1, 0, '2021-02-07 12:42:42', NULL, NULL),
(129, 'gmunguia0319@gmail.com', '21b43e0abd44cff392877e8ac47fad29', 'Lyly1217', 'Glenda', 'munguia', 2, '0', 'Texas', 1, 0, '2021-02-07 12:50:45', NULL, NULL),
(130, 'txchicasboutique@gmail.com', '4a61cfa7e2b21b49575ca3524959dc18', 'Bella.1213', 'Brianna', 'Martinez', 2, '1', 'Texas', 1, 0, '2021-02-07 21:32:09', NULL, NULL),
(131, 'areteamana@gmail.com', '705c684c79421d8c0f6a5cd9339fcf10', 'Dominion777!', ' Affiong', 'Amana', 2, '1', 'Texas', 1, 0, '2021-02-07 21:57:49', NULL, NULL),
(132, 'emarroquinn@mail.com', '502c1a0dacc3ae7baab8f21e62f446eb', 'Ayleen2020', 'Elizabeth ', 'Marroquin', 2, '0', 'Texas', 1, 0, '2021-02-07 23:05:11', NULL, NULL),
(133, 'shopthe601@gmail.com', '3c0fc0ec175fd07a28219e55f82563d0', 'Paris6711!', 'Brittany', 'Dryden', 2, '0', 'Texas', 1, 0, '2021-02-07 23:53:17', NULL, NULL),
(134, 'juanisha.m87@gmail.com', '37b012a00aa2f0cee0337638e6e4533a', 'Jm0887$$', 'juanisha', 'mccowan', 2, '0', 'Texas', 1, 0, '2021-02-08 00:39:07', NULL, NULL),
(135, 'venouxrising@gmail.com', '3b5d91251f44f382d449caa67bd15b8f', 'Venus3322', 'Angelica', 'Diaz', 2, '0', 'Texas', 1, 0, '2021-02-08 01:27:55', NULL, NULL),
(136, 'larrydillon369@gmail.com', 'ce34d71e5a88091e7d4fc9666b33a30b', 'Slimbo32@', 'Larry', 'Dillon', 2, '1', 'Texas', 1, 0, '2021-02-08 03:27:28', NULL, NULL),
(137, 'antruongngo@gmail.com', 'bb2a5c0af76c4463fba7e72ae005a61a', 'Antruongbs@1995', 'An', 'Ngo', 2, '0', 'Texas', 1, 0, '2021-02-08 04:01:39', NULL, NULL),
(117, 'ramirezashley81@yahoo.com', '7bb0ae868525099e8695ae3571d6ee0d', 'Aiden2010!', 'Ashley', 'Chandler', 2, '1', 'Texas', 1, 0, '2021-02-06 13:49:06', NULL, NULL),
(118, 'SouthernSniderCo@yahoo.com', '57708ca2b2f4466945f4c4f158e6e1fb', 'deanne23', 'Brittney', 'Castleman', 2, '0', 'Texas', 1, 0, '2021-02-06 13:53:07', NULL, NULL),
(116, 'Vieracely1@gmail.com', '77c2d18576a09f3eece924022637c2a0', 'Kaelyn2017.', 'Araceli', 'Perales', 2, '0', 'Texas', 1, 0, '2021-02-05 14:33:59', NULL, NULL),
(138, 'lupita_gnzlz@yahoo.com', '82efbdbbcd2b97c41d72e4f7c7cbfc9b', 'Sales2021!', 'guadalupe', 'Sandoval Garibay ', 2, '0', 'Texas', 1, 0, '2021-02-08 08:41:54', NULL, NULL),
(139, 'sugarnspicekidsboutique@gmail.com', 'f559b5fdea272d65f96641f1da7172c6', '6q3mBGQ-Eb6LqBC', 'Bernadette', 'Scott', 2, '0', 'Texas', 1, 0, '2021-02-08 09:03:30', NULL, NULL),
(140, 'vikas@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'vikas', 'Manu', 2, '1', 'Texas', 1, 0, '2021-02-08 10:42:42', NULL, NULL),
(141, 'paul@ferratafirearms.com', '7bd3f77fbacd47ab7ed82eeb1940e127', '11991889733Pf!', 'Paul', 'Ferrata', 2, '1', 'Texas', 1, 0, '2021-02-08 11:16:48', NULL, NULL),
(142, 'FEW1960@YAHOO.COM', '8035df8d0b87a6dcfe0978be050b3763', 'EIDDERF1960', 'FREDDIE', 'WHITE', 2, '0', 'Texas', 1, 0, '2021-02-08 12:41:52', NULL, NULL),
(143, 'test@testing123.com', 'e10adc3949ba59abbe56e057f20f883e', '123456', 'Test', 'Test', 2, '1', 'Texas', 1, 0, '2021-02-08 12:52:30', NULL, NULL),
(144, 'Jeeta@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'Jeeta', 'kumar', 2, '1', 'Texas', 1, 0, '2021-02-08 13:30:55', NULL, NULL),
(145, 'bris.be.you.tique@gmail.com', '5841a2ebe30daf9a2c962a7a27d2d05f', 'TexasBoutique2021', 'Sabrina ', 'Gracia ', 2, '1', 'Texas', 1, 0, '2021-02-08 15:18:03', NULL, NULL),
(146, 'Milagrostudiostx@gmail.com', '1ae5377799bbbbb3bf8f12bb05452251', 'Vision0099$$', 'Claudia \"CK\"', 'O\'Neal', 2, '0', 'Texas', 1, 0, '2021-02-08 15:28:20', NULL, NULL),
(147, 'laramiwilliams@yahoo.com', '6542e26c28009409a68021776439679c', 'Atlie*1003', 'Larami', 'Williams ', 2, '1', 'Texas', 1, 0, '2021-02-08 17:40:11', NULL, NULL),
(148, 'mmhinson7@gmail.com', 'c3d46ab6f294fcd8230447727f191c08', 'Makenna2121#', 'Meagan', 'Smith', 2, '1', 'Texas', 1, 0, '2021-02-08 19:33:12', NULL, NULL),
(161, 'olivasabg13@gmail.com', 'ac1c5c48a8b01f615c6fb57971c96ab1', 'Nunoana1', 'Alex', 'Olivas', 2, '1', 'Texas', 1, 0, '2021-02-10 01:11:31', NULL, NULL),
(150, 'gammysgroovyshop@gmail.com', '1004cbbc5f5fe33a60493688c0e9beaf', 'pepper33', 'Tracy', 'Perkins-Briggs', 2, '0', 'Texas', 1, 0, '2021-02-09 09:02:30', NULL, NULL),
(151, 'skigirl9800@gmail.com', '1004cbbc5f5fe33a60493688c0e9beaf', 'pepper33', 'Tracy', 'Perkins-Briggs', 2, '0', 'Texas', 1, 0, '2021-02-09 09:04:32', NULL, NULL),
(152, 'brandonbates89@yahoo.com', '8c8763440a2b1f31b945f3b53c373f7d', '55441230Bates$', 'BRANDON', 'BATES', 2, '1', 'Texas', 1, 0, '2021-02-09 10:54:01', NULL, NULL),
(162, 'harsh@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'harsh', 'kumar', 2, '1', 'Texas', 1, 0, '2021-02-10 04:50:39', NULL, NULL),
(154, 'victoriaesquivel0924@gmail.com', '4163b71a540ab7f3e9785a9beff7fa14', 'Vickyvicky24', 'victoria', 'esquivel', 2, '0', 'Texas', 1, 0, '2021-02-09 14:28:56', NULL, NULL),
(155, 'lynnettepkent@gmail.com', 'f871e8002fe78c56d445332f8101941f', 'Mykids1973', 'Lynnette', 'Perryman', 2, '0', 'Texas', 1, 0, '2021-02-09 16:45:49', NULL, NULL),
(156, 'angelbelle2613.cg@gmail.com', '65625851e6e723e4bb9d474721624747', 'mcmgodbless2021', 'Miguel', 'Gonzalez', 2, '0', 'Texas', 1, 0, '2021-02-09 18:18:34', NULL, NULL),
(157, 'sthomas1202@yahoo.com', '774f12e12554e6541a7a4674b1c04564', 'Taylor1010', 'summer', 'thomas', 2, '1', 'Texas', 1, 0, '2021-02-09 21:06:00', NULL, NULL),
(163, 'kristie.brooks@berkstonllc.com', '8b9473fea63f0590959e34e1c3272aef', 'Mnk070707', 'Kristie ', 'Brooks', 2, '1', 'Texas', 1, 0, '2021-02-10 07:16:03', NULL, NULL),
(165, 'keshav.wowz@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin123', 'keshav', 'b', 2, '0', 'Texas', 1, 0, '2021-02-10 08:14:04', NULL, NULL),
(166, 'bmullis@outlook.com', '37d64d0925b1d04a7f05ae97dde2a8ea', 'Trump2020', 'ralph', 'mullis', 2, '1', 'Texas', 1, 0, '2021-02-10 08:39:10', NULL, NULL),
(167, 'david@lanortenatamalefactory.com', 'b25e51afba16c3c0bb17b123f6b3a574', 'P8gr3huuZ3:EcCJ', 'David', 'Castillo', 2, '1', 'Texas', 1, 0, '2021-02-10 11:04:34', NULL, NULL),
(168, 'ashleymichelle780@gmail.com', '0fa73d5c5be3a2c129484627b3ab0319', 'Michelle13', 'Ashley ', 'Castillo', 2, '1', 'Texas', 1, 0, '2021-02-10 12:45:10', NULL, NULL),
(169, 'vazquez.ana38@yahoo.com', '953194f36c94bfed8f0d4632547b5fe1', 'Aaron@15', 'Vazquez', 'Ana', 2, '1', 'Texas', 1, 0, '2021-02-10 13:08:39', NULL, NULL),
(170, 'felixle119@gmail.com', '391e03d0dc89c3168db210983c705400', '7182543Hieu', 'Hieu', 'Le', 2, '1', 'Texas', 1, 0, '2021-02-10 14:30:53', NULL, NULL),
(171, 'fullcountbaseball15@gmail.com', '09882984010f659144cf385297f7d979', 'Zilose1981', 'Eric', 'Soliz', 2, '1', 'Texas', 1, 0, '2021-02-10 14:57:38', NULL, NULL),
(173, 'marcogalvan434@gmail.com', 'ed48e2717ef9ee7d1af492f808ff1c12', 'J842h31!', 'Marco', 'Galvan', 2, '1', 'Texas', 1, 0, '2021-02-10 19:19:53', NULL, NULL),
(174, 'jeane814@gmail.com', '5ec6304f88b86d81322da001309035f9', 'Gunner888', 'Jeane', 'Dodson', 2, '0', 'Texas', 1, 0, '2021-02-10 20:47:15', NULL, NULL),
(175, 'androbgue@gmail.com', 'd9e9917cb419aaec847044c9dd913ccd', 'Robles1998*', 'Andrea', 'Robles', 2, '0', 'Texas', 1, 0, '2021-02-10 21:11:04', NULL, NULL),
(176, 'sonyamkelley@gmail.com', 'f43b147c193a4755f8cafc254bc8641b', '9488Sonya*$#', 'Sonya ', 'Kelley ', 2, '1', 'Texas', 1, 0, '2021-02-10 22:55:27', NULL, NULL),
(177, 'maminshew@icloud.com', '01960d9f134e84ec7d6d4f0c3b91fe7b', 'Paytwins1', 'Misty', 'Minshew', 2, '0', 'Texas', 1, 0, '2021-02-11 01:36:38', NULL, NULL),
(178, 'KBK@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin123', 'Keshav', 'Bb', 2, '0', 'Texas', 1, 0, '2021-02-11 04:58:12', NULL, NULL),
(179, 'britney@jdbatx.com', '8454a7b9891978c4cf6c4e2c4b4a1461', 'Chopper1one', 'Gabe', 'Joseph', 2, '1', 'Texas', 1, 0, '2021-02-11 09:35:14', NULL, NULL),
(180, 'amartinez691982@gmail.com', '9f93dc46036f57e0980be81edee2d18c', 'Darklord#69', 'Amanda', 'Martinez', 2, '1', 'Texas', 1, 0, '2021-02-11 10:17:08', NULL, NULL),
(181, 'thefierceallureboutique@gmail.com', '6ff3869f97bbcb538dd9d49c60650b80', 'Allure21', 'SharDel ', 'Ross', 2, '0', 'Texas', 1, 0, '2021-02-11 11:28:52', NULL, NULL),
(182, 'behindclozzeddoorz@gmail.com', '2941ab82aac4214c68daa09c33900407', 'Money2020', 'Ja\'Net', 'Scott', 2, '0', 'Texas', 1, 0, '2021-02-11 14:40:45', NULL, NULL),
(183, 'Chris@auto-entry.com', '559cb461c1e0364a134cbf785ae0116c', 'Ryandavid@21', 'Christopher', 'Kurtz', 2, '1', 'Texas', 1, 0, '2021-02-11 15:17:08', NULL, NULL),
(184, 'prophetderrick1971@gmail.com', 'b9ebf733ac10f0e51b44a9460c91e8cb', 'Walter12$', 'Pastor Derrick ', 'Rogers', 2, '1', 'Texas', 1, 0, '2021-02-11 17:41:40', NULL, NULL),
(185, 'anthonysrey92@gmail.com', '1c6f950490e09bebb0aa7a99855d9062', 'Texas.123', 'Anthony', 'Srey', 2, '0', 'Texas', 1, 0, '2021-02-11 19:00:36', NULL, NULL),
(186, 'angelfaithm2@gmail.com', '08ee81c7bc9d08665c51258517b11116', 'Bobby19840!', 'TASSIE', 'Murphy ', 2, '1', 'Texas', 1, 0, '2021-02-11 20:50:10', NULL, NULL),
(187, 'Dalia.e.acosta@gmail.com', '1729a7e5b28484d31c9e3ab2f3c646ea', 'Number116.', 'Dalia', 'Flores', 2, '0', 'Texas', 1, 0, '2021-02-11 22:30:00', NULL, NULL),
(188, 'dominiquebarber51@gmail.com', '3f220b2218486e1ca60a3080c11a977f', 'barber19', 'Dominique', 'Barber', 2, '0', 'Texas', 1, 0, '2021-02-12 11:28:39', NULL, NULL),
(189, 'alwaysforever0718@gmail.com', '6c6c4910ba477a0980eac0563b938d5e', 'Dnr0718*', 'NICOLE', 'RENDON', 2, '1', 'Texas', 1, 0, '2021-02-12 11:32:27', NULL, NULL),
(190, 'smaceaslon@gmail.com', 'f9809e7fea55bc633b23b1236a93e65f', 'Y3sWDu8XgX4p6TB', 'Sarah', 'Easlon', 2, '1', 'Texas', 1, 0, '2021-02-12 11:57:09', NULL, NULL),
(191, 'mrskatandrews@gmail.com', '19c543fb9074fc7cd77fa356dc24a819', 'ShineR33##', 'Kathleen', 'Andrews', 2, '1', 'Texas', 1, 0, '2021-02-12 13:20:24', NULL, NULL),
(192, 'melanielallred@yahoo.com', '2c6f9dbad25961fc678be6e7d2bb708e', 'Melnjosh18', 'Melanie', 'Allred', 2, '1', 'Texas', 1, 0, '2021-02-12 13:55:50', NULL, NULL),
(193, 'geiser.hannah@gmail.com', '2aee5c3be439edfa97d4f3f853fb8bc5', 'Hg089577!', 'Hannah', 'Geiser', 2, '0', 'Texas', 1, 0, '2021-02-12 14:17:06', NULL, NULL),
(194, 'drkathy@celebratekids.com', '23de3e0026bcfe5a9d28b9e076151071', 'Joy569Joy', 'Kathy', 'Koch', 2, '1', 'Texas', 1, 0, '2021-02-12 15:03:54', NULL, NULL),
(195, 'cecered1717@gmail.com', 'bb4995f7c2bbf12d5f5b5a102811c24b', 'John#1964', 'Chamel', 'Ducksworth', 2, '1', 'Texas', 1, 0, '2021-02-12 15:15:57', NULL, NULL),
(196, 'marquez_denisse@yahoo.com', '4ffecced74221cdbb17ed8147bf975c5', 'mexbUc-huqjah-0miwpy', 'Denisse', 'Crisp', 2, '1', 'Texas', 1, 0, '2021-02-12 19:04:07', NULL, NULL),
(197, 'hareem.riaz5@gmail.com', 'b617fb96b8f0e20fbc90200612724804', 'kenwood2211', 'Hareem', 'Riaz', 2, '0', 'Texas', 1, 0, '2021-02-12 22:38:22', NULL, NULL),
(198, 'jlak2326@gmail.com', '00aa4e98be9192e2cf1aa096cb047278', 'Jm15102@', 'John', 'Lester', 2, '0', 'Texas', 1, 0, '2021-02-13 11:05:17', NULL, NULL),
(199, 'fpbarkley@gmail.com', '0bc2e3646353fdc5e4e7e49bcc1c4aa1', 'Midessamotorsllc-1', 'Forrest', 'Barkley', 2, '1', 'Texas', 1, 0, '2021-02-13 12:37:23', NULL, NULL),
(200, 'dawana@gelupearland.com', '3762f85977fe0538ac48ca974d0ca727', 'lILCSHAD1', 'SHAD', 'WISE', 2, '1', 'Texas', 1, 0, '2021-02-13 13:01:02', NULL, NULL),
(201, 'lrodriguezartistry@gmail.com', 'bf86a98a56bf9c417ed001934d02a711', 'Rub4Shell', 'Liana', 'Rodriguez ', 2, '1', 'Texas', 1, 0, '2021-02-13 16:42:53', NULL, NULL),
(202, 'karenoliva426@gmail.com', '4f8bc61365a1bbefa3a36b8d723772f0', 'Evolet17', 'karen', 'oliva', 2, '0', 'Texas', 1, 0, '2021-02-13 17:52:00', NULL, NULL),
(203, 'emzzstudios@gmail.com', '70a0aed06c05091da1d5e5301a861afc', 'Glitter2021$', 'Alisha', 'Young', 2, '0', 'Texas', 1, 0, '2021-02-13 18:48:55', NULL, NULL),
(204, 'Kandratucker85@gmail.com', '3e98dee5cf12431464f46cb57b9377fd', 'Messiah15!', 'kandra', 'tucker', 2, '1', 'Texas', 1, 0, '2021-02-13 19:31:37', NULL, NULL),
(205, 'arlene-0412@hotmail.com', 'b0d505df40d19f18f0b441531422c8b8', 'Abilene0412', 'Cynthia ', 'Vela ', 2, '0', 'Texas', 1, 0, '2021-02-13 22:21:17', NULL, NULL),
(206, 'a2originalvibez@gmail.com', '4aca2118847b47a2523f885aab5acd82', 'Nola3547', 'Aroni', 'Rucker', 2, '1', 'Texas', 1, 0, '2021-02-13 23:38:20', NULL, NULL),
(207, 'sclub745@gmail.com', 'bcb43376647d6a56ebee9282d9813bd9', 'samclub1214', 'Misbah', 'Gul', 2, '0', 'Texas', 1, 0, '2021-02-13 23:47:35', NULL, NULL),
(208, 'MsVivian729@gmail.com', '04a37b44c249416f8fc56c1f197e1b74', 'Tmochi811!', 'Vivian', 'Schroeder', 2, '1', 'Texas', 1, 0, '2021-02-14 01:37:43', NULL, NULL),
(209, 'Stuffnthings1432@gmail.com', 'c4b767ee9bbb09b57007025acd145290', 'Trey2020', 'Gladys', 'Landers', 2, '0', 'Texas', 1, 0, '2021-02-14 04:53:22', NULL, NULL),
(210, 'wearethegoldenranch@gmail.com', 'fab071ff61d4f8ef73aa49701d651f21', '01Mar2018!', 'Amanda', 'Atkinson', 2, '0', 'Texas', 1, 0, '2021-02-14 11:55:27', NULL, NULL),
(211, 'overwatch20llc@gmail.com', '7958b9d6327755bc21378e183651a595', 'badd11', 'Scott', 'Hansford', 2, '1', 'Texas', 1, 0, '2021-02-14 12:43:03', NULL, NULL),
(212, 'cjay226@gmail.com', '63d33a2dec7ca0e362681b28d807c9af', 'Jaycie7!', 'Christy', 'Traylor', 2, '1', 'Texas', 1, 0, '2021-02-14 16:42:00', NULL, NULL),
(213, 'mjayejustice@gmail.com', '81cf4c5db3521e389dfd375785e4f973', 'Montae83!', 'Michelle', 'Horton', 2, '1', 'Texas', 1, 0, '2021-02-14 17:06:29', NULL, NULL),
(214, 'Mrbarrymaintservice@gmail.com', '0aa5c1d8188d91fecc5efab0d2b16706', 'BARRY1-2-3-4', 'barry', 'awala', 2, '0', 'Texas', 1, 0, '2021-02-14 17:10:15', NULL, NULL),
(215, 'moneyunchained@gmail.com', 'b98a4a7df9a0fc8fe6087784ff279029', 'ejec1943!', 'Jocasta', 'Daniels', 2, '1', 'Texas', 1, 0, '2021-02-14 19:57:50', NULL, NULL),
(216, 'joycheboutique@gmail.com', '6893678b00a97d2e4ba116f6fd7de51a', 'QueenLeka26$', 'Maleka', 'Barber', 2, '0', 'Texas', 1, 0, '2021-02-14 20:59:24', NULL, NULL),
(217, '20green15@gmail.com', 'c254418b5b3e41f4afde59069b4ec498', 'Header01*', 'Katherine', 'Luckie', 2, '0', 'Texas', 1, 0, '2021-02-14 22:58:32', NULL, NULL),
(218, 'lexbetford@gmail.com', '31982f1f72a418c727439ad3cf91cb1d', '686ij28', 'lexis', 'betford', 2, '0', 'Texas', 1, 0, '2021-02-14 23:03:09', NULL, NULL),
(219, 'tesoroexpressions@yahoo.com', '2f1271cdd2715d78fe3a986a8f187e57', 'Bubba01luv', 'Marlene', 'munoz', 2, '1', 'Texas', 1, 0, '2021-02-14 23:28:06', NULL, NULL),
(220, 'j.crimiel@yahoo.com', 'ca62aa2980ad24303a802ae535b456f0', 'ladyTy87$', 'Christalyn', 'Crimiel', 2, '1', 'Texas', 1, 0, '2021-02-15 09:48:03', NULL, NULL),
(221, 'jerazelram123@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', 'test123', 'Jez', 'ram', 2, '1', 'Texas', 1, 0, '2021-02-15 14:03:08', NULL, NULL),
(222, 'Jkooncedk@gmail.com', '89b482bc619878b0b288f9558cf2e124', 'saleen06252003', 'Joshua', 'Koonce', 2, '0', 'Texas', 1, 0, '2021-02-15 14:59:52', NULL, NULL),
(223, 'Bcogshell501@gmail.com', '7fb726862648151314531e11790c5577', 'BRYCOG501', 'Bryant', 'Cogshell', 2, '1', 'Texas', 1, 0, '2021-02-15 15:13:45', NULL, NULL),
(224, 'marfacoffeecompany@gmail.com', '2d6c4e103221c5e23cdf1213d82a1206', 'Vanlife1', 'Lesley', 'Brandt', 2, '1', 'Texas', 1, 0, '2021-02-15 15:22:56', NULL, NULL),
(225, 'jonsnow@gmail.com', '9c43092f145de78d965d84de95ce99bb', 'PSx2UUSb5a7rLtq', 'jon', 'snow', 2, '0', 'Texas', 1, 0, '2021-02-16 02:21:46', NULL, NULL),
(226, 'lclc@gmail.com', '04a25612cc23180b07d53e85894958f7', 'BG5V7kchTMtsewe', 'LC', 'LC', 2, '1', 'Texas', 1, 0, '2021-02-16 09:53:33', NULL, NULL),
(227, 'laveniajannang12@gmail.com', '809d195db9603c1ec4da034958aaf2a3', 'C00kies&cream12', 'Lavenia', 'Berame', 2, '1', 'Texas', 1, 0, '2021-02-16 10:46:07', NULL, NULL),
(228, 'jerazelram123456@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', 'test123', 'Jez', 'ram', 2, '1', 'Texas', 1, 0, '2021-02-20 12:44:43', NULL, NULL),
(229, 'studio@floragardensdesign.com', '554bf6c353a0e12df950b1161554bb38', 'Mfvd1977.', 'Maria fernanda ', 'vuilleumier dipp ', 2, '0', 'Texas', 1, 0, '2021-02-22 11:22:46', NULL, NULL),
(230, 'RAN@GMAIL.COM', '501cb8d74113d5d6a272646baae9ff62', '123QWER', 'tEST', 'RUN', 2, '0', 'Texas', 1, 0, '2021-02-22 11:37:55', NULL, NULL),
(231, 'yogesh@gmail.com', '0192023a7bbd73250516f069df18b500', 'admin123', 'Yogesh', 'tanwar', 2, '0', 'Texas', 1, 0, '2021-02-23 11:33:09', NULL, NULL),
(232, 'bhaduriakeshav@gmail.com', '0e7517141fb53f21ee439b355b5a1d0a', 'Admin@123', 'Keshav', 'singh', 2, '1', 'Texas', 1, 0, '2021-02-23 11:33:34', NULL, NULL),
(233, 'sajidkarimee@gmail.com', '81f59d1e120b92039507a583b06ef483', 'THdGsZU6Tnn,', 'karimee', 'm', 2, '0', 'Texas', 1, 0, '2021-02-26 23:12:38', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_businessinformation`
--
ALTER TABLE `tbl_businessinformation`
  ADD PRIMARY KEY (`bIid`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_generalquestions`
--
ALTER TABLE `tbl_generalquestions`
  ADD PRIMARY KEY (`gqid`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_organizationinformation`
--
ALTER TABLE `tbl_organizationinformation`
  ADD PRIMARY KEY (`orgid`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `tbl_primary`
--
ALTER TABLE `tbl_primary`
  ADD PRIMARY KEY (`pryid`);

--
-- Indexes for table `tbl_states`
--
ALTER TABLE `tbl_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_state_setting`
--
ALTER TABLE `tbl_state_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_supplierinformation`
--
ALTER TABLE `tbl_supplierinformation`
  ADD PRIMARY KEY (`siid`);

--
-- Indexes for table `tbl_type_of_entity`
--
ALTER TABLE `tbl_type_of_entity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_businessinformation`
--
ALTER TABLE `tbl_businessinformation`
  MODIFY `bIid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `tbl_generalquestions`
--
ALTER TABLE `tbl_generalquestions`
  MODIFY `gqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_organizationinformation`
--
ALTER TABLE `tbl_organizationinformation`
  MODIFY `orgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_primary`
--
ALTER TABLE `tbl_primary`
  MODIFY `pryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `tbl_states`
--
ALTER TABLE `tbl_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_state_setting`
--
ALTER TABLE `tbl_state_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_supplierinformation`
--
ALTER TABLE `tbl_supplierinformation`
  MODIFY `siid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_type_of_entity`
--
ALTER TABLE `tbl_type_of_entity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
