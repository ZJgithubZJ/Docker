-- --------------------------------------------------------
-- 主机:                           192.168.75.22
-- 服务器版本:                        5.6.31 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.4.0.5130
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 sdo_code 的数据库结构
CREATE DATABASE IF NOT EXISTS `sdo_code` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sdo_code`;

-- 导出  表 sdo_code.giftcode 结构
CREATE TABLE IF NOT EXISTS `giftcode` (
  `code` varchar(50) NOT NULL,
  `tid` int(5) NOT NULL COMMENT '礼包类型编号',
  `mid` int(5) NOT NULL COMMENT '价值编号',
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

-- 数据导出被取消选择。
-- 导出  表 sdo_code.giftcode_record 结构
CREATE TABLE IF NOT EXISTS `giftcode_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(10) NOT NULL COMMENT '礼包码',
  `account` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。
-- 导出  表 sdo_code.gift_money 结构
CREATE TABLE IF NOT EXISTS `gift_money` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL COMMENT '礼包类型编号',
  `money` int(10) NOT NULL COMMENT '礼包价值',
  `item` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '礼包物品',
  `condition` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '获取礼包条件',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。
-- 导出  表 sdo_code.gift_type 结构
CREATE TABLE IF NOT EXISTS `gift_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '礼包类型',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '礼包名称',
  `openTime` datetime NOT NULL COMMENT '开始时间',
  `endTime` datetime NOT NULL COMMENT '结束时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。
-- 导出  表 sdo_code.lock 结构
CREATE TABLE IF NOT EXISTS `lock` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) NOT NULL COMMENT '礼包类型编号(登录激活码默认为100000)',
  `platform` int(5) NOT NULL DEFAULT '0' COMMENT '平台：1：ios,2:安卓',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '码状态：0：开启,1:关闭',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100005 DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。
-- 导出  表 sdo_code.logincode 结构
CREATE TABLE IF NOT EXISTS `logincode` (
  `code` varchar(50) NOT NULL,
  `batch` int(5) NOT NULL DEFAULT '1',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `account` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`code`),
  UNIQUE KEY `code` (`code`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
