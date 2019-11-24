-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: 172.17.0.15    Database: sdo_base
-- ------------------------------------------------------
-- Server version	5.6.28-cdb2016-log

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
-- Current Database: `sdo_base`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sdo_base` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sdo_base`;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_files`
--

DROP TABLE IF EXISTS `user_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `roleid` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '角色ID',
  `fileid` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '文件ID',
  PRIMARY KEY (`id`),
  KEY `user_files_accountid_index` (`accountId`),
  KEY `user_files_roleid_index` (`roleid`),
  KEY `user_files_fileid_index` (`fileid`)
) ENGINE=InnoDB AUTO_INCREMENT=485345 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-20 16:23:49
-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: 172.17.0.15    Database: sdo_code
-- ------------------------------------------------------
-- Server version	5.6.28-cdb2016-log

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
-- Current Database: `sdo_code`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sdo_code` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sdo_code`;

--
-- Table structure for table `gift_lock`
--

DROP TABLE IF EXISTS `gift_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL COMMENT '礼包类型编号(登录激活码默认为100000)',
  `platform` int(5) NOT NULL DEFAULT '0' COMMENT '平台：1：ios,2:安卓',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '码状态：0：开启,1:关闭',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gift_money`
--

DROP TABLE IF EXISTS `gift_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_money` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL COMMENT '礼包类型编号',
  `money` int(10) NOT NULL COMMENT '礼包价值',
  `item` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '礼包物品�',
  `condition` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '获取礼包条件',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gift_type`
--

DROP TABLE IF EXISTS `gift_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '礼包类型',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '礼包名称',
  `openTime` datetime NOT NULL COMMENT '开始时间',
  `endTime` datetime NOT NULL COMMENT '结束时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode`
--

