/*
Navicat MySQL Data Transfer

Source Server         : phpstudy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : renova

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-11-22 10:40:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `shop_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `commodity_code` varchar(255) DEFAULT NULL COMMENT '商品编码',
  `cost_amount` varchar(255) DEFAULT NULL COMMENT '成本价',
  `type` varchar(255) DEFAULT NULL COMMENT '商品类型',
  `color` varchar(255) DEFAULT NULL COMMENT '颜色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1', 'Renova卷纸-黑标-黑色-3层-6卷', '5601028009218', '20', '卷纸', '黑色');
INSERT INTO `item` VALUES ('2', 'Renova卷纸-黑标-红色-3层-6卷', '5601028010108', '20', '卷纸', '红色');
INSERT INTO `item` VALUES ('3', 'Renova卷纸-黑标-橘色-3层-6卷', '5601028010481', '20', '卷纸', '橘色');
INSERT INTO `item` VALUES ('4', 'Renova卷纸-黑标-黄色-3层-6卷', '5601028013475', '20', '卷纸', '黄色');
INSERT INTO `item` VALUES ('5', 'Renova卷纸-黑标-绿色-3层-6卷', '5601028010900', '20', '卷纸', '绿色');
INSERT INTO `item` VALUES ('6', 'Renova卷纸-黑标-蓝色-3层-6卷', '5601028011969', '20', '卷纸', '蓝色');
INSERT INTO `item` VALUES ('7', 'Renova卷纸-黑标-桃红-3层-6卷', '5601028011952', '20', '卷纸', '桃红');
INSERT INTO `item` VALUES ('8', 'Renova卷纸-黑标-黑色-3层-3卷筒装', '5601028010245', '28', '卷纸', '黑色');
INSERT INTO `item` VALUES ('9', 'Renova卷纸-黑标-桃红-3层-3卷筒装', '5601028011976', '28', '卷纸', '桃红');
INSERT INTO `item` VALUES ('10', 'Renova卷纸-黑标-红色-3层-3卷筒装', '5601028010573', '28', '卷纸', '红色');
INSERT INTO `item` VALUES ('11', 'Renova卷纸-黑标-橘色-3层-3卷筒装', '5601028010580', '28', '卷纸', '橘色');
INSERT INTO `item` VALUES ('12', 'Renova卷纸-黑标-黄色-3层-3卷筒装', '5601028013604', '28', '卷纸', '黄色');
INSERT INTO `item` VALUES ('13', 'Renova卷纸-黑标纸-绿色-3层-3卷筒装', '5601028010634', '28', '卷纸', '绿色');
INSERT INTO `item` VALUES ('14', 'Renova卷纸-黑标-蓝色-3层-3卷筒装', '5601028011983', '28', '卷纸', '蓝色');
INSERT INTO `item` VALUES ('15', 'Renova卷纸-黑标-彩色-3层-6卷盒装', '5601028025331', '37', '卷纸', '全 彩色');
INSERT INTO `item` VALUES ('16', 'Renova卷纸-黑标-彩色-3层-1卷盒装', '5601028025324', '16', '卷纸', '全 彩色');
INSERT INTO `item` VALUES ('17', 'Renova纸毛巾-红标-蓝色-2层-1卷', '5601028020862', '10', '厨房用纸', '蓝色');
INSERT INTO `item` VALUES ('18', 'Renova纸毛巾-红标-桃红-2层-1卷', '5601028020879', '10', '厨房用纸', '桃红');
INSERT INTO `item` VALUES ('19', 'Renova纸毛巾-红标-黄色-2层-1卷', '5601028020916', '10', '厨房用纸', '黄色');
INSERT INTO `item` VALUES ('20', 'Renova纸毛巾-红标-橘色-2层-1卷', '5601028020893', '10', '厨房用纸', '橘色');
INSERT INTO `item` VALUES ('21', 'Renova纸毛巾-红标-绿色-2层-1卷', '5601028020886', '10', '厨房用纸', '绿色');
INSERT INTO `item` VALUES ('22', 'Renova纸毛巾-红标-红色-2层-1卷', '5601028020909', '10', '厨房用纸', '红色');
INSERT INTO `item` VALUES ('23', 'Renova纸毛巾-红标-白色-2层-1卷', '5601028021258', '6', '厨房用纸', '白色');
INSERT INTO `item` VALUES ('24', 'Renova纸毛巾-黑标-黑色-2层-1卷', '5601028023597', '18', '厨房用纸', '黑色');
INSERT INTO `item` VALUES ('25', 'Renova餐巾纸-金标-黑色-2层', '5601028024839', '8', '餐巾纸', '黑色');
INSERT INTO `item` VALUES ('26', 'Renova餐巾纸-金标-黄色-2层', '5601028007115', '8', '餐巾纸', '黄色');
INSERT INTO `item` VALUES ('27', 'Renova餐巾纸-金标-红色-2层', '5601028019088', '8', '餐巾纸', '红色');
INSERT INTO `item` VALUES ('28', 'Renova餐巾纸-金标-白色-2层', '5601028007085', '8', '餐巾纸', '白色');
INSERT INTO `item` VALUES ('29', 'Renova餐巾纸-金标-深蓝-2层', '5601028007733', '8', '餐巾纸', '深蓝');
INSERT INTO `item` VALUES ('30', 'Renova餐巾纸-金标-枣红-2层', '5601028007108', '8', '餐巾纸', '枣红');
INSERT INTO `item` VALUES ('31', 'Renova餐巾纸-金标-淡蓝-2层', '5601028028332', '8', '餐巾纸', '浅蓝');
INSERT INTO `item` VALUES ('32', 'Renova餐巾纸-金标-绿色-2层', '5601028028363', '8', '餐巾纸', '绿色');
INSERT INTO `item` VALUES ('33', 'Renova餐巾纸-金标-橘色-2层', '5601028028349', '8', '餐巾纸', '橘色');
INSERT INTO `item` VALUES ('34', 'Renova餐巾纸-金标-桃红-2层', '5601028028356', '8', '餐巾纸', '桃红');
INSERT INTO `item` VALUES ('35', 'Renova餐巾纸-黑标-红色-2层', '5601028010870', '5', '餐巾纸', '红色');
INSERT INTO `item` VALUES ('36', 'Renova餐巾纸-黑标-橘色-2层', '5601028010887', '5', '餐巾纸', '橘色');
INSERT INTO `item` VALUES ('37', 'Renova餐巾纸-黑标-绿色-2层', '5601028010894', '5', '餐巾纸', '绿色');
INSERT INTO `item` VALUES ('38', 'Renova餐巾纸-黑标-蓝色-2层', '5601028016124', '5', '餐巾纸', '蓝色');
INSERT INTO `item` VALUES ('39', 'Renova餐巾纸-黑标-桃红-2层', '5601028016353', '5', '餐巾纸', '桃红');
INSERT INTO `item` VALUES ('40', 'Renova餐巾纸-黑标-黑色-2层', '5601028010757', '5', '餐巾纸', '黑色');
INSERT INTO `item` VALUES ('41', 'Renova面巾纸-红标-绿色-3层', '5601028020961', '7', '抽纸', '绿色1层+白色2层');
INSERT INTO `item` VALUES ('42', 'Renova面巾纸-红标-绿色桃红-3层', '5601028021098', '7', '抽纸', '绿色1层+ 桃红1层+白色1层');
INSERT INTO `item` VALUES ('43', 'Renova面巾纸-红标-黄色-3层', '5601028020992', '7', '抽纸', '橘色1层+白色2层');
INSERT INTO `item` VALUES ('44', 'Renova面巾纸-红标-橘色-3层', '5601028020978', '7', '抽纸', '黄色1层+白色2层');
INSERT INTO `item` VALUES ('45', 'Renova面巾纸-红标-红色-3层', '5601028020985', '7', '抽纸', '红色1层+白色2层');
INSERT INTO `item` VALUES ('46', 'Renova面巾纸-红标-桃红-3层', '5601028020954', '7', '抽纸', '桃红1层+白色2层');
INSERT INTO `item` VALUES ('47', 'Renova面巾纸-红标-蓝色-3层', '5601028020947', '7', '抽纸', '蓝色1层+白色2层');
INSERT INTO `item` VALUES ('48', 'Renova口袋纸巾-黑标-黑色-4层-6包', '5601028009829', '8', '口袋纸巾', '黑色');
INSERT INTO `item` VALUES ('49', 'Renova口袋纸巾-红标-薰衣草香-淡紫-3层-6包', '5601028020657', '4.5', '口袋纸巾', '淡紫1层+白色2层');
INSERT INTO `item` VALUES ('50', 'Renova口袋纸巾-红标-玫瑰香-桃红-3层-6包', '5601028020602', '4.5', '口袋纸巾', '桃红1层+白色2层');
INSERT INTO `item` VALUES ('51', 'Renova口袋纸巾-红标-蓝莓香-蓝色-3层-6包', '5601028020626', '4.5', '口袋纸巾', '蓝色1层+白色2层');
INSERT INTO `item` VALUES ('52', 'Renova口袋纸巾-红标-草莓香-红色-3层-6包', '5601028020640', '4.5', '口袋纸巾', '红色1层+白色2层');
INSERT INTO `item` VALUES ('53', 'Renova口袋纸巾-红标-薄荷香-绿色-3层-6包', '5601028020596', '4.5', '口袋纸巾', '绿色1层+白色2层');
INSERT INTO `item` VALUES ('54', 'Renova口袋纸巾-红标-香槟香-橙色-3层-6包', '5601028020619', '4.5', '口袋纸巾', '橘色1层+白色2层');
INSERT INTO `item` VALUES ('55', 'Renova口袋纸巾-红标-芒果香-黄色-3层-6包', '5601028020633', '4.5', '口袋纸巾', '黄色1层+白色2层');
INSERT INTO `item` VALUES ('56', 'Renova口袋纸巾-敏感系列-薰衣草香-白色-4层-6包', '5601028003551', '3.5', '口袋纸巾', '白色');
INSERT INTO `item` VALUES ('57', 'Renova口袋纸巾-敏感系列-薄荷醇香-白色-4层-6包', '5601028000901', '3.5', '口袋纸巾', '白色');
INSERT INTO `item` VALUES ('58', 'Renova口袋纸巾-红标-混色-18包展示盒', '5601028023122', '22', '口袋纸巾', '绿色 + 桃红 + 紫色\n橘色 + 红色 + 3蓝色');
INSERT INTO `item` VALUES ('59', 'Renova卷纸-红标-红色-3层-6卷', '5601028025058', '19', '卷纸', '红色2层+白色1层');
INSERT INTO `item` VALUES ('60', 'Renova卷纸-红标-橘色-3层-6卷', '5601028027908', '19', '卷纸', '橘色2层+白色1层');
INSERT INTO `item` VALUES ('61', 'Renova卷纸-红标-黄色-3层-6卷', '5601028027915', '19', '卷纸', '黄色2层+白色1层');
INSERT INTO `item` VALUES ('62', 'Renova卷纸-红标-绿色-3层-6卷', '5601028024983', '19', '卷纸', '绿色2层+白色1层');
INSERT INTO `item` VALUES ('63', 'Renova卷纸-红标-蓝色-3层-6卷', '5601028024976', '19', '卷纸', '蓝色2层+白色1层');
INSERT INTO `item` VALUES ('64', 'Renova卷纸-红标-玫红-3层-6卷', '5601028025041', '19', '卷纸', '玫红2层+白色1层');
INSERT INTO `item` VALUES ('65', 'Renova卷纸-红标-桃红-3层-6卷', '5601028024990', '19', '卷纸', '桃红2层+白色1层');
INSERT INTO `item` VALUES ('66', 'Renova卷纸-红标-裸色-3层-6卷', '5601028025003', '19', '卷纸', '裸色2层+白色1层');
INSERT INTO `item` VALUES ('67', 'Renova湿巾纸-柠檬味', '5601028005401', '7', '湿巾纸', '白色');
INSERT INTO `item` VALUES ('68', 'Renova湿巾纸-薰衣草味', '5601028001120', '7', '湿巾纸', '白色');
INSERT INTO `item` VALUES ('69', 'Renova餐巾纸-金标-白色-2层', '5601028024785', '12', '餐巾纸', '印花');
INSERT INTO `item` VALUES ('70', 'Renova卷纸-呵护系列-白色-3层-加大-12卷', '5601028026130', '22', '厕纸', '白色');
INSERT INTO `item` VALUES ('71', 'Renova卷纸-呵护系列-白色-3层-加大-6卷', '5601028025782', '11', '厕纸', '白色');
INSERT INTO `item` VALUES ('72', 'Renova卷纸-呵护系列-白色-3层-香草-12卷', '5601028031042', '17', '厕纸', '白色');
INSERT INTO `item` VALUES ('73', 'Renova卷纸-呵护系列-白色-3层-薰衣草-12卷', '5601028029681', '17', '厕纸', '白色');
INSERT INTO `item` VALUES ('74', 'Renova卷纸-皇钻系列-白色-4层-18卷', '5601028027229', '34', '厕纸', '白色');
INSERT INTO `item` VALUES ('75', 'Renova卷纸-皇钻系列-白色-4层-6卷', '5601028025157', '11', '厕纸', '白色');
INSERT INTO `item` VALUES ('76', 'Renova卷纸-水滴系列-白色-4层-4卷', '5601028013192', '7', '厕纸', '白色');
INSERT INTO `item` VALUES ('77', 'Renova卷纸-水滴系列-白色-4层-9卷', '5601028013208', '15', '厕纸', '白色');
INSERT INTO `item` VALUES ('78', 'Renova面巾纸-盒装-印花-2层', '5601028026345', '8', '面巾纸', '白色');
INSERT INTO `item` VALUES ('79', 'Renova纸毛巾-设计系列-印花-2层-4卷', '5601028012775', '8', '纸毛巾', '白色印花');
INSERT INTO `item` VALUES ('80', 'Renova纸毛巾-设计系列-印花-2层-大尺寸-3卷', '5601028019798', '8', '纸毛巾', '白色印花');
INSERT INTO `item` VALUES ('81', 'Renova面巾纸-筒装-橙色-3层', '5601028012300cheng', '13.17', '面巾纸', '白色');
INSERT INTO `item` VALUES ('82', 'Renova面巾纸-筒装-黑色-3层', '5601028012300hei', '13.17', '面巾纸', '白色');
INSERT INTO `item` VALUES ('83', 'Renova面巾纸-筒装-红色-3层', '5601028012300hong', '13.17', '面巾纸', '白色红盒');
INSERT INTO `item` VALUES ('84', 'Renova面巾纸-筒装-黄色-3层', '5601028012300huang', '13.17', '面巾纸', '白色');
INSERT INTO `item` VALUES ('85', 'Renova面巾纸-筒装-蓝色-3层', '5601028012300lan', '13.17', '面巾纸', '白色');
INSERT INTO `item` VALUES ('86', 'Renova面巾纸-筒装-绿色-3层', '5601028012300lv', '13.17', '面巾纸', '白色');
INSERT INTO `item` VALUES ('87', 'Renova面巾纸-筒装-玫红色-3层', '5601028012300meihong', '13.17', '面巾纸', '白色');
INSERT INTO `item` VALUES ('88', 'Renova面巾纸-筒装-紫色-3层', '5601028012300zi', '13.17', '面巾纸', '白色');
