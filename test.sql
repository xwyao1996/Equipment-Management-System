/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 19/05/2021 20:12:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_equip
-- ----------------------------
DROP TABLE IF EXISTS `t_equip`;
CREATE TABLE `t_equip`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `assetid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '资产编号',
  `checkid` int(0) NULL DEFAULT NULL COMMENT '清查编号',
  `nms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国标分类',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '存放地点',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态',
  `buyer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '购置人',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '价值',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '使用人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_equip
-- ----------------------------
INSERT INTO `t_equip` VALUES (1, '固态硬盘', 'TY2015004034', 20150450, '磁盘机', '223实验室', '闲置', '李永', 1998.89, '无');
INSERT INTO `t_equip` VALUES (2, '机械硬盘', 'TY2134102401', 202021414, '磁盘机', '218实验室', '使用', '姚翔文', 752.36, '汤艺');

-- ----------------------------
-- Table structure for t_gpu
-- ----------------------------
DROP TABLE IF EXISTS `t_gpu`;
CREATE TABLE `t_gpu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `typee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '型号',
  `interfacee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '接口',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌',
  `frequency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '核心频率',
  `xcapacity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显存容量',
  `xtyp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显存类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_gpu
-- ----------------------------
INSERT INTO `t_gpu` VALUES (1, 'RTX3080', 'HDMI,DP,PCI-E 4.0', '索泰ZOTAC', 'NIVIDA', '1440-1770MHZ', '10GB', 'GDDR6X');
INSERT INTO `t_gpu` VALUES (2, 'RTX2080', 'PCI-E 3.0', '槃雷', 'NIVIDA', '1220-1450MHZ', '5GB', 'GDDR6');

-- ----------------------------
-- Table structure for t_harddisk
-- ----------------------------
DROP TABLE IF EXISTS `t_harddisk`;
CREATE TABLE `t_harddisk`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌',
  `interfac` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '接口',
  `vector` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '容量',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_harddisk
-- ----------------------------
INSERT INTO `t_harddisk` VALUES (1, '1号硬盘', '西部数据', 'USB3.0 USB2.0', '2TB', '移动硬盘');
INSERT INTO `t_harddisk` VALUES (2, '2号硬盘', '希捷', 'USB3.0', '4TB', '固态硬盘');

-- ----------------------------
-- Table structure for t_pcc
-- ----------------------------
DROP TABLE IF EXISTS `t_pcc`;
CREATE TABLE `t_pcc`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `ram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'RAM',
  `processor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '处理器',
  `gpu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'GPU',
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌',
  `sys` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '系统',
  `typ` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '型号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2011000946 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pcc
