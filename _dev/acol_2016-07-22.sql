# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.5.42)
# Database: acol
# Generation Time: 2016-07-22 11:38:37 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table perch2_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_categories`;

CREATE TABLE `perch2_categories` (
  `catID` int(10) NOT NULL AUTO_INCREMENT,
  `setID` int(10) unsigned NOT NULL,
  `catParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `catTitle` char(64) NOT NULL DEFAULT '',
  `catSlug` char(64) NOT NULL DEFAULT '',
  `catPath` char(255) NOT NULL DEFAULT '',
  `catDisplayPath` char(255) NOT NULL DEFAULT '',
  `catOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `catTreePosition` char(255) NOT NULL DEFAULT '000',
  `catDynamicFields` text NOT NULL,
  PRIMARY KEY (`catID`),
  KEY `idx_set` (`setID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_category_counts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_category_counts`;

CREATE TABLE `perch2_category_counts` (
  `countID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catID` int(10) unsigned NOT NULL,
  `countType` char(64) NOT NULL DEFAULT '',
  `countValue` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`countID`),
  KEY `idx_cat` (`catID`),
  KEY `idx_cat_type` (`countType`,`catID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_category_sets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_category_sets`;

CREATE TABLE `perch2_category_sets` (
  `setID` int(10) NOT NULL AUTO_INCREMENT,
  `setTitle` char(64) NOT NULL DEFAULT '',
  `setSlug` char(64) NOT NULL DEFAULT '',
  `setTemplate` char(255) NOT NULL DEFAULT 'set.html',
  `setCatTemplate` char(255) NOT NULL DEFAULT 'category.html',
  `setDynamicFields` text,
  PRIMARY KEY (`setID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_content_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_content_index`;

CREATE TABLE `perch2_content_index` (
  `indexID` int(10) NOT NULL AUTO_INCREMENT,
  `itemID` int(10) NOT NULL DEFAULT '0',
  `regionID` int(10) NOT NULL DEFAULT '0',
  `pageID` int(10) NOT NULL DEFAULT '0',
  `itemRev` int(10) NOT NULL DEFAULT '0',
  `indexKey` char(64) NOT NULL DEFAULT '-',
  `indexValue` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`indexID`),
  KEY `idx_key` (`indexKey`),
  KEY `idx_val` (`indexValue`),
  KEY `idx_rev` (`itemRev`),
  KEY `idx_item` (`itemID`),
  KEY `idx_keyval` (`indexKey`,`indexValue`),
  KEY `idx_regrev` (`regionID`,`itemRev`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_content_index` WRITE;
/*!40000 ALTER TABLE `perch2_content_index` DISABLE KEYS */;

INSERT INTO `perch2_content_index` (`indexID`, `itemID`, `regionID`, `pageID`, `itemRev`, `indexKey`, `indexValue`)
VALUES
	(1,1,2,1,1,'image','/perch/resources/co-work2-1.jpg'),
	(2,1,2,1,1,'_id','1'),
	(3,1,2,1,1,'_order','1000'),
	(4,2,1,1,1,'background','white'),
	(5,2,1,1,1,'title',''),
	(6,2,1,1,1,'text','Say hello to a new workspace for creative folk in the heart of York.\nWe offer an inspiring working environment for likeminded creatives, with desks and private offices available on low-fee, hassle-free terms.\nNow open.'),
	(7,2,1,1,1,'_id','2'),
	(8,2,1,1,1,'_order','1000'),
	(9,3,3,1,1,'slides.image','/perch/resources/stu-acol1.jpg'),
	(10,3,3,1,1,'slides.image','/perch/resources/jan16-meet.jpg'),
	(11,3,3,1,1,'slides.image','/perch/resources/acollective-main-co-working.jpg'),
	(12,3,3,1,1,'slides.alt',''),
	(13,3,3,1,1,'slides.alt',''),
	(14,3,3,1,1,'slides.alt',''),
	(15,3,3,1,1,'_id','3'),
	(16,3,3,1,1,'_order','1000'),
	(17,4,4,1,1,'slides.image','/perch/resources/acol-square.jpg'),
	(18,4,4,1,1,'slides.alt',''),
	(19,4,4,1,1,'_id','4'),
	(20,4,4,1,1,'_order','1000'),
	(21,5,5,1,1,'slides.image','/perch/resources/kitchen.jpg'),
	(22,5,5,1,1,'slides.alt',''),
	(23,5,5,1,1,'_id','5'),
	(24,5,5,1,1,'_order','1000'),
	(25,6,6,2,1,'background','orange'),
	(26,6,6,2,1,'title','Our Mission'),
	(27,6,6,2,1,'text','Our mission is something. Proin elit quam, feugiat quis sem eu, euismod feugiat lacus. Donec posuere sapien eu auctor lacinia. Quisque dictum augue nec auctor venenatis. Cras tincidunt tristique mauris, non tincidunt metus elementum quis.\nIn hac habitasse'),
	(28,6,6,2,1,'_id','6'),
	(29,6,6,2,1,'_order','1000'),
	(30,7,7,3,1,'background','orange'),
	(31,7,7,3,1,'title',''),
	(32,7,7,3,1,'text','We have an amazing meeting space. Proin elit quam, feugiat quis sem eu, euismod feugiat lacus. Donec posuere sapien eu auctor lacinia. Quisque dictum augue nec auctor venenatis. Cras tincidunt tristique mauris, non tincidunt metus elementum quis.'),
	(33,7,7,3,1,'_id','7'),
	(34,7,7,3,1,'_order','1000'),
	(35,8,8,3,1,'slides.image','/perch/resources/jan16-meet.jpg'),
	(36,8,8,3,1,'slides.alt',''),
	(37,8,8,3,1,'_id','8'),
	(38,8,8,3,1,'_order','1000'),
	(39,9,9,3,1,'slides.image','/perch/resources/acol-square.jpg'),
	(40,9,9,3,1,'slides.alt',''),
	(41,9,9,3,1,'_id','9'),
	(42,9,9,3,1,'_order','1000'),
	(43,10,10,3,1,'slides.image','/perch/resources/kitchen.jpg'),
	(44,10,10,3,1,'slides.alt',''),
	(45,10,10,3,1,'_id','10'),
	(46,10,10,3,1,'_order','1000'),
	(47,11,11,4,1,'background','white'),
	(48,11,11,4,1,'title',''),
	(49,11,11,4,1,'text','Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem fac'),
	(50,11,11,4,1,'_id','11'),
	(51,11,11,4,1,'_order','1000'),
	(52,12,12,4,1,'background','grey'),
	(53,12,12,4,1,'title','Projects'),
	(54,12,12,4,1,'text','Suspendisse condimentum leo ut dapibus condimentum. Fusce sit amet volutpat mauris. Aenean vitae dapibus quam. Quisque posuere turpis vitae tortor feugiat rutrum.'),
	(55,12,12,4,1,'_id','12'),
	(56,12,12,4,1,'_order','1000'),
	(57,13,13,1,1,'title','Your Very Own Desk'),
	(58,13,13,1,1,'price','£150 +VAT'),
	(59,13,13,1,1,'text','Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.'),
	(60,13,13,1,1,'_id','13'),
	(61,13,13,1,1,'_order','1000'),
	(62,13,13,1,2,'title','Your Very Own Desk'),
	(63,13,13,1,2,'price','£150 +VAT'),
	(64,13,13,1,2,'text','Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.'),
	(65,13,13,1,2,'_id','13'),
	(66,13,13,1,2,'_order','1000'),
	(415,14,14,1,17,'_order','1000'),
	(414,14,14,1,17,'_id','14'),
	(413,14,14,1,17,'studio2_price','£700 +VAT'),
	(412,14,14,1,17,'studio2_label','Studio Two'),
	(425,14,14,1,18,'_order','1000'),
	(424,14,14,1,18,'_id','14'),
	(423,14,14,1,18,'studio2_price','£700 +VAT'),
	(422,14,14,1,18,'studio2_label','Studio Two'),
	(435,14,14,1,19,'_order','1000'),
	(434,14,14,1,19,'_id','14'),
	(433,14,14,1,19,'studio2_price','£700 +VAT'),
	(432,14,14,1,19,'studio2_label','Studio Two'),
	(431,14,14,1,19,'studio2_availability','unavailable'),
	(430,14,14,1,19,'studio1_price','£800 +VAT'),
	(429,14,14,1,19,'studio1_label','Studio One'),
	(428,14,14,1,19,'studio1_availability','available'),
	(427,14,14,1,19,'text','Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.'),
	(426,14,14,1,19,'title','Private Studios'),
	(445,14,14,1,20,'_order','1000'),
	(444,14,14,1,20,'_id','14'),
	(443,14,14,1,20,'studio2_price','£700 +VAT'),
	(442,14,14,1,20,'studio2_label','Studio Two'),
	(441,14,14,1,20,'studio2_availability','available'),
	(440,14,14,1,20,'studio1_price','£800 +VAT'),
	(439,14,14,1,20,'studio1_label','Studio One'),
	(438,14,14,1,20,'studio1_availability','available'),
	(437,14,14,1,20,'text','Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.'),
	(436,14,14,1,20,'title','Private Studios'),
	(455,14,14,1,21,'_order','1000'),
	(454,14,14,1,21,'_id','14'),
	(453,14,14,1,21,'studio2_price','£700 +VAT'),
	(452,14,14,1,21,'studio2_label','Studio Two'),
	(451,14,14,1,21,'studio2_availability','unavailable'),
	(450,14,14,1,21,'studio1_price','£800 +VAT'),
	(449,14,14,1,21,'studio1_label','Studio One'),
	(448,14,14,1,21,'studio1_availability','unavailable'),
	(447,14,14,1,21,'text','Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.'),
	(446,14,14,1,21,'title','Private Studios'),
	(465,14,14,1,22,'_order','1000'),
	(464,14,14,1,22,'_id','14'),
	(463,14,14,1,22,'studio2_price','£700 +VAT'),
	(462,14,14,1,22,'studio2_label','Studio Two'),
	(461,14,14,1,22,'studio2_availability','available'),
	(460,14,14,1,22,'studio1_price','£800 +VAT'),
	(459,14,14,1,22,'studio1_label','Studio One'),
	(458,14,14,1,22,'studio1_availability','unavailable'),
	(457,14,14,1,22,'text','Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.'),
	(456,14,14,1,22,'title','Private Studios'),
	(377,14,14,1,15,'_order','1000'),
	(376,14,14,1,15,'_id','14'),
	(375,14,14,1,15,'studio2_price','£700 +VAT'),
	(374,14,14,1,15,'studio2_label','Studio Two'),
	(373,14,14,1,15,'studio2_availability','available'),
	(372,14,14,1,15,'studio1_price','£800 +VAT'),
	(371,14,14,1,15,'studio1_label','Studio One'),
	(370,14,14,1,15,'studio1_availability','unavailable'),
	(369,14,14,1,15,'text','Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.'),
	(368,14,14,1,15,'title','Private Studios'),
	(405,14,14,1,16,'_order','1000'),
	(404,14,14,1,16,'_id','14'),
	(403,14,14,1,16,'studio2_price','£700 +VAT'),
	(402,14,14,1,16,'studio2_label','Studio Two'),
	(401,14,14,1,16,'studio2_availability','available'),
	(400,14,14,1,16,'studio1_price','£800 +VAT'),
	(399,14,14,1,16,'studio1_label','Studio One'),
	(398,14,14,1,16,'studio1_availability','unavailable'),
	(397,14,14,1,16,'text','Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.'),
	(396,14,14,1,16,'title','Private Studios'),
	(411,14,14,1,17,'studio2_availability','unavailable'),
	(410,14,14,1,17,'studio1_price','£800 +VAT'),
	(409,14,14,1,17,'studio1_label','Studio One'),
	(408,14,14,1,17,'studio1_availability','unavailable'),
	(407,14,14,1,17,'text','Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.'),
	(406,14,14,1,17,'title','Private Studios'),
	(421,14,14,1,18,'studio2_availability','unavailable'),
	(420,14,14,1,18,'studio1_price','£800 +VAT'),
	(419,14,14,1,18,'studio1_label','Studio One'),
	(418,14,14,1,18,'studio1_availability','available'),
	(417,14,14,1,18,'text','Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.'),
	(416,14,14,1,18,'title','Private Studios'),
	(185,15,15,1,1,'free1',''),
	(186,15,15,1,1,'free2',''),
	(187,15,15,1,1,'free3',''),
	(188,15,15,1,1,'_id','15'),
	(189,15,15,1,1,'_order','1000'),
	(190,15,15,1,2,'free1','Free Printing'),
	(191,15,15,1,2,'free2','Free Meeting Room'),
	(192,15,15,1,2,'free3','Free Coffee'),
	(193,15,15,1,2,'_id','15'),
	(194,15,15,1,2,'_order','1000'),
	(195,16,16,3,1,'text','Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi.'),
	(196,16,16,3,1,'half_rate','35'),
	(197,16,16,3,1,'full_rate','55'),
	(198,16,16,3,1,'_id','16'),
	(199,16,16,3,1,'_order','1000'),
	(200,16,16,3,2,'text','Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi.'),
	(201,16,16,3,2,'half_rate','35'),
	(202,16,16,3,2,'full_rate','55'),
	(203,16,16,3,2,'_id','16'),
	(204,16,16,3,2,'_order','1000'),
	(205,16,16,3,3,'text','Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi.'),
	(206,16,16,3,3,'half_rate','35'),
	(207,16,16,3,3,'full_rate','55'),
	(208,16,16,3,3,'_id','16'),
	(209,16,16,3,3,'_order','1000'),
	(210,16,16,3,4,'text','Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi.'),
	(211,16,16,3,4,'half_rate','35'),
	(212,16,16,3,4,'full_rate','55'),
	(213,16,16,3,4,'_id','16'),
	(214,16,16,3,4,'_order','1000'),
	(215,17,17,3,1,'title',''),
	(216,17,17,3,1,'_id','17'),
	(217,17,17,3,1,'_order','1000'),
	(218,17,17,3,2,'title','Always Included'),
	(219,17,17,3,2,'items.item','Super-fast Wi-Fi'),
	(220,17,17,3,2,'items.item','Room for up to 8 People'),
	(221,17,17,3,2,'items.item','Whiteboard & Paper Roll'),
	(222,17,17,3,2,'items.item','42\" TV'),
	(223,17,17,3,2,'_id','17'),
	(224,17,17,3,2,'_order','1000'),
	(225,18,18,3,1,'title','Optional Extras'),
	(226,18,18,3,1,'items.item','Tea & Coffee'),
	(227,18,18,3,1,'items.item','Catering'),
	(228,18,18,3,1,'_id','18'),
	(229,18,18,3,1,'_order','1000'),
	(230,18,18,3,2,'title','Optional Extras'),
	(231,18,18,3,2,'items.item','Tea & Coffee'),
	(232,18,18,3,2,'items.item','Catering'),
	(233,18,18,3,2,'items.item','Pens & Paper'),
	(234,18,18,3,2,'_id','18'),
	(235,18,18,3,2,'_order','1000'),
	(236,18,18,3,3,'title','Optional Extras'),
	(237,18,18,3,3,'items.item','Tea & Coffee'),
	(238,18,18,3,3,'items.item','Catering'),
	(239,18,18,3,3,'items.item','Pens & Paper'),
	(240,18,18,3,3,'_id','18'),
	(241,18,18,3,3,'_order','1000'),
	(242,18,18,3,4,'title','Optional Extras'),
	(243,18,18,3,4,'items.item','Tea & Coffee'),
	(244,18,18,3,4,'items.item','Catering'),
	(245,18,18,3,4,'items.item','Pens & Paper'),
	(246,18,18,3,4,'_id','18'),
	(247,18,18,3,4,'_order','1000'),
	(248,17,17,3,3,'title','Always Included'),
	(249,17,17,3,3,'items.item','Super-fast Wi-Fi'),
	(250,17,17,3,3,'items.item','Room for up to 8 People'),
	(251,17,17,3,3,'items.item','Whiteboard & Paper Roll'),
	(252,17,17,3,3,'items.item','42\" TV'),
	(253,17,17,3,3,'_id','17'),
	(254,17,17,3,3,'_order','1000'),
	(255,17,17,3,4,'title','Always Included'),
	(256,17,17,3,4,'items.item','Super-fast Wi-Fi'),
	(257,17,17,3,4,'items.item','Room for up to 8 People'),
	(258,17,17,3,4,'items.item','Whiteboard & Paper Roll'),
	(259,17,17,3,4,'items.item','42\" TV'),
	(260,17,17,3,4,'_id','17'),
	(261,17,17,3,4,'_order','1000'),
	(262,19,19,1,1,'text','Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Quisque interdum blandit est id volutpat. Etiam in ipsum sagittis, accumsan ipsum vitae, tincidunt metus.'),
	(263,19,19,1,1,'success','Thanks. Ut nisi sem, dignissim et ultricies ac, vehicula at quam. Donec suscipit feugiat lectus nec imperdiet. Nulla a tellus nisl. Cras luctus enim sapien, at porta magna varius eget.'),
	(264,19,19,1,1,'_id','19'),
	(265,19,19,1,1,'_order','1000'),
	(266,19,19,1,2,'text','Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Quisque interdum blandit est id volutpat.'),
	(267,19,19,1,2,'success','Thanks. Ut nisi sem, dignissim et ultricies ac, vehicula at quam. Donec suscipit feugiat lectus nec imperdiet. Nulla a tellus nisl. Cras luctus enim sapien, at porta magna varius eget.'),
	(268,19,19,1,2,'_id','19'),
	(269,19,19,1,2,'_order','1000'),
	(270,19,19,1,3,'text','Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.'),
	(271,19,19,1,3,'success','Thanks. We’ll be in touch in the next 3 working days.'),
	(272,19,19,1,3,'_id','19'),
	(273,19,19,1,3,'_order','1000'),
	(274,19,19,1,4,'text','Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.'),
	(275,19,19,1,4,'success','Thanks. We’ll be in touch in the next 3 working days.'),
	(276,19,19,1,4,'_id','19'),
	(277,19,19,1,4,'_order','1000'),
	(278,19,19,1,5,'text','Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.'),
	(279,19,19,1,5,'success','Thanks. We’ll be in touch in the next 3 working days.'),
	(280,19,19,1,5,'_id','19'),
	(281,19,19,1,5,'_order','1000'),
	(282,19,19,1,6,'text','Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.'),
	(283,19,19,1,6,'success','Thanks. We’ll be in touch in the next 3 working days.'),
	(284,19,19,1,6,'_id','19'),
	(285,19,19,1,6,'_order','1000'),
	(286,20,20,1,1,'quotes.quote','Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem fac'),
	(287,20,20,1,1,'quotes.quote','Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti.'),
	(288,20,20,1,1,'quotes.quote','Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.'),
	(289,20,20,1,1,'quotes.cite','Cras convallis'),
	(290,20,20,1,1,'quotes.cite','Integer et'),
	(291,20,20,1,1,'quotes.cite','Suspendisse at'),
	(292,20,20,1,1,'_id','20'),
	(293,20,20,1,1,'_order','1000'),
	(294,20,20,1,2,'quotes.quote','Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem fac'),
	(295,20,20,1,2,'quotes.quote','Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti.'),
	(296,20,20,1,2,'quotes.quote','Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.'),
	(297,20,20,1,2,'quotes.cite','Cras convallis'),
	(298,20,20,1,2,'quotes.cite','Integer et'),
	(299,20,20,1,2,'quotes.cite','Suspendisse at'),
	(300,20,20,1,2,'_id','20'),
	(301,20,20,1,2,'_order','1000'),
	(302,20,20,1,3,'quotes.quote','Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem fac'),
	(303,20,20,1,3,'quotes.quote','Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti.'),
	(304,20,20,1,3,'quotes.quote','Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.'),
	(305,20,20,1,3,'quotes.cite','Cras convallis'),
	(306,20,20,1,3,'quotes.cite','Integer et'),
	(307,20,20,1,3,'quotes.cite','Suspendisse at'),
	(308,20,20,1,3,'_id','20'),
	(309,20,20,1,3,'_order','1000'),
	(310,20,20,1,4,'quotes.quote','Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem fac'),
	(311,20,20,1,4,'quotes.quote','Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti.'),
	(312,20,20,1,4,'quotes.quote','Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.'),
	(313,20,20,1,4,'quotes.cite','Cras convallis'),
	(314,20,20,1,4,'quotes.cite','Integer et'),
	(315,20,20,1,4,'quotes.cite','Suspendisse at'),
	(316,20,20,1,4,'_id','20'),
	(317,20,20,1,4,'_order','1000'),
	(318,20,20,1,5,'quotes.quote','Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem fac'),
	(319,20,20,1,5,'quotes.quote','Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti.'),
	(320,20,20,1,5,'quotes.quote','Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.'),
	(321,20,20,1,5,'quotes.cite','Cras convallis'),
	(322,20,20,1,5,'quotes.cite','Integer et'),
	(323,20,20,1,5,'quotes.cite','Suspendisse at'),
	(324,20,20,1,5,'_id','20'),
	(325,20,20,1,5,'_order','1000'),
	(326,21,22,2,1,'qa.question','Phasellus leo magna, tincidunt et adipiscing dictum?'),
	(327,21,22,2,1,'qa.question','Mauris congue mi eu mollis faucibus?'),
	(328,21,22,2,1,'qa.question','Ut sit amet magna orci?'),
	(329,21,22,2,1,'qa.question','Integer sit amet varius ipsum?'),
	(330,21,22,2,1,'qa.question','Suspendisse condimentum leo ut?'),
	(331,21,22,2,1,'qa.answer','Cras feugiat commodo magna, et hendrerit arcu adipiscing et.'),
	(332,21,22,2,1,'qa.answer','Cras et dui mollis, tempus velit placerat, sodales tellus.'),
	(333,21,22,2,1,'qa.answer','Aliquam tempus id risus eu ullamcorper. Proin et accumsan felis, scelerisque molestie sapien.'),
	(334,21,22,2,1,'qa.answer','Nulla dictum tincidunt turpis eu consequat. Sed adipiscing eros a nisi dictum mollis.'),
	(335,21,22,2,1,'qa.answer','Donec commodo fermentum neque, at sagittis libero faucibus nec.'),
	(336,21,22,2,1,'_id','21'),
	(337,21,22,2,1,'_order','1000'),
	(338,21,22,2,2,'qa.question','Phasellus leo magna, tincidunt et adipiscing dictum?'),
	(339,21,22,2,2,'qa.question','Mauris congue mi eu mollis faucibus?'),
	(340,21,22,2,2,'qa.question','Ut sit amet magna orci?'),
	(341,21,22,2,2,'qa.question','Integer sit amet varius ipsum?'),
	(342,21,22,2,2,'qa.question','Suspendisse condimentum leo ut?'),
	(343,21,22,2,2,'qa.answer','Cras feugiat commodo magna, et hendrerit arcu adipiscing et.'),
	(344,21,22,2,2,'qa.answer','Cras et dui mollis, tempus velit placerat, sodales tellus.'),
	(345,21,22,2,2,'qa.answer','Aliquam tempus id risus eu ullamcorper. Proin et accumsan felis, scelerisque molestie sapien.'),
	(346,21,22,2,2,'qa.answer','Nulla dictum tincidunt turpis eu consequat. Sed adipiscing eros a nisi dictum mollis.'),
	(347,21,22,2,2,'qa.answer','Donec commodo fermentum neque, at sagittis libero faucibus nec.'),
	(348,21,22,2,2,'_id','21'),
	(349,21,22,2,2,'_order','1000'),
	(350,22,23,4,1,'_id','22'),
	(351,22,23,4,1,'_order','1000'),
	(352,22,23,4,2,'text','Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.'),
	(353,22,23,4,2,'_id','22'),
	(354,22,23,4,2,'_order','1000'),
	(355,23,25,4,1,'text','BBC Radio 6 Music'),
	(356,23,25,4,1,'_id','23'),
	(357,23,25,4,1,'_order','1000'),
	(378,13,13,1,3,'title','Your Very Own Desk'),
	(379,13,13,1,3,'availability','available'),
	(380,13,13,1,3,'price','£150 +VAT'),
	(381,13,13,1,3,'text','Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.'),
	(382,13,13,1,3,'_id','13'),
	(383,13,13,1,3,'_order','1000'),
	(384,13,13,1,4,'title','Your Very Own Desk'),
	(385,13,13,1,4,'availability','unavailable'),
	(386,13,13,1,4,'price','£150 +VAT'),
	(387,13,13,1,4,'text','Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.'),
	(388,13,13,1,4,'_id','13'),
	(389,13,13,1,4,'_order','1000'),
	(390,13,13,1,5,'title','Your Very Own Desk'),
	(391,13,13,1,5,'availability','available'),
	(392,13,13,1,5,'price','£150 +VAT'),
	(393,13,13,1,5,'text','Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.'),
	(394,13,13,1,5,'_id','13'),
	(395,13,13,1,5,'_order','1000'),
	(466,15,15,1,3,'free1','Free Printing'),
	(467,15,15,1,3,'free2','Free Meeting Room'),
	(468,15,15,1,3,'free3','Free Coffee'),
	(469,15,15,1,3,'_id','15'),
	(470,15,15,1,3,'_order','1000'),
	(1020,24,26,4,17,'members.url','https://twitter.com/HollyEsquire'),
	(1019,24,26,4,17,'members.url','http://t.co/BkOKVLZ5uc'),
	(1018,24,26,4,17,'members.url','http://do-make.co/'),
	(1017,24,26,4,17,'members.url','https://twitter.com/stugoulden'),
	(1016,24,26,4,17,'members.photo','/perch/resources/simon.jpeg'),
	(1015,24,26,4,17,'members.photo','/perch/resources/rick.jpeg'),
	(650,24,26,4,10,'members.name','Mike Leigh Cooper'),
	(649,24,26,4,10,'members.name','Jack Casling'),
	(648,24,26,4,10,'members.name','Holly Squire'),
	(647,24,26,4,10,'members.name','Amy Trumpeter'),
	(646,24,26,4,10,'members.name','Mike Harmer'),
	(645,24,26,4,10,'members.name','Stu Goulden'),
	(692,24,26,4,11,'members.name','David Edmunds'),
	(691,24,26,4,11,'members.name','James Howard'),
	(690,24,26,4,11,'members.name','Kevin Craighead'),
	(689,24,26,4,11,'members.name','Jonathan Sillence'),
	(688,24,26,4,11,'members.name','Mike Leigh Cooper'),
	(687,24,26,4,11,'members.name','Jack Casling'),
	(686,24,26,4,11,'members.name','Holly Squire'),
	(685,24,26,4,11,'members.name','Amy Trumpeter'),
	(684,24,26,4,11,'members.name','Mike Harmer'),
	(683,24,26,4,11,'members.name','Stu Goulden'),
	(738,24,26,4,12,'members.photo','/perch/resources/trumpeter.jpeg'),
	(737,24,26,4,12,'members.photo','/perch/resources/mikeharmer.jpg'),
	(736,24,26,4,12,'members.photo','/perch/resources/stu.jpg'),
	(735,24,26,4,12,'members.name','Jonic Linley'),
	(734,24,26,4,12,'members.name','David Edmunds'),
	(733,24,26,4,12,'members.name','James Howard'),
	(732,24,26,4,12,'members.name','Kevin Craighead'),
	(731,24,26,4,12,'members.name','Jonathan Sillence'),
	(730,24,26,4,12,'members.name','Mike Leigh Cooper'),
	(729,24,26,4,12,'members.name','Jack Casling'),
	(728,24,26,4,12,'members.name','Holly Squire'),
	(727,24,26,4,12,'members.name','Amy Trumpeter'),
	(726,24,26,4,12,'members.name','Mike Harmer'),
	(725,24,26,4,12,'members.name','Stu Goulden'),
	(788,24,26,4,13,'members.photo','/perch/resources/mikecooper.png'),
	(787,24,26,4,13,'members.photo','/perch/resources/jack.jpg'),
	(786,24,26,4,13,'members.photo','/perch/resources/holly.jpeg'),
	(785,24,26,4,13,'members.photo','/perch/resources/trumpeter.jpeg'),
	(784,24,26,4,13,'members.photo','/perch/resources/mikeharmer.jpg'),
	(783,24,26,4,13,'members.photo','/perch/resources/stu.jpg'),
	(782,24,26,4,13,'members.name','Carlotta Allum'),
	(781,24,26,4,13,'members.name','Jonic Linley'),
	(780,24,26,4,13,'members.name','David Edmunds'),
	(779,24,26,4,13,'members.name','James Howard'),
	(778,24,26,4,13,'members.name','Kevin Craighead'),
	(777,24,26,4,13,'members.name','Jonathan Sillence'),
	(776,24,26,4,13,'members.name','Mike Leigh Cooper'),
	(775,24,26,4,13,'members.name','Jack Casling'),
	(774,24,26,4,13,'members.name','Holly Squire'),
	(773,24,26,4,13,'members.name','Amy Trumpeter'),
	(772,24,26,4,13,'members.name','Mike Harmer'),
	(771,24,26,4,13,'members.name','Stu Goulden'),
	(846,24,26,4,14,'members.photo','/perch/resources/lucy.jpeg'),
	(845,24,26,4,14,'members.photo','/perch/resources/carlotta.jpg'),
	(844,24,26,4,14,'members.photo','/perch/resources/jonic.jpg'),
	(843,24,26,4,14,'members.photo','/perch/resources/david.jpg'),
	(842,24,26,4,14,'members.photo','/perch/resources/jameshoward.jpeg'),
	(841,24,26,4,14,'members.photo','/perch/resources/kevin.jpg'),
	(840,24,26,4,14,'members.photo','/perch/resources/jay.jpeg'),
	(839,24,26,4,14,'members.photo','/perch/resources/mikecooper.png'),
	(838,24,26,4,14,'members.photo','/perch/resources/jack.jpg'),
	(837,24,26,4,14,'members.photo','/perch/resources/holly.jpeg'),
	(836,24,26,4,14,'members.photo','/perch/resources/trumpeter.jpeg'),
	(835,24,26,4,14,'members.photo','/perch/resources/mikeharmer.jpg'),
	(834,24,26,4,14,'members.photo','/perch/resources/stu.jpg'),
	(833,24,26,4,14,'members.name','Lucy Hutchings Hunt'),
	(832,24,26,4,14,'members.name','Carlotta Allum'),
	(831,24,26,4,14,'members.name','Jonic Linley'),
	(830,24,26,4,14,'members.name','David Edmunds'),
	(829,24,26,4,14,'members.name','James Howard'),
	(828,24,26,4,14,'members.name','Kevin Craighead'),
	(827,24,26,4,14,'members.name','Jonathan Sillence'),
	(826,24,26,4,14,'members.name','Mike Leigh Cooper'),
	(825,24,26,4,14,'members.name','Jack Casling'),
	(824,24,26,4,14,'members.name','Holly Squire'),
	(823,24,26,4,14,'members.name','Amy Trumpeter'),
	(822,24,26,4,14,'members.name','Mike Harmer'),
	(821,24,26,4,14,'members.name','Stu Goulden'),
	(900,24,26,4,15,'members.photo','/perch/resources/lucy.jpeg'),
	(899,24,26,4,15,'members.photo','/perch/resources/carlotta.jpg'),
	(898,24,26,4,15,'members.photo','/perch/resources/jonic.jpg'),
	(897,24,26,4,15,'members.photo','/perch/resources/david.jpg'),
	(896,24,26,4,15,'members.photo','/perch/resources/jameshoward.jpeg'),
	(895,24,26,4,15,'members.photo','/perch/resources/kevin.jpg'),
	(894,24,26,4,15,'members.photo','/perch/resources/jay.jpeg'),
	(893,24,26,4,15,'members.photo','/perch/resources/mikecooper.png'),
	(892,24,26,4,15,'members.photo','/perch/resources/jack.jpg'),
	(891,24,26,4,15,'members.photo','/perch/resources/holly.jpeg'),
	(890,24,26,4,15,'members.photo','/perch/resources/amy.jpg'),
	(889,24,26,4,15,'members.photo','/perch/resources/mikeharmer.jpg'),
	(888,24,26,4,15,'members.photo','/perch/resources/stu.jpg'),
	(887,24,26,4,15,'members.name','Lucy Hutchings Hunt'),
	(886,24,26,4,15,'members.name','Carlotta Allum'),
	(885,24,26,4,15,'members.name','Jonic Linley'),
	(884,24,26,4,15,'members.name','David Edmunds'),
	(883,24,26,4,15,'members.name','James Howard'),
	(882,24,26,4,15,'members.name','Kevin Craighead'),
	(881,24,26,4,15,'members.name','Jonathan Sillence'),
	(880,24,26,4,15,'members.name','Mike Leigh Cooper'),
	(879,24,26,4,15,'members.name','Jack Casling'),
	(878,24,26,4,15,'members.name','Holly Squire'),
	(877,24,26,4,15,'members.name','Amy Trumpeter'),
	(876,24,26,4,15,'members.name','Mike Harmer'),
	(875,24,26,4,15,'members.name','Stu Goulden'),
	(962,24,26,4,16,'members.url','https://twitter.com/Mikeleighcooper'),
	(961,24,26,4,16,'members.url','http://www.choirofvision.com/'),
	(960,24,26,4,16,'members.url','https://twitter.com/HollyEsquire'),
	(959,24,26,4,16,'members.url','http://t.co/BkOKVLZ5uc'),
	(958,24,26,4,16,'members.url','http://do-make.co/'),
	(957,24,26,4,16,'members.url','https://twitter.com/stugoulden'),
	(956,24,26,4,16,'members.photo','/perch/resources/rick.jpeg'),
	(955,24,26,4,16,'members.photo','/perch/resources/lucy.jpeg'),
	(954,24,26,4,16,'members.photo','/perch/resources/carlotta.jpg'),
	(953,24,26,4,16,'members.photo','/perch/resources/jonic.jpg'),
	(952,24,26,4,16,'members.photo','/perch/resources/david.jpg'),
	(951,24,26,4,16,'members.photo','/perch/resources/jameshoward.jpeg'),
	(950,24,26,4,16,'members.photo','/perch/resources/kevin.jpg'),
	(949,24,26,4,16,'members.photo','/perch/resources/jay.jpeg'),
	(948,24,26,4,16,'members.photo','/perch/resources/mikecooper.png'),
	(947,24,26,4,16,'members.photo','/perch/resources/jack.jpg'),
	(946,24,26,4,16,'members.photo','/perch/resources/holly.jpeg'),
	(945,24,26,4,16,'members.photo','/perch/resources/amy.jpg'),
	(944,24,26,4,16,'members.photo','/perch/resources/mikeharmer.jpg'),
	(943,24,26,4,16,'members.photo','/perch/resources/stu.jpg'),
	(942,24,26,4,16,'members.name','Rick Chadwick'),
	(941,24,26,4,16,'members.name','Lucy Hutchings Hunt'),
	(940,24,26,4,16,'members.name','Carlotta Allum'),
	(939,24,26,4,16,'members.name','Jonic Linley'),
	(938,24,26,4,16,'members.name','David Edmunds'),
	(937,24,26,4,16,'members.name','James Howard'),
	(936,24,26,4,16,'members.name','Kevin Craighead'),
	(935,24,26,4,16,'members.name','Jonathan Sillence'),
	(934,24,26,4,16,'members.name','Mike Leigh Cooper'),
	(933,24,26,4,16,'members.name','Jack Casling'),
	(932,24,26,4,16,'members.name','Holly Squire'),
	(931,24,26,4,16,'members.name','Amy Trumpeter'),
	(930,24,26,4,16,'members.name','Mike Harmer'),
	(929,24,26,4,16,'members.name','Stu Goulden'),
	(1014,24,26,4,17,'members.photo','/perch/resources/lucy.jpeg'),
	(1013,24,26,4,17,'members.photo','/perch/resources/carlotta.jpg'),
	(1012,24,26,4,17,'members.photo','/perch/resources/jonic.jpg'),
	(1011,24,26,4,17,'members.photo','/perch/resources/david.jpg'),
	(1010,24,26,4,17,'members.photo','/perch/resources/jameshoward.jpeg'),
	(1009,24,26,4,17,'members.photo','/perch/resources/kevin.jpg'),
	(1008,24,26,4,17,'members.photo','/perch/resources/jay.jpeg'),
	(1007,24,26,4,17,'members.photo','/perch/resources/mikecooper.png'),
	(1006,24,26,4,17,'members.photo','/perch/resources/jack.jpg'),
	(1005,24,26,4,17,'members.photo','/perch/resources/holly.jpeg'),
	(1004,24,26,4,17,'members.photo','/perch/resources/amy.jpg'),
	(1003,24,26,4,17,'members.photo','/perch/resources/mikeharmer.jpg'),
	(1002,24,26,4,17,'members.photo','/perch/resources/stu.jpg'),
	(1001,24,26,4,17,'members.name','Simon Long'),
	(1000,24,26,4,17,'members.name','Rick Chadwick'),
	(999,24,26,4,17,'members.name','Lucy Hutchings Hunt'),
	(998,24,26,4,17,'members.name','Carlotta Allum'),
	(997,24,26,4,17,'members.name','Jonic Linley'),
	(996,24,26,4,17,'members.name','David Edmunds'),
	(995,24,26,4,17,'members.name','James Howard'),
	(994,24,26,4,17,'members.name','Kevin Craighead'),
	(993,24,26,4,17,'members.name','Jonathan Sillence'),
	(992,24,26,4,17,'members.name','Mike Leigh Cooper'),
	(991,24,26,4,17,'members.name','Jack Casling'),
	(990,24,26,4,17,'members.name','Holly Squire'),
	(989,24,26,4,17,'members.name','Amy Trumpeter'),
	(988,24,26,4,17,'members.name','Mike Harmer'),
	(987,24,26,4,17,'members.name','Stu Goulden'),
	(651,24,26,4,10,'members.name','Jonathan Sillence'),
	(652,24,26,4,10,'members.name','Kevin Craighead'),
	(653,24,26,4,10,'members.name','James Howard'),
	(654,24,26,4,10,'members.photo','/perch/resources/stu.jpg'),
	(655,24,26,4,10,'members.photo','/perch/resources/mikeharmer.jpg'),
	(656,24,26,4,10,'members.photo','/perch/resources/trumpeter.jpeg'),
	(657,24,26,4,10,'members.photo','/perch/resources/holly.jpeg'),
	(658,24,26,4,10,'members.photo','/perch/resources/jack.jpg'),
	(659,24,26,4,10,'members.photo','/perch/resources/mikecooper.png'),
	(660,24,26,4,10,'members.photo','/perch/resources/jay.jpeg'),
	(661,24,26,4,10,'members.photo','/perch/resources/kevin.jpg'),
	(662,24,26,4,10,'members.photo','/perch/resources/jameshoward.jpeg'),
	(663,24,26,4,10,'members.url','https://twitter.com/stugoulden'),
	(664,24,26,4,10,'members.url','http://do-make.co/'),
	(665,24,26,4,10,'members.url','http://t.co/BkOKVLZ5uc'),
	(666,24,26,4,10,'members.url','https://twitter.com/HollyEsquire'),
	(667,24,26,4,10,'members.url','http://www.choirofvision.com/'),
	(668,24,26,4,10,'members.url','https://twitter.com/Mikeleighcooper'),
	(669,24,26,4,10,'members.url','https://twitter.com/JaySillence'),
	(670,24,26,4,10,'members.url','https://twitter.com/designyork'),
	(671,24,26,4,10,'members.url','http://www.reetgood.co.uk/'),
	(672,24,26,4,10,'members.name','Stu Goulden'),
	(673,24,26,4,10,'members.name','Mike Harmer'),
	(674,24,26,4,10,'members.name','Amy Trumpeter'),
	(675,24,26,4,10,'members.name','Holly Squire'),
	(676,24,26,4,10,'members.name','Jack Casling'),
	(677,24,26,4,10,'members.name','Mike Leigh Cooper'),
	(678,24,26,4,10,'members.name','Jonathan Sillence'),
	(679,24,26,4,10,'members.name','Kevin Craighead'),
	(680,24,26,4,10,'members.name','James Howard'),
	(681,24,26,4,10,'_id','24'),
	(682,24,26,4,10,'_order','1000'),
	(693,24,26,4,11,'members.photo','/perch/resources/stu.jpg'),
	(694,24,26,4,11,'members.photo','/perch/resources/mikeharmer.jpg'),
	(695,24,26,4,11,'members.photo','/perch/resources/trumpeter.jpeg'),
	(696,24,26,4,11,'members.photo','/perch/resources/holly.jpeg'),
	(697,24,26,4,11,'members.photo','/perch/resources/jack.jpg'),
	(698,24,26,4,11,'members.photo','/perch/resources/mikecooper.png'),
	(699,24,26,4,11,'members.photo','/perch/resources/jay.jpeg'),
	(700,24,26,4,11,'members.photo','/perch/resources/kevin.jpg'),
	(701,24,26,4,11,'members.photo','/perch/resources/jameshoward.jpeg'),
	(702,24,26,4,11,'members.photo','/perch/resources/david.jpg'),
	(703,24,26,4,11,'members.url','https://twitter.com/stugoulden'),
	(704,24,26,4,11,'members.url','http://do-make.co/'),
	(705,24,26,4,11,'members.url','http://t.co/BkOKVLZ5uc'),
	(706,24,26,4,11,'members.url','https://twitter.com/HollyEsquire'),
	(707,24,26,4,11,'members.url','http://www.choirofvision.com/'),
	(708,24,26,4,11,'members.url','https://twitter.com/Mikeleighcooper'),
	(709,24,26,4,11,'members.url','https://twitter.com/JaySillence'),
	(710,24,26,4,11,'members.url','https://twitter.com/designyork'),
	(711,24,26,4,11,'members.url','http://www.reetgood.co.uk/'),
	(712,24,26,4,11,'members.url','https://twitter.com/departsltddavid'),
	(713,24,26,4,11,'members.name','Stu Goulden'),
	(714,24,26,4,11,'members.name','Mike Harmer'),
	(715,24,26,4,11,'members.name','Amy Trumpeter'),
	(716,24,26,4,11,'members.name','Holly Squire'),
	(717,24,26,4,11,'members.name','Jack Casling'),
	(718,24,26,4,11,'members.name','Mike Leigh Cooper'),
	(719,24,26,4,11,'members.name','Jonathan Sillence'),
	(720,24,26,4,11,'members.name','Kevin Craighead'),
	(721,24,26,4,11,'members.name','James Howard'),
	(722,24,26,4,11,'members.name','David Edmunds'),
	(723,24,26,4,11,'_id','24'),
	(724,24,26,4,11,'_order','1000'),
	(739,24,26,4,12,'members.photo','/perch/resources/holly.jpeg'),
	(740,24,26,4,12,'members.photo','/perch/resources/jack.jpg'),
	(741,24,26,4,12,'members.photo','/perch/resources/mikecooper.png'),
	(742,24,26,4,12,'members.photo','/perch/resources/jay.jpeg'),
	(743,24,26,4,12,'members.photo','/perch/resources/kevin.jpg'),
	(744,24,26,4,12,'members.photo','/perch/resources/jameshoward.jpeg'),
	(745,24,26,4,12,'members.photo','/perch/resources/david.jpg'),
	(746,24,26,4,12,'members.photo','/perch/resources/jonic.jpg'),
	(747,24,26,4,12,'members.url','https://twitter.com/stugoulden'),
	(748,24,26,4,12,'members.url','http://do-make.co/'),
	(749,24,26,4,12,'members.url','http://t.co/BkOKVLZ5uc'),
	(750,24,26,4,12,'members.url','https://twitter.com/HollyEsquire'),
	(751,24,26,4,12,'members.url','http://www.choirofvision.com/'),
	(752,24,26,4,12,'members.url','https://twitter.com/Mikeleighcooper'),
	(753,24,26,4,12,'members.url','https://twitter.com/JaySillence'),
	(754,24,26,4,12,'members.url','https://twitter.com/designyork'),
	(755,24,26,4,12,'members.url','http://www.reetgood.co.uk/'),
	(756,24,26,4,12,'members.url','https://twitter.com/departsltddavid'),
	(757,24,26,4,12,'members.url','https://twitter.com/jonic'),
	(758,24,26,4,12,'members.name','Stu Goulden'),
	(759,24,26,4,12,'members.name','Mike Harmer'),
	(760,24,26,4,12,'members.name','Amy Trumpeter'),
	(761,24,26,4,12,'members.name','Holly Squire'),
	(762,24,26,4,12,'members.name','Jack Casling'),
	(763,24,26,4,12,'members.name','Mike Leigh Cooper'),
	(764,24,26,4,12,'members.name','Jonathan Sillence'),
	(765,24,26,4,12,'members.name','Kevin Craighead'),
	(766,24,26,4,12,'members.name','James Howard'),
	(767,24,26,4,12,'members.name','David Edmunds'),
	(768,24,26,4,12,'members.name','Jonic Linley'),
	(769,24,26,4,12,'_id','24'),
	(770,24,26,4,12,'_order','1000'),
	(789,24,26,4,13,'members.photo','/perch/resources/jay.jpeg'),
	(790,24,26,4,13,'members.photo','/perch/resources/kevin.jpg'),
	(791,24,26,4,13,'members.photo','/perch/resources/jameshoward.jpeg'),
	(792,24,26,4,13,'members.photo','/perch/resources/david.jpg'),
	(793,24,26,4,13,'members.photo','/perch/resources/jonic.jpg'),
	(794,24,26,4,13,'members.photo','/perch/resources/carlotta.jpg'),
	(795,24,26,4,13,'members.url','https://twitter.com/stugoulden'),
	(796,24,26,4,13,'members.url','http://do-make.co/'),
	(797,24,26,4,13,'members.url','http://t.co/BkOKVLZ5uc'),
	(798,24,26,4,13,'members.url','https://twitter.com/HollyEsquire'),
	(799,24,26,4,13,'members.url','http://www.choirofvision.com/'),
	(800,24,26,4,13,'members.url','https://twitter.com/Mikeleighcooper'),
	(801,24,26,4,13,'members.url','https://twitter.com/JaySillence'),
	(802,24,26,4,13,'members.url','https://twitter.com/designyork'),
	(803,24,26,4,13,'members.url','http://www.reetgood.co.uk/'),
	(804,24,26,4,13,'members.url','https://twitter.com/departsltddavid'),
	(805,24,26,4,13,'members.url','https://twitter.com/jonic'),
	(806,24,26,4,13,'members.url','https://twitter.com/thegaytraitor'),
	(807,24,26,4,13,'members.name','Stu Goulden'),
	(808,24,26,4,13,'members.name','Mike Harmer'),
	(809,24,26,4,13,'members.name','Amy Trumpeter'),
	(810,24,26,4,13,'members.name','Holly Squire'),
	(811,24,26,4,13,'members.name','Jack Casling'),
	(812,24,26,4,13,'members.name','Mike Leigh Cooper'),
	(813,24,26,4,13,'members.name','Jonathan Sillence'),
	(814,24,26,4,13,'members.name','Kevin Craighead'),
	(815,24,26,4,13,'members.name','James Howard'),
	(816,24,26,4,13,'members.name','David Edmunds'),
	(817,24,26,4,13,'members.name','Jonic Linley'),
	(818,24,26,4,13,'members.name','Carlotta Allum'),
	(819,24,26,4,13,'_id','24'),
	(820,24,26,4,13,'_order','1000'),
	(847,24,26,4,14,'members.url','https://twitter.com/stugoulden'),
	(848,24,26,4,14,'members.url','http://do-make.co/'),
	(849,24,26,4,14,'members.url','http://t.co/BkOKVLZ5uc'),
	(850,24,26,4,14,'members.url','https://twitter.com/HollyEsquire'),
	(851,24,26,4,14,'members.url','http://www.choirofvision.com/'),
	(852,24,26,4,14,'members.url','https://twitter.com/Mikeleighcooper'),
	(853,24,26,4,14,'members.url','https://twitter.com/JaySillence'),
	(854,24,26,4,14,'members.url','https://twitter.com/designyork'),
	(855,24,26,4,14,'members.url','http://www.reetgood.co.uk/'),
	(856,24,26,4,14,'members.url','https://twitter.com/departsltddavid'),
	(857,24,26,4,14,'members.url','https://twitter.com/jonic'),
	(858,24,26,4,14,'members.url','https://twitter.com/thegaytraitor'),
	(859,24,26,4,14,'members.url','https://www.venturesolutions.co.uk/'),
	(860,24,26,4,14,'members.name','Stu Goulden'),
	(861,24,26,4,14,'members.name','Mike Harmer'),
	(862,24,26,4,14,'members.name','Amy Trumpeter'),
	(863,24,26,4,14,'members.name','Holly Squire'),
	(864,24,26,4,14,'members.name','Jack Casling'),
	(865,24,26,4,14,'members.name','Mike Leigh Cooper'),
	(866,24,26,4,14,'members.name','Jonathan Sillence'),
	(867,24,26,4,14,'members.name','Kevin Craighead'),
	(868,24,26,4,14,'members.name','James Howard'),
	(869,24,26,4,14,'members.name','David Edmunds'),
	(870,24,26,4,14,'members.name','Jonic Linley'),
	(871,24,26,4,14,'members.name','Carlotta Allum'),
	(872,24,26,4,14,'members.name','Lucy Hutchings Hunt'),
	(873,24,26,4,14,'_id','24'),
	(874,24,26,4,14,'_order','1000'),
	(901,24,26,4,15,'members.url','https://twitter.com/stugoulden'),
	(902,24,26,4,15,'members.url','http://do-make.co/'),
	(903,24,26,4,15,'members.url','http://t.co/BkOKVLZ5uc'),
	(904,24,26,4,15,'members.url','https://twitter.com/HollyEsquire'),
	(905,24,26,4,15,'members.url','http://www.choirofvision.com/'),
	(906,24,26,4,15,'members.url','https://twitter.com/Mikeleighcooper'),
	(907,24,26,4,15,'members.url','https://twitter.com/JaySillence'),
	(908,24,26,4,15,'members.url','https://twitter.com/designyork'),
	(909,24,26,4,15,'members.url','http://www.reetgood.co.uk/'),
	(910,24,26,4,15,'members.url','https://twitter.com/departsltddavid'),
	(911,24,26,4,15,'members.url','https://twitter.com/jonic'),
	(912,24,26,4,15,'members.url','https://twitter.com/thegaytraitor'),
	(913,24,26,4,15,'members.url','https://www.venturesolutions.co.uk/'),
	(914,24,26,4,15,'members.name','Stu Goulden'),
	(915,24,26,4,15,'members.name','Mike Harmer'),
	(916,24,26,4,15,'members.name','Amy Trumpeter'),
	(917,24,26,4,15,'members.name','Holly Squire'),
	(918,24,26,4,15,'members.name','Jack Casling'),
	(919,24,26,4,15,'members.name','Mike Leigh Cooper'),
	(920,24,26,4,15,'members.name','Jonathan Sillence'),
	(921,24,26,4,15,'members.name','Kevin Craighead'),
	(922,24,26,4,15,'members.name','James Howard'),
	(923,24,26,4,15,'members.name','David Edmunds'),
	(924,24,26,4,15,'members.name','Jonic Linley'),
	(925,24,26,4,15,'members.name','Carlotta Allum'),
	(926,24,26,4,15,'members.name','Lucy Hutchings Hunt'),
	(927,24,26,4,15,'_id','24'),
	(928,24,26,4,15,'_order','1000'),
	(963,24,26,4,16,'members.url','https://twitter.com/JaySillence'),
	(964,24,26,4,16,'members.url','https://twitter.com/designyork'),
	(965,24,26,4,16,'members.url','http://www.reetgood.co.uk/'),
	(966,24,26,4,16,'members.url','https://twitter.com/departsltddavid'),
	(967,24,26,4,16,'members.url','https://twitter.com/jonic'),
	(968,24,26,4,16,'members.url','https://twitter.com/thegaytraitor'),
	(969,24,26,4,16,'members.url','https://www.venturesolutions.co.uk/'),
	(970,24,26,4,16,'members.url','https://twitter.com/rickary'),
	(971,24,26,4,16,'members.name','Stu Goulden'),
	(972,24,26,4,16,'members.name','Mike Harmer'),
	(973,24,26,4,16,'members.name','Amy Trumpeter'),
	(974,24,26,4,16,'members.name','Holly Squire'),
	(975,24,26,4,16,'members.name','Jack Casling'),
	(976,24,26,4,16,'members.name','Mike Leigh Cooper'),
	(977,24,26,4,16,'members.name','Jonathan Sillence'),
	(978,24,26,4,16,'members.name','Kevin Craighead'),
	(979,24,26,4,16,'members.name','James Howard'),
	(980,24,26,4,16,'members.name','David Edmunds'),
	(981,24,26,4,16,'members.name','Jonic Linley'),
	(982,24,26,4,16,'members.name','Carlotta Allum'),
	(983,24,26,4,16,'members.name','Lucy Hutchings Hunt'),
	(984,24,26,4,16,'members.name','Rick Chadwick'),
	(985,24,26,4,16,'_id','24'),
	(986,24,26,4,16,'_order','1000'),
	(1021,24,26,4,17,'members.url','http://www.choirofvision.com/'),
	(1022,24,26,4,17,'members.url','https://twitter.com/Mikeleighcooper'),
	(1023,24,26,4,17,'members.url','https://twitter.com/JaySillence'),
	(1024,24,26,4,17,'members.url','https://twitter.com/designyork'),
	(1025,24,26,4,17,'members.url','http://www.reetgood.co.uk/'),
	(1026,24,26,4,17,'members.url','https://twitter.com/departsltddavid'),
	(1027,24,26,4,17,'members.url','https://twitter.com/jonic'),
	(1028,24,26,4,17,'members.url','https://twitter.com/thegaytraitor'),
	(1029,24,26,4,17,'members.url','https://www.venturesolutions.co.uk/'),
	(1030,24,26,4,17,'members.url','https://twitter.com/rickary'),
	(1031,24,26,4,17,'members.url','https://twitter.com/ShamblesKitchen'),
	(1032,24,26,4,17,'members.name','Stu Goulden'),
	(1033,24,26,4,17,'members.name','Mike Harmer'),
	(1034,24,26,4,17,'members.name','Amy Trumpeter'),
	(1035,24,26,4,17,'members.name','Holly Squire'),
	(1036,24,26,4,17,'members.name','Jack Casling'),
	(1037,24,26,4,17,'members.name','Mike Leigh Cooper'),
	(1038,24,26,4,17,'members.name','Jonathan Sillence'),
	(1039,24,26,4,17,'members.name','Kevin Craighead'),
	(1040,24,26,4,17,'members.name','James Howard'),
	(1041,24,26,4,17,'members.name','David Edmunds'),
	(1042,24,26,4,17,'members.name','Jonic Linley'),
	(1043,24,26,4,17,'members.name','Carlotta Allum'),
	(1044,24,26,4,17,'members.name','Lucy Hutchings Hunt'),
	(1045,24,26,4,17,'members.name','Rick Chadwick'),
	(1046,24,26,4,17,'members.name','Simon Long'),
	(1047,24,26,4,17,'_id','24'),
	(1048,24,26,4,17,'_order','1000'),
	(1049,20,20,1,6,'quotes.quote','I highly recommend @acollectiveHQ\'s co-working space in the centre of York, location and facilities are great.'),
	(1050,20,20,1,6,'quotes.quote','A welcoming, creative and modern working environment in the heart of York. A must for anyone looking to connect and collaborate with like-minded entrepreneurs.'),
	(1051,20,20,1,6,'quotes.quote','What a place to work from. Really like the space, the people, the opportunities, chats and discussions. Glad I joined.'),
	(1052,20,20,1,6,'quotes.cite','Orde Saunders'),
	(1053,20,20,1,6,'quotes.cite','Nathan Vaguely'),
	(1054,20,20,1,6,'quotes.cite','Mike Leigh Cooper'),
	(1055,20,20,1,6,'_id','20'),
	(1056,20,20,1,6,'_order','1000'),
	(1057,20,20,1,7,'quotes.quote','I highly recommend @acollectiveHQ\'s co-working space in the centre of York, location and facilities are great.'),
	(1058,20,20,1,7,'quotes.quote','A welcoming, creative and modern working environment in the heart of York. A must for anyone looking to connect and collaborate with like-minded entrepreneurs.'),
	(1059,20,20,1,7,'quotes.quote','What a place to work from. Really like the space, the people, the opportunities, chats and discussions. Glad I joined.'),
	(1060,20,20,1,7,'quotes.cite','Orde Saunders'),
	(1061,20,20,1,7,'quotes.cite','Nathan Vasey'),
	(1062,20,20,1,7,'quotes.cite','Mike Leigh Cooper'),
	(1063,20,20,1,7,'_id','20'),
	(1064,20,20,1,7,'_order','1000'),
	(1065,1,2,1,2,'_id','1'),
	(1066,1,2,1,2,'_order','1000'),
	(1067,16,16,3,5,'text','Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi.'),
	(1068,16,16,3,5,'half_rate','35'),
	(1069,16,16,3,5,'full_rate','55'),
	(1070,16,16,3,5,'_id','16'),
	(1071,16,16,3,5,'_order','1000');

/*!40000 ALTER TABLE `perch2_content_index` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_content_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_content_items`;

CREATE TABLE `perch2_content_items` (
  `itemRowID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `regionID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemRev` int(10) unsigned NOT NULL DEFAULT '0',
  `itemOrder` int(10) unsigned NOT NULL DEFAULT '1000',
  `itemJSON` mediumtext NOT NULL,
  `itemSearch` mediumtext NOT NULL,
  `itemUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `itemUpdatedBy` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemRowID`),
  KEY `idx_item` (`itemID`),
  KEY `idx_rev` (`itemRev`),
  KEY `idx_region` (`regionID`),
  KEY `idx_regrev` (`itemID`,`regionID`,`itemRev`),
  KEY `idx_order` (`itemOrder`),
  FULLTEXT KEY `idx_search` (`itemSearch`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_content_items` WRITE;
/*!40000 ALTER TABLE `perch2_content_items` DISABLE KEYS */;

INSERT INTO `perch2_content_items` (`itemRowID`, `itemID`, `regionID`, `pageID`, `itemRev`, `itemOrder`, `itemJSON`, `itemSearch`, `itemUpdated`, `itemUpdatedBy`)
VALUES
	(1,1,2,1,0,1000,'','','2016-06-13 15:01:11',''),
	(2,1,2,1,1,1000,'{\"_id\":\"1\",\"image\":{\"assetID\":\"5\",\"title\":\"Co work2 1\",\"_default\":\"\\/perch\\/resources\\/co-work2-1.jpg\",\"bucket\":\"default\",\"path\":\"co-work2-1.jpg\",\"size\":284239,\"w\":2000,\"h\":1335,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"co-work2-1-thumb@2x.jpg\",\"size\":12820,\"mime\":\"\",\"assetID\":\"6\"}}}}','  ','2016-06-13 15:02:04','1'),
	(3,2,1,1,0,1000,'','','2016-06-13 15:02:37',''),
	(4,2,1,1,1,1000,'{\"_id\":\"2\",\"background\":\"white\",\"title\":null,\"text\":{\"_flang\":\"markdown\",\"raw\":\"Say hello to a new workspace for creative folk in the heart of York.\\r\\n\\r\\nWe offer an inspiring working environment for likeminded creatives, with desks and private offices available on low-fee, hassle-free terms.\\r\\n\\r\\nNow open.\",\"processed\":\"<p>Say hello to a new workspace for creative folk in the heart of York.<\\/p>\\n<p>We offer an inspiring working environment for likeminded creatives, with desks and private offices available on low-fee, hassle-free terms.<\\/p>\\n<p>Now open.<\\/p>\"}}',' white  Say hello to a new workspace for creative folk in the heart of York.\nWe offer an inspiring working environment for likeminded creatives, with desks and private offices available on low-fee, hassle-free terms.\nNow open. ','2016-06-13 15:04:03','1'),
	(5,3,3,1,0,1000,'','','2016-06-13 15:04:17',''),
	(6,3,3,1,1,1000,'{\"_id\":\"3\",\"slides\":[{\"image\":{\"assetID\":\"13\",\"title\":\"Stu acol1\",\"_default\":\"\\/perch\\/resources\\/stu-acol1.jpg\",\"bucket\":\"default\",\"path\":\"stu-acol1.jpg\",\"size\":171528,\"w\":1500,\"h\":1002,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"stu-acol1-thumb@2x.jpg\",\"size\":12875,\"mime\":\"\",\"assetID\":\"14\"}}},\"alt\":null},{\"image\":{\"assetID\":\"9\",\"title\":\"Jan16 meet\",\"_default\":\"\\/perch\\/resources\\/jan16-meet.jpg\",\"bucket\":\"default\",\"path\":\"jan16-meet.jpg\",\"size\":196973,\"w\":1500,\"h\":1002,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jan16-meet-thumb@2x.jpg\",\"size\":15031,\"mime\":\"\",\"assetID\":\"10\"}}},\"alt\":null},{\"image\":{\"assetID\":\"3\",\"title\":\"Acollective main co working\",\"_default\":\"\\/perch\\/resources\\/acollective-main-co-working.jpg\",\"bucket\":\"default\",\"path\":\"acollective-main-co-working.jpg\",\"size\":241244,\"w\":1500,\"h\":1002,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"acollective-main-co-working-thumb@2x.jpg\",\"size\":17584,\"mime\":\"\",\"assetID\":\"4\"}}},\"alt\":null}]}','       ','2016-06-13 15:04:39','1'),
	(7,4,4,1,0,1000,'','','2016-06-13 15:04:44',''),
	(8,4,4,1,1,1000,'{\"_id\":\"4\",\"slides\":[{\"image\":{\"assetID\":\"1\",\"title\":\"Acol square\",\"_default\":\"\\/perch\\/resources\\/acol-square.jpg\",\"bucket\":\"default\",\"path\":\"acol-square.jpg\",\"size\":107034,\"w\":800,\"h\":800,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"acol-square-thumb@2x.jpg\",\"size\":20790,\"mime\":\"\",\"assetID\":\"2\"}}},\"alt\":null}]}','   ','2016-06-13 15:04:51','1'),
	(9,5,5,1,0,1000,'','','2016-06-13 15:04:56',''),
	(10,5,5,1,1,1000,'{\"_id\":\"5\",\"slides\":[{\"image\":{\"assetID\":\"11\",\"title\":\"Kitchen\",\"_default\":\"\\/perch\\/resources\\/kitchen.jpg\",\"bucket\":\"default\",\"path\":\"kitchen.jpg\",\"size\":215471,\"w\":1000,\"h\":1499,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"100\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"kitchen-thumb@2x.jpg\",\"size\":15538,\"mime\":\"\",\"assetID\":\"12\"}}},\"alt\":null}]}','   ','2016-06-13 15:05:01','1'),
	(11,6,6,2,0,1000,'','','2016-06-13 15:07:52',''),
	(12,6,6,2,1,1000,'{\"_id\":\"6\",\"background\":\"orange\",\"title\":\"Our Mission\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Our mission is something. Proin elit quam, feugiat quis sem eu, euismod feugiat lacus. Donec posuere sapien eu auctor lacinia. Quisque dictum augue nec auctor venenatis. Cras tincidunt tristique mauris, non tincidunt metus elementum quis.\\r\\n\\r\\nIn hac habitasse platea dictumst.\",\"processed\":\"<p>Our mission is something. Proin elit quam, feugiat quis sem eu, euismod feugiat lacus. Donec posuere sapien eu auctor lacinia. Quisque dictum augue nec auctor venenatis. Cras tincidunt tristique mauris, non tincidunt metus elementum quis.<\\/p>\\n<p>In hac habitasse platea dictumst.<\\/p>\"}}',' orange Our Mission Our mission is something. Proin elit quam, feugiat quis sem eu, euismod feugiat lacus. Donec posuere sapien eu auctor lacinia. Quisque dictum augue nec auctor venenatis. Cras tincidunt tristique mauris, non tincidunt metus elementum quis.\nIn hac habitasse platea dictumst. ','2016-06-13 15:08:47','1'),
	(13,7,7,3,0,1000,'','','2016-06-13 15:09:32',''),
	(14,7,7,3,1,1000,'{\"_id\":\"7\",\"background\":\"orange\",\"title\":null,\"text\":{\"_flang\":\"markdown\",\"raw\":\"We have an amazing meeting space. Proin elit quam, feugiat quis sem eu, euismod feugiat lacus. Donec posuere sapien eu auctor lacinia. Quisque dictum augue nec auctor venenatis. Cras tincidunt tristique mauris, non tincidunt metus elementum quis.\",\"processed\":\"<p>We have an amazing meeting space. Proin elit quam, feugiat quis sem eu, euismod feugiat lacus. Donec posuere sapien eu auctor lacinia. Quisque dictum augue nec auctor venenatis. Cras tincidunt tristique mauris, non tincidunt metus elementum quis.<\\/p>\"}}',' orange  We have an amazing meeting space. Proin elit quam, feugiat quis sem eu, euismod feugiat lacus. Donec posuere sapien eu auctor lacinia. Quisque dictum augue nec auctor venenatis. Cras tincidunt tristique mauris, non tincidunt metus elementum quis. ','2016-06-13 15:10:03','1'),
	(15,8,8,3,0,1000,'','','2016-06-13 15:10:09',''),
	(16,8,8,3,1,1000,'{\"_id\":\"8\",\"slides\":[{\"image\":{\"assetID\":\"9\",\"title\":\"Jan16 meet\",\"_default\":\"\\/perch\\/resources\\/jan16-meet.jpg\",\"bucket\":\"default\",\"path\":\"jan16-meet.jpg\",\"size\":196973,\"w\":1500,\"h\":1002,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jan16-meet-thumb@2x.jpg\",\"size\":15031,\"mime\":\"\",\"assetID\":\"10\"}}},\"alt\":null}]}','   ','2016-06-13 15:10:15','1'),
	(17,9,9,3,0,1000,'','','2016-06-13 15:10:23',''),
	(18,9,9,3,1,1000,'{\"_id\":\"9\",\"slides\":[{\"image\":{\"assetID\":\"1\",\"title\":\"Acol square\",\"_default\":\"\\/perch\\/resources\\/acol-square.jpg\",\"bucket\":\"default\",\"path\":\"acol-square.jpg\",\"size\":107034,\"w\":800,\"h\":800,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"acol-square-thumb@2x.jpg\",\"size\":20790,\"mime\":\"\",\"assetID\":\"2\"}}},\"alt\":null}]}','   ','2016-06-13 15:10:27','1'),
	(19,10,10,3,0,1000,'','','2016-06-13 15:10:33',''),
	(20,10,10,3,1,1000,'{\"_id\":\"10\",\"slides\":[{\"image\":{\"assetID\":\"11\",\"title\":\"Kitchen\",\"_default\":\"\\/perch\\/resources\\/kitchen.jpg\",\"bucket\":\"default\",\"path\":\"kitchen.jpg\",\"size\":215471,\"w\":1000,\"h\":1499,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"100\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"kitchen-thumb@2x.jpg\",\"size\":15538,\"mime\":\"\",\"assetID\":\"12\"}}},\"alt\":null}]}','   ','2016-06-13 15:10:40','1'),
	(21,11,11,4,0,1000,'','','2016-06-13 15:12:30',''),
	(22,11,11,4,1,1000,'{\"_id\":\"11\",\"background\":\"white\",\"title\":null,\"text\":{\"_flang\":\"markdown\",\"raw\":\"Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis.\",\"processed\":\"<p>Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis.<\\/p>\"}}',' white  Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis. ','2016-06-13 15:12:49','1'),
	(23,12,12,4,0,1000,'','','2016-06-13 15:12:56',''),
	(24,12,12,4,1,1000,'{\"_id\":\"12\",\"background\":\"grey\",\"title\":\"Projects\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Suspendisse condimentum leo ut dapibus condimentum. Fusce sit amet volutpat mauris. Aenean vitae dapibus quam. Quisque posuere turpis vitae tortor feugiat rutrum.\",\"processed\":\"<p>Suspendisse condimentum leo ut dapibus condimentum. Fusce sit amet volutpat mauris. Aenean vitae dapibus quam. Quisque posuere turpis vitae tortor feugiat rutrum.<\\/p>\"}}',' grey Projects Suspendisse condimentum leo ut dapibus condimentum. Fusce sit amet volutpat mauris. Aenean vitae dapibus quam. Quisque posuere turpis vitae tortor feugiat rutrum. ','2016-06-13 15:13:07','1'),
	(25,13,13,1,0,1000,'','','2016-06-13 15:19:41',''),
	(26,13,13,1,1,1000,'{\"_id\":\"13\",\"title\":\"Your Very Own Desk\",\"price\":\"\\u00a3150 +VAT\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.\",\"processed\":\"<p>Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.<\\/p>\"}}',' Your Very Own Desk £150 +VAT Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more. ','2016-06-13 15:20:17','1'),
	(27,13,13,1,2,1000,'{\"_id\":\"13\",\"title\":\"Your Very Own Desk\",\"price\":\"\\u00a3150 +VAT\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.\",\"processed\":\"<p>Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.<\\/p>\"}}',' Your Very Own Desk £150 +VAT Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more. ','2016-06-13 15:25:40','1'),
	(90,14,14,1,20,1000,'{\"_id\":\"14\",\"title\":\"Private Studios\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.\",\"processed\":\"<p>Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.<\\/p>\"},\"studio1_availability\":\"available\",\"studio1_label\":\"Studio One\",\"studio1_price\":\"\\u00a3800 +VAT\",\"studio2_availability\":\"available\",\"studio2_label\":\"Studio Two\",\"studio2_price\":\"\\u00a3700 +VAT\"}',' Private Studios Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients. available Studio One £800 +VAT available Studio Two £700 +VAT ','2016-06-20 16:28:25','1'),
	(91,14,14,1,21,1000,'{\"_id\":\"14\",\"title\":\"Private Studios\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.\",\"processed\":\"<p>Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.<\\/p>\"},\"studio1_availability\":\"unavailable\",\"studio1_label\":\"Studio One\",\"studio1_price\":\"\\u00a3800 +VAT\",\"studio2_availability\":\"unavailable\",\"studio2_label\":\"Studio Two\",\"studio2_price\":\"\\u00a3700 +VAT\"}',' Private Studios Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients. unavailable Studio One £800 +VAT unavailable Studio Two £700 +VAT ','2016-06-20 16:28:33','1'),
	(43,15,15,1,1,1000,'{\"_id\":\"15\",\"free1\":null,\"free2\":null,\"free3\":null}','    ','2016-06-13 16:07:18','1'),
	(44,15,15,1,2,1000,'{\"_id\":\"15\",\"free1\":\"Free Printing\",\"free2\":\"Free Meeting Room\",\"free3\":\"Free Coffee\"}',' Free Printing Free Meeting Room Free Coffee ','2016-06-13 16:07:37','1'),
	(45,16,16,3,0,1000,'','','2016-06-13 16:23:39',''),
	(46,16,16,3,1,1000,'{\"_id\":\"16\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi.\",\"processed\":\"<p>Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi.<\\/p>\"},\"half_rate\":\"35\",\"full_rate\":\"55\"}',' Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi. 35 55 ','2016-06-13 16:23:56','1'),
	(82,14,14,1,15,1000,'{\"_id\":\"14\",\"title\":\"Private Studios\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.\",\"processed\":\"<p>Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.<\\/p>\"},\"studio1_availability\":\"unavailable\",\"studio1_label\":\"Studio One\",\"studio1_price\":\"\\u00a3800 +VAT\",\"studio2_availability\":\"available\",\"studio2_label\":\"Studio Two\",\"studio2_price\":\"\\u00a3700 +VAT\"}',' Private Studios Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients. unavailable Studio One £800 +VAT available Studio Two £700 +VAT ','2016-06-20 16:23:46','1'),
	(83,13,13,1,3,1000,'{\"_id\":\"13\",\"title\":\"Your Very Own Desk\",\"availability\":\"available\",\"price\":\"\\u00a3150 +VAT\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.\",\"processed\":\"<p>Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.<\\/p>\"}}',' Your Very Own Desk available £150 +VAT Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more. ','2016-06-20 16:24:41','1'),
	(84,13,13,1,4,1000,'{\"_id\":\"13\",\"title\":\"Your Very Own Desk\",\"availability\":\"unavailable\",\"price\":\"\\u00a3150 +VAT\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.\",\"processed\":\"<p>Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.<\\/p>\"}}',' Your Very Own Desk unavailable £150 +VAT Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more. ','2016-06-20 16:24:50','1'),
	(87,14,14,1,17,1000,'{\"_id\":\"14\",\"title\":\"Private Studios\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.\",\"processed\":\"<p>Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.<\\/p>\"},\"studio1_availability\":\"unavailable\",\"studio1_label\":\"Studio One\",\"studio1_price\":\"\\u00a3800 +VAT\",\"studio2_availability\":\"unavailable\",\"studio2_label\":\"Studio Two\",\"studio2_price\":\"\\u00a3700 +VAT\"}',' Private Studios Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients. unavailable Studio One £800 +VAT unavailable Studio Two £700 +VAT ','2016-06-20 16:27:57','1'),
	(88,14,14,1,18,1000,'{\"_id\":\"14\",\"title\":\"Private Studios\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.\",\"processed\":\"<p>Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.<\\/p>\"},\"studio1_availability\":\"available\",\"studio1_label\":\"Studio One\",\"studio1_price\":\"\\u00a3800 +VAT\",\"studio2_availability\":\"unavailable\",\"studio2_label\":\"Studio Two\",\"studio2_price\":\"\\u00a3700 +VAT\"}',' Private Studios Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients. available Studio One £800 +VAT unavailable Studio Two £700 +VAT ','2016-06-20 16:28:04','1'),
	(92,14,14,1,22,1000,'{\"_id\":\"14\",\"title\":\"Private Studios\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.\",\"processed\":\"<p>Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.<\\/p>\"},\"studio1_availability\":\"unavailable\",\"studio1_label\":\"Studio One\",\"studio1_price\":\"\\u00a3800 +VAT\",\"studio2_availability\":\"available\",\"studio2_label\":\"Studio Two\",\"studio2_price\":\"\\u00a3700 +VAT\"}',' Private Studios Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients. unavailable Studio One £800 +VAT available Studio Two £700 +VAT ','2016-06-20 16:28:40','1'),
	(42,15,15,1,0,1000,'','','2016-06-13 16:07:06',''),
	(47,16,16,3,2,1000,'{\"_id\":\"16\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi.\",\"processed\":\"<p>Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi.<\\/p>\"},\"half_rate\":\"35\",\"full_rate\":\"55\"}',' Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi. 35 55 ','2016-06-13 16:24:33','1'),
	(48,16,16,3,3,1000,'{\"_id\":\"16\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi.\",\"processed\":\"<p>Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi.<\\/p>\"},\"half_rate\":\"35\",\"full_rate\":\"55\"}',' Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Nulla facilisi. 35 55 ','2016-06-13 16:29:43','1'),
	(49,16,16,3,4,1000,'{\"_id\":\"16\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi.\",\"processed\":\"<p>Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi.<\\/p>\"},\"half_rate\":\"35\",\"full_rate\":\"55\"}',' Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. 35 55 ','2016-06-13 16:37:36','1'),
	(50,17,17,3,0,1000,'','','2016-06-14 08:00:29',''),
	(51,17,17,3,1,1000,'{\"_id\":\"17\",\"title\":null}','  ','2016-06-14 08:01:04','1'),
	(52,17,17,3,2,1000,'{\"_id\":\"17\",\"title\":\"Always Included\",\"items\":[{\"item\":\"Super-fast Wi-Fi\"},{\"item\":\"Room for up to 8 People\"},{\"item\":\"Whiteboard & Paper Roll\"},{\"item\":\"42\\\" TV\"}]}',' Always Included Super-fast Wi-Fi Room for up to 8 People Whiteboard & Paper Roll 42\" TV ','2016-06-14 08:02:38','1'),
	(53,18,18,3,0,1000,'','','2016-06-14 08:03:18',''),
	(54,18,18,3,1,1000,'{\"_id\":\"18\",\"title\":\"Optional Extras\",\"items\":[{\"item\":\"Tea & Coffee\"},{\"item\":\"Catering\"}]}',' Optional Extras Tea & Coffee Catering ','2016-06-14 08:03:46','1'),
	(55,18,18,3,2,1000,'{\"_id\":\"18\",\"title\":\"Optional Extras\",\"items\":[{\"item\":\"Tea & Coffee\"},{\"item\":\"Catering\"},{\"item\":\"Pens & Paper\"}]}',' Optional Extras Tea & Coffee Catering Pens & Paper ','2016-06-14 08:04:11','1'),
	(56,18,18,3,3,1000,'{\"_id\":\"18\",\"title\":\"Optional Extras\",\"items\":[{\"item\":\"Tea & Coffee\"},{\"item\":\"Catering\"},{\"item\":\"Pens & Paper\"}]}',' Optional Extras Tea & Coffee Catering Pens & Paper ','2016-06-14 08:04:29','1'),
	(57,18,18,3,4,1000,'{\"_id\":\"18\",\"title\":\"Optional Extras\",\"items\":[{\"item\":\"Tea & Coffee\"},{\"item\":\"Catering\"},{\"item\":\"Pens & Paper\"}]}',' Optional Extras Tea & Coffee Catering Pens & Paper ','2016-06-14 08:05:43','1'),
	(58,17,17,3,3,1000,'{\"_id\":\"17\",\"title\":\"Always Included\",\"items\":[{\"item\":\"Super-fast Wi-Fi\"},{\"item\":\"Room for up to 8 People\"},{\"item\":\"Whiteboard & Paper Roll\"},{\"item\":\"42\\\" TV\"}]}',' Always Included Super-fast Wi-Fi Room for up to 8 People Whiteboard & Paper Roll 42\" TV ','2016-06-14 08:05:46','1'),
	(59,17,17,3,4,1000,'{\"_id\":\"17\",\"title\":\"Always Included\",\"items\":[{\"item\":\"Super-fast Wi-Fi\"},{\"item\":\"Room for up to 8 People\"},{\"item\":\"Whiteboard & Paper Roll\"},{\"item\":\"42\\\" TV\"}]}',' Always Included Super-fast Wi-Fi Room for up to 8 People Whiteboard & Paper Roll 42\" TV ','2016-06-14 08:20:33','1'),
	(60,19,19,1,0,1000,'','','2016-06-14 08:23:55',''),
	(61,19,19,1,1,1000,'{\"_id\":\"19\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Quisque interdum blandit est id volutpat. Etiam in ipsum sagittis, accumsan ipsum vitae, tincidunt metus.\",\"processed\":\"<p>Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Quisque interdum blandit est id volutpat. Etiam in ipsum sagittis, accumsan ipsum vitae, tincidunt metus.<\\/p>\"},\"success\":{\"_flang\":\"textile\",\"raw\":\"Thanks. Ut nisi sem, dignissim et ultricies ac, vehicula at quam. Donec suscipit feugiat lectus nec imperdiet. Nulla a tellus nisl. Cras luctus enim sapien, at porta magna varius eget.\",\"processed\":\"<p>Thanks. Ut nisi sem, dignissim et ultricies ac, vehicula at quam. Donec suscipit feugiat lectus nec imperdiet. Nulla a tellus nisl. Cras luctus enim sapien, at porta magna varius eget.<\\/p>\"}}',' Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Quisque interdum blandit est id volutpat. Etiam in ipsum sagittis, accumsan ipsum vitae, tincidunt metus. Thanks. Ut nisi sem, dignissim et ultricies ac, vehicula at quam. Donec suscipit feugiat lectus nec imperdiet. Nulla a tellus nisl. Cras luctus enim sapien, at porta magna varius eget. ','2016-06-14 08:24:18','1'),
	(62,19,19,1,2,1000,'{\"_id\":\"19\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Quisque interdum blandit est id volutpat.\",\"processed\":\"<p>Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Quisque interdum blandit est id volutpat.<\\/p>\"},\"success\":{\"_flang\":\"textile\",\"raw\":\"Thanks. Ut nisi sem, dignissim et ultricies ac, vehicula at quam. Donec suscipit feugiat lectus nec imperdiet. Nulla a tellus nisl. Cras luctus enim sapien, at porta magna varius eget.\",\"processed\":\"<p>Thanks. Ut nisi sem, dignissim et ultricies ac, vehicula at quam. Donec suscipit feugiat lectus nec imperdiet. Nulla a tellus nisl. Cras luctus enim sapien, at porta magna varius eget.<\\/p>\"}}',' Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Quisque interdum blandit est id volutpat. Thanks. Ut nisi sem, dignissim et ultricies ac, vehicula at quam. Donec suscipit feugiat lectus nec imperdiet. Nulla a tellus nisl. Cras luctus enim sapien, at porta magna varius eget. ','2016-06-14 08:24:31','1'),
	(63,19,19,1,3,1000,'{\"_id\":\"19\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.\",\"processed\":\"<p>Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.<\\/p>\"},\"success\":{\"_flang\":\"textile\",\"raw\":\"Thanks. We\\u2019ll be in touch in the next 3 working days.\",\"processed\":\"<p>Thanks. We\\u2019ll be in touch in the next 3 working days.<\\/p>\"}}',' Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Thanks. We’ll be in touch in the next 3 working days. ','2016-06-14 08:24:58','1'),
	(64,19,19,1,4,1000,'{\"_id\":\"19\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.\",\"processed\":\"<p>Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.<\\/p>\"},\"success\":{\"_flang\":\"textile\",\"raw\":\"Thanks. We\\u2019ll be in touch in the next 3 working days.\",\"processed\":\"<p>Thanks. We\\u2019ll be in touch in the next 3 working days.<\\/p>\"}}',' Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Thanks. We’ll be in touch in the next 3 working days. ','2016-06-14 08:26:43','1'),
	(65,19,19,1,5,1000,'{\"_id\":\"19\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.\",\"processed\":\"<p>Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.<\\/p>\"},\"success\":{\"_flang\":\"textile\",\"raw\":\"Thanks. We\\u2019ll be in touch in the next 3 working days.\",\"processed\":\"<p>Thanks. We\\u2019ll be in touch in the next 3 working days.<\\/p>\"}}',' Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Thanks. We’ll be in touch in the next 3 working days. ','2016-06-14 08:32:54','1'),
	(66,19,19,1,6,1000,'{\"_id\":\"19\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.\",\"processed\":\"<p>Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.<\\/p>\"},\"success\":{\"_flang\":\"textile\",\"raw\":\"Thanks. We\\u2019ll be in touch in the next 3 working days.\",\"processed\":\"<p>Thanks. We\\u2019ll be in touch in the next 3 working days.<\\/p>\"}}',' Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis. Thanks. We’ll be in touch in the next 3 working days. ','2016-06-14 10:23:48','1'),
	(67,20,20,1,0,1000,'','','2016-06-14 19:55:05',''),
	(68,20,20,1,1,1000,'{\"_id\":\"20\",\"quotes\":[{\"quote\":\"Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis.\",\"cite\":\"Cras convallis\"},{\"quote\":\"Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti.\",\"cite\":\"Integer et\"},{\"quote\":\"Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.\",\"cite\":\"Suspendisse at\"}]}',' Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis. Cras convallis Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti. Integer et Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti. Suspendisse at ','2016-06-14 19:56:13','1'),
	(69,20,20,1,2,1000,'{\"_id\":\"20\",\"quotes\":[{\"quote\":\"Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis.\",\"cite\":\"Cras convallis\"},{\"quote\":\"Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti.\",\"cite\":\"Integer et\"},{\"quote\":\"Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.\",\"cite\":\"Suspendisse at\"}]}',' Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis. Cras convallis Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti. Integer et Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti. Suspendisse at ','2016-06-14 19:56:48','1'),
	(70,20,20,1,3,1000,'{\"_id\":\"20\",\"quotes\":[{\"quote\":\"Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis.\",\"cite\":\"Cras convallis\"},{\"quote\":\"Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti.\",\"cite\":\"Integer et\"},{\"quote\":\"Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.\",\"cite\":\"Suspendisse at\"}]}',' Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis. Cras convallis Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti. Integer et Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti. Suspendisse at ','2016-06-14 19:57:51','1'),
	(71,20,20,1,4,1000,'{\"_id\":\"20\",\"quotes\":[{\"quote\":\"Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis.\",\"cite\":\"Cras convallis\"},{\"quote\":\"Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti.\",\"cite\":\"Integer et\"},{\"quote\":\"Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.\",\"cite\":\"Suspendisse at\"}]}',' Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis. Cras convallis Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti. Integer et Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti. Suspendisse at ','2016-06-14 20:02:01','1'),
	(72,20,20,1,5,1000,'{\"_id\":\"20\",\"quotes\":[{\"quote\":\"Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis.\",\"cite\":\"Cras convallis\"},{\"quote\":\"Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti.\",\"cite\":\"Integer et\"},{\"quote\":\"Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.\",\"cite\":\"Suspendisse at\"}]}',' Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis. Cras convallis Nulla eget neque magna. Fusce sagittis convallis metus, quis viverra dolor egestas in. Maecenas laoreet nibh vitae libero ullamcorper tincidunt. Suspendisse potenti. Integer et Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti. Suspendisse at ','2016-06-14 20:05:09','1'),
	(73,21,22,2,0,1000,'','','2016-06-16 08:33:35',''),
	(74,21,22,2,1,1000,'{\"_id\":\"21\",\"qa\":[{\"question\":\"Phasellus leo magna, tincidunt et adipiscing dictum?\",\"answer\":\"Cras feugiat commodo magna, et hendrerit arcu adipiscing et.\"},{\"question\":\"Mauris congue mi eu mollis faucibus?\",\"answer\":\"Cras et dui mollis, tempus velit placerat, sodales tellus.\"},{\"question\":\"Ut sit amet magna orci?\",\"answer\":\"Aliquam tempus id risus eu ullamcorper. Proin et accumsan felis, scelerisque molestie sapien.\"},{\"question\":\"Integer sit amet varius ipsum?\",\"answer\":\"Nulla dictum tincidunt turpis eu consequat. Sed adipiscing eros a nisi dictum mollis.\"},{\"question\":\"Suspendisse condimentum leo ut?\",\"answer\":\"Donec commodo fermentum neque, at sagittis libero faucibus nec.\"}]}',' Phasellus leo magna, tincidunt et adipiscing dictum? Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Mauris congue mi eu mollis faucibus? Cras et dui mollis, tempus velit placerat, sodales tellus. Ut sit amet magna orci? Aliquam tempus id risus eu ullamcorper. Proin et accumsan felis, scelerisque molestie sapien. Integer sit amet varius ipsum? Nulla dictum tincidunt turpis eu consequat. Sed adipiscing eros a nisi dictum mollis. Suspendisse condimentum leo ut? Donec commodo fermentum neque, at sagittis libero faucibus nec. ','2016-06-16 08:35:07','1'),
	(75,21,22,2,2,1000,'{\"_id\":\"21\",\"qa\":[{\"question\":\"Phasellus leo magna, tincidunt et adipiscing dictum?\",\"answer\":\"Cras feugiat commodo magna, et hendrerit arcu adipiscing et.\"},{\"question\":\"Mauris congue mi eu mollis faucibus?\",\"answer\":\"Cras et dui mollis, tempus velit placerat, sodales tellus.\"},{\"question\":\"Ut sit amet magna orci?\",\"answer\":\"Aliquam tempus id risus eu ullamcorper. Proin et accumsan felis, scelerisque molestie sapien.\"},{\"question\":\"Integer sit amet varius ipsum?\",\"answer\":\"Nulla dictum tincidunt turpis eu consequat. Sed adipiscing eros a nisi dictum mollis.\"},{\"question\":\"Suspendisse condimentum leo ut?\",\"answer\":\"Donec commodo fermentum neque, at sagittis libero faucibus nec.\"}]}',' Phasellus leo magna, tincidunt et adipiscing dictum? Cras feugiat commodo magna, et hendrerit arcu adipiscing et. Mauris congue mi eu mollis faucibus? Cras et dui mollis, tempus velit placerat, sodales tellus. Ut sit amet magna orci? Aliquam tempus id risus eu ullamcorper. Proin et accumsan felis, scelerisque molestie sapien. Integer sit amet varius ipsum? Nulla dictum tincidunt turpis eu consequat. Sed adipiscing eros a nisi dictum mollis. Suspendisse condimentum leo ut? Donec commodo fermentum neque, at sagittis libero faucibus nec. ','2016-06-16 08:37:05','1'),
	(76,22,23,4,0,1000,'','','2016-06-16 09:12:07',''),
	(77,22,23,4,1,1000,'','','2016-06-16 09:12:13','1'),
	(78,22,23,4,2,1000,'{\"_id\":\"22\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.\",\"processed\":\"<p>Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.<\\/p>\"}}',' Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti. ','2016-06-16 09:12:21','1'),
	(79,23,25,4,0,1000,'','','2016-06-16 09:20:14',''),
	(80,23,25,4,1,1000,'{\"_id\":\"23\",\"text\":\"BBC Radio 6 Music\",\"_title\":\"BBC Radio 6 Music\"}',' BBC Radio 6 Music ','2016-06-16 09:20:22','1'),
	(93,15,15,1,3,1000,'{\"_id\":\"15\",\"free1\":\"Free Printing\",\"free2\":\"Free Meeting Room\",\"free3\":\"Free Coffee\"}',' Free Printing Free Meeting Room Free Coffee ','2016-06-20 17:08:21','1'),
	(85,13,13,1,5,1000,'{\"_id\":\"13\",\"title\":\"Your Very Own Desk\",\"availability\":\"available\",\"price\":\"\\u00a3150 +VAT\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.\",\"processed\":\"<p>Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.<\\/p>\"}}',' Your Very Own Desk available £150 +VAT Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more. ','2016-06-20 16:25:31','1'),
	(86,14,14,1,16,1000,'{\"_id\":\"14\",\"title\":\"Private Studios\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.\",\"processed\":\"<p>Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.<\\/p>\"},\"studio1_availability\":\"unavailable\",\"studio1_label\":\"Studio One\",\"studio1_price\":\"\\u00a3800 +VAT\",\"studio2_availability\":\"available\",\"studio2_label\":\"Studio Two\",\"studio2_price\":\"\\u00a3700 +VAT\"}',' Private Studios Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients. unavailable Studio One £800 +VAT available Studio Two £700 +VAT ','2016-06-20 16:27:50','1'),
	(89,14,14,1,19,1000,'{\"_id\":\"14\",\"title\":\"Private Studios\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.\",\"processed\":\"<p>Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24\\/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.<\\/p>\"},\"studio1_availability\":\"available\",\"studio1_label\":\"Studio One\",\"studio1_price\":\"\\u00a3800 +VAT\",\"studio2_availability\":\"unavailable\",\"studio2_label\":\"Studio Two\",\"studio2_price\":\"\\u00a3700 +VAT\"}',' Private Studios Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients. available Studio One £800 +VAT unavailable Studio Two £700 +VAT ','2016-06-20 16:28:20','1'),
	(105,24,26,4,11,1000,'{\"_id\":\"24\",\"members\":[{\"name\":\"Stu Goulden\",\"photo\":{\"assetID\":\"15\",\"title\":\"Stu\",\"_default\":\"\\/perch\\/resources\\/stu.jpg\",\"bucket\":\"default\",\"path\":\"stu.jpg\",\"size\":26012,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"stu-thumb@2x.jpg\",\"size\":14978,\"mime\":\"\",\"assetID\":\"16\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"stu-w150h150@2x.jpg\",\"size\":15495,\"mime\":\"\",\"assetID\":\"31\"}}},\"url\":\"https:\\/\\/twitter.com\\/stugoulden\"},{\"name\":\"Mike Harmer\",\"photo\":{\"assetID\":\"17\",\"title\":\"Mike harmer\",\"_default\":\"\\/perch\\/resources\\/mikeharmer.jpg\",\"bucket\":\"default\",\"path\":\"mikeharmer.jpg\",\"size\":34845,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikeharmer-thumb@2x.jpg\",\"size\":25115,\"mime\":\"\",\"assetID\":\"18\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikeharmer-w150h150@2x.jpg\",\"size\":27265,\"mime\":\"\",\"assetID\":\"32\"}}},\"url\":\"http:\\/\\/do-make.co\\/\"},{\"name\":\"Amy Trumpeter\",\"photo\":{\"assetID\":\"19\",\"title\":\"Trumpeter\",\"_default\":\"\\/perch\\/resources\\/trumpeter.jpeg\",\"bucket\":\"default\",\"path\":\"trumpeter.jpeg\",\"size\":75687,\"w\":500,\"h\":425,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"127\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"trumpeter-thumb@2x.jpeg\",\"size\":11392,\"mime\":\"\",\"assetID\":\"20\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"trumpeter-w150h150@2x.jpeg\",\"size\":14014,\"mime\":\"\",\"assetID\":\"33\"}}},\"url\":\"http:\\/\\/t.co\\/BkOKVLZ5uc\"},{\"name\":\"Holly Squire\",\"photo\":{\"assetID\":\"21\",\"title\":\"Holly\",\"_default\":\"\\/perch\\/resources\\/holly.jpeg\",\"bucket\":\"default\",\"path\":\"holly.jpeg\",\"size\":35297,\"w\":424,\"h\":424,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"holly-thumb@2x.jpeg\",\"size\":24345,\"mime\":\"\",\"assetID\":\"22\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"holly-w150h150@2x.jpeg\",\"size\":25920,\"mime\":\"\",\"assetID\":\"34\"}}},\"url\":\"https:\\/\\/twitter.com\\/HollyEsquire\"},{\"name\":\"Jack Casling\",\"photo\":{\"assetID\":\"23\",\"title\":\"Jack\",\"_default\":\"\\/perch\\/resources\\/jack.jpg\",\"bucket\":\"default\",\"path\":\"jack.jpg\",\"size\":25306,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jack-thumb@2x.jpg\",\"size\":11383,\"mime\":\"\",\"assetID\":\"24\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jack-w150h150@2x.jpg\",\"size\":12236,\"mime\":\"\",\"assetID\":\"35\"}}},\"url\":\"http:\\/\\/www.choirofvision.com\\/\"},{\"name\":\"Mike Leigh Cooper\",\"photo\":{\"assetID\":\"25\",\"title\":\"Mike cooper\",\"_default\":\"\\/perch\\/resources\\/mikecooper.png\",\"bucket\":\"default\",\"path\":\"mikecooper.png\",\"size\":221947,\"w\":512,\"h\":512,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikecooper-thumb@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"26\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikecooper-w150h150@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"36\"}}},\"url\":\"https:\\/\\/twitter.com\\/Mikeleighcooper\"},{\"name\":\"Jonathan Sillence\",\"photo\":{\"assetID\":\"27\",\"title\":\"Jay\",\"_default\":\"\\/perch\\/resources\\/jay.jpeg\",\"bucket\":\"default\",\"path\":\"jay.jpeg\",\"size\":63913,\"w\":359,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"107\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jay-thumb@2x.jpeg\",\"size\":12597,\"mime\":\"\",\"assetID\":\"28\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jay-w150h150@2x.jpeg\",\"size\":17743,\"mime\":\"\",\"assetID\":\"37\"}}},\"url\":\"https:\\/\\/twitter.com\\/JaySillence\"},{\"name\":\"Kevin Craighead\",\"photo\":{\"assetID\":\"29\",\"title\":\"Kevin\",\"_default\":\"\\/perch\\/resources\\/kevin.jpg\",\"bucket\":\"default\",\"path\":\"kevin.jpg\",\"size\":146238,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"kevin-thumb@2x.jpg\",\"size\":13673,\"mime\":\"\",\"assetID\":\"30\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"kevin-w150h150@2x.jpg\",\"size\":14544,\"mime\":\"\",\"assetID\":\"38\"}}},\"url\":\"https:\\/\\/twitter.com\\/designyork\"},{\"name\":\"James Howard\",\"photo\":{\"assetID\":\"39\",\"title\":\"James howard\",\"_default\":\"\\/perch\\/resources\\/jameshoward.jpeg\",\"bucket\":\"default\",\"path\":\"jameshoward.jpeg\",\"size\":9375,\"w\":256,\"h\":256,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jameshoward-thumb@2x.jpeg\",\"size\":16440,\"mime\":\"\",\"assetID\":\"40\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jameshoward-w150h150@2x.jpeg\",\"size\":17224,\"mime\":\"\",\"assetID\":\"41\"}}},\"url\":\"http:\\/\\/www.reetgood.co.uk\\/\"},{\"name\":\"David Edmunds\",\"photo\":{\"assetID\":\"42\",\"title\":\"David\",\"_default\":\"\\/perch\\/resources\\/david.jpg\",\"bucket\":\"default\",\"path\":\"david.jpg\",\"size\":25739,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"david-thumb@2x.jpg\",\"size\":23595,\"mime\":\"\",\"assetID\":\"43\"},\"w150h150c1@2x\":{\"w\":150,\"h\":150,\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"david-w150h150@2x.jpg\",\"size\":24917,\"mime\":\"image\\/jpeg\"}}},\"url\":\"https:\\/\\/twitter.com\\/departsltddavid\"}]}',' Stu Goulden  https://twitter.com/stugoulden Mike Harmer  http://do-make.co/ Amy Trumpeter  http://t.co/BkOKVLZ5uc Holly Squire  https://twitter.com/HollyEsquire Jack Casling  http://www.choirofvision.com/ Mike Leigh Cooper  https://twitter.com/Mikeleighcooper Jonathan Sillence  https://twitter.com/JaySillence Kevin Craighead  https://twitter.com/designyork James Howard  http://www.reetgood.co.uk/ David Edmunds  https://twitter.com/departsltddavid ','2016-07-11 08:28:33','1'),
	(107,24,26,4,13,1000,'{\"_id\":\"24\",\"members\":[{\"name\":\"Stu Goulden\",\"photo\":{\"assetID\":\"15\",\"title\":\"Stu\",\"_default\":\"\\/perch\\/resources\\/stu.jpg\",\"bucket\":\"default\",\"path\":\"stu.jpg\",\"size\":26012,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"stu-thumb@2x.jpg\",\"size\":14978,\"mime\":\"\",\"assetID\":\"16\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"stu-w150h150@2x.jpg\",\"size\":15495,\"mime\":\"\",\"assetID\":\"31\"}}},\"url\":\"https:\\/\\/twitter.com\\/stugoulden\"},{\"name\":\"Mike Harmer\",\"photo\":{\"assetID\":\"17\",\"title\":\"Mike harmer\",\"_default\":\"\\/perch\\/resources\\/mikeharmer.jpg\",\"bucket\":\"default\",\"path\":\"mikeharmer.jpg\",\"size\":34845,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikeharmer-thumb@2x.jpg\",\"size\":25115,\"mime\":\"\",\"assetID\":\"18\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikeharmer-w150h150@2x.jpg\",\"size\":27265,\"mime\":\"\",\"assetID\":\"32\"}}},\"url\":\"http:\\/\\/do-make.co\\/\"},{\"name\":\"Amy Trumpeter\",\"photo\":{\"assetID\":\"19\",\"title\":\"Trumpeter\",\"_default\":\"\\/perch\\/resources\\/trumpeter.jpeg\",\"bucket\":\"default\",\"path\":\"trumpeter.jpeg\",\"size\":75687,\"w\":500,\"h\":425,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"127\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"trumpeter-thumb@2x.jpeg\",\"size\":11392,\"mime\":\"\",\"assetID\":\"20\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"trumpeter-w150h150@2x.jpeg\",\"size\":14014,\"mime\":\"\",\"assetID\":\"33\"}}},\"url\":\"http:\\/\\/t.co\\/BkOKVLZ5uc\"},{\"name\":\"Holly Squire\",\"photo\":{\"assetID\":\"21\",\"title\":\"Holly\",\"_default\":\"\\/perch\\/resources\\/holly.jpeg\",\"bucket\":\"default\",\"path\":\"holly.jpeg\",\"size\":35297,\"w\":424,\"h\":424,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"holly-thumb@2x.jpeg\",\"size\":24345,\"mime\":\"\",\"assetID\":\"22\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"holly-w150h150@2x.jpeg\",\"size\":25920,\"mime\":\"\",\"assetID\":\"34\"}}},\"url\":\"https:\\/\\/twitter.com\\/HollyEsquire\"},{\"name\":\"Jack Casling\",\"photo\":{\"assetID\":\"23\",\"title\":\"Jack\",\"_default\":\"\\/perch\\/resources\\/jack.jpg\",\"bucket\":\"default\",\"path\":\"jack.jpg\",\"size\":25306,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jack-thumb@2x.jpg\",\"size\":11383,\"mime\":\"\",\"assetID\":\"24\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jack-w150h150@2x.jpg\",\"size\":12236,\"mime\":\"\",\"assetID\":\"35\"}}},\"url\":\"http:\\/\\/www.choirofvision.com\\/\"},{\"name\":\"Mike Leigh Cooper\",\"photo\":{\"assetID\":\"25\",\"title\":\"Mike cooper\",\"_default\":\"\\/perch\\/resources\\/mikecooper.png\",\"bucket\":\"default\",\"path\":\"mikecooper.png\",\"size\":221947,\"w\":512,\"h\":512,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikecooper-thumb@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"26\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikecooper-w150h150@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"36\"}}},\"url\":\"https:\\/\\/twitter.com\\/Mikeleighcooper\"},{\"name\":\"Jonathan Sillence\",\"photo\":{\"assetID\":\"27\",\"title\":\"Jay\",\"_default\":\"\\/perch\\/resources\\/jay.jpeg\",\"bucket\":\"default\",\"path\":\"jay.jpeg\",\"size\":63913,\"w\":359,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"107\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jay-thumb@2x.jpeg\",\"size\":12597,\"mime\":\"\",\"assetID\":\"28\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jay-w150h150@2x.jpeg\",\"size\":17743,\"mime\":\"\",\"assetID\":\"37\"}}},\"url\":\"https:\\/\\/twitter.com\\/JaySillence\"},{\"name\":\"Kevin Craighead\",\"photo\":{\"assetID\":\"29\",\"title\":\"Kevin\",\"_default\":\"\\/perch\\/resources\\/kevin.jpg\",\"bucket\":\"default\",\"path\":\"kevin.jpg\",\"size\":146238,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"kevin-thumb@2x.jpg\",\"size\":13673,\"mime\":\"\",\"assetID\":\"30\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"kevin-w150h150@2x.jpg\",\"size\":14544,\"mime\":\"\",\"assetID\":\"38\"}}},\"url\":\"https:\\/\\/twitter.com\\/designyork\"},{\"name\":\"James Howard\",\"photo\":{\"assetID\":\"39\",\"title\":\"James howard\",\"_default\":\"\\/perch\\/resources\\/jameshoward.jpeg\",\"bucket\":\"default\",\"path\":\"jameshoward.jpeg\",\"size\":9375,\"w\":256,\"h\":256,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jameshoward-thumb@2x.jpeg\",\"size\":16440,\"mime\":\"\",\"assetID\":\"40\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jameshoward-w150h150@2x.jpeg\",\"size\":17224,\"mime\":\"\",\"assetID\":\"41\"}}},\"url\":\"http:\\/\\/www.reetgood.co.uk\\/\"},{\"name\":\"David Edmunds\",\"photo\":{\"assetID\":\"42\",\"title\":\"David\",\"_default\":\"\\/perch\\/resources\\/david.jpg\",\"bucket\":\"default\",\"path\":\"david.jpg\",\"size\":25739,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"david-thumb@2x.jpg\",\"size\":23595,\"mime\":\"\",\"assetID\":\"43\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"david-w150h150@2x.jpg\",\"size\":24917,\"mime\":\"\",\"assetID\":\"44\"}}},\"url\":\"https:\\/\\/twitter.com\\/departsltddavid\"},{\"name\":\"Jonic Linley\",\"photo\":{\"assetID\":\"45\",\"title\":\"Jonic\",\"_default\":\"\\/perch\\/resources\\/jonic.jpg\",\"bucket\":\"default\",\"path\":\"jonic.jpg\",\"size\":23215,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jonic-thumb@2x.jpg\",\"size\":10374,\"mime\":\"\",\"assetID\":\"46\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jonic-w150h150@2x.jpg\",\"size\":10760,\"mime\":\"\",\"assetID\":\"47\"}}},\"url\":\"https:\\/\\/twitter.com\\/jonic\"},{\"name\":\"Carlotta Allum\",\"photo\":{\"assetID\":\"48\",\"title\":\"Carlotta\",\"_default\":\"\\/perch\\/resources\\/carlotta.jpg\",\"bucket\":\"default\",\"path\":\"carlotta.jpg\",\"size\":147098,\"w\":960,\"h\":960,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"carlotta-thumb@2x.jpg\",\"size\":21219,\"mime\":\"\",\"assetID\":\"49\"},\"w150h150c1@2x\":{\"w\":150,\"h\":150,\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"carlotta-w150h150@2x.jpg\",\"size\":22305,\"mime\":\"image\\/jpeg\"}}},\"url\":\"https:\\/\\/twitter.com\\/thegaytraitor\"}]}',' Stu Goulden  https://twitter.com/stugoulden Mike Harmer  http://do-make.co/ Amy Trumpeter  http://t.co/BkOKVLZ5uc Holly Squire  https://twitter.com/HollyEsquire Jack Casling  http://www.choirofvision.com/ Mike Leigh Cooper  https://twitter.com/Mikeleighcooper Jonathan Sillence  https://twitter.com/JaySillence Kevin Craighead  https://twitter.com/designyork James Howard  http://www.reetgood.co.uk/ David Edmunds  https://twitter.com/departsltddavid Jonic Linley  https://twitter.com/jonic Carlotta Allum  https://twitter.com/thegaytraitor ','2016-07-11 08:30:57','1'),
	(109,24,26,4,15,1000,'{\"_id\":\"24\",\"members\":[{\"name\":\"Stu Goulden\",\"photo\":{\"assetID\":\"15\",\"title\":\"Stu\",\"_default\":\"\\/perch\\/resources\\/stu.jpg\",\"bucket\":\"default\",\"path\":\"stu.jpg\",\"size\":26012,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"stu-thumb@2x.jpg\",\"size\":14978,\"mime\":\"\",\"assetID\":\"16\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"stu-w150h150@2x.jpg\",\"size\":15495,\"mime\":\"\",\"assetID\":\"31\"}}},\"url\":\"https:\\/\\/twitter.com\\/stugoulden\"},{\"name\":\"Mike Harmer\",\"photo\":{\"assetID\":\"17\",\"title\":\"Mike harmer\",\"_default\":\"\\/perch\\/resources\\/mikeharmer.jpg\",\"bucket\":\"default\",\"path\":\"mikeharmer.jpg\",\"size\":34845,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikeharmer-thumb@2x.jpg\",\"size\":25115,\"mime\":\"\",\"assetID\":\"18\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikeharmer-w150h150@2x.jpg\",\"size\":27265,\"mime\":\"\",\"assetID\":\"32\"}}},\"url\":\"http:\\/\\/do-make.co\\/\"},{\"name\":\"Amy Trumpeter\",\"photo\":{\"assetID\":\"56\",\"title\":\"Amy\",\"_default\":\"\\/perch\\/resources\\/amy.jpg\",\"bucket\":\"default\",\"path\":\"amy.jpg\",\"size\":37185,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"amy-thumb@2x.jpg\",\"size\":20895,\"mime\":\"\",\"assetID\":\"57\"},\"w150h150c1@2x\":{\"w\":150,\"h\":150,\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"amy-w150h150@2x.jpg\",\"size\":22083,\"mime\":\"image\\/jpeg\"}}},\"url\":\"http:\\/\\/t.co\\/BkOKVLZ5uc\"},{\"name\":\"Holly Squire\",\"photo\":{\"assetID\":\"21\",\"title\":\"Holly\",\"_default\":\"\\/perch\\/resources\\/holly.jpeg\",\"bucket\":\"default\",\"path\":\"holly.jpeg\",\"size\":35297,\"w\":424,\"h\":424,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"holly-thumb@2x.jpeg\",\"size\":24345,\"mime\":\"\",\"assetID\":\"22\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"holly-w150h150@2x.jpeg\",\"size\":25920,\"mime\":\"\",\"assetID\":\"34\"}}},\"url\":\"https:\\/\\/twitter.com\\/HollyEsquire\"},{\"name\":\"Jack Casling\",\"photo\":{\"assetID\":\"23\",\"title\":\"Jack\",\"_default\":\"\\/perch\\/resources\\/jack.jpg\",\"bucket\":\"default\",\"path\":\"jack.jpg\",\"size\":25306,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jack-thumb@2x.jpg\",\"size\":11383,\"mime\":\"\",\"assetID\":\"24\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jack-w150h150@2x.jpg\",\"size\":12236,\"mime\":\"\",\"assetID\":\"35\"}}},\"url\":\"http:\\/\\/www.choirofvision.com\\/\"},{\"name\":\"Mike Leigh Cooper\",\"photo\":{\"assetID\":\"25\",\"title\":\"Mike cooper\",\"_default\":\"\\/perch\\/resources\\/mikecooper.png\",\"bucket\":\"default\",\"path\":\"mikecooper.png\",\"size\":221947,\"w\":512,\"h\":512,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikecooper-thumb@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"26\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikecooper-w150h150@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"36\"}}},\"url\":\"https:\\/\\/twitter.com\\/Mikeleighcooper\"},{\"name\":\"Jonathan Sillence\",\"photo\":{\"assetID\":\"27\",\"title\":\"Jay\",\"_default\":\"\\/perch\\/resources\\/jay.jpeg\",\"bucket\":\"default\",\"path\":\"jay.jpeg\",\"size\":63913,\"w\":359,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"107\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jay-thumb@2x.jpeg\",\"size\":12597,\"mime\":\"\",\"assetID\":\"28\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jay-w150h150@2x.jpeg\",\"size\":17743,\"mime\":\"\",\"assetID\":\"37\"}}},\"url\":\"https:\\/\\/twitter.com\\/JaySillence\"},{\"name\":\"Kevin Craighead\",\"photo\":{\"assetID\":\"29\",\"title\":\"Kevin\",\"_default\":\"\\/perch\\/resources\\/kevin.jpg\",\"bucket\":\"default\",\"path\":\"kevin.jpg\",\"size\":146238,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"kevin-thumb@2x.jpg\",\"size\":13673,\"mime\":\"\",\"assetID\":\"30\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"kevin-w150h150@2x.jpg\",\"size\":14544,\"mime\":\"\",\"assetID\":\"38\"}}},\"url\":\"https:\\/\\/twitter.com\\/designyork\"},{\"name\":\"James Howard\",\"photo\":{\"assetID\":\"39\",\"title\":\"James howard\",\"_default\":\"\\/perch\\/resources\\/jameshoward.jpeg\",\"bucket\":\"default\",\"path\":\"jameshoward.jpeg\",\"size\":9375,\"w\":256,\"h\":256,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jameshoward-thumb@2x.jpeg\",\"size\":16440,\"mime\":\"\",\"assetID\":\"40\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jameshoward-w150h150@2x.jpeg\",\"size\":17224,\"mime\":\"\",\"assetID\":\"41\"}}},\"url\":\"http:\\/\\/www.reetgood.co.uk\\/\"},{\"name\":\"David Edmunds\",\"photo\":{\"assetID\":\"42\",\"title\":\"David\",\"_default\":\"\\/perch\\/resources\\/david.jpg\",\"bucket\":\"default\",\"path\":\"david.jpg\",\"size\":25739,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"david-thumb@2x.jpg\",\"size\":23595,\"mime\":\"\",\"assetID\":\"43\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"david-w150h150@2x.jpg\",\"size\":24917,\"mime\":\"\",\"assetID\":\"44\"}}},\"url\":\"https:\\/\\/twitter.com\\/departsltddavid\"},{\"name\":\"Jonic Linley\",\"photo\":{\"assetID\":\"45\",\"title\":\"Jonic\",\"_default\":\"\\/perch\\/resources\\/jonic.jpg\",\"bucket\":\"default\",\"path\":\"jonic.jpg\",\"size\":23215,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jonic-thumb@2x.jpg\",\"size\":10374,\"mime\":\"\",\"assetID\":\"46\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jonic-w150h150@2x.jpg\",\"size\":10760,\"mime\":\"\",\"assetID\":\"47\"}}},\"url\":\"https:\\/\\/twitter.com\\/jonic\"},{\"name\":\"Carlotta Allum\",\"photo\":{\"assetID\":\"48\",\"title\":\"Carlotta\",\"_default\":\"\\/perch\\/resources\\/carlotta.jpg\",\"bucket\":\"default\",\"path\":\"carlotta.jpg\",\"size\":147098,\"w\":960,\"h\":960,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"carlotta-thumb@2x.jpg\",\"size\":21219,\"mime\":\"\",\"assetID\":\"49\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"carlotta-w150h150@2x.jpg\",\"size\":22305,\"mime\":\"\",\"assetID\":\"50\"}}},\"url\":\"https:\\/\\/twitter.com\\/thegaytraitor\"},{\"name\":\"Lucy Hutchings Hunt\",\"photo\":{\"assetID\":\"53\",\"title\":\"Lucy\",\"_default\":\"\\/perch\\/resources\\/lucy.jpeg\",\"bucket\":\"default\",\"path\":\"lucy.jpeg\",\"size\":19925,\"w\":474,\"h\":474,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"lucy-thumb@2x.jpeg\",\"size\":11242,\"mime\":\"\",\"assetID\":\"54\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"lucy-w150h150@2x.jpeg\",\"size\":11562,\"mime\":\"\",\"assetID\":\"55\"}}},\"url\":\"https:\\/\\/www.venturesolutions.co.uk\\/\"}]}',' Stu Goulden  https://twitter.com/stugoulden Mike Harmer  http://do-make.co/ Amy Trumpeter  http://t.co/BkOKVLZ5uc Holly Squire  https://twitter.com/HollyEsquire Jack Casling  http://www.choirofvision.com/ Mike Leigh Cooper  https://twitter.com/Mikeleighcooper Jonathan Sillence  https://twitter.com/JaySillence Kevin Craighead  https://twitter.com/designyork James Howard  http://www.reetgood.co.uk/ David Edmunds  https://twitter.com/departsltddavid Jonic Linley  https://twitter.com/jonic Carlotta Allum  https://twitter.com/thegaytraitor Lucy Hutchings Hunt  https://www.venturesolutions.co.uk/ ','2016-07-11 08:35:27','1'),
	(111,24,26,4,17,1000,'{\"_id\":\"24\",\"members\":[{\"name\":\"Stu Goulden\",\"photo\":{\"assetID\":\"15\",\"title\":\"Stu\",\"_default\":\"\\/perch\\/resources\\/stu.jpg\",\"bucket\":\"default\",\"path\":\"stu.jpg\",\"size\":26012,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"stu-thumb@2x.jpg\",\"size\":14978,\"mime\":\"\",\"assetID\":\"16\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"stu-w150h150@2x.jpg\",\"size\":15495,\"mime\":\"\",\"assetID\":\"31\"}}},\"url\":\"https:\\/\\/twitter.com\\/stugoulden\"},{\"name\":\"Mike Harmer\",\"photo\":{\"assetID\":\"17\",\"title\":\"Mike harmer\",\"_default\":\"\\/perch\\/resources\\/mikeharmer.jpg\",\"bucket\":\"default\",\"path\":\"mikeharmer.jpg\",\"size\":34845,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikeharmer-thumb@2x.jpg\",\"size\":25115,\"mime\":\"\",\"assetID\":\"18\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikeharmer-w150h150@2x.jpg\",\"size\":27265,\"mime\":\"\",\"assetID\":\"32\"}}},\"url\":\"http:\\/\\/do-make.co\\/\"},{\"name\":\"Amy Trumpeter\",\"photo\":{\"assetID\":\"56\",\"title\":\"Amy\",\"_default\":\"\\/perch\\/resources\\/amy.jpg\",\"bucket\":\"default\",\"path\":\"amy.jpg\",\"size\":37185,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"amy-thumb@2x.jpg\",\"size\":20895,\"mime\":\"\",\"assetID\":\"57\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"amy-w150h150@2x.jpg\",\"size\":22083,\"mime\":\"\",\"assetID\":\"58\"}}},\"url\":\"http:\\/\\/t.co\\/BkOKVLZ5uc\"},{\"name\":\"Holly Squire\",\"photo\":{\"assetID\":\"21\",\"title\":\"Holly\",\"_default\":\"\\/perch\\/resources\\/holly.jpeg\",\"bucket\":\"default\",\"path\":\"holly.jpeg\",\"size\":35297,\"w\":424,\"h\":424,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"holly-thumb@2x.jpeg\",\"size\":24345,\"mime\":\"\",\"assetID\":\"22\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"holly-w150h150@2x.jpeg\",\"size\":25920,\"mime\":\"\",\"assetID\":\"34\"}}},\"url\":\"https:\\/\\/twitter.com\\/HollyEsquire\"},{\"name\":\"Jack Casling\",\"photo\":{\"assetID\":\"23\",\"title\":\"Jack\",\"_default\":\"\\/perch\\/resources\\/jack.jpg\",\"bucket\":\"default\",\"path\":\"jack.jpg\",\"size\":25306,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jack-thumb@2x.jpg\",\"size\":11383,\"mime\":\"\",\"assetID\":\"24\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jack-w150h150@2x.jpg\",\"size\":12236,\"mime\":\"\",\"assetID\":\"35\"}}},\"url\":\"http:\\/\\/www.choirofvision.com\\/\"},{\"name\":\"Mike Leigh Cooper\",\"photo\":{\"assetID\":\"25\",\"title\":\"Mike cooper\",\"_default\":\"\\/perch\\/resources\\/mikecooper.png\",\"bucket\":\"default\",\"path\":\"mikecooper.png\",\"size\":221947,\"w\":512,\"h\":512,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikecooper-thumb@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"26\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikecooper-w150h150@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"36\"}}},\"url\":\"https:\\/\\/twitter.com\\/Mikeleighcooper\"},{\"name\":\"Jonathan Sillence\",\"photo\":{\"assetID\":\"27\",\"title\":\"Jay\",\"_default\":\"\\/perch\\/resources\\/jay.jpeg\",\"bucket\":\"default\",\"path\":\"jay.jpeg\",\"size\":63913,\"w\":359,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"107\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jay-thumb@2x.jpeg\",\"size\":12597,\"mime\":\"\",\"assetID\":\"28\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jay-w150h150@2x.jpeg\",\"size\":17743,\"mime\":\"\",\"assetID\":\"37\"}}},\"url\":\"https:\\/\\/twitter.com\\/JaySillence\"},{\"name\":\"Kevin Craighead\",\"photo\":{\"assetID\":\"29\",\"title\":\"Kevin\",\"_default\":\"\\/perch\\/resources\\/kevin.jpg\",\"bucket\":\"default\",\"path\":\"kevin.jpg\",\"size\":146238,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"kevin-thumb@2x.jpg\",\"size\":13673,\"mime\":\"\",\"assetID\":\"30\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"kevin-w150h150@2x.jpg\",\"size\":14544,\"mime\":\"\",\"assetID\":\"38\"}}},\"url\":\"https:\\/\\/twitter.com\\/designyork\"},{\"name\":\"James Howard\",\"photo\":{\"assetID\":\"39\",\"title\":\"James howard\",\"_default\":\"\\/perch\\/resources\\/jameshoward.jpeg\",\"bucket\":\"default\",\"path\":\"jameshoward.jpeg\",\"size\":9375,\"w\":256,\"h\":256,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jameshoward-thumb@2x.jpeg\",\"size\":16440,\"mime\":\"\",\"assetID\":\"40\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jameshoward-w150h150@2x.jpeg\",\"size\":17224,\"mime\":\"\",\"assetID\":\"41\"}}},\"url\":\"http:\\/\\/www.reetgood.co.uk\\/\"},{\"name\":\"David Edmunds\",\"photo\":{\"assetID\":\"42\",\"title\":\"David\",\"_default\":\"\\/perch\\/resources\\/david.jpg\",\"bucket\":\"default\",\"path\":\"david.jpg\",\"size\":25739,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"david-thumb@2x.jpg\",\"size\":23595,\"mime\":\"\",\"assetID\":\"43\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"david-w150h150@2x.jpg\",\"size\":24917,\"mime\":\"\",\"assetID\":\"44\"}}},\"url\":\"https:\\/\\/twitter.com\\/departsltddavid\"},{\"name\":\"Jonic Linley\",\"photo\":{\"assetID\":\"45\",\"title\":\"Jonic\",\"_default\":\"\\/perch\\/resources\\/jonic.jpg\",\"bucket\":\"default\",\"path\":\"jonic.jpg\",\"size\":23215,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jonic-thumb@2x.jpg\",\"size\":10374,\"mime\":\"\",\"assetID\":\"46\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jonic-w150h150@2x.jpg\",\"size\":10760,\"mime\":\"\",\"assetID\":\"47\"}}},\"url\":\"https:\\/\\/twitter.com\\/jonic\"},{\"name\":\"Carlotta Allum\",\"photo\":{\"assetID\":\"48\",\"title\":\"Carlotta\",\"_default\":\"\\/perch\\/resources\\/carlotta.jpg\",\"bucket\":\"default\",\"path\":\"carlotta.jpg\",\"size\":147098,\"w\":960,\"h\":960,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"carlotta-thumb@2x.jpg\",\"size\":21219,\"mime\":\"\",\"assetID\":\"49\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"carlotta-w150h150@2x.jpg\",\"size\":22305,\"mime\":\"\",\"assetID\":\"50\"}}},\"url\":\"https:\\/\\/twitter.com\\/thegaytraitor\"},{\"name\":\"Lucy Hutchings Hunt\",\"photo\":{\"assetID\":\"53\",\"title\":\"Lucy\",\"_default\":\"\\/perch\\/resources\\/lucy.jpeg\",\"bucket\":\"default\",\"path\":\"lucy.jpeg\",\"size\":19925,\"w\":474,\"h\":474,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"lucy-thumb@2x.jpeg\",\"size\":11242,\"mime\":\"\",\"assetID\":\"54\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"lucy-w150h150@2x.jpeg\",\"size\":11562,\"mime\":\"\",\"assetID\":\"55\"}}},\"url\":\"https:\\/\\/www.venturesolutions.co.uk\\/\"},{\"name\":\"Rick Chadwick\",\"photo\":{\"assetID\":\"59\",\"title\":\"Rick\",\"_default\":\"\\/perch\\/resources\\/rick.jpeg\",\"bucket\":\"default\",\"path\":\"rick.jpeg\",\"size\":12302,\"w\":240,\"h\":240,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"rick-thumb@2x.jpeg\",\"size\":15771,\"mime\":\"\",\"assetID\":\"60\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"rick-w150h150@2x.jpeg\",\"size\":16315,\"mime\":\"\",\"assetID\":\"61\"}}},\"url\":\"https:\\/\\/twitter.com\\/rickary\"},{\"name\":\"Simon Long\",\"photo\":{\"assetID\":\"62\",\"title\":\"Simon\",\"_default\":\"\\/perch\\/resources\\/simon.jpeg\",\"bucket\":\"default\",\"path\":\"simon.jpeg\",\"size\":86406,\"w\":640,\"h\":640,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"simon-thumb@2x.jpeg\",\"size\":21381,\"mime\":\"\",\"assetID\":\"63\"},\"w150h150c1@2x\":{\"w\":150,\"h\":150,\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"simon-w150h150@2x.jpeg\",\"size\":22314,\"mime\":\"image\\/jpeg\"}}},\"url\":\"https:\\/\\/twitter.com\\/ShamblesKitchen\"}]}',' Stu Goulden  https://twitter.com/stugoulden Mike Harmer  http://do-make.co/ Amy Trumpeter  http://t.co/BkOKVLZ5uc Holly Squire  https://twitter.com/HollyEsquire Jack Casling  http://www.choirofvision.com/ Mike Leigh Cooper  https://twitter.com/Mikeleighcooper Jonathan Sillence  https://twitter.com/JaySillence Kevin Craighead  https://twitter.com/designyork James Howard  http://www.reetgood.co.uk/ David Edmunds  https://twitter.com/departsltddavid Jonic Linley  https://twitter.com/jonic Carlotta Allum  https://twitter.com/thegaytraitor Lucy Hutchings Hunt  https://www.venturesolutions.co.uk/ Rick Chadwick  https://twitter.com/rickary Simon Long  https://twitter.com/ShamblesKitchen ','2016-07-11 08:37:46','1'),
	(104,24,26,4,10,1000,'{\"_id\":\"24\",\"members\":[{\"name\":\"Stu Goulden\",\"photo\":{\"assetID\":\"15\",\"title\":\"Stu\",\"_default\":\"\\/perch\\/resources\\/stu.jpg\",\"bucket\":\"default\",\"path\":\"stu.jpg\",\"size\":26012,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"stu-thumb@2x.jpg\",\"size\":14978,\"mime\":\"\",\"assetID\":\"16\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"stu-w150h150@2x.jpg\",\"size\":15495,\"mime\":\"\",\"assetID\":\"31\"}}},\"url\":\"https:\\/\\/twitter.com\\/stugoulden\"},{\"name\":\"Mike Harmer\",\"photo\":{\"assetID\":\"17\",\"title\":\"Mike harmer\",\"_default\":\"\\/perch\\/resources\\/mikeharmer.jpg\",\"bucket\":\"default\",\"path\":\"mikeharmer.jpg\",\"size\":34845,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikeharmer-thumb@2x.jpg\",\"size\":25115,\"mime\":\"\",\"assetID\":\"18\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikeharmer-w150h150@2x.jpg\",\"size\":27265,\"mime\":\"\",\"assetID\":\"32\"}}},\"url\":\"http:\\/\\/do-make.co\\/\"},{\"name\":\"Amy Trumpeter\",\"photo\":{\"assetID\":\"19\",\"title\":\"Trumpeter\",\"_default\":\"\\/perch\\/resources\\/trumpeter.jpeg\",\"bucket\":\"default\",\"path\":\"trumpeter.jpeg\",\"size\":75687,\"w\":500,\"h\":425,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"127\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"trumpeter-thumb@2x.jpeg\",\"size\":11392,\"mime\":\"\",\"assetID\":\"20\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"trumpeter-w150h150@2x.jpeg\",\"size\":14014,\"mime\":\"\",\"assetID\":\"33\"}}},\"url\":\"http:\\/\\/t.co\\/BkOKVLZ5uc\"},{\"name\":\"Holly Squire\",\"photo\":{\"assetID\":\"21\",\"title\":\"Holly\",\"_default\":\"\\/perch\\/resources\\/holly.jpeg\",\"bucket\":\"default\",\"path\":\"holly.jpeg\",\"size\":35297,\"w\":424,\"h\":424,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"holly-thumb@2x.jpeg\",\"size\":24345,\"mime\":\"\",\"assetID\":\"22\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"holly-w150h150@2x.jpeg\",\"size\":25920,\"mime\":\"\",\"assetID\":\"34\"}}},\"url\":\"https:\\/\\/twitter.com\\/HollyEsquire\"},{\"name\":\"Jack Casling\",\"photo\":{\"assetID\":\"23\",\"title\":\"Jack\",\"_default\":\"\\/perch\\/resources\\/jack.jpg\",\"bucket\":\"default\",\"path\":\"jack.jpg\",\"size\":25306,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jack-thumb@2x.jpg\",\"size\":11383,\"mime\":\"\",\"assetID\":\"24\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jack-w150h150@2x.jpg\",\"size\":12236,\"mime\":\"\",\"assetID\":\"35\"}}},\"url\":\"http:\\/\\/www.choirofvision.com\\/\"},{\"name\":\"Mike Leigh Cooper\",\"photo\":{\"assetID\":\"25\",\"title\":\"Mike cooper\",\"_default\":\"\\/perch\\/resources\\/mikecooper.png\",\"bucket\":\"default\",\"path\":\"mikecooper.png\",\"size\":221947,\"w\":512,\"h\":512,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikecooper-thumb@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"26\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikecooper-w150h150@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"36\"}}},\"url\":\"https:\\/\\/twitter.com\\/Mikeleighcooper\"},{\"name\":\"Jonathan Sillence\",\"photo\":{\"assetID\":\"27\",\"title\":\"Jay\",\"_default\":\"\\/perch\\/resources\\/jay.jpeg\",\"bucket\":\"default\",\"path\":\"jay.jpeg\",\"size\":63913,\"w\":359,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"107\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jay-thumb@2x.jpeg\",\"size\":12597,\"mime\":\"\",\"assetID\":\"28\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jay-w150h150@2x.jpeg\",\"size\":17743,\"mime\":\"\",\"assetID\":\"37\"}}},\"url\":\"https:\\/\\/twitter.com\\/JaySillence\"},{\"name\":\"Kevin Craighead\",\"photo\":{\"assetID\":\"29\",\"title\":\"Kevin\",\"_default\":\"\\/perch\\/resources\\/kevin.jpg\",\"bucket\":\"default\",\"path\":\"kevin.jpg\",\"size\":146238,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"kevin-thumb@2x.jpg\",\"size\":13673,\"mime\":\"\",\"assetID\":\"30\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"kevin-w150h150@2x.jpg\",\"size\":14544,\"mime\":\"\",\"assetID\":\"38\"}}},\"url\":\"https:\\/\\/twitter.com\\/designyork\"},{\"name\":\"James Howard\",\"photo\":{\"assetID\":\"39\",\"title\":\"James howard\",\"_default\":\"\\/perch\\/resources\\/jameshoward.jpeg\",\"bucket\":\"default\",\"path\":\"jameshoward.jpeg\",\"size\":9375,\"w\":256,\"h\":256,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jameshoward-thumb@2x.jpeg\",\"size\":16440,\"mime\":\"\",\"assetID\":\"40\"},\"w150h150c1@2x\":{\"w\":150,\"h\":150,\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jameshoward-w150h150@2x.jpeg\",\"size\":17224,\"mime\":\"image\\/jpeg\"}}},\"url\":\"http:\\/\\/www.reetgood.co.uk\\/\"}]}',' Stu Goulden  https://twitter.com/stugoulden Mike Harmer  http://do-make.co/ Amy Trumpeter  http://t.co/BkOKVLZ5uc Holly Squire  https://twitter.com/HollyEsquire Jack Casling  http://www.choirofvision.com/ Mike Leigh Cooper  https://twitter.com/Mikeleighcooper Jonathan Sillence  https://twitter.com/JaySillence Kevin Craighead  https://twitter.com/designyork James Howard  http://www.reetgood.co.uk/ ','2016-07-11 08:27:31','1'),
	(106,24,26,4,12,1000,'{\"_id\":\"24\",\"members\":[{\"name\":\"Stu Goulden\",\"photo\":{\"assetID\":\"15\",\"title\":\"Stu\",\"_default\":\"\\/perch\\/resources\\/stu.jpg\",\"bucket\":\"default\",\"path\":\"stu.jpg\",\"size\":26012,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"stu-thumb@2x.jpg\",\"size\":14978,\"mime\":\"\",\"assetID\":\"16\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"stu-w150h150@2x.jpg\",\"size\":15495,\"mime\":\"\",\"assetID\":\"31\"}}},\"url\":\"https:\\/\\/twitter.com\\/stugoulden\"},{\"name\":\"Mike Harmer\",\"photo\":{\"assetID\":\"17\",\"title\":\"Mike harmer\",\"_default\":\"\\/perch\\/resources\\/mikeharmer.jpg\",\"bucket\":\"default\",\"path\":\"mikeharmer.jpg\",\"size\":34845,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikeharmer-thumb@2x.jpg\",\"size\":25115,\"mime\":\"\",\"assetID\":\"18\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikeharmer-w150h150@2x.jpg\",\"size\":27265,\"mime\":\"\",\"assetID\":\"32\"}}},\"url\":\"http:\\/\\/do-make.co\\/\"},{\"name\":\"Amy Trumpeter\",\"photo\":{\"assetID\":\"19\",\"title\":\"Trumpeter\",\"_default\":\"\\/perch\\/resources\\/trumpeter.jpeg\",\"bucket\":\"default\",\"path\":\"trumpeter.jpeg\",\"size\":75687,\"w\":500,\"h\":425,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"127\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"trumpeter-thumb@2x.jpeg\",\"size\":11392,\"mime\":\"\",\"assetID\":\"20\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"trumpeter-w150h150@2x.jpeg\",\"size\":14014,\"mime\":\"\",\"assetID\":\"33\"}}},\"url\":\"http:\\/\\/t.co\\/BkOKVLZ5uc\"},{\"name\":\"Holly Squire\",\"photo\":{\"assetID\":\"21\",\"title\":\"Holly\",\"_default\":\"\\/perch\\/resources\\/holly.jpeg\",\"bucket\":\"default\",\"path\":\"holly.jpeg\",\"size\":35297,\"w\":424,\"h\":424,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"holly-thumb@2x.jpeg\",\"size\":24345,\"mime\":\"\",\"assetID\":\"22\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"holly-w150h150@2x.jpeg\",\"size\":25920,\"mime\":\"\",\"assetID\":\"34\"}}},\"url\":\"https:\\/\\/twitter.com\\/HollyEsquire\"},{\"name\":\"Jack Casling\",\"photo\":{\"assetID\":\"23\",\"title\":\"Jack\",\"_default\":\"\\/perch\\/resources\\/jack.jpg\",\"bucket\":\"default\",\"path\":\"jack.jpg\",\"size\":25306,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jack-thumb@2x.jpg\",\"size\":11383,\"mime\":\"\",\"assetID\":\"24\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jack-w150h150@2x.jpg\",\"size\":12236,\"mime\":\"\",\"assetID\":\"35\"}}},\"url\":\"http:\\/\\/www.choirofvision.com\\/\"},{\"name\":\"Mike Leigh Cooper\",\"photo\":{\"assetID\":\"25\",\"title\":\"Mike cooper\",\"_default\":\"\\/perch\\/resources\\/mikecooper.png\",\"bucket\":\"default\",\"path\":\"mikecooper.png\",\"size\":221947,\"w\":512,\"h\":512,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikecooper-thumb@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"26\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikecooper-w150h150@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"36\"}}},\"url\":\"https:\\/\\/twitter.com\\/Mikeleighcooper\"},{\"name\":\"Jonathan Sillence\",\"photo\":{\"assetID\":\"27\",\"title\":\"Jay\",\"_default\":\"\\/perch\\/resources\\/jay.jpeg\",\"bucket\":\"default\",\"path\":\"jay.jpeg\",\"size\":63913,\"w\":359,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"107\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jay-thumb@2x.jpeg\",\"size\":12597,\"mime\":\"\",\"assetID\":\"28\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jay-w150h150@2x.jpeg\",\"size\":17743,\"mime\":\"\",\"assetID\":\"37\"}}},\"url\":\"https:\\/\\/twitter.com\\/JaySillence\"},{\"name\":\"Kevin Craighead\",\"photo\":{\"assetID\":\"29\",\"title\":\"Kevin\",\"_default\":\"\\/perch\\/resources\\/kevin.jpg\",\"bucket\":\"default\",\"path\":\"kevin.jpg\",\"size\":146238,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"kevin-thumb@2x.jpg\",\"size\":13673,\"mime\":\"\",\"assetID\":\"30\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"kevin-w150h150@2x.jpg\",\"size\":14544,\"mime\":\"\",\"assetID\":\"38\"}}},\"url\":\"https:\\/\\/twitter.com\\/designyork\"},{\"name\":\"James Howard\",\"photo\":{\"assetID\":\"39\",\"title\":\"James howard\",\"_default\":\"\\/perch\\/resources\\/jameshoward.jpeg\",\"bucket\":\"default\",\"path\":\"jameshoward.jpeg\",\"size\":9375,\"w\":256,\"h\":256,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jameshoward-thumb@2x.jpeg\",\"size\":16440,\"mime\":\"\",\"assetID\":\"40\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jameshoward-w150h150@2x.jpeg\",\"size\":17224,\"mime\":\"\",\"assetID\":\"41\"}}},\"url\":\"http:\\/\\/www.reetgood.co.uk\\/\"},{\"name\":\"David Edmunds\",\"photo\":{\"assetID\":\"42\",\"title\":\"David\",\"_default\":\"\\/perch\\/resources\\/david.jpg\",\"bucket\":\"default\",\"path\":\"david.jpg\",\"size\":25739,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"david-thumb@2x.jpg\",\"size\":23595,\"mime\":\"\",\"assetID\":\"43\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"david-w150h150@2x.jpg\",\"size\":24917,\"mime\":\"\",\"assetID\":\"44\"}}},\"url\":\"https:\\/\\/twitter.com\\/departsltddavid\"},{\"name\":\"Jonic Linley\",\"photo\":{\"assetID\":\"45\",\"title\":\"Jonic\",\"_default\":\"\\/perch\\/resources\\/jonic.jpg\",\"bucket\":\"default\",\"path\":\"jonic.jpg\",\"size\":23215,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jonic-thumb@2x.jpg\",\"size\":10374,\"mime\":\"\",\"assetID\":\"46\"},\"w150h150c1@2x\":{\"w\":150,\"h\":150,\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jonic-w150h150@2x.jpg\",\"size\":10760,\"mime\":\"image\\/jpeg\"}}},\"url\":\"https:\\/\\/twitter.com\\/jonic\"}]}',' Stu Goulden  https://twitter.com/stugoulden Mike Harmer  http://do-make.co/ Amy Trumpeter  http://t.co/BkOKVLZ5uc Holly Squire  https://twitter.com/HollyEsquire Jack Casling  http://www.choirofvision.com/ Mike Leigh Cooper  https://twitter.com/Mikeleighcooper Jonathan Sillence  https://twitter.com/JaySillence Kevin Craighead  https://twitter.com/designyork James Howard  http://www.reetgood.co.uk/ David Edmunds  https://twitter.com/departsltddavid Jonic Linley  https://twitter.com/jonic ','2016-07-11 08:29:25','1'),
	(108,24,26,4,14,1000,'{\"_id\":\"24\",\"members\":[{\"name\":\"Stu Goulden\",\"photo\":{\"assetID\":\"15\",\"title\":\"Stu\",\"_default\":\"\\/perch\\/resources\\/stu.jpg\",\"bucket\":\"default\",\"path\":\"stu.jpg\",\"size\":26012,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"stu-thumb@2x.jpg\",\"size\":14978,\"mime\":\"\",\"assetID\":\"16\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"stu-w150h150@2x.jpg\",\"size\":15495,\"mime\":\"\",\"assetID\":\"31\"}}},\"url\":\"https:\\/\\/twitter.com\\/stugoulden\"},{\"name\":\"Mike Harmer\",\"photo\":{\"assetID\":\"17\",\"title\":\"Mike harmer\",\"_default\":\"\\/perch\\/resources\\/mikeharmer.jpg\",\"bucket\":\"default\",\"path\":\"mikeharmer.jpg\",\"size\":34845,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikeharmer-thumb@2x.jpg\",\"size\":25115,\"mime\":\"\",\"assetID\":\"18\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikeharmer-w150h150@2x.jpg\",\"size\":27265,\"mime\":\"\",\"assetID\":\"32\"}}},\"url\":\"http:\\/\\/do-make.co\\/\"},{\"name\":\"Amy Trumpeter\",\"photo\":{\"assetID\":\"19\",\"title\":\"Trumpeter\",\"_default\":\"\\/perch\\/resources\\/trumpeter.jpeg\",\"bucket\":\"default\",\"path\":\"trumpeter.jpeg\",\"size\":75687,\"w\":500,\"h\":425,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"127\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"trumpeter-thumb@2x.jpeg\",\"size\":11392,\"mime\":\"\",\"assetID\":\"20\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"trumpeter-w150h150@2x.jpeg\",\"size\":14014,\"mime\":\"\",\"assetID\":\"33\"}}},\"url\":\"http:\\/\\/t.co\\/BkOKVLZ5uc\"},{\"name\":\"Holly Squire\",\"photo\":{\"assetID\":\"21\",\"title\":\"Holly\",\"_default\":\"\\/perch\\/resources\\/holly.jpeg\",\"bucket\":\"default\",\"path\":\"holly.jpeg\",\"size\":35297,\"w\":424,\"h\":424,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"holly-thumb@2x.jpeg\",\"size\":24345,\"mime\":\"\",\"assetID\":\"22\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"holly-w150h150@2x.jpeg\",\"size\":25920,\"mime\":\"\",\"assetID\":\"34\"}}},\"url\":\"https:\\/\\/twitter.com\\/HollyEsquire\"},{\"name\":\"Jack Casling\",\"photo\":{\"assetID\":\"23\",\"title\":\"Jack\",\"_default\":\"\\/perch\\/resources\\/jack.jpg\",\"bucket\":\"default\",\"path\":\"jack.jpg\",\"size\":25306,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jack-thumb@2x.jpg\",\"size\":11383,\"mime\":\"\",\"assetID\":\"24\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jack-w150h150@2x.jpg\",\"size\":12236,\"mime\":\"\",\"assetID\":\"35\"}}},\"url\":\"http:\\/\\/www.choirofvision.com\\/\"},{\"name\":\"Mike Leigh Cooper\",\"photo\":{\"assetID\":\"25\",\"title\":\"Mike cooper\",\"_default\":\"\\/perch\\/resources\\/mikecooper.png\",\"bucket\":\"default\",\"path\":\"mikecooper.png\",\"size\":221947,\"w\":512,\"h\":512,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikecooper-thumb@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"26\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikecooper-w150h150@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"36\"}}},\"url\":\"https:\\/\\/twitter.com\\/Mikeleighcooper\"},{\"name\":\"Jonathan Sillence\",\"photo\":{\"assetID\":\"27\",\"title\":\"Jay\",\"_default\":\"\\/perch\\/resources\\/jay.jpeg\",\"bucket\":\"default\",\"path\":\"jay.jpeg\",\"size\":63913,\"w\":359,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"107\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jay-thumb@2x.jpeg\",\"size\":12597,\"mime\":\"\",\"assetID\":\"28\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jay-w150h150@2x.jpeg\",\"size\":17743,\"mime\":\"\",\"assetID\":\"37\"}}},\"url\":\"https:\\/\\/twitter.com\\/JaySillence\"},{\"name\":\"Kevin Craighead\",\"photo\":{\"assetID\":\"29\",\"title\":\"Kevin\",\"_default\":\"\\/perch\\/resources\\/kevin.jpg\",\"bucket\":\"default\",\"path\":\"kevin.jpg\",\"size\":146238,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"kevin-thumb@2x.jpg\",\"size\":13673,\"mime\":\"\",\"assetID\":\"30\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"kevin-w150h150@2x.jpg\",\"size\":14544,\"mime\":\"\",\"assetID\":\"38\"}}},\"url\":\"https:\\/\\/twitter.com\\/designyork\"},{\"name\":\"James Howard\",\"photo\":{\"assetID\":\"39\",\"title\":\"James howard\",\"_default\":\"\\/perch\\/resources\\/jameshoward.jpeg\",\"bucket\":\"default\",\"path\":\"jameshoward.jpeg\",\"size\":9375,\"w\":256,\"h\":256,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jameshoward-thumb@2x.jpeg\",\"size\":16440,\"mime\":\"\",\"assetID\":\"40\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jameshoward-w150h150@2x.jpeg\",\"size\":17224,\"mime\":\"\",\"assetID\":\"41\"}}},\"url\":\"http:\\/\\/www.reetgood.co.uk\\/\"},{\"name\":\"David Edmunds\",\"photo\":{\"assetID\":\"42\",\"title\":\"David\",\"_default\":\"\\/perch\\/resources\\/david.jpg\",\"bucket\":\"default\",\"path\":\"david.jpg\",\"size\":25739,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"david-thumb@2x.jpg\",\"size\":23595,\"mime\":\"\",\"assetID\":\"43\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"david-w150h150@2x.jpg\",\"size\":24917,\"mime\":\"\",\"assetID\":\"44\"}}},\"url\":\"https:\\/\\/twitter.com\\/departsltddavid\"},{\"name\":\"Jonic Linley\",\"photo\":{\"assetID\":\"45\",\"title\":\"Jonic\",\"_default\":\"\\/perch\\/resources\\/jonic.jpg\",\"bucket\":\"default\",\"path\":\"jonic.jpg\",\"size\":23215,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jonic-thumb@2x.jpg\",\"size\":10374,\"mime\":\"\",\"assetID\":\"46\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jonic-w150h150@2x.jpg\",\"size\":10760,\"mime\":\"\",\"assetID\":\"47\"}}},\"url\":\"https:\\/\\/twitter.com\\/jonic\"},{\"name\":\"Carlotta Allum\",\"photo\":{\"assetID\":\"48\",\"title\":\"Carlotta\",\"_default\":\"\\/perch\\/resources\\/carlotta.jpg\",\"bucket\":\"default\",\"path\":\"carlotta.jpg\",\"size\":147098,\"w\":960,\"h\":960,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"carlotta-thumb@2x.jpg\",\"size\":21219,\"mime\":\"\",\"assetID\":\"49\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"carlotta-w150h150@2x.jpg\",\"size\":22305,\"mime\":\"\",\"assetID\":\"50\"}}},\"url\":\"https:\\/\\/twitter.com\\/thegaytraitor\"},{\"name\":\"Lucy Hutchings Hunt\",\"photo\":{\"assetID\":\"53\",\"title\":\"Lucy\",\"_default\":\"\\/perch\\/resources\\/lucy.jpeg\",\"bucket\":\"default\",\"path\":\"lucy.jpeg\",\"size\":19925,\"w\":474,\"h\":474,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"lucy-thumb@2x.jpeg\",\"size\":11242,\"mime\":\"\",\"assetID\":\"54\"},\"w150h150c1@2x\":{\"w\":150,\"h\":150,\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"lucy-w150h150@2x.jpeg\",\"size\":11562,\"mime\":\"image\\/jpeg\"}}},\"url\":\"https:\\/\\/www.venturesolutions.co.uk\\/\"}]}',' Stu Goulden  https://twitter.com/stugoulden Mike Harmer  http://do-make.co/ Amy Trumpeter  http://t.co/BkOKVLZ5uc Holly Squire  https://twitter.com/HollyEsquire Jack Casling  http://www.choirofvision.com/ Mike Leigh Cooper  https://twitter.com/Mikeleighcooper Jonathan Sillence  https://twitter.com/JaySillence Kevin Craighead  https://twitter.com/designyork James Howard  http://www.reetgood.co.uk/ David Edmunds  https://twitter.com/departsltddavid Jonic Linley  https://twitter.com/jonic Carlotta Allum  https://twitter.com/thegaytraitor Lucy Hutchings Hunt  https://www.venturesolutions.co.uk/ ','2016-07-11 08:33:58','1'),
	(110,24,26,4,16,1000,'{\"_id\":\"24\",\"members\":[{\"name\":\"Stu Goulden\",\"photo\":{\"assetID\":\"15\",\"title\":\"Stu\",\"_default\":\"\\/perch\\/resources\\/stu.jpg\",\"bucket\":\"default\",\"path\":\"stu.jpg\",\"size\":26012,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"stu-thumb@2x.jpg\",\"size\":14978,\"mime\":\"\",\"assetID\":\"16\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"stu-w150h150@2x.jpg\",\"size\":15495,\"mime\":\"\",\"assetID\":\"31\"}}},\"url\":\"https:\\/\\/twitter.com\\/stugoulden\"},{\"name\":\"Mike Harmer\",\"photo\":{\"assetID\":\"17\",\"title\":\"Mike harmer\",\"_default\":\"\\/perch\\/resources\\/mikeharmer.jpg\",\"bucket\":\"default\",\"path\":\"mikeharmer.jpg\",\"size\":34845,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikeharmer-thumb@2x.jpg\",\"size\":25115,\"mime\":\"\",\"assetID\":\"18\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikeharmer-w150h150@2x.jpg\",\"size\":27265,\"mime\":\"\",\"assetID\":\"32\"}}},\"url\":\"http:\\/\\/do-make.co\\/\"},{\"name\":\"Amy Trumpeter\",\"photo\":{\"assetID\":\"56\",\"title\":\"Amy\",\"_default\":\"\\/perch\\/resources\\/amy.jpg\",\"bucket\":\"default\",\"path\":\"amy.jpg\",\"size\":37185,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"amy-thumb@2x.jpg\",\"size\":20895,\"mime\":\"\",\"assetID\":\"57\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"amy-w150h150@2x.jpg\",\"size\":22083,\"mime\":\"\",\"assetID\":\"58\"}}},\"url\":\"http:\\/\\/t.co\\/BkOKVLZ5uc\"},{\"name\":\"Holly Squire\",\"photo\":{\"assetID\":\"21\",\"title\":\"Holly\",\"_default\":\"\\/perch\\/resources\\/holly.jpeg\",\"bucket\":\"default\",\"path\":\"holly.jpeg\",\"size\":35297,\"w\":424,\"h\":424,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"holly-thumb@2x.jpeg\",\"size\":24345,\"mime\":\"\",\"assetID\":\"22\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"holly-w150h150@2x.jpeg\",\"size\":25920,\"mime\":\"\",\"assetID\":\"34\"}}},\"url\":\"https:\\/\\/twitter.com\\/HollyEsquire\"},{\"name\":\"Jack Casling\",\"photo\":{\"assetID\":\"23\",\"title\":\"Jack\",\"_default\":\"\\/perch\\/resources\\/jack.jpg\",\"bucket\":\"default\",\"path\":\"jack.jpg\",\"size\":25306,\"w\":512,\"h\":512,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jack-thumb@2x.jpg\",\"size\":11383,\"mime\":\"\",\"assetID\":\"24\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jack-w150h150@2x.jpg\",\"size\":12236,\"mime\":\"\",\"assetID\":\"35\"}}},\"url\":\"http:\\/\\/www.choirofvision.com\\/\"},{\"name\":\"Mike Leigh Cooper\",\"photo\":{\"assetID\":\"25\",\"title\":\"Mike cooper\",\"_default\":\"\\/perch\\/resources\\/mikecooper.png\",\"bucket\":\"default\",\"path\":\"mikecooper.png\",\"size\":221947,\"w\":512,\"h\":512,\"mime\":\"image\\/png\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"mikecooper-thumb@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"26\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"mikecooper-w150h150@2x.png\",\"size\":121004,\"mime\":\"\",\"assetID\":\"36\"}}},\"url\":\"https:\\/\\/twitter.com\\/Mikeleighcooper\"},{\"name\":\"Jonathan Sillence\",\"photo\":{\"assetID\":\"27\",\"title\":\"Jay\",\"_default\":\"\\/perch\\/resources\\/jay.jpeg\",\"bucket\":\"default\",\"path\":\"jay.jpeg\",\"size\":63913,\"w\":359,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"107\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jay-thumb@2x.jpeg\",\"size\":12597,\"mime\":\"\",\"assetID\":\"28\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jay-w150h150@2x.jpeg\",\"size\":17743,\"mime\":\"\",\"assetID\":\"37\"}}},\"url\":\"https:\\/\\/twitter.com\\/JaySillence\"},{\"name\":\"Kevin Craighead\",\"photo\":{\"assetID\":\"29\",\"title\":\"Kevin\",\"_default\":\"\\/perch\\/resources\\/kevin.jpg\",\"bucket\":\"default\",\"path\":\"kevin.jpg\",\"size\":146238,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"kevin-thumb@2x.jpg\",\"size\":13673,\"mime\":\"\",\"assetID\":\"30\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"kevin-w150h150@2x.jpg\",\"size\":14544,\"mime\":\"\",\"assetID\":\"38\"}}},\"url\":\"https:\\/\\/twitter.com\\/designyork\"},{\"name\":\"James Howard\",\"photo\":{\"assetID\":\"39\",\"title\":\"James howard\",\"_default\":\"\\/perch\\/resources\\/jameshoward.jpeg\",\"bucket\":\"default\",\"path\":\"jameshoward.jpeg\",\"size\":9375,\"w\":256,\"h\":256,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jameshoward-thumb@2x.jpeg\",\"size\":16440,\"mime\":\"\",\"assetID\":\"40\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jameshoward-w150h150@2x.jpeg\",\"size\":17224,\"mime\":\"\",\"assetID\":\"41\"}}},\"url\":\"http:\\/\\/www.reetgood.co.uk\\/\"},{\"name\":\"David Edmunds\",\"photo\":{\"assetID\":\"42\",\"title\":\"David\",\"_default\":\"\\/perch\\/resources\\/david.jpg\",\"bucket\":\"default\",\"path\":\"david.jpg\",\"size\":25739,\"w\":400,\"h\":400,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"david-thumb@2x.jpg\",\"size\":23595,\"mime\":\"\",\"assetID\":\"43\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"david-w150h150@2x.jpg\",\"size\":24917,\"mime\":\"\",\"assetID\":\"44\"}}},\"url\":\"https:\\/\\/twitter.com\\/departsltddavid\"},{\"name\":\"Jonic Linley\",\"photo\":{\"assetID\":\"45\",\"title\":\"Jonic\",\"_default\":\"\\/perch\\/resources\\/jonic.jpg\",\"bucket\":\"default\",\"path\":\"jonic.jpg\",\"size\":23215,\"w\":500,\"h\":500,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"jonic-thumb@2x.jpg\",\"size\":10374,\"mime\":\"\",\"assetID\":\"46\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"jonic-w150h150@2x.jpg\",\"size\":10760,\"mime\":\"\",\"assetID\":\"47\"}}},\"url\":\"https:\\/\\/twitter.com\\/jonic\"},{\"name\":\"Carlotta Allum\",\"photo\":{\"assetID\":\"48\",\"title\":\"Carlotta\",\"_default\":\"\\/perch\\/resources\\/carlotta.jpg\",\"bucket\":\"default\",\"path\":\"carlotta.jpg\",\"size\":147098,\"w\":960,\"h\":960,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"carlotta-thumb@2x.jpg\",\"size\":21219,\"mime\":\"\",\"assetID\":\"49\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"carlotta-w150h150@2x.jpg\",\"size\":22305,\"mime\":\"\",\"assetID\":\"50\"}}},\"url\":\"https:\\/\\/twitter.com\\/thegaytraitor\"},{\"name\":\"Lucy Hutchings Hunt\",\"photo\":{\"assetID\":\"53\",\"title\":\"Lucy\",\"_default\":\"\\/perch\\/resources\\/lucy.jpeg\",\"bucket\":\"default\",\"path\":\"lucy.jpeg\",\"size\":19925,\"w\":474,\"h\":474,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"lucy-thumb@2x.jpeg\",\"size\":11242,\"mime\":\"\",\"assetID\":\"54\"},\"w150h150c1@2x\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"lucy-w150h150@2x.jpeg\",\"size\":11562,\"mime\":\"\",\"assetID\":\"55\"}}},\"url\":\"https:\\/\\/www.venturesolutions.co.uk\\/\"},{\"name\":\"Rick Chadwick\",\"photo\":{\"assetID\":\"59\",\"title\":\"Rick\",\"_default\":\"\\/perch\\/resources\\/rick.jpeg\",\"bucket\":\"default\",\"path\":\"rick.jpeg\",\"size\":12302,\"w\":240,\"h\":240,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"150\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"rick-thumb@2x.jpeg\",\"size\":15771,\"mime\":\"\",\"assetID\":\"60\"},\"w150h150c1@2x\":{\"w\":150,\"h\":150,\"target_w\":\"150\",\"target_h\":\"150\",\"crop\":\"true\",\"density\":\"2\",\"path\":\"rick-w150h150@2x.jpeg\",\"size\":16315,\"mime\":\"image\\/jpeg\"}}},\"url\":\"https:\\/\\/twitter.com\\/rickary\"}]}',' Stu Goulden  https://twitter.com/stugoulden Mike Harmer  http://do-make.co/ Amy Trumpeter  http://t.co/BkOKVLZ5uc Holly Squire  https://twitter.com/HollyEsquire Jack Casling  http://www.choirofvision.com/ Mike Leigh Cooper  https://twitter.com/Mikeleighcooper Jonathan Sillence  https://twitter.com/JaySillence Kevin Craighead  https://twitter.com/designyork James Howard  http://www.reetgood.co.uk/ David Edmunds  https://twitter.com/departsltddavid Jonic Linley  https://twitter.com/jonic Carlotta Allum  https://twitter.com/thegaytraitor Lucy Hutchings Hunt  https://www.venturesolutions.co.uk/ Rick Chadwick  https://twitter.com/rickary ','2016-07-11 08:36:44','1'),
	(112,20,20,1,6,1000,'{\"_id\":\"20\",\"quotes\":[{\"quote\":\"I highly recommend @acollectiveHQ\'s co-working space in the centre of York, location and facilities are great.\",\"cite\":\"Orde Saunders\"},{\"quote\":\"A welcoming, creative and modern working environment in the heart of York. A must for anyone looking to connect and collaborate with like-minded entrepreneurs.\",\"cite\":\"Nathan Vaguely\"},{\"quote\":\"What a place to work from. Really like the space, the people, the opportunities, chats and discussions. Glad I joined.\",\"cite\":\"Mike Leigh Cooper\"}]}',' I highly recommend @acollectiveHQ\'s co-working space in the centre of York, location and facilities are great. Orde Saunders A welcoming, creative and modern working environment in the heart of York. A must for anyone looking to connect and collaborate with like-minded entrepreneurs. Nathan Vaguely What a place to work from. Really like the space, the people, the opportunities, chats and discussions. Glad I joined. Mike Leigh Cooper ','2016-07-22 11:54:29','1'),
	(113,20,20,1,7,1000,'{\"_id\":\"20\",\"quotes\":[{\"quote\":\"I highly recommend @acollectiveHQ\'s co-working space in the centre of York, location and facilities are great.\",\"cite\":\"Orde Saunders\"},{\"quote\":\"A welcoming, creative and modern working environment in the heart of York. A must for anyone looking to connect and collaborate with like-minded entrepreneurs.\",\"cite\":\"Nathan Vasey\"},{\"quote\":\"What a place to work from. Really like the space, the people, the opportunities, chats and discussions. Glad I joined.\",\"cite\":\"Mike Leigh Cooper\"}]}',' I highly recommend @acollectiveHQ\'s co-working space in the centre of York, location and facilities are great. Orde Saunders A welcoming, creative and modern working environment in the heart of York. A must for anyone looking to connect and collaborate with like-minded entrepreneurs. Nathan Vasey What a place to work from. Really like the space, the people, the opportunities, chats and discussions. Glad I joined. Mike Leigh Cooper ','2016-07-22 11:54:54','1'),
	(114,1,2,1,2,1000,'{\"_id\":\"1\",\"image\":{\"assetID\":\"5\",\"title\":\"Co work2 1\",\"_default\":\"\\/perch\\/resources\\/co-work2-1.jpg\",\"bucket\":\"default\",\"path\":\"co-work2-1.jpg\",\"size\":284239,\"w\":2000,\"h\":1335,\"mime\":\"image\\/jpeg\",\"sizes\":{\"thumb\":{\"w\":\"150\",\"h\":\"100\",\"target_w\":150,\"target_h\":150,\"density\":2,\"path\":\"co-work2-1-thumb@2x.jpg\",\"size\":12820,\"mime\":\"\",\"assetID\":\"6\"}}}}','  ','2016-07-22 12:01:18','1'),
	(115,16,16,3,5,1000,'{\"_id\":\"16\",\"text\":{\"_flang\":\"markdown\",\"raw\":\"Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi.\",\"processed\":\"<p>Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi.<\\/p>\"},\"half_rate\":\"35\",\"full_rate\":\"55\"}',' Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi. 35 55 ','2016-07-22 12:25:39','1');

/*!40000 ALTER TABLE `perch2_content_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_content_regions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_content_regions`;

CREATE TABLE `perch2_content_regions` (
  `regionID` int(10) NOT NULL AUTO_INCREMENT,
  `pageID` int(10) unsigned NOT NULL,
  `regionKey` varchar(255) NOT NULL DEFAULT '',
  `regionPage` varchar(255) NOT NULL DEFAULT '',
  `regionHTML` longtext NOT NULL,
  `regionNew` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `regionOrder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `regionTemplate` varchar(255) NOT NULL DEFAULT '',
  `regionMultiple` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `regionOptions` text NOT NULL,
  `regionSearchable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `regionRev` int(10) unsigned NOT NULL DEFAULT '0',
  `regionLatestRev` int(10) unsigned NOT NULL DEFAULT '0',
  `regionEditRoles` varchar(255) NOT NULL DEFAULT '*',
  `regionUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`regionID`),
  KEY `idx_key` (`regionKey`),
  KEY `idx_path` (`regionPage`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_content_regions` WRITE;
/*!40000 ALTER TABLE `perch2_content_regions` DISABLE KEYS */;

INSERT INTO `perch2_content_regions` (`regionID`, `pageID`, `regionKey`, `regionPage`, `regionHTML`, `regionNew`, `regionOrder`, `regionTemplate`, `regionMultiple`, `regionOptions`, `regionSearchable`, `regionRev`, `regionLatestRev`, `regionEditRoles`, `regionUpdated`)
VALUES
	(1,1,'Intro','/index.php','<section class=\"p-section p-section--white\">\n	\n	<div class=\"p-section-text\">\n		<p>Say hello to a new workspace for creative folk in the heart of York.</p>\n<p>We offer an inspiring working environment for likeminded creatives, with desks and private offices available on low-fee, hassle-free terms.</p>\n<p>Now open.</p>\n	</div>\n</section>',0,1,'blocks/text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-06-13 15:04:03'),
	(2,1,'Hero','/index.php','<div class=\"p-hero js-hero\">\n    <ul class=\"p-hero__caption-list js-hero-captions\">\n        <li class=\"p-hero__caption p-hero__caption--block-of-writers\">A Block of Writers</li>\n        <li class=\"p-hero__caption p-hero__caption--draw-of-illustrators\">A Draw of Illustrators</li>\n        <li class=\"p-hero__caption p-hero__caption--flash-of-photographers\">A Flash of Photographers</li>\n        <li class=\"p-hero__caption p-hero__caption--hustle-of-entrpreneurs\">A Hustle of Entrepreneurs</li>\n        <li class=\"p-hero__caption p-hero__caption--justification-of-designers\">A Justification of Designers</li>\n    </ul>\n</div>\n',0,0,'hero.html',0,'{\"edit_mode\":\"singlepage\"}',1,2,2,'*','2016-07-22 12:01:18'),
	(3,1,'Landscape Images','/index.php','<ul class=\"slides js-slides\">\n	\n		<li class=\"slide\">\n			<img src=\"/perch/resources/stu-acol1.jpg\" alt=\"\" class=\"slide__img\" />\n		</li>\n	\n		<li class=\"slide\">\n			<img src=\"/perch/resources/jan16-meet.jpg\" alt=\"\" class=\"slide__img\" />\n		</li>\n	\n		<li class=\"slide\">\n			<img src=\"/perch/resources/acollective-main-co-working.jpg\" alt=\"\" class=\"slide__img\" />\n		</li>\n	\n</ul>',0,2,'blocks/image-slides.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-06-13 15:04:39'),
	(4,1,'Square Images','/index.php','<ul class=\"slides js-slides\">\n	\n		<li class=\"slide\">\n			<img src=\"/perch/resources/acol-square.jpg\" alt=\"\" class=\"slide__img\" />\n		</li>\n	\n</ul>',0,3,'blocks/image-slides.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-06-13 15:04:51'),
	(5,1,'Portrait Slides','/index.php','<ul class=\"slides js-slides\">\n	\n		<li class=\"slide\">\n			<img src=\"/perch/resources/kitchen.jpg\" alt=\"\" class=\"slide__img\" />\n		</li>\n	\n</ul>',0,4,'blocks/image-slides.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-06-13 15:05:01'),
	(6,2,'Intro','/about/index.php','<section class=\"p-section p-section--orange\">\n	\n		<h2 class=\"p-section__title\">Our Mission</h2>\n	\n	<div class=\"p-section-text\">\n		<p>Our mission is something. Proin elit quam, feugiat quis sem eu, euismod feugiat lacus. Donec posuere sapien eu auctor lacinia. Quisque dictum augue nec auctor venenatis. Cras tincidunt tristique mauris, non tincidunt metus elementum quis.</p>\n<p>In hac habitasse platea dictumst.</p>\n	</div>\n</section>',0,0,'blocks/text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-06-13 15:08:47'),
	(7,3,'Intro','/meetings/index.php','<section class=\"p-section p-section--orange\">\n	\n	<div class=\"p-section-text\">\n		<p>We have an amazing meeting space. Proin elit quam, feugiat quis sem eu, euismod feugiat lacus. Donec posuere sapien eu auctor lacinia. Quisque dictum augue nec auctor venenatis. Cras tincidunt tristique mauris, non tincidunt metus elementum quis.</p>\n	</div>\n</section>',0,0,'blocks/text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-06-13 15:10:03'),
	(8,3,'Landscape Images','/meetings/index.php','<ul class=\"slides js-slides\">\n	\n		<li class=\"slide\">\n			<img src=\"/perch/resources/jan16-meet.jpg\" alt=\"\" class=\"slide__img\" />\n		</li>\n	\n</ul>',0,1,'blocks/image-slides.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-06-13 15:10:15'),
	(9,3,'Square Images','/meetings/index.php','<ul class=\"slides js-slides\">\n	\n		<li class=\"slide\">\n			<img src=\"/perch/resources/acol-square.jpg\" alt=\"\" class=\"slide__img\" />\n		</li>\n	\n</ul>',0,2,'blocks/image-slides.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-06-13 15:10:27'),
	(10,3,'Portrait Slides','/meetings/index.php','<ul class=\"slides js-slides\">\n	\n		<li class=\"slide\">\n			<img src=\"/perch/resources/kitchen.jpg\" alt=\"\" class=\"slide__img\" />\n		</li>\n	\n</ul>',0,3,'blocks/image-slides.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-06-13 15:10:40'),
	(11,4,'Intro','/community/index.php','<section class=\"p-section p-section--white\">\n	\n	<div class=\"p-section-text\">\n		<p>Aliquam ac dolor id nulla lobortis adipiscing id quis mauris. Duis arcu nunc, mollis a quam vel, aliquam dignissim neque. Maecenas magna dui, dignissim quis felis sed, tincidunt molestie magna. Proin semper felis in dolor commodo, quis facilisis lorem facilisis.</p>\n	</div>\n</section>',0,0,'blocks/text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-06-13 15:12:49'),
	(12,4,'Projects','/community/index.php','<section class=\"p-section p-section--grey\">\n	\n		<h2 class=\"p-section__title\">Projects</h2>\n	\n	<div class=\"p-section-text\">\n		<p>Suspendisse condimentum leo ut dapibus condimentum. Fusce sit amet volutpat mauris. Aenean vitae dapibus quam. Quisque posuere turpis vitae tortor feugiat rutrum.</p>\n	</div>\n</section>',0,2,'blocks/text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-07-11 08:02:00'),
	(13,1,'Desk Offering','/index.php','<div class=\"p-member-table p-member-table--desk\">\n	<div class=\"p-member-table__header\">\n		<h3 class=\"p-member-table__title\">Your Very Own Desk</h3>\n		<p class=\"p-member-table__price is-available\">£150 +VAT</p>\n	</div>\n\n	<div class=\"p-member-table__desc\">\n		<p>Perfect if you love being surrounded by talented people. Work from your desk or our break-out space and meeting room, and enjoy forever free utilities and high-speed WiFi, complementary tea and coffee, and much more.</p>\n	</div>	\n\n	\n		<a class=\"p-member-table__waiting\" href=\"\">\n			Book a Viewing\n		</a>\n	\n</div>\n',0,7,'membership/desk.html',0,'{\"edit_mode\":\"singlepage\"}',1,5,5,'*','2016-06-20 16:25:31'),
	(14,1,'Studio Offering','/index.php','<div class=\"p-member-table p-member-table--studio\">\n	<div class=\"p-member-table__header\">\n		<h3 class=\"p-member-table__title\">Private Studios</h3>\n	</div>\n\n	<div class=\"p-member-table__desc\">\n		<p>Ideal for ambitious SMEs. Private rooms (~200 sq.ft.) for 4-8 people, extended 24/7 access, and all the all-inclusive benefits you need to run your business and impress your clients.</p>\n	</div>	\n\n	<div class=\"p-member-table__studios-container\">\n		<div class=\"p-member-table__studios is-unavailable\">\n			<p class=\"p-member-table__studios-label\">\n				Studio One\n			</p>\n			<p class=\"p-member-table__studios-price\">\n				\n					Occupied\n				\n			</p>\n		</div>\n\n		<div class=\"p-member-table__studios p-member-table__studios--two is-available\">\n			<p class=\"p-member-table__studios-label\">\n				Studio Two\n			</p>\n			<p class=\"p-member-table__studios-price\">\n				\n					£700 +VAT\n				\n			</p>\n		</div>\n	</div>\n\n	\n		\n			<a class=\"p-member-table__waiting\" href=\"\">\n				Book a Viewing\n			</a>\n		\n	\n</div>',0,8,'membership/studio.html',0,'{\"edit_mode\":\"singlepage\"}',1,22,22,'*','2016-06-20 16:28:40'),
	(15,1,'Free Stuff','/index.php','<ul class=\"b-nav b-nav--banner p-free\">\n	<li class=\"p-free-item--one\"><span>Free Printing</span></li>\n	<li class=\"p-free-item--two\"><span>Free Meeting Room</span></li>\n	<li class=\"p-free-item--three\"><span>Free Coffee</span></li>\n</ul>\n',0,6,'membership/free.html',0,'{\"edit_mode\":\"singlepage\"}',1,3,3,'*','2016-06-20 17:08:21'),
	(16,3,'Rates','/meetings/index.php','<section class=\"p-section p-section--white\">\n	<div class=\"b-container\">\n	\n		<h2 class=\"p-section__title\">Rates</h2>\n		\n		<div class=\"p-section-text\">\n			<p>Sed vehicula nibh sit amet cursus semper. Nullam mauris quam, vulputate nec est et, pellentesque mattis mi.</p>\n		</div>\n\n	\n		<div class=\"p-meeting-rates-container\">\n			<p class=\"p-meeting-rates--half\">\n				\n					<span>Half Day</span>\n					<span>£35 +VAT</span>\n			\n			</p>\n			<p class=\"p-meeting-rates--full\">\n				\n					<span>Full Day</span>\n					<span>£55 +VAT</span>\n				\n			</p>\n		</div>\n	</div>\n</section>',0,6,'meeting/rates.html',0,'{\"edit_mode\":\"singlepage\"}',1,5,5,'*','2016-07-22 12:25:39'),
	(17,3,'Always Included','/meetings/index.php','<div class=\"p-meeting p-meeting--always\">\n	<div class=\"p-meeting__inner\">\n		<h3 class=\"p-meeting__title\">Always Included</h3>\n\n		<ul class=\"b-nav b-nav--stacked p-meeting__list\">\n			\n				<li>Super-fast Wi-Fi</li>\n			\n				<li>Room for up to 8 People</li>\n			\n				<li>Whiteboard &amp; Paper Roll</li>\n			\n				<li>42\" TV</li>\n			\n		</ul>\n	</div>\n</div>',0,4,'meeting/always.html',0,'{\"edit_mode\":\"singlepage\"}',1,4,4,'*','2016-06-14 08:20:33'),
	(18,3,'Optional Extras','/meetings/index.php','<div class=\"p-meeting p-meeting--optional\">\n	<div class=\"p-meeting__inner\">\n		<h3 class=\"p-meeting__title\">Optional Extras</h3>\n\n		<ul class=\"b-nav b-nav--stacked p-meeting__list\">\n			\n				<li>Tea &amp; Coffee</li>\n			\n				<li>Catering</li>\n			\n				<li>Pens &amp; Paper</li>\n			\n		</ul>\n	</div>\n</div>',0,5,'meeting/options.html',0,'{\"edit_mode\":\"singlepage\"}',1,4,4,'*','2016-06-14 08:05:43'),
	(19,1,'Viewing Form','/index.php','<perch:form template=\"/templates/content/forms/viewing.html\" id=\"contact\" method=\"post\" app=\"perch_forms\">\n    \n    <div class=\"p-section-text\">\n		<p>Fusce ac consectetur enim. Vivamus turpis tellus, malesuada ac erat vitae, pulvinar venenatis turpis.</p>\n	</div>\n\n	<div class=\"p-viewing-container\">\n		<div class=\"p-viewing-details\">\n			<ul class=\"b-form-fields\">\n				<li>\n					<perch:label for=\"name\">Name</perch:label>\n			        <perch:input type=\"text\" id=\"name\" required=\"true\" label=\"Name\" placeholder=\"Name*\" />\n			        <perch:error for=\"name\" type=\"required\">Please add your name</perch:error>	\n				</li>\n				<li>\n					<perch:label for=\"company\">Company</perch:label>\n        			<perch:input type=\"text\" id=\"company\" label=\"Company\" placeholder=\"Company\" />\n				</li>\n				<li>\n					<perch:label for=\"email\">Email</perch:label>\n			        <perch:input type=\"email\" id=\"email\" required=\"true\" label=\"Email\" placeholder=\"Email*\" />\n			        <perch:error for=\"email\" type=\"required\">Please add your email address</perch:error>\n			        <perch:error for=\"email\" type=\"format\">Please check your email address</perch:error>\n				</li>\n				<li>\n					<perch:label for=\"phone\">Phone</perch:label>\n        			<perch:input type=\"text\" id=\"phone\" label=\"Phone\" placeholder=\"Phone\" />\n				</li>\n			</ul>\n		</div>\n\n		<div class=\"p-viewing-message\">\n			<perch:label for=\"message\">What are you looking for?</perch:label>\n	        <perch:input type=\"textarea\" id=\"message\" required=\"true\" label=\"Message\" />\n	        <perch:error for=\"message\" type=\"required\">Please add a message</perch:error>	\n		</div>\n\n		<div class=\"p-viewing-btn\">\n			<perch:input type=\"submit\" id=\"submit\" value=\"Send\" />	\n		</div>\n	</div>\n\n    <perch:success>\n    	<div class=\"p-section-text\">\n    		<p>Thanks. We’ll be in touch in the next 3 working days.</p>\n    	</div> \n    </perch:success>\n</perch:form>',0,9,'forms/viewing.html',0,'{\"edit_mode\":\"singlepage\"}',1,6,6,'*','2016-06-14 19:54:55'),
	(20,1,'Testimonials','/index.php','<div class=\"p-quote-container\">\n<ul class=\"slides js-quotes p-quotes\">\n	\n		<li class=\"slide p-quote-item\">\n			<blockquote class=\"p-quote\">\n				<p>I highly recommend @acollectiveHQ\'s co-working space in the centre of York, location and facilities are great.</p>\n				<cite class=\"p-quote__cite\">Orde Saunders</cite>\n			</blockquote>\n		</li>\n	\n		<li class=\"slide p-quote-item\">\n			<blockquote class=\"p-quote\">\n				<p>A welcoming, creative and modern working environment in the heart of York. A must for anyone looking to connect and collaborate with like-minded entrepreneurs.</p>\n				<cite class=\"p-quote__cite\">Nathan Vasey</cite>\n			</blockquote>\n		</li>\n	\n		<li class=\"slide p-quote-item\">\n			<blockquote class=\"p-quote\">\n				<p>What a place to work from. Really like the space, the people, the opportunities, chats and discussions. Glad I joined.</p>\n				<cite class=\"p-quote__cite\">Mike Leigh Cooper</cite>\n			</blockquote>\n		</li>\n	\n</ul>\n</div>',0,5,'blocks/testimonials.html',0,'{\"edit_mode\":\"singlepage\"}',1,7,7,'*','2016-07-22 11:54:54'),
	(21,2,'Press','/about/index.php','<!-- Undefined content: Press -->',1,1,'',0,'',1,0,0,'*','2016-06-16 08:33:29'),
	(22,2,'FAQ','/about/index.php','<div class=\"p-faq\">\n	<ul class=\"b-nav b-nav--stacked\">\n		\n			<li class=\"p-faq__item\">\n				<p class=\"p-faq__question\">\n					Phasellus leo magna, tincidunt et adipiscing dictum?\n				</p>\n				<p class=\"p-faq__answer\">\n					Cras feugiat commodo magna, et hendrerit arcu adipiscing et.\n				</p>\n			</li>\n		\n			<li class=\"p-faq__item\">\n				<p class=\"p-faq__question\">\n					Mauris congue mi eu mollis faucibus?\n				</p>\n				<p class=\"p-faq__answer\">\n					Cras et dui mollis, tempus velit placerat, sodales tellus.\n				</p>\n			</li>\n		\n			<li class=\"p-faq__item\">\n				<p class=\"p-faq__question\">\n					Ut sit amet magna orci?\n				</p>\n				<p class=\"p-faq__answer\">\n					Aliquam tempus id risus eu ullamcorper. Proin et accumsan felis, scelerisque molestie sapien.\n				</p>\n			</li>\n		\n			<li class=\"p-faq__item\">\n				<p class=\"p-faq__question\">\n					Integer sit amet varius ipsum?\n				</p>\n				<p class=\"p-faq__answer\">\n					Nulla dictum tincidunt turpis eu consequat. Sed adipiscing eros a nisi dictum mollis.\n				</p>\n			</li>\n		\n			<li class=\"p-faq__item\">\n				<p class=\"p-faq__question\">\n					Suspendisse condimentum leo ut?\n				</p>\n				<p class=\"p-faq__answer\">\n					Donec commodo fermentum neque, at sagittis libero faucibus nec.\n				</p>\n			</li>\n		\n	</ul>\n</div>',0,2,'blocks/faq.html',0,'{\"edit_mode\":\"singlepage\"}',1,2,2,'*','2016-06-16 08:37:05'),
	(23,4,'Social Intro','/community/index.php','<p>Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.</p>',0,3,'text_block.html',0,'{\"edit_mode\":\"listdetail\",\"searchURL\":\"\",\"title_delimit\":\"\",\"adminOnly\":0,\"addToTop\":0,\"limit\":false}',1,2,2,'*','2016-07-11 08:02:00'),
	(24,4,'','/community/index.php','<!-- Undefined content:  -->',1,3,'',0,'',1,0,0,'*','2016-06-16 09:16:07'),
	(25,4,'Listening','/community/index.php','BBC Radio 6 Music',0,4,'text.html',0,'{\"edit_mode\":\"singlepage\"}',1,1,1,'*','2016-07-11 08:02:00'),
	(26,4,'Members','/community/index.php','\n	<ul class=\"b-nav b-nav--banner p-member-list js-randomOrder\">\n\n\n	<li class=\"p-member\">\n		\n			<a href=\"https://twitter.com/stugoulden\">\n		\n\n			<img src=\"/perch/resources/stu-w150h150@2x.jpg\" alt=\"Stu Goulden\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Stu Goulden</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"http://do-make.co/\">\n		\n\n			<img src=\"/perch/resources/mikeharmer-w150h150@2x.jpg\" alt=\"Mike Harmer\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Mike Harmer</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"http://t.co/BkOKVLZ5uc\">\n		\n\n			<img src=\"/perch/resources/amy-w150h150@2x.jpg\" alt=\"Amy Trumpeter\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Amy Trumpeter</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"https://twitter.com/HollyEsquire\">\n		\n\n			<img src=\"/perch/resources/holly-w150h150@2x.jpeg\" alt=\"Holly Squire\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Holly Squire</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"http://www.choirofvision.com/\">\n		\n\n			<img src=\"/perch/resources/jack-w150h150@2x.jpg\" alt=\"Jack Casling\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Jack Casling</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"https://twitter.com/Mikeleighcooper\">\n		\n\n			<img src=\"/perch/resources/mikecooper-w150h150@2x.png\" alt=\"Mike Leigh Cooper\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Mike Leigh Cooper</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"https://twitter.com/JaySillence\">\n		\n\n			<img src=\"/perch/resources/jay-w150h150@2x.jpeg\" alt=\"Jonathan Sillence\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Jonathan Sillence</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"https://twitter.com/designyork\">\n		\n\n			<img src=\"/perch/resources/kevin-w150h150@2x.jpg\" alt=\"Kevin Craighead\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Kevin Craighead</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"http://www.reetgood.co.uk/\">\n		\n\n			<img src=\"/perch/resources/jameshoward-w150h150@2x.jpeg\" alt=\"James Howard\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">James Howard</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"https://twitter.com/departsltddavid\">\n		\n\n			<img src=\"/perch/resources/david-w150h150@2x.jpg\" alt=\"David Edmunds\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">David Edmunds</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"https://twitter.com/jonic\">\n		\n\n			<img src=\"/perch/resources/jonic-w150h150@2x.jpg\" alt=\"Jonic Linley\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Jonic Linley</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"https://twitter.com/thegaytraitor\">\n		\n\n			<img src=\"/perch/resources/carlotta-w150h150@2x.jpg\" alt=\"Carlotta Allum\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Carlotta Allum</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"https://www.venturesolutions.co.uk/\">\n		\n\n			<img src=\"/perch/resources/lucy-w150h150@2x.jpeg\" alt=\"Lucy Hutchings Hunt\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Lucy Hutchings Hunt</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"https://twitter.com/rickary\">\n		\n\n			<img src=\"/perch/resources/rick-w150h150@2x.jpeg\" alt=\"Rick Chadwick\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Rick Chadwick</h3>\n\n		\n			</a>\n		\n	</li>\n\n	<li class=\"p-member\">\n		\n			<a href=\"https://twitter.com/ShamblesKitchen\">\n		\n\n			<img src=\"/perch/resources/simon-w150h150@2x.jpeg\" alt=\"Simon Long\" class=\"p-member__image\" />\n			<h3 class=\"p-member__name\">Simon Long</h3>\n\n		\n			</a>\n		\n	</li>\n\n\n	</ul>\n',0,1,'membership/members.html',0,'{\"edit_mode\":\"singlepage\"}',1,17,17,'*','2016-07-11 08:37:46');

/*!40000 ALTER TABLE `perch2_content_regions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_events`;

CREATE TABLE `perch2_events` (
  `eventID` int(11) NOT NULL AUTO_INCREMENT,
  `eventTitle` varchar(255) NOT NULL DEFAULT '',
  `eventSlug` varchar(255) NOT NULL DEFAULT '',
  `eventDateTime` datetime DEFAULT NULL,
  `eventDescRaw` text,
  `eventDescHTML` text,
  `eventDynamicFields` text,
  PRIMARY KEY (`eventID`),
  KEY `idx_date` (`eventDateTime`),
  FULLTEXT KEY `idx_search` (`eventTitle`,`eventDescRaw`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

LOCK TABLES `perch2_events` WRITE;
/*!40000 ALTER TABLE `perch2_events` DISABLE KEYS */;

INSERT INTO `perch2_events` (`eventID`, `eventTitle`, `eventSlug`, `eventDateTime`, `eventDescRaw`, `eventDescHTML`, `eventDynamicFields`)
VALUES
	(1,'First Birthday Party','2016-06-20-first-birthday-party','2016-06-20 18:00:00','Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.','<p>Nulla facilisi. Maecenas nec ornare massa. Etiam ac tellus eget ante tristique volutpat. Suspendisse potenti.</p>','{\"eventLocation\":\"Sotano\"}');

/*!40000 ALTER TABLE `perch2_events` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_events_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_events_categories`;

CREATE TABLE `perch2_events_categories` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `categoryTitle` varchar(255) NOT NULL DEFAULT '',
  `categorySlug` varchar(255) NOT NULL DEFAULT '',
  `categoryEventCount` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryFutureEventCount` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryDynamicFields` text,
  PRIMARY KEY (`categoryID`),
  KEY `idx_slug` (`categorySlug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



# Dump of table perch2_events_to_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_events_to_categories`;

CREATE TABLE `perch2_events_to_categories` (
  `eventID` int(11) NOT NULL DEFAULT '0',
  `categoryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventID`,`categoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;



# Dump of table perch2_forms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_forms`;

CREATE TABLE `perch2_forms` (
  `formID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formKey` varchar(64) NOT NULL DEFAULT '',
  `formTitle` varchar(255) NOT NULL DEFAULT '',
  `formTemplate` varchar(255) NOT NULL DEFAULT '',
  `formOptions` text,
  PRIMARY KEY (`formID`),
  KEY `idx_formKey` (`formKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_forms_responses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_forms_responses`;

CREATE TABLE `perch2_forms_responses` (
  `responseID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `formID` int(10) unsigned NOT NULL,
  `responseCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `responseJSON` mediumtext,
  `responseIP` varchar(16) NOT NULL DEFAULT '',
  `responseSpam` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `responseSpamData` text,
  PRIMARY KEY (`responseID`),
  KEY `idx_formID` (`formID`),
  KEY `idx_spam` (`responseSpam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_navigation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_navigation`;

CREATE TABLE `perch2_navigation` (
  `groupID` int(10) NOT NULL AUTO_INCREMENT,
  `groupTitle` varchar(255) NOT NULL DEFAULT '',
  `groupSlug` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`groupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_navigation` WRITE;
/*!40000 ALTER TABLE `perch2_navigation` DISABLE KEYS */;

INSERT INTO `perch2_navigation` (`groupID`, `groupTitle`, `groupSlug`)
VALUES
	(1,'Top','top');

/*!40000 ALTER TABLE `perch2_navigation` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_navigation_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_navigation_pages`;

CREATE TABLE `perch2_navigation_pages` (
  `navpageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pageID` int(10) unsigned NOT NULL DEFAULT '0',
  `groupID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageOrder` int(10) unsigned NOT NULL DEFAULT '1',
  `pageDepth` tinyint(10) unsigned NOT NULL,
  `pageTreePosition` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`navpageID`),
  KEY `idx_group` (`groupID`),
  KEY `idx_page_group` (`pageID`,`groupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_navigation_pages` WRITE;
/*!40000 ALTER TABLE `perch2_navigation_pages` DISABLE KEYS */;

INSERT INTO `perch2_navigation_pages` (`navpageID`, `pageID`, `groupID`, `pageParentID`, `pageOrder`, `pageDepth`, `pageTreePosition`)
VALUES
	(1,1,1,0,1,1,'000-001'),
	(2,2,1,0,4,1,'000-004'),
	(3,3,1,0,2,1,'000-002'),
	(4,4,1,0,3,1,'000-003');

/*!40000 ALTER TABLE `perch2_navigation_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_page_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_page_templates`;

CREATE TABLE `perch2_page_templates` (
  `templateID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `templateTitle` varchar(255) NOT NULL DEFAULT '',
  `templatePath` varchar(255) NOT NULL DEFAULT '',
  `optionsPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `templateReference` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `templateNavGroups` varchar(255) DEFAULT '',
  PRIMARY KEY (`templateID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_page_templates` WRITE;
/*!40000 ALTER TABLE `perch2_page_templates` DISABLE KEYS */;

INSERT INTO `perch2_page_templates` (`templateID`, `templateTitle`, `templatePath`, `optionsPageID`, `templateReference`, `templateNavGroups`)
VALUES
	(1,'Default','default.php',0,1,'');

/*!40000 ALTER TABLE `perch2_page_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_pages`;

CREATE TABLE `perch2_pages` (
  `pageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pagePath` varchar(255) NOT NULL DEFAULT '',
  `pageTitle` varchar(255) NOT NULL DEFAULT '',
  `pageNavText` varchar(255) NOT NULL DEFAULT '',
  `pageNew` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pageOrder` int(10) unsigned NOT NULL DEFAULT '1',
  `pageDepth` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `pageSortPath` varchar(255) NOT NULL DEFAULT '',
  `pageTreePosition` varchar(64) NOT NULL DEFAULT '',
  `pageSubpageRoles` varchar(255) NOT NULL DEFAULT '',
  `pageSubpagePath` varchar(255) NOT NULL DEFAULT '',
  `pageHidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pageNavOnly` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pageAccessTags` varchar(255) NOT NULL DEFAULT '',
  `pageCreatorID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageModified` datetime NOT NULL DEFAULT '2014-01-01 00:00:00',
  `pageAttributes` text NOT NULL,
  `pageAttributeTemplate` varchar(255) NOT NULL DEFAULT 'default.html',
  `pageTemplate` char(255) NOT NULL DEFAULT '',
  `templateID` int(10) unsigned NOT NULL DEFAULT '0',
  `pageSubpageTemplates` varchar(255) NOT NULL DEFAULT '',
  `pageCollections` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pageID`),
  KEY `idx_parent` (`pageParentID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_pages` WRITE;
/*!40000 ALTER TABLE `perch2_pages` DISABLE KEYS */;

INSERT INTO `perch2_pages` (`pageID`, `pageParentID`, `pagePath`, `pageTitle`, `pageNavText`, `pageNew`, `pageOrder`, `pageDepth`, `pageSortPath`, `pageTreePosition`, `pageSubpageRoles`, `pageSubpagePath`, `pageHidden`, `pageNavOnly`, `pageAccessTags`, `pageCreatorID`, `pageModified`, `pageAttributes`, `pageAttributeTemplate`, `pageTemplate`, `templateID`, `pageSubpageTemplates`, `pageCollections`)
VALUES
	(1,0,'/index.php','ACOLLECTIVE - York’s Creative Workspace','Hello',0,1,1,'','000-001','','/',0,0,'',0,'2016-07-22 12:01:18','{\"description\":{\"_flang\":\"plain\",\"raw\":\"\",\"processed\":\"\"},\"keywords\":{\"_flang\":\"plain\",\"raw\":\"\",\"processed\":\"\"},\"noindex\":null,\"nofollow\":null,\"nosnippet\":null}','default.html','',0,'',''),
	(2,0,'/about/index.php','About','About',0,2,1,'/about','000-002','','/about',0,0,'',0,'2016-06-16 08:37:05','','default.html','',0,'',''),
	(3,0,'/meetings/index.php','Meetings','Meetings',0,3,1,'/meetings','000-003','','/meetings',0,0,'',0,'2016-07-22 12:25:39','{\"description\":{\"_flang\":\"plain\",\"raw\":\"Inspiring meeting space at affordable prices. Right in the heart of York.\",\"processed\":\"Inspiring meeting space at affordable prices. Right in the heart of York.\"},\"keywords\":{\"_flang\":\"plain\",\"raw\":\"\",\"processed\":\"\"},\"noindex\":null,\"nofollow\":null,\"nosnippet\":null}','default.html','',0,'',''),
	(4,0,'/community/index.php','Community','Community',0,4,1,'/community','000-004','','/community',0,0,'',0,'2016-07-11 08:37:46','','default.html','',0,'','');

/*!40000 ALTER TABLE `perch2_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_resource_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_resource_log`;

CREATE TABLE `perch2_resource_log` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appID` char(32) NOT NULL DEFAULT 'content',
  `itemFK` char(32) NOT NULL DEFAULT 'itemRowID',
  `itemRowID` int(10) unsigned NOT NULL DEFAULT '0',
  `resourceID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  UNIQUE KEY `idx_uni` (`appID`,`itemFK`,`itemRowID`,`resourceID`),
  KEY `idx_resource` (`resourceID`),
  KEY `idx_fk` (`itemFK`,`itemRowID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_resource_log` WRITE;
/*!40000 ALTER TABLE `perch2_resource_log` DISABLE KEYS */;

INSERT INTO `perch2_resource_log` (`logID`, `appID`, `itemFK`, `itemRowID`, `resourceID`)
VALUES
	(1,'content','itemRowID',2,5),
	(2,'content','itemRowID',2,6),
	(3,'content','itemRowID',2,13),
	(4,'content','itemRowID',2,14),
	(5,'content','itemRowID',2,11),
	(6,'content','itemRowID',2,12),
	(7,'content','itemRowID',2,9),
	(8,'content','itemRowID',2,10),
	(9,'content','itemRowID',2,7),
	(10,'content','itemRowID',2,8),
	(11,'content','itemRowID',2,3),
	(12,'content','itemRowID',2,4),
	(13,'content','itemRowID',2,1),
	(14,'content','itemRowID',2,2),
	(15,'content','itemRowID',6,13),
	(16,'content','itemRowID',6,14),
	(17,'content','itemRowID',6,9),
	(18,'content','itemRowID',6,10),
	(19,'content','itemRowID',6,3),
	(20,'content','itemRowID',6,4),
	(21,'content','itemRowID',8,1),
	(22,'content','itemRowID',8,2),
	(23,'content','itemRowID',10,11),
	(24,'content','itemRowID',10,12),
	(25,'content','itemRowID',16,9),
	(26,'content','itemRowID',16,10),
	(27,'content','itemRowID',18,1),
	(28,'content','itemRowID',18,2),
	(29,'content','itemRowID',20,11),
	(30,'content','itemRowID',20,12),
	(228,'content','itemRowID',104,38),
	(227,'content','itemRowID',104,30),
	(346,'content','itemRowID',106,42),
	(286,'content','itemRowID',105,44),
	(285,'content','itemRowID',105,41),
	(284,'content','itemRowID',105,40),
	(415,'content','itemRowID',107,45),
	(414,'content','itemRowID',107,44),
	(413,'content','itemRowID',107,43),
	(349,'content','itemRowID',106,47),
	(348,'content','itemRowID',106,44),
	(347,'content','itemRowID',106,43),
	(486,'content','itemRowID',108,42),
	(487,'content','itemRowID',108,43),
	(488,'content','itemRowID',108,44),
	(489,'content','itemRowID',108,45),
	(490,'content','itemRowID',108,46),
	(418,'content','itemRowID',107,50),
	(417,'content','itemRowID',107,47),
	(416,'content','itemRowID',107,46),
	(571,'content','itemRowID',109,49),
	(572,'content','itemRowID',109,50),
	(573,'content','itemRowID',109,53),
	(574,'content','itemRowID',109,54),
	(575,'content','itemRowID',109,55),
	(653,'content','itemRowID',110,53),
	(652,'content','itemRowID',110,50),
	(495,'content','itemRowID',108,55),
	(494,'content','itemRowID',108,50),
	(493,'content','itemRowID',108,49),
	(492,'content','itemRowID',108,48),
	(491,'content','itemRowID',108,47),
	(640,'content','itemRowID',110,38),
	(641,'content','itemRowID',110,39),
	(642,'content','itemRowID',110,40),
	(643,'content','itemRowID',110,41),
	(644,'content','itemRowID',110,42),
	(645,'content','itemRowID',110,43),
	(646,'content','itemRowID',110,44),
	(647,'content','itemRowID',110,45),
	(648,'content','itemRowID',110,46),
	(649,'content','itemRowID',110,47),
	(650,'content','itemRowID',110,48),
	(651,'content','itemRowID',110,49),
	(728,'content','itemRowID',111,42),
	(729,'content','itemRowID',111,43),
	(730,'content','itemRowID',111,44),
	(731,'content','itemRowID',111,45),
	(732,'content','itemRowID',111,46),
	(733,'content','itemRowID',111,47),
	(734,'content','itemRowID',111,48),
	(735,'content','itemRowID',111,49),
	(736,'content','itemRowID',111,50),
	(737,'content','itemRowID',111,53),
	(738,'content','itemRowID',111,54),
	(739,'content','itemRowID',111,55),
	(740,'content','itemRowID',111,59),
	(656,'content','itemRowID',110,61),
	(655,'content','itemRowID',110,55),
	(654,'content','itemRowID',110,54),
	(757,'content','itemRowID',114,14),
	(756,'content','itemRowID',114,13),
	(755,'content','itemRowID',114,12),
	(754,'content','itemRowID',114,11),
	(753,'content','itemRowID',114,10),
	(752,'content','itemRowID',114,9),
	(751,'content','itemRowID',114,8),
	(750,'content','itemRowID',114,7),
	(749,'content','itemRowID',114,6),
	(748,'content','itemRowID',114,5),
	(747,'content','itemRowID',114,4),
	(746,'content','itemRowID',114,3),
	(745,'content','itemRowID',114,2),
	(744,'content','itemRowID',114,1),
	(743,'content','itemRowID',111,64),
	(742,'content','itemRowID',111,61),
	(741,'content','itemRowID',111,60),
	(226,'content','itemRowID',104,29),
	(225,'content','itemRowID',104,37),
	(224,'content','itemRowID',104,28),
	(223,'content','itemRowID',104,27),
	(222,'content','itemRowID',104,36),
	(221,'content','itemRowID',104,26),
	(220,'content','itemRowID',104,25),
	(219,'content','itemRowID',104,35),
	(218,'content','itemRowID',104,24),
	(217,'content','itemRowID',104,23),
	(216,'content','itemRowID',104,34),
	(215,'content','itemRowID',104,22),
	(214,'content','itemRowID',104,21),
	(213,'content','itemRowID',104,33),
	(212,'content','itemRowID',104,20),
	(211,'content','itemRowID',104,19),
	(210,'content','itemRowID',104,32),
	(209,'content','itemRowID',104,18),
	(208,'content','itemRowID',104,17),
	(207,'content','itemRowID',104,40),
	(206,'content','itemRowID',104,39),
	(205,'content','itemRowID',104,31),
	(204,'content','itemRowID',104,16),
	(203,'content','itemRowID',104,15),
	(229,'content','itemRowID',104,41),
	(283,'content','itemRowID',105,39),
	(282,'content','itemRowID',105,38),
	(281,'content','itemRowID',105,30),
	(280,'content','itemRowID',105,29),
	(279,'content','itemRowID',105,37),
	(278,'content','itemRowID',105,28),
	(277,'content','itemRowID',105,27),
	(276,'content','itemRowID',105,36),
	(275,'content','itemRowID',105,26),
	(274,'content','itemRowID',105,25),
	(273,'content','itemRowID',105,35),
	(272,'content','itemRowID',105,24),
	(271,'content','itemRowID',105,23),
	(270,'content','itemRowID',105,34),
	(269,'content','itemRowID',105,22),
	(268,'content','itemRowID',105,21),
	(267,'content','itemRowID',105,33),
	(266,'content','itemRowID',105,20),
	(265,'content','itemRowID',105,19),
	(264,'content','itemRowID',105,32),
	(263,'content','itemRowID',105,18),
	(262,'content','itemRowID',105,17),
	(261,'content','itemRowID',105,43),
	(260,'content','itemRowID',105,42),
	(259,'content','itemRowID',105,31),
	(258,'content','itemRowID',105,16),
	(257,'content','itemRowID',105,15),
	(345,'content','itemRowID',106,41),
	(344,'content','itemRowID',106,40),
	(343,'content','itemRowID',106,39),
	(342,'content','itemRowID',106,38),
	(341,'content','itemRowID',106,30),
	(340,'content','itemRowID',106,29),
	(339,'content','itemRowID',106,37),
	(338,'content','itemRowID',106,28),
	(337,'content','itemRowID',106,27),
	(336,'content','itemRowID',106,36),
	(335,'content','itemRowID',106,26),
	(334,'content','itemRowID',106,25),
	(333,'content','itemRowID',106,35),
	(332,'content','itemRowID',106,24),
	(331,'content','itemRowID',106,23),
	(330,'content','itemRowID',106,34),
	(329,'content','itemRowID',106,22),
	(328,'content','itemRowID',106,21),
	(327,'content','itemRowID',106,33),
	(326,'content','itemRowID',106,20),
	(325,'content','itemRowID',106,19),
	(324,'content','itemRowID',106,32),
	(323,'content','itemRowID',106,18),
	(322,'content','itemRowID',106,17),
	(321,'content','itemRowID',106,46),
	(320,'content','itemRowID',106,45),
	(319,'content','itemRowID',106,31),
	(318,'content','itemRowID',106,16),
	(317,'content','itemRowID',106,15),
	(412,'content','itemRowID',107,42),
	(411,'content','itemRowID',107,41),
	(410,'content','itemRowID',107,40),
	(409,'content','itemRowID',107,39),
	(408,'content','itemRowID',107,38),
	(407,'content','itemRowID',107,30),
	(406,'content','itemRowID',107,29),
	(405,'content','itemRowID',107,37),
	(404,'content','itemRowID',107,28),
	(403,'content','itemRowID',107,27),
	(402,'content','itemRowID',107,36),
	(401,'content','itemRowID',107,26),
	(400,'content','itemRowID',107,25),
	(399,'content','itemRowID',107,35),
	(398,'content','itemRowID',107,24),
	(397,'content','itemRowID',107,23),
	(396,'content','itemRowID',107,34),
	(395,'content','itemRowID',107,22),
	(394,'content','itemRowID',107,21),
	(393,'content','itemRowID',107,33),
	(392,'content','itemRowID',107,20),
	(391,'content','itemRowID',107,19),
	(390,'content','itemRowID',107,32),
	(389,'content','itemRowID',107,18),
	(388,'content','itemRowID',107,17),
	(387,'content','itemRowID',107,49),
	(386,'content','itemRowID',107,48),
	(385,'content','itemRowID',107,31),
	(384,'content','itemRowID',107,16),
	(383,'content','itemRowID',107,15),
	(485,'content','itemRowID',108,41),
	(484,'content','itemRowID',108,40),
	(483,'content','itemRowID',108,39),
	(482,'content','itemRowID',108,38),
	(481,'content','itemRowID',108,30),
	(480,'content','itemRowID',108,29),
	(479,'content','itemRowID',108,37),
	(478,'content','itemRowID',108,28),
	(477,'content','itemRowID',108,27),
	(476,'content','itemRowID',108,36),
	(475,'content','itemRowID',108,26),
	(474,'content','itemRowID',108,25),
	(473,'content','itemRowID',108,35),
	(472,'content','itemRowID',108,24),
	(471,'content','itemRowID',108,23),
	(470,'content','itemRowID',108,34),
	(469,'content','itemRowID',108,22),
	(468,'content','itemRowID',108,21),
	(467,'content','itemRowID',108,33),
	(466,'content','itemRowID',108,20),
	(465,'content','itemRowID',108,19),
	(464,'content','itemRowID',108,32),
	(463,'content','itemRowID',108,18),
	(462,'content','itemRowID',108,17),
	(461,'content','itemRowID',108,52),
	(460,'content','itemRowID',108,51),
	(459,'content','itemRowID',108,54),
	(458,'content','itemRowID',108,53),
	(457,'content','itemRowID',108,31),
	(456,'content','itemRowID',108,16),
	(455,'content','itemRowID',108,15),
	(570,'content','itemRowID',109,48),
	(569,'content','itemRowID',109,47),
	(568,'content','itemRowID',109,46),
	(567,'content','itemRowID',109,45),
	(566,'content','itemRowID',109,44),
	(565,'content','itemRowID',109,43),
	(564,'content','itemRowID',109,42),
	(563,'content','itemRowID',109,41),
	(562,'content','itemRowID',109,40),
	(561,'content','itemRowID',109,39),
	(560,'content','itemRowID',109,38),
	(559,'content','itemRowID',109,30),
	(558,'content','itemRowID',109,29),
	(557,'content','itemRowID',109,37),
	(556,'content','itemRowID',109,28),
	(555,'content','itemRowID',109,27),
	(554,'content','itemRowID',109,36),
	(553,'content','itemRowID',109,26),
	(552,'content','itemRowID',109,25),
	(551,'content','itemRowID',109,35),
	(550,'content','itemRowID',109,24),
	(549,'content','itemRowID',109,23),
	(548,'content','itemRowID',109,34),
	(547,'content','itemRowID',109,22),
	(546,'content','itemRowID',109,21),
	(545,'content','itemRowID',109,58),
	(544,'content','itemRowID',109,32),
	(543,'content','itemRowID',109,18),
	(542,'content','itemRowID',109,17),
	(541,'content','itemRowID',109,57),
	(540,'content','itemRowID',109,56),
	(539,'content','itemRowID',109,31),
	(538,'content','itemRowID',109,16),
	(537,'content','itemRowID',109,15),
	(639,'content','itemRowID',110,30),
	(638,'content','itemRowID',110,29),
	(637,'content','itemRowID',110,37),
	(636,'content','itemRowID',110,28),
	(635,'content','itemRowID',110,27),
	(634,'content','itemRowID',110,36),
	(633,'content','itemRowID',110,26),
	(632,'content','itemRowID',110,25),
	(631,'content','itemRowID',110,35),
	(630,'content','itemRowID',110,24),
	(629,'content','itemRowID',110,23),
	(628,'content','itemRowID',110,34),
	(627,'content','itemRowID',110,22),
	(626,'content','itemRowID',110,21),
	(625,'content','itemRowID',110,58),
	(624,'content','itemRowID',110,57),
	(623,'content','itemRowID',110,56),
	(622,'content','itemRowID',110,32),
	(621,'content','itemRowID',110,18),
	(620,'content','itemRowID',110,17),
	(619,'content','itemRowID',110,60),
	(618,'content','itemRowID',110,59),
	(617,'content','itemRowID',110,31),
	(616,'content','itemRowID',110,16),
	(615,'content','itemRowID',110,15),
	(727,'content','itemRowID',111,41),
	(726,'content','itemRowID',111,40),
	(725,'content','itemRowID',111,39),
	(724,'content','itemRowID',111,38),
	(723,'content','itemRowID',111,30),
	(722,'content','itemRowID',111,29),
	(721,'content','itemRowID',111,37),
	(720,'content','itemRowID',111,28),
	(719,'content','itemRowID',111,27),
	(718,'content','itemRowID',111,36),
	(717,'content','itemRowID',111,26),
	(716,'content','itemRowID',111,25),
	(715,'content','itemRowID',111,35),
	(714,'content','itemRowID',111,24),
	(713,'content','itemRowID',111,23),
	(712,'content','itemRowID',111,34),
	(711,'content','itemRowID',111,22),
	(710,'content','itemRowID',111,21),
	(709,'content','itemRowID',111,58),
	(708,'content','itemRowID',111,57),
	(707,'content','itemRowID',111,56),
	(706,'content','itemRowID',111,32),
	(705,'content','itemRowID',111,18),
	(704,'content','itemRowID',111,17),
	(703,'content','itemRowID',111,63),
	(702,'content','itemRowID',111,62),
	(701,'content','itemRowID',111,31),
	(700,'content','itemRowID',111,16),
	(699,'content','itemRowID',111,15);

/*!40000 ALTER TABLE `perch2_resource_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_resource_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_resource_tags`;

CREATE TABLE `perch2_resource_tags` (
  `tagID` int(10) NOT NULL AUTO_INCREMENT,
  `tagTitle` varchar(255) NOT NULL DEFAULT '',
  `tagSlug` varchar(255) NOT NULL DEFAULT '',
  `tagCount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



# Dump of table perch2_resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_resources`;

CREATE TABLE `perch2_resources` (
  `resourceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `resourceApp` char(32) NOT NULL DEFAULT 'content',
  `resourceBucket` char(16) NOT NULL DEFAULT 'default',
  `resourceFile` char(255) NOT NULL DEFAULT '',
  `resourceKey` enum('orig','thumb') DEFAULT NULL,
  `resourceParentID` int(10) NOT NULL DEFAULT '0',
  `resourceType` char(4) NOT NULL DEFAULT '',
  `resourceCreated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `resourceUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `resourceAWOL` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `resourceTitle` char(255) DEFAULT NULL,
  `resourceFileSize` int(10) unsigned DEFAULT NULL,
  `resourceWidth` int(10) unsigned DEFAULT NULL,
  `resourceHeight` int(10) unsigned DEFAULT NULL,
  `resourceCrop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `resourceDensity` float NOT NULL DEFAULT '1',
  `resourceTargetWidth` int(10) unsigned DEFAULT NULL,
  `resourceTargetHeight` int(10) unsigned DEFAULT NULL,
  `resourceMimeType` char(64) DEFAULT NULL,
  `resourceInLibrary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`resourceID`),
  UNIQUE KEY `idx_file` (`resourceBucket`,`resourceFile`),
  KEY `idx_app` (`resourceApp`),
  KEY `idx_key` (`resourceKey`),
  KEY `idx_type` (`resourceType`),
  KEY `idx_awol` (`resourceAWOL`),
  KEY `idx_library` (`resourceInLibrary`),
  FULLTEXT KEY `idx_search` (`resourceTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_resources` WRITE;
/*!40000 ALTER TABLE `perch2_resources` DISABLE KEYS */;

INSERT INTO `perch2_resources` (`resourceID`, `resourceApp`, `resourceBucket`, `resourceFile`, `resourceKey`, `resourceParentID`, `resourceType`, `resourceCreated`, `resourceUpdated`, `resourceAWOL`, `resourceTitle`, `resourceFileSize`, `resourceWidth`, `resourceHeight`, `resourceCrop`, `resourceDensity`, `resourceTargetWidth`, `resourceTargetHeight`, `resourceMimeType`, `resourceInLibrary`)
VALUES
	(1,'assets','default','acol-square.jpg','orig',0,'jpg','2016-06-13 15:01:30','2016-06-13 15:01:30',0,'Acol square',107034,800,800,0,1,NULL,NULL,'image/jpeg',0),
	(2,'assets','default','acol-square-thumb@2x.jpg','thumb',1,'jpg','2016-06-13 15:01:30','2016-06-13 15:01:30',0,'Acol square',20790,150,150,0,2,150,150,'image/jpeg',0),
	(3,'assets','default','acollective-main-co-working.jpg','orig',0,'jpg','2016-06-13 15:01:30','2016-06-13 15:01:30',0,'Acollective main co working',241244,1500,1002,0,1,NULL,NULL,'image/jpeg',0),
	(4,'assets','default','acollective-main-co-working-thumb@2x.jpg','thumb',3,'jpg','2016-06-13 15:01:30','2016-06-13 15:01:30',0,'Acollective main co working',17584,150,100,0,2,150,150,'image/jpeg',0),
	(5,'assets','default','co-work2-1.jpg','orig',0,'jpg','2016-06-13 15:01:30','2016-06-13 15:01:30',0,'Co work2 1',284239,2000,1335,0,1,NULL,NULL,'image/jpeg',0),
	(6,'assets','default','co-work2-1-thumb@2x.jpg','thumb',5,'jpg','2016-06-13 15:01:30','2016-06-13 15:01:30',0,'Co work2 1',12820,150,100,0,2,150,150,'image/jpeg',0),
	(7,'assets','default','jan16-co-work2.jpg','orig',0,'jpg','2016-06-13 15:01:30','2016-06-13 15:01:30',0,'Jan16 co work2',176780,1500,1002,0,1,NULL,NULL,'image/jpeg',0),
	(8,'assets','default','jan16-co-work2-thumb@2x.jpg','thumb',7,'jpg','2016-06-13 15:01:30','2016-06-13 15:01:30',0,'Jan16 co work2',12839,150,100,0,2,150,150,'image/jpeg',0),
	(9,'assets','default','jan16-meet.jpg','orig',0,'jpg','2016-06-13 15:01:31','2016-06-13 15:01:31',0,'Jan16 meet',196973,1500,1002,0,1,NULL,NULL,'image/jpeg',0),
	(10,'assets','default','jan16-meet-thumb@2x.jpg','thumb',9,'jpg','2016-06-13 15:01:31','2016-06-13 15:01:31',0,'Jan16 meet',15031,150,100,0,2,150,150,'image/jpeg',0),
	(11,'assets','default','kitchen.jpg','orig',0,'jpg','2016-06-13 15:01:31','2016-06-13 15:01:31',0,'Kitchen',215471,1000,1499,0,1,NULL,NULL,'image/jpeg',0),
	(12,'assets','default','kitchen-thumb@2x.jpg','thumb',11,'jpg','2016-06-13 15:01:31','2016-06-13 15:01:31',0,'Kitchen',15538,100,150,0,2,150,150,'image/jpeg',0),
	(13,'assets','default','stu-acol1.jpg','orig',0,'jpg','2016-06-13 15:01:31','2016-06-13 15:01:31',0,'Stu acol1',171528,1500,1002,0,1,NULL,NULL,'image/jpeg',0),
	(14,'assets','default','stu-acol1-thumb@2x.jpg','thumb',13,'jpg','2016-06-13 15:01:31','2016-06-13 15:01:31',0,'Stu acol1',12875,150,100,0,2,150,150,'image/jpeg',0),
	(15,'assets','default','stu.jpg','orig',0,'jpg','2016-07-11 08:03:39','2016-07-11 08:03:39',0,'Stu',26012,512,512,0,1,NULL,NULL,'image/jpeg',0),
	(16,'assets','default','stu-thumb@2x.jpg','thumb',15,'jpg','2016-07-11 08:03:39','2016-07-11 08:03:39',0,'Stu',14978,150,150,0,2,150,150,'image/jpeg',0),
	(17,'assets','default','mikeharmer.jpg','orig',0,'jpg','2016-07-11 08:09:43','2016-07-11 08:09:43',0,'Mike harmer',34845,400,400,0,1,NULL,NULL,'image/jpeg',0),
	(18,'assets','default','mikeharmer-thumb@2x.jpg','thumb',17,'jpg','2016-07-11 08:09:43','2016-07-11 08:09:43',0,'Mike harmer',25115,150,150,0,2,150,150,'image/jpeg',0),
	(19,'assets','default','trumpeter.jpeg','orig',0,'jpeg','2016-07-11 08:14:04','2016-07-11 08:14:04',0,'Trumpeter',75687,500,425,0,1,NULL,NULL,'image/jpeg',0),
	(20,'assets','default','trumpeter-thumb@2x.jpeg','thumb',19,'jpeg','2016-07-11 08:14:04','2016-07-11 08:14:04',0,'Trumpeter',11392,150,127,0,2,150,150,'image/jpeg',0),
	(21,'assets','default','holly.jpeg','orig',0,'jpeg','2016-07-11 08:15:16','2016-07-11 08:15:16',0,'Holly',35297,424,424,0,1,NULL,NULL,'image/jpeg',0),
	(22,'assets','default','holly-thumb@2x.jpeg','thumb',21,'jpeg','2016-07-11 08:15:16','2016-07-11 08:15:16',0,'Holly',24345,150,150,0,2,150,150,'image/jpeg',0),
	(23,'assets','default','jack.jpg','orig',0,'jpg','2016-07-11 08:17:32','2016-07-11 08:17:32',0,'Jack',25306,512,512,0,1,NULL,NULL,'image/jpeg',0),
	(24,'assets','default','jack-thumb@2x.jpg','thumb',23,'jpg','2016-07-11 08:17:32','2016-07-11 08:17:32',0,'Jack',11383,150,150,0,2,150,150,'image/jpeg',0),
	(25,'assets','default','mikecooper.png','orig',0,'png','2016-07-11 08:17:33','2016-07-11 08:17:33',0,'Mike cooper',221947,512,512,0,1,NULL,NULL,'image/png',0),
	(26,'assets','default','mikecooper-thumb@2x.png','thumb',25,'png','2016-07-11 08:17:33','2016-07-11 08:17:33',0,'Mike cooper',121004,150,150,0,2,150,150,'image/png',0),
	(27,'assets','default','jay.jpeg','orig',0,'jpeg','2016-07-11 08:24:22','2016-07-11 08:24:22',0,'Jay',63913,359,500,0,1,NULL,NULL,'image/jpeg',0),
	(28,'assets','default','jay-thumb@2x.jpeg','thumb',27,'jpeg','2016-07-11 08:24:22','2016-07-11 08:24:22',0,'Jay',12597,107,150,0,2,150,150,'image/jpeg',0),
	(29,'assets','default','kevin.jpg','orig',0,'jpg','2016-07-11 08:26:03','2016-07-11 08:26:03',0,'Kevin',146238,500,500,0,1,NULL,NULL,'image/jpeg',0),
	(30,'assets','default','kevin-thumb@2x.jpg','thumb',29,'jpg','2016-07-11 08:26:03','2016-07-11 08:26:03',0,'Kevin',13673,150,150,0,2,150,150,'image/jpeg',0),
	(31,'content','default','stu-w150h150@2x.jpg','',15,'jpg','2016-07-11 08:26:27','2016-07-11 08:26:27',0,'Stu w150h150@2x',15495,150,150,1,2,150,150,'image/jpeg',0),
	(32,'content','default','mikeharmer-w150h150@2x.jpg','',17,'jpg','2016-07-11 08:26:27','2016-07-11 08:26:27',0,'Mikeharmer w150h150@2x',27265,150,150,1,2,150,150,'image/jpeg',0),
	(33,'content','default','trumpeter-w150h150@2x.jpeg','',19,'jpeg','2016-07-11 08:26:27','2016-07-11 08:26:27',0,'Trumpeter w150h150@2x',14014,150,150,1,2,150,150,'image/jpeg',0),
	(34,'content','default','holly-w150h150@2x.jpeg','',21,'jpeg','2016-07-11 08:26:27','2016-07-11 08:26:27',0,'Holly w150h150@2x',25920,150,150,1,2,150,150,'image/jpeg',0),
	(35,'content','default','jack-w150h150@2x.jpg','',23,'jpg','2016-07-11 08:26:28','2016-07-11 08:26:28',0,'Jack w150h150@2x',12236,150,150,1,2,150,150,'image/jpeg',0),
	(36,'content','default','mikecooper-w150h150@2x.png','',25,'png','2016-07-11 08:26:28','2016-07-11 08:26:28',0,'Mikecooper w150h150@2x',121004,150,150,1,2,150,150,'image/png',0),
	(37,'content','default','jay-w150h150@2x.jpeg','',27,'jpeg','2016-07-11 08:26:28','2016-07-11 08:26:28',0,'Jay w150h150@2x',17743,150,150,1,2,150,150,'image/jpeg',0),
	(38,'content','default','kevin-w150h150@2x.jpg','',29,'jpg','2016-07-11 08:26:28','2016-07-11 08:26:28',0,'Kevin w150h150@2x',14544,150,150,1,2,150,150,'image/jpeg',0),
	(39,'assets','default','jameshoward.jpeg','orig',0,'jpeg','2016-07-11 08:27:19','2016-07-11 08:27:19',0,'James howard',9375,256,256,0,1,NULL,NULL,'image/jpeg',0),
	(40,'assets','default','jameshoward-thumb@2x.jpeg','thumb',39,'jpeg','2016-07-11 08:27:19','2016-07-11 08:27:19',0,'James howard',16440,150,150,0,2,150,150,'image/jpeg',0),
	(41,'content','default','jameshoward-w150h150@2x.jpeg','',39,'jpeg','2016-07-11 08:27:31','2016-07-11 08:27:31',0,'Jameshoward w150h150@2x',17224,150,150,1,2,150,150,'image/jpeg',0),
	(42,'assets','default','david.jpg','orig',0,'jpg','2016-07-11 08:28:29','2016-07-11 08:28:29',0,'David',25739,400,400,0,1,NULL,NULL,'image/jpeg',0),
	(43,'assets','default','david-thumb@2x.jpg','thumb',42,'jpg','2016-07-11 08:28:29','2016-07-11 08:28:29',0,'David',23595,150,150,0,2,150,150,'image/jpeg',0),
	(44,'content','default','david-w150h150@2x.jpg','',42,'jpg','2016-07-11 08:28:33','2016-07-11 08:28:33',0,'David w150h150@2x',24917,150,150,1,2,150,150,'image/jpeg',0),
	(45,'assets','default','jonic.jpg','orig',0,'jpg','2016-07-11 08:29:17','2016-07-11 08:29:17',0,'Jonic',23215,500,500,0,1,NULL,NULL,'image/jpeg',0),
	(46,'assets','default','jonic-thumb@2x.jpg','thumb',45,'jpg','2016-07-11 08:29:17','2016-07-11 08:29:17',0,'Jonic',10374,150,150,0,2,150,150,'image/jpeg',0),
	(47,'content','default','jonic-w150h150@2x.jpg','',45,'jpg','2016-07-11 08:29:25','2016-07-11 08:29:25',0,'Jonic w150h150@2x',10760,150,150,1,2,150,150,'image/jpeg',0),
	(48,'assets','default','carlotta.jpg','orig',0,'jpg','2016-07-11 08:30:54','2016-07-11 08:30:54',0,'Carlotta',147098,960,960,0,1,NULL,NULL,'image/jpeg',0),
	(49,'assets','default','carlotta-thumb@2x.jpg','thumb',48,'jpg','2016-07-11 08:30:54','2016-07-11 08:30:54',0,'Carlotta',21219,150,150,0,2,150,150,'image/jpeg',0),
	(50,'content','default','carlotta-w150h150@2x.jpg','',48,'jpg','2016-07-11 08:30:57','2016-07-11 08:30:57',0,'Carlotta w150h150@2x',22305,150,150,1,2,150,150,'image/jpeg',0),
	(51,'assets','default','lucy.jpg','orig',0,'jpg','2016-07-11 08:33:00','2016-07-11 08:33:00',0,'Lucy',7538,320,320,0,1,NULL,NULL,'image/jpeg',0),
	(52,'assets','default','lucy-thumb@2x.jpg','thumb',51,'jpg','2016-07-11 08:33:00','2016-07-11 08:33:00',0,'Lucy',8746,150,150,0,2,150,150,'image/jpeg',0),
	(53,'assets','default','lucy.jpeg','orig',0,'jpeg','2016-07-11 08:33:55','2016-07-11 08:33:55',0,'Lucy',19925,474,474,0,1,NULL,NULL,'image/jpeg',0),
	(54,'assets','default','lucy-thumb@2x.jpeg','thumb',53,'jpeg','2016-07-11 08:33:55','2016-07-11 08:33:55',0,'Lucy',11242,150,150,0,2,150,150,'image/jpeg',0),
	(55,'content','default','lucy-w150h150@2x.jpeg','',53,'jpeg','2016-07-11 08:33:58','2016-07-11 08:33:58',0,'Lucy w150h150@2x',11562,150,150,1,2,150,150,'image/jpeg',0),
	(56,'assets','default','amy.jpg','orig',0,'jpg','2016-07-11 08:35:24','2016-07-11 08:35:24',0,'Amy',37185,512,512,0,1,NULL,NULL,'image/jpeg',0),
	(57,'assets','default','amy-thumb@2x.jpg','thumb',56,'jpg','2016-07-11 08:35:24','2016-07-11 08:35:24',0,'Amy',20895,150,150,0,2,150,150,'image/jpeg',0),
	(58,'content','default','amy-w150h150@2x.jpg','',56,'jpg','2016-07-11 08:35:27','2016-07-11 08:35:27',0,'Amy w150h150@2x',22083,150,150,1,2,150,150,'image/jpeg',0),
	(59,'assets','default','rick.jpeg','orig',0,'jpeg','2016-07-11 08:36:20','2016-07-11 08:36:20',0,'Rick',12302,240,240,0,1,NULL,NULL,'image/jpeg',0),
	(60,'assets','default','rick-thumb@2x.jpeg','thumb',59,'jpeg','2016-07-11 08:36:20','2016-07-11 08:36:20',0,'Rick',15771,150,150,0,2,150,150,'image/jpeg',0),
	(61,'content','default','rick-w150h150@2x.jpeg','',59,'jpeg','2016-07-11 08:36:44','2016-07-11 08:36:44',0,'Rick w150h150@2x',16315,150,150,1,2,150,150,'image/jpeg',0),
	(62,'assets','default','simon.jpeg','orig',0,'jpeg','2016-07-11 08:37:43','2016-07-11 08:37:43',0,'Simon',86406,640,640,0,1,NULL,NULL,'image/jpeg',0),
	(63,'assets','default','simon-thumb@2x.jpeg','thumb',62,'jpeg','2016-07-11 08:37:43','2016-07-11 08:37:43',0,'Simon',21381,150,150,0,2,150,150,'image/jpeg',0),
	(64,'content','default','simon-w150h150@2x.jpeg','',62,'jpeg','2016-07-11 08:37:46','2016-07-11 08:37:46',0,'Simon w150h150@2x',22314,150,150,1,2,150,150,'image/jpeg',0);

/*!40000 ALTER TABLE `perch2_resources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_resources_to_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_resources_to_tags`;

CREATE TABLE `perch2_resources_to_tags` (
  `resourceID` int(10) NOT NULL DEFAULT '0',
  `tagID` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`resourceID`,`tagID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;



# Dump of table perch2_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_settings`;

CREATE TABLE `perch2_settings` (
  `settingID` varchar(60) NOT NULL DEFAULT '',
  `userID` int(10) unsigned NOT NULL DEFAULT '0',
  `settingValue` text NOT NULL,
  PRIMARY KEY (`settingID`,`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_settings` WRITE;
/*!40000 ALTER TABLE `perch2_settings` DISABLE KEYS */;

INSERT INTO `perch2_settings` (`settingID`, `userID`, `settingValue`)
VALUES
	('headerColour',0,'#ffffff'),
	('content_singlePageEdit',0,'1'),
	('helpURL',0,''),
	('siteURL',0,'/'),
	('hideBranding',0,'0'),
	('content_collapseList',0,'1'),
	('lang',0,'en-gb'),
	('update_2.8.29',0,'done'),
	('latest_version',0,'2.8.15'),
	('on_sale_version',0,'2.8.31'),
	('perch_events_update',0,'1.8');

/*!40000 ALTER TABLE `perch2_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_user_passwords
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_user_passwords`;

CREATE TABLE `perch2_user_passwords` (
  `passwordID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(10) unsigned NOT NULL,
  `userPassword` varchar(255) NOT NULL DEFAULT '',
  `passwordLastUsed` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  PRIMARY KEY (`passwordID`),
  KEY `idx_user` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table perch2_user_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_user_privileges`;

CREATE TABLE `perch2_user_privileges` (
  `privID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `privKey` varchar(255) NOT NULL DEFAULT '',
  `privTitle` varchar(255) NOT NULL DEFAULT '',
  `privOrder` int(10) unsigned NOT NULL DEFAULT '99',
  PRIMARY KEY (`privID`),
  UNIQUE KEY `idx_key` (`privKey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_user_privileges` WRITE;
/*!40000 ALTER TABLE `perch2_user_privileges` DISABLE KEYS */;

INSERT INTO `perch2_user_privileges` (`privID`, `privKey`, `privTitle`, `privOrder`)
VALUES
	(1,'perch.login','Log in',1),
	(2,'perch.settings','Change settings',2),
	(3,'perch.users.manage','Manage users',3),
	(4,'perch.updatenotices','View update notices',4),
	(5,'content.regions.delete','Delete regions',1),
	(6,'content.regions.options','Edit region options',2),
	(7,'content.pages.edit','Edit page details',1),
	(8,'content.pages.reorder','Reorder pages',2),
	(9,'content.pages.create','Add new pages',3),
	(10,'content.pages.configure','Configure page settings',5),
	(11,'content.pages.delete','Delete pages',4),
	(12,'content.templates.delete','Delete master pages',6),
	(13,'content.navgroups.configure','Configure navigation groups',7),
	(14,'content.navgroups.create','Create navigation groups',8),
	(15,'content.navgroups.delete','Delete navigation groups',9),
	(16,'content.pages.create.toplevel','Add new top-level pages',3),
	(17,'content.pages.delete.own','Delete pages they created themselves',4),
	(18,'content.templates.configure','Configure master pages',6),
	(19,'content.pages.attributes','Edit page titles and attributes',6),
	(20,'categories.create','Create new categories',1),
	(21,'categories.delete','Delete categories',2),
	(22,'categories.manage','Manage categories',3),
	(23,'categories.sets.create','Create category sets',4),
	(24,'categories.sets.delete','Delete category sets',5),
	(25,'assets.create','Upload assets',1),
	(26,'assets.manage','Manage assets',2),
	(27,'perch_forms','Access forms',1),
	(28,'perch_forms.configure','Configure forms',1),
	(29,'perch_forms.delete','Delete forms',1),
	(30,'perch_events','Access events',1),
	(31,'perch_events.categories.manage','Manage categories',1);

/*!40000 ALTER TABLE `perch2_user_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_user_role_privileges
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_user_role_privileges`;

CREATE TABLE `perch2_user_role_privileges` (
  `roleID` int(10) unsigned NOT NULL,
  `privID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`roleID`,`privID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_user_role_privileges` WRITE;
/*!40000 ALTER TABLE `perch2_user_role_privileges` DISABLE KEYS */;

INSERT INTO `perch2_user_role_privileges` (`roleID`, `privID`)
VALUES
	(1,1),
	(1,7),
	(1,8),
	(1,25),
	(2,1),
	(2,2),
	(2,3),
	(2,4),
	(2,5),
	(2,6),
	(2,7),
	(2,8),
	(2,9),
	(2,10),
	(2,11),
	(2,12);

/*!40000 ALTER TABLE `perch2_user_role_privileges` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_user_roles`;

CREATE TABLE `perch2_user_roles` (
  `roleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleTitle` varchar(255) NOT NULL DEFAULT '',
  `roleSlug` varchar(255) NOT NULL DEFAULT '',
  `roleMasterAdmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_user_roles` WRITE;
/*!40000 ALTER TABLE `perch2_user_roles` DISABLE KEYS */;

INSERT INTO `perch2_user_roles` (`roleID`, `roleTitle`, `roleSlug`, `roleMasterAdmin`)
VALUES
	(1,'Editor','editor',0),
	(2,'Admin','admin',1);

/*!40000 ALTER TABLE `perch2_user_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table perch2_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `perch2_users`;

CREATE TABLE `perch2_users` (
  `userID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userUsername` varchar(255) NOT NULL DEFAULT '',
  `userPassword` varchar(255) NOT NULL DEFAULT '',
  `userCreated` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `userUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userLastLogin` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `userGivenName` varchar(255) NOT NULL DEFAULT '',
  `userFamilyName` varchar(255) NOT NULL DEFAULT '',
  `userEmail` varchar(255) NOT NULL DEFAULT '',
  `userEnabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userHash` char(32) NOT NULL DEFAULT '',
  `roleID` int(10) unsigned NOT NULL DEFAULT '1',
  `userMasterAdmin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userPasswordToken` char(255) NOT NULL DEFAULT 'expired',
  `userPasswordTokenExpires` datetime NOT NULL DEFAULT '2015-01-01 00:00:00',
  `userLastFailedLogin` datetime DEFAULT NULL,
  `userFailedLoginAttempts` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`),
  KEY `idx_enabled` (`userEnabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `perch2_users` WRITE;
/*!40000 ALTER TABLE `perch2_users` DISABLE KEYS */;

INSERT INTO `perch2_users` (`userID`, `userUsername`, `userPassword`, `userCreated`, `userUpdated`, `userLastLogin`, `userGivenName`, `userFamilyName`, `userEmail`, `userEnabled`, `userHash`, `roleID`, `userMasterAdmin`, `userPasswordToken`, `userPasswordTokenExpires`, `userLastFailedLogin`, `userFailedLoginAttempts`)
VALUES
	(1,'rick','$P$BcCASvUeFSM8QR7NAn9Z5DJ6/dWom/0','2016-06-13 14:57:44','2016-07-22 12:25:39','2016-07-22 11:51:22','Rick','Chadwick','rick@acollective.co',1,'68d5ab6aa6464bff574a03fdc2773dc2',2,1,'expired','2015-01-01 00:00:00',NULL,0);

/*!40000 ALTER TABLE `perch2_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
