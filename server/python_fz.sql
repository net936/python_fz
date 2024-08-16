/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_fz

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 14/07/2024 10:45:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add comment', 16, 'add_comment');
INSERT INTO `auth_permission` VALUES (62, 'Can change comment', 16, 'change_comment');
INSERT INTO `auth_permission` VALUES (63, 'Can delete comment', 16, 'delete_comment');
INSERT INTO `auth_permission` VALUES (64, 'Can view comment', 16, 'view_comment');
INSERT INTO `auth_permission` VALUES (65, 'Can add feedback', 17, 'add_feedback');
INSERT INTO `auth_permission` VALUES (66, 'Can change feedback', 17, 'change_feedback');
INSERT INTO `auth_permission` VALUES (67, 'Can delete feedback', 17, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (68, 'Can view feedback', 17, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1720924485431.jpeg', 'https://gitapp.cn/', '2024-07-14 10:34:47.979525');
INSERT INTO `b_ad` VALUES (2, 'ad/1720924494932.png', 'https://m3u8player.org', '2024-07-14 10:34:58.365360');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '电信类', '2024-07-13 18:29:04.193661');
INSERT INTO `b_classification` VALUES (2, '网络类', '2024-07-13 18:29:35.048241');
INSERT INTO `b_classification` VALUES (3, '传销类', '2024-07-13 18:29:42.572000');
INSERT INTO `b_classification` VALUES (4, '投资类', '2024-07-13 18:29:57.208964');
INSERT INTO `b_classification` VALUES (5, '购物类', '2024-07-13 18:30:02.510835');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, '111', '2024-07-13 18:47:51.125004', 0, 2, 2);
INSERT INTO `b_comment` VALUES (2, '22222222222222', '2024-07-14 10:34:11.757044', 0, 3, 2);
INSERT INTO `b_comment` VALUES (3, '13444444', '2024-07-14 10:34:14.345659', 0, 3, 2);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '哈哈哈哈哈', '刘文静', '88811@gmail.com', '77661651534', '2024-07-14 10:35:39.723533');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 18:24:13.325028');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 18:47:46.973531');
INSERT INTO `b_login_log` VALUES (3, 'bbb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 10:43:37.198448');
INSERT INTO `b_login_log` VALUES (4, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-14 10:44:09.106420');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '哈哈哈哈', '2024-07-14 10:35:06.333871');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 757 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-07-13 18:23:58.693316', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-07-13 18:23:58.706912', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-07-13 18:23:58.710711', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-07-13 18:24:08.259648', '/myapp/admin/thing/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-07-13 18:24:08.270052', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-07-13 18:24:13.325028', '/myapp/admin/adminLogin', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-07-13 18:24:13.478371', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-07-13 18:24:13.484879', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-07-13 18:24:16.306196', '/myapp/admin/user/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-07-13 18:24:18.188110', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-07-13 18:24:18.191442', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-07-13 18:26:28.077338', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-07-13 18:26:28.079335', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-07-13 18:26:54.254799', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-07-13 18:26:54.257791', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-07-13 18:27:08.583376', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-07-13 18:27:08.587707', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-07-13 18:27:38.672546', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-07-13 18:27:38.679058', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-07-13 18:27:47.743718', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-07-13 18:27:47.754489', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-07-13 18:28:52.345094', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-07-13 18:28:52.356067', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-07-13 18:28:54.203820', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-07-13 18:28:54.623858', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-07-13 18:28:54.623858', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-07-13 18:28:55.254714', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-07-13 18:29:04.193661', '/myapp/admin/classification/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-07-13 18:29:04.250969', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-07-13 18:29:35.060268', '/myapp/admin/classification/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-07-13 18:29:35.112353', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-07-13 18:29:42.576048', '/myapp/admin/classification/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-07-13 18:29:42.624426', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-07-13 18:29:57.220378', '/myapp/admin/classification/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-07-13 18:29:57.263177', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-07-13 18:30:02.527224', '/myapp/admin/classification/create', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-07-13 18:30:02.604809', '/myapp/admin/classification/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-07-13 18:30:03.774016', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-07-13 18:30:03.797635', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-07-13 18:33:29.939575', '/myapp/admin/thing/create', 'POST', NULL, '510');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-07-13 18:33:30.055884', '/myapp/admin/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-07-13 18:34:43.436045', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-07-13 18:34:43.453375', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-07-13 18:34:43.488408', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-07-13 18:34:43.563897', '/upload/cover/1720866628699.jpeg', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-07-13 18:34:44.100506', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-07-13 18:34:44.113525', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-07-13 18:37:20.676891', '/upload/cover/1720866628699.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-07-13 18:38:07.840726', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-07-13 18:38:07.918940', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-07-13 18:38:22.469981', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-07-13 18:38:22.500773', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-07-13 18:38:31.963257', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-07-13 18:38:31.979623', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-07-13 18:38:50.967300', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-07-13 18:38:51.349304', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-07-13 18:38:51.363634', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-07-13 18:38:57.147572', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-07-13 18:38:57.164627', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-07-13 18:39:04.161008', '/upload/cover/1720867044780.jpeg', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-07-13 18:39:11.851584', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-07-13 18:39:11.916638', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-07-13 18:39:53.489681', '/myapp/admin/thing/list', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-07-13 18:40:12.704679', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-07-13 18:40:12.931178', '/myapp/admin/thing/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-07-13 18:40:16.208864', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-07-13 18:40:16.438406', '/myapp/admin/thing/list', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-07-13 18:40:19.622904', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-07-13 18:40:19.851542', '/myapp/admin/thing/list', 'GET', NULL, '171');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-07-13 18:40:27.989909', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-07-13 18:40:28.207673', '/myapp/admin/thing/list', 'GET', NULL, '150');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-07-13 18:40:35.122041', '/myapp/admin/thing/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-07-13 18:40:35.348205', '/myapp/admin/thing/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-07-13 18:40:41.931400', '/myapp/admin/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-07-13 18:40:42.161653', '/myapp/admin/thing/list', 'GET', NULL, '166');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-07-13 18:40:52.714312', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-07-13 18:40:52.949732', '/myapp/admin/thing/list', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-07-13 18:40:58.954426', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-07-13 18:40:59.147697', '/myapp/admin/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-07-13 18:41:05.920672', '/myapp/admin/thing/update', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-07-13 18:41:06.132609', '/myapp/admin/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-07-13 18:41:14.261573', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-07-13 18:41:14.504261', '/myapp/admin/thing/list', 'GET', NULL, '177');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-07-13 18:41:21.453525', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-07-13 18:41:21.659541', '/myapp/admin/thing/list', 'GET', NULL, '159');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-07-13 18:41:29.525145', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-07-13 18:41:29.747199', '/myapp/admin/thing/list', 'GET', NULL, '161');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-07-13 18:41:37.373862', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-07-13 18:41:37.556919', '/myapp/admin/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-07-13 18:41:43.413984', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-07-13 18:41:43.600596', '/myapp/admin/thing/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-07-13 18:41:50.245143', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-07-13 18:41:50.477208', '/myapp/admin/thing/list', 'GET', NULL, '173');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-07-13 18:41:57.545466', '/myapp/admin/thing/update', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-07-13 18:41:57.771755', '/myapp/admin/thing/list', 'GET', NULL, '164');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-07-13 18:42:04.617027', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-07-13 18:42:04.805280', '/myapp/admin/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-07-13 18:42:11.581024', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-07-13 18:42:11.761866', '/myapp/admin/thing/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-07-13 18:42:17.759983', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-07-13 18:42:17.950319', '/myapp/admin/thing/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-07-13 18:42:24.737131', '/myapp/admin/thing/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-07-13 18:42:24.919936', '/myapp/admin/thing/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-07-13 18:42:30.477125', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-07-13 18:42:30.691335', '/myapp/admin/thing/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-07-13 18:42:38.345336', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-07-13 18:42:38.555818', '/myapp/admin/thing/list', 'GET', NULL, '171');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-07-13 18:42:44.093374', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-07-13 18:42:44.262200', '/myapp/admin/thing/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-07-13 18:42:47.610934', '/myapp/index/thing/getRecommend', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-07-13 18:42:47.663007', '/myapp/index/thing/getRecommend', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-07-13 18:42:47.681151', '/upload/cover/1720867044780.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-07-13 18:42:47.735254', '/upload/cover/1720867330360.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-07-13 18:42:47.751815', '/upload/cover/1720867322797.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-07-13 18:42:47.757550', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-07-13 18:42:47.757550', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-07-13 18:42:47.772127', '/upload/cover/1720867322797.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-07-13 18:42:47.787165', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-07-13 18:42:47.806488', '/upload/cover/1720867343341.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-07-13 18:42:47.809121', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-07-13 18:42:47.809121', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-07-13 18:42:47.809121', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-07-13 18:42:47.822676', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-07-13 18:42:48.036103', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-07-13 18:42:48.044129', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-07-13 18:42:48.103218', '/myapp/index/thing/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-07-13 18:42:58.731245', '/upload/cover/1720867296179.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-07-13 18:43:01.378392', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-07-13 18:43:01.583476', '/myapp/admin/thing/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-07-13 18:43:02.341391', '/upload/cover/1720867301830.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-07-13 18:43:04.838050', '/myapp/admin/thing/update', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-07-13 18:43:05.061433', '/myapp/admin/thing/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-07-13 18:43:06.134272', '/upload/cover/1720867308324.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-07-13 18:43:08.942540', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-07-13 18:43:09.205531', '/myapp/admin/thing/list', 'GET', NULL, '203');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-07-13 18:43:09.929627', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-07-13 18:43:12.902204', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-07-13 18:43:13.142744', '/myapp/admin/thing/list', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-07-13 18:43:13.865763', '/upload/cover/1720867330360.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-07-13 18:43:16.652888', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-07-13 18:43:16.896728', '/myapp/admin/thing/list', 'GET', NULL, '185');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-07-13 18:43:17.420345', '/upload/cover/1720867336646.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-07-13 18:43:20.125099', '/myapp/admin/thing/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-07-13 18:43:20.333403', '/myapp/admin/thing/list', 'GET', NULL, '155');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-07-13 18:43:21.619758', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-07-13 18:43:24.700505', '/myapp/admin/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-07-13 18:43:24.878949', '/myapp/admin/thing/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-07-13 18:43:26.979718', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-07-13 18:43:27.529860', '/myapp/index/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-07-13 18:43:28.178175', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-07-13 18:43:28.629633', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-07-13 18:43:29.289375', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-07-13 18:43:30.311884', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-07-13 18:43:31.665556', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-07-13 18:43:57.274769', '/myapp/admin/thing/list', 'GET', NULL, '154');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-07-13 18:43:59.557825', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-07-13 18:44:01.480443', '/myapp/admin/classification/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-07-13 18:44:01.969164', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-07-13 18:44:02.097816', '/myapp/admin/classification/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-07-13 18:44:17.989890', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-07-13 18:44:18.640849', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-07-13 18:46:11.458718', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-07-13 18:46:11.461739', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-07-13 18:46:11.496693', '/myapp/index/thing/getRecommend', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-07-13 18:46:11.521052', '/myapp/index/thing/getRecommend', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-07-13 18:46:11.565785', '/myapp/index/thing/getRecommend', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-07-13 18:46:13.556471', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-07-13 18:46:13.560255', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-07-13 18:46:13.610571', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-07-13 18:46:14.416115', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-07-13 18:46:14.429252', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-07-13 18:46:14.452122', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-07-13 18:46:14.479718', '/myapp/index/comment/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-07-13 18:46:14.527894', '/myapp/index/comment/list', 'GET', NULL, '138');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-07-13 18:46:15.301655', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-07-13 18:46:15.307871', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-07-13 18:46:15.363413', '/myapp/index/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-07-13 18:46:16.115237', '/myapp/index/comment/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-07-13 18:46:16.131032', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-07-13 18:46:16.205184', '/myapp/index/comment/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-07-13 18:46:16.239640', '/myapp/index/comment/list', 'GET', NULL, '124');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-07-13 18:46:16.242654', '/myapp/index/comment/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-07-13 18:46:17.575165', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-07-13 18:46:17.588937', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-07-13 18:46:17.628192', '/myapp/index/thing/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-07-13 18:46:19.297853', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-07-13 18:46:19.306016', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-07-13 18:46:19.336668', '/myapp/index/comment/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-07-13 18:46:19.370755', '/myapp/index/comment/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-07-13 18:46:19.411754', '/myapp/index/comment/list', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-07-13 18:46:19.427849', '/upload/cover/1720867322797.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-07-13 18:46:19.467974', '/upload/cover/1720867301830.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-07-13 18:46:19.486908', '/upload/cover/1720867301830.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-07-13 18:46:20.277417', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-07-13 18:46:20.282374', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-07-13 18:46:20.333600', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-07-13 18:46:20.389089', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-07-13 18:46:20.390342', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-07-13 18:46:20.392182', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-07-13 18:46:20.392897', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-07-13 18:46:20.396201', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-07-13 18:46:20.397959', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-07-13 18:46:20.425053', '/upload/cover/1720867356666.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-07-13 18:46:20.425053', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-07-13 18:46:23.391448', '/myapp/index/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-07-13 18:46:24.082537', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-07-13 18:46:24.679046', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-07-13 18:46:24.695672', '/myapp/index/thing/getRecommend', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-07-13 18:46:24.709883', '/myapp/index/thing/getRecommend', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-07-13 18:46:24.773185', '/myapp/index/thing/getRecommend', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-07-13 18:46:24.811574', '/myapp/index/thing/getRecommend', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-07-13 18:46:25.720377', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-07-13 18:46:25.731625', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-07-13 18:46:25.771635', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-07-13 18:46:26.771509', '/myapp/index/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-07-13 18:46:27.363510', '/myapp/index/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-07-13 18:46:30.996932', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-07-13 18:46:31.003166', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-07-13 18:46:31.016718', '/myapp/index/comment/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-07-13 18:46:31.062645', '/myapp/index/comment/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-07-13 18:46:31.076880', '/myapp/index/comment/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-07-13 18:46:32.060139', '/myapp/index/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-07-13 18:46:32.061362', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-07-13 18:46:32.111172', '/myapp/index/classification/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-07-13 18:46:33.663262', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-07-13 18:46:33.663262', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-07-13 18:46:33.682630', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-07-13 18:46:33.774351', '/myapp/index/comment/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-07-13 18:46:33.799069', '/myapp/index/comment/list', 'GET', NULL, '151');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-07-13 18:46:34.643495', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-07-13 18:46:34.652445', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-07-13 18:46:34.693855', '/myapp/index/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-07-13 18:46:35.760888', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-07-13 18:46:35.774026', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-07-13 18:46:35.774026', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-07-13 18:46:35.823396', '/myapp/index/thing/detail', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-07-13 18:46:35.872338', '/myapp/index/thing/detail', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-07-13 18:46:36.539820', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-07-13 18:46:36.545428', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-07-13 18:46:36.591042', '/myapp/index/classification/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-07-13 18:46:39.330274', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-07-13 18:46:39.341639', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-07-13 18:46:39.372429', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-07-13 18:46:39.434422', '/myapp/index/thing/detail', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-07-13 18:46:39.450004', '/myapp/index/thing/detail', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-07-13 18:46:40.344872', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-07-13 18:46:40.351033', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-07-13 18:46:40.400019', '/myapp/index/classification/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-07-13 18:46:41.458900', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-07-13 18:46:41.465754', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-07-13 18:46:41.481738', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-07-13 18:46:41.531318', '/myapp/index/comment/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-07-13 18:46:41.580448', '/myapp/index/comment/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-07-13 18:46:42.897730', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-07-13 18:46:42.901205', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-07-13 18:46:42.949931', '/myapp/index/classification/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-07-13 18:47:03.154488', '/myapp/admin/ad/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-07-13 18:47:03.165824', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-07-13 18:47:03.180980', '/myapp/admin/ad/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-07-13 18:47:03.226624', '/myapp/admin/ad/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-07-13 18:47:03.274586', '/myapp/admin/ad/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-07-13 18:47:44.785611', '/myapp/index/user/register', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-07-13 18:47:46.982760', '/myapp/index/user/login', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-07-13 18:47:47.087644', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-07-13 18:47:47.092802', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-07-13 18:47:47.101710', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-07-13 18:47:47.135220', '/myapp/index/classification/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-07-13 18:47:47.183154', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-07-13 18:47:47.202283', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-07-13 18:47:47.204832', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-07-13 18:47:47.208659', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-07-13 18:47:47.215085', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-07-13 18:47:47.216023', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-07-13 18:47:47.225108', '/upload/cover/1720867356666.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-07-13 18:47:47.250056', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-07-13 18:47:48.194551', '/myapp/admin/ad/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-07-13 18:47:48.221253', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-07-13 18:47:48.242351', '/myapp/admin/ad/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-07-13 18:47:48.262576', '/myapp/admin/ad/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-07-13 18:47:48.290161', '/myapp/admin/ad/list', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-07-13 18:47:48.317126', '/myapp/admin/ad/list', 'GET', NULL, '134');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-07-13 18:47:51.140533', '/myapp/index/comment/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-07-13 18:47:51.184029', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-07-13 18:48:16.353204', '/myapp/index/thing/addWishUser', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-07-13 18:48:16.427886', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-07-13 18:48:16.841771', '/myapp/index/thing/addCollectUser', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-07-13 18:48:16.892334', '/myapp/index/thing/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-07-13 18:48:17.397281', '/myapp/index/thing/addCollectUser', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-07-13 18:48:17.457068', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-07-13 18:49:42.047613', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-07-13 18:49:42.058237', '/myapp/admin/ad/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-07-13 18:49:42.074072', '/myapp/admin/ad/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-07-13 18:49:42.118502', '/myapp/admin/ad/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-07-13 18:49:42.135026', '/myapp/admin/ad/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-07-13 18:49:42.158754', '/myapp/admin/ad/list', 'GET', NULL, '139');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-07-13 18:49:43.688878', '/upload/raw/1720866804795.mp4', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-07-13 18:50:44.637226', '/myapp/index/thing/rate', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-07-13 18:51:34.788670', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-07-13 18:51:34.800412', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-07-13 18:51:34.832402', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-07-13 18:51:34.847058', '/myapp/index/comment/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-07-13 18:51:34.847058', '/myapp/index/comment/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-07-13 18:51:34.910603', '/myapp/index/comment/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-07-13 18:51:34.933775', '/upload/raw/1720866804795.mp4', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-07-13 18:52:38.197263', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-07-13 18:52:38.206753', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-07-13 18:52:38.233544', '/myapp/index/comment/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-07-13 18:52:38.254678', '/myapp/index/comment/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-07-13 18:52:38.276086', '/myapp/index/comment/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-07-13 18:52:38.305441', '/upload/cover/1720867296179.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-07-13 18:52:38.316498', '/upload/cover/1720867296179.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-07-13 18:52:38.351288', '/upload/cover/1720867296179.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-07-13 18:52:38.372074', '/upload/raw/1720866804795.mp4', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-07-13 18:52:38.372074', '/upload/cover/1720867308324.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-07-13 18:52:38.372074', '/upload/cover/1720867308324.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-07-13 18:52:38.377581', '/upload/cover/1720867308324.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-07-13 18:52:42.586876', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-07-13 18:52:42.591162', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-07-13 18:52:42.602772', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-07-13 18:52:42.641691', '/myapp/index/thing/detail', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-07-13 18:52:42.655946', '/myapp/index/thing/detail', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-07-13 18:52:42.672303', '/myapp/index/thing/detail', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-07-13 18:52:42.684896', '/upload/cover/1720867296179.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-07-13 18:52:42.702860', '/upload/raw/1720866804795.mp4', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-07-13 18:52:42.748452', '/upload/cover/1720867296179.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-07-13 18:52:42.748452', '/upload/cover/1720867044780.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-07-13 18:52:42.748452', '/upload/cover/1720867044780.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-07-13 18:52:42.759468', '/upload/cover/1720867044780.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-07-13 18:53:06.125429', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-07-13 18:53:06.130079', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-07-13 18:53:06.145687', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-07-13 18:53:06.192360', '/myapp/index/comment/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-07-13 18:53:06.208484', '/myapp/index/comment/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-07-13 18:53:06.224575', '/myapp/index/comment/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-07-13 18:54:03.182704', '/myapp/index/thing/addCollectUser', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-07-13 18:54:03.263463', '/myapp/index/thing/detail', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-07-13 18:55:11.755693', '/myapp/index/thing/getRecommend', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-07-13 18:55:11.768880', '/myapp/index/thing/getRecommend', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-07-13 18:55:11.802166', '/myapp/index/thing/getRecommend', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-07-13 18:55:11.849379', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-07-13 18:55:11.852272', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-07-13 18:55:11.853214', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-07-13 18:55:11.853214', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-07-13 18:55:11.853214', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-07-13 18:55:11.868684', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-07-13 18:55:11.875156', '/upload/cover/1720867330360.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-07-13 18:55:11.876535', '/upload/cover/1720867336646.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-07-13 18:55:12.883796', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-07-13 18:55:12.887050', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-07-13 18:55:12.900331', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-07-13 18:55:12.949629', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-07-13 18:55:15.400305', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-07-13 18:55:15.407514', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-07-13 18:55:15.421715', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-07-13 18:55:15.444722', '/upload/cover/1720867301830.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-07-13 18:55:19.493033', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-07-13 18:55:19.502453', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-07-13 18:55:19.518132', '/myapp/index/comment/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-07-13 18:55:19.557638', '/myapp/index/comment/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-07-13 18:55:19.587485', '/myapp/index/comment/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-07-13 18:55:19.628202', '/myapp/index/comment/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-07-13 18:55:19.652856', '/upload/raw/1720866804795.mp4', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-07-13 18:55:20.891567', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-07-13 18:55:20.898310', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-07-13 18:55:20.905260', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-07-13 18:55:20.965728', '/myapp/index/user/info', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-07-13 18:55:21.773082', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-07-13 18:55:21.789624', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-07-13 18:55:21.817954', '/myapp/index/comment/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-07-13 18:55:21.827445', '/myapp/index/comment/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-07-13 18:55:21.845214', '/myapp/index/comment/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-07-13 18:55:21.889940', '/myapp/index/comment/list', 'GET', NULL, '135');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-07-13 18:55:23.804921', '/myapp/index/thing/addCollectUser', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-07-13 18:55:23.879882', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-07-13 18:55:24.267594', '/myapp/index/thing/addWishUser', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-07-13 18:55:24.375667', '/myapp/index/thing/detail', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-07-13 18:55:26.580338', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-07-13 18:55:26.597945', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-07-13 18:55:26.615232', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-07-13 18:55:26.639870', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-07-13 18:55:26.649874', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-07-13 18:55:26.671655', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-07-13 18:55:28.138806', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-07-13 18:55:28.963019', '/myapp/index/thing/getWishThingList', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-07-13 18:55:29.517783', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-07-13 18:55:31.045885', '/myapp/index/thing/getWishThingList', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-07-13 18:55:32.650019', '/myapp/index/order/list', 'GET', NULL, '331');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-07-13 18:55:33.193862', '/myapp/index/comment/listMyComments', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-07-13 18:55:34.422417', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-07-13 18:55:43.953075', '/myapp/index/user/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-07-13 18:55:45.050165', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-07-13 18:55:45.048057', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-07-13 18:55:45.088039', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-07-13 18:55:45.088039', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-07-13 18:55:45.109831', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-07-13 18:55:45.119968', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-07-13 18:55:45.135234', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-07-13 18:55:46.571316', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-07-13 18:55:46.579336', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-07-13 18:55:46.595254', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-07-13 18:55:46.651187', '/myapp/index/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-07-13 18:55:46.694235', '/upload/cover/1720867308324.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-07-13 18:55:46.694235', '/upload/cover/1720867308324.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-07-13 18:55:46.694235', '/upload/cover/1720867308324.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-07-13 18:56:40.690972', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-07-13 18:56:40.775512', '/myapp/admin/classification/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-07-13 18:56:41.058881', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-07-13 18:56:41.067257', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-07-13 18:56:41.078628', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-07-13 18:56:41.129580', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-07-13 18:56:41.143588', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-07-13 18:56:41.226672', '/upload/cover/1720867336646.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-07-13 18:56:41.226672', '/upload/cover/1720867343341.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-07-13 18:56:41.226672', '/upload/cover/1720867336646.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-07-13 18:56:41.242679', '/upload/cover/1720867343341.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-07-13 18:56:41.242679', '/upload/cover/1720867336646.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-07-13 18:56:41.247107', '/upload/cover/1720867343341.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-07-13 18:56:41.267389', '/upload/cover/1720867356666.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-07-13 18:56:41.267389', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-07-13 18:56:41.267389', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-07-13 18:56:43.565654', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-07-13 18:56:43.570488', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-07-13 18:56:43.598825', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-07-13 18:56:43.598825', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-07-13 18:56:43.598825', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-07-13 18:56:43.630085', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-07-13 18:56:45.306927', '/myapp/index/comment/listMyComments', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-07-13 18:56:47.171239', '/myapp/index/thing/getRecommend', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-07-13 18:56:47.191350', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-07-13 18:56:47.233422', '/myapp/index/thing/getRecommend', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-07-13 18:56:47.767578', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-07-13 18:56:47.784348', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-07-13 18:56:47.784348', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-07-13 18:56:47.838267', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-07-13 18:57:14.728380', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-07-13 18:57:14.849193', '/myapp/admin/classification/list', 'GET', NULL, '131');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-07-13 18:57:16.073412', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-07-13 18:57:16.963247', '/myapp/admin/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-07-13 18:57:17.402072', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-07-13 18:57:30.645984', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-07-13 18:57:30.775186', '/myapp/admin/classification/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-07-13 18:57:38.282683', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-07-13 18:57:38.293101', '/myapp/index/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-07-13 18:57:38.296242', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-07-13 18:57:38.330281', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-07-13 18:57:38.343831', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-07-13 18:57:38.409583', '/upload/cover/1720867044780.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-07-13 18:57:38.414868', '/upload/cover/1720867296179.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-07-13 18:57:38.434162', '/upload/cover/1720867308324.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-07-13 18:57:43.000439', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-07-13 18:57:43.018420', '/myapp/index/thing/getWishThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-07-13 18:57:43.115582', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-07-13 18:57:43.139124', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-07-13 18:57:43.150240', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-07-13 18:57:43.166136', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-07-13 18:57:44.909466', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-07-13 18:57:45.435133', '/myapp/index/comment/listMyComments', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-07-13 18:57:46.446297', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-07-13 18:57:47.351073', '/myapp/index/thing/getWishThingList', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-07-13 18:57:48.071317', '/myapp/index/thing/getRecommend', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-07-13 18:57:48.085898', '/myapp/index/thing/getRecommend', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-07-13 18:57:48.151679', '/myapp/index/thing/getRecommend', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-07-13 18:57:48.498947', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-07-13 18:57:48.510313', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-07-13 18:57:48.515391', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-07-13 18:57:48.566394', '/myapp/index/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-07-13 18:58:17.802344', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-07-13 18:58:17.895453', '/myapp/admin/classification/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-07-13 18:58:18.194961', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-07-13 18:58:18.202129', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-07-13 18:58:18.205331', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-07-13 18:58:18.243762', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-07-13 18:58:18.252101', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-07-13 18:58:18.293311', '/upload/cover/1720867322797.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-07-13 18:58:18.293311', '/upload/cover/1720867301830.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-07-13 18:58:18.293311', '/upload/cover/1720867322797.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-07-13 18:58:18.318230', '/upload/cover/1720867330360.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-07-13 18:58:18.318230', '/upload/cover/1720867336646.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-07-13 18:58:18.318230', '/upload/cover/1720867336646.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-07-13 18:58:18.342788', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-07-13 18:58:18.342788', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-07-13 18:58:18.342788', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-07-13 18:59:01.274008', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-07-13 18:59:01.288919', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-07-13 18:59:01.282683', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-07-13 18:59:01.332998', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-07-13 18:59:01.348338', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-07-13 18:59:02.778081', '/myapp/index/thing/getRecommend', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-07-13 18:59:02.773955', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-07-13 18:59:02.819172', '/myapp/index/thing/getRecommend', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-07-13 18:59:03.425662', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-07-13 18:59:03.433308', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-07-13 18:59:03.441329', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-07-13 18:59:03.502009', '/myapp/index/thing/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-07-13 19:00:33.155946', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-07-13 19:00:33.165211', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-07-13 19:00:33.172629', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-07-13 19:00:33.225933', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-07-13 19:00:33.233152', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-07-13 19:00:33.273926', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-07-13 19:00:33.273926', '/upload/cover/1720867308324.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-07-13 19:00:33.273926', '/upload/cover/1720867308324.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-07-13 19:00:33.273926', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-07-13 19:00:33.273926', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-07-13 19:00:33.273926', '/upload/cover/1720867316021.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-07-13 19:00:33.336795', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-07-13 19:00:33.336795', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-07-13 19:00:33.336795', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-07-13 19:00:33.352502', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-07-13 19:00:33.352502', '/upload/cover/1720867343341.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-07-13 19:00:33.359576', '/upload/cover/1720867343341.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-07-13 19:00:34.832649', '/myapp/index/thing/getRecommend', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-07-13 19:00:34.846455', '/myapp/index/thing/getRecommend', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-07-13 19:00:34.891323', '/myapp/index/thing/getRecommend', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-07-13 19:00:35.314811', '/myapp/index/user/info', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-07-13 19:00:35.327243', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-07-13 19:00:35.330837', '/myapp/index/user/info', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-07-13 19:00:35.394710', '/myapp/index/user/info', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-07-14 10:33:23.134682', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-07-14 10:33:23.185080', '/myapp/admin/classification/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-07-14 10:33:23.474684', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-07-14 10:33:23.481919', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-07-14 10:33:23.489842', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-07-14 10:33:23.505054', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-07-14 10:33:23.505054', '/upload/avatar/1720868139566.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-07-14 10:33:23.524967', '/upload/cover/1720867044780.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-07-14 10:33:23.534802', '/upload/cover/1720867301830.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-07-14 10:33:23.536829', '/upload/cover/1720867308324.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-07-14 10:33:23.537378', '/upload/cover/1720867301830.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-07-14 10:33:23.547135', '/upload/cover/1720867322797.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-07-14 10:33:23.549096', '/upload/cover/1720867330360.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-07-14 10:33:23.549782', '/upload/cover/1720867330360.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-07-14 10:33:23.567230', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-07-14 10:33:23.567230', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-07-14 10:33:23.567230', '/upload/cover/1720867349110.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-07-14 10:33:23.580357', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-07-14 10:33:23.580357', '/upload/cover/1720867362953.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-07-14 10:33:42.622002', '/myapp/index/thing/getRecommend', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-07-14 10:33:42.639216', '/myapp/index/thing/getRecommend', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-07-14 10:33:42.648792', '/myapp/index/thing/getRecommend', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-07-14 10:33:43.121013', '/myapp/index/classification/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-07-14 10:33:43.133022', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-07-14 10:33:43.135179', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-07-14 10:33:43.146092', '/myapp/index/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-07-14 10:33:44.244262', '/myapp/index/thing/getRecommend', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-07-14 10:33:44.252271', '/myapp/index/thing/getRecommend', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-07-14 10:33:44.256924', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-07-14 10:33:44.256924', '/myapp/index/thing/getRecommend', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-07-14 10:33:44.267936', '/myapp/index/thing/getRecommend', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-07-14 10:33:44.281447', '/myapp/index/thing/getRecommend', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-07-14 10:33:44.289651', '/upload/raw/1720866804795.mp4', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-07-14 10:33:56.827952', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-07-14 10:33:56.830044', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-07-14 10:33:56.834726', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-07-14 10:33:56.848363', '/myapp/index/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-07-14 10:33:59.500419', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-07-14 10:34:00.793643', '/myapp/admin/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-07-14 10:34:06.291837', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-07-14 10:34:06.291837', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-07-14 10:34:06.291837', '/myapp/index/thing/getRecommend', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-07-14 10:34:06.308629', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-07-14 10:34:06.308629', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-07-14 10:34:06.308629', '/myapp/index/thing/getRecommend', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-07-14 10:34:11.765988', '/myapp/index/comment/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-07-14 10:34:11.787040', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-07-14 10:34:14.358257', '/myapp/index/comment/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-07-14 10:34:14.398139', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-07-14 10:34:16.925655', '/myapp/index/comment/create', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-07-14 10:34:19.796402', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-07-14 10:34:29.764630', '/myapp/admin/user/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-07-14 10:34:29.812150', '/myapp/admin/user/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-07-14 10:34:38.755353', '/myapp/admin/ad/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-07-14 10:34:47.979525', '/myapp/admin/ad/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-07-14 10:34:48.014290', '/myapp/admin/ad/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-07-14 10:34:48.059936', '/upload/ad/1720924485431.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-07-14 10:34:58.377056', '/myapp/admin/ad/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-07-14 10:34:58.432897', '/myapp/admin/ad/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-07-14 10:34:58.510924', '/upload/ad/1720924494932.png', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-07-14 10:34:59.957413', '/myapp/admin/notice/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-07-14 10:35:06.333871', '/myapp/admin/notice/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-07-14 10:35:06.386308', '/myapp/admin/notice/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-07-14 10:35:09.557970', '/myapp/admin/loginLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-07-14 10:35:10.796020', '/myapp/admin/opLog/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-07-14 10:35:12.149689', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-07-14 10:35:15.466703', '/myapp/admin/feedback/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-07-14 10:35:20.215980', '/myapp/index/user/info', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-07-14 10:35:20.230574', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-07-14 10:35:39.733893', '/myapp/index/feedback/create', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-07-14 10:35:41.711244', '/myapp/index/user/info', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-07-14 10:35:41.718392', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-07-14 10:35:44.438176', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1105');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-07-14 10:35:45.098638', '/myapp/admin/feedback/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-07-14 10:35:46.795758', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-07-14 10:35:48.598952', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-07-14 10:35:48.751009', '/myapp/admin/classification/list', 'GET', NULL, '168');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-07-14 10:36:59.757156', '/myapp/admin/ad/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-07-14 10:36:59.760843', '/myapp/admin/ad/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-07-14 10:36:59.796136', '/myapp/admin/ad/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-07-14 10:36:59.816151', '/myapp/admin/ad/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-07-14 10:36:59.843628', '/myapp/admin/ad/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-07-14 10:36:59.877174', '/myapp/admin/ad/list', 'GET', NULL, '128');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-07-14 10:37:00.160733', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-07-14 10:37:00.209749', '/upload/ad/1720924485431.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-07-14 10:37:00.216444', '/upload/ad/1720924485431.jpeg', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-07-14 10:37:00.296798', '/upload/ad/1720924485431.jpeg', 'GET', NULL, '114');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-07-14 10:37:00.892317', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-07-14 10:37:00.899007', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-07-14 10:37:00.906157', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-07-14 10:37:00.946503', '/myapp/index/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-07-14 10:37:01.618484', '/myapp/index/user/info', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-07-14 10:37:01.631894', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-07-14 10:37:01.679732', '/myapp/index/user/info', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-07-14 10:37:06.631532', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-07-14 10:37:06.639820', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-07-14 10:37:06.646534', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-07-14 10:37:06.701402', '/myapp/index/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-07-14 10:37:07.556600', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-07-14 10:37:07.564960', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-07-14 10:37:07.584917', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-07-14 10:37:07.631770', '/myapp/index/thing/detail', 'GET', NULL, '103');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-07-14 10:37:07.661417', '/myapp/index/thing/detail', 'GET', NULL, '129');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-07-14 10:37:07.691852', '/myapp/index/thing/detail', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-07-14 10:37:09.310258', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-07-14 10:37:09.322365', '/myapp/index/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-07-14 10:37:09.331484', '/myapp/index/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-07-14 10:37:09.381850', '/myapp/index/classification/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-07-14 10:37:36.226791', '/myapp/index/thing/getRecommend', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-07-14 10:37:36.240693', '/myapp/index/thing/getRecommend', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-07-14 10:37:36.270291', '/myapp/index/thing/getRecommend', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-07-14 10:37:36.296215', '/myapp/index/thing/getRecommend', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-07-14 10:37:36.338345', '/upload/ad/1720924485431.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-07-14 10:37:36.340310', '/upload/ad/1720924485431.jpeg', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-07-14 10:37:36.344345', '/upload/ad/1720924485431.jpeg', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-07-14 10:37:36.370288', '/upload/ad/1720924485431.jpeg', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-07-14 10:37:39.217826', '/myapp/index/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-07-14 10:37:39.225648', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-07-14 10:37:39.236611', '/myapp/index/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-07-14 10:37:39.295800', '/myapp/index/classification/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-07-14 10:37:58.862398', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-07-14 10:37:58.872631', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-07-14 10:38:14.261152', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-07-14 10:38:14.278164', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-07-14 10:39:01.896394', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-07-14 10:39:01.902275', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-07-14 10:39:01.915657', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-07-14 10:39:01.947823', '/myapp/index/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-07-14 10:39:02.168366', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-07-14 10:39:02.307155', '/myapp/admin/classification/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-07-14 10:39:03.245012', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-07-14 10:39:03.259783', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-07-14 10:39:03.259783', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-07-14 10:39:03.276307', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-07-14 10:39:03.293090', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-07-14 10:39:03.310133', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-07-14 10:39:03.809501', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-07-14 10:39:03.820094', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-07-14 10:39:03.826051', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-07-14 10:39:03.860734', '/myapp/index/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-07-14 10:39:28.915526', '/myapp/admin/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-07-14 10:39:30.217407', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-07-14 10:39:31.268299', '/myapp/admin/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-07-14 10:39:43.504398', '/myapp/index/comment/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-07-14 10:39:43.521170', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-07-14 10:39:43.522665', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-07-14 10:39:43.536828', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-07-14 10:39:43.568247', '/upload/ad/1720924494932.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-07-14 10:39:43.584024', '/upload/ad/1720924494932.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-07-14 10:39:43.619564', '/upload/ad/1720924494932.png', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-07-14 10:39:43.648398', '/upload/ad/1720924494932.png', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-07-14 10:39:44.629712', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-07-14 10:39:44.639515', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-07-14 10:39:44.651254', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-07-14 10:39:44.711764', '/myapp/index/thing/list', 'GET', NULL, '102');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-07-14 10:39:46.252331', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-07-14 10:39:46.260297', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-07-14 10:39:46.272096', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-07-14 10:39:46.308909', '/myapp/index/comment/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-07-14 10:39:46.359080', '/myapp/index/comment/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-07-14 10:39:46.372995', '/myapp/index/comment/list', 'GET', NULL, '132');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-07-14 10:39:47.333563', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-07-14 10:39:47.348609', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-07-14 10:39:47.358706', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-07-14 10:39:47.413240', '/myapp/index/thing/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-07-14 10:39:48.623103', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-07-14 10:39:48.642417', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-07-14 10:39:48.671927', '/myapp/index/comment/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-07-14 10:39:48.690672', '/myapp/index/comment/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-07-14 10:39:48.753756', '/myapp/index/comment/list', 'GET', NULL, '148');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-07-14 10:39:48.758801', '/myapp/index/comment/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-07-14 10:39:49.308502', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-07-14 10:39:49.323216', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-07-14 10:39:49.323216', '/myapp/index/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-07-14 10:39:49.392711', '/myapp/index/thing/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-07-14 10:39:51.340325', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-07-14 10:39:51.358511', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-07-14 10:39:51.358511', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-07-14 10:39:51.421676', '/myapp/index/thing/detail', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-07-14 10:39:51.453106', '/myapp/index/thing/detail', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-07-14 10:39:51.487351', '/myapp/index/thing/detail', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-07-14 10:39:52.545296', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-07-14 10:39:52.540845', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-07-14 10:39:52.557669', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-07-14 10:39:52.609028', '/myapp/index/thing/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-07-14 10:43:30.950947', '/myapp/index/user/register', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-07-14 10:43:35.318586', '/myapp/index/user/register', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-07-14 10:43:37.198448', '/myapp/index/user/login', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-07-14 10:43:37.276647', '/myapp/index/user/info', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-07-14 10:43:37.283326', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-07-14 10:43:37.281881', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-07-14 10:43:37.331801', '/myapp/index/user/info', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-07-14 10:43:38.686230', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-07-14 10:43:38.705246', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-07-14 10:43:38.719404', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-07-14 10:43:38.728209', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-07-14 10:43:38.773759', '/upload/ad/1720924494932.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-07-14 10:43:38.773759', '/upload/ad/1720924494932.png', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-07-14 10:43:38.782007', '/upload/ad/1720924494932.png', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-07-14 10:43:38.798632', '/upload/ad/1720924494932.png', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-07-14 10:43:42.499723', '/myapp/index/thing/addCollectUser', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-07-14 10:43:42.565407', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-07-14 10:43:43.109827', '/myapp/index/thing/addWishUser', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-07-14 10:43:43.186080', '/myapp/index/thing/detail', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-07-14 10:43:44.539541', '/myapp/index/thing/rate', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-07-14 10:43:57.649691', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-07-14 10:43:57.659732', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-07-14 10:43:57.679381', '/myapp/index/user/info', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-07-14 10:43:57.699187', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-07-14 10:43:57.703583', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-07-14 10:43:57.722321', '/myapp/index/user/info', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-07-14 10:44:00.231909', '/myapp/index/comment/listMyComments', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-07-14 10:44:01.116066', '/myapp/index/user/info', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-07-14 10:44:01.905728', '/myapp/index/comment/listMyComments', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-07-14 10:44:02.318037', '/myapp/index/user/info', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-07-14 10:44:03.627635', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-07-14 10:44:04.202982', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-07-14 10:44:06.171225', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-07-14 10:44:06.290342', '/myapp/admin/classification/list', 'GET', NULL, '130');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-07-14 10:44:09.123578', '/myapp/admin/adminLogin', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-07-14 10:44:09.340718', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-07-14 10:44:09.454605', '/myapp/admin/classification/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-07-14 10:44:11.710740', '/myapp/admin/thing/update', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-07-14 10:44:14.180177', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-07-14 10:44:16.270107', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-07-14 10:44:16.366737', '/myapp/admin/classification/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-07-14 10:44:17.341587', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-07-14 10:44:20.973399', '/myapp/admin/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-07-14 10:44:22.373543', '/myapp/admin/user/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-07-14 10:44:23.978867', '/myapp/admin/overview/count', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-07-14 10:44:42.283715', '/myapp/admin/feedback/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-07-14 10:44:44.544369', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1039');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-07-14 10:44:45.164656', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-07-14 10:44:45.267259', '/myapp/admin/classification/list', 'GET', NULL, '119');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-07-14 10:44:49.183581', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-07-14 10:44:49.200577', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-07-14 10:44:49.206960', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-07-14 10:44:49.251447', '/myapp/index/user/info', 'GET', NULL, '76');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 2, 15, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 1, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (3, 3, 6, '127.0.0.1');
INSERT INTO `b_record` VALUES (4, 6, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (5, 12, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (6, 10, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (7, 9, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (8, 11, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (9, 4, 7, '127.0.0.1');
INSERT INTO `b_record` VALUES (10, 7, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (11, 8, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (12, 5, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `raw` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '测试反诈宣传视频', 'cover/1720867044780.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 1, 0, 0, 0, 4, NULL, 3, 'raw/1720866804795.mp4');
INSERT INTO `b_thing` VALUES (2, '朝阳区反诈宣传视频', 'cover/1720867296179.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 15, 0, 1, 1, 5, NULL, 4, 'raw/1720866804795.mp4');
INSERT INTO `b_thing` VALUES (3, '测试反诈宣传视频222', 'cover/1720867301830.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 6, 0, 0, 0, 3, NULL, 3, 'raw/1720866804795.mp4');
INSERT INTO `b_thing` VALUES (4, '测试反诈宣传视频3333', 'cover/1720867308324.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 7, 0, 2, 2, 2, NULL, 4, 'raw/1720866804795.mp4');
INSERT INTO `b_thing` VALUES (5, '西城区反诈宣传视频', 'cover/1720867316021.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 1, 0, 0, 0, 1, NULL, 3, 'raw/1720866804795.mp4');
INSERT INTO `b_thing` VALUES (6, '东城区反诈宣传视频', 'cover/1720867322797.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 1, 0, 0, 0, 4, NULL, 3, 'raw/1720866804795.mp4');
INSERT INTO `b_thing` VALUES (7, '天桥区宣传视频', 'cover/1720867330360.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 1, 0, 0, 0, 3, NULL, 3, 'raw/1720866804795.mp4');
INSERT INTO `b_thing` VALUES (8, '社区反诈宣传视频', 'cover/1720867336646.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 1, 0, 0, 0, 2, NULL, 3, 'raw/1720866804795.mp4');
INSERT INTO `b_thing` VALUES (9, '街道反诈宣传视频', 'cover/1720867343341.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 1, 0, 0, 0, 4, NULL, 3, 'raw/1720866804795.mp4');
INSERT INTO `b_thing` VALUES (10, '学校反诈宣传视频', 'cover/1720867349110.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 1, 0, 0, 0, 5, NULL, 3, 'raw/1720866804795.mp4');
INSERT INTO `b_thing` VALUES (11, '幼儿园反诈宣传视频', 'cover/1720867356666.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 1, 0, 0, 0, 4, NULL, 3, 'raw/1720866804795.mp4');
INSERT INTO `b_thing` VALUES (12, '小区反诈宣传视频', 'cover/1720867362953.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', '2024-07-13 18:33:29.907653', 1, 0, 0, 0, 4, NULL, 3, 'raw/1720866804795.mp4');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (1, 2, 2);
INSERT INTO `b_thing_collect` VALUES (2, 4, 2);
INSERT INTO `b_thing_collect` VALUES (3, 4, 4);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (1, 2, 2);
INSERT INTO `b_thing_wish` VALUES (2, 4, 2);
INSERT INTO `b_thing_wish` VALUES (3, 4, 4);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', '231ffds', 'avatar/1720868139566.jpeg', NULL, NULL, NULL, '333', '2024-07-13 18:47:44.771936', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-14 10:34:29.757567', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (4, 'bbb', '08f8e0260c64418510cefb2b06eee5cd', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-14 10:43:30.946643', 0, NULL, 0, NULL, '08f8e0260c64418510cefb2b06eee5cd');
INSERT INTO `b_user` VALUES (5, 'ccc', '9df62e693988eb4e1e1444ece0578579', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-14 10:43:35.310552', 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-07-13 18:18:23.064744');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-07-13 18:18:23.693794');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-07-13 18:18:23.800124');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-07-13 18:18:23.813645');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-13 18:18:23.827643');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-07-13 18:18:23.972359');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-07-13 18:18:24.054030');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-07-13 18:18:24.136934');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-07-13 18:18:24.151056');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-07-13 18:18:24.223097');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-07-13 18:18:24.230098');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-13 18:18:24.243097');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-07-13 18:18:24.327234');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-13 18:18:24.421292');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-07-13 18:18:24.488299');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-07-13 18:18:24.504122');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-13 18:18:24.565540');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-07-13 18:18:26.238976');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-07-13 18:18:26.302851');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-07-13 18:18:26.566094');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-07-13 18:18:26.703957');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240713_1818', '2024-07-13 18:18:27.547428');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-07-13 18:18:27.629996');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_thing_raw', '2024-07-13 18:20:51.857507');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
