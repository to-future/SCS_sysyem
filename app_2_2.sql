# Host: localhost  (Version: 5.5.53)
# Date: 2019-01-24 18:39:04
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "care_business"
#

DROP TABLE IF EXISTS `care_business`;
CREATE TABLE `care_business` (
  `id` varchar(11) NOT NULL DEFAULT '',
  `old_people_id` varchar(11) NOT NULL DEFAULT '',
  `care_worker_id` varchar(11) NOT NULL DEFAULT '',
  `time` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "care_business"
#

/*!40000 ALTER TABLE `care_business` DISABLE KEYS */;
/*!40000 ALTER TABLE `care_business` ENABLE KEYS */;

#
# Structure for table "care_worker"
#

DROP TABLE IF EXISTS `care_worker`;
CREATE TABLE `care_worker` (
  `care_worker_id` varchar(11) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `head_show` varchar(255) DEFAULT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `gender` char(2) NOT NULL DEFAULT '男',
  `age` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `fee_scale` int(11) DEFAULT '0',
  `working_time` varchar(255) DEFAULT NULL,
  `total_time` float NOT NULL DEFAULT '0',
  `score` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`care_worker_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "care_worker"
#

/*!40000 ALTER TABLE `care_worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `care_worker` ENABLE KEYS */;

#
# Structure for table "daily_info"
#

DROP TABLE IF EXISTS `daily_info`;
CREATE TABLE `daily_info` (
  `daily_info_id` varchar(11) NOT NULL DEFAULT '',
  `old_people_id` varchar(11) NOT NULL DEFAULT '',
  `date` varchar(255) NOT NULL DEFAULT '',
  `information` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`daily_info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "daily_info"
#

/*!40000 ALTER TABLE `daily_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_info` ENABLE KEYS */;

#
# Structure for table "drug"
#

DROP TABLE IF EXISTS `drug`;
CREATE TABLE `drug` (
  `drug_id` varchar(11) NOT NULL DEFAULT '',
  `drug_name` varchar(50) DEFAULT NULL,
  `drug_info` text,
  `drug_price` float DEFAULT NULL,
  PRIMARY KEY (`drug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "drug"
#

/*!40000 ALTER TABLE `drug` DISABLE KEYS */;
/*!40000 ALTER TABLE `drug` ENABLE KEYS */;

#
# Structure for table "drug_using"
#

DROP TABLE IF EXISTS `drug_using`;
CREATE TABLE `drug_using` (
  `old_people_id` varchar(11) NOT NULL DEFAULT '',
  `drug_id` varchar(11) DEFAULT NULL,
  `using_info` text,
  `id` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "drug_using"
#

/*!40000 ALTER TABLE `drug_using` DISABLE KEYS */;
/*!40000 ALTER TABLE `drug_using` ENABLE KEYS */;

#
# Structure for table "emer_person"
#

DROP TABLE IF EXISTS `emer_person`;
CREATE TABLE `emer_person` (
  `emer_person_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`emer_person_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "emer_person"
#

/*!40000 ALTER TABLE `emer_person` DISABLE KEYS */;
/*!40000 ALTER TABLE `emer_person` ENABLE KEYS */;

#
# Structure for table "emergency_contact"
#

DROP TABLE IF EXISTS `emergency_contact`;
CREATE TABLE `emergency_contact` (
  `id` varchar(11) NOT NULL DEFAULT '',
  `old_people_id` varchar(11) NOT NULL DEFAULT '',
  `hospital_id` varchar(11) NOT NULL DEFAULT '',
  `emer_person_id` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "emergency_contact"
#

/*!40000 ALTER TABLE `emergency_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `emergency_contact` ENABLE KEYS */;

#
# Structure for table "health_info"
#

DROP TABLE IF EXISTS `health_info`;
CREATE TABLE `health_info` (
  `health_info_id` varchar(11) NOT NULL DEFAULT '',
  `height` float DEFAULT '0',
  `weight` float NOT NULL DEFAULT '0',
  `illness` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`health_info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "health_info"
#

/*!40000 ALTER TABLE `health_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `health_info` ENABLE KEYS */;

#
# Structure for table "hospital"
#

DROP TABLE IF EXISTS `hospital`;
CREATE TABLE `hospital` (
  `hospital_id` varchar(11) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(255) DEFAULT NULL,
  `working_time` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`hospital_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "hospital"
#

/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;

#
# Structure for table "old_people"
#

DROP TABLE IF EXISTS `old_people`;
CREATE TABLE `old_people` (
  `old_people_id` varchar(11) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `head_show` varchar(255) DEFAULT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `gender` char(2) NOT NULL DEFAULT '男',
  `age` int(11) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `daily_info` varchar(11) NOT NULL DEFAULT '0',
  `health_info` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`old_people_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "old_people"
#

/*!40000 ALTER TABLE `old_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `old_people` ENABLE KEYS */;

#
# Structure for table "rela_oldpeople"
#

DROP TABLE IF EXISTS `rela_oldpeople`;
CREATE TABLE `rela_oldpeople` (
  `id` varchar(11) NOT NULL DEFAULT '',
  `old_people_id` varchar(11) NOT NULL DEFAULT '',
  `relative_id` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "rela_oldpeople"
#

/*!40000 ALTER TABLE `rela_oldpeople` DISABLE KEYS */;
/*!40000 ALTER TABLE `rela_oldpeople` ENABLE KEYS */;

#
# Structure for table "relatives"
#

DROP TABLE IF EXISTS `relatives`;
CREATE TABLE `relatives` (
  `relative_id` varchar(11) NOT NULL DEFAULT '',
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `head_show` varchar(255) DEFAULT '',
  `gender` char(2) NOT NULL DEFAULT '男',
  `age` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`relative_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "relatives"
#

/*!40000 ALTER TABLE `relatives` DISABLE KEYS */;
/*!40000 ALTER TABLE `relatives` ENABLE KEYS */;

#
# Structure for table "vol_oldpeople"
#

DROP TABLE IF EXISTS `vol_oldpeople`;
CREATE TABLE `vol_oldpeople` (
  `id` varchar(11) NOT NULL DEFAULT '',
  `old_people_id` varchar(11) NOT NULL DEFAULT '',
  `volunteer_id` varchar(11) NOT NULL DEFAULT '',
  `time` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "vol_oldpeople"
#

/*!40000 ALTER TABLE `vol_oldpeople` DISABLE KEYS */;
/*!40000 ALTER TABLE `vol_oldpeople` ENABLE KEYS */;

#
# Structure for table "volunteer"
#

DROP TABLE IF EXISTS `volunteer`;
CREATE TABLE `volunteer` (
  `volunteer_id` varchar(11) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `head_show` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `gender` char(2) NOT NULL DEFAULT '男',
  `age` int(11) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `total_time` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`volunteer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "volunteer"
#

/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