-- ----------------------------
INSERT INTO `t_pcc` VALUES (1, 'DESKTOP-MLI7R4E', '12.0 GB (11.8 GB 可用)', 'Intel(R) Core(TM) i5-6300HQ CPU @ 2.30GHz   2.30 GHz', 'GeForce GTX980M', '联想', 'Windows 10', NULL);

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `flag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES (1, '用户管理', '用户管理', '/page/end/user', 'user');
INSERT INTO `t_permission` VALUES (2, '角色管理', '角色管理', '/page/end/role.html', 'role');
INSERT INTO `t_permission` VALUES (3, '权限管理', '权限管理', '/page/end/permission.html', 'permission');
INSERT INTO `t_permission` VALUES (4, '插件管理', '插件管理', '/page/end/plugins.html', 'plugins');
INSERT INTO `t_permission` VALUES (18, '聊天室', '聊天室', '/page/end/im.html', 'im');
INSERT INTO `t_permission` VALUES (25, '设备管理', '设备管理', '/page/end/equip.html', 'equip');
INSERT INTO `t_permission` VALUES (26, '主机管理', '主机管理', '/page/end/pcc.html', 'pcc');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `permission` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '超级管理员', '所有权限', '[{\"id\":1,\"name\":\"用户管理\",\"path\":\"/page/end/user.html\",\"description\":null,\"flag\":\"user\"},{\"id\":2,\"name\":\"角色管理\",\"path\":\"/page/end/role.html\",\"description\":null,\"flag\":\"role\"},{\"id\":3,\"name\":\"权限管理\",\"path\":\"/page/end/permission.html\",\"description\":null,\"flag\":\"permission\"},{\"id\":4,\"name\":\"插件管理\",\"path\":\"/page/end/plugins.html\",\"description\":\"插件管理\",\"flag\":\"plugins\"},{\"id\":18,\"name\":\"聊天室\",\"path\":\"/page/end/im.html\",\"description\":\"聊天室\",\"flag\":\"im\"},{\"id\":25,\"name\":\"设备管理\",\"path\":\"/page/end/equip.html\",\"description\":\"设备管理\",\"flag\":\"equip\"},{\"id\":26,\"name\":\"主机管理\",\"path\":\"/page/end/pcc.html\",\"description\":\"主机管理\",\"flag\":\"pcc\"}]');
INSERT INTO `t_role` VALUES (2, '普通用户', '部分权限', '[{\"id\":4,\"name\":\"插件管理\",\"path\":\"/page/end/plugins.html\",\"description\":\"插件管理\",\"flag\":\"plugins\"},{\"id\":18,\"name\":\"聊天室\",\"path\":\"/page/end/im.html\",\"description\":\"聊天室\",\"flag\":\"im\"}]');
INSERT INTO `t_role` VALUES (3, '3123', 'fraewf', '[{\"id\":2,\"name\":\"角色管理\",\"path\":\"/page/end/role.html\",\"description\":\"角色管理\",\"flag\":\"role\"},{\"id\":3,\"name\":\"权限管理\",\"path\":\"/page/end/permission.html\",\"description\":\"权限管理\",\"flag\":\"permission\"},{\"id\":4,\"name\":\"插件管理\",\"path\":\"/page/end/plugins.html\",\"description\":\"插件管理\",\"flag\":\"plugins\"}]');

-- ----------------------------
-- Table structure for t_server
-- ----------------------------
DROP TABLE IF EXISTS `t_server`;
CREATE TABLE `t_server`  (
  `id` bigint(0) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `power` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电源',
  `sys` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作系统',
  `harddisk` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '硬盘',
  `gpu` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'gpu',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'root用户',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '品牌',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_server
-- ----------------------------
INSERT INTO `t_server` VALUES (1, '1号服务器', '23W', 'Ubuntu16.04', NULL, NULL, 'root', 'root123', '戴尔R540');
INSERT INTO `t_server` VALUES (2, '2号服务器', '35W', 'Ubuntu 16.03', NULL, NULL, 'lab123', 'qwer123', '戴尔R730');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '权限',
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '部门',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', '111124444', '13978786565', '1616817714347', '[{\"id\":1,\"name\":\"超级管理员\",\"description\":null,\"permission\":null}]', NULL, NULL);
INSERT INTO `t_user` VALUES (11, 'tom', '123456', 'tom@qq.com', '13685249632', '1616271650817', '[{\"id\":2,\"name\":\"普通用户\",\"description\":\"部分权限\",\"permission\":[{\"id\":4,\"name\":\"插件管理\",\"path\":\"/page/end/plugins.html\",\"description\":\"插件管理\",\"flag\":\"plugins\"},{\"id\":5,\"name\":\"聊天室\",\"path\":\"/page/end/im.html\",\"description\":\"聊天室\",\"flag\":\"im\"}]}]', NULL, NULL);
INSERT INTO `t_user` VALUES (16, 'jack', '123456', NULL, NULL, '1616271628207', '[{\"id\":2,\"name\":\"仓库管理员\",\"description\":null,\"permission\":[{\"id\":2,\"name\":\"仓库管理\",\"path\":\"/page/end/cangku.html\",\"description\":\"仓库管理\"}]}]', NULL, NULL);
INSERT INTO `t_user` VALUES (20, 'jerry', '123456', 'jerry@qq.com', '13698597854', '1616284768677', '[{\"id\":2,\"name\":\"仓库管理员\",\"description\":null,\"permission\":[{\"id\":4,\"name\":\"部门管理\",\"path\":\"/page/end/department.html\",\"description\":\"部门管理\"},{\"id\":8,\"name\":\"聊天室\",\"path\":\"/page/end/im.html\",\"description\":\"聊天室\"}]}]', NULL, NULL);
INSERT INTO `t_user` VALUES (21, 'hello', '123456', 'hello@qq.com', '13695285412', '1615969390812', '[{\"id\":2,\"name\":\"普通用户\",\"description\":\"部分权限\",\"permission\":[{\"id\":4,\"name\":\"插件管理\",\"path\":\"/page/end/plugins.html\",\"description\":\"插件管理\",\"flag\":\"plugins\"},{\"id\":5,\"name\":\"聊天室\",\"path\":\"/page/end/im.html\",\"description\":\"聊天室\",\"flag\":\"im\"}]}]', NULL, NULL);
INSERT INTO `t_user` VALUES (23, 'yes', '123456', NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
