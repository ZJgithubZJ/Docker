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


-- 导出 xnhd_base 的数据库结构
CREATE DATABASE IF NOT EXISTS `xnhd_base` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `xnhd_base`;

-- 导出  表 xnhd_base.accounts 结构
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `pfId` int(11) NOT NULL COMMENT '发行商内部平台ID',
  `openId` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '外部用户ID',
  `uid` int(11) DEFAULT NULL COMMENT '黑桃用户ID',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '账号类型',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_publisher_index` (`publisher`),
  KEY `accounts_pfid_index` (`pfId`),
  KEY `accounts_openid_index` (`openId`),
  KEY `accounts_uid_index` (`uid`),
  KEY `accounts_type_index` (`type`),
  KEY `accounts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10085358 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 导出  表 xnhd_base.account_info 结构
CREATE TABLE IF NOT EXISTS `account_info` (
  `openId` varchar(64) NOT NULL,
  `accountName` varchar(64) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `birth` varchar(64) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `vacation` varchar(64) DEFAULT NULL,
  `income` varchar(64) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`openId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  xnhd_base.account_info 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `account_info` DISABLE KEYS */;
INSERT INTO `account_info` (`openId`, `accountName`, `sex`, `birth`, `qq`, `education`, `vacation`, `income`, `location`) VALUES
	('305123778', 'huyi01', '0', '', '', '', '', '', ''),
	('320425693', 'iforever2088', '0', '', '', '', 'sss', 'ss', '1111244');
/*!40000 ALTER TABLE `account_info` ENABLE KEYS */;

-- 导出  表 xnhd_base.giftcode 结构
CREATE TABLE IF NOT EXISTS `giftcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `state` (`state`)
) ENGINE=InnoDB AUTO_INCREMENT=10010 DEFAULT CHARSET=utf8;

-- 正在导出表  xnhd_base.giftcode 的数据：~10,016 rows (大约)
/*!40000 ALTER TABLE `giftcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `giftcode` ENABLE KEYS */;

