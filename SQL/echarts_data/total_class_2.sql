/*
Navicat MySQL Data Transfer

Source Server         : phpstudy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : renova

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-11-25 10:13:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for total_class_2
-- ----------------------------
DROP TABLE IF EXISTS `total_class_2`;
CREATE TABLE `total_class_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EAN_Code` varchar(255) DEFAULT NULL COMMENT '商品编码',
  `color` varchar(255) DEFAULT NULL COMMENT '颜色',
  `type` varchar(255) DEFAULT NULL COMMENT '品类',
  `series` varchar(255) DEFAULT NULL COMMENT '系列',
  `retail-price` decimal(10,0) DEFAULT NULL COMMENT '零售价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of total_class_2
-- ----------------------------
INSERT INTO `total_class_2` VALUES ('1', '5601028009218', '黑色', '卷纸', '黑标', '99');
INSERT INTO `total_class_2` VALUES ('2', '5601028010108', '红色', '卷纸', '黑标', '99');
INSERT INTO `total_class_2` VALUES ('3', '5601028010481', '橘色', '卷纸', '黑标', '99');
INSERT INTO `total_class_2` VALUES ('4', '5601028013475', '黄色', '卷纸', '黑标', '99');
INSERT INTO `total_class_2` VALUES ('5', '5601028010900', '绿色', '卷纸', '黑标', '99');
INSERT INTO `total_class_2` VALUES ('6', '5601028011969', '蓝色', '卷纸', '黑标', '99');
INSERT INTO `total_class_2` VALUES ('7', '5601028011952', '桃红', '卷纸', '黑标', '99');
INSERT INTO `total_class_2` VALUES ('8', '5601028010245', '黑色', '卷纸', '黑标', '109');
INSERT INTO `total_class_2` VALUES ('9', '5601028011976', '桃红', '卷纸', '黑标', '109');
INSERT INTO `total_class_2` VALUES ('10', '5601028010573', '红色', '卷纸', '黑标', '109');
INSERT INTO `total_class_2` VALUES ('11', '5601028010580', '橘色', '卷纸', '黑标', '109');
INSERT INTO `total_class_2` VALUES ('12', '5601028013604', '黄色', '卷纸', '黑标', '109');
INSERT INTO `total_class_2` VALUES ('13', '5601028010634', '绿色', '卷纸', '黑标', '109');
INSERT INTO `total_class_2` VALUES ('14', '5601028011983', '蓝色', '卷纸', '黑标', '109');
INSERT INTO `total_class_2` VALUES ('15', '5601028025331', '全彩色', '卷纸', '黑标', '119');
INSERT INTO `total_class_2` VALUES ('16', '5601028025324', '全彩色', '卷纸', '黑标', '30');
INSERT INTO `total_class_2` VALUES ('17', '5601028020862', '蓝色', '厨房用纸', '红标', '35');
INSERT INTO `total_class_2` VALUES ('18', '5601028020879', '桃红', '厨房用纸', '红标', '35');
INSERT INTO `total_class_2` VALUES ('19', '5601028020916', '黄色', '厨房用纸', '红标', '35');
INSERT INTO `total_class_2` VALUES ('20', '5601028020893', '橘色', '厨房用纸', '红标', '35');
INSERT INTO `total_class_2` VALUES ('21', '5601028020886', '绿色', '厨房用纸', '红标', '35');
INSERT INTO `total_class_2` VALUES ('22', '5601028020909', '红色', '厨房用纸', '红标', '35');
INSERT INTO `total_class_2` VALUES ('23', '5601028021258', '白色', '厨房用纸', '红标', '35');
INSERT INTO `total_class_2` VALUES ('24', '5601028023597', '黑色', '厨房用纸', '黑标', '55');
INSERT INTO `total_class_2` VALUES ('25', '5601028024839', '黑色', '餐巾纸', '金标', '25');
INSERT INTO `total_class_2` VALUES ('26', '5601028007115', '黄色', '餐巾纸', '金标', '25');
INSERT INTO `total_class_2` VALUES ('27', '5601028019088', '红色', '餐巾纸', '金标', '25');
INSERT INTO `total_class_2` VALUES ('28', '5601028007085', '白色', '餐巾纸', '金标', '25');
INSERT INTO `total_class_2` VALUES ('29', '5601028007733', '深蓝', '餐巾纸', '金标', '25');
INSERT INTO `total_class_2` VALUES ('30', '5601028007108', '枣红', '餐巾纸', '金标', '25');
INSERT INTO `total_class_2` VALUES ('31', '5601028028332', '浅蓝', '餐巾纸', '金标', '25');
INSERT INTO `total_class_2` VALUES ('32', '5601028028363', '绿色', '餐巾纸', '金标', '25');
INSERT INTO `total_class_2` VALUES ('33', '5601028028349', '橘色', '餐巾纸', '金标', '25');
INSERT INTO `total_class_2` VALUES ('34', '5601028028356', '桃红', '餐巾纸', '金标', '25');
INSERT INTO `total_class_2` VALUES ('35', '5601028010870', '红色', '餐巾纸', '黑标', '20');
INSERT INTO `total_class_2` VALUES ('36', '5601028010887', '橘色', '餐巾纸', '黑标', '20');
INSERT INTO `total_class_2` VALUES ('37', '5601028010894', '绿色', '餐巾纸', '黑标', '20');
INSERT INTO `total_class_2` VALUES ('38', '5601028016124', '蓝色', '餐巾纸', '黑标', '20');
INSERT INTO `total_class_2` VALUES ('39', '5601028016353', '桃红', '餐巾纸', '黑标', '20');
INSERT INTO `total_class_2` VALUES ('40', '5601028010757', '黑色', '餐巾纸', '黑标', '20');
INSERT INTO `total_class_2` VALUES ('41', '5601028020961', '绿色', '抽纸', '红标', '25');
INSERT INTO `total_class_2` VALUES ('42', '5601028021098', '混色', '抽纸', '红标', '25');
INSERT INTO `total_class_2` VALUES ('43', '5601028020992', '橘色', '抽纸', '红标', '25');
INSERT INTO `total_class_2` VALUES ('44', '5601028020978', '黄色', '抽纸', '红标', '25');
INSERT INTO `total_class_2` VALUES ('45', '5601028020985', '红色', '抽纸', '红标', '25');
INSERT INTO `total_class_2` VALUES ('46', '5601028020954', '桃红', '抽纸', '红标', '25');
INSERT INTO `total_class_2` VALUES ('47', '5601028020947', '蓝色', '抽纸', '红标', '25');
INSERT INTO `total_class_2` VALUES ('48', '5601028009829', '黑色', '口袋纸巾', '黑标', '49');
INSERT INTO `total_class_2` VALUES ('49', '5601028020657', '淡紫', '口袋纸巾', '红标', '19');
INSERT INTO `total_class_2` VALUES ('50', '5601028020602', '桃红', '口袋纸巾', '红标', '19');
INSERT INTO `total_class_2` VALUES ('51', '5601028020626', '蓝色', '口袋纸巾', '红标', '19');
INSERT INTO `total_class_2` VALUES ('52', '5601028020640', '红色', '口袋纸巾', '红标', '19');
INSERT INTO `total_class_2` VALUES ('53', '5601028020596', '绿色', '口袋纸巾', '红标', '19');
INSERT INTO `total_class_2` VALUES ('54', '5601028020619', '橘色', '口袋纸巾', '红标', '19');
INSERT INTO `total_class_2` VALUES ('55', '5601028020633', '黄色', '口袋纸巾', '红标', '19');
INSERT INTO `total_class_2` VALUES ('56', '5601028003551', '白色', '口袋纸巾', '敏感系列', '24');
INSERT INTO `total_class_2` VALUES ('57', '5601028000901', '白色', '口袋纸巾', '敏感系列', '24');
INSERT INTO `total_class_2` VALUES ('58', '5601028023122', '混色', '口袋纸巾', '红标', '89');
INSERT INTO `total_class_2` VALUES ('59', '5601028025058', '红色', '卷纸', '红标', '99');
INSERT INTO `total_class_2` VALUES ('60', '5601028027908', '橘色', '卷纸', '红标', '99');
INSERT INTO `total_class_2` VALUES ('61', '5601028027915', '黄色', '卷纸', '红标', '99');
INSERT INTO `total_class_2` VALUES ('62', '5601028024983', '绿色', '卷纸', '红标', '99');
INSERT INTO `total_class_2` VALUES ('63', '5601028024976', '蓝色', '卷纸', '红标', '99');
INSERT INTO `total_class_2` VALUES ('64', '5601028025041', '玫红', '卷纸', '红标', '99');
INSERT INTO `total_class_2` VALUES ('65', '5601028024990', '桃红', '卷纸', '红标', '99');
INSERT INTO `total_class_2` VALUES ('66', '5601028025003', '裸色', '卷纸', '红标', '99');
INSERT INTO `total_class_2` VALUES ('67', '5601028005401', '白色', '湿巾纸', '湿巾纸', '25');
INSERT INTO `total_class_2` VALUES ('68', '5601028001120', '白色', '湿巾纸', '湿巾纸', '25');
INSERT INTO `total_class_2` VALUES ('69', '5601028024785', '印花', '餐巾纸', '金标', '69');
INSERT INTO `total_class_2` VALUES ('70', '5601028026130', '白色', '厕纸', '呵护系列', '79');
INSERT INTO `total_class_2` VALUES ('71', '5601028025782', '白色', '厕纸', '呵护系列', '49');
INSERT INTO `total_class_2` VALUES ('72', '5601028031042', '白色', '厕纸', '呵护系列', '69');
INSERT INTO `total_class_2` VALUES ('73', '5601028029681', '白色', '厕纸', '呵护系列', '69');
INSERT INTO `total_class_2` VALUES ('74', '5601028027229', '白色', '厕纸', '皇钻系列', '99');
INSERT INTO `total_class_2` VALUES ('75', '5601028025157', '白色', '厕纸', '皇钻系列', '49');
INSERT INTO `total_class_2` VALUES ('76', '5601028013192', '白色', '厕纸', '水滴系列', '39');
INSERT INTO `total_class_2` VALUES ('77', '5601028013208', '白色', '厕纸', '水滴系列', '59');
INSERT INTO `total_class_2` VALUES ('78', '5601028026345', '白色', '面巾纸', '面巾纸', '30');
INSERT INTO `total_class_2` VALUES ('79', '5601028012775', '白色印花', '纸毛巾', '设计系列', '49');
INSERT INTO `total_class_2` VALUES ('80', '5601028019798', '白色印花', '纸毛巾', '设计系列', '49');
INSERT INTO `total_class_2` VALUES ('81', '5601028012300', '白色', '面巾纸', '面巾纸', '69');
INSERT INTO `total_class_2` VALUES ('82', '5601028012300', '白色', '面巾纸', '面巾纸', '69');
INSERT INTO `total_class_2` VALUES ('83', '5601028012300', '白色红盒', '面巾纸', '面巾纸', '69');
INSERT INTO `total_class_2` VALUES ('84', '5601028012300', '白色', '面巾纸', '面巾纸', '69');
INSERT INTO `total_class_2` VALUES ('85', '5601028012300', '白色', '面巾纸', '面巾纸', '69');
INSERT INTO `total_class_2` VALUES ('86', '5601028012300', '白色', '面巾纸', '面巾纸', '69');
INSERT INTO `total_class_2` VALUES ('87', '5601028012300', '白色', '面巾纸', '面巾纸', '69');
INSERT INTO `total_class_2` VALUES ('88', '5601028012300', '白色', '面巾纸', '面巾纸', '69');
