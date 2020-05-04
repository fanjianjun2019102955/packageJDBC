/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50513
Source Host           : localhost:3306
Source Database       : hospital

Target Server Type    : MYSQL
Target Server Version : 50513
File Encoding         : 65001

Date: 2020-05-04 22:42:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `doctor`
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `userID` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT '123456',
  `sex` int(10) unsigned DEFAULT NULL COMMENT '0：男，1：女',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('0001', 'lisi', '123456', '0');
INSERT INTO `doctor` VALUES ('0002', 'zhangsan', '123456', '0');
INSERT INTO `doctor` VALUES ('0003', 'duqie', '123456', '1');
INSERT INTO `doctor` VALUES ('0004', 'wangwu', '123456', '0');

-- ----------------------------
-- Function structure for `addTwoNum`
-- ----------------------------
DROP FUNCTION IF EXISTS `addTwoNum`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `addTwoNum`(`num1` int,`num2` int) RETURNS int(11)
BEGIN
	#Routine body goes here...

	RETURN num1+num2;
END
;;
DELIMITER ;