-- 导出  表 xnhd_base.giftrecord 结构
CREATE TABLE IF NOT EXISTS `giftrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '',
  `openid` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code_type` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 正在导出表  xnhd_base.giftrecord 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `giftrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `giftrecord` ENABLE KEYS */;

-- 导出  表 xnhd_base.migrations 结构
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  xnhd_base.migrations 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2016_07_01_070841_create_zones_table', 1),
	('2016_07_01_070900_create_plats_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- 导出  表 xnhd_base.permissions 结构
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  xnhd_base.permissions 的数据：~52 rows (大约)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'perm', '权限管理', '', '2016-07-21 00:03:53', '2016-07-21 00:03:53'),
	(2, 'user.data', '查询玩家数据', '', '2016-07-21 00:04:10', '2016-07-21 00:04:10'),
	(3, 'channel', '渠道管理', '', '2016-07-21 00:04:40', '2016-07-21 00:04:40'),
	(4, 'platform', '平台管理', '', '2016-07-21 00:04:51', '2016-07-21 00:04:51'),
	(5, 'zone', '大区管理', '', '2016-07-21 00:05:08', '2016-07-21 00:05:08'),
	(6, 'area.level', '玩家等级分布', '', '2016-07-22 02:57:41', '2016-07-22 02:57:41'),
	(7, 'area.guide', '新手引导流失点', '', '2016-07-23 01:58:13', '2016-07-23 01:58:13'),
	(8, 'area.vip', '玩家VIP分布', '', '2016-07-23 01:58:35', '2016-07-23 01:58:35'),
	(9, 'area.shop', '商城出售', '', '2016-07-26 02:02:56', '2016-07-26 02:02:56'),
	(10, 'area.item', '道具消耗和获得', '', '2016-07-26 02:03:11', '2016-07-26 02:03:11'),
	(11, 'user.item', '玩家道具消耗', '', '2016-07-29 00:18:35', '2016-07-29 00:19:17'),
	(12, 'user.asset', '玩家资产消耗', '', '2016-07-29 00:19:29', '2016-07-29 00:19:29'),
	(13, 'operate.asset', '修改玩家资产', '', '2016-08-03 20:40:36', '2016-08-03 20:43:32'),
	(14, 'operate.item', '修改玩家物品', '', '2016-08-03 20:40:51', '2016-08-03 20:40:51'),
	(15, 'message.mail', '邮件管理', '', '2016-08-05 22:14:35', '2016-08-05 22:14:35'),
	(16, 'area.online', '实时在线统计', '', '2016-08-06 02:31:02', '2016-08-06 02:31:02'),
	(17, 'area.spend', '实时消费统计', '', '2016-08-06 02:31:19', '2016-08-06 02:31:19'),
	(18, 'area.pay', '实时冲值统计', '', '2016-08-06 02:31:34', '2016-08-06 02:31:34'),
	(19, 'message.kick', '封号管理', '', '2016-08-10 02:07:26', '2016-08-10 02:07:26'),
	(20, 'message.notice', '公告管理', '', '2016-08-16 10:25:21', '2016-08-16 10:25:21'),
	(21, 'operate.pay', '模拟充值', '', '2016-08-16 13:50:39', '2016-08-16 13:50:39'),
	(22, 'message.guide', '跳过新手引导', '', '2016-08-17 11:50:43', '2016-08-17 11:50:43'),
	(23, 'area.checkpoint', '关卡', '', '2016-08-20 10:09:21', '2016-08-20 10:09:21'),
	(24, 'area.asset', '资产消耗和获得', '', '2016-08-24 02:57:37', '2016-08-24 02:57:37'),
	(25, 'area.top', '排行榜', '', '2016-08-25 02:20:24', '2016-08-25 02:20:24'),
	(26, 'operate.vip', '修改玩家VIP信息', '', '2016-09-08 06:33:11', '2016-09-08 06:33:11'),
	(27, 'log.pay', '模拟充值日志', '', '2016-09-08 10:26:04', '2016-09-14 02:54:53'),
	(28, 'operate.gamenews', '游戏内公告', '', '2016-09-13 06:06:45', '2016-09-13 06:06:45'),
	(29, 'report.online', '实时在线报表', '', '2016-09-23 07:34:58', '2016-09-23 07:34:58'),
	(30, 'report.history', '历史数据', '', '2016-10-10 15:20:48', '2016-10-10 15:20:48'),
	(31, 'user.group', '舞团信息', '', '2016-10-13 11:32:11', '2016-10-13 11:32:11'),
	(32, 'operate.tasks', '玩家任务', '', '2016-10-21 10:03:48', '2016-10-21 16:19:43'),
	(33, 'operate.photos', '上传图片', '', '2016-10-25 14:21:57', '2016-10-25 14:21:57'),
	(35, 'message.dissolveRoom', '解散房间', '', '2016-11-03 10:46:17', '2016-11-03 10:46:17'),
	(36, 'configTable', '物品配置', '', '2016-11-16 11:12:21', '2016-11-16 11:12:21'),
	(39, 'area.money', '蓝钻充值档位', '', '2016-11-28 10:28:35', '2016-11-28 11:53:28'),
	(40, 'operate.vote', '投票活动', '', '2016-12-01 10:19:39', '2016-12-01 10:19:39'),
	(41, 'operate.albums', '相册管理', '', '2016-12-01 10:19:54', '2016-12-01 10:19:54'),
	(42, 'operate.playerType', '设置玩家类型', '', '2016-12-02 14:34:01', '2016-12-05 17:29:53'),
	(43, 'user.email', '玩家邮件账单', '', '2016-12-10 14:37:27', '2016-12-10 14:37:27'),
	(44, 'operate.anchor', '主播信息', '', '2016-12-15 16:15:14', '2017-04-13 16:49:52'),
	(45, 'maintenance.fullOff', '踢全服玩家下线', '', '2016-12-22 11:11:55', '2016-12-22 11:11:55'),
	(46, 'user.newPlayer', '新增玩家登录账单', '', '2016-12-30 10:10:10', '2016-12-30 10:10:10'),
	(47, 'area.switchVoice', '切换语音频道', '', '2017-01-11 17:11:38', '2017-01-11 17:11:38'),
	(48, 'log.login', '登录日志', '', '2017-01-13 14:39:41', '2017-01-13 14:39:41'),
	(55, 'area.facebook', 'Facebook奖励', '', '2017-04-18 15:05:04', '2017-04-18 15:05:04'),
	(56, 'operate.migrate', '迁移玩家数据', '', '2017-05-23 14:55:17', '2017-05-23 14:55:17'),
	(57, 'operate.createRole', '创角', '', '2017-05-24 10:28:32', '2017-05-24 10:28:32'),
	(58, 'area.selShop', '服饰销售统计', '', '2017-08-30 14:50:13', '2017-08-30 18:29:20'),
	(59, 'operate.hero', '修改玩家英雄', '', '2017-10-23 13:59:55', '2017-10-23 13:59:55'),
	(60, 'vip.index', '贵宾信息', '', '2017-11-01 15:03:05', '2017-11-13 11:49:35'),
	(61, 'vip.info', '贵宾升级信息', '', '2017-11-01 15:03:20', '2017-11-13 11:49:52');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- 导出  表 xnhd_base.permission_role 结构
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  xnhd_base.permission_role 的数据：~168 rows (大约)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(35, 1),
	(36, 1),
	(39, 1),
	(40, 1),
	(41, 1),
	(42, 1),
	(43, 1),
	(44, 1),
	(45, 1),
	(46, 1),
	(47, 1),
	(48, 1),
	(55, 1),
	(56, 1),
	(57, 1),
	(58, 1),
	(59, 1),
	(60, 1),
	(61, 1),
	(3, 2),
	(4, 2),
	(5, 2),
	(2, 3),
	(3, 3),
	(4, 3),
	(5, 3),
	(6, 3),
	(7, 3),
	(8, 3),
	(9, 3),
	(10, 3),
	(11, 3),
	(12, 3),
	(13, 3),
	(14, 3),
	(15, 3),
	(16, 3),
	(18, 3),
	(19, 3),
	(20, 3),
	(21, 3),
	(22, 3),
	(24, 3),
	(26, 3),
	(3, 5),
	(4, 5),
	(5, 5),
	(2, 6),
	(11, 6),
	(12, 6),
	(2, 7),
	(3, 7),
	(4, 7),
	(5, 7),
	(6, 7),
	(7, 7),
	(8, 7),
	(9, 7),
	(10, 7),
	(11, 7),
	(16, 7),
	(17, 7),
	(18, 7),
	(2, 8),
	(3, 8),
	(4, 8),
	(5, 8),
	(10, 8),
	(11, 8),
	(12, 8),
	(13, 8),
	(14, 8),
	(16, 8),
	(19, 8),
	(20, 8),
	(22, 8),
	(2, 10),
	(10, 10),
	(11, 10),
	(12, 10),
	(13, 10),
	(14, 10),
	(16, 10),
	(19, 10),
	(20, 10),
	(21, 10),
	(22, 10),
	(60, 11),
	(61, 11),
	(1, 27),
	(2, 27),
	(3, 27),
	(6, 27),
	(7, 27),
	(8, 27),
	(9, 27),
	(10, 27),
	(11, 27),
	(12, 27),
	(15, 27),
	(16, 27),
	(17, 27),
	(18, 27),
	(19, 27),
	(20, 27),
	(22, 27),
	(23, 27),
	(24, 27),
	(25, 27),
	(29, 27),
	(30, 27),
	(31, 27),
	(35, 27),
	(39, 27),
	(43, 27),
	(44, 27),
	(46, 27),
	(47, 27),
	(2, 28),
	(3, 28),
	(4, 28),
	(5, 28),
	(29, 28),
	(30, 28),
	(2, 29),
	(3, 29),
	(4, 29),
	(5, 29),
	(29, 29),
	(30, 29),
	(1, 32),
	(2, 32),
	(3, 32),
	(4, 32),
	(5, 32);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- 导出  表 xnhd_base.register 结构
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `publisher` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发行商',
  `type` tinyint(2) NOT NULL,
  `user` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户密码',
  `device` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '设备标识',
  `status` tinyint(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `register_publisher_index` (`publisher`),
  KEY `register_user_index` (`user`),
  KEY `register_device_index` (`device`),
  KEY `register_created_at_index` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  xnhd_base.register 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
/*!40000 ALTER TABLE `register` ENABLE KEYS */;

-- 导出  表 xnhd_base.roles 结构
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  xnhd_base.roles 的数据：~15 rows (大约)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '管理员', '{"publishers":[],"platIds":[],"zoneIds":[],"channelIds":[],"other":""}', '2016-07-21 00:06:01', '2017-08-30 14:50:40'),
	(2, 'zoneAdmin', '区服管理员', '', '2016-07-21 00:07:11', '2016-07-21 00:07:11'),
	(3, 'heitaoCop', '黑桃运营', '', '2016-07-21 00:09:32', '2016-07-21 00:09:32'),
	(5, 'xiniuTest', '犀牛测试', '', '2016-07-27 00:09:19', '2016-07-27 00:09:19'),
	(6, 'heitaokefu', '黑桃客服', '', '2016-08-07 19:49:36', '2016-08-07 19:49:36'),
	(7, 'cehua', '策划', '', '2016-08-10 00:09:40', '2016-08-10 00:09:40'),
	(8, 'yunying', '犀牛运营', '', '2016-08-10 00:10:42', '2016-08-31 02:03:00'),
	(9, 'cms', 'CMS运营', '', '2016-08-11 23:23:35', '2016-08-11 23:23:35'),
	(10, '犀牛高级运营', '犀牛高级运营', '', '2016-09-18 07:29:30', '2016-09-18 07:29:30'),
	(11, 'develop', '开发功能测试', '{"publishers":[],"platIds":[],"zoneIds":[],"channelIds":[],"other":""}', '2016-09-23 08:23:34', '2017-08-16 14:10:04'),
	(27, 'changmeng', '畅梦运营', '{"publishers":[],"platIds":["997","2"],"zoneIds":["2001","3001"],"channelIds":[],"other":""}', '2017-03-22 11:35:56', '2017-08-16 15:54:01'),
	(28, 'manling', '漫灵运营', '{"publishers":["manling"],"platIds":["99"],"zoneIds":["99001"],"channelIds":["77"],"other":""}', '2017-06-27 14:02:44', '2017-06-27 17:26:15'),
	(29, 'xianyu', '咸鱼运营', '{"publishers":["lainyun"],"platIds":["96"],"zoneIds":["96001"],"channelIds":["999"],"other":""}', '2017-06-29 13:36:44', '2017-06-29 13:36:44'),
	(30, '7k7k', '7k7k运营', '{"publishers":["lainyun"],"platIds":["96"],"zoneIds":["96001"],"channelIds":["999"],"other":""}', '2017-06-29 13:36:44', '2017-06-29 13:36:44'),
	(32, 'develop1', '测试功能', '{"publishers":[],"platIds":[],"zoneIds":[],"channelIds":[],"other":"testdsfasafasf"}', '2017-08-16 14:11:23', '2017-11-03 10:25:28');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- 导出  表 xnhd_base.role_user 结构
CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  xnhd_base.role_user 的数据：~32 rows (大约)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(6, 1),
	(7, 1),
	(12, 1),
	(14, 1),
	(15, 1),
	(20, 1),
	(21, 1),
	(28, 1),
	(4, 2),
	(40, 2),
	(5, 3),
	(19, 3),
	(40, 3),
	(28, 5),
	(9, 6),
	(28, 6),
	(10, 7),
	(8, 8),
	(11, 8),
	(16, 8),
	(17, 8),
	(13, 9),
	(18, 10),
	(12, 11),
	(20, 11),
	(24, 11),
	(22, 27),
	(27, 27),
	(25, 28),
	(26, 29);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- 导出  表 xnhd_base.staff 结构
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- 正在导出表  xnhd_base.staff 的数据：~28 rows (大约)
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`id`, `email`, `name`, `password`, `status`) VALUES
	(1, 'admin@mail.51.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
	(2, 'heyq@mail.51.com', 'heyq', '3cdb4a5cc5e98e117c9ff30f4eb3387c', 1),
	(3, 'zhangbw@mail.51.com', 'zhangbw', 'e10adc3949ba59abbe56e057f20f883e', 1),
	(4, 'chenh@mail.51.com', 'chenh', 'e10adc3949ba59abbe56e057f20f883e', 1),
	(5, 'heitao@mail.51.com', 'heitao', '57e0670718565d03d31bd5fb17abc26b', 1),
	(6, 'wanghb@mail.51.com', 'wanghb', '6a8c618c2ec3d1fb66ba3b9ab58742fe', 1),
	(7, 'weid@mail.51.com', 'weid', '202cb962ac59075b964b07152d234b70', 1),
	(8, 'jiangsx@mail.51.com', 'jiangsx', 'e10adc3949ba59abbe56e057f20f883e', 1),
	(9, 'heitaokf@mail.51.com', 'heitaokefu', '57e0670718565d03d31bd5fb17abc26b', 1),
	(10, 'cehua@mail.51.com', 'cehua', 'e10adc3949ba59abbe56e057f20f883e', 1),
	(11, 'yunying@mail.51.com', 'yunying', 'e10adc3949ba59abbe56e057f20f883e', 1),
	(12, 'wufl@mail.51.com', 'wufl', 'e10adc3949ba59abbe56e057f20f883e', 1),
	(13, 'hey@mail.51.com', 'heyang', 'e10adc3949ba59abbe56e057f20f883e', 1),
	(14, 'lvpp@mail.51.com', 'lvpp', 'e10adc3949ba59abbe56e057f20f883e', 1),
	(15, 'xiaoj@mail.51.com', '晓玖', 'e10adc3949ba59abbe56e057f20f883e', 1),
	(16, 'xiaoyl@mail.51.com', 'xiaoyl', '47ec2dd791e31e2ef2076caf64ed9b3d', 1),
	(17, 'xieyk@mail.51.com', 'xieyk', '47ec2dd791e31e2ef2076caf64ed9b3d', 1),
	(18, 'shentt@mail.51.com', '沈婷婷', 'e10adc3949ba59abbe56e057f20f883e', 1),
	(19, 'lic@mail.51.com', 'lic', '47ec2dd791e31e2ef2076caf64ed9b3d', 1),
	(20, 'zhangzy@mail.51.com', 'zhangzy', '698d51a19d8a121ce581499d7b701668', 1),
	(21, 'caoq@mail.51.com', 'caoq', '698d51a19d8a121ce581499d7b701668', 1),
	(22, 'test@51.com', 'test', '098f6bcd4621d373cade4e832627b4f6', 1),
	(24, 'liusy@mail.51.com', 'liusy', '202cb962ac59075b964b07152d234b70', 1),
	(25, '', 'manling', '202cb962ac59075b964b07152d234b70', 1),
	(26, '', 'xianyu', '202cb962ac59075b964b07152d234b70', 1),
	(27, '', 'wufl_test', '202cb962ac59075b964b07152d234b70', 1),
	(28, 'guolei@xnhd.com', 'guolei', '202cb962ac59075b964b07152d234b70', 1),
	(40, 'sdfsdaf', 'dfsaf', '202cb962ac59075b964b07152d234b70', 1);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;

-- 导出  表 xnhd_base.users 结构
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  xnhd_base.users 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'aaaa', 'aaaa@mail.51.com', '$2y$10$fW8fm/jAa.nv03CV3XhHl.ftUyQfVfyQJLH01eqR9D7GHep.7GiGy', NULL, '2017-02-09 17:00:23', '2017-02-09 17:00:23'),
	(3, 'aaaa2', 'aaaa2@mail.51.com', '$2y$10$GBjuNJonJMPFktPBJl5RruzjWAAWtAcQV4t.jsjGHDBoRQ4u1ogZW', NULL, '2017-02-09 17:16:45', '2017-02-09 17:16:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- 导出  表 xnhd_base.vip 结构
CREATE TABLE IF NOT EXISTS `vip` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catId` int(10) unsigned NOT NULL DEFAULT '0',
  `zoneId` int(10) unsigned NOT NULL DEFAULT '0',
  `account` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `gender` int(2) NOT NULL,
  `qq` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nickname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `like` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comQQ` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `month` tinyint(5) NOT NULL,
  `day` tinyint(5) NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vip_account_index` (`account`),
  KEY `vip_name_index` (`name`),
  KEY `vip_qq_index` (`qq`),
  KEY `vip_birthday_index` (`birthday`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  xnhd_base.vip 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `vip` DISABLE KEYS */;
INSERT INTO `vip` (`id`, `catId`, `zoneId`, `account`, `name`, `gender`, `qq`, `phone`, `nickname`, `like`, `comQQ`, `birthday`, `month`, `day`, `address`, `created_at`, `updated_at`) VALUES
	(1, 99, 99001, 'tx1', '小小草', 2, '231243434', '15201969278', '莉莉', '看书', '58941542', '2017-11-30', 11, 30, '按时发货哦爱分红阿斯ofo暗示法VOA是的我家佛山的房价', NULL, '2017-12-05 16:59:47'),
	(2, 98, 98001, 'yao121', '夏普', 1, '56633456', '1525468535', '小时代', '开车', '578976461', '2017-11-08', 11, 8, '安防奇偶王鸿王凡杰额地方共建21321', '2017-11-06 17:19:34', '2017-12-05 17:36:23');
/*!40000 ALTER TABLE `vip` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
