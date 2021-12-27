/*
Navicat MySQL Data Transfer

Source Server         : phpstudy
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : renova

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2021-11-22 10:40:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for assembly_11_22
-- ----------------------------
DROP TABLE IF EXISTS `assembly_11_22`;
CREATE TABLE `assembly_11_22` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `shop_name` varchar(255) NOT NULL COMMENT '商品名称',
  `assembly_code` varchar(255) DEFAULT NULL COMMENT '组合装编码',
  `commodity_code` varchar(255) DEFAULT NULL COMMENT '商品编码',
  `cost_amount` varchar(255) DEFAULT NULL COMMENT '成本价',
  `type` varchar(255) DEFAULT NULL COMMENT '商品类型',
  `amount` varchar(255) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=214 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of assembly_11_22
-- ----------------------------
INSERT INTO `assembly_11_22` VALUES ('1', '【3包】Renova-餐巾纸-黑标-2层-黑色', 'RZH-100002', '5601028010757', '5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('2', '【3包】Renova-餐巾纸-黑标-2层-红色', 'RZH-100003', '5601028010870', '5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('3', '【3包】Renova-餐巾纸-黑标-2层-橘色', 'RZH-100004', '5601028010887', '5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('4', '【3包】Renova-餐巾纸-黑标-2层-蓝色', 'RZH-100005', '5601028016124', '5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('5', '【3包】Renova-餐巾纸-黑标-2层-桃红', 'RZH-100006', '5601028016353', '5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('6', '【2条】Renova口袋纸巾-黑标-6包', 'RZH-100007', '5601028009829', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('7', '【6色全家福6色各1条】Renova口袋纸巾-红标-3层', 'RZH-100008', '5601028020633', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('8', '【6色全家福6色各1条】Renova口袋纸巾-红标-3层', 'RZH-100008', '5601028020596', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('9', '【6色全家福6色各1条】Renova口袋纸巾-红标-3层', 'RZH-100008', '5601028020640', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('10', '【6色全家福6色各1条】Renova口袋纸巾-红标-3层', 'RZH-100008', '5601028020626', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('11', '【6色全家福6色各1条】Renova口袋纸巾-红标-3层', 'RZH-100008', '5601028020602', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('12', '【6色全家福6色各1条】Renova口袋纸巾-红标-3层', 'RZH-100008', '5601028020657', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('13', '【4条】Renova口袋纸巾-敏感系列-4层-6包-薄荷醇香-白色', 'RZH-100009', '5601028000901', '3.5', '主品', '4');
INSERT INTO `assembly_11_22` VALUES ('14', '【4条】Renova口袋纸巾-敏感系列-4层-6包-薰衣草香-白色', 'RZH-100010', '5601028003551', '3.5', '主品', '4');
INSERT INTO `assembly_11_22` VALUES ('15', '【2包】Renova面巾纸-红标-3层-红色', 'RZH-100011', '5601028020985', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('16', '【2包】Renova面巾纸-红标-3层-绿色桃红', 'RZH-100013', '5601028021098', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('17', '【2包】Renova面巾纸-红标-3层-蓝色', 'RZH-100012', '5601028020947', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('18', '【2包】Renova面巾纸-红标-3层-桃红', 'RZH-100014', '5601028020954', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('19', '【3包】Renova-餐巾纸-黑标-2层-绿色', 'RZH-100015', '5601028010894', '5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('20', '【2包】Renova面巾纸-红标-3层-绿色', 'RZH-100016', '5601028020961', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('21', '【2包】Renova面巾纸-红标-3层-橘色', 'RZH-100017', '5601028020978', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('22', '【2包】Renova面巾纸-红标-3层-黄色', 'RZH-100018', '5601028020992', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('23', '敏感口袋纸巾*2 共4件', 'RZH-100024', '5601028000901', '3.5', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('24', '敏感口袋纸巾*2 共4件', 'RZH-100024', '5601028003551', '3.5', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('25', '【2包】Renova纸毛巾-红标-2层-1卷-蓝色', 'RZH-100025', '5601028020862', '10', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('26', '【2包】Renova纸毛巾-红标-2层-1卷-桃红', 'RZH-100026', '5601028020879', '10', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('27', '【2包】Renova纸毛巾-红标-2层-1卷-黄色', 'RZH-100027', '5601028020916', '10', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('28', '【2包】Renova纸毛巾-红标-2层-1卷-橘色', 'RZH-100028', '5601028020893', '10', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('29', '【2包】Renova纸毛巾-红标-2层-1卷-绿色', 'RZH-100029', '5601028020886', '10', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('30', '【2包】Renova纸毛巾-红标-2层-1卷-红色', 'RZH-100030', '5601028020909', '10', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('31', '【2包】Renova纸毛巾-红标-2层-1卷-白色', 'RZH-100031', '5601028021258', '6', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('32', '【2包】Renova纸毛巾-红标-2层-1卷-黑色', 'RZH-100032', '5601028023597', '18', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('33', '【3盒】Renova面巾纸-红标-3层-绿色', 'RZH-100033', '5601028020961', '7', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('34', '【3盒】Renova面巾纸-红标-3层-绿色桃红', 'RZH-100034', '5601028021098', '7', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('35', '【3盒】Renova面巾纸-红标-3层-橘色', 'RZH-100035', '5601028020978', '7', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('36', '【3盒】Renova面巾纸-红标-3层-黄色', 'RZH-100036', '5601028020992', '7', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('37', '【3盒】Renova面巾纸-红标-3层-红色', 'RZH-100037', '5601028020985', '7', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('38', '【3盒】Renova面巾纸-红标-3层-桃红', 'RZH-100038', '5601028020954', '7', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('39', '【3盒】Renova面巾纸-红标-3层-蓝色', 'RZH-100039', '5601028020947', '7', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('40', '【2包】Renova口袋纸巾-黑标-4层-6包-黑色', 'RZH-100040', '5601028009829', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('41', '【3包】Renova口袋纸巾-红标-薰衣草香-3层-6包-淡紫', 'RZH-100041', '5601028020657', '4.5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('42', '【3包】Renova口袋纸巾-红标-薰衣草香-3层-6包-桃红', 'RZH-100042', '5601028020602', '4.5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('43', '【3包】Renova口袋纸巾-红标-薰衣草香-3层-6包-蓝色', 'RZH-100043', '5601028020626', '4.5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('44', '【3包】Renova口袋纸巾-红标-薰衣草香-3层-6包-红色', 'RZH-100044', '5601028020640', '4.5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('45', '【3包】Renova口袋纸巾-红标-薰衣草香-3层-6包-绿色', 'RZH-100045', '5601028020596', '4.5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('46', '【3包】Renova口袋纸巾-红标-薰衣草香-3层-6包-橘色', 'RZH-100046', '5601028020619', '4.5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('47', '【3包】Renova口袋纸巾-红标-薰衣草香-3层-6包-黄色', 'RZH-100047', '5601028020633', '4.5', '主品', '3');
INSERT INTO `assembly_11_22` VALUES ('48', '【2盒】Renova卷纸-黑标-彩色-3层-1卷盒装', 'RZH-100048', '5601028025324', '16', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('49', '【2盒】Renova面巾纸-红标-3层-绿色', 'RZH-100049', '5601028020961', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('50', '【2盒】Renova面巾纸-红标-3层-绿色桃红', 'RZH-100050', '5601028021098', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('51', '【2盒】Renova面巾纸-红标-3层-橘色', 'RZH-100051', '5601028020978', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('52', '【2盒】Renova面巾纸-红标-3层-红色', 'RZH-100053', '5601028020985', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('53', '【2盒】Renova面巾纸-红标-3层-黄色', 'RZH-100052', '5601028020992', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('54', '【2盒】Renova面巾纸-红标-3层-桃红', 'RZH-100054', '5601028020954', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('55', '【2盒】Renova面巾纸-红标-3层-蓝色', 'RZH-100055', '5601028020947', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('56', '【6盒】Renova面巾纸-红标-3层-6种组合', 'RZH-100056', '5601028020947', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('57', '【6盒】Renova面巾纸-红标-3层-6种组合', 'RZH-100056', '5601028020954', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('58', '【6盒】Renova面巾纸-红标-3层-6种组合', 'RZH-100056', '5601028020985', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('59', '【6盒】Renova面巾纸-红标-3层-6种组合', 'RZH-100056', '5601028020978', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('60', '【6盒】Renova面巾纸-红标-3层-6种组合', 'RZH-100056', '5601028020992', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('61', '【6盒】Renova面巾纸-红标-3层-6种组合', 'RZH-100056', '5601028020961', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('62', '【6包】Renova口袋纸巾-红标-3层-6种组合', 'RZH-100057', '5601028020619', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('63', '【6包】Renova口袋纸巾-红标-3层-6种组合', 'RZH-100057', '5601028020596', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('64', '【6包】Renova口袋纸巾-红标-3层-6种组合', 'RZH-100057', '5601028020640', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('65', '【6包】Renova口袋纸巾-红标-3层-6种组合', 'RZH-100057', '5601028020626', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('66', '【6包】Renova口袋纸巾-红标-3层-6种组合', 'RZH-100057', '5601028020602', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('67', '【6包】Renova口袋纸巾-红标-3层-6种组合', 'RZH-100057', '5601028020657', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('68', '【黑市组合2件】Renova口袋纸巾-黑标-黑色-Renova-卷纸-黑标-黑色', 'RZH-100058', '5601028009829', '8', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('69', '【黑市组合2件】Renova口袋纸巾-黑标-黑色-Renova-卷纸-黑标-黑色', 'RZH-100058', '5601028009218', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('70', '【2盒】Renova餐巾纸-金标-2层-黑色', 'RZH-100060', '5601028024839', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('71', '【4件】2Renova口袋纸巾-敏感系列-薰衣草香-白色-4层-6包2Renova口袋纸巾-敏感系列-薄荷醇香-白色-4层-6包', 'RZH-100059', '5601028000901', '3.5', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('72', '【4件】2Renova口袋纸巾-敏感系列-薰衣草香-白色-4层-6包2Renova口袋纸巾-敏感系列-薄荷醇香-白色-4层-6包', 'RZH-100059', '5601028003551', '3.5', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('73', '【2盒】Renova餐巾纸-金标-2层-红色', 'RZH-100061', '5601028019088', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('74', '【2盒】Renova餐巾纸-金标-2层-淡蓝', 'RZH-100062', '5601028028332', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('75', '【2盒】Renova餐巾纸-金标-2层-绿色', 'RZH-100063', '5601028028363', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('76', '【2盒】Renova餐巾纸-金标-2层-橘色', 'RZH-100064', '5601028028349', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('77', '【2条】Renova口袋纸巾-黑标-4层-6包', 'RZH-100065', '5601028009829', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('78', '【2条】Renova口袋纸巾-敏感系列-薰衣草香/薄荷香 白色-4层-6包', 'RZH-100067', '5601028000901', '3.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('79', '【2条】Renova口袋纸巾-敏感系列-薰衣草香/薄荷香 白色-4层-6包', 'RZH-100067', '5601028003551', '3.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('80', '【7条】Renova口袋纸巾-7色组合', 'RZH-100068', '5601028020633', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('81', '【7条】Renova口袋纸巾-7色组合', 'RZH-100068', '5601028020619', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('82', '【7条】Renova口袋纸巾-7色组合', 'RZH-100068', '5601028020596', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('83', '【7条】Renova口袋纸巾-7色组合', 'RZH-100068', '5601028020640', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('84', '【7条】Renova口袋纸巾-7色组合', 'RZH-100068', '5601028020626', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('85', '【7条】Renova口袋纸巾-7色组合', 'RZH-100068', '5601028020602', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('86', '【7条】Renova口袋纸巾-7色组合', 'RZH-100068', '5601028020657', '4.5', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('87', 'Renova卷纸-黑标-黑色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100069', '5601028020619', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('88', 'Renova卷纸-黑标-黑色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100069', '5601028009218', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('89', 'Renova卷纸-黑标-红色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100070', '5601028020619', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('90', 'Renova卷纸-黑标-红色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100070', '5601028010108', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('91', 'Renova卷纸-黑标-橘色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100071', '5601028020619', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('92', 'Renova卷纸-黑标-橘色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100071', '5601028010481', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('93', 'Renova卷纸-黑标-黄色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100072', '5601028020619', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('94', 'Renova卷纸-黑标-黄色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100072', '5601028013475', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('95', 'Renova卷纸-黑标-绿色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100073', '5601028020619', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('96', 'Renova卷纸-黑标-绿色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100073', '5601028010900', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('97', 'Renova卷纸-黑标-蓝色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100074', '5601028020619', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('98', 'Renova卷纸-黑标-蓝色-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100074', '5601028011969', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('99', 'Renova卷纸-黑标-桃红-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100075', '5601028020619', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('100', 'Renova卷纸-黑标-桃红-3层-6卷加赠口袋纸巾香橙味一条', 'RZH-100075', '5601028011952', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('101', '【4件】Renova面巾纸-红标-绿色-3层', 'RZH-100076', '5601028020961', '7', '主品', '4');
INSERT INTO `assembly_11_22` VALUES ('102', '【4件】Renova面巾纸-红标-绿色桃红-3层', 'RZH-100077', '5601028021098', '7', '主品', '4');
INSERT INTO `assembly_11_22` VALUES ('103', '【4件】Renova面巾纸-红标-橘色-3层', 'RZH-100078', '5601028020978', '7', '主品', '4');
INSERT INTO `assembly_11_22` VALUES ('104', '【4件】Renova面巾纸-红标-黄色-3层', 'RZH-100079', '5601028020992', '7', '主品', '4');
INSERT INTO `assembly_11_22` VALUES ('105', '【4件】Renova面巾纸-红标-红色-3层', 'RZH-100080', '5601028020985', '7', '主品', '4');
INSERT INTO `assembly_11_22` VALUES ('106', '【4件】Renova面巾纸-红标-桃红-3层', 'RZH-100081', '5601028020954', '7', '主品', '4');
INSERT INTO `assembly_11_22` VALUES ('107', '【4件】Renova面巾纸-红标-蓝色-3层', 'RZH-100082', '5601028020947', '7', '主品', '4');
INSERT INTO `assembly_11_22` VALUES ('108', '【6件】Renova面巾纸六色组合', 'RZH-100083', '5601028020947', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('109', '【6件】Renova面巾纸六色组合', 'RZH-100083', '5601028020954', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('110', '【6件】Renova面巾纸六色组合', 'RZH-100083', '5601028020985', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('111', '【6件】Renova面巾纸六色组合', 'RZH-100083', '5601028020978', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('112', '【6件】Renova面巾纸六色组合', 'RZH-100083', '5601028020992', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('113', '【6件】Renova面巾纸六色组合', 'RZH-100083', '5601028020961', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('114', '【2盒】Renova餐巾纸-金标-黄色-2层', 'RZH-100084', '5601028007115', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('115', '【2盒】Renova餐巾纸-金标-深蓝-2层', 'RZH-100085', '5601028007733', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('116', '【2盒】Renova餐巾纸-金标-白色-2层', 'RZH-100086', '5601028007085', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('117', '【2盒】Renova餐巾纸-金标-枣红-2层', 'RZH-100087', '5601028007108', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('118', '【2盒】Renova餐巾纸-金标-桃红-2层', 'RZH-100088', '5601028028356', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('119', 'Renova卷纸-黑标-桃红-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100090', '5601028020640', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('120', 'Renova卷纸-黑标-桃红-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100090', '5601028011952', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('121', 'Renova卷纸-黑标-蓝色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100091', '5601028020640', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('122', 'Renova卷纸-黑标-蓝色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100091', '5601028011969', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('123', 'Renova卷纸-黑标-绿色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100092', '5601028020640', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('124', 'Renova卷纸-黑标-绿色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100092', '5601028010900', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('125', 'Renova卷纸-黑标-黄色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100093', '5601028020640', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('126', 'Renova卷纸-黑标-黄色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100093', '5601028013475', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('127', 'Renova卷纸-黑标-橘色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100094', '5601028020640', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('128', 'Renova卷纸-黑标-橘色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100094', '5601028010481', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('129', 'Renova卷纸-黑标-红色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100095', '5601028020640', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('130', 'Renova卷纸-黑标-红色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100095', '5601028010108', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('131', 'Renova卷纸-黑标-黑色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100096', '5601028020640', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('132', 'Renova卷纸-黑标-黑色-3层-6卷加赠口袋纸巾草莓味一条', 'RZH-100096', '5601028009218', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('133', '【2包】Renova餐巾纸-金标-橘色-2层', 'RZH-100066', '5601028028349', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('134', '【5件】Renova面巾纸五色组合', 'RZH-100097', '5601028020947', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('135', '【5件】Renova面巾纸五色组合', 'RZH-100097', '5601028020954', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('136', '【5件】Renova面巾纸五色组合', 'RZH-100097', '5601028020985', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('137', '【5件】Renova面巾纸五色组合', 'RZH-100097', '5601028020978', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('138', '【5件】Renova面巾纸五色组合', 'RZH-100097', '5601028020961', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('139', '【2条】Renova口袋纸巾-敏感系列-薄荷香 白色-4层-6包', 'RZH-100098', '5601028000901', '3.5', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('140', '【4件】Renova面巾纸四色组合', 'RZH-100099', '5601028020954', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('141', '【4件】Renova面巾纸四色组合', 'RZH-100099', '5601028020985', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('142', '【4件】Renova面巾纸四色组合', 'RZH-100099', '5601028020947', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('143', '【4件】Renova面巾纸四色组合', 'RZH-100099', '5601028020961', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('144', '【2件】Renova卷纸-红标-桃红-3层-6卷加赠口袋纸巾桃红一条', 'RZH-100100', '5601028020602', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('145', '【2件】Renova卷纸-红标-桃红-3层-6卷加赠口袋纸巾桃红一条', 'RZH-100100', '5601028024990', '19', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('146', '【2件】Renova卷纸-红标-桃红-3层-6卷', 'RZH-100101', '5601028024990', '19', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('147', '【2件】Renova湿纸巾-柠檬味', 'RZH-100102', '5601028005401', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('148', '【2件】Renova湿纸巾-薰衣草味', 'RZH-100103', '5601028001120', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('149', '【2件】Renova湿纸巾-柠檬味加薰衣草味', 'RZH-100104', '5601028001120', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('150', '【2件】Renova湿纸巾-柠檬味加薰衣草味', 'RZH-100104', '5601028005401', '7', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('151', 'Renova卷纸-黑标-桃红-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100105', '5601028020596', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('152', 'Renova卷纸-黑标-桃红-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100105', '5601028011952', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('153', 'Renova卷纸-黑标-蓝色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100106', '5601028020596', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('154', 'Renova卷纸-黑标-蓝色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100106', '5601028011969', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('155', 'Renova卷纸-黑标-绿色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100107', '5601028020596', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('156', 'Renova卷纸-黑标-绿色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100107', '5601028010900', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('157', 'Renova卷纸-黑标-黄色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100108', '5601028020596', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('158', 'Renova卷纸-黑标-黄色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100108', '5601028013475', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('159', 'Renova卷纸-黑标-橘色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100109', '5601028010481', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('160', 'Renova卷纸-黑标-橘色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100109', '5601028020596', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('161', 'Renova卷纸-黑标-红色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100110', '5601028020596', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('162', 'Renova卷纸-黑标-红色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100110', '5601028010108', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('163', 'Renova卷纸-黑标-黑色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100111', '5601028020596', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('164', 'Renova卷纸-黑标-黑色-3层-6卷加赠口袋纸巾绿色一条', 'RZH-100111', '5601028009218', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('165', 'Renova卷纸六卷盒装送绿色餐巾纸、手帕纸混合装、桃红绿色面巾纸、樱花粉卷纸', 'RZH-100112', '5601028028363', '8', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('166', 'Renova卷纸六卷盒装送绿色餐巾纸、手帕纸混合装、桃红绿色面巾纸、樱花粉卷纸', 'RZH-100112', '5601028024990', '19', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('167', 'Renova卷纸六卷盒装送绿色餐巾纸、手帕纸混合装、桃红绿色面巾纸、樱花粉卷纸', 'RZH-100112', '5601028021098', '7', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('168', 'Renova卷纸六卷盒装送绿色餐巾纸、手帕纸混合装、桃红绿色面巾纸、樱花粉卷纸', 'RZH-100112', '5601028023122', '22', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('169', 'Renova卷纸六卷盒装送绿色餐巾纸、手帕纸混合装、桃红绿色面巾纸、樱花粉卷纸', 'RZH-100112', '5601028025331', '37', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('170', '王炸组合 6色卷纸 黑手帕 餐巾金标 18包口袋纸 纸毛巾桃红', 'RZH-100113', '5601028020879', '10', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('171', '王炸组合 6色卷纸 黑手帕 餐巾金标 18包口袋纸 纸毛巾桃红', 'RZH-100113', '5601028023122', '22', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('172', '王炸组合 6色卷纸 黑手帕 餐巾金标 18包口袋纸 纸毛巾桃红', 'RZH-100113', '5601028028363', '8', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('173', '王炸组合 6色卷纸 黑手帕 餐巾金标 18包口袋纸 纸毛巾桃红', 'RZH-100113', '5601028025331', '37', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('174', '王炸组合 6色卷纸 黑手帕 餐巾金标 18包口袋纸 纸毛巾桃红', 'RZH-100113', '5601028009829', '8', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('175', '【2盒】Renova面巾纸-盒装—印花', 'RZH-100114', '5601028026345', '8', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('176', '【2包】Renova餐巾纸-金标-白色-印花-2层', 'RZH-100115', '5601028024785', '12', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('177', 'Renova纸毛巾-设计系列-印花-4卷-2层+renova餐巾纸-金标-桃红-2层', 'RZH-100127', '5601028028356', '8', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('178', 'Renova纸毛巾-设计系列-印花-4卷-2层+renova餐巾纸-金标-桃红-2层', 'RZH-100127', '5601028012775', '8', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('179', 'renova卷纸-黑标-3层-6卷盒装+renova口袋纸巾-红标-蓝色-3层-6包+renova餐巾纸-金标-黑色-2层', 'RZH-100126', '5601028025331', '37', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('180', 'renova卷纸-黑标-3层-6卷盒装+renova口袋纸巾-红标-蓝色-3层-6包+renova餐巾纸-金标-黑色-2层', 'RZH-100126', '5601028024839', '8', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('181', 'renova卷纸-黑标-3层-6卷盒装+renova口袋纸巾-红标-蓝色-3层-6包+renova餐巾纸-金标-黑色-2层', 'RZH-100126', '5601028020626', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('182', 'Renova口袋纸巾-红标-混色-18包展示盒+Renova口袋纸巾-红标-芒果香-黄色-3层-6包', 'RZH-100125', '5601028020633', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('183', 'Renova口袋纸巾-红标-混色-18包展示盒+Renova口袋纸巾-红标-芒果香-黄色-3层-6包', 'RZH-100125', '5601028023122', '22', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('184', 'renova卷纸-黑标-橘色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100124', '5601028010894', '5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('185', 'renova卷纸-黑标-橘色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100124', '5601028020626', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('186', 'renova卷纸-黑标-橘色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100124', '5601028010481', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('187', 'renova卷纸-黑标-红色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100123', '5601028010894', '5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('188', 'renova卷纸-黑标-红色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100123', '5601028020626', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('189', 'renova卷纸-黑标-红色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100123', '5601028010108', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('190', 'renova卷纸-黑标-黑色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100122', '5601028010894', '5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('191', 'renova卷纸-黑标-黑色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100122', '5601028020626', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('192', 'renova卷纸-黑标-黑色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100122', '5601028009218', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('193', 'renova卷纸-黑标-桃红色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100121', '5601028011952', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('194', 'renova卷纸-黑标-桃红色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100121', '5601028010894', '5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('195', 'renova卷纸-黑标-桃红色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100121', '5601028020626', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('196', 'renova卷纸-黑标-蓝色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100120', '5601028011969', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('197', 'renova卷纸-黑标-蓝色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100120', '5601028028363', '8', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('198', 'renova卷纸-黑标-蓝色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100120', '5601028020626', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('199', 'renova卷纸-黑标-绿色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100119', '5601028010900', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('200', 'renova卷纸-黑标-绿色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100119', '5601028010894', '5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('201', 'renova卷纸-黑标-绿色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100119', '5601028020626', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('202', 'renova卷纸-黑标-黄色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100118', '5601028013475', '20', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('203', 'renova卷纸-黑标-黄色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100118', '5601028010894', '5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('204', 'renova卷纸-黑标-黄色-3层-6卷+renova餐巾纸小号-黑标-绿色-2层+renova口袋纸巾-红标-蓝色+3层-6包', 'RZH-100118', '5601028020626', '4.5', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('205', 'renova卷纸-黑标-3层-6卷盒装+Renova面巾纸-筒装-橙色-3层', 'RZH-100117', '5601028025331', '37', '主品', '1');
INSERT INTO `assembly_11_22` VALUES ('206', 'renova卷纸-黑标-3层-6卷盒装+Renova面巾纸-筒装-橙色-3层', 'RZH-100117', '5601028012300huang', '13.17', '赠品', '1');
INSERT INTO `assembly_11_22` VALUES ('207', '【2条】Renova口袋纸巾-敏感系列-薰衣草香-白色-4层-6包', 'RZH-100116', '5601028003551', '3.5', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('208', '喜庆组合红色3*2共6件', 'RZH-100021', '5601028020985', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('209', '喜庆组合红色3*2共6件', 'RZH-100021', '5601028020640', '4.5', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('210', '喜庆组合红色3*2共6件', 'RZH-100021', '5601028010108', '20', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('211', '喜庆组合橘色3*2共6件', 'RZH-100022', '5601028020978', '7', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('212', '喜庆组合橘色3*2共6件', 'RZH-100022', '5601028020619', '4.5', '主品', '2');
INSERT INTO `assembly_11_22` VALUES ('213', '喜庆组合橘色3*2共6件', 'RZH-100022', '5601028010481', '20', '主品', '2');