DROP TABLE IF EXISTS `giftcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode` (
  `code` varchar(50) NOT NULL,
  `tid` int(5) NOT NULL COMMENT '礼包类型编号',
  `mid` int(5) NOT NULL COMMENT '礼包价值',
  `platform` int(5) NOT NULL DEFAULT '1' COMMENT '平台：1：ios,2:安卓',
  `codeType` int(5) NOT NULL DEFAULT '1' COMMENT '码类型：1：单码,2:通用码',
  `batch` int(5) NOT NULL DEFAULT '1',
  `count` int(5) NOT NULL COMMENT '通用码使用上限',
  `use` int(5) NOT NULL COMMENT '通用码用过多少次',
  `zoneId` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '单码使用服务区',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '码状态：1：未使用,2:已使用sdo_codesdo_code',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`),
  UNIQUE KEY `code` (`code`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record`
--

DROP TABLE IF EXISTS `giftcode_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `roleId_zoneId` (`roleId`,`zoneId`),
  KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2562 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lock`
--

DROP TABLE IF EXISTS `lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL COMMENT '礼包类型编号(登录激活码默认为100000)',
  `platform` int(5) NOT NULL DEFAULT '0' COMMENT '平台：1：ios,2:安卓',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '码状态：0：开启,1:关闭',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100006 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logincode`
--

DROP TABLE IF EXISTS `logincode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logincode` (
  `code` varchar(50) NOT NULL,
  `batch` int(5) NOT NULL DEFAULT '1',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `account` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`),
  UNIQUE KEY `code` (`code`),
  KEY `state` (`state`),
  KEY `account` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-20 16:23:49
-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: 172.17.0.15    Database: sdo_gm_basic
-- ------------------------------------------------------
-- Server version	5.6.28-cdb2016-log

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
-- Current Database: `sdo_gm_basic`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sdo_gm_basic` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sdo_gm_basic`;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `template` int(2) NOT NULL DEFAULT '-1',
  `style` text NOT NULL,
  `introduce` text NOT NULL,
  `aheadTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `openTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rewardTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `template` (`template`),
  KEY `aheadime` (`aheadTime`),
  KEY `opentime` (`openTime`),
  KEY `endtime` (`endTime`),
  KEY `rewardtime` (`rewardTime`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement` (
  `id` varchar(25) NOT NULL COMMENT '为年（18）-月（11)-日（13）-序号（01），即18111301',
  `atype` int(20) NOT NULL DEFAULT '0' COMMENT '1 跑马灯,2 频道',
  `zoneId` int(20) NOT NULL COMMENT '服务区编号',
  `zoneName` varchar(50) NOT NULL,
  `plats` varchar(100) NOT NULL DEFAULT '',
  `platsName` varchar(100) NOT NULL DEFAULT '',
  `openTime` int(20) NOT NULL COMMENT '起始时间',
  `endTime` int(20) NOT NULL COMMENT '结束时间',
  `takeType` int(2) NOT NULL DEFAULT '0' COMMENT '1 时间段内轮播,2 只播放一次',
  `interval` int(10) NOT NULL DEFAULT '0',
  `content` text,
  `status` int(2) NOT NULL DEFAULT '1',
  `createTime` int(20) NOT NULL,
  PRIMARY KEY (`id`,`atype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `config` text COLLATE utf8_unicode_ci NOT NULL COMMENT '配置',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `config_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_report`
--

DROP TABLE IF EXISTS `data_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL COMMENT '报表时间',
  `data` text COLLATE utf8_unicode_ci NOT NULL COMMENT '报表数据',
  PRIMARY KEY (`id`),
  KEY `data_report_date_index` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=877 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftAbnormalData`
--

DROP TABLE IF EXISTS `giftAbnormalData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftAbnormalData` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `gid` char(50) NOT NULL COMMENT '礼包类型编号',
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `used` int(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode`
--

DROP TABLE IF EXISTS `giftcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode` (
  `gid` int(5) NOT NULL COMMENT '礼包类型编号',
  `plat` varchar(100) DEFAULT NULL,
  `zoneId` int(10) NOT NULL,
  `code` varchar(50) NOT NULL,
  `zoneName` varchar(100) NOT NULL,
  `platList` varchar(255) NOT NULL,
  `batch` int(5) NOT NULL DEFAULT '1',
  `people` int(10) NOT NULL DEFAULT '0',
  `status` int(5) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`),
  KEY `IX_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record`
--

DROP TABLE IF EXISTS `giftcode_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=14827 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_000`
--

DROP TABLE IF EXISTS `giftcode_record_000`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_000` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_001`
--

DROP TABLE IF EXISTS `giftcode_record_001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_001` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_002`
--

DROP TABLE IF EXISTS `giftcode_record_002`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_002` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_003`
--

DROP TABLE IF EXISTS `giftcode_record_003`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_003` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_004`
--

DROP TABLE IF EXISTS `giftcode_record_004`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_004` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_005`
--

DROP TABLE IF EXISTS `giftcode_record_005`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_005` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_006`
--

DROP TABLE IF EXISTS `giftcode_record_006`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_006` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_007`
--

DROP TABLE IF EXISTS `giftcode_record_007`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_007` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_008`
--

DROP TABLE IF EXISTS `giftcode_record_008`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_008` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_009`
--

DROP TABLE IF EXISTS `giftcode_record_009`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_009` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_010`
--

DROP TABLE IF EXISTS `giftcode_record_010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_010` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_011`
--

DROP TABLE IF EXISTS `giftcode_record_011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_011` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_012`
--

DROP TABLE IF EXISTS `giftcode_record_012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_012` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_013`
--

DROP TABLE IF EXISTS `giftcode_record_013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_013` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_014`
--

DROP TABLE IF EXISTS `giftcode_record_014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_014` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_015`
--

DROP TABLE IF EXISTS `giftcode_record_015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_015` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_016`
--

DROP TABLE IF EXISTS `giftcode_record_016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_016` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=26104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_017`
--

DROP TABLE IF EXISTS `giftcode_record_017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_017` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=26885 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_018`
--

DROP TABLE IF EXISTS `giftcode_record_018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_018` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=26258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_019`
--

DROP TABLE IF EXISTS `giftcode_record_019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_019` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=24830 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_020`
--

DROP TABLE IF EXISTS `giftcode_record_020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_020` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=25101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_021`
--

DROP TABLE IF EXISTS `giftcode_record_021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_021` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=24235 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_022`
--

DROP TABLE IF EXISTS `giftcode_record_022`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_022` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=25607 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_023`
--

DROP TABLE IF EXISTS `giftcode_record_023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_023` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=26224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_024`
--

DROP TABLE IF EXISTS `giftcode_record_024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_024` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=25707 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_025`
--

DROP TABLE IF EXISTS `giftcode_record_025`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_025` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=25766 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_026`
--

DROP TABLE IF EXISTS `giftcode_record_026`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_026` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_027`
--

DROP TABLE IF EXISTS `giftcode_record_027`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_027` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_028`
--

DROP TABLE IF EXISTS `giftcode_record_028`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_028` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_029`
--

DROP TABLE IF EXISTS `giftcode_record_029`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_029` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_030`
--

DROP TABLE IF EXISTS `giftcode_record_030`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_030` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_031`
--

DROP TABLE IF EXISTS `giftcode_record_031`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_031` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_032`
--

DROP TABLE IF EXISTS `giftcode_record_032`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_032` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=19668 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_033`
--

DROP TABLE IF EXISTS `giftcode_record_033`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_033` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=18959 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_034`
--

DROP TABLE IF EXISTS `giftcode_record_034`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_034` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=19563 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_035`
--

DROP TABLE IF EXISTS `giftcode_record_035`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_035` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=20224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_036`
--

DROP TABLE IF EXISTS `giftcode_record_036`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_036` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=19511 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_037`
--

DROP TABLE IF EXISTS `giftcode_record_037`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_037` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=20609 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_038`
--

DROP TABLE IF EXISTS `giftcode_record_038`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_038` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=20787 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_039`
--

DROP TABLE IF EXISTS `giftcode_record_039`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_039` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=20626 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_040`
--

DROP TABLE IF EXISTS `giftcode_record_040`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_040` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=19865 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_041`
--

DROP TABLE IF EXISTS `giftcode_record_041`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_041` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=20391 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_042`
--

DROP TABLE IF EXISTS `giftcode_record_042`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_042` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_043`
--

DROP TABLE IF EXISTS `giftcode_record_043`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_043` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_044`
--

DROP TABLE IF EXISTS `giftcode_record_044`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_044` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_045`
--

DROP TABLE IF EXISTS `giftcode_record_045`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_045` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_046`
--

DROP TABLE IF EXISTS `giftcode_record_046`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_046` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_047`
--

DROP TABLE IF EXISTS `giftcode_record_047`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_047` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_048`
--

DROP TABLE IF EXISTS `giftcode_record_048`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_048` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=2018 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_049`
--

DROP TABLE IF EXISTS `giftcode_record_049`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_049` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=1757 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_050`
--

DROP TABLE IF EXISTS `giftcode_record_050`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_050` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=2136 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_051`
--

DROP TABLE IF EXISTS `giftcode_record_051`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_051` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_052`
--

DROP TABLE IF EXISTS `giftcode_record_052`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_052` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=1682 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_053`
--

DROP TABLE IF EXISTS `giftcode_record_053`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_053` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=1664 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_054`
--

DROP TABLE IF EXISTS `giftcode_record_054`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_054` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=1793 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_055`
--

DROP TABLE IF EXISTS `giftcode_record_055`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_055` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=1819 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_056`
--

DROP TABLE IF EXISTS `giftcode_record_056`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_056` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=1911 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_057`
--

DROP TABLE IF EXISTS `giftcode_record_057`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_057` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=2043 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_058`
--

DROP TABLE IF EXISTS `giftcode_record_058`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_058` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_059`
--

DROP TABLE IF EXISTS `giftcode_record_059`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_059` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_060`
--

DROP TABLE IF EXISTS `giftcode_record_060`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_060` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_061`
--

DROP TABLE IF EXISTS `giftcode_record_061`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_061` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_062`
--

DROP TABLE IF EXISTS `giftcode_record_062`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_062` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftcode_record_063`
--

DROP TABLE IF EXISTS `giftcode_record_063`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftcode_record_063` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code_roleId` (`code`,`roleId`),
  KEY `ix_roleid` (`roleId`),
  KEY `ix_gid` (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftpackages`
--

DROP TABLE IF EXISTS `giftpackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftpackages` (
  `id` varchar(25) NOT NULL COMMENT '为年（18）-月（11)-日（13）-序号（01），即18111301',
  `name` varchar(50) NOT NULL,
  `minLevel` int(20) NOT NULL,
  `maxLevel` int(20) NOT NULL,
  `openTime` int(20) NOT NULL COMMENT '起始时间',
  `endTime` int(20) NOT NULL COMMENT '结束时间',
  `codeType` int(5) NOT NULL DEFAULT '1' COMMENT '码类型：1：单码,2:通用码',
  `number` int(10) NOT NULL COMMENT '通用码使用人数上限',
  `count` int(10) NOT NULL COMMENT '通用码单人使用次数上限， 单码使用次数',
  `status` int(10) NOT NULL DEFAULT '1',
  `item` text,
  `itemData` text,
  `itemInfo` text,
  `mutex` varchar(100) NOT NULL COMMENT '互斥礼包',
  `mutexInfo` text,
  `mutexData` text,
  `createTime` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `goods_items`
--

DROP TABLE IF EXISTS `goods_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `primaryKey` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `primaryValue` int(50) NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `sheet_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`primaryKey`,`primaryValue`,`sheet_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `is_display` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login_news`
--

DROP TABLE IF EXISTS `login_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_news` (
  `id` varchar(25) NOT NULL COMMENT '为年（18）-月（11)-日（13）-序号（01），即18111301',
  `plats` text NOT NULL,
  `openTime` int(20) NOT NULL COMMENT '起始时间',
  `endTime` int(20) NOT NULL COMMENT '结束时间',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '0 单页,1 每次登陆弹出,2 每日登陆弹出,3 仅弹出一次',
  `level` int(10) NOT NULL DEFAULT '1',
  `title` varchar(50) NOT NULL DEFAULT '',
  `content` text,
  `url` varchar(80) DEFAULT '',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '1 隐藏,2 开启',
  `httpWay` varchar(50) NOT NULL,
  `createTime` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login_news_log`
--

DROP TABLE IF EXISTS `login_news_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_news_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `openId` varchar(50) NOT NULL DEFAULT '0' COMMENT '用户uin',
  `plats` int(11) NOT NULL DEFAULT '0' COMMENT '用户渠道',
  `news` varchar(50) NOT NULL DEFAULT '' COMMENT '公告id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `openId_time` (`openId`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=1468 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `role` varchar(50) NOT NULL,
  `zoneId` int(20) NOT NULL COMMENT '服务区编号',
  `zoneName` varchar(50) NOT NULL,
  `plats` varchar(100) NOT NULL DEFAULT '',
  `platsName` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `content` text,
  `item` text,
  `itemData` text,
  `itemInfo` text,
  `minCreateTime` int(20) NOT NULL,
  `maxCreateTime` int(20) NOT NULL,
  `minLevel` int(20) NOT NULL,
  `maxLevel` int(20) NOT NULL,
  `openTime` int(20) NOT NULL COMMENT '起始时间',
  `endTime` int(20) NOT NULL COMMENT '结束时间',
  `proposer` varchar(50) NOT NULL,
  `created_at` int(20) DEFAULT NULL,
  `updated_at` int(20) DEFAULT NULL,
  `auditor` varchar(50) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '操作类别',
  PRIMARY KEY (`id`),
  KEY `zoneId` (`zoneId`,`plats`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '0 单页,1 新闻,2 公告,3 活动,4 版本活动,5 明星家族,6 玩家展示,7 最新图片,8 充值广告位,9 帐号广告位,11 超首广告图,12 综合,13 攻略,14 媒体,15 新手,16 社交,17 服饰升级',
  `title` varchar(50) NOT NULL DEFAULT '',
  `thumbs` text,
  `showdate` date NOT NULL DEFAULT '0000-00-00',
  `begintime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `specialtime` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `orders` int(11) NOT NULL DEFAULT '50',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0',
  `is_display` tinyint(1) NOT NULL DEFAULT '0',
  `is_syncbbs` tinyint(1) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `subtitle` varchar(50) NOT NULL DEFAULT '',
  `type_name` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `showdate` (`showdate`),
  KEY `endtime` (`endtime`),
  KEY `type` (`type`),
  KEY `is_recommend` (`is_recommend`),
  KEY `is_display` (`is_display`),
  KEY `is_syncbbs` (`is_syncbbs`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `offLine`
--

DROP TABLE IF EXISTS `offLine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offLine` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `object` int(20) NOT NULL,
  `zoneId` int(20) NOT NULL,
  `zoneName` varchar(50) NOT NULL,
  `platsName` varchar(100) NOT NULL,
  `account` varchar(50) NOT NULL COMMENT '用户',
  `data` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=695 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `openReward`
--

DROP TABLE IF EXISTS `openReward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openReward` (
  `zoneId` int(20) NOT NULL COMMENT '服务区编号',
  `openTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '起始时间',
  `endTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `addCount` int(20) NOT NULL DEFAULT '0',
  `interval` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`zoneId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operate_activity_log`
--

DROP TABLE IF EXISTS `operate_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operate_activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人',
  `aId` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `operate_type` int(11) NOT NULL DEFAULT '0' COMMENT '操作类别',
  `created_at` int(20) DEFAULT NULL,
  `zoneId` int(20) NOT NULL COMMENT '服务区编号',
  `zoneName` varchar(50) NOT NULL,
  `plats` varchar(100) NOT NULL DEFAULT '',
  `platsName` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`operate_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=1600 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operate_announcement_log`
--

DROP TABLE IF EXISTS `operate_announcement_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operate_announcement_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '公告类别',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人',
  `operate_type` int(11) NOT NULL DEFAULT '0' COMMENT '操作类别',
  `content` text COMMENT '操作内容',
  `created_at` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`operate_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=1214 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operate_giftCode_log`
--

DROP TABLE IF EXISTS `operate_giftCode_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operate_giftCode_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人',
  `gid` int(20) DEFAULT NULL,
  `batch` int(20) DEFAULT NULL,
  `number` int(20) DEFAULT NULL,
  `zoneName` varchar(50) NOT NULL,
  `platsName` varchar(100) NOT NULL DEFAULT '',
  `operate_type` int(11) NOT NULL DEFAULT '0' COMMENT '操作类别',
  `created_at` int(20) DEFAULT NULL,
  `zoneId` int(20) DEFAULT NULL,
  `plats` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`operate_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2298 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operate_mail_log`
--

DROP TABLE IF EXISTS `operate_mail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operate_mail_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人',
  `role` varchar(50) NOT NULL,
  `zoneId` int(20) DEFAULT NULL,
  `zoneName` varchar(50) NOT NULL,
  `plats` varchar(50) NOT NULL,
  `platsName` varchar(100) NOT NULL DEFAULT '',
  `item` text,
  `operate_type` int(11) NOT NULL DEFAULT '0' COMMENT '操作类别',
  `created_at` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`operate_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=20604 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operate_pay_log`
--

DROP TABLE IF EXISTS `operate_pay_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operate_pay_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zoneId` int(20) DEFAULT NULL,
  `zoneName` varchar(50) NOT NULL,
  `money` int(20) DEFAULT NULL,
  `source` int(20) DEFAULT NULL,
  `accountId` int(20) DEFAULT NULL,
  `product` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人',
  `content` text COMMENT '操作内容',
  `created_at` int(20) DEFAULT NULL,
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`accountId`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operate_question_log`
--

DROP TABLE IF EXISTS `operate_question_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operate_question_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人',
  `surveyid` int(11) NOT NULL DEFAULT '0',
  `questionId` varchar(50) NOT NULL,
  `operate_type` int(11) NOT NULL DEFAULT '0' COMMENT '操作类别',
  `created_at` int(20) DEFAULT NULL,
  `zoneId` int(20) NOT NULL COMMENT '服务区编号',
  `zoneName` varchar(50) NOT NULL,
  `plats` varchar(100) NOT NULL DEFAULT '',
  `platsName` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`operate_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `operate_tools_log`
--

DROP TABLE IF EXISTS `operate_tools_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operate_tools_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人',
  `object` int(11) NOT NULL DEFAULT '0',
  `role` varchar(50) NOT NULL,
  `zoneId` int(20) DEFAULT NULL,
  `zoneName` varchar(50) NOT NULL,
  `plats` varchar(50) NOT NULL,
  `platsName` varchar(100) NOT NULL DEFAULT '',
  `time` int(20) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `operate_type` int(11) NOT NULL DEFAULT '0' COMMENT '操作类别',
  `content` text NOT NULL,
  `created_at` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`operate_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=1791 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plat_exts`
--

DROP TABLE IF EXISTS `plat_exts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plat_exts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `platId` int(11) NOT NULL COMMENT '平台主键',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '扩展名称',
  `config` text COLLATE utf8_unicode_ci NOT NULL COMMENT '配置',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plat_exts_platid_index` (`platId`),
  KEY `plat_exts_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=602 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plats`
--

DROP TABLE IF EXISTS `plats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台编号',
  `pfName` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `channelId` int(11) NOT NULL COMMENT '渠道编号',
  `zoneNames` text COLLATE utf8_unicode_ci NOT NULL COMMENT '服务区内部名称列表',
  `recNames` text COLLATE utf8_unicode_ci NOT NULL COMMENT '平台推荐区',
  `cdn` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'cdn',
  `cdnNo` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'cdn版本号',
  `news` text COLLATE utf8_unicode_ci NOT NULL COMMENT '公告内容',
  `newsAddr` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '公告HTTP地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `platform` int(5) NOT NULL,
  `giftlock` int(5) NOT NULL,
  `channel_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '盛大channelID',
  `sub_channel_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '盛大sub_channelId',
  `newsName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公告文件名',
  `newsUrl` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '自动生成html',
  `newsOpen` tinyint(5) NOT NULL DEFAULT '0' COMMENT '是否开启公告',
  `topLimit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plats_publisher_index` (`publisher`),
  KEY `plats_pfid_index` (`pfId`),
  KEY `plats_pfname_index` (`pfName`),
  KEY `plats_channelid_index` (`channelId`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `productId`
--

DROP TABLE IF EXISTS `productId`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productId` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'productid',
  `money` int(30) NOT NULL COMMENT '钱',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pushAct`
--

DROP TABLE IF EXISTS `pushAct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pushAct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '活动名称',
  `buttonStatus` tinyint(2) NOT NULL DEFAULT '0' COMMENT '活动状态：0不开启, 1开启',
  `skipType` tinyint(2) NOT NULL,
  `actConfig` tinyint(20) NOT NULL,
  `noticeConfig` tinyint(20) NOT NULL,
  `systemConfig` tinyint(20) NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `openTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `minLevel` int(11) NOT NULL,
  `maxLevel` int(11) NOT NULL,
  `time` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `loginType` tinyint(2) NOT NULL,
  `count` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `level` tinyint(2) NOT NULL DEFAULT '1',
  `zoneId` int(20) NOT NULL COMMENT '服务区编号',
  `zoneName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `plats` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `platsName` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `createTime` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19081202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `push_news_record`
--

DROP TABLE IF EXISTS `push_news_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `push_news_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news` char(50) NOT NULL COMMENT 'newsId',
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_roleId` (`news`,`roleId`,`zoneId`)
) ENGINE=InnoDB AUTO_INCREMENT=15956236 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` varchar(25) NOT NULL COMMENT '为年（18）-月（11)-日（13）-序号（01），即18111301',
  `name` varchar(50) NOT NULL,
  `minLevel` int(20) NOT NULL,
  `maxLevel` int(20) NOT NULL,
  `openTime` int(20) NOT NULL COMMENT '起始时间',
  `endTime` int(20) NOT NULL COMMENT '结束时间',
  `surveyid` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `item` varchar(100) DEFAULT NULL,
  `itemData` varchar(100) DEFAULT NULL,
  `itemInfo` text,
  `zoneId` int(20) NOT NULL COMMENT '服务区编号',
  `zoneName` varchar(50) NOT NULL,
  `plats` varchar(100) NOT NULL DEFAULT '',
  `platsName` varchar(100) NOT NULL DEFAULT '',
  `createTime` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rotatingAct`
--

DROP TABLE IF EXISTS `rotatingAct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rotatingAct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '活动名称',
  `openTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `minLevel` int(11) NOT NULL,
  `maxLevel` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `level` tinyint(2) NOT NULL DEFAULT '1',
  `buttonStatus` tinyint(2) NOT NULL DEFAULT '0' COMMENT '活动状态：0不开启, 1开启',
  `skipType` tinyint(2) NOT NULL,
  `actConfig` tinyint(20) NOT NULL,
  `noticeConfig` tinyint(20) NOT NULL,
  `systemConfig` tinyint(20) NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zoneId` int(20) NOT NULL COMMENT '服务区编号',
  `zoneName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `plats` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `platsName` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `createTime` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19053004 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sdk_plats`
--

DROP TABLE IF EXISTS `sdk_plats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sdk_plats` (
  `pfid` int(11) NOT NULL COMMENT '渠道编号',
  `publisher` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channel_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发行商channelID',
  `sub_channel_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发行商sub_channelId',
  `type` tinyint(10) NOT NULL COMMENT 'ios或安卓',
  `pfName` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '渠道名称',
  `ifBack` tinyint(10) NOT NULL DEFAULT '0',
  `ifStronger` tinyint(10) NOT NULL DEFAULT '1',
  `newsId` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '公告id',
  `templetName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `templet` int(10) NOT NULL COMMENT '渠道模板',
  `forceUpdate` tinyint(10) NOT NULL DEFAULT '0',
  `ifPush` tinyint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pfid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subactivities`
--

DROP TABLE IF EXISTS `subactivities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subactivities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batchId` int(20) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `parent` int(2) NOT NULL DEFAULT '-1',
  `typeDesc` int(2) NOT NULL DEFAULT '-1',
  `subTypeDesc` int(2) NOT NULL DEFAULT '-1',
  `progressType` int(2) NOT NULL DEFAULT '1',
  `condition` text,
  `prizeList` text,
  `style` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `batchId` (`batchId`),
  KEY `parent` (`parent`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `levelstatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否有等级限制',
  `levelstart` int(11) DEFAULT '0' COMMENT '起始等级',
  `levelend` int(11) DEFAULT '0' COMMENT '结束等级',
  `timestatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '时间限制',
  `timestart` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '起始时间',
  `timeend` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `surveyid` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '本次调查是否开启',
  `prize` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `survey_send_prize`
--

DROP TABLE IF EXISTS `survey_send_prize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_send_prize` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uin` int(11) NOT NULL,
  `zoneid` int(11) NOT NULL,
  `pfid` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `prizename` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prizeid` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `prize` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `failcount` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_uid_zone` (`uin`,`zoneid`,`surveyid`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108641 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tpId` int(11) NOT NULL DEFAULT '0',
  `useMean` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_20190315`
--

DROP TABLE IF EXISTS `tmp_20190315`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_20190315` (
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `cnts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_20190315_2`
--

DROP TABLE IF EXISTS `tmp_20190315_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_20190315_2` (
  `code` char(50) NOT NULL COMMENT '礼包码',
  `gid` char(50) NOT NULL,
  `roleId` int(11) NOT NULL,
  `zoneId` int(11) NOT NULL,
  `cnts` int(11) NOT NULL,
  `starttime` timestamp NULL DEFAULT NULL,
  `endtime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zone_temple`
--

DROP TABLE IF EXISTS `zone_temple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zone_temple` (
  `zone` int(20) NOT NULL COMMENT '大区',
  `temple` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '渠道模板',
  PRIMARY KEY (`zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zonecats`
--

DROP TABLE IF EXISTS `zonecats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zonecats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catId` int(11) NOT NULL COMMENT '服务区类别ID',
  `catName` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '服务区类别名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zonecats_catid_index` (`catId`),
  KEY `zonecats_catname_index` (`catName`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authPort` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '31415' COMMENT '认证端口',
  `gamePort` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '8080' COMMENT '游戏端口',
  `payPort` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '8088' COMMENT '支付端口',
  `zonePort` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '8001' COMMENT '大区端口',
  `zoneId` int(11) NOT NULL COMMENT '服务区编号',
  `zoneName` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '服务区内部名称',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '服务区名称',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '服务区状态：0无效, 1正常, 2更新, 3忙碌, 4维护',
  `host` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT '服务器外网IP',
  `priHost` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '服务器内网IP',
  `dbHost` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT '数据库IP',
  `dbSlave` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '从库数据库信息',
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '域名',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `openTime` int(11) DEFAULT '0',
  `topLimit` int(11) DEFAULT NULL,
  `orc` int(10) DEFAULT '0',
  `aVersion` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'å®‰å“ç‰ˆæœ¬å·',
  `iVersion` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'iosç‰ˆæœ¬å·',
  PRIMARY KEY (`id`),
  KEY `zones_authport_index` (`authPort`),
  KEY `zones_gameport_index` (`gamePort`),
  KEY `zones_payport_index` (`payPort`),
  KEY `zones_zoneport_index` (`zonePort`),
  KEY `zones_zoneid_index` (`zoneId`),
  KEY `zones_zonename_index` (`zoneName`),
  KEY `zones_name_index` (`name`),
  KEY `zones_status_index` (`status`),
  KEY `zones_host_index` (`host`),
  KEY `zones_domain_index` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-20 16:23:50
-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: 172.17.0.15    Database: sdo_order
-- ------------------------------------------------------
-- Server version	5.6.28-cdb2016-log

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
-- Current Database: `sdo_order`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `sdo_order` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sdo_order`;

--
-- Table structure for table `actItem`
--

DROP TABLE IF EXISTS `actItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actItem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL COMMENT '用户ID',
  `actId` int(11) NOT NULL,
  `batchId` int(11) NOT NULL COMMENT '活动ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '大区',
  `item` text COLLATE utf8_unicode_ci NOT NULL COMMENT '奖励信息',
  `cost` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '领取状态: 0未领取, 1已领取',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_roleId_index` (`roleId`),
  KEY `activity_bacthId_index` (`batchId`),
  KEY `activity_zoneId_index` (`zoneId`),
  KEY `activity_status_index` (`status`),
  KEY `activity_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201801`
--

DROP TABLE IF EXISTS `pay201801`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201801` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay201801_publisher_index` (`publisher`),
  KEY `pay201801_pfid_index` (`pfId`),
  KEY `pay201801_pf_index` (`pf`),
  KEY `pay201801_orderno_index` (`orderNo`),
  KEY `pay201801_outorderno_index` (`outOrderNo`),
  KEY `pay201801_ordertime_index` (`orderTime`),
  KEY `pay201801_orderstatus_index` (`orderStatus`),
  KEY `pay201801_ordercode_index` (`orderCode`),
  KEY `pay201801_paytime_index` (`payTime`),
  KEY `pay201801_paystatus_index` (`payStatus`),
  KEY `pay201801_paycode_index` (`payCode`),
  KEY `pay201801_delivertime_index` (`deliverTime`),
  KEY `pay201801_deliverstatus_index` (`deliverStatus`),
  KEY `pay201801_delivercode_index` (`deliverCode`),
  KEY `pay201801_accountid_index` (`accountId`),
  KEY `pay201801_openid_index` (`openId`),
  KEY `pay201801_zoneid_index` (`zoneId`),
  KEY `pay201801_money_index` (`money`),
  KEY `pay201801_gamemoney_index` (`gameMoney`),
  KEY `pay201801_moneytype_index` (`moneyType`),
  KEY `pay201801_pmid_index` (`pmId`),
  KEY `pay201801_channelname_index` (`channelName`),
  KEY `pay201801_bankid_index` (`bankId`),
  KEY `pay201801_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201802`
--

DROP TABLE IF EXISTS `pay201802`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201802` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay201802_publisher_index` (`publisher`),
  KEY `pay201802_pfid_index` (`pfId`),
  KEY `pay201802_pf_index` (`pf`),
  KEY `pay201802_orderno_index` (`orderNo`),
  KEY `pay201802_outorderno_index` (`outOrderNo`),
  KEY `pay201802_ordertime_index` (`orderTime`),
  KEY `pay201802_orderstatus_index` (`orderStatus`),
  KEY `pay201802_ordercode_index` (`orderCode`),
  KEY `pay201802_paytime_index` (`payTime`),
  KEY `pay201802_paystatus_index` (`payStatus`),
  KEY `pay201802_paycode_index` (`payCode`),
  KEY `pay201802_delivertime_index` (`deliverTime`),
  KEY `pay201802_deliverstatus_index` (`deliverStatus`),
  KEY `pay201802_delivercode_index` (`deliverCode`),
  KEY `pay201802_accountid_index` (`accountId`),
  KEY `pay201802_openid_index` (`openId`),
  KEY `pay201802_zoneid_index` (`zoneId`),
  KEY `pay201802_money_index` (`money`),
  KEY `pay201802_gamemoney_index` (`gameMoney`),
  KEY `pay201802_moneytype_index` (`moneyType`),
  KEY `pay201802_pmid_index` (`pmId`),
  KEY `pay201802_channelname_index` (`channelName`),
  KEY `pay201802_bankid_index` (`bankId`),
  KEY `pay201802_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201803`
--

DROP TABLE IF EXISTS `pay201803`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201803` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay201803_publisher_index` (`publisher`),
  KEY `pay201803_pfid_index` (`pfId`),
  KEY `pay201803_pf_index` (`pf`),
  KEY `pay201803_orderno_index` (`orderNo`),
  KEY `pay201803_outorderno_index` (`outOrderNo`),
  KEY `pay201803_ordertime_index` (`orderTime`),
  KEY `pay201803_orderstatus_index` (`orderStatus`),
  KEY `pay201803_ordercode_index` (`orderCode`),
  KEY `pay201803_paytime_index` (`payTime`),
  KEY `pay201803_paystatus_index` (`payStatus`),
  KEY `pay201803_paycode_index` (`payCode`),
  KEY `pay201803_delivertime_index` (`deliverTime`),
  KEY `pay201803_deliverstatus_index` (`deliverStatus`),
  KEY `pay201803_delivercode_index` (`deliverCode`),
  KEY `pay201803_accountid_index` (`accountId`),
  KEY `pay201803_openid_index` (`openId`),
  KEY `pay201803_zoneid_index` (`zoneId`),
  KEY `pay201803_money_index` (`money`),
  KEY `pay201803_gamemoney_index` (`gameMoney`),
  KEY `pay201803_moneytype_index` (`moneyType`),
  KEY `pay201803_pmid_index` (`pmId`),
  KEY `pay201803_channelname_index` (`channelName`),
  KEY `pay201803_bankid_index` (`bankId`),
  KEY `pay201803_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201804`
--

DROP TABLE IF EXISTS `pay201804`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201804` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay201804_publisher_index` (`publisher`),
  KEY `pay201804_pfid_index` (`pfId`),
  KEY `pay201804_pf_index` (`pf`),
  KEY `pay201804_orderno_index` (`orderNo`),
  KEY `pay201804_outorderno_index` (`outOrderNo`),
  KEY `pay201804_ordertime_index` (`orderTime`),
  KEY `pay201804_orderstatus_index` (`orderStatus`),
  KEY `pay201804_ordercode_index` (`orderCode`),
  KEY `pay201804_paytime_index` (`payTime`),
  KEY `pay201804_paystatus_index` (`payStatus`),
  KEY `pay201804_paycode_index` (`payCode`),
  KEY `pay201804_delivertime_index` (`deliverTime`),
  KEY `pay201804_deliverstatus_index` (`deliverStatus`),
  KEY `pay201804_delivercode_index` (`deliverCode`),
  KEY `pay201804_accountid_index` (`accountId`),
  KEY `pay201804_openid_index` (`openId`),
  KEY `pay201804_zoneid_index` (`zoneId`),
  KEY `pay201804_money_index` (`money`),
  KEY `pay201804_gamemoney_index` (`gameMoney`),
  KEY `pay201804_moneytype_index` (`moneyType`),
  KEY `pay201804_pmid_index` (`pmId`),
  KEY `pay201804_channelname_index` (`channelName`),
  KEY `pay201804_bankid_index` (`bankId`),
  KEY `pay201804_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201805`
--

DROP TABLE IF EXISTS `pay201805`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201805` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay201805_publisher_index` (`publisher`),
  KEY `pay201805_pfid_index` (`pfId`),
  KEY `pay201805_pf_index` (`pf`),
  KEY `pay201805_orderno_index` (`orderNo`),
  KEY `pay201805_outorderno_index` (`outOrderNo`),
  KEY `pay201805_ordertime_index` (`orderTime`),
  KEY `pay201805_orderstatus_index` (`orderStatus`),
  KEY `pay201805_ordercode_index` (`orderCode`),
  KEY `pay201805_paytime_index` (`payTime`),
  KEY `pay201805_paystatus_index` (`payStatus`),
  KEY `pay201805_paycode_index` (`payCode`),
  KEY `pay201805_delivertime_index` (`deliverTime`),
  KEY `pay201805_deliverstatus_index` (`deliverStatus`),
  KEY `pay201805_delivercode_index` (`deliverCode`),
  KEY `pay201805_accountid_index` (`accountId`),
  KEY `pay201805_openid_index` (`openId`),
  KEY `pay201805_zoneid_index` (`zoneId`),
  KEY `pay201805_money_index` (`money`),
  KEY `pay201805_gamemoney_index` (`gameMoney`),
  KEY `pay201805_moneytype_index` (`moneyType`),
  KEY `pay201805_pmid_index` (`pmId`),
  KEY `pay201805_channelname_index` (`channelName`),
  KEY `pay201805_bankid_index` (`bankId`),
  KEY `pay201805_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201806`
--

DROP TABLE IF EXISTS `pay201806`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201806` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay201806_publisher_index` (`publisher`),
  KEY `pay201806_pfid_index` (`pfId`),
  KEY `pay201806_pf_index` (`pf`),
  KEY `pay201806_orderno_index` (`orderNo`),
  KEY `pay201806_outorderno_index` (`outOrderNo`),
  KEY `pay201806_ordertime_index` (`orderTime`),
  KEY `pay201806_orderstatus_index` (`orderStatus`),
  KEY `pay201806_ordercode_index` (`orderCode`),
  KEY `pay201806_paytime_index` (`payTime`),
  KEY `pay201806_paystatus_index` (`payStatus`),
  KEY `pay201806_paycode_index` (`payCode`),
  KEY `pay201806_delivertime_index` (`deliverTime`),
  KEY `pay201806_deliverstatus_index` (`deliverStatus`),
  KEY `pay201806_delivercode_index` (`deliverCode`),
  KEY `pay201806_accountid_index` (`accountId`),
  KEY `pay201806_openid_index` (`openId`),
  KEY `pay201806_zoneid_index` (`zoneId`),
  KEY `pay201806_money_index` (`money`),
  KEY `pay201806_gamemoney_index` (`gameMoney`),
  KEY `pay201806_moneytype_index` (`moneyType`),
  KEY `pay201806_pmid_index` (`pmId`),
  KEY `pay201806_channelname_index` (`channelName`),
  KEY `pay201806_bankid_index` (`bankId`),
  KEY `pay201806_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201807`
--

DROP TABLE IF EXISTS `pay201807`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201807` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay201807_publisher_index` (`publisher`),
  KEY `pay201807_pfid_index` (`pfId`),
  KEY `pay201807_pf_index` (`pf`),
  KEY `pay201807_orderno_index` (`orderNo`),
  KEY `pay201807_outorderno_index` (`outOrderNo`),
  KEY `pay201807_ordertime_index` (`orderTime`),
  KEY `pay201807_orderstatus_index` (`orderStatus`),
  KEY `pay201807_ordercode_index` (`orderCode`),
  KEY `pay201807_paytime_index` (`payTime`),
  KEY `pay201807_paystatus_index` (`payStatus`),
  KEY `pay201807_paycode_index` (`payCode`),
  KEY `pay201807_delivertime_index` (`deliverTime`),
  KEY `pay201807_deliverstatus_index` (`deliverStatus`),
  KEY `pay201807_delivercode_index` (`deliverCode`),
  KEY `pay201807_accountid_index` (`accountId`),
  KEY `pay201807_openid_index` (`openId`),
  KEY `pay201807_zoneid_index` (`zoneId`),
  KEY `pay201807_money_index` (`money`),
  KEY `pay201807_gamemoney_index` (`gameMoney`),
  KEY `pay201807_moneytype_index` (`moneyType`),
  KEY `pay201807_pmid_index` (`pmId`),
  KEY `pay201807_channelname_index` (`channelName`),
  KEY `pay201807_bankid_index` (`bankId`),
  KEY `pay201807_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201808`
--

DROP TABLE IF EXISTS `pay201808`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201808` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay201808_publisher_index` (`publisher`),
  KEY `pay201808_pfid_index` (`pfId`),
  KEY `pay201808_pf_index` (`pf`),
  KEY `pay201808_orderno_index` (`orderNo`),
  KEY `pay201808_outorderno_index` (`outOrderNo`),
  KEY `pay201808_ordertime_index` (`orderTime`),
  KEY `pay201808_orderstatus_index` (`orderStatus`),
  KEY `pay201808_ordercode_index` (`orderCode`),
  KEY `pay201808_paytime_index` (`payTime`),
  KEY `pay201808_paystatus_index` (`payStatus`),
  KEY `pay201808_paycode_index` (`payCode`),
  KEY `pay201808_delivertime_index` (`deliverTime`),
  KEY `pay201808_deliverstatus_index` (`deliverStatus`),
  KEY `pay201808_delivercode_index` (`deliverCode`),
  KEY `pay201808_accountid_index` (`accountId`),
  KEY `pay201808_openid_index` (`openId`),
  KEY `pay201808_zoneid_index` (`zoneId`),
  KEY `pay201808_money_index` (`money`),
  KEY `pay201808_gamemoney_index` (`gameMoney`),
  KEY `pay201808_moneytype_index` (`moneyType`),
  KEY `pay201808_pmid_index` (`pmId`),
  KEY `pay201808_channelname_index` (`channelName`),
  KEY `pay201808_bankid_index` (`bankId`),
  KEY `pay201808_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201809`
--

DROP TABLE IF EXISTS `pay201809`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201809` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay201809_publisher_index` (`publisher`),
  KEY `pay201809_pfid_index` (`pfId`),
  KEY `pay201809_pf_index` (`pf`),
  KEY `pay201809_orderno_index` (`orderNo`),
  KEY `pay201809_outorderno_index` (`outOrderNo`),
  KEY `pay201809_ordertime_index` (`orderTime`),
  KEY `pay201809_orderstatus_index` (`orderStatus`),
  KEY `pay201809_ordercode_index` (`orderCode`),
  KEY `pay201809_paytime_index` (`payTime`),
  KEY `pay201809_paystatus_index` (`payStatus`),
  KEY `pay201809_paycode_index` (`payCode`),
  KEY `pay201809_delivertime_index` (`deliverTime`),
  KEY `pay201809_deliverstatus_index` (`deliverStatus`),
  KEY `pay201809_delivercode_index` (`deliverCode`),
  KEY `pay201809_accountid_index` (`accountId`),
  KEY `pay201809_openid_index` (`openId`),
  KEY `pay201809_zoneid_index` (`zoneId`),
  KEY `pay201809_money_index` (`money`),
  KEY `pay201809_gamemoney_index` (`gameMoney`),
  KEY `pay201809_moneytype_index` (`moneyType`),
  KEY `pay201809_pmid_index` (`pmId`),
  KEY `pay201809_channelname_index` (`channelName`),
  KEY `pay201809_bankid_index` (`bankId`),
  KEY `pay201809_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201810`
--

DROP TABLE IF EXISTS `pay201810`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201810` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay201810_publisher_index` (`publisher`),
  KEY `pay201810_pfid_index` (`pfId`),
  KEY `pay201810_pf_index` (`pf`),
  KEY `pay201810_orderno_index` (`orderNo`),
  KEY `pay201810_outorderno_index` (`outOrderNo`),
  KEY `pay201810_ordertime_index` (`orderTime`),
  KEY `pay201810_orderstatus_index` (`orderStatus`),
  KEY `pay201810_ordercode_index` (`orderCode`),
  KEY `pay201810_paytime_index` (`payTime`),
  KEY `pay201810_paystatus_index` (`payStatus`),
  KEY `pay201810_paycode_index` (`payCode`),
  KEY `pay201810_delivertime_index` (`deliverTime`),
  KEY `pay201810_deliverstatus_index` (`deliverStatus`),
  KEY `pay201810_delivercode_index` (`deliverCode`),
  KEY `pay201810_accountid_index` (`accountId`),
  KEY `pay201810_openid_index` (`openId`),
  KEY `pay201810_zoneid_index` (`zoneId`),
  KEY `pay201810_money_index` (`money`),
  KEY `pay201810_gamemoney_index` (`gameMoney`),
  KEY `pay201810_moneytype_index` (`moneyType`),
  KEY `pay201810_pmid_index` (`pmId`),
  KEY `pay201810_channelname_index` (`channelName`),
  KEY `pay201810_bankid_index` (`bankId`),
  KEY `pay201810_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201811`
--

DROP TABLE IF EXISTS `pay201811`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201811` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(8,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay201811_publisher_index` (`publisher`),
  KEY `pay201811_pfid_index` (`pfId`),
  KEY `pay201811_pf_index` (`pf`),
  KEY `pay201811_orderno_index` (`orderNo`),
  KEY `pay201811_outorderno_index` (`outOrderNo`),
  KEY `pay201811_ordertime_index` (`orderTime`),
  KEY `pay201811_orderstatus_index` (`orderStatus`),
  KEY `pay201811_ordercode_index` (`orderCode`),
  KEY `pay201811_paytime_index` (`payTime`),
  KEY `pay201811_paystatus_index` (`payStatus`),
  KEY `pay201811_paycode_index` (`payCode`),
  KEY `pay201811_delivertime_index` (`deliverTime`),
  KEY `pay201811_deliverstatus_index` (`deliverStatus`),
  KEY `pay201811_delivercode_index` (`deliverCode`),
  KEY `pay201811_accountid_index` (`accountId`),
  KEY `pay201811_openid_index` (`openId`),
  KEY `pay201811_zoneid_index` (`zoneId`),
  KEY `pay201811_money_index` (`money`),
  KEY `pay201811_gamemoney_index` (`gameMoney`),
  KEY `pay201811_moneytype_index` (`moneyType`),
  KEY `pay201811_pmid_index` (`pmId`),
  KEY `pay201811_channelname_index` (`channelName`),
  KEY `pay201811_bankid_index` (`bankId`),
  KEY `pay201811_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201812`
--

DROP TABLE IF EXISTS `pay201812`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201812` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=454 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201901`
--

DROP TABLE IF EXISTS `pay201901`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201901` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=10202 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201902`
--

DROP TABLE IF EXISTS `pay201902`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201902` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=145103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201903`
--

DROP TABLE IF EXISTS `pay201903`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201903` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=113636 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201904`
--

DROP TABLE IF EXISTS `pay201904`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201904` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=21872 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201905`
--

DROP TABLE IF EXISTS `pay201905`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201905` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=11591 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201906`
--

DROP TABLE IF EXISTS `pay201906`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201906` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=17927 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201907`
--

DROP TABLE IF EXISTS `pay201907`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201907` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=6253 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201908`
--

DROP TABLE IF EXISTS `pay201908`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201908` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2106 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201909`
--

DROP TABLE IF EXISTS `pay201909`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201909` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=451 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201910`
--

DROP TABLE IF EXISTS `pay201910`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201910` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201911`
--

DROP TABLE IF EXISTS `pay201911`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201911` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pay201912`
--

DROP TABLE IF EXISTS `pay201912`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pay201912` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `pf` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '平台名称',
  `orderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '内部订单号',
  `outOrderNo` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `orderTime` datetime NOT NULL COMMENT '订单生成时间',
  `orderStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态: 0初始, 1进行中, 2完成, 3取消, 4退款中, 5退款完成',
  `orderCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '订单失败码',
  `payTime` datetime NOT NULL COMMENT '付款时间',
  `payStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付状态: 0初始, 1等待支付, 2支付完成, 3支付失败',
  `payCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `accountId` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `money` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `gameMoney` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '游戏币金额',
  `moneyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '币种: 1人民币, 2美元',
  `pmId` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'payapi里的平台ID',
  `product` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `channelName` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付渠道名称',
  `bankId` int(11) NOT NULL DEFAULT '0' COMMENT '银行ID',
  `extInfo` text COLLATE utf8_unicode_ci NOT NULL COMMENT '透传信息',
  `rawData` text COLLATE utf8_unicode_ci NOT NULL COMMENT '原始请求信息',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher_outOrderNo` (`publisher`,`outOrderNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-20 16:23:50
-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: 172.17.0.15    Database: temp
-- ------------------------------------------------------
-- Server version	5.6.28-cdb2016-log

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
-- Current Database: `temp`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `temp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `temp`;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-20 16:23:50
-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: 172.17.0.15    Database: xnhd_base
-- ------------------------------------------------------
-- Server version	5.6.28-cdb2016-log

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
-- Current Database: `xnhd_base`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `xnhd_base` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xnhd_base`;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `uid` int(11) DEFAULT NULL COMMENT '黑桃用户ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_publisher_index` (`publisher`),
  KEY `accounts_pfid_index` (`pfId`),
  KEY `accounts_openid_index` (`openId`),
  KEY `accounts_uid_index` (`uid`),
  KEY `accounts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=13262530 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `giftPackageRecord`
--

DROP TABLE IF EXISTS `giftPackageRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `giftPackageRecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '内部用户ID',
  `openId` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `zoneId` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '充值服务区',
  `roleId` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '角色id',
  `orderId` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `eventTime` datetime NOT NULL COMMENT '付款时间',
  `deliverTime` datetime NOT NULL COMMENT '发货时间',
  `deliverStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '发货状态: 0初始, 1等待发货, 2发货完成, 3发货失败',
  `deliverCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '支付失败码',
  `itemInfo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '物品',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orcs`
--

DROP TABLE IF EXISTS `orcs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orcs` (
  `aid` int(10) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `nation` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'æ°‘æ—',
  `birth` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ç”Ÿæ—¥',
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'åœ°å€',
  `idNum` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'èº«ä»½è¯',
  `province` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zoneId` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Index 2` (`openid`,`zoneId`)
) ENGINE=InnoDB AUTO_INCREMENT=1231023 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'å‘è¡Œå•†',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `user` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ç”¨æˆ·å',
  `password` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ç”¨æˆ·å¯†ç ',
  `pwd` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'æœªåŠ å¯†',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'è®¾å¤‡æ ‡è¯†',
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `openId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publisher` (`publisher`,`user`,`password`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-20 16:23:50
