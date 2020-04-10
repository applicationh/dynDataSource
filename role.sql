/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50524
 Source Host           : localhost:3306

 Target Server Type    : MySQL
 Target Server Version : 50524
 File Encoding         : 65001

 Date: 10/04/2020 10:23:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID',
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `descr` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `admin` tinyint(1) NULL DEFAULT NULL COMMENT '是否超级管理员',
  `system` tinyint(1) NULL DEFAULT NULL COMMENT '是否系统出厂自带',
  `privileges` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '逗号分隔的权限列表',
  `timeCreated` datetime NULL DEFAULT NULL,
  `timeModified` datetime NULL DEFAULT NULL,
  `flagDeleted` tinyint(1) NULL DEFAULT NULL,
  `timeDeleted` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('次管理员', '次管理员', '', 0, 0, 'USER_EDIT,USER_DELETE,USER_UPLOAD,USER_DOWNLOAD,SU_POLICY,SU_RECYCLE_VIEW,SU_RECYCLE_MANAGER', '2020-03-27 17:16:42', '2020-03-27 17:16:42', 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
