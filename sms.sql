-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.12 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 sms.sms 结构
CREATE TABLE IF NOT EXISTS `sms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `receive_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` char(1) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `md5` char(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `md5` (`md5`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 数据导出被取消选择。

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
