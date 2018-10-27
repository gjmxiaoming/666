/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-27 17:52:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `saves` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'a1.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '580', '1', '2018/10/26 20:51:58');
INSERT INTO `goods` VALUES ('2', 'a2.jpg', 'Tata/他她2018秋专柜同款黑色拼接通勤过膝靴方跟女长靴2YWGACG8', '1448', '2', '2018/10/26 20:05:49');
INSERT INTO `goods` VALUES ('3', 'a3.jpg', 'Teenmix/天美意2018秋黑色打蜡牛皮革英伦风厚底松糕鞋女单鞋CFM21CM8', '1300', '0', '2018/10/26 20:54:08');
INSERT INTO `goods` VALUES ('4', 'a4.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '779', '0', '2018/10/26 20:54:56');
INSERT INTO `goods` VALUES ('5', 'a5.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '2512', '0', '2018/10/26 20:55:53');
INSERT INTO `goods` VALUES ('6', 'a6.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '968', '0', '2018/10/26 20:56:21');
INSERT INTO `goods` VALUES ('7', 'a7.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '893', '134', '2018/10/26 20:56:59');
INSERT INTO `goods` VALUES ('8', 'a8.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '600', '75', '2018/10/26 20:57:58');
INSERT INTO `goods` VALUES ('9', 'a9.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '575', '50', '2018/10/26 20:58:47');
INSERT INTO `goods` VALUES ('10', 'a10.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '8752', '61', '2018/10/26 20:59:17');
INSERT INTO `goods` VALUES ('11', 'a11.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '499', '59', '2018/10/26 20:59:54');
INSERT INTO `goods` VALUES ('12', 'a12.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '399', '52', '2018/10/26 21:00:34');
INSERT INTO `goods` VALUES ('13', 'a13.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '1049', '37', '2018/10/26 21:01:31');
INSERT INTO `goods` VALUES ('14', 'a14.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '575', '25', '2018/10/26 21:02:04');
INSERT INTO `goods` VALUES ('15', 'a15.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '927', '31', '2018/10/26 21:02:42');
INSERT INTO `goods` VALUES ('16', 'a16.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '589', '28', '2018/10/26 21:03:19');
INSERT INTO `goods` VALUES ('17', 'a17.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '929', '27', '2018/10/26 21:04:03');
INSERT INTO `goods` VALUES ('18', 'a18.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '10853', '26', '2018/10/26 21:04:32');
INSERT INTO `goods` VALUES ('19', 'a19.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '559', '26', '2018/10/26 21:05:05');
INSERT INTO `goods` VALUES ('20', 'a20.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '259', '23', '2018/10/26 21:05:42');
INSERT INTO `goods` VALUES ('21', 'a21.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '61522', '20', '2018/10/26 21:06:33');
INSERT INTO `goods` VALUES ('22', 'a22.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '249', '15', '2018/10/26 21:07:04');
INSERT INTO `goods` VALUES ('23', 'a23.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '999', '18', '2018/10/26 21:07:37');
INSERT INTO `goods` VALUES ('24', 'a24.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '249', '13', '2018/10/26 21:08:04');
INSERT INTO `goods` VALUES ('25', 'a25.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '750', '13', '2018/10/26 21:08:46');
INSERT INTO `goods` VALUES ('26', 'a26.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '560', '16', '2018/10/26 21:09:18');
INSERT INTO `goods` VALUES ('27', 'a27.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '231', '16', '2018/10/26 21:09:49');
INSERT INTO `goods` VALUES ('28', 'a28.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '828', '16', '2018/10/26 21:10:22');
INSERT INTO `goods` VALUES ('29', 'a29.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '231', '0', '2018/10/26 21:11:03');
INSERT INTO `goods` VALUES ('30', 'a30.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '249', '12', '2018/10/26 21:11:34');
INSERT INTO `goods` VALUES ('31', 'a31.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '579', '15', '2018/10/26 21:12:00');
INSERT INTO `goods` VALUES ('32', 'a32.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '202', '15', '2018/10/26 21:12:26');
INSERT INTO `goods` VALUES ('33', 'a33.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '499', '15', '2018/10/26 21:13:06');
INSERT INTO `goods` VALUES ('34', 'a34.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '13736', '15', '2018/10/26 21:13:38');
INSERT INTO `goods` VALUES ('35', 'a35.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '559', '15', '2018/10/26 21:14:02');
INSERT INTO `goods` VALUES ('36', 'a36.jpg', 'belle/百丽2018冬季新款摔纹牛皮革前拉链女皮靴88813DZ8', '882', '11', '2018/10/26 21:14:27');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '18607979141', '123456', '2018/10/25 20:34:27');
INSERT INTO `user` VALUES ('2', '18607978945', '123456', '2018/10/25 20:34:54');
INSERT INTO `user` VALUES ('3', '18279131262', '123', '2018/10/25 21:47:47');
INSERT INTO `user` VALUES ('4', '13879132756', '111111', '2018/10/25 21:56:26');
SET FOREIGN_KEY_CHECKS=1;
