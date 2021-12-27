/*
Navicat MySQL Data Transfer

Source Server         : phpstudy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : renova

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-11-25 10:13:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for table_renova_all
-- ----------------------------
DROP TABLE IF EXISTS `table_renova_all`;
CREATE TABLE `table_renova_all` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `list` varchar(255) DEFAULT NULL COMMENT '描述',
  `type` varchar(255) DEFAULT NULL COMMENT '数据的类型',
  `time` varchar(255) DEFAULT NULL COMMENT '时间段',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of table_renova_all
-- ----------------------------
INSERT INTO `table_renova_all` VALUES ('1', '黑标', 'series', 'all', '4821');
INSERT INTO `table_renova_all` VALUES ('2', '红标', 'series', 'all', '17271');
INSERT INTO `table_renova_all` VALUES ('3', '金标', 'series', 'all', '1781');
INSERT INTO `table_renova_all` VALUES ('4', '敏感系列', 'series', 'all', '941');
INSERT INTO `table_renova_all` VALUES ('5', '湿巾纸', 'series', 'all', '523');
INSERT INTO `table_renova_all` VALUES ('6', '呵护系列', 'series', 'all', '0');
INSERT INTO `table_renova_all` VALUES ('7', '皇钻系列', 'series', 'all', '0');
INSERT INTO `table_renova_all` VALUES ('8', '水滴系列', 'series', 'all', '0');
INSERT INTO `table_renova_all` VALUES ('9', '面巾纸', 'series', 'all', '96');
INSERT INTO `table_renova_all` VALUES ('10', '设计系列', 'series', 'all', '0');
INSERT INTO `table_renova_all` VALUES ('11', '卷纸', 'type', 'all', '4597');
INSERT INTO `table_renova_all` VALUES ('12', '厨房用纸', 'type', 'all', '993');
INSERT INTO `table_renova_all` VALUES ('13', '餐巾纸', 'type', 'all', '2413');
INSERT INTO `table_renova_all` VALUES ('14', '抽纸', 'type', 'all', '3969');
INSERT INTO `table_renova_all` VALUES ('15', '口袋纸巾', 'type', 'all', '12842');
INSERT INTO `table_renova_all` VALUES ('16', '湿巾纸', 'type', 'all', '523');
INSERT INTO `table_renova_all` VALUES ('17', '厕纸', 'type', 'all', '0');
INSERT INTO `table_renova_all` VALUES ('18', '面巾纸', 'type', 'all', '96');
INSERT INTO `table_renova_all` VALUES ('19', '纸毛巾', 'type', 'all', '0');
INSERT INTO `table_renova_all` VALUES ('20', '黑色', 'color', 'all', '1450');
INSERT INTO `table_renova_all` VALUES ('21', '红色', 'color', 'all', '3683');
INSERT INTO `table_renova_all` VALUES ('22', '橘色', 'color', 'all', '3516');
INSERT INTO `table_renova_all` VALUES ('23', '黄色', 'color', 'all', '2612');
INSERT INTO `table_renova_all` VALUES ('24', '绿色', 'color', 'all', '2856');
INSERT INTO `table_renova_all` VALUES ('25', '蓝色', 'color', 'all', '1833');
INSERT INTO `table_renova_all` VALUES ('26', '桃红', 'color', 'all', '2461');
INSERT INTO `table_renova_all` VALUES ('27', '全彩色', 'color', 'all', '1034');
INSERT INTO `table_renova_all` VALUES ('28', '白色', 'color', 'all', '1858');
INSERT INTO `table_renova_all` VALUES ('29', '深蓝', 'color', 'all', '160');
INSERT INTO `table_renova_all` VALUES ('30', '枣红', 'color', 'all', '106');
INSERT INTO `table_renova_all` VALUES ('31', '浅蓝', 'color', 'all', '114');
INSERT INTO `table_renova_all` VALUES ('32', '混色', 'color', 'all', '2759');
INSERT INTO `table_renova_all` VALUES ('33', '淡紫', 'color', 'all', '802');
INSERT INTO `table_renova_all` VALUES ('34', '玫红', 'color', 'all', '89');
INSERT INTO `table_renova_all` VALUES ('35', '裸色', 'color', 'all', '100');
INSERT INTO `table_renova_all` VALUES ('36', '印花', 'color', 'all', '0');
INSERT INTO `table_renova_all` VALUES ('37', '白色印花', 'color', 'all', '0');
INSERT INTO `table_renova_all` VALUES ('38', '白色红盒', 'color', 'all', '0');
INSERT INTO `table_renova_all` VALUES ('39', '微店', 'channel', 'all', '218');
INSERT INTO `table_renova_all` VALUES ('40', '京东1号店', 'channel', 'all', '412');
INSERT INTO `table_renova_all` VALUES ('41', '黑市', 'channel', 'all', '35');
INSERT INTO `table_renova_all` VALUES ('42', '讲究', 'channel', 'all', '43');
INSERT INTO `table_renova_all` VALUES ('43', '快团团', 'channel', 'all', '3349');
INSERT INTO `table_renova_all` VALUES ('44', 'renova天猫店', 'channel', 'all', '256');
INSERT INTO `table_renova_all` VALUES ('45', 'renova淘宝店', 'channel', 'all', '238');
INSERT INTO `table_renova_all` VALUES ('46', 'renova青岛可丽', 'channel', 'all', '160');
INSERT INTO `table_renova_all` VALUES ('47', 'renova壹加壹', 'channel', 'all', '2838');
INSERT INTO `table_renova_all` VALUES ('48', 'renova葵上', 'channel', 'all', '2218');
INSERT INTO `table_renova_all` VALUES ('49', '樱桃写的', 'channel', 'all', '446');
INSERT INTO `table_renova_all` VALUES ('50', '新先聚品', 'channel', 'all', '155');
INSERT INTO `table_renova_all` VALUES ('51', '抖店', 'channel', 'all', '9029');
INSERT INTO `table_renova_all` VALUES ('52', '抖音', 'channel', 'all', '6036');
