/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50513
Source Host           : localhost:3306
Source Database       : hospital

Target Server Type    : MYSQL
Target Server Version : 50513
File Encoding         : 65001

Date: 2020-05-11 22:54:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `doctor`
-- ----------------------------
DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `userID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT '123456',
  `sex` mediumint(10) unsigned DEFAULT NULL COMMENT '0：男，1：女',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2019103180 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doctor
-- ----------------------------
INSERT INTO `doctor` VALUES ('2019102955', 'lisi', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102956', 'zhangsan', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102957', 'duqie', '123456', '1');
INSERT INTO `doctor` VALUES ('2019102958', 'wangwu', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102959', 'weqwe', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102960', 'ert', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102961', 'vncb', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102962', 'oip', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102963', 'zxs', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102964', 'rtett', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102966', 'vrec', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102970', 'dujiajia', '123456', '1');
INSERT INTO `doctor` VALUES ('2019102972', 'jiuug', '123456', '1');
INSERT INTO `doctor` VALUES ('2019102974', 'kljh', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102975', 'uiuihu', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102976', 'fyter', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102977', 'gdaEMvXOQ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102978', 'iwQLgeN', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102979', 'aXeVQAz', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102980', 'RnWzOzA', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102981', 'ftXtRmg', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102982', 'ssMgBdp', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102983', 'FSkzvEn', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102984', 'PZxyMgf', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102985', 'KaWXpNV', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102986', 'SmRvEtb', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102987', 'EDTvFKM', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102988', 'LDAuRNj', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102989', 'LsfvAtu', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102990', 'tJmPzgV', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102991', 'uZzJFVG', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102992', 'KdShxnb', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102993', 'yzmzKtT', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102994', 'MDoNriU', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102995', 'PZEAZwW', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102996', 'DdXFFLl', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102997', 'JMKEXyw', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102998', 'kISKhbg', '123456', '0');
INSERT INTO `doctor` VALUES ('2019102999', 'btPzZQh', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103000', 'vecmMsT', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103001', 'sFkwFUw', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103002', 'KROEtBJ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103003', 'KCqfEfq', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103004', 'JWuXnxE', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103005', 'shWhDTN', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103006', 'abqsHnm', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103007', 'wXENnJe', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103008', 'XwfqwwC', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103009', 'AorDGwN', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103010', 'pPGAthf', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103011', 'FBjXPiT', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103012', 'nCxShBc', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103013', 'OjKIpEo', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103014', 'hjSzPUh', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103015', 'DqcyfAQ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103016', 'sYLJmkr', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103017', 'wtKBRLT', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103018', 'HLrclfM', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103019', 'wxamhTV', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103020', 'WrIYKQZ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103021', 'xVUGZUx', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103022', 'MHPJCZe', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103023', 'qaZkkIg', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103024', 'kNaENBr', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103025', 'lrgqscm', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103026', 'JXUgytl', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103027', 'OEWaLGN', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103028', 'WUwmsVZ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103029', 'bHWbWgS', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103030', 'nNgPHvt', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103031', 'lSHvhLt', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103032', 'qhYfapG', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103033', 'BPUcvpB', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103034', 'seycICG', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103035', 'QQexZzF', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103036', 'gLZuime', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103037', 'HgQLbxy', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103038', 'nLKxqnc', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103039', 'PrytqWz', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103040', 'hOwaIRB', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103041', 'BgVCEHA', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103042', 'jDNZloX', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103046', 'VngrEak', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103047', 'GoiAPSD', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103048', 'petLzBg', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103049', 'dwIEtlh', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103050', 'nignFJx', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103051', 'lPcsCmA', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103052', 'EFeXugR', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103053', 'aLvkpqp', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103054', 'VoQTmln', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103055', 'ufGSOGm', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103056', 'mbSZHDx', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103057', 'GzJJNfE', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103058', 'iaCRslN', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103059', 'ohppgTW', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103060', 'TLGZCat', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103061', 'HwnQrJq', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103062', 'RcaIoCB', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103063', 'nCeiRtd', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103064', 'rKsONNW', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103065', 'zyOTGpU', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103066', 'XDtBdXH', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103067', 'ieKMGIq', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103068', 'KiUhxRc', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103069', 'IPGyGlI', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103070', 'EgPBqTZ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103071', 'avEOtmN', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103072', 'aoCKpTY', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103073', 'QiEUNVZ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103074', 'IoCDHoW', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103075', 'sbqeJxJ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103076', 'XpsWSOg', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103077', 'cASWTpJ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103078', 'LzHWard', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103079', 'gPYKESw', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103080', 'JoWUPmA', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103081', 'nlCJkCu', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103082', 'JqtYlGM', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103083', 'jfmmzPO', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103084', 'JIZwSNq', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103085', 'poVswHI', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103086', 'Euaondy', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103087', 'JBcgIGB', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103088', 'wPYWnwY', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103089', 'zLwebmi', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103090', 'wpmgGMR', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103091', 'ZoZAIun', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103092', 'jLrtUIY', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103093', 'gCycjal', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103094', 'iiigULq', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103095', 'WBzMwyn', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103096', 'TFPrADR', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103097', 'EwIqFqV', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103098', 'ULLFmMr', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103099', 'xzctkek', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103100', 'McZUtaP', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103101', 'EpynZMI', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103102', 'DxzAcor', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103103', 'adZxHDR', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103104', 'JklHSsB', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103105', 'RcYEnie', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103106', 'UdNSfPN', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103107', 'MgIjSqy', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103108', 'kZtzUVw', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103109', 'hFlylPN', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103110', 'ISHrJsX', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103111', 'sAgzrcb', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103112', 'AnAeJeK', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103113', 'QbWUaoS', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103114', 'CyRCttw', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103115', 'kTJZbCi', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103116', 'BmEYafp', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103117', 'uDUcxib', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103118', 'sqRuuYn', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103119', 'VZvZytW', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103120', 'WYILpKd', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103121', 'GwRMPNO', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103122', 'UofpbCH', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103123', 'HIgGmpX', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103124', 'JxVnrat', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103125', 'FxLZlwg', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103126', 'Mxwxyfz', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103127', 'MdpuaTZ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103128', 'pSROShD', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103129', 'asJPsNF', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103130', 'DjpoEVr', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103131', 'rAQRfyx', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103132', 'RjbNRNA', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103133', 'yxIbMpJ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103134', 'qpMTYew', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103135', 'xgLnEXn', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103136', 'jJIvKqK', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103137', 'FVYEoNY', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103138', 'cTbNjwG', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103139', 'oJyOfVZ', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103140', 'LHUYkzB', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103141', 'WWGRsPa', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103142', 'GiTRFhp', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103143', 'nOdZjJF', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103144', 'MmfTTcw', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103145', 'qELBYkK', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103146', 'jrEOSAp', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103147', 'lIVXxDd', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103148', 'lhEJkeU', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103149', 'ZJaYEIM', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103150', 'AQJPvax', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103151', 'YhxVfng', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103152', 'zElOCAD', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103153', 'AmDWcno', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103154', 'IRDeuQW', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103155', 'ymwRegm', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103156', 'nlYtnDL', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103157', 'YKhVDcC', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103158', 'bQvOZjY', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103159', 'cdatcfK', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103160', 'JbADBts', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103161', 'hIybEDe', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103162', 'cpPdbTu', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103163', 'kHBmTCC', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103164', 'gVQzxTA', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103165', 'KtqPFFt', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103166', 'cnjctEW', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103167', 'hDpEMEf', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103168', 'eEOrLRH', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103169', 'xsCajjS', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103170', 'VNAoBgM', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103171', 'bMeXhBv', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103172', 'GDvnkTm', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103173', 'IRuszXq', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103174', 'ytYUeLz', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103175', 'uXiJnsW', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103176', 'SOLdgZn', '123456', '0');
INSERT INTO `doctor` VALUES ('2019103177', 'sunwukong', '123456', '1');
INSERT INTO `doctor` VALUES ('2019103178', 'zhouerke', '123456', '1');

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
