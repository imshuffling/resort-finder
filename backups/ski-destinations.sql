-- phpMyAdmin SQL Dump
-- version 2.6.2-pl1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 11, 2012 at 12:03 PM
-- Server version: 4.1.12
-- PHP Version: 5.1.2
-- 
-- Database: `ski-destinations`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `accommodationtypes`
-- 

CREATE TABLE `accommodationtypes` (
  `id` int(2) NOT NULL auto_increment,
  `accommodation` varchar(50) default NULL,
  `accommodation_field` varchar(50) default NULL,
  `order_id` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `accommodationtypes`
-- 

INSERT INTO `accommodationtypes` VALUES (1, 'Chalets', 'chalets', 1);
INSERT INTO `accommodationtypes` VALUES (2, 'Up to 9 people', 'up_to_9_people', 2);
INSERT INTO `accommodationtypes` VALUES (3, '10 to 14 people', '10_to_14_people', 3);
INSERT INTO `accommodationtypes` VALUES (4, '15 to 45 people', '15_to_45_people', 4);

-- --------------------------------------------------------

-- 
-- Table structure for table `departurepoint`
-- 

CREATE TABLE `departurepoint` (
  `id` int(2) NOT NULL auto_increment,
  `depart_from` varchar(50) default NULL,
  `depart_field` varchar(50) default NULL,
  `order_id` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- 
-- Dumping data for table `departurepoint`
-- 

INSERT INTO `departurepoint` VALUES (1, 'Belfast Aldergrove', 'belfast_aldergrove', 1);
INSERT INTO `departurepoint` VALUES (2, 'Belfast City', 'belfst_city', 2);
INSERT INTO `departurepoint` VALUES (3, 'Birmingham', 'birmingham', 3);
INSERT INTO `departurepoint` VALUES (4, 'Bournemouth', 'bournemouth', 4);
INSERT INTO `departurepoint` VALUES (5, 'Bristol', 'bristol', 5);
INSERT INTO `departurepoint` VALUES (6, 'Doncaster/Sheffield', 'doncaster_sheffield', 6);
INSERT INTO `departurepoint` VALUES (7, 'Dublin', 'dublin', 7);
INSERT INTO `departurepoint` VALUES (8, 'East Midlands', 'east_midlands', 8);
INSERT INTO `departurepoint` VALUES (9, 'Edinburgh', 'edinburgh', 9);
INSERT INTO `departurepoint` VALUES (10, 'Exeter', 'exeter', 10);
INSERT INTO `departurepoint` VALUES (11, 'Glasgow', 'glasgow', 11);
INSERT INTO `departurepoint` VALUES (12, 'Leeds/Bradford', 'leeds_bradford', 12);
INSERT INTO `departurepoint` VALUES (13, 'Liverpool', 'liverpool', 13);
INSERT INTO `departurepoint` VALUES (14, 'London Gatwick', 'london_gatwick', 14);
INSERT INTO `departurepoint` VALUES (15, 'London Heathrow', 'london_heathrow', 15);
INSERT INTO `departurepoint` VALUES (16, 'London Luton', 'london_luton', 16);
INSERT INTO `departurepoint` VALUES (17, 'London Stansted', 'london_stansted', 17);
INSERT INTO `departurepoint` VALUES (18, 'Manchester', 'manchester', 18);
INSERT INTO `departurepoint` VALUES (19, 'Newcastle', 'newcastle', 19);
INSERT INTO `departurepoint` VALUES (20, 'St Pancras', 'st_pancras', 20);
INSERT INTO `departurepoint` VALUES (21, 'Ashford International', 'ashford_international', 21);
INSERT INTO `departurepoint` VALUES (22, 'London All Airports', 'london_all_airports', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `destinations`
-- 

CREATE TABLE `destinations` (
  `resort_name` varchar(255) default NULL,
  `country_name` varchar(255) default NULL,
  `destination` varchar(255) default NULL,
  `ski_area` varchar(255) default NULL,
  `height_m` varchar(255) default NULL,
  `height_ft` varchar(255) default NULL,
  `snow_range_m` varchar(255) default NULL,
  `pistes_kms` varchar(255) default NULL,
  `glaciers` varchar(255) default NULL,
  `terrain_parks` varchar(255) default NULL,
  `crystal_childcare` varchar(255) default NULL,
  `ski_plus` varchar(255) default NULL,
  `riders_lodge` varchar(255) default NULL,
  `finest` varchar(255) default NULL,
  `ski_host` varchar(255) default NULL,
  `shortest_transfer_time` varchar(255) default NULL,
  `finest1` varchar(255) default NULL,
  `chalets` varchar(255) default NULL,
  `up_to_9_people` varchar(255) default NULL,
  `10_to_14_people` varchar(255) default NULL,
  `15_to_45_people` varchar(255) default NULL,
  `fast_pass` varchar(255) default NULL,
  `ski_escort` varchar(255) default NULL,
  `beginners` varchar(255) default NULL,
  `intermediate` varchar(255) default NULL,
  `advanced` varchar(255) default NULL,
  `snowboarders` varchar(255) default NULL,
  `families` varchar(255) default NULL,
  `nightlife` varchar(255) default NULL,
  `non_ski` varchar(255) default NULL,
  `belfast_city` varchar(255) default NULL,
  `belfast_aldergrove` varchar(255) default NULL,
  `birmingham` varchar(255) default NULL,
  `bournemouth` varchar(255) default NULL,
  `bristol` varchar(255) default NULL,
  `dublin` varchar(255) default NULL,
  `doncaster_sheffield` varchar(255) default NULL,
  `edinburgh` varchar(255) default NULL,
  `eday_airport` varchar(255) default NULL,
  `east_midlands` varchar(255) default NULL,
  `exeter` varchar(255) default NULL,
  `glasgow` varchar(255) default NULL,
  `leeds_bradford` varchar(255) default NULL,
  `london_heathrow` varchar(255) default NULL,
  `london_all_airports` varchar(255) default NULL,
  `london_gatwick` varchar(255) default NULL,
  `liverpool` varchar(255) default NULL,
  `london_luton` varchar(255) default NULL,
  `manchester` varchar(255) default NULL,
  `newcastle` varchar(255) default NULL,
  `cork_airport` varchar(255) default NULL,
  `london_stansted` varchar(255) default NULL,
  `st_pancras` varchar(255) default NULL,
  `ashford_international` varchar(255) default NULL,
  `folkestone` varchar(255) default NULL,
  `dover` varchar(255) default NULL,
  `2_for_1` varchar(255) default NULL,
  `first_time_packages` varchar(255) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `destinations`
-- 

INSERT INTO `destinations` VALUES ('Arinsal', 'Andorra', 'Europe', NULL, '1500', '4950', '1500-2560m', '68kms', NULL, '1', NULL, 'TRUE', NULL, NULL, NULL, '3 hrs 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '3', '2', '3', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Pas de la Casa', 'Andorra', 'Europe', NULL, '2050', '6765', '1710-2640m', '193km', NULL, '1', NULL, 'TRUE', NULL, NULL, NULL, '2 hrs 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '4', '2', '3', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Soldeu and El Tarter', 'Andorra', 'Europe', NULL, '1800', NULL, '1710-2640m', '193km', NULL, '1', NULL, 'TRUE', NULL, 'TRUE', NULL, '3 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '4', '3', '3', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Alpbach', 'Austria', 'Europe', NULL, '1006', '3300', '1006-1900m', '46kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hr 30 min', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '3', '4', '2', '3', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Alpendorf', 'Austria', 'Europe', NULL, '800', '2625', '600m - 2188m', '282km', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '2', '3', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Austrian Winter Experience', 'Austria', 'Europe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Axamer Lizum', 'Austria', 'Europe', NULL, '868', '2848', '868-2340m', '58km', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '4', '3', '3', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Bad Gastein', 'Austria', 'Europe', NULL, '1000', '3281', '859-2686m', '250kms', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '2 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '2', '4', '3', '3', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Bad Hofgastein', 'Austria', 'Europe', NULL, '859', '2818', '859-2686m', '250kms', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '1 hr 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '2', '4', '3', '3', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Ellmau', 'Austria', 'Europe', NULL, '820', '2706', '820-1956m', '279kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '1 hr 30 mins', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', 'TRUE', '5', '5', '4', '4', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Fieberbrunn', 'Austria', 'Europe', NULL, '790', '2592', '725-1956m', '125kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '1hr 30mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '3', '0', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Finkenberg', 'Austria', 'Europe', NULL, '840', '2755', '630-3280m', '625kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '2 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '5', '3', '4', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Fulpmes', 'Austria', 'Europe', NULL, '1000', '3280', '1000-3200m', '140kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '4', '3', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Galt&#252;r', 'Austria', 'Europe', NULL, '1585', '5200', '1400-2864m', '330km', NULL, '1', NULL, 'TRUE', NULL, NULL, NULL, '1 hr 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '3', '5', '5', '5', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Gosau', 'Austria', 'Europe', NULL, '750', '2461', '750-1620m', '130km', NULL, '1', NULL, 'TRUE', NULL, NULL, NULL, '2 hrs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '2', '3', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Hinterglemm', 'Austria', 'Europe', NULL, '1050', '3445', '1003-2096m', '200kms', NULL, '2', NULL, NULL, NULL, 'TRUE', NULL, '2 hrs 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '4', '3', '4', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Hochgurgl', 'Austria', 'Europe', NULL, '2163', '7096', '1800-3082m', '110kms', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '1hr 30 minutes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '3', '3', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Hopfgarten', 'Austria', 'Europe', NULL, '620', '2034', NULL, '279km', NULL, '4', NULL, NULL, NULL, NULL, NULL, '1hr 45mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '5', '4', '4', NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Igls', 'Austria', 'Europe', NULL, '900', '2953', '903m - 3210m', '295kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '3', '2', '2', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Ischgl', 'Austria', 'Europe', NULL, '1400', '4593', '1400-2864m', '330kms', NULL, '1', 'TRUE', NULL, NULL, 'TRUE', NULL, '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '3', '5', '4', '5', 'TRUE', 'TRUE', NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Itter', 'Austria', 'Europe', NULL, '705', '2400', '725-1956m', '279kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '5', '4', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('K&#252;htai', 'Austria', 'Europe', NULL, '2020', '6626', '2020-2811m', '35kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '5', '2', '3', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Kaprun', 'Austria', 'Europe', NULL, '775', '2541', '775-3029m', '138km', 'TRUE', '3', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, '2 hrs 15 mins', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', '4', '5', '4', '5', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Kirchberg', 'Austria', 'Europe', NULL, '860', NULL, '860-1995m', '168km', NULL, '2', NULL, NULL, NULL, NULL, NULL, '2 hours', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '5', '4', '0', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Kirchdorf', 'Austria', 'Europe', NULL, '640', NULL, '640m-2020m', '125km', NULL, '1', NULL, NULL, NULL, NULL, NULL, '1 hr 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '5', '4', '2', '3', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Kitzb&#252;hel', 'Austria', 'Europe', NULL, '760', '2450', '760-1995m', '168kms', NULL, '2', NULL, 'TRUE', NULL, 'TRUE', NULL, '1 hr 45 mins', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', 'TRUE', '4', '5', '4', '3', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Lech', 'Austria', 'Europe', NULL, '1450', '4750', '1450-2800m', '276km', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '2 hrs 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '4', '5', '5', '4', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Mayrhofen', 'Austria', 'Europe', 'The Three Valleys', '630', '2066', '580-3250m', '625kms', 'TRUE', '1', NULL, 'TRUE', NULL, 'TRUE', NULL, '1 hr 30 mins', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', 'TRUE', '3', '5', '3', '5', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Mayrhofen Ski Area', 'Austria', 'Europe', NULL, '1450', NULL, '630-3250m', '625kms', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '5', '3', '5', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Neustift', 'Austria', 'Europe', NULL, '1000', '3280', '1000-3200m', '140kms', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '40 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '4', '3', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Niederau', 'Austria', 'Europe', NULL, '828', '2680', '828m-1903m', '70kms', NULL, '1', 'TRUE', NULL, NULL, NULL, NULL, '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '3', '1', '3', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Obergurgl', 'Austria', 'Europe', NULL, '1930', '6332', '1800-3082m', '110kms', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '4', '4', '3', '3', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Obertauern', 'Austria', 'Europe', NULL, '1750', '5710', '1630-2315m', '100km', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '2 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '3', '4', '3', '0', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Rauris', 'Austria', 'Europe', NULL, '950', '3114', '950-2200m', '25km', NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '5', '3', '2', '2', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('S&#246;lden', 'Austria', 'Europe', NULL, '1350', '4429', '1350-3249m', '150km', 'TRUE', '1', NULL, NULL, NULL, 'TRUE', NULL, '1hr 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '4', '5', '4', '5', NULL, 'TRUE', NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('S&#246;ll', 'Austria', 'Europe', NULL, '703', '2400', '725-1956m', '279kms', NULL, '1', NULL, 'TRUE', NULL, NULL, NULL, '1 hr 15 mins', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', 'TRUE', '5', '5', '4', '4', NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Saalbach', 'Austria', 'Europe', NULL, '1003', '3290', '1003-2096m', '200kms', NULL, '2', NULL, NULL, NULL, 'TRUE', NULL, '2 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '4', '3', '4', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Scheffau', 'Austria', 'Europe', NULL, '752', '2481', '752-1956m', '279kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hrs 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '5', '5', '4', '3', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Schladming', 'Austria', 'Europe', NULL, '745', '2444', '745-2700m', '173kms', NULL, '2', NULL, NULL, NULL, NULL, NULL, '2 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '3', '5', '4', '4', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Seefeld', 'Austria', 'Europe', NULL, '1207', '3960', '1207-2100m', '30kms', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '5', '3', '2', '1', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Silvretta Montafon', 'Austria', 'Europe', NULL, '700', NULL, '700-2300m', '152kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '2 hrs 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '4', '3', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('St Johann in Pongau', 'Austria', 'Europe', NULL, '650', NULL, '650m - 2000m', '80 km', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '4', '1', '4', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('St Anton', 'Austria', 'Europe', NULL, '1304', '4278', '1304-2811m', '276kms', NULL, '1', 'TRUE', NULL, NULL, 'TRUE', NULL, '1 hr 30 mins', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, '2', '5', '5', '4', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('St. Johann - Schneewinkel', 'Austria', 'Europe', NULL, '700', '2297', '700-2020m', '139kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '1 hr 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '4', '3', '2', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('St. Wolfgang', 'Austria', 'Europe', NULL, '540', '1772', '900-1900m', '153kms', NULL, '3', NULL, NULL, NULL, 'TRUE', NULL, '1hr 15mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '5', '2', '1', '2', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Waidring', 'Austria', 'Europe', NULL, NULL, NULL, NULL, '170km', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hour', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Werfenweng', 'Austria', 'Europe', NULL, NULL, NULL, '1000m', '25kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hour 15 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '1', '0', NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Westendorf', 'Austria', 'Europe', NULL, NULL, NULL, '800m', '279kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 hrs 30mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '5', '4', '0', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Z&#252;rs', 'Austria', 'Europe', NULL, '1720', '5676', '1304-2811m', '276km', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2hrs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '5', '5', '4', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Zell am See', 'Austria', 'Europe', NULL, '762', '2501', '762-3029m', '138km', 'TRUE', '3', NULL, 'TRUE', NULL, 'TRUE', NULL, '2 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '5', '5', '4', '4', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Zell am Ziller', 'Austria', 'Europe', NULL, '580', '1903', NULL, '625kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '1hr 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '2', '5', '3', '4', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Bansko', 'Bulgaria', 'Europe', NULL, '936', '3070', '936-2560m', '65Km', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '3 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '3', '2', '3', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Borovets', 'Bulgaria', 'Europe', NULL, '1300', '4290', '1300-2550m', '58kms', NULL, '1', NULL, 'TRUE', NULL, NULL, NULL, '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '3', '2', '2', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Pamporovo', 'Bulgaria', 'Europe', NULL, '1600', '5280', '1600-1926m', '25kms', NULL, '2', NULL, 'TRUE', NULL, NULL, NULL, '4 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '5', '3', '1', '2', 'TRUE', 'TRUE', NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Banff', 'Canada', 'N. America', NULL, '1476', '4920', '1476-2730m', '3358 acres', NULL, '3', NULL, NULL, NULL, 'TRUE', 'TRUE', '2 hours', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, '4', '5', '4', '4', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Fernie', 'Canada', 'N. America', NULL, '1068', '3500', '1,068-1,925m', '2,504 acres', NULL, '1', NULL, NULL, NULL, 'TRUE', 'TRUE', '3 hrs 30mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '4', '4', '4', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Jasper', 'Canada', 'N. America', NULL, '1058', '3527', '1,698-2,612m', '1675 acres', NULL, '1', NULL, NULL, NULL, 'TRUE', 'TRUE', '3 hrs 45 mins', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, '3', '4', '3', '3', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Lake Louise', 'Canada', 'N. America', NULL, '1635', '5450', '1,646-2,729m', '7,748 acres', NULL, '3', NULL, NULL, NULL, 'TRUE', 'TRUE', '2 hrs 45 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '5', '4', '4', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Panorama', 'Canada', 'N. America', NULL, '1155', '3800', '1,155m-2,375m', '2,847 acres', NULL, '2', NULL, NULL, NULL, NULL, 'TRUE', '4 hrs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '4', '3', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Tremblant', 'Canada', 'N. America', NULL, '265', '870', '265-915m', '654 acres', NULL, '2', NULL, NULL, NULL, 'TRUE', 'TRUE', '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '3', '3', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Whistler', 'Canada', 'N. America', NULL, '675', '2214', '653-2,284m', '8,171 acres', 'TRUE', '5', NULL, NULL, NULL, 'TRUE', 'TRUE', '2 hrs 30 mins', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, '4', '5', '5', '4', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Iso-Sy&#246;te', 'Finland', 'Europe', NULL, '240', NULL, '240-432m', '10 kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hour 30 minutes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Levi', 'Finland', 'Europe', NULL, '200', '665', '200-665m', '40km', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25 minutes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Ruka', 'Finland', 'Europe', NULL, '295', '965', '290-496m', '20km', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '25 minutes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Yll&#228;s', 'Finland', 'Europe', NULL, '255', '836', '255-718m', '50km', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hour', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '3', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Alpe d&#39;Huez', 'France', 'Europe', NULL, '1860', '6102', '1860-3330m', '249kms', NULL, '2', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, '2 hrs 15', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', '4', '5', '4', '5', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Avoriaz', 'France', 'Europe', 'Portes du Soleil', '1800', '5940', '1000-2350m', '650kms', NULL, '4', NULL, 'TRUE', NULL, 'TRUE', NULL, '2 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '5', '4', '5', 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Brides Les Bains', 'France', 'Europe', NULL, '600', '1968', '1300-3200m', '600kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '2hrs 15mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '5', '4', '4', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Chamonix', 'France', 'Europe', NULL, '1035', '3395', '1040-3842m', '762kms', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '3', '4', '5', '5', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Chamrousse', 'France', 'Europe', NULL, '1700', '5577', '1400-2250m', '92kms', NULL, '1', NULL, 'TRUE', NULL, NULL, NULL, '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '4', '3', '3', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Courchevel', 'France', 'Europe', 'The Three Valleys', '1650', '5418', '1224-3248m', '600kms', NULL, '1', 'TRUE', NULL, NULL, 'TRUE', NULL, '2 hrs 30 mins', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', '4', '5', '5', '4', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Flaine', 'France', 'Europe', NULL, '1600', '5249', '700-2561m', '265km', NULL, '1', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, '1hr 45', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '5', '4', '4', 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('La Clusaz', 'France', 'Europe', NULL, '1100', '3608', '1100-2600m', '220kms', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '1 hr 15 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '4', '3', '4', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('La Plagne', 'France', 'Europe', 'Paradiski', '1800', '5905', '1250-3250m', '425kms', NULL, '3', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, '2hrs', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', '4', '5', '4', '4', 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('La Rosi&#232;re', 'France', 'Europe', NULL, '1850', '6105', '1850-2642 m', '150kms', NULL, '1', 'TRUE', NULL, NULL, 'TRUE', NULL, '50 mins.', NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', '5', '5', '4', '4', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('La Tania', 'France', 'Europe', 'The Three Valleys', '1400', '4593', '1300-3200m', '600kms', NULL, '1', NULL, 'TRUE', NULL, NULL, NULL, '2 hrs 15', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', '3', '5', '5', '4', 'TRUE', 'TRUE', NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Les Arcs', 'France', 'Europe', 'Paradiski', '1650', NULL, '1609-3226m', '425kms', NULL, '1', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, '2 hrs 30 mins', NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', '5', '4', '4', '5', 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Les Deux Alpes', 'France', 'Europe', NULL, '1650', '5413', '1650-3568m', '225kms', NULL, '1', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, '2 hrs 15 mins', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', '4', '5', '4', '5', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Les Gets', 'France', 'Europe', NULL, '1170', NULL, NULL, '650km', NULL, '3', NULL, NULL, NULL, NULL, NULL, '1 hr 30 mins.', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', '3', '5', '4', '4', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Les Menuires', 'France', 'Europe', NULL, '1815', '6060', '1300-3200m', '600kms', NULL, '1', 'TRUE', NULL, NULL, 'TRUE', NULL, '2hrs 30mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '5', '5', '4', 'TRUE', 'TRUE', NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Les Orres', 'France', 'Europe', NULL, '1800', NULL, '1550-2720m', '88kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '4', '3', '3', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Meribel &amp; Mottaret', 'France', 'Europe', 'The Three Valleys', '1850', NULL, '1300-3200m', '600kms', NULL, '1', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, '2 hrs 30 mins', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', '4', '5', '4', '4', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Montgen&#232;vre', 'France', 'Europe', NULL, '1850', '6195', '1850-2700m', '400km', NULL, '2', NULL, NULL, NULL, 'TRUE', NULL, '1 hr 45 mins', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', '4', '5', '3', '4', 'TRUE', 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Morzine', 'France', 'Europe', 'Portes du Soleil', '1000', '3300', '1000-2350m', '650kms', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, '1 hr 30mins.', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '5', '4', '5', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Risoul', 'France', 'Europe', NULL, '1850', '6069', '1650-2750m', '180kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '4', '3', '5', 'TRUE', 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Serre Chevalier', 'France', 'Europe', NULL, '1400', '4593', '1350-2830m', '250kms', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '2 hrs 30 mins', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', '3', '5', '4', '4', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('St. Martin de Belleville', 'France', 'Europe', NULL, '1400', '4592', '1300-3200m', '600kms', NULL, '1', 'TRUE', NULL, NULL, 'TRUE', NULL, '2 hrs 15 mins', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', '4', '5', '5', '5', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Tignes', 'France', 'Europe', NULL, '2100', '6889', '1550-3550m', '300kms', NULL, '1', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, '2hrs 30mins', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', '3', '5', '5', '5', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Val Cenis', 'France', 'Europe', NULL, '1450', '4757', '1400-2800m', '125kms', NULL, '2', NULL, NULL, NULL, NULL, NULL, '2hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '3', '3', '3', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Val d&#39;Is&#232;re', 'France', 'Europe', NULL, '1850', '6069', '1550-3550m', '300kms', NULL, '1', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, '2 hrs 45 mins', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', '3', '5', '5', '4', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Val Thorens', 'France', 'Europe', 'The Three Valleys', '2300', '7545', '1300-3200m', '600kms', NULL, '1', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, '2 hrs 45 mins', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', '4', '5', '5', '4', 'TRUE', 'TRUE', NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Valloire', 'France', 'Europe', NULL, '1430', '4962', '1430-2594m', '150kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '1 hr 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '5', '2', '3', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Valmeinier', 'France', 'Europe', NULL, '1800', '5950', '1430-2594m', '150kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hr 45 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '5', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Valmorel', 'France', 'Europe', NULL, '1400', '4593', '1400-2550m', '152kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '2 hrs 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '5', '4', '3', '4', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Vars', 'France', 'Europe', NULL, '1850', '6069', '1650-2750m', '180kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3 hrs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '3', '5', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Bardonecchia', 'Italy', 'Europe', NULL, '1312', '4304', '1300-2750m', '100km', NULL, '1', NULL, 'TRUE', NULL, NULL, NULL, '1hr 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '4', '5', '2', '2', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Cervinia', 'Italy', 'Europe', NULL, '2050', '6764', '1524m-3883m', '350km', 'TRUE', '1', NULL, 'TRUE', NULL, 'TRUE', NULL, '2 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '4', '2', '2', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Champoluc', 'Italy', 'Europe', NULL, '1579', '5181', '1212m-3260m', '180kms', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '1 hr 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '2', '5', '3', '3', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Claviere', 'Italy', 'Europe', NULL, '1760', '5774', '1350m-2823m', '400km', NULL, '3', 'TRUE', 'TRUE', NULL, NULL, NULL, '1hr 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '4', '3', '4', 'TRUE', 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Cortina', 'Italy', 'Europe', NULL, '1224', '4015', '934-3342m', '1,220kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '3 hrs 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '5', '4', '3', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Courmayeur', 'Italy', 'Europe', NULL, '1224', '4015', '1210m-2763m', '100kms', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '2 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '2', '5', '3', '3', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Folgarida', 'Italy', 'Europe', NULL, '1300', '4265', '1300m-2505m', '150kms', NULL, '1', NULL, 'TRUE', NULL, NULL, NULL, '2hrs 30mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '4', '3', '3', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Gressoney', 'Italy', 'Europe', NULL, '1637', '5370', '1212m-2971m', '180kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '1 hr 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '2', '5', '4', '4', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('La Thuile', 'Italy', 'Europe', NULL, '1441', '4728', '1175m-2610m', '155km', NULL, '1', NULL, 'TRUE', NULL, NULL, NULL, '2 hrs 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '5', '5', '3', '3', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Livigno', 'Italy', 'Europe', NULL, '1815', NULL, '1815-2800m', '110kms', NULL, '2', NULL, 'TRUE', NULL, NULL, NULL, '3 hrs', NULL, NULL, NULL, '', NULL, 'TRUE', 'TRUE', '4', '5', '2', '2', NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Madonna di Campiglio', 'Italy', 'Europe', NULL, '1550', '5084', '1300m-2505m', '150kms', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '2 hrs 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '3', '5', '3', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Ortisei', 'Italy', 'Europe', NULL, '1236', NULL, '934m-3342m', '1,220kms', 'TRUE', '2', NULL, NULL, NULL, NULL, NULL, '2 hrs 20 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '5', '4', '3', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Passo Tonale', 'Italy', 'Europe', NULL, '1883', NULL, '1121m-3016m', '100km', 'TRUE', '1', NULL, 'TRUE', NULL, NULL, NULL, '2hrs 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '5', '4', '3', '3', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Pila', 'Italy', 'Europe', NULL, '1800', NULL, '1800-2725m', '70kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '2 hrs 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '3', '5', '3', '4', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Sansicario', 'Italy', 'Europe', NULL, '1700', '5577', '1350m-2823m', '400kms', NULL, '4', NULL, NULL, NULL, NULL, NULL, '1 hr 45 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '5', '3', '3', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Sauze d&#39;Oulx', 'Italy', 'Europe', NULL, '1503', '4950', '1350-2823m', '400km', NULL, '3', NULL, 'TRUE', NULL, 'TRUE', NULL, '1hr 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '3', '5', '3', '4', NULL, 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Selva Val Gardena', 'Italy', 'Europe', NULL, '1565', NULL, '934m-3342m', '1,220kms', NULL, '2', NULL, NULL, NULL, 'TRUE', NULL, ' 2 hrs 30 mins', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', '4', '5', '4', '3', NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Sestriere', 'Italy', 'Europe', NULL, '2035', '6675', '1350m-2823m', '400km', NULL, '3', NULL, 'TRUE', NULL, NULL, NULL, '2 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '5', '3', '3', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Val di Fassa', 'Italy', 'Europe', NULL, '1320', NULL, '934-3342m', '1,220kms', 'TRUE', '2', 'TRUE', NULL, NULL, NULL, NULL, '2 hrs 30 mins', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', 'TRUE', '3', '5', '4', '4', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Niseko', 'Japan', 'Japan', NULL, '300', '984', '300-1240m', '48kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hour 45 minutes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '5', '4', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Rusutsu', 'Japan', 'Japan', NULL, '400', '1312', '300-1240m', '42kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hour 45 minutes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '5', '4', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Tokyo City Add-on', 'Japan', 'Japan', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Geilo', 'Norway', 'Europe', NULL, '800', '2640', '800-1173m', '28kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3 hrs 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '3', '2', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Hemsedal', 'Norway', 'Europe', NULL, '625', '2145', '625-1497m', '42kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3 hrs 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '4', '3', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Lillehammer', 'Norway', 'Europe', NULL, '200', '660', '200-1148m', '33kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hrs 45 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Voss', 'Norway', 'Europe', NULL, '57', '188', '57-945m', '40kms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1 hr 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '4', '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Sochi', 'Russia', 'Europe', NULL, '520', '1705', '540m-2,320m', '100km', NULL, '2', NULL, NULL, NULL, NULL, NULL, '1 hrs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '4', '4', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Kopaonik', 'Serbia', 'Europe', NULL, '1770', '5087', '1770-2017m', '62km', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2hrs 45mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', '3', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Bled', 'Slovenia', 'Europe', NULL, '503', '1659', '503-1800m', '60kms', NULL, '1', NULL, NULL, NULL, NULL, NULL, '4 hrs', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '5', '3', '1', '3', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Bohinj', 'Slovenia', 'Europe', NULL, '503', '1650', '573m', '60 km', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4 hrs 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '2', '1', '3', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Kranjska Gora', 'Slovenia', 'Europe', NULL, '809', '2656', '809-1570m', '30kms', NULL, '1', 'TRUE', NULL, NULL, NULL, NULL, '3 hrs 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '3', '2', '3', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Grindelwald', 'Switzerland', 'Europe', 'Jungfrau', '1034', '3392', '1034-3454m', '213kms', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '3 hrs 15 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '3', '4', '3', '3', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Lauterbrunnen', 'Switzerland', 'Europe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3 hrs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '4', '3', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Nendaz', 'Switzerland', 'Europe', NULL, '1365', '4477', '1350-3330', '412km', NULL, '1', NULL, NULL, NULL, NULL, NULL, '45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '5', '4', '4', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Saas Fee', 'Switzerland', 'Europe', NULL, '1800', '5905', '1800-3500m', '100kms', 'TRUE', '2', NULL, NULL, NULL, 'TRUE', NULL, '1hr 45 mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '4', '5', '4', '4', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Verbier', 'Switzerland', 'Europe', NULL, '1500', '4921', '1500-3330m', '412kms', 'TRUE', '2', NULL, NULL, NULL, 'TRUE', NULL, '1 hour.', NULL, 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', '3', '5', '5', '4', NULL, 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Veysonnaz', 'Switzerland', 'Europe', NULL, '1300', '4264', '1350-3330', '412km', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45 mins', NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', '4', '5', '3', '4', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Villars', 'Switzerland', 'Europe', NULL, '1200', '3936', '1200-2971m', '220kms', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, '1 hr 40 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '5', '3', '4', 'TRUE', NULL, NULL, NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Wengen', 'Switzerland', 'Europe', 'Jungfrau', '1274', '4180', '1034-2970m', '213kms', NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, '3hr 15mins', NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', '3', '4', '3', '3', 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Zermatt', 'Switzerland', 'Europe', NULL, '1620', '5346', '1620-3883m', '183kms', 'TRUE', '1', NULL, NULL, NULL, 'TRUE', NULL, '2 hrs', NULL, 'TRUE', 'TRUE', NULL, NULL, 'TRUE', 'TRUE', '2', '5', '5', '3', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, NULL, 'TRUE', NULL, 'TRUE', NULL, 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Aspen and Snowmass', 'USA', 'N. America', NULL, '2385', '7950', '2,385-3,790m', '5,305 acres', NULL, '8', NULL, NULL, NULL, 'TRUE', 'TRUE', '4 hrs 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '5', '5', '5', NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Beaver Creek', 'USA', 'N. America', NULL, '2255', '7400', '2200-3488m', '1,815 acres', NULL, '3', NULL, NULL, NULL, 'TRUE', NULL, '0', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, '4', '5', '4', '4', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Breckenridge', 'USA', 'N. America', NULL, '2926', '9600', '2,926-3,914m', '2,358 acres', NULL, '5', NULL, NULL, NULL, NULL, 'TRUE', '2 hrs', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, '4', '5', '5', '5', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Copper Mountain', 'USA', 'N. America', NULL, '2926', '9712', '2,926-3,767m', '2,450 acres', NULL, '3', NULL, NULL, NULL, NULL, 'TRUE', '2hrs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '5', '4', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Jackson Hole', 'USA', 'N. America', NULL, '1924', '6311', '1,924-3,185m', '2,500 acres', NULL, '6', NULL, NULL, NULL, 'TRUE', 'TRUE', '15-30mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '3', '5', '4', NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Killington', 'USA', 'N. America', NULL, '323', '1065', '323-1,293m', '752 acres', NULL, '4', NULL, NULL, NULL, NULL, 'TRUE', '3 hrs 15 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '3', '4', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Lake Tahoe', 'USA', 'N. America', NULL, '1962', '6540', '1,962-3,012m', '19,700 acres', NULL, '21', NULL, NULL, NULL, 'TRUE', NULL, '1hr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3', '5', '4', '5', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('New Hampshire', 'USA', 'N. America', NULL, '243', '800', '243-1,243m', '1,525 acres', NULL, '10', NULL, NULL, NULL, NULL, NULL, '3hrs', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, '4', '4', '2', '2', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Park City', 'USA', 'N. America', NULL, '2104', '6900', '2,104-3,048m', '9,326 acres', NULL, '6', NULL, NULL, NULL, 'TRUE', 'TRUE', '40 mins', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, '3', '4', '5', '4', NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Steamboat', 'USA', 'N. America', NULL, '2070', '6900', '2,070-3,150m', '2,965 acres', NULL, '3', NULL, NULL, NULL, 'TRUE', 'TRUE', '3 hours  30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '4', '4', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Stowe', 'USA', 'N. America', NULL, '321', '1043', '405-1,200m', '485 acres', NULL, '1', NULL, NULL, NULL, 'TRUE', NULL, '3 hrs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '4', '3', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Vail', 'USA', 'N. America', NULL, '2500', '8200', '2,500-3,488m', '5,289 acres', NULL, '3', NULL, NULL, NULL, NULL, 'TRUE', '2 hrs 30 mins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '5', '5', '4', 'TRUE', 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Winter Park', 'USA', 'N. America', NULL, '2743', '9000', '2,743-3,676m', '3,060 acres', NULL, '3', NULL, NULL, NULL, NULL, 'TRUE', '1 hrs 45 mins', NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, '3', '4', '4', '4', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `destinations` VALUES ('Lapland Activity Weeks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25 minutes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TRUE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `locations`
-- 

CREATE TABLE `locations` (
  `id` int(2) NOT NULL auto_increment,
  `location_name` varchar(50) NOT NULL default '',
  `location_parent` tinyint(1) NOT NULL default '0',
  `location_group` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

-- 
-- Dumping data for table `locations`
-- 

INSERT INTO `locations` VALUES (1, 'Europe', 0, 1);
INSERT INTO `locations` VALUES (2, 'N. America', 0, 1);
INSERT INTO `locations` VALUES (3, 'Andorra', 1, 2);
INSERT INTO `locations` VALUES (4, 'Austria', 1, 2);
INSERT INTO `locations` VALUES (5, 'Bulgaria', 1, 2);
INSERT INTO `locations` VALUES (6, 'Canada', 2, 2);
INSERT INTO `locations` VALUES (7, 'Finland', 1, 2);
INSERT INTO `locations` VALUES (8, 'France', 1, 2);
INSERT INTO `locations` VALUES (9, 'Italy', 1, 2);
INSERT INTO `locations` VALUES (10, 'Japan', 99, 2);
INSERT INTO `locations` VALUES (11, 'Norway', 1, 2);
INSERT INTO `locations` VALUES (12, 'Russia', 1, 2);
INSERT INTO `locations` VALUES (13, 'Serbia', 1, 2);
INSERT INTO `locations` VALUES (14, 'Slovenia', 1, 2);
INSERT INTO `locations` VALUES (15, 'Switzerland', 1, 2);
INSERT INTO `locations` VALUES (16, 'USA', 2, 2);
INSERT INTO `locations` VALUES (17, 'Jungfrau', 1, 3);
INSERT INTO `locations` VALUES (18, 'Paradiski', 1, 3);
INSERT INTO `locations` VALUES (19, 'The Three Valleys', 1, 3);
INSERT INTO `locations` VALUES (20, 'Zillertal', 1, 3);
INSERT INTO `locations` VALUES (21, 'Portes du Soleil', 1, 3);
INSERT INTO `locations` VALUES (22, 'Japan', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `resorttypes`
-- 

CREATE TABLE `resorttypes` (
  `id` int(2) NOT NULL auto_increment,
  `resort_type` varchar(50) default NULL,
  `resort_type_field` varchar(50) default NULL,
  `order_id` int(2) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `resorttypes`
-- 

INSERT INTO `resorttypes` VALUES (1, 'Families', 'families', 1);
INSERT INTO `resorttypes` VALUES (2, 'Non-ski', 'non_ski', 2);
INSERT INTO `resorttypes` VALUES (3, 'Nightlife', 'nightlife', 3);
INSERT INTO `resorttypes` VALUES (4, 'Terrain Parks', 'terrain_parks', 4);
INSERT INTO `resorttypes` VALUES (5, 'Childcare', 'crystal_childcare', 5);
INSERT INTO `resorttypes` VALUES (6, 'Ski Host', 'ski_host', 6);
INSERT INTO `resorttypes` VALUES (7, 'Ski Plus', 'ski_plus', 7);
INSERT INTO `resorttypes` VALUES (8, 'Riders Lodge', 'riders_lodge', 8);
INSERT INTO `resorttypes` VALUES (9, 'Finest', 'finest', 9);

-- --------------------------------------------------------

-- 
-- Table structure for table `skifeatures`
-- 

CREATE TABLE `skifeatures` (
  `id` int(2) NOT NULL auto_increment,
  `features` varchar(50) default NULL,
  `features_field` varchar(50) default NULL,
  `order_id` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `skifeatures`
-- 

INSERT INTO `skifeatures` VALUES (1, 'Ski Host', 'ski_host', 1);
INSERT INTO `skifeatures` VALUES (2, 'Glaciers', 'glaciers', 2);
INSERT INTO `skifeatures` VALUES (3, 'Fast Pass', 'fast_pass', 3);
INSERT INTO `skifeatures` VALUES (4, 'Ski Escort', 'ski_escort', 4);
