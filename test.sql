/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 05/07/2021 16:15:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for equip_server_soft
-- ----------------------------
DROP TABLE IF EXISTS `equip_server_soft`;
CREATE TABLE `equip_server_soft`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器名称',
  `ser_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器IP',
  `ser_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器类别',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'root用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'root用户密码',
  `ser_os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器操作系统',
  `ipmi_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IPMI_IP',
  `ib_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IB_IP',
  `ipmi_admin_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'IPMI信息，用“/”分隔用户名和密码',
  `ser_purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器用途',
  `ser_owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '使用人',
  `ser_belong` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '服务器所属实验室',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equip_server_soft
-- ----------------------------
INSERT INTO `equip_server_soft` VALUES (8, '服务器51号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (9, '服务器765号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (10, '服务器902号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (11, '服务器236号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (12, '服务器471号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (13, '服务器428号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (14, '服务器216号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (15, '服务器797号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (16, '服务器75号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (17, '服务器215号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (18, '服务器628号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (19, '服务器422号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (20, '服务器258号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (21, '服务器610号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (22, '服务器471号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (23, '服务器1000号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (24, '服务器605号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (25, '服务器672号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (26, '服务器117号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (27, '服务器320号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (28, '服务器287号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (29, '服务器505号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (30, '服务器779号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (31, '服务器764号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (32, '服务器506号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (33, '服务器422号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (34, '服务器612号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (35, '服务器905号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (36, '服务器743号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (37, '服务器999号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (38, '服务器478号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (39, '服务器170号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (40, '服务器203号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (41, '服务器383号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (42, '服务器631号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (43, '服务器640号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (44, '服务器625号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (45, '服务器72号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (46, '服务器701号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (47, '服务器92号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (48, '服务器782号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (49, '服务器974号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (50, '服务器409号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (51, '服务器345号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (52, '服务器695号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (53, '服务器828号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (54, '服务器734号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (55, '服务器618号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (56, '服务器169号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (57, '服务器367号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (58, '服务器329号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (59, '服务器337号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (60, '服务器10号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (61, '服务器925号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (62, '服务器809号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (63, '服务器342号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (64, '服务器492号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (65, '服务器836号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (66, '服务器184号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (67, '服务器536号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (68, '服务器781号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (69, '服务器310号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (70, '服务器141号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (71, '服务器359号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (72, '服务器528号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (73, '服务器15号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (74, '服务器502号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (75, '服务器886号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (76, '服务器497号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (77, '服务器581号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (78, '服务器547号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (79, '服务器979号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (80, '服务器304号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (81, '服务器852号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (82, '服务器810号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (83, '服务器177号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (84, '服务器945号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (85, '服务器726号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (86, '服务器635号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (87, '服务器714号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (88, '服务器34号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (89, '服务器246号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (90, '服务器805号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (91, '服务器773号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (92, '服务器864号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (93, '服务器320号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (94, '服务器493号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (95, '服务器239号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (96, '服务器227号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (97, '服务器860号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (98, '服务器648号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (99, '服务器827号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (100, '服务器770号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (101, '服务器31号', '192.168.1.1', '刀片服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (102, '服务器821号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (103, '服务器708号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Linux', '', '', '', '测试', '汤艺', '218', '无');
INSERT INTO `equip_server_soft` VALUES (104, '服务器274号', '192.168.1.1', 'GPU服务器', 'root', '123456', 'Windows', '', '', '', '测试', '汤艺', '217', '无');
INSERT INTO `equip_server_soft` VALUES (111, '查我', '1', 'GPU服务器', '1', '1', 'Linux', NULL, NULL, NULL, '111', NULL, '218', 'app');
INSERT INTO `equip_server_soft` VALUES (112, '服务器999号', '1', 'GPU服务器', '1', '1', 'Windows', NULL, NULL, NULL, '1', NULL, '218', NULL);
INSERT INTO `equip_server_soft` VALUES (113, '测试', '1', 'GPU服务器', '1', '1', 'Windows', NULL, NULL, NULL, '测试', NULL, '218', '北京欢迎你');
INSERT INTO `equip_server_soft` VALUES (114, '1', '1', 'GPU服务器', '1', '1', 'Windows', NULL, NULL, NULL, '1', NULL, '218', '111111111111111');

-- ----------------------------
-- Table structure for equip_vm
-- ----------------------------
DROP TABLE IF EXISTS `equip_vm`;
CREATE TABLE `equip_vm`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟机名称',
  `master_ser` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟机挂靠服务器',
  `vm_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟机IP',
  `vm_os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟机操作系统',
  `vm_admin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'root用户名',
  `vm_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'root用户密码',
  `is_for_demo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否存放演示程序，填“是”或“否”',
  `vm_purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟机用途，如果存放演示程序应在此字段中准确描述',
  `vm_owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '虚拟机使用人',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equip_vm
-- ----------------------------
INSERT INTO `equip_vm` VALUES (9, '测试虚拟机1', '[{\"id\":28,\"name\":\"服务器287号\",\"serIp\":\"192.168.1.1\",\"serType\":\"刀片服务器\",\"username\":\"root\",\"password\":\"123456\",\"serOs\":\"Windows\",\"ipmiIp\":\"\",\"ibIp\":\"\",\"ipmiAdminPassword\":\"\",\"serPurpose\":\"测试\",\"serOwner\":\"汤艺\",\"serBelong\":\"218\",\"remarks\":\"无\"}]', '1', 'Windows', '1', '1', '否', '测试', 'ty', NULL);
INSERT INTO `equip_vm` VALUES (10, 'fuse测试', '[{\"id\":112,\"name\":\"服务器999号\",\"serIp\":\"1\",\"serType\":\"GPU服务器\",\"username\":\"1\",\"password\":\"1\",\"serOs\":\"Windows\",\"ipmiIp\":null,\"ibIp\":null,\"ipmiAdminPassword\":null,\"serPurpose\":\"1\",\"serOwner\":null,\"serBelong\":\"218\",\"remarks\":null}]', '1111', 'Linux', '11', '11', '是', '11', '11', '查我！');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限菜单表' ROW_FORMAT = Dynamic;

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
INSERT INTO `t_server` VALUES (3, '四号服务器', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
