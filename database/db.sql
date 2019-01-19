-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2019 at 03:06 AM
-- Server version: 5.6.40
-- PHP Version: 7.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel-crm`
--
CREATE DATABASE IF NOT EXISTS `hotel-crm` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hotel-crm`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `county` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_num` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `middle_name`, `country`, `county`, `address_line1`, `address_line2`, `zip_num`, `date_of_birth`, `phone_number`, `created_at`, `updated_at`) VALUES
(11, 'Clemens', 'Kutch', 'Ms. Wendy Lindgren II', 'Liechtenstein', 'South Carolina', '5800 Kylee Turnpike Suite 913\nRosenbaummouth, MN 20765-8385', 'Apt. 153', '19020-9426', '2015-12-24 00:00:00', '+3285888173576', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(12, 'Marjorie', 'Doyle', 'Zander Herzog III', 'Bermuda', 'Vermont', '86127 Marvin Locks Suite 084\nLake Ashtynhaven, KY 59640-7605', 'Apt. 151', '65025-6477', '1980-02-08 00:00:00', '+6155161033955', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(13, 'Peter', 'Hamill', 'Clare Goyette', 'United States Virgin Islands', 'Mississippi', '678 Aimee Forest Suite 953\nNorth Alexandra, MO 39469-0683', 'Suite 810', '63308', '2012-10-09 00:00:00', '+8196046775765', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(14, 'Hipolito', 'Ledner', 'Miss Ramona Hamill', 'Panama', 'Maryland', '205 Kole Forks\nHeaneyfurt, MA 60940', 'Suite 647', '72317', '2016-11-16 00:00:00', '+8736250475876', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(15, 'Antonia', 'Sporer', 'Stanley Dooley', 'Netherlands', 'Virginia', '6493 Mckenzie Wells\nLake Leeborough, MO 65806', 'Suite 069', '53395', '2003-01-20 00:00:00', '+4091988758513', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(16, 'Juston', 'Murphy', 'Martine Emmerich', 'Vietnam', 'Vermont', '6337 Laney Circle\nJedidiahhaven, ND 92988-9285', 'Suite 545', '18051-2785', '1981-12-04 00:00:00', '+1312392692569', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(17, 'Milford', 'Padberg', 'Maria Nitzsche', 'Tajikistan', 'Idaho', '954 Virgil Radial\nPredovicside, ND 88789-7657', 'Suite 692', '78322-5120', '1975-10-09 00:00:00', '+1309484642225', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(18, 'Hillard', 'Runte', 'Lesley Sauer', 'Saint Vincent and the Grenadines', 'Hawaii', '590 Sasha Islands Suite 786\nEmardberg, MA 51805-4133', 'Suite 191', '88126', '2016-07-05 00:00:00', '+8266519740169', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(19, 'Gregory', 'Rohan', 'Dewayne McDermott', 'China', 'Tennessee', '2073 Beahan Glen\nMayertburgh, DC 69010', 'Suite 770', '68164-7891', '1985-07-14 00:00:00', '+7782052483942', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(20, 'Jerad', 'Spinka', 'Augustine Sawayn', 'Saudi Arabia', 'Tennessee', '34856 Marisol Points\nNew Theodorechester, CA 70500-6722', 'Suite 548', '05157', '1992-06-08 00:00:00', '+8791140728638', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(21, 'Cheyenne', 'Heller', 'Mr. Armando Abbott Jr.', 'Angola', 'South Dakota', '368 Scotty Path\nPort Elwin, HI 04727', 'Suite 586', '62234', '2010-03-24 00:00:00', '+9036396283975', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(22, 'Devin', 'Heidenreich', 'Camille Leuschke', 'Trinidad and Tobago', 'Vermont', '253 Selina Burgs\nSchultzville, DC 73248-4650', 'Suite 184', '12245-8297', '2002-05-09 00:00:00', '+1364932438395', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(23, 'Judy', 'Greenholt', 'Lorna Jast', 'Burundi', 'Louisiana', '60897 Tess Lakes\nEast Amparo, ID 12643-1053', 'Suite 365', '26826-2103', '1995-05-26 00:00:00', '+1613338093658', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(24, 'Chaya', 'Reynolds', 'Oscar Wilkinson', 'Benin', 'Arizona', '456 Reichert Fort Suite 688\nConroyhaven, MD 87206', 'Suite 031', '82700', '1990-12-05 00:00:00', '+2944305968925', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(25, 'Malcolm', 'Okuneva', 'Elda Green III', 'Sudan', 'Arkansas', '412 Sydnee Cliffs\nHaneton, AK 31711', 'Apt. 277', '63455', '1978-09-11 00:00:00', '+3715075785100', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(26, 'Fred', 'Boyle', 'Hadley Stracke', 'Liechtenstein', 'Idaho', '82928 Verna Mission\nO\'Keefeton, RI 24955', 'Apt. 980', '97949', '1996-07-25 00:00:00', '+6272816278437', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(27, 'Angeline', 'Torphy', 'Maci Grimes', 'Nicaragua', 'Rhode Island', '48017 Josianne Plains\nMinaside, VT 60168', 'Apt. 764', '86106', '1982-11-08 00:00:00', '+6341572449568', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(28, 'Drew', 'Renner', 'Ted Conroy III', 'Tajikistan', 'Kansas', '247 Huels Fields\nSouth Theresiafort, AR 44908-5369', 'Suite 683', '31699', '2008-09-30 00:00:00', '+6533632670855', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(29, 'Cameron', 'Crona', 'Gabrielle Skiles', 'Western Sahara', 'Montana', '59000 Matt Rapids Apt. 223\nLake Muhammad, NE 75525-6571', 'Suite 441', '03194-1489', '1981-11-12 00:00:00', '+3207687647844', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(30, 'Laisha', 'VonRueden', 'Luna Rogahn', 'Western Sahara', 'Wyoming', '298 Camilla Lane Apt. 041\nLeonardberg, ID 64859', 'Suite 572', '48118-0396', '1971-10-29 00:00:00', '+4105611466058', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(31, 'Willie', 'Bins', 'Laury Schmitt', 'Turks and Caicos Islands', 'Oregon', '21201 Judd Bridge\nNorth Kobechester, AZ 05790-9185', 'Apt. 549', '58353', '2017-01-25 00:00:00', '+7988033683343', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(32, 'Nia', 'Klocko', 'Luisa Thiel DDS', 'Monaco', 'North Carolina', '429 Reina Pike Apt. 973\nWatersside, FL 17862', 'Apt. 134', '57773', '1997-01-15 00:00:00', '+7430990888376', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(33, 'Khalid', 'Welch', 'Miss Lydia Jacobi', 'Macao', 'Arizona', '97904 Schowalter Rue\nKilbackton, WY 63297-6191', 'Suite 299', '59841', '2008-07-17 00:00:00', '+8884596991378', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(34, 'Francisca', 'Durgan', 'Miss Madie Hirthe', 'Mongolia', 'District of Columbia', '115 Ryder Turnpike Apt. 658\nSouth Price, IL 57115', 'Suite 834', '98646-8010', '2001-04-13 00:00:00', '+4531361981046', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(35, 'Justyn', 'Gibson', 'Sandra Bernhard Sr.', 'Congo', 'Connecticut', '71245 Quentin Island Suite 380\nRyanport, PA 23472-4281', 'Suite 585', '07564-1724', '2004-12-19 00:00:00', '+3133553648197', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(36, 'Abbigail', 'Block', 'Savanna Lang', 'Italy', 'Indiana', '9159 Kovacek Courts Suite 950\nDrewborough, IA 43457-6344', 'Apt. 863', '44464-5450', '1986-01-17 00:00:00', '+5704480986624', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(37, 'Dakota', 'Torp', 'Claudia Denesik', 'Brunei Darussalam', 'Mississippi', '12213 Douglas Crest Suite 555\nGeoffreyview, FL 17947-5362', 'Apt. 890', '02907', '2010-02-18 00:00:00', '+8191039936233', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(38, 'Mack', 'Gerlach', 'Miss Rebecca Batz III', 'South Georgia and the South Sandwich Islands', 'Iowa', '3370 Geovanni Parkways Suite 214\nLake Jordanmouth, AK 00868-4040', 'Suite 079', '14565-7504', '2016-03-16 00:00:00', '+5218329478370', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(39, 'Vallie', 'Schaden', 'Sydney Schumm', 'Tuvalu', 'Arkansas', '191 Pamela Pike Suite 410\nEast Taniaport, TX 84265', 'Suite 953', '49638', '2001-01-29 00:00:00', '+1731954048919', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(40, 'Eldridge', 'Walsh', 'Prof. Saige Dietrich', 'Lebanon', 'Nebraska', '7827 Leffler Crossing Apt. 130\nRandifort, AZ 97924-2934', 'Apt. 549', '72279', '2004-10-26 00:00:00', '+1184827241712', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(41, 'Quinten', 'Goodwin', 'Brett Konopelski', 'Greece', 'Colorado', '836 Cassin Islands Suite 905\nLake Kristaview, HI 33848-2996', 'Suite 663', '75570-6230', '1975-04-11 00:00:00', '+5271443956650', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(42, 'Hazle', 'Koepp', 'Dr. Patience Hessel Sr.', 'Hong Kong', 'Kansas', '478 Dasia Roads Apt. 687\nZemlakbury, DE 22605', 'Suite 966', '76634', '2016-04-13 00:00:00', '+4433210886314', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(43, 'Evert', 'Moen', 'Frieda Breitenberg', 'Turks and Caicos Islands', 'Virginia', '4171 Will Villages Apt. 320\nKrajcikville, GA 05217', 'Apt. 545', '33008-8289', '2003-01-01 00:00:00', '+1630914420570', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(44, 'Leif', 'Kuvalis', 'Virginie Wolff', 'Slovakia (Slovak Republic)', 'North Dakota', '6676 Lucie Lodge\nLake Tracyshire, TN 03442', 'Apt. 887', '93133-6495', '1982-07-07 00:00:00', '+6865274384059', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(45, 'Kelli', 'Howe', 'Sabina Kling III', 'Luxembourg', 'South Carolina', '601 Ullrich Locks\nWest Jamie, AR 18030-4045', 'Apt. 115', '88759', '2001-06-30 00:00:00', '+2787927138004', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(46, 'Nona', 'Morissette', 'Laurine Skiles DVM', 'Burundi', 'Kentucky', '98024 Matt Forest\nMarceloborough, WA 92602', 'Suite 877', '63404', '2003-09-23 00:00:00', '+1510062045677', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(47, 'Josie', 'Fahey', 'Anne Kutch II', 'Finland', 'Ohio', '75415 Chanelle Manor Suite 079\nCatalinaport, VA 91352', 'Apt. 821', '19130-3357', '2016-03-04 00:00:00', '+9251196772317', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(48, 'Giovani', 'Yundt', 'Ivory Stracke MD', 'Honduras', 'North Carolina', '98554 Preston Roads Suite 742\nWest Autumnberg, AR 72380-0444', 'Apt. 898', '24928-2872', '1976-05-12 00:00:00', '+4963773728184', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(49, 'Hiram', 'Koelpin', 'Vida Hills', 'Kiribati', 'District of Columbia', '679 Elna Vista Suite 095\nLinniehaven, RI 61657', 'Suite 389', '57631', '1973-01-15 00:00:00', '+6099890645866', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(50, 'Caroline', 'Ryan', 'Isai Brakus', 'Tanzania', 'New York', '7072 Langworth Falls\nNorth Jeromy, WI 86309', 'Suite 201', '58381', '1980-11-01 00:00:00', '+6967211663052', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(51, 'Flossie', 'Parisian', 'Cassidy Rippin', 'Oman', 'Oregon', '7781 Olen Plaza\nLake Orpha, KY 98555-6305', 'Apt. 746', '84360', '1992-10-31 00:00:00', '+7537759729961', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(52, 'Allan', 'Wehner', 'Jocelyn Zemlak', 'Sweden', 'Illinois', '14812 Grant Villages Apt. 617\nEast William, DC 00099', 'Apt. 318', '13570-8381', '2002-05-24 00:00:00', '+5186940174188', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(53, 'Fabian', 'Hettinger', 'Mr. Jaycee Glover Jr.', 'Romania', 'Utah', '996 Halvorson Row\nStrackeville, DE 05312', 'Suite 619', '35499', '2004-06-09 00:00:00', '+5117040797312', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(54, 'Avery', 'Walker', 'Prof. Dusty Steuber', 'Faroe Islands', 'Montana', '57889 Kennith Meadow\nNikitashire, WV 12739', 'Apt. 595', '24866-6598', '1999-09-18 00:00:00', '+7040516640776', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(55, 'Trudie', 'Padberg', 'Bud Stracke', 'Moldova', 'Georgia', '899 Nolan Lake Suite 495\nPort Jarrell, ID 56741', 'Apt. 756', '35066-7465', '1996-03-31 00:00:00', '+9823626597209', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(56, 'Vivianne', 'Konopelski', 'Shea Conroy III', 'Israel', 'Montana', '589 Harris Glens\nWest Parisstad, MA 43453-0236', 'Apt. 656', '96468', '1999-05-28 00:00:00', '+3527852428518', '2019-01-19 08:51:03', '2019-01-19 08:51:03'),
(57, 'Jadyn', 'Gibson', 'Ms. Chelsie Balistreri', 'San Marino', 'Florida', '907 Cyril Pass\nHerzogside, MD 62455-8510', 'Apt. 718', '80560-7894', '1995-09-26 00:00:00', '+3106031097305', '2019-01-19 08:51:04', '2019-01-19 08:51:04'),
(58, 'Ward', 'Kerluke', 'Jedidiah Ritchie', 'Canada', 'Minnesota', '8210 Swift Motorway Suite 544\nFriesenport, MO 55183', 'Apt. 186', '74745', '2003-08-03 00:00:00', '+2856919183043', '2019-01-19 08:51:04', '2019-01-19 08:51:04'),
(59, 'Hillard', 'Shanahan', 'Genevieve Mante', 'Sao Tome and Principe', 'Florida', '4615 Emmanuel Pine Apt. 245\nMurrayside, CT 52536', 'Suite 168', '06387', '2006-11-23 00:00:00', '+1605462672171', '2019-01-19 08:51:04', '2019-01-19 08:51:04'),
(60, 'Audrey', 'Stokes', 'Marquise Spencer', 'Togo', 'Vermont', '7365 Romaguera Lodge Suite 644\nJohnsonhaven, HI 07441', 'Apt. 021', '80343-3877', '1988-04-04 00:00:00', '+3899126500331', '2019-01-19 08:51:04', '2019-01-19 08:51:04');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `type` enum('Credit memo','Pro forma invoice','Interim invoice') COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `tax_registration_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('cash','credit_card','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoice_id`, `reservation_id`, `customer_id`, `type`, `invoice_desc`, `vat`, `discount`, `amount`, `tax_registration_number`, `payment_method`, `created_at`, `updated_at`) VALUES
(1, 51, 36, 'Pro forma invoice', 'Deleniti sit nisi minus autem dolor adipisci maxime perspiciatis.', 24, 18, 591.45, 'A12345', 'other', NULL, NULL),
(2, 52, 16, 'Interim invoice', 'Provident consequuntur nostrum aut hic at qui quisquam.', 19, 44, 308.54, 'A12345', 'other', NULL, NULL),
(3, 53, 17, 'Pro forma invoice', 'Earum necessitatibus voluptatem distinctio fugiat dolorum ex.', 21, 20, 69.15, 'A12345', 'credit_card', NULL, NULL),
(4, 54, 32, 'Credit memo', 'Quo ut dolores praesentium quos facilis omnis voluptatibus.', 24, 39, 506.27, 'A12345', 'other', NULL, NULL),
(5, 55, 59, 'Pro forma invoice', 'Iure aut aut praesentium enim nemo quia est.', 21, 29, 494.03, 'A12345', 'credit_card', NULL, NULL),
(6, 56, 45, 'Credit memo', 'Sit voluptatem perferendis dolorum nihil natus minus qui perspiciatis.', 24, 23, 319.97, 'A12345', 'credit_card', NULL, NULL),
(7, 57, 24, 'Credit memo', 'Facilis quisquam molestias ipsum numquam consequuntur necessitatibus dolorem.', 21, 30, 799.28, 'A12345', 'other', NULL, NULL),
(8, 58, 60, 'Pro forma invoice', 'Dolorem soluta animi voluptatem et.', 22, 11, 946.08, 'A12345', 'credit_card', NULL, NULL),
(9, 59, 50, 'Interim invoice', 'Expedita dignissimos a ad nulla est quibusdam.', 20, 44, 274.02, 'A12345', 'cash', NULL, NULL),
(10, 60, 25, 'Pro forma invoice', 'Aliquam est vel pariatur aut.', 22, 23, 932.92, 'A12345', 'credit_card', NULL, NULL),
(11, 61, 23, 'Interim invoice', 'Sequi qui adipisci dolorem est qui voluptatem molestiae.', 22, 45, 914.26, 'A12345', 'cash', NULL, NULL),
(12, 62, 33, 'Interim invoice', 'Nobis dolorem qui dolor.', 22, 49, 535.43, 'A12345', 'other', NULL, NULL),
(13, 63, 31, 'Credit memo', 'Consequatur est laboriosam veniam commodi sint animi quia modi.', 23, 43, 975.50, 'A12345', 'credit_card', NULL, NULL),
(14, 64, 45, 'Credit memo', 'Fuga incidunt repellat pariatur sed aut enim.', 20, 32, 823.75, 'A12345', 'credit_card', NULL, NULL),
(15, 65, 29, 'Pro forma invoice', 'Id rerum corrupti dolores.', 17, 37, 511.38, 'A12345', 'other', NULL, NULL),
(16, 66, 55, 'Credit memo', 'Fugit ut neque id corporis deserunt.', 18, 15, 38.49, 'A12345', 'credit_card', NULL, NULL),
(17, 67, 35, 'Credit memo', 'Hic dolorum hic cumque.', 21, 17, 341.36, 'A12345', 'cash', NULL, NULL),
(18, 68, 23, 'Interim invoice', 'At voluptas deserunt suscipit ut maiores sit recusandae impedit.', 17, 35, 875.84, 'A12345', 'credit_card', NULL, NULL),
(19, 69, 38, 'Interim invoice', 'Aut voluptatem cum eum dignissimos corrupti.', 22, 28, 880.03, 'A12345', 'other', NULL, NULL),
(20, 70, 15, 'Credit memo', 'Autem unde modi nisi minus.', 20, 15, 743.38, 'A12345', 'cash', NULL, NULL),
(21, 71, 40, 'Credit memo', 'Molestiae veritatis dolorum quibusdam facilis dolore exercitationem unde.', 19, 47, 815.03, 'A12345', 'cash', NULL, NULL),
(22, 72, 39, 'Credit memo', 'Commodi inventore repellendus tenetur et sit voluptas.', 23, 37, 282.38, 'A12345', 'cash', NULL, NULL),
(23, 73, 22, 'Credit memo', 'Ducimus qui vitae laborum et sit.', 21, 21, 659.71, 'A12345', 'credit_card', NULL, NULL),
(24, 74, 48, 'Interim invoice', 'Odio est culpa voluptatum totam.', 21, 48, 335.31, 'A12345', 'other', NULL, NULL),
(25, 75, 29, 'Interim invoice', 'Totam ut perferendis non culpa possimus totam accusantium.', 18, 6, 151.79, 'A12345', 'other', NULL, NULL),
(26, 76, 50, 'Interim invoice', 'Esse rem accusamus saepe dolores quis debitis.', 19, 38, 373.52, 'A12345', 'other', NULL, NULL),
(27, 77, 60, 'Interim invoice', 'Quidem ratione sed natus ex illo et voluptas.', 21, 20, 422.64, 'A12345', 'other', NULL, NULL),
(28, 78, 25, 'Pro forma invoice', 'Ducimus eos sunt ut sunt.', 20, 16, 870.74, 'A12345', 'cash', NULL, NULL),
(29, 79, 22, 'Credit memo', 'Maiores sed laboriosam molestiae quod.', 22, 40, 631.11, 'A12345', 'cash', NULL, NULL),
(30, 80, 37, 'Credit memo', 'Molestias quam laudantium dolorem non eaque qui inventore.', 19, 45, 257.56, 'A12345', 'credit_card', NULL, NULL),
(31, 81, 35, 'Pro forma invoice', 'Consectetur consequatur consequatur eos aut voluptatum ut.', 18, 49, 730.91, 'A12345', 'credit_card', NULL, NULL),
(32, 82, 59, 'Credit memo', 'Nobis ab totam eveniet voluptatum ab debitis est.', 22, 24, 707.89, 'A12345', 'other', NULL, NULL),
(33, 83, 47, 'Pro forma invoice', 'Praesentium maiores saepe aut error sit repellendus.', 20, 23, 421.50, 'A12345', 'other', NULL, NULL),
(34, 84, 43, 'Pro forma invoice', 'Beatae asperiores corrupti ipsam distinctio.', 20, 14, 262.76, 'A12345', 'credit_card', NULL, NULL),
(35, 85, 32, 'Interim invoice', 'Qui cumque laborum sed.', 17, 22, 875.65, 'A12345', 'other', NULL, NULL),
(36, 86, 31, 'Interim invoice', 'Harum sit velit officiis cum molestiae.', 18, 21, 805.09, 'A12345', 'credit_card', NULL, NULL),
(37, 87, 29, 'Interim invoice', 'Sequi fugit aperiam cum aut.', 23, 21, 243.07, 'A12345', 'other', NULL, NULL),
(38, 88, 36, 'Credit memo', 'Voluptas eos mollitia quia.', 17, 43, 373.19, 'A12345', 'cash', NULL, NULL),
(39, 89, 56, 'Interim invoice', 'Id molestiae eaque odio voluptas et.', 23, 43, 110.23, 'A12345', 'cash', NULL, NULL),
(40, 90, 15, 'Credit memo', 'Dignissimos minus vel voluptatum aut temporibus.', 24, 13, 984.51, 'A12345', 'cash', NULL, NULL),
(41, 91, 43, 'Credit memo', 'Nisi delectus officiis velit dolores possimus.', 20, 35, 442.65, 'A12345', 'other', NULL, NULL),
(42, 92, 35, 'Pro forma invoice', 'Sint recusandae autem rerum pariatur.', 21, 20, 675.06, 'A12345', 'credit_card', NULL, NULL),
(43, 93, 50, 'Interim invoice', 'Cum in molestiae adipisci praesentium numquam.', 20, 36, 637.47, 'A12345', 'cash', NULL, NULL),
(44, 94, 53, 'Pro forma invoice', 'Quasi eum et quis ad dolor non.', 22, 44, 805.03, 'A12345', 'credit_card', NULL, NULL),
(45, 95, 42, 'Interim invoice', 'Eaque reprehenderit error illo inventore rerum.', 23, 7, 328.62, 'A12345', 'credit_card', NULL, NULL),
(46, 96, 18, 'Pro forma invoice', 'Provident nostrum nihil dolore quae eveniet debitis incidunt.', 20, 5, 825.18, 'A12345', 'cash', NULL, NULL),
(47, 97, 15, 'Interim invoice', 'Quam vitae quo unde tenetur minus autem.', 17, 40, 227.63, 'A12345', 'credit_card', NULL, NULL),
(48, 98, 31, 'Pro forma invoice', 'Ipsam consequuntur magnam vitae ut omnis eum.', 22, 48, 688.89, 'A12345', 'cash', NULL, NULL),
(49, 99, 18, 'Interim invoice', 'Sit autem distinctio culpa et doloribus maiores et alias.', 24, 34, 750.79, 'A12345', 'cash', NULL, NULL),
(50, 100, 57, 'Pro forma invoice', 'Sunt quae est consequatur dolores.', 24, 7, 394.95, 'A12345', 'credit_card', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_08_230530_create_room_category', 1),
(4, '2019_01_08_230531_create_rooms_table', 1),
(5, '2019_01_08_230553_create_services_table', 1),
(6, '2019_01_08_230607_create_invoices_table', 1),
(7, '2019_01_08_230625_create_reservations_table', 1),
(8, '2019_01_08_230808_create_customers_table', 1),
(9, '2019_01_13_151230_create_prices_table', 1),
(10, '2019_01_13_153300_define_relationships', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_category_id` int(10) UNSIGNED NOT NULL,
  `season` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `room_category_id`, `season`, `value`) VALUES
(1, 51, 'delectus', 696.09),
(2, 52, 'adipisci', 665.85),
(3, 53, 'ratione', 170.67),
(4, 54, 'autem', 248.37),
(5, 55, 'ipsum', 730.48),
(6, 56, 'consequuntur', 825.05),
(7, 57, 'corrupti', 380.50),
(8, 58, 'vero', 166.17),
(9, 59, 'omnis', 593.92),
(10, 60, 'aut', 474.47),
(11, 61, 'doloribus', 895.10),
(12, 62, 'dolore', 589.92),
(13, 63, 'a', 213.81),
(14, 64, 'doloribus', 228.68),
(15, 65, 'doloremque', 864.16),
(16, 66, 'est', 587.56),
(17, 67, 'sunt', 469.67),
(18, 68, 'id', 154.83),
(19, 69, 'qui', 306.12),
(20, 70, 'amet', 740.07),
(21, 71, 'debitis', 310.07),
(22, 72, 'molestias', 872.65),
(23, 73, 'non', 93.36),
(24, 74, 'debitis', 587.14),
(25, 75, 'non', 758.47),
(26, 76, 'dolore', 880.43),
(27, 77, 'eius', 51.19),
(28, 78, 'fugiat', 597.76),
(29, 79, 'omnis', 517.80),
(30, 80, 'in', 148.93),
(31, 81, 'voluptates', 759.45),
(32, 82, 'aut', 678.45),
(33, 83, 'aut', 695.97),
(34, 84, 'qui', 365.09),
(35, 85, 'quia', 215.75),
(36, 86, 'explicabo', 511.48),
(37, 87, 'perferendis', 369.36),
(38, 88, 'illo', 559.21),
(39, 89, 'officia', 532.35),
(40, 90, 'unde', 609.87),
(41, 91, 'laboriosam', 237.32),
(42, 92, 'libero', 472.59),
(43, 93, 'in', 960.85),
(44, 94, 'iure', 242.58),
(45, 95, 'qui', 594.32),
(46, 96, 'culpa', 536.52),
(47, 97, 'consequuntur', 414.92),
(48, 98, 'et', 976.68),
(49, 99, 'qui', 885.04),
(50, 100, 'delectus', 621.44);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `room_category_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `num_adults` int(11) NOT NULL,
  `num_children` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `room_category_id`, `customer_id`, `start_date`, `end_date`, `num_adults`, `num_children`, `created_at`, `updated_at`) VALUES
(1, 35, 11, '2018-08-11 20:36:01', '2018-08-18 20:36:01', 2, 1, NULL, NULL),
(2, 41, 11, '2018-12-30 13:17:21', '2019-01-06 13:17:21', 1, 1, NULL, NULL),
(3, 42, 11, '2019-01-03 09:33:35', '2019-01-10 09:33:35', 2, 1, NULL, NULL),
(4, 1, 11, '2018-03-14 18:42:37', '2018-03-21 18:42:37', 4, 1, NULL, NULL),
(5, 39, 11, '2018-03-11 00:03:03', '2018-03-18 00:03:03', 1, 2, NULL, NULL),
(6, 36, 11, '2018-08-18 13:47:32', '2018-08-25 13:47:32', 1, 0, NULL, NULL),
(7, 41, 11, '2018-12-01 00:27:18', '2018-12-08 00:27:18', 2, 1, NULL, NULL),
(8, 4, 11, '2018-05-30 15:57:06', '2018-06-06 15:57:06', 4, 0, NULL, NULL),
(9, 38, 11, '2018-09-13 16:38:24', '2018-09-20 16:38:24', 1, 2, NULL, NULL),
(10, 37, 11, '2018-04-28 02:57:31', '2018-05-05 02:57:31', 3, 2, NULL, NULL),
(11, 45, 11, '2018-07-05 10:00:07', '2018-07-12 10:00:07', 2, 0, NULL, NULL),
(12, 28, 11, '2018-12-29 09:46:32', '2019-01-05 09:46:32', 3, 2, NULL, NULL),
(13, 48, 11, '2019-01-07 19:50:28', '2019-01-14 19:50:28', 2, 0, NULL, NULL),
(14, 27, 11, '2019-01-24 19:28:33', '2019-01-31 19:28:33', 2, 0, NULL, NULL),
(15, 35, 11, '2018-03-16 05:07:29', '2018-03-23 05:07:29', 1, 1, NULL, NULL),
(16, 7, 11, '2018-05-14 18:07:20', '2018-05-21 18:07:20', 4, 0, NULL, NULL),
(17, 12, 11, '2018-04-12 16:17:38', '2018-04-19 16:17:38', 1, 0, NULL, NULL),
(18, 1, 11, '2018-11-12 02:30:22', '2018-11-19 02:30:22', 1, 0, NULL, NULL),
(19, 32, 11, '2018-10-10 15:59:52', '2018-10-17 15:59:52', 1, 0, NULL, NULL),
(20, 9, 11, '2018-11-30 10:35:07', '2018-12-07 10:35:07', 4, 1, NULL, NULL),
(21, 20, 11, '2018-09-25 20:08:07', '2018-10-02 20:08:07', 3, 2, NULL, NULL),
(22, 49, 11, '2018-06-04 03:59:05', '2018-06-11 03:59:05', 3, 1, NULL, NULL),
(23, 42, 11, '2019-02-16 12:10:14', '2019-02-23 12:10:14', 2, 2, NULL, NULL),
(24, 26, 11, '2018-02-27 18:44:12', '2018-03-06 18:44:12', 2, 1, NULL, NULL),
(25, 22, 11, '2018-02-20 08:12:16', '2018-02-27 08:12:16', 3, 2, NULL, NULL),
(26, 8, 11, '2018-06-15 10:05:10', '2018-06-22 10:05:10', 3, 1, NULL, NULL),
(27, 34, 11, '2018-05-29 03:27:47', '2018-06-05 03:27:47', 4, 0, NULL, NULL),
(28, 28, 11, '2018-03-26 09:31:22', '2018-04-02 09:31:22', 1, 0, NULL, NULL),
(29, 10, 11, '2018-07-26 00:12:20', '2018-08-02 00:12:20', 1, 2, NULL, NULL),
(30, 45, 11, '2018-08-27 09:31:59', '2018-09-03 09:31:59', 1, 1, NULL, NULL),
(31, 31, 11, '2018-09-30 22:50:06', '2018-10-07 22:50:06', 1, 2, NULL, NULL),
(32, 21, 11, '2018-07-07 10:31:06', '2018-07-14 10:31:06', 3, 0, NULL, NULL),
(33, 29, 11, '2018-11-30 02:04:15', '2018-12-07 02:04:15', 1, 1, NULL, NULL),
(34, 45, 11, '2018-09-08 11:54:48', '2018-09-15 11:54:48', 3, 2, NULL, NULL),
(35, 36, 11, '2018-01-22 02:15:29', '2018-01-29 02:15:29', 1, 1, NULL, NULL),
(36, 47, 11, '2018-04-13 22:15:57', '2018-04-20 22:15:57', 1, 2, NULL, NULL),
(37, 35, 11, '2018-07-08 16:11:07', '2018-07-15 16:11:07', 2, 2, NULL, NULL),
(38, 14, 11, '2018-02-12 05:43:20', '2018-02-19 05:43:20', 3, 0, NULL, NULL),
(39, 13, 11, '2018-01-29 01:10:29', '2018-02-05 01:10:29', 3, 1, NULL, NULL),
(40, 14, 11, '2018-12-26 09:01:46', '2019-01-02 09:01:46', 3, 1, NULL, NULL),
(41, 50, 11, '2018-11-02 21:31:12', '2018-11-09 21:31:12', 4, 2, NULL, NULL),
(42, 46, 11, '2018-09-29 11:04:59', '2018-10-06 11:04:59', 3, 1, NULL, NULL),
(43, 35, 11, '2018-06-25 22:19:12', '2018-07-02 22:19:12', 4, 1, NULL, NULL),
(44, 46, 11, '2018-05-16 23:54:27', '2018-05-23 23:54:27', 2, 0, NULL, NULL),
(45, 26, 11, '2018-04-21 20:20:49', '2018-04-28 20:20:49', 3, 0, NULL, NULL),
(46, 2, 11, '2018-11-02 08:49:36', '2018-11-09 08:49:36', 3, 0, NULL, NULL),
(47, 6, 11, '2018-09-13 13:35:16', '2018-09-20 13:35:16', 2, 1, NULL, NULL),
(48, 29, 11, '2019-02-14 08:06:03', '2019-02-21 08:06:03', 2, 1, NULL, NULL),
(49, 16, 11, '2018-07-19 01:43:38', '2018-07-26 01:43:38', 2, 0, NULL, NULL),
(50, 19, 11, '2018-05-23 04:59:14', '2018-05-30 04:59:14', 1, 2, NULL, NULL),
(51, 32, 11, '2018-07-17 21:05:15', '2018-07-24 21:05:15', 1, 0, NULL, NULL),
(52, 22, 11, '2018-02-10 06:07:34', '2018-02-17 06:07:34', 1, 2, NULL, NULL),
(53, 32, 11, '2019-01-28 19:40:11', '2019-02-04 19:40:11', 2, 1, NULL, NULL),
(54, 1, 11, '2018-11-22 09:29:42', '2018-11-29 09:29:42', 4, 0, NULL, NULL),
(55, 16, 11, '2018-10-10 16:11:33', '2018-10-17 16:11:33', 1, 1, NULL, NULL),
(56, 16, 11, '2018-08-05 17:09:28', '2018-08-12 17:09:28', 2, 2, NULL, NULL),
(57, 35, 11, '2018-03-01 05:03:11', '2018-03-08 05:03:11', 3, 1, NULL, NULL),
(58, 23, 11, '2019-01-29 20:22:07', '2019-02-05 20:22:07', 3, 1, NULL, NULL),
(59, 20, 11, '2018-08-24 12:31:10', '2018-08-31 12:31:10', 4, 1, NULL, NULL),
(60, 5, 11, '2019-02-14 23:43:30', '2019-02-21 23:43:30', 4, 0, NULL, NULL),
(61, 39, 11, '2018-10-30 14:21:59', '2018-11-06 14:21:59', 1, 1, NULL, NULL),
(62, 30, 11, '2018-07-19 09:54:43', '2018-07-26 09:54:43', 4, 2, NULL, NULL),
(63, 32, 11, '2018-08-15 06:11:25', '2018-08-22 06:11:25', 4, 1, NULL, NULL),
(64, 49, 11, '2018-03-01 17:08:40', '2018-03-08 17:08:40', 2, 2, NULL, NULL),
(65, 17, 11, '2019-02-10 16:51:12', '2019-02-17 16:51:12', 3, 1, NULL, NULL),
(66, 41, 11, '2018-04-03 00:19:42', '2018-04-10 00:19:42', 2, 0, NULL, NULL),
(67, 26, 11, '2018-02-07 17:22:26', '2018-02-14 17:22:26', 3, 2, NULL, NULL),
(68, 3, 11, '2018-08-31 21:23:52', '2018-09-07 21:23:52', 2, 0, NULL, NULL),
(69, 28, 11, '2018-04-28 22:41:42', '2018-05-05 22:41:42', 4, 0, NULL, NULL),
(70, 46, 11, '2018-03-21 17:02:38', '2018-03-28 17:02:38', 1, 1, NULL, NULL),
(71, 33, 11, '2018-05-31 03:26:45', '2018-06-07 03:26:45', 4, 0, NULL, NULL),
(72, 20, 11, '2018-04-09 01:28:36', '2018-04-16 01:28:36', 2, 0, NULL, NULL),
(73, 32, 11, '2018-08-20 03:18:27', '2018-08-27 03:18:27', 3, 2, NULL, NULL),
(74, 19, 11, '2018-04-10 22:45:45', '2018-04-17 22:45:45', 4, 1, NULL, NULL),
(75, 2, 11, '2018-11-05 07:36:27', '2018-11-12 07:36:27', 4, 1, NULL, NULL),
(76, 14, 11, '2018-06-15 21:34:46', '2018-06-22 21:34:46', 2, 1, NULL, NULL),
(77, 9, 11, '2018-08-28 18:50:28', '2018-09-04 18:50:28', 1, 0, NULL, NULL),
(78, 29, 11, '2018-04-02 08:10:19', '2018-04-09 08:10:19', 1, 0, NULL, NULL),
(79, 15, 11, '2018-06-08 17:21:36', '2018-06-15 17:21:36', 4, 2, NULL, NULL),
(80, 3, 11, '2018-09-02 16:21:43', '2018-09-09 16:21:43', 1, 2, NULL, NULL),
(81, 30, 11, '2018-10-19 22:32:35', '2018-10-26 22:32:35', 2, 2, NULL, NULL),
(82, 50, 11, '2018-08-05 16:11:52', '2018-08-12 16:11:52', 2, 0, NULL, NULL),
(83, 23, 11, '2018-11-30 22:09:58', '2018-12-07 22:09:58', 1, 2, NULL, NULL),
(84, 44, 11, '2019-02-12 02:20:42', '2019-02-19 02:20:42', 3, 2, NULL, NULL),
(85, 29, 11, '2019-01-01 05:16:48', '2019-01-08 05:16:48', 4, 2, NULL, NULL),
(86, 22, 11, '2018-07-23 06:53:36', '2018-07-30 06:53:36', 2, 2, NULL, NULL),
(87, 1, 11, '2018-09-06 22:38:14', '2018-09-13 22:38:14', 1, 2, NULL, NULL),
(88, 32, 11, '2018-04-27 09:34:26', '2018-05-04 09:34:26', 1, 2, NULL, NULL),
(89, 3, 11, '2019-01-13 21:58:58', '2019-01-20 21:58:58', 4, 0, NULL, NULL),
(90, 13, 11, '2018-04-28 02:48:43', '2018-05-05 02:48:43', 3, 0, NULL, NULL),
(91, 44, 11, '2018-08-31 03:53:02', '2018-09-07 03:53:02', 1, 1, NULL, NULL),
(92, 3, 11, '2018-01-31 10:45:27', '2018-02-07 10:45:27', 4, 2, NULL, NULL),
(93, 23, 11, '2018-03-24 09:00:01', '2018-03-31 09:00:01', 3, 1, NULL, NULL),
(94, 43, 11, '2018-03-03 12:02:22', '2018-03-10 12:02:22', 3, 1, NULL, NULL),
(95, 35, 11, '2018-11-11 19:14:47', '2018-11-18 19:14:47', 3, 1, NULL, NULL),
(96, 5, 11, '2018-12-07 02:54:46', '2018-12-14 02:54:46', 2, 1, NULL, NULL),
(97, 2, 11, '2018-04-22 20:15:41', '2018-04-29 20:15:41', 3, 1, NULL, NULL),
(98, 11, 11, '2018-04-03 12:49:46', '2018-04-10 12:49:46', 1, 1, NULL, NULL),
(99, 37, 11, '2018-09-24 18:29:06', '2018-10-01 18:29:06', 3, 0, NULL, NULL),
(100, 8, 11, '2018-07-28 14:23:00', '2018-08-04 14:23:00', 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `room_category_id` int(10) UNSIGNED NOT NULL,
  `max_adults` int(11) NOT NULL,
  `max_children` int(11) NOT NULL,
  `check_in_date` datetime NOT NULL,
  `check_out_date` datetime NOT NULL,
  `is_empty` tinyint(1) NOT NULL,
  `floor_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_selling_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_number`, `reservation_id`, `room_category_id`, `max_adults`, `max_children`, `check_in_date`, `check_out_date`, `is_empty`, `floor_no`, `room_selling_point`, `created_at`, `updated_at`) VALUES
('ab', 55, 30, 1, 1, '2018-05-28 09:36:12', '2018-06-04 09:36:12', 1, '1', 'Consequatur pariatur doloremque omnis rem quaerat eligendi.', NULL, NULL),
('accusantium', 98, 10, 2, 2, '2018-09-29 15:24:33', '2018-10-06 15:24:33', 0, '1', 'Quia error rerum ut minima officia.', NULL, NULL),
('ad', 38, 17, 2, 2, '2018-05-29 19:02:12', '2018-06-05 19:02:12', 0, '1', 'Quod est animi enim vitae quis.', NULL, NULL),
('amet', 3, 46, 2, 2, '2018-06-08 22:03:04', '2018-06-15 22:03:04', 1, '5', 'Voluptatem unde temporibus occaecati excepturi adipisci amet sed.', NULL, NULL),
('asperiores', 83, 29, 3, 1, '2018-04-13 07:19:08', '2018-04-20 07:19:08', 0, '3', 'Recusandae ut autem ad maiores quod.', NULL, NULL),
('at', 99, 27, 1, 2, '2018-06-16 19:59:20', '2018-06-23 19:59:20', 0, '2', 'Eius saepe consectetur doloremque optio autem.', NULL, NULL),
('aut', 22, 21, 4, 1, '2018-09-25 12:03:13', '2018-10-02 12:03:13', 0, '4', 'Sit natus unde cupiditate aut ea voluptatem mollitia rerum.', NULL, NULL),
('beatae', 75, 27, 1, 1, '2018-11-19 01:59:38', '2018-11-26 01:59:38', 1, '3', 'Voluptatem et excepturi voluptatem ea velit.', NULL, NULL),
('deserunt', 54, 33, 3, 1, '2019-02-06 03:11:00', '2019-02-13 03:11:00', 1, '3', 'Est repellendus ducimus adipisci eius modi enim molestiae id.', NULL, NULL),
('dolor', 68, 36, 1, 0, '2018-05-30 23:37:23', '2018-06-06 23:37:23', 0, '4', 'Dolorem dolorum nulla unde libero cum impedit.', NULL, NULL),
('dolorem', 52, 3, 1, 0, '2018-10-27 13:18:39', '2018-11-03 13:18:39', 0, '5', 'Qui a eum quos ad ut libero est eaque.', NULL, NULL),
('doloremque', 65, 40, 1, 0, '2018-09-09 01:26:18', '2018-09-16 01:26:18', 0, '1', 'Et non occaecati totam quae.', NULL, NULL),
('dolores', 91, 50, 1, 0, '2018-11-08 13:27:50', '2018-11-15 13:27:50', 0, '5', 'Nihil ut blanditiis similique autem qui qui.', NULL, NULL),
('ea', 44, 9, 3, 1, '2018-08-21 17:28:08', '2018-08-28 17:28:08', 0, '3', 'Vitae ipsum non facilis quia quae quasi.', NULL, NULL),
('enim', 87, 38, 2, 2, '2018-02-25 22:11:27', '2018-03-04 22:11:27', 0, '2', 'Tempore quis amet incidunt voluptate.', NULL, NULL),
('eos', 32, 26, 1, 1, '2018-02-17 08:12:24', '2018-02-24 08:12:24', 0, '1', 'Cupiditate quam ea praesentium.', NULL, NULL),
('esse', 24, 49, 1, 1, '2018-09-10 14:52:01', '2018-09-17 14:52:01', 1, '3', 'Occaecati quas qui inventore aliquam et quidem.', NULL, NULL),
('est', 36, 24, 2, 1, '2018-12-29 07:51:02', '2019-01-05 07:51:02', 1, '1', 'Et voluptatum mollitia enim.', NULL, NULL),
('et', 95, 25, 1, 1, '2018-10-15 11:54:03', '2018-10-22 11:54:03', 0, '1', 'Laudantium voluptas ut corrupti.', NULL, NULL),
('eum', 47, 29, 4, 0, '2018-02-09 09:08:40', '2018-02-16 09:08:40', 1, '2', 'Soluta aut quia pariatur in laboriosam aut consequatur cupiditate.', NULL, NULL),
('ex', 42, 38, 3, 2, '2018-02-27 10:57:50', '2018-03-06 10:57:50', 1, '1', 'Quas rerum at praesentium vero omnis asperiores nobis.', NULL, NULL),
('explicabo', 10, 45, 4, 1, '2018-05-14 09:04:21', '2018-05-21 09:04:21', 0, '4', 'Suscipit ea aliquam non beatae cupiditate.', NULL, NULL),
('hic', 27, 36, 4, 1, '2018-12-16 04:10:24', '2018-12-23 04:10:24', 0, '3', 'Adipisci autem doloremque est doloribus ut qui et.', NULL, NULL),
('id', 15, 42, 3, 2, '2018-10-19 17:09:16', '2018-10-26 17:09:16', 1, '5', 'Ea excepturi enim qui vitae commodi.', NULL, NULL),
('incidunt', 68, 9, 1, 2, '2018-05-24 09:48:24', '2018-05-31 09:48:24', 0, '4', 'Aut dolores similique et tenetur velit dolorem qui.', NULL, NULL),
('ipsum', 7, 48, 4, 0, '2018-09-13 00:03:45', '2018-09-20 00:03:45', 1, '3', 'Eaque hic voluptas consectetur fugit eius sed.', NULL, NULL),
('iusto', 32, 22, 3, 2, '2018-12-26 14:25:22', '2019-01-02 14:25:22', 0, '1', 'Asperiores aut optio consequatur eos rerum consequatur.', NULL, NULL),
('minus', 54, 11, 4, 2, '2018-06-14 12:30:19', '2018-06-21 12:30:19', 1, '4', 'Eveniet repellat quod architecto perferendis nesciunt accusamus.', NULL, NULL),
('mollitia', 37, 2, 1, 2, '2018-05-13 02:57:05', '2018-05-20 02:57:05', 1, '1', 'Inventore blanditiis eius commodi impedit.', NULL, NULL),
('nam', 75, 46, 3, 1, '2018-10-17 13:55:50', '2018-10-24 13:55:50', 1, '3', 'Aut sed molestiae suscipit harum recusandae.', NULL, NULL),
('necessitatibus', 17, 48, 1, 0, '2018-09-06 13:11:40', '2018-09-13 13:11:40', 0, '3', 'Odio illum magnam eaque quas molestiae libero.', NULL, NULL),
('nihil', 4, 6, 2, 0, '2018-11-26 23:45:02', '2018-12-03 23:45:02', 0, '3', 'Quia minus optio repellendus possimus itaque nisi corporis.', NULL, NULL),
('nisi', 18, 16, 1, 2, '2018-05-13 18:30:58', '2018-05-20 18:30:58', 1, '2', 'Ab est quasi facere magnam omnis non.', NULL, NULL),
('officia', 31, 32, 4, 1, '2018-08-03 00:41:01', '2018-08-10 00:41:01', 1, '2', 'Non nobis ut accusantium ab eum odio saepe.', NULL, NULL),
('omnis', 19, 17, 1, 2, '2018-08-01 10:06:46', '2018-08-08 10:06:46', 0, '1', 'Veritatis vitae repellat neque nemo at quidem.', NULL, NULL),
('optio', 10, 16, 4, 0, '2019-01-03 02:24:42', '2019-01-10 02:24:42', 1, '5', 'Eligendi fugit hic non.', NULL, NULL),
('perferendis', 41, 43, 3, 1, '2018-10-24 16:28:17', '2018-10-31 16:28:17', 0, '3', 'Nulla quia est harum sunt.', NULL, NULL),
('perspiciatis', 11, 1, 1, 2, '2018-10-01 23:52:01', '2018-10-08 23:52:01', 0, '3', 'Repellendus sint iure ducimus iusto et.', NULL, NULL),
('quae', 76, 46, 4, 0, '2018-07-06 07:47:38', '2018-07-13 07:47:38', 1, '3', 'Aut fugiat ut eum nihil.', NULL, NULL),
('quasi', 72, 8, 3, 0, '2018-09-17 05:38:36', '2018-09-24 05:38:36', 1, '3', 'Tenetur et dolorum aut quod exercitationem.', NULL, NULL),
('quia', 87, 17, 3, 2, '2018-10-21 14:08:42', '2018-10-28 14:08:42', 1, '1', 'Vel et a occaecati occaecati incidunt.', NULL, NULL),
('quibusdam', 41, 25, 1, 2, '2018-09-05 19:58:54', '2018-09-12 19:58:54', 0, '2', 'Ipsum eligendi ea quia modi.', NULL, NULL),
('quos', 38, 1, 2, 0, '2018-02-22 08:27:15', '2018-03-01 08:27:15', 0, '3', 'Non sed qui eius non.', NULL, NULL),
('reprehenderit', 22, 16, 2, 0, '2018-04-28 19:10:06', '2018-05-05 19:10:06', 0, '4', 'Quod quaerat pariatur et.', NULL, NULL),
('saepe', 84, 13, 4, 2, '2018-07-28 04:59:41', '2018-08-04 04:59:41', 1, '1', 'Qui porro quis fugiat mollitia aut.', NULL, NULL),
('unde', 1, 28, 1, 0, '2018-05-03 07:17:14', '2018-05-10 07:17:14', 0, '5', 'Cumque consequatur rem nesciunt iure.', NULL, NULL),
('ut', 81, 44, 1, 1, '2018-05-19 20:08:15', '2018-05-26 20:08:15', 1, '2', 'Dolorum excepturi quae qui officiis et.', NULL, NULL),
('vitae', 28, 47, 3, 0, '2018-10-09 11:12:25', '2018-10-16 11:12:25', 0, '4', 'Enim ad modi accusantium ducimus quia aut.', NULL, NULL),
('voluptate', 67, 42, 1, 0, '2018-10-31 17:05:46', '2018-11-07 17:05:46', 1, '3', 'Impedit voluptatem perferendis sint minima quis.', NULL, NULL),
('voluptatem', 73, 48, 1, 2, '2018-07-09 20:36:35', '2018-07-16 20:36:35', 0, '2', 'Sunt odio voluptatem delectus corporis est amet.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_categories`
--

CREATE TABLE `room_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `room_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_categories`
--

INSERT INTO `room_categories` (`category_id`, `room_name`, `category_desc`) VALUES
(1, 'et', 'Velit soluta praesentium omnis id.'),
(2, 'inventore', 'Aperiam et totam doloribus repellendus dolor.'),
(3, 'exercitationem', 'Qui sapiente eligendi et ut qui et accusamus molestiae.'),
(4, 'magnam', 'Autem maiores et omnis.'),
(5, 'ut', 'Facilis aliquid eum pariatur impedit quia.'),
(6, 'accusamus', 'Quas nobis quae exercitationem voluptatem.'),
(7, 'omnis', 'Cum nulla minus debitis quam vitae explicabo autem.'),
(8, 'consequuntur', 'Omnis ut perspiciatis consectetur explicabo ullam nobis.'),
(9, 'fugiat', 'Repudiandae sed aut voluptas.'),
(10, 'quis', 'Illo quae sequi tenetur nobis.'),
(11, 'sit', 'Doloremque enim labore at nostrum consequatur nihil.'),
(12, 'incidunt', 'Excepturi itaque numquam est a odio nesciunt.'),
(13, 'rerum', 'Quisquam et id et facilis unde.'),
(14, 'consequatur', 'Qui necessitatibus et qui sit a.'),
(15, 'totam', 'Nobis vitae delectus aliquid cupiditate vel.'),
(16, 'aperiam', 'Quaerat quaerat et et quasi aliquam ratione.'),
(17, 'molestiae', 'Blanditiis quia ad omnis perspiciatis.'),
(18, 'sed', 'Voluptatibus totam quae ab ex voluptate nulla.'),
(19, 'eum', 'Voluptas iusto distinctio et ab esse.'),
(20, 'similique', 'Voluptatem odit qui quod ut ea.'),
(21, 'odio', 'Alias excepturi reprehenderit nisi ex deserunt aliquam.'),
(22, 'et', 'Consectetur ut delectus officia necessitatibus voluptatem exercitationem.'),
(23, 'unde', 'Quis voluptatem adipisci nobis laborum expedita ea assumenda.'),
(24, 'accusamus', 'Est consectetur deserunt sed quam perferendis eligendi.'),
(25, 'reiciendis', 'Eum suscipit voluptas atque modi voluptate iusto architecto.'),
(26, 'quia', 'Esse nihil in id repudiandae sit cupiditate.'),
(27, 'architecto', 'Dolorem harum minus mollitia nisi iste a voluptatibus.'),
(28, 'nihil', 'Eaque ratione et perspiciatis voluptas.'),
(29, 'eius', 'Aspernatur alias sed occaecati et quam.'),
(30, 'vel', 'Animi odio sapiente vitae qui ipsum nulla.'),
(31, 'aperiam', 'Explicabo voluptatem sunt rerum quae distinctio quaerat voluptas.'),
(32, 'ipsum', 'Repudiandae eius omnis cupiditate veritatis aut.'),
(33, 'aut', 'Minima quia et atque.'),
(34, 'animi', 'Nostrum sit quibusdam et accusantium est nisi explicabo perferendis.'),
(35, 'ipsam', 'Repellat culpa atque quam est dolorem.'),
(36, 'commodi', 'Illum debitis voluptatem vitae autem qui nesciunt soluta sunt.'),
(37, 'ducimus', 'Consequuntur fugiat tenetur molestiae alias voluptatem.'),
(38, 'ad', 'Quia omnis itaque maxime beatae accusantium iste.'),
(39, 'est', 'In est consequatur ducimus consequatur facilis aspernatur ad.'),
(40, 'illum', 'Ut tempora commodi vitae.'),
(41, 'in', 'Rem dolores in eligendi unde deleniti consequatur.'),
(42, 'aspernatur', 'Blanditiis voluptas dolor laudantium veniam mollitia veritatis quod.'),
(43, 'molestiae', 'Inventore et unde sequi.'),
(44, 'excepturi', 'Perferendis ut neque sunt illo aut sed quasi.'),
(45, 'quidem', 'Qui sunt et ut pariatur consequatur.'),
(46, 'ad', 'Labore nobis quis dolore omnis ea architecto.'),
(47, 'aut', 'Eum et quia ex iste cum placeat tenetur.'),
(48, 'eaque', 'Debitis dolore nemo cumque consequatur iste repudiandae.'),
(49, 'blanditiis', 'Itaque et in rerum accusantium illum corrupti.'),
(50, 'est', 'Amet rerum fugiat et autem.'),
(51, 'pariatur', 'Modi enim velit voluptas sint perspiciatis blanditiis autem iure.'),
(52, 'et', 'Eos officia voluptatem est expedita nulla.'),
(53, 'harum', 'Consequatur est earum esse eum consequatur fuga.'),
(54, 'atque', 'Id cumque fuga optio qui laboriosam.'),
(55, 'ad', 'Sed et aliquid at sit recusandae consectetur.'),
(56, 'natus', 'Qui aut praesentium fuga omnis.'),
(57, 'ut', 'Voluptatem voluptas quia tempore ducimus.'),
(58, 'accusamus', 'Quaerat dolorem eum placeat accusamus nesciunt doloribus.'),
(59, 'qui', 'Nostrum odit et qui commodi impedit ipsam tempore qui.'),
(60, 'ea', 'Rem odio non voluptatem necessitatibus omnis.'),
(61, 'facere', 'Laboriosam ipsam qui dolor harum ut aut asperiores.'),
(62, 'quidem', 'Reprehenderit ullam ut beatae dolores accusamus.'),
(63, 'sapiente', 'Aspernatur quaerat sint cum ut cumque.'),
(64, 'vitae', 'Asperiores itaque provident sit aut atque nostrum.'),
(65, 'adipisci', 'Neque ut rerum sit nihil ut.'),
(66, 'quasi', 'Mollitia cupiditate maiores delectus velit veritatis.'),
(67, 'iste', 'Veritatis iste ea hic non aspernatur accusantium.'),
(68, 'id', 'Ut ut nihil quasi hic earum pariatur.'),
(69, 'nisi', 'Aut perspiciatis sint modi.'),
(70, 'voluptates', 'Voluptas dignissimos hic eligendi hic voluptatem voluptatum.'),
(71, 'velit', 'At ducimus expedita blanditiis neque quis cumque.'),
(72, 'rem', 'Labore eum architecto molestiae quas qui.'),
(73, 'aut', 'Et sint dignissimos qui qui cumque sint.'),
(74, 'qui', 'Quo et sit qui aliquid aut.'),
(75, 'et', 'Deserunt adipisci similique ea adipisci cupiditate qui tempora architecto.'),
(76, 'enim', 'Sequi qui possimus reiciendis placeat.'),
(77, 'quisquam', 'Magnam consequuntur cum cupiditate quisquam mollitia a sit.'),
(78, 'quam', 'Quaerat repellat ut dolor sequi similique quod.'),
(79, 'consectetur', 'Quasi dolorem aspernatur aut veniam beatae nisi.'),
(80, 'eveniet', 'Quaerat laboriosam et ipsum non.'),
(81, 'laudantium', 'Eius quod explicabo tempora ut et.'),
(82, 'numquam', 'Esse possimus quas tempore eos minus molestiae omnis.'),
(83, 'deserunt', 'Nisi et non quo nesciunt aliquid omnis adipisci.'),
(84, 'laudantium', 'Fugiat eveniet aut et ipsum.'),
(85, 'cupiditate', 'Nisi hic est sed sunt aspernatur non.'),
(86, 'modi', 'Pariatur et cum quaerat corrupti accusamus expedita.'),
(87, 'veritatis', 'Vitae laudantium natus cupiditate.'),
(88, 'dolorem', 'Earum in ducimus doloremque vero hic.'),
(89, 'harum', 'Nemo dolore optio alias omnis qui delectus.'),
(90, 'molestias', 'Voluptas magnam consequatur adipisci quo.'),
(91, 'debitis', 'Eaque velit laborum quasi quibusdam sed voluptas unde.'),
(92, 'accusamus', 'Aut labore adipisci nostrum omnis.'),
(93, 'a', 'Qui quia aut autem voluptatibus quis quia voluptatibus.'),
(94, 'quis', 'Totam aut accusantium libero.'),
(95, 'aspernatur', 'Necessitatibus placeat quae quaerat ipsum tempora fugiat.'),
(96, 'inventore', 'Voluptatem et vel deserunt aspernatur corporis est voluptate pariatur.'),
(97, 'corporis', 'Suscipit itaque eos expedita rem molestiae aut atque quia.'),
(98, 'omnis', 'Optio amet qui tempora debitis.'),
(99, 'dolores', 'Impedit impedit omnis consequuntur qui laudantium.'),
(100, 'ut', 'Qui explicabo doloremque at illum.');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(10) UNSIGNED NOT NULL,
  `reservation_id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_price` double(7,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `reservation_id`, `service_name`, `service_type`, `service_desc`, `service_price`, `created_at`, `updated_at`) VALUES
(1, 90, 'Luxury', 'Gym', 'Provident harum dolores numquam quidem nihil illum eius rerum.', 217.43, NULL, NULL),
(2, 87, 'Luxury', 'Gym', 'Cupiditate aut voluptatibus explicabo distinctio sint.', 318.78, NULL, NULL),
(3, 18, 'Luxury', 'Spa', 'Eos voluptatem rerum temporibus autem nobis.', 174.64, NULL, NULL),
(4, 87, 'Basic', 'Gym', 'Nihil accusamus corrupti ut culpa.', 235.96, NULL, NULL),
(5, 98, 'Basic', 'Spa', 'Sequi sequi architecto consequatur consequatur voluptatem maiores voluptas.', 168.01, NULL, NULL),
(6, 9, 'Basic', 'Spa', 'Non velit quae beatae maxime odio.', 330.42, NULL, NULL),
(7, 22, 'Basic', 'Cinema', 'Doloremque est quia cum consequatur.', 273.45, NULL, NULL),
(8, 60, 'Basic', 'Gym', 'Praesentium soluta ipsum et laboriosam perferendis.', 116.35, NULL, NULL),
(9, 58, 'Basic', 'Room Service', 'Eos dicta at aut et qui qui qui.', 273.49, NULL, NULL),
(10, 98, 'Luxury', 'Room Service', 'Corporis et et aliquid vel.', 80.61, NULL, NULL),
(11, 74, 'Basic', 'Cinema', 'Ipsum laudantium tempora fugiat.', 257.59, NULL, NULL),
(12, 53, 'Luxury', 'Spa', 'Omnis aspernatur qui laudantium.', 376.22, NULL, NULL),
(13, 5, 'Luxury', 'Room Service', 'Est tempore voluptatum commodi dolorem nulla officiis maiores quo.', 138.11, NULL, NULL),
(14, 95, 'Basic', 'Cinema', 'Vel et qui numquam saepe et.', 53.40, NULL, NULL),
(15, 63, 'Luxury', 'Cinema', 'Aperiam molestiae quia est ut praesentium sed.', 388.67, NULL, NULL),
(16, 23, 'Basic', 'Gym', 'Est qui et dicta et suscipit in tempore.', 148.57, NULL, NULL),
(17, 13, 'Luxury', 'Gym', 'Libero laudantium dicta id autem.', 100.52, NULL, NULL),
(18, 65, 'Luxury', 'Cinema', 'Commodi magni maiores iure veniam officia non.', 313.16, NULL, NULL),
(19, 76, 'Luxury', 'Gym', 'Qui aut sint repellat minus unde placeat.', 348.62, NULL, NULL),
(20, 55, 'Luxury', 'Gym', 'Non et enim sit qui nihil vel quae sed.', 341.37, NULL, NULL),
(21, 54, 'Basic', 'Cinema', 'Quia perferendis voluptates aut repellat.', 334.66, NULL, NULL),
(22, 24, 'Luxury', 'Cinema', 'Quasi et eum libero numquam et optio et.', 351.88, NULL, NULL),
(23, 79, 'Basic', 'Cinema', 'In ipsam quod quos numquam.', 13.24, NULL, NULL),
(24, 63, 'Luxury', 'Gym', 'Sed iure enim animi animi voluptatem laboriosam ut recusandae.', 183.89, NULL, NULL),
(25, 69, 'Luxury', 'Room Service', 'Hic quo recusandae veniam consequuntur velit saepe neque fugit.', 123.85, NULL, NULL),
(26, 14, 'Luxury', 'Spa', 'Ad ipsum consequuntur est aliquam pariatur excepturi veniam.', 164.49, NULL, NULL),
(27, 53, 'Luxury', 'Gym', 'Harum eum dolor molestiae qui perferendis voluptatem quaerat.', 254.94, NULL, NULL),
(28, 59, 'Luxury', 'Spa', 'Ex ipsa atque voluptatem voluptatem et numquam.', 266.79, NULL, NULL),
(29, 46, 'Luxury', 'Gym', 'Laudantium doloribus accusamus est rerum sunt.', 372.32, NULL, NULL),
(30, 53, 'Luxury', 'Gym', 'Voluptatibus est eos saepe dolorum.', 172.64, NULL, NULL),
(31, 70, 'Basic', 'Cinema', 'Aut voluptas quo voluptate similique.', 269.54, NULL, NULL),
(32, 37, 'Basic', 'Cinema', 'Exercitationem ipsum blanditiis ut.', 28.87, NULL, NULL),
(33, 27, 'Basic', 'Room Service', 'Deleniti suscipit animi cumque.', 23.27, NULL, NULL),
(34, 36, 'Basic', 'Cinema', 'Labore fugiat eligendi voluptatem ipsum sequi optio placeat.', 142.27, NULL, NULL),
(35, 95, 'Luxury', 'Room Service', 'Et id nihil omnis impedit voluptate.', 329.83, NULL, NULL),
(36, 29, 'Luxury', 'Room Service', 'Voluptates error in distinctio molestias voluptate voluptatum ullam culpa.', 128.00, NULL, NULL),
(37, 57, 'Basic', 'Spa', 'Saepe vel molestiae rerum.', 234.87, NULL, NULL),
(38, 100, 'Luxury', 'Room Service', 'Aut consequatur eligendi et aut.', 360.00, NULL, NULL),
(39, 82, 'Basic', 'Room Service', 'Ea officia et dolores voluptas voluptatem porro.', 239.00, NULL, NULL),
(40, 44, 'Basic', 'Room Service', 'Et non nostrum amet quo iste amet perferendis.', 53.61, NULL, NULL),
(41, 55, 'Basic', 'Cinema', 'Voluptate dolorem dolorem recusandae accusamus voluptate ipsam saepe optio.', 170.63, NULL, NULL),
(42, 97, 'Basic', 'Cinema', 'Et voluptatem velit ut aut cum eos.', 41.49, NULL, NULL),
(43, 43, 'Basic', 'Room Service', 'Tempore reprehenderit praesentium vel voluptas recusandae autem aspernatur ipsa.', 115.71, NULL, NULL),
(44, 35, 'Basic', 'Room Service', 'Dolores nisi aut nihil deleniti quisquam et corrupti.', 287.73, NULL, NULL),
(45, 59, 'Luxury', 'Cinema', 'Est velit repellendus ut esse quae hic.', 117.63, NULL, NULL),
(46, 61, 'Luxury', 'Cinema', 'Voluptas ipsa accusamus natus provident placeat quia aut.', 246.97, NULL, NULL),
(47, 70, 'Luxury', 'Gym', 'Explicabo voluptatem sint error voluptatibus ex in architecto.', 362.79, NULL, NULL),
(48, 35, 'Luxury', 'Spa', 'Fugiat et deleniti id quibusdam magni et iusto quaerat.', 297.98, NULL, NULL),
(49, 28, 'Luxury', 'Gym', 'Dolor quas voluptates id deleniti illo est quos.', 393.53, NULL, NULL),
(50, 64, 'Luxury', 'Cinema', 'Iste voluptas omnis inventore harum repellat tempore qui quidem.', 184.33, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rasheed Haley', 'kuhlman.magnus@example.com', '2019-01-19 08:50:59', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NORai97S7j', '2019-01-19 08:50:59', '2019-01-19 08:50:59'),
(2, 'Raegan Stokes', 'alvina06@example.org', '2019-01-19 08:50:59', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aqwecYDI0y', '2019-01-19 08:50:59', '2019-01-19 08:50:59'),
(3, 'Susie Goyette II', 'torp.bobby@example.org', '2019-01-19 08:50:59', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aN05jeWj8A', '2019-01-19 08:50:59', '2019-01-19 08:50:59'),
(4, 'Rodolfo Bernier PhD', 'fritsch.monroe@example.net', '2019-01-19 08:50:59', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kxYRlO4AoZ', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(5, 'Percival Jacobson I', 'lea77@example.org', '2019-01-19 08:50:59', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '5z43LNxu4n', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(6, 'Flavio Considine', 'dalton13@example.net', '2019-01-19 08:50:59', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YTXW0F4sax', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(7, 'Eriberto Murazik', 'daugherty.kiley@example.com', '2019-01-19 08:50:59', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lkwAjDhcAk', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(8, 'Adrien Mayer', 'bernadette.berge@example.com', '2019-01-19 08:50:59', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ESz3C9ePMs', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(9, 'Mr. Rudolph McClure', 'vkerluke@example.org', '2019-01-19 08:50:59', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0dH7u1JR22', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(10, 'Prof. Ova Harvey', 'nigel83@example.org', '2019-01-19 08:50:59', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'u3qbseOAAw', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(11, 'Prof. Malcolm Zulauf DVM', 'predovic.leon@example.net', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'VXDWOK38VD', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(12, 'Austyn Watsica DVM', 'fisher.breanne@example.com', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7qZGZev4QD', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(13, 'Eliza Ernser MD', 'jpacocha@example.net', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'DEXw6KUN1z', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(14, 'Dr. Edythe Batz MD', 'earnest.kessler@example.org', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0Myc7kccKG', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(15, 'Mr. Grady Grant', 'bayer.annie@example.net', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'jNPGHCzBFV', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(16, 'Chadrick Streich I', 'mbalistreri@example.com', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'l3fmA6uLYj', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(17, 'Prof. Lori Breitenberg DDS', 'beverly.zboncak@example.org', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'md9SLS4OBV', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(18, 'Prof. Jasper Gerlach', 'vturcotte@example.org', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'RdC7nJTMpP', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(19, 'Fern Homenick', 'jamarcus.brown@example.com', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'u8mjM4kSmU', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(20, 'Sammy Mayert IV', 'darren.luettgen@example.org', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 't4ogPPuXCH', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(21, 'Gideon Walker', 'spencer.lincoln@example.org', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Sx7whAgigV', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(22, 'Prof. Luna Stoltenberg DDS', 'obie.thiel@example.org', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3FIfovQFff', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(23, 'Elias Sawayn', 'nitzsche.marcelle@example.org', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KyGa5pss1Z', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(24, 'Kathlyn Reinger', 'kmills@example.net', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'F4xmditZ7v', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(25, 'Janice Treutel', 'turcotte.vivien@example.net', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4Lbe32Qrvq', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(26, 'Neal Waelchi Jr.', 'schuppe.green@example.net', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zpf13jU7mV', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(27, 'Dakota Tremblay', 'kuhlman.moises@example.com', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Jcnlt5tRyl', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(28, 'Mr. Tyrel Hagenes', 'brain.bergstrom@example.net', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SvCgCFppu7', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(29, 'Douglas Bednar II', 'cletus.braun@example.net', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Zq0kzkQ1dr', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(30, 'Marguerite Cruickshank V', 'ayana01@example.org', '2019-01-19 08:51:00', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aDV7ceYoC9', '2019-01-19 08:51:00', '2019-01-19 08:51:00'),
(31, 'Joesph Leannon', 'eleonore.fadel@example.com', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'D755uJnmVN', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(32, 'Mrs. Krista Torp', 'herta16@example.com', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dlFFJD3i4U', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(33, 'Prof. Agustina Harber', 'wuckert.gavin@example.org', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GRVY8ZshNj', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(34, 'Patience Dickinson', 'monroe79@example.com', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rbW96dhYUV', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(35, 'Cecil Kris', 'hrussel@example.com', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Gp3vFmr5sj', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(36, 'Prof. Diego Bode III', 'mitchell.weimann@example.com', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wCJ0za2TNy', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(37, 'Geovanny Smitham', 'vebert@example.org', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dNqqzvyjTq', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(38, 'Miss Dandre Torphy MD', 'kylie.collier@example.net', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'z9I0MCFYnx', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(39, 'Johnson Hirthe', 'nluettgen@example.net', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SWuFDFWBKb', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(40, 'Gillian Steuber', 'jbogisich@example.com', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XMLbKUsk14', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(41, 'Caesar Conroy', 'devan80@example.net', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'B5ErhKTJve', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(42, 'Martina VonRueden', 'jeromy.hills@example.org', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TSY9Wm3WtT', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(43, 'Adell Fritsch', 'jensen52@example.org', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'wwJIg3Trhr', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(44, 'Mrs. Cristal Johns', 'schmitt.lemuel@example.org', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vnIOBUKTBF', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(45, 'Evalyn Friesen', 'flangosh@example.org', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'CYgcLENx8b', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(46, 'Jennyfer Steuber', 'maxie.ryan@example.org', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ls2pvF82VV', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(47, 'Eve Sauer', 'gus.mohr@example.net', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'u7Mf7F55xC', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(48, 'Roxane Schimmel', 'ohara.alvis@example.com', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hkEcVOsohr', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(49, 'Prof. Lucas Ritchie', 'jones.betty@example.com', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rwl1Pzxsa8', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(50, 'Domenica Tromp', 'owuckert@example.net', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'A7XZushtZn', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(51, 'Dr. Julia Zulauf Jr.', 'geoffrey.davis@example.net', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Vxms0uzeeE', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(52, 'Laura Quitzon III', 'scartwright@example.org', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BI6JFg8752', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(53, 'Dee Green', 'wilhelmine54@example.net', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '8xeRePf2SX', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(54, 'Doug Hammes V', 'jordane.heaney@example.org', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'f7vtKcCREh', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(55, 'Valentina Upton', 'jeremie.fritsch@example.org', '2019-01-19 08:51:01', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Kofgnt61qe', '2019-01-19 08:51:01', '2019-01-19 08:51:01'),
(56, 'Dr. Jabari Yost', 'mclaughlin.laverna@example.net', '2019-01-19 08:51:02', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bMFPzMOLRK', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(57, 'Prof. Claudia Morar', 'xkessler@example.org', '2019-01-19 08:51:02', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'niYYsf0uL1', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(58, 'Hosea Koss', 'boehm.aleen@example.net', '2019-01-19 08:51:02', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'f1xQkv0aN3', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(59, 'Jacques Kessler', 'zullrich@example.org', '2019-01-19 08:51:02', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7Nf0XQoHpM', '2019-01-19 08:51:02', '2019-01-19 08:51:02'),
(60, 'Enola Roob', 'lueilwitz.camille@example.com', '2019-01-19 08:51:02', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GPRHopa1yO', '2019-01-19 08:51:02', '2019-01-19 08:51:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `invoices_reservation_id_foreign` (`reservation_id`),
  ADD KEY `invoices_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_room_category_id_foreign` (`room_category_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `reservations_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_number`),
  ADD KEY `rooms_room_category_id_foreign` (`room_category_id`),
  ADD KEY `rooms_reservation_id_foreign` (`reservation_id`);

--
-- Indexes for table `room_categories`
--
ALTER TABLE `room_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `services_reservation_id_foreign` (`reservation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `room_categories`
--
ALTER TABLE `room_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_reservation_id_foreign` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE CASCADE;

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_room_category_id_foreign` FOREIGN KEY (`room_category_id`) REFERENCES `room_categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_reservation_id_foreign` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rooms_room_category_id_foreign` FOREIGN KEY (`room_category_id`) REFERENCES `room_categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_reservation_id_foreign` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
