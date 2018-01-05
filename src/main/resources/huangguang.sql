/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : huangguang

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-05 16:55:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_record`
-- ----------------------------
DROP TABLE IF EXISTS `t_record`;
CREATE TABLE `t_record` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '场次编号',
  `one` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '参与者1',
  `one_record` int(11) DEFAULT '0' COMMENT '参与者1成绩',
  `two` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `two_record` int(11) DEFAULT NULL,
  `three` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `three_record` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_record
-- ----------------------------
INSERT INTO `t_record` VALUES ('376196', '黄伟', '-17', '九天', '11', '黄艳', '6', '2018-01-05 15:21:31');
INSERT INTO `t_record` VALUES ('515704', '九天', '-34', '黄艳', '-23', '费龙平', '57', '2018-01-05 15:20:08');
INSERT INTO `t_record` VALUES ('739168', '陈丽', '-39', '费龙平', '5', '黄光', '34', '2018-01-05 15:22:44');
INSERT INTO `t_record` VALUES ('823082', '九天', '-25', '黄艳', '33', '周阳', '-8', '2018-01-05 15:23:25');
INSERT INTO `t_record` VALUES ('943010', '黄艳', '10', '九天', '1', '黄光', '-11', '2018-01-05 14:58:43');
INSERT INTO `t_record` VALUES ('968847', '费龙平', '-2', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_score`
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `stu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '学号',
  `c_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '课程名',
  `grade` int(10) NOT NULL DEFAULT '0' COMMENT '分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES ('1101', '901', '计算机', '98');
INSERT INTO `t_score` VALUES ('1102', '901', '英语', '80');
INSERT INTO `t_score` VALUES ('1103', '902', '计算机', '65');
INSERT INTO `t_score` VALUES ('1104', '902', '中文', '88');
INSERT INTO `t_score` VALUES ('1105', '903', '中文', '95');
INSERT INTO `t_score` VALUES ('1106', '904', '计算机', '70');
INSERT INTO `t_score` VALUES ('1107', '904', '英语', '92');
INSERT INTO `t_score` VALUES ('1108', '905', '英语', '94');
INSERT INTO `t_score` VALUES ('1109', '906', '计算机', '90');
INSERT INTO `t_score` VALUES ('1110', '906', '英语', '85');

-- ----------------------------
-- Table structure for `t_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `birth` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '出生年份',
  `department` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '院系',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('901', '张老大', '男', '1985', '计算机系', '北京市海淀区');
INSERT INTO `t_student` VALUES ('902', '张老二', '男', '1986', '中文系', '北京市昌平区');
INSERT INTO `t_student` VALUES ('903', '张三', '女', '1990', '中文系', '湖南省永州市');
INSERT INTO `t_student` VALUES ('904', '李四', '男', '1990', '英语系', '辽宁省阜新市');
INSERT INTO `t_student` VALUES ('905', '王五', '女', '1991', '英语系', '福建省厦门市');
INSERT INTO `t_student` VALUES ('906', '王六', '男', '1988', '计算机系', '湖南省衡阳市');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL,
  `name` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `inviter_id` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '邀请人',
  `inviter_name` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL COMMENT '进群时间',
  `leave_time` datetime DEFAULT NULL COMMENT '退群时间',
  `is_use` char(2) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('2080048', '简简单单', '2251517', '黄强', '2018-01-05 14:50:00', null, '1');
INSERT INTO `t_user` VALUES ('2197356', '黄光', '2197356', '黄光', '2018-01-05 10:37:04', null, '1');
INSERT INTO `t_user` VALUES ('2250179', '张青', '2197356', '黄光', '2018-01-05 14:53:48', null, '1');
INSERT INTO `t_user` VALUES ('2250231', '张莉', '2197356', '黄光', '2018-01-05 14:53:33', null, '1');
INSERT INTO `t_user` VALUES ('2251336', '伟少宝', '2197356', '黄光', '2018-01-05 14:51:18', null, '1');
INSERT INTO `t_user` VALUES ('2251517', '黄强', '2197356', '黄光', '2018-01-05 14:48:42', null, '1');
INSERT INTO `t_user` VALUES ('2251585', '琴', '2197356', '黄光', '2018-01-05 14:49:30', null, '1');
INSERT INTO `t_user` VALUES ('2251674', '费龙平', '2251771', '平底鞋女王', '2018-01-05 14:49:12', null, '1');
INSERT INTO `t_user` VALUES ('2251771', '平底鞋女王', '2197356', '黄光', '2018-01-05 14:51:39', null, '1');
INSERT INTO `t_user` VALUES ('2253379', 'A无言', '2197356', '黄光', '2018-01-05 14:52:16', null, '1');
INSERT INTO `t_user` VALUES ('2253494', '仙女', '2197356', '黄光', '2018-01-05 14:53:11', null, '1');
INSERT INTO `t_user` VALUES ('2254910', '独啸九天', '2197356', '黄光', '2018-01-05 14:50:25', null, '1');
INSERT INTO `t_user` VALUES ('2256082', '飞飞洗头', '2253379', 'A无言', '2018-01-05 14:48:07', null, '1');
INSERT INTO `t_user` VALUES ('2264680', '黄俊', '2197356', '黄光', '2018-01-05 14:54:52', null, '1');
INSERT INTO `t_user` VALUES ('2264687', '小仙女', '2197356', '黄光', '2018-01-05 14:50:45', null, '1');
INSERT INTO `t_user` VALUES ('2272026', '徐贝', '2197356', '黄光', '2018-01-05 14:54:08', null, '1');
INSERT INTO `t_user` VALUES ('678747', '微信系统', '2197356', '黄光', '2018-01-05 14:51:02', null, '1');
INSERT INTO `t_user` VALUES ('751708', '五', '2251517', '黄强', '2018-01-05 14:52:47', null, '1');
