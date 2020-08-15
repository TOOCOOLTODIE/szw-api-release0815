/*
Navicat MySQL Data Transfer

Source Server         : szw
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : staff

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2020-07-04 21:15:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(60) DEFAULT NULL COMMENT '姓名',
  `sex` char(2) DEFAULT NULL COMMENT '性别',
  `birthday` char(10) DEFAULT NULL COMMENT '出生日期',
  `id_card` char(18) DEFAULT NULL COMMENT '身份证号',
  `is_merried` char(2) DEFAULT NULL COMMENT '婚姻状况',
  `nation` char(100) DEFAULT NULL COMMENT '民族',
  `native_place` varchar(60) DEFAULT NULL COMMENT '籍贯',
  `politial_status` varchar(60) DEFAULT NULL COMMENT '政治面貌',
  `email` varchar(100) DEFAULT NULL COMMENT '电子邮件',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES ('1', '宋泽伟', '1', '1997-11-23', '352224109876542318', '0', '汉族', '江苏苏州', '共青团员', '23450987@qq.com', '2020-07-04 19:37:46');
INSERT INTO `staff` VALUES ('2', '张三', '1', '1993-09-01', '398882349876122765', '0', '汉族', '北京通州', '党员', '323432434@qq.com', '2020-07-04 19:38:31');
INSERT INTO `staff` VALUES ('3', '李四', '1', '2020-09-09', '23999876542368', '1', '汉族', '浙江杭州', '预备党员', '2323233323@qq.com', '2020-07-04 20:52:04');
INSERT INTO `staff` VALUES ('4', '王五', '0', '2020-07-09', '23777839981204', '1', '汉族', '安徽合肥', '党员', '399939@qq.com', '2020-07-04 20:53:09');
INSERT INTO `staff` VALUES ('5', '鹿晗', '0', '1992-09-03', '32343434343434', '1', '汉族', '北京朝阳', '演员', '323232332@qq.com', '2020-07-04 20:54:07');
INSERT INTO `staff` VALUES ('6', '吴尊', '1', '1991-12-13', '23999837761234', '1', '汉族', '北京朝阳', '演员', '323233@qq.com', '2020-07-04 20:55:00');
INSERT INTO `staff` VALUES ('7', '李易峰', '1', '1990-09-18', '323434998723467182', '1', '汉族', '贵州遵义', '党员', '645435@qq.com', '2020-07-14 20:56:11');
INSERT INTO `staff` VALUES ('8', '刘德华', '1', '1990-12-12', '37888299917823', '1', '汉族', '香港九龙', '演员', '323434535@qq.com', '2020-07-04 20:56:59');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL COMMENT '登录名',
  `password` varchar(60) NOT NULL COMMENT '登录密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123');
