/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100428 (10.4.28-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : telesaen_app

 Target Server Type    : MySQL
 Target Server Version : 100428 (10.4.28-MariaDB)
 File Encoding         : 65001

 Date: 07/09/2023 07:35:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `country_id` int NULL DEFAULT NULL,
  `city_id` int NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `address2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `country_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `zip_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of addresses
-- ----------------------------

-- ----------------------------
-- Table structure for billings
-- ----------------------------
DROP TABLE IF EXISTS `billings`;
CREATE TABLE `billings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `address1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `address2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `city` int NULL DEFAULT NULL,
  `zip_code` int NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of billings
-- ----------------------------

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `logo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brands
-- ----------------------------

-- ----------------------------
-- Table structure for carriers
-- ----------------------------
DROP TABLE IF EXISTS `carriers`;
CREATE TABLE `carriers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `delevery_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `logo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carriers
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `main_category_id` int NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 1, 'Misubisi', 'uploads/category/2SUisW9eLwmRlnjG8gBvP36QvDDU1IU07PImMEhS.jpg', '1', 'misubisi', 1, '2023-02-07 10:01:43', '2023-02-07 10:01:43');

-- ----------------------------
-- Table structure for category_courses
-- ----------------------------
DROP TABLE IF EXISTS `category_courses`;
CREATE TABLE `category_courses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_courses
-- ----------------------------
INSERT INTO `category_courses` VALUES (1, 'Khóa giao tiếp trong 3 tháng', 1, NULL, NULL);
INSERT INTO `category_courses` VALUES (2, 'mini course', 1, NULL, '2023-06-07 04:42:36');

-- ----------------------------
-- Table structure for category_product
-- ----------------------------
DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_product
-- ----------------------------

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS `cities`;
CREATE TABLE `cities`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `zip_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cities
-- ----------------------------

-- ----------------------------
-- Table structure for color_product
-- ----------------------------
DROP TABLE IF EXISTS `color_product`;
CREATE TABLE `color_product`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `color_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of color_product
-- ----------------------------

-- ----------------------------
-- Table structure for colors
-- ----------------------------
DROP TABLE IF EXISTS `colors`;
CREATE TABLE `colors`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of colors
-- ----------------------------

-- ----------------------------
-- Table structure for comment_detail
-- ----------------------------
DROP TABLE IF EXISTS `comment_detail`;
CREATE TABLE `comment_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `comment_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` tinyint NULL DEFAULT 1 COMMENT '1 - text content\n2 - text file\n3 - audio\n4 - video\n5 - image',
  `created_time` datetime NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment_detail
-- ----------------------------
INSERT INTO `comment_detail` VALUES (1, 188, 1, 'test', NULL, 1, '2023-08-24 16:29:58');
INSERT INTO `comment_detail` VALUES (2, 1, 1, 'test', NULL, 1, '2023-08-24 16:30:22');
INSERT INTO `comment_detail` VALUES (3, 214, 2, 'I can’t send video my homework for Ms. Please can you help me', NULL, 1, '2023-08-24 23:34:05');
INSERT INTO `comment_detail` VALUES (4, 214, 2, 'Dạ hiện tại em gửi được ảnh chứ kg gửi đc video mặc dù dung lượng mỗi video đc cho phép', NULL, 1, '2023-08-24 23:35:42');
INSERT INTO `comment_detail` VALUES (5, 214, 2, 'Dạ khi em gửi ảnh , trên màn hình ghi done và đánh dấu tích xanh nhưng nhìn trên text box lại không thấy hình đã gửi mặc dù hệ thống đã báo done', NULL, 1, '2023-08-24 23:36:40');
INSERT INTO `comment_detail` VALUES (6, 270, 3, 'Test student', NULL, 1, '2023-08-25 06:58:12');
INSERT INTO `comment_detail` VALUES (8, 270, 3, 'karl-pawlowicz-QUHuwyNgSA0.jpg', 'http://api.telesaenglish.com/uploads/comments/3/nVF4nOd1vwPthcrTle5S-karl-pawlowicz-QUHuwyNgSA0.jpg', 5, '2023-08-25 06:59:20');
INSERT INTO `comment_detail` VALUES (14, 270, 3, 'Test delete file', NULL, 1, '2023-08-25 07:10:30');
INSERT INTO `comment_detail` VALUES (15, 269, 4, 'Erown', NULL, 1, '2023-08-25 08:34:10');
INSERT INTO `comment_detail` VALUES (16, 269, 4, 'Mwore', NULL, 1, '2023-08-25 08:34:20');
INSERT INTO `comment_detail` VALUES (17, 269, 4, 'Taylor', NULL, 1, '2023-08-25 08:34:25');
INSERT INTO `comment_detail` VALUES (18, 269, 4, 'Anderson', NULL, 1, '2023-08-25 08:34:31');
INSERT INTO `comment_detail` VALUES (19, 269, 4, 'Thomas', NULL, 1, '2023-08-25 08:34:35');
INSERT INTO `comment_detail` VALUES (20, 269, 4, 'Atlanta', NULL, 1, '2023-08-25 08:34:41');
INSERT INTO `comment_detail` VALUES (21, 269, 4, 'Geelog', NULL, 1, '2023-08-25 08:34:49');
INSERT INTO `comment_detail` VALUES (22, 269, 4, 'Lipeipool', NULL, 1, '2023-08-25 08:35:26');
INSERT INTO `comment_detail` VALUES (23, 269, 4, 'Orlando', NULL, 1, '2023-08-25 08:35:35');
INSERT INTO `comment_detail` VALUES (24, 269, 4, 'Fremantle', NULL, 1, '2023-08-25 08:35:47');
INSERT INTO `comment_detail` VALUES (31, 92, 5, 'Hi Ms, I am sending a file -date 47 homework', NULL, 1, '2023-08-25 10:23:03');
INSERT INTO `comment_detail` VALUES (32, 92, 5, 'Date 47.docx', 'https://api.telesaenglish.com/uploads/comments/5/NaMUxQb7OHTUAD35aXeE-Date 47.docx', 2, '2023-08-25 11:00:35');
INSERT INTO `comment_detail` VALUES (34, 92, 5, 'Xin chào', NULL, 1, '2023-08-25 11:02:41');
INSERT INTO `comment_detail` VALUES (38, 1, 5, 'Xin chào Năm, mình gõ chữ nào bị mất chữ vậy nhỉ?', NULL, 1, '2023-08-25 11:46:47');
INSERT INTO `comment_detail` VALUES (40, 1, 5, 'ngã ngựa - huyễn hoặc - kiểm tra từ vựng', NULL, 1, '2023-08-25 11:50:02');
INSERT INTO `comment_detail` VALUES (41, 1, 3, 'Thử tính năng comment trên webapp', NULL, 1, '2023-08-25 11:53:30');
INSERT INTO `comment_detail` VALUES (42, 92, 5, 'I\'ve recently replied to y', NULL, 1, '2023-08-25 12:00:59');
INSERT INTO `comment_detail` VALUES (43, 1, 3, '1938CF5B-65F7-4AC9-9127-96A0BA02512C.jpeg', 'http://api.telesaenglish.com/uploads/comments/3/3yvw8jpcwdze36lykFWo-1938CF5B-65F7-4AC9-9127-96A0BA02512C.jpeg', 5, '2023-08-25 12:02:17');
INSERT INTO `comment_detail` VALUES (59, 75, 6, 'Screen_Recording_20230812_202604_Chrome.mp4', 'https://api.telesaenglish.com/uploads/comments/6/z3QfPCwtfQeUgOQNVhws-Screen_Recording_20230812_202604_Chrome.mp4', 4, '2023-08-25 20:40:16');
INSERT INTO `comment_detail` VALUES (60, 75, 6, '20230825_175036.jpg', 'https://api.telesaenglish.com/uploads/comments/6/R4vxTTcK7y99HI7SNvmT-20230825_175036.jpg', 5, '2023-08-25 20:40:31');
INSERT INTO `comment_detail` VALUES (61, 1, 2, 'hi em', NULL, 1, '2023-08-26 08:13:50');
INSERT INTO `comment_detail` VALUES (62, 1, 2, 'em gửi lại cho Ms đi nè', NULL, 1, '2023-08-26 08:13:58');
INSERT INTO `comment_detail` VALUES (63, 1, 4, 'kk', NULL, 1, '2023-08-26 08:14:15');
INSERT INTO `comment_detail` VALUES (64, 1, 4, 'tòi mò quá', NULL, 1, '2023-08-26 08:14:21');
INSERT INTO `comment_detail` VALUES (65, 1, 4, 'chức năng nè chưa có nha em', NULL, 1, '2023-08-26 08:14:30');
INSERT INTO `comment_detail` VALUES (66, 1, 4, 'gần dc sử dụng rồi nè', NULL, 1, '2023-08-26 08:14:42');
INSERT INTO `comment_detail` VALUES (67, 1, 5, 'hi năm', NULL, 1, '2023-08-26 08:15:01');
INSERT INTO `comment_detail` VALUES (68, 1, 5, 'em gửi thêm bài test cho ms nhé', NULL, 1, '2023-08-26 08:15:14');
INSERT INTO `comment_detail` VALUES (69, 75, 1, 'agriculture.mp4', 'https://api.telesaenglish.com/uploads/comments/1/Bl53BX3b1DR69rVHoYU5-agriculture.mp4', 4, '2023-08-26 08:26:33');
INSERT INTO `comment_detail` VALUES (70, 75, 1, 'AT-AIRPORT.mp4', 'https://api.telesaenglish.com/uploads/comments/1/t4xMQw3DqoLpKDbnNHnH-AT-AIRPORT.mp4', 4, '2023-08-26 08:28:30');
INSERT INTO `comment_detail` VALUES (71, 275, 7, 'Hello teacher', NULL, 1, '2023-08-28 13:55:55');
INSERT INTO `comment_detail` VALUES (72, 275, 7, 'Can u help me?', NULL, 1, '2023-08-28 13:56:28');
INSERT INTO `comment_detail` VALUES (73, 274, 7, 'Hi', NULL, 1, '2023-08-28 13:59:27');
INSERT INTO `comment_detail` VALUES (74, 276, 8, 'Hello teacher', NULL, 1, '2023-08-28 14:02:10');
INSERT INTO `comment_detail` VALUES (75, 274, 8, 'Hi', NULL, 1, '2023-08-28 14:03:43');
INSERT INTO `comment_detail` VALUES (78, 275, 7, 'test.mp4', 'https://api.telesaenglish.com/uploads/comments/7/0SsZiZRhI2guwxYqgh8U-test.mp4', 4, '2023-08-28 14:17:39');
INSERT INTO `comment_detail` VALUES (79, 275, 7, 'test.doc', 'https://api.telesaenglish.com/uploads/comments/7/kELJFvHpJYCTNNiyYHyQ-test.doc', 2, '2023-08-28 14:18:25');
INSERT INTO `comment_detail` VALUES (80, 275, 7, 'test.mp3', 'https://api.telesaenglish.com/uploads/comments/7/mXUBQk3t5b6bl6hFcx6P-test.mp3', 3, '2023-08-28 14:18:25');
INSERT INTO `comment_detail` VALUES (84, 1, 6, 'Gửi test', NULL, 1, '2023-08-30 08:20:28');
INSERT INTO `comment_detail` VALUES (85, 1, 6, '20230826_194131.mp4', 'https://api.telesaenglish.com/uploads/comments/6/mPLtKOEbBWQhmsvpLNC9-20230826_194131.mp4', 4, '2023-08-30 08:20:57');
INSERT INTO `comment_detail` VALUES (88, 214, 9, 'IMG_7509.MOV', 'https://api.telesaenglish.com/uploads/comments/9/GXKUzJyL8FwD3FZShgmy-IMG_7509.MOV', 4, '2023-08-30 09:36:25');
INSERT INTO `comment_detail` VALUES (89, 214, 10, 'IMG_7510.MOV', 'https://api.telesaenglish.com/uploads/comments/10/6MAeECbJO6t0uLTAaIu5-IMG_7510.MOV', 4, '2023-08-30 09:42:10');
INSERT INTO `comment_detail` VALUES (90, 214, 10, 'IMG_7496.MOV', 'https://api.telesaenglish.com/uploads/comments/10/OmkjxSyNXEv7tCdBkw85-IMG_7496.MOV', 4, '2023-08-30 09:43:01');
INSERT INTO `comment_detail` VALUES (91, 214, 10, 'IMG_7503.MOV', 'https://api.telesaenglish.com/uploads/comments/10/sU3WLpgA6xRZBtb89EXE-IMG_7503.MOV', 4, '2023-08-30 09:43:29');
INSERT INTO `comment_detail` VALUES (92, 1, 10, 'hi e', NULL, 1, '2023-08-30 09:57:39');
INSERT INTO `comment_detail` VALUES (93, 1, 9, 'hi', NULL, 1, '2023-08-30 09:58:08');
INSERT INTO `comment_detail` VALUES (94, 1, 9, '7794669290550269473.mp4', 'https://api.telesaenglish.com/uploads/comments/9/hqMSCopwReJpDZC0bpal-7794669290550269473.mp4', 4, '2023-08-30 10:13:15');
INSERT INTO `comment_detail` VALUES (95, 1, 9, 'final.mp4', 'https://api.telesaenglish.com/uploads/comments/9/35i2vm1HKalLxI8dEM6K-final.mp4', 4, '2023-08-30 10:30:11');
INSERT INTO `comment_detail` VALUES (96, 1, 8, 'hi em', NULL, 1, '2023-08-30 11:43:19');
INSERT INTO `comment_detail` VALUES (97, 1, 8, 'New Recording 75.m4a', 'https://api.telesaenglish.com/uploads/comments/8/QKsU1Cl9KN1UQn2uW9mB-New Recording 75.m4a', 3, '2023-08-30 16:59:23');
INSERT INTO `comment_detail` VALUES (98, 25, 11, 'Hi Ms, Tính Test gửi file nặng trên PC', NULL, 1, '2023-08-31 13:29:47');
INSERT INTO `comment_detail` VALUES (99, 25, 11, 'Tính test trình duyệt ẩn danh', NULL, 1, '2023-08-31 13:35:35');
INSERT INTO `comment_detail` VALUES (101, 25, 11, 'The MOST UPBEAT & FUN Background Music For Videos and YouTube.mp4', 'https://api.telesaenglish.com/uploads/comments/11/jat7gtThJCqhWBE0hvWN-The MOST UPBEAT & FUN Background Music For Videos and YouTube.mp4', 4, '2023-08-31 13:36:28');
INSERT INTO `comment_detail` VALUES (102, 25, 11, '3472E445-947B-4AB5-B1D5-C0D6829FF6CB.MOV', 'https://api.telesaenglish.com/uploads/comments/11/7LvrtTVGRXOyz5qsgj6l-3472E445-947B-4AB5-B1D5-C0D6829FF6CB.MOV', 4, '2023-08-31 13:37:29');
INSERT INTO `comment_detail` VALUES (103, 25, 11, 'Am-thanh-dem-nguoc-het-gio-www_tiengdong_com.mp3', 'https://api.telesaenglish.com/uploads/comments/11/0ayey6msMQi8bA8GPyNP-Am-thanh-dem-nguoc-het-gio-www_tiengdong_com.mp3', 3, '2023-08-31 13:37:43');
INSERT INTO `comment_detail` VALUES (104, 274, 11, 'airplane_window.mp4', 'https://api.telesaenglish.com/uploads/comments/11/Z6tLwViqZs0mf9QXoKZf-airplane_window.mp4', 4, '2023-09-03 09:37:54');
INSERT INTO `comment_detail` VALUES (105, 274, 11, 'airplane_window.mp4', 'https://api.telesaenglish.com/uploads/comments/11/tniJTdUnA9wema59FCCO-airplane_window.mp4', 4, '2023-09-03 09:42:03');
INSERT INTO `comment_detail` VALUES (106, 274, 11, 'underwater_ripples.mp4', 'https://api.telesaenglish.com/uploads/comments/11/vnlxguWrNcWwD3Ar5dsK-underwater_ripples.mp4', 4, '2023-09-03 09:42:27');
INSERT INTO `comment_detail` VALUES (107, 94, 12, 'Mưa dầm thấm lâu. I like this sentence', NULL, 1, '2023-09-03 21:02:52');
INSERT INTO `comment_detail` VALUES (108, 289, 13, 'can not upload cô ơi', NULL, 1, '2023-09-04 20:47:29');
INSERT INTO `comment_detail` VALUES (109, 289, 14, 'can not upload cô ơi', NULL, 1, '2023-09-04 20:48:34');
INSERT INTO `comment_detail` VALUES (110, 1, 14, 'oh', NULL, 1, '2023-09-04 22:00:00');
INSERT INTO `comment_detail` VALUES (111, 25, 11, 'RPReplay_Final1693841589.mp4', 'http://api.telesaenglish.com/uploads/comments/11/VsZu1uYCgOV3tTL3rgZy-RPReplay_Final1693841589.mp4', 4, '2023-09-04 22:19:58');
INSERT INTO `comment_detail` VALUES (112, 25, 11, 'Upload file video', NULL, 1, '2023-09-04 22:23:06');
INSERT INTO `comment_detail` VALUES (113, 25, 11, 'RPReplay_Final1693841589.MP4', 'http://api.telesaenglish.com/uploads/comments/11/8oB0Y9gSDG1Z7O569uRb-RPReplay_Final1693841589.MP4', 4, '2023-09-04 22:23:45');
INSERT INTO `comment_detail` VALUES (114, 25, 15, 'asdf', NULL, 1, '2023-09-05 08:06:54');
INSERT INTO `comment_detail` VALUES (115, 2, 15, 'asf', NULL, 1, '2023-09-05 08:12:51');
INSERT INTO `comment_detail` VALUES (116, 2, 3, 'hi , this is good', NULL, 1, '2023-09-05 11:15:28');
INSERT INTO `comment_detail` VALUES (117, 1, 12, 'asdf\\', NULL, 1, '2023-09-06 07:24:09');
INSERT INTO `comment_detail` VALUES (118, 1, 12, 'asfasfdasfasfdasdfasf', NULL, 1, '2023-09-06 07:24:32');
INSERT INTO `comment_detail` VALUES (119, 2, 12, 'asdfa', NULL, 1, '2023-09-07 04:07:00');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `lesson_id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'users.id - id of student',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_time` datetime NULL DEFAULT current_timestamp,
  `updated_time` datetime NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_user_lesson`(`lesson_id` ASC, `user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 35, 188, '1,2', '2023-08-24 16:29:58', '2023-09-07 06:55:08');
INSERT INTO `comments` VALUES (2, 88, 214, '2,3', '2023-08-24 23:34:05', '2023-09-07 06:55:10');
INSERT INTO `comments` VALUES (3, 38, 270, '3', '2023-08-25 06:58:12', '2023-09-07 06:55:12');
INSERT INTO `comments` VALUES (4, 35, 269, NULL, '2023-08-25 08:34:10', '2023-09-07 06:54:36');
INSERT INTO `comments` VALUES (5, 188, 92, '1,3', '2023-08-25 10:23:03', '2023-09-07 06:55:14');
INSERT INTO `comments` VALUES (6, 35, 92, '2', '2023-08-25 12:17:23', '2023-09-07 06:55:16');
INSERT INTO `comments` VALUES (7, 101, 275, NULL, '2023-08-28 13:55:55', '2023-08-29 02:18:00');
INSERT INTO `comments` VALUES (8, 101, 276, NULL, '2023-08-28 14:02:10', '2023-09-07 06:54:36');
INSERT INTO `comments` VALUES (9, 90, 214, NULL, '2023-08-30 07:48:10', '2023-08-30 10:30:00');
INSERT INTO `comments` VALUES (10, 91, 214, '2,3', '2023-08-30 07:50:00', '2023-09-07 06:55:19');
INSERT INTO `comments` VALUES (11, 35, 25, NULL, '2023-08-31 13:29:47', '2023-09-07 06:54:36');
INSERT INTO `comments` VALUES (12, 163, 94, NULL, '2023-09-03 21:02:52', '2023-09-07 06:54:36');
INSERT INTO `comments` VALUES (13, 37, 289, '1,2,3', '2023-09-04 20:47:29', '2023-09-07 06:55:22');
INSERT INTO `comments` VALUES (14, 36, 289, '1,2', '2023-09-04 20:48:34', '2023-09-07 06:55:24');
INSERT INTO `comments` VALUES (15, 38, 25, '1,2,3', '2023-09-05 08:06:54', '2023-09-07 06:55:26');

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `address2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `country_id` int NULL DEFAULT NULL,
  `tin` int NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companies
-- ----------------------------

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lng` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `currency` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of countries
-- ----------------------------

-- ----------------------------
-- Table structure for course_lessons
-- ----------------------------
DROP TABLE IF EXISTS `course_lessons`;
CREATE TABLE `course_lessons`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `lesson_id` int NOT NULL,
  `sort_order` float NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_lessons
-- ----------------------------
INSERT INTO `course_lessons` VALUES (69, 7, 95, 69, '2023-05-30 05:25:51', '2023-06-09 12:36:58');
INSERT INTO `course_lessons` VALUES (75, 8, 36, 75, '2023-05-30 06:06:53', '2023-06-09 12:36:58');
INSERT INTO `course_lessons` VALUES (76, 8, 37, 76, '2023-05-30 06:06:53', '2023-06-09 12:36:58');
INSERT INTO `course_lessons` VALUES (77, 8, 38, 77, '2023-05-30 06:06:53', '2023-06-09 12:36:58');
INSERT INTO `course_lessons` VALUES (78, 8, 96, 78, '2023-05-30 06:06:53', '2023-06-09 12:36:58');
INSERT INTO `course_lessons` VALUES (82, 9, 35, 82, '2023-06-05 10:37:05', '2023-06-09 12:36:58');
INSERT INTO `course_lessons` VALUES (83, 9, 36, 83, '2023-06-05 10:37:05', '2023-06-09 12:36:58');
INSERT INTO `course_lessons` VALUES (84, 9, 38, 84, '2023-06-05 10:37:05', '2023-06-09 12:36:58');
INSERT INTO `course_lessons` VALUES (85, 9, 97, 85, '2023-06-05 10:37:05', '2023-06-09 12:36:58');
INSERT INTO `course_lessons` VALUES (89, 4, 35, 90.5, '2023-06-07 04:36:18', '2023-06-09 14:40:03');
INSERT INTO `course_lessons` VALUES (90, 4, 38, 90, '2023-06-07 04:36:18', '2023-06-09 12:36:58');
INSERT INTO `course_lessons` VALUES (91, 4, 40, 91, '2023-06-07 04:36:18', '2023-06-09 12:36:58');
INSERT INTO `course_lessons` VALUES (267, 10, 35, 1, '2023-06-12 14:46:07', '2023-06-12 14:46:07');
INSERT INTO `course_lessons` VALUES (417, 11, 101, 1, '2023-06-19 07:40:27', '2023-06-19 07:40:27');
INSERT INTO `course_lessons` VALUES (418, 11, 102, 1, '2023-06-19 07:40:27', '2023-06-19 07:40:27');
INSERT INTO `course_lessons` VALUES (419, 11, 103, 1, '2023-06-19 07:40:27', '2023-06-19 07:40:27');
INSERT INTO `course_lessons` VALUES (420, 11, 104, 1, '2023-06-19 07:40:27', '2023-06-19 07:40:27');
INSERT INTO `course_lessons` VALUES (421, 11, 108, 1, '2023-06-19 07:40:27', '2023-06-19 07:40:27');
INSERT INTO `course_lessons` VALUES (422, 11, 109, 1, '2023-06-19 07:40:27', '2023-06-19 07:40:27');
INSERT INTO `course_lessons` VALUES (423, 11, 110, 1, '2023-06-19 07:40:27', '2023-06-19 07:40:27');
INSERT INTO `course_lessons` VALUES (424, 11, 111, 1, '2023-06-19 07:40:27', '2023-06-19 07:40:27');
INSERT INTO `course_lessons` VALUES (425, 11, 112, 1, '2023-06-19 07:40:27', '2023-06-19 07:40:27');
INSERT INTO `course_lessons` VALUES (426, 11, 113, 1, '2023-06-19 07:40:27', '2023-06-19 07:40:27');
INSERT INTO `course_lessons` VALUES (427, 11, 114, 1, '2023-06-19 07:40:27', '2023-06-19 07:40:27');
INSERT INTO `course_lessons` VALUES (2957, 1, 35, 2957, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2958, 1, 36, 2958, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2959, 1, 37, 2959, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2960, 1, 38, 2960, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2961, 1, 39, 2961, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2962, 1, 40, 2962, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2963, 1, 41, 2963, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2964, 1, 42, 2964, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2965, 1, 43, 2965, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2966, 1, 44, 2966, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2967, 1, 45, 2967, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2968, 1, 46, 2968, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2969, 1, 47, 2969, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2970, 1, 48, 2970, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2971, 1, 50, 2971, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2972, 1, 51, 2972, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2973, 1, 52, 2973, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2974, 1, 53, 2974, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2975, 1, 54, 2975, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2976, 1, 55, 2976, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2977, 1, 56, 2977, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2978, 1, 57, 2978, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2979, 1, 58, 2979, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2980, 1, 59, 2980, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2981, 1, 60, 2981, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2982, 1, 61, 2982, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2983, 1, 62, 2983, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2984, 1, 63, 2984, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2985, 1, 64, 2985, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2986, 1, 65, 2986, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2987, 1, 66, 2987, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2988, 1, 67, 2988, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2989, 1, 68, 2989, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2990, 1, 69, 2990, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2991, 1, 70, 2991, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2992, 1, 71, 2992, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2993, 1, 72, 2993, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2994, 1, 73, 2994, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2995, 1, 75, 2995, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2996, 1, 76, 2996, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2997, 1, 77, 2997, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2998, 1, 78, 2998, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (2999, 1, 79, 2999, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3000, 1, 80, 3000, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3001, 1, 81, 3001, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3002, 1, 82, 3002, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3003, 1, 83, 3003, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3004, 1, 85, 3004, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3005, 1, 86, 3005, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3006, 1, 87, 3006, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3007, 1, 88, 3007, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3008, 1, 89, 3008, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3009, 1, 90, 3009, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3010, 1, 91, 3010, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3011, 1, 92, 3011, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3012, 1, 94, 3012, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3013, 1, 98, 2994.5, '2023-08-27 18:34:31', '2023-08-27 18:41:30');
INSERT INTO `course_lessons` VALUES (3014, 1, 115, 3014, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3015, 1, 116, 3015, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3016, 1, 117, 3016, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3017, 1, 118, 3017, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3018, 1, 119, 3018, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3019, 1, 120, 3019, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3020, 1, 121, 3020, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3021, 1, 122, 3021, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3022, 1, 123, 3022, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3023, 1, 124, 3023, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3024, 1, 125, 3024, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3025, 1, 126, 3025, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3026, 1, 127, 3026, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3027, 1, 128, 3027, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3028, 1, 129, 3028, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3029, 1, 130, 3029, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3030, 1, 131, 3030, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3031, 1, 132, 3031, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3032, 1, 133, 3032, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3033, 1, 136, 3033, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3034, 1, 137, 3034, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3035, 1, 138, 3035, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3036, 1, 139, 3036, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3037, 1, 140, 3037, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3038, 1, 141, 3038, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3039, 1, 142, 3039, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3040, 1, 143, 3040, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3041, 1, 144, 3041, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3042, 1, 145, 3042, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3043, 1, 146, 3043, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3044, 1, 147, 3044, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3045, 1, 148, 3045, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3046, 1, 149, 3046, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3047, 1, 150, 3047, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3048, 1, 151, 3048, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3049, 1, 152, 3049, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3050, 1, 153, 3050, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3051, 1, 154, 3051, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3052, 1, 155, 3052, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3053, 1, 156, 3053, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3054, 1, 157, 3054, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3055, 1, 158, 3055, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3056, 1, 159, 3056, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3057, 1, 160, 3057, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3058, 1, 161, 3058, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3059, 1, 162, 3059, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3060, 1, 163, 3060, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3061, 1, 164, 3061, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3062, 1, 165, 3062, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3063, 1, 166, 3063, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3064, 1, 167, 3064, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3065, 1, 168, 3065, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3066, 1, 169, 3066, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3067, 1, 170, 3067, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3068, 1, 171, 3068, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3069, 1, 172, 3069, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3070, 1, 173, 3070, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3071, 1, 174, 3071, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3072, 1, 175, 3072, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3073, 1, 176, 3073, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3074, 1, 177, 3074, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3075, 1, 178, 3075, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3076, 1, 179, 3076, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3077, 1, 180, 3077, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3078, 1, 181, 3078, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3079, 1, 182, 3079, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3080, 1, 183, 3080, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3081, 1, 184, 3081, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3082, 1, 185, 3082, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3083, 1, 186, 3083, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3084, 1, 187, 3084, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3085, 1, 188, 3085, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3086, 1, 189, 3086, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3087, 1, 190, 3087, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3088, 1, 191, 3088, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3089, 1, 192, 3089, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3090, 1, 193, 3090, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3091, 1, 194, 3091, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3092, 1, 195, 3092, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3093, 1, 196, 3093, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3094, 1, 197, 3094, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3095, 1, 198, 3095, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3096, 1, 199, 3096, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3097, 1, 200, 3097, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3098, 1, 201, 3098, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3099, 1, 202, 3099, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3100, 1, 203, 3100, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3101, 1, 204, 3101, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3102, 1, 205, 3102, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3103, 1, 206, 3103, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3104, 1, 207, 3104, '2023-08-27 18:34:31', '2023-08-27 18:34:31');
INSERT INTO `course_lessons` VALUES (3105, 1, 208, 3105, '2023-08-27 18:34:31', '2023-08-27 18:34:31');

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` bigint NULL DEFAULT NULL,
  `status` tinyint NULL DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES (1, 1, 'Khóa giao tiếp trong 3 tháng full', 1000000, 1, '2023-05-22 10:08:12', '2023-05-29 18:38:17');
INSERT INTO `courses` VALUES (4, 1, 'Khóa học thử', NULL, 1, '2023-05-29 08:45:08', '2023-05-29 08:45:08');
INSERT INTO `courses` VALUES (10, 2, 'Khóa Học Phát Âm', NULL, 1, '2023-06-11 17:51:08', '2023-06-11 17:51:08');
INSERT INTO `courses` VALUES (11, 2, 'Khóa Từ Vựng', NULL, 1, '2023-06-18 08:44:39', '2023-06-18 08:44:39');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for file_resources
-- ----------------------------
DROP TABLE IF EXISTS `file_resources`;
CREATE TABLE `file_resources`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `pathfile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type_file` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 225 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_resources
-- ----------------------------
INSERT INTO `file_resources` VALUES (6, 'Morning Date 1-file_01', NULL, 'uploads/lessons/morning-date-1/YSpCNmraIgcMhYIVFzDqgYUt8IHlZMFIsQGTFLNG.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (7, 'Morning Date 1-video01', NULL, 'uploads/lessons/morning-date-1/Xmqibs9u2QBaoSJ3iVKGw7TP5cYTxbFbS70GlsOJ.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (8, 'Midday Date 1-file_01', NULL, 'uploads/lessons/midday-date-1/MEb7NafG3BQVfXE4acOQR9uLuzOZOIYM9A8V1nD9.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (9, 'Midday Date 1-video01', NULL, 'uploads/lessons/midday-date-1/peBZCGXvhcn4Mw0DndfW1OXKOgFjoscLB5VH4QNr.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (10, 'Evening Date 1-file_01', NULL, 'uploads/lessons/evening-date-1/TaEcx7r5sUzNBUjC7PhD8X9X1Zxlh4zNbJTJAE5n.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (11, 'Evening Date 1-file02', NULL, 'uploads/lessons/evening-date-1/s0aGrfa4zjIZXcQGgbAwCxpa62YWv8Da3tOUqXU1.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (12, 'Evening Date 1-video01', NULL, 'uploads/lessons/evening-date-1/VhQqkSuHS0PQWBUKyAc0BkZSGWgs9HQwN3CPTUVe.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (13, 'Morning Date 2-file_01', NULL, 'uploads/lessons/morning-date-2/QCuyRzdL4qmyUVjMIkTtmJkwlIwQBwmnE7hcxyN3.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (14, 'Morning Date 2-video01', NULL, 'uploads/lessons/morning-date-2/rQ4xTiycr5ZP4MHI4iFG5X9bg3YA476odV1BDmkw.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (15, 'Midday Date 2-file_01', NULL, 'uploads/lessons/midday-date-2/Ynhw0KB6K3ERE5kKn1ytk95AZdtfHEV8ksNXpese.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (16, 'Midday Date 2-video01', NULL, 'uploads/lessons/midday-date-2/VE2Rk9NrsQqph44ZcJThfJ6wpEbZ7ZuxAlcATYds.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (17, 'Evening Date 2-file_01', NULL, 'uploads/lessons/evening-date-2/0b6sSM52xOVrrIJp8HDl5IkbguupfrfztPpBPrPd.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (18, 'Evening Date 2-video01', NULL, 'uploads/lessons/evening-date-2/bZmFxHuCAntqoq3D2MBfm4Wfcw5F6exRD3r6Rehz.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (19, 'Morning Date 3-file_01', NULL, 'uploads/lessons/morning-date-3/otnwzlPQgAD5U1zn7R4ixLgy2B0DjLAOxydIUhPb.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (20, 'Morning Date 3-video01', NULL, 'uploads/lessons/morning-date-3/YY9kosEn44Nh5httMIXabNANA1Nnsfj1VmLP2qhM.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (21, 'Midday Date 3-file_01', NULL, 'uploads/lessons/midday-date-3/6KnRYERU03rukn8O5jaG87aYC5uvc1XuDIzehtqb.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (22, 'Midday Date 3-video01', NULL, 'uploads/lessons/midday-date-3/TlFG6IbCsBxqhmbPQbVwyuuuDCDu4yup3OvpB6NS.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (23, 'Evening Date 3-video01', NULL, 'uploads/lessons/evening-date-3/rkjNSghLAyiYFueD1ZM54SKcurIOw8HzuAqdgMW4.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (24, 'Morning Date 4-file_01', NULL, 'uploads/lessons/morning-date-4/oMotq3T9TiJItnyIPHzHLS6cjeVqrisO3Ki4zZOz.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (25, 'Morning Date 4-video01', NULL, 'uploads/lessons/morning-date-4/WzMx7yNPTAAOWNuNtJUue9VdvCVurz1TEKUUulRJ.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (26, 'Midday Date 4-file_01', NULL, 'uploads/lessons/midday-date-4/hlxQIatE4one41gKjs9bBWh1tB0zcftUZLtd0hED.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (27, 'Midday Date 4-video01', NULL, 'uploads/lessons/midday-date-4/TwB9CKAWzZR2a1AxLXjjou34FhiTIsVLhy3EVe9g.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (28, 'Evening Date 4-file_01', NULL, 'uploads/lessons/evening-date-4/bNh3NgaqCu8IEV24DVRmD4wYsELptI1x0CuNVvCa.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (29, 'Evening Date 4-video01', NULL, 'uploads/lessons/evening-date-4/D2fcXj9BacA0KdWbEKaV36Da9kGCijVC4JsEHsDW.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (30, 'Morning Date 5-video01', NULL, 'uploads/lessons/morning-date-5/uvxuByYhKOUZPTZG33DSymmvQK0mP8JR221TquYR.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (31, 'Midday Date 5-video01', NULL, 'uploads/lessons/midday-date-5/DX7dz8vLNs6JLCq4cOOfuXT3Ei0h50hkQCpR9cW7.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (32, 'Evening Date 5-video01', NULL, 'uploads/lessons/evening-date-5/5Uqohbyennq8k0DDZYRDTSui1kKdHclksF8oieGp.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (33, 'Morning Date 6-video01', NULL, 'uploads/lessons/morning-date-6/zwJrdZO6wFEmMxKNtxZxTmaacFuOEdNAWFN2yLYu.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (34, 'Midday Date 6-video01', NULL, 'uploads/lessons/midday-date-6/pP3HIv1rzJMM4ZFRvnJuwfUYerFiCzrxcqoYmH01.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (35, 'Evening Date 6-video01', NULL, 'uploads/lessons/evening-date-6/wZmHd9SNHmOaKNQivE4F47XuanIaJu5Uz8J3pp8O.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (36, 'Date 7 - Recording-file_01', NULL, 'uploads/lessons/date-7-recording/ZioUtzKRk4zyWoAjsl6HxGrfWM2dwKvMn33xPSUD.jpg', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (37, 'Morning Date 8-video01', NULL, 'uploads/lessons/morning-date-8/UtqqKER0FdlsyEtdYzWdp7WbhyPRFN86gqFk2nU4.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (38, 'Midday Date 8-video01', NULL, 'uploads/lessons/midday-date-8/tAyM34w29Hg56p08SzDOi3tc4qX9XcLD0yY1QLUu.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (39, 'Evening  Date 8-video01', NULL, 'uploads/lessons/evening-8/e5AcLgHTNad27FoNRSx3O6mRuAbXFGl5A9LWeIh7.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (40, 'Morning Date 9-video01', NULL, 'uploads/lessons/morning-date-9/gc99E1xpFyYV9T2sPAKFAS7m2kMz3m1LnVi4dBJy.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (41, 'Midday Date 9-file_01', NULL, 'uploads/lessons/evening-date-9/ostP6n9ymkzOMtByQ26XnwgFlWs5WvTYIoVDndlt.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (42, 'Midday Date 9-video01', NULL, 'uploads/lessons/evening-date-9/IwlTNksiL1n31ecMgyTkLU24khVFXbMDt0jinYWV.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (43, 'Evening Date 9-file_01', NULL, 'uploads/lessons/evening-date-9/y3FQRg4fpkikVvE8Wmg8dzssqn2QX2XxpRgelkDg.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (44, 'Evening Date 9-video01', NULL, 'uploads/lessons/evening-date-9/EWUcwlNJxKZVaE2vDOd3ELBgjU0NGhgel8VVZZBR.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (45, 'Morning Date 10-file_01', NULL, 'uploads/lessons/morning-date-10/5EvWX607KTmXhiDIXCOM9b2esKQ4t9wD8IZ9Mt2s.mp4', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (46, 'Morning Date 10-video01', NULL, 'uploads/lessons/morning-date-10/NDdouitiikICHnF357DBkqCcOYYpR3DFqtQTTJLG.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (47, 'Midday Date 10-video01', NULL, 'uploads/lessons/midday-date-10/27YD2HLsPfQ4Mn5MbItIT4xyBfSHi7fJuFIIbu0P.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (48, 'Evening Date 10-video01', NULL, 'uploads/lessons/evening-date-10/LfFJU1JBVMZSzCZ05ZC8UcYjvbOXgCF4mb7L75aq.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (49, 'Morning Date 11-video01', NULL, 'uploads/lessons/morning-date-11/gdvUj11sQT0IVSJtmlSV0F5rbhbZAlw1v2U7YKaZ.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (50, 'Midday Date 11-video01', NULL, 'uploads/lessons/midday-date-11/wOyfzAcZQ1ko91Y8VZJay9f4leIgPS2N5naN6Cdy.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (51, 'Evening Date 11-video01', NULL, 'uploads/lessons/evening-date-11/VlCGM2ympiYch5FgvIiTHNiqmOKztaLgLR8wzi9c.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (52, 'Morning Date 12-video01', NULL, 'uploads/lessons/morning-date-12/HAd43qO9OxXm5T021eWZDpUDNfaQBlmIMHNaz1jD.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (53, 'Midday Date  12-video01', NULL, 'uploads/lessons/midday-12/qiC4Hj25BpUHGwuqjOmM8Yb4iMX1xfNwhCLRGFAI.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (54, 'Evening Date 12-video01', NULL, 'uploads/lessons/evening-date-12/qsIUFdV7g6Q4gc7IMcyFRrKN3P9nSMxUIlDWy0FG.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (55, 'Morning Date 13-video01', NULL, 'uploads/lessons/morning-date-13/wPxwF7szdbab3DQuh2VHjQsb2a3yxzJqgX8WKfhQ.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (56, 'Midday  Date 13-video01', NULL, 'uploads/lessons/midday-date-13/RJg0SmKmHtpH5Pyf7RCwXErvETZx6GjgVIJSz2sE.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (57, 'Evening Date 13-video01', NULL, 'uploads/lessons/evening-date-13/fg3gE4OtWijSw2MMB9JMWPrEbCb0grhmYWAJtpjO.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (58, 'Filming yourself - Date 14-file_01', NULL, 'uploads/lessons/filming-yourself-date-14/ShLVgcQJGcX8nn5uWlgYKIQBhXACI1woGtLH1Tr5.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (59, 'Morning Date 15-video01', NULL, 'uploads/lessons/morning-date-15/H6tkP5hXwLkQffhujrillQpSRBOEsXDzihJOtIZB.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (60, 'Midday- Date 15-video01', NULL, 'uploads/lessons/midday-date-15/3D6JBKIwv06NChnNwkiTHklguEbElIgdZogr0AZP.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (61, 'Evening Date 15-file_01', NULL, 'uploads/lessons/evening-date-15/UxNWMAtButaWyv6ahuYdPLDN7OVeGThLMsHXLtoV.jpg', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (62, 'Evening Date 15-video01', NULL, 'uploads/lessons/evening-date-15/TXGsK6pLWU2yZa0iRJBP4e0QYh2U5CjPtKB8y9v5.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (63, 'Morning Date 16-video01', NULL, 'uploads/lessons/morning-date-16/56kPXIDyRX3Ow5VL68NJtQxemqG81RPTGfMlp59P.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (64, 'Midday Date 16-video01', NULL, 'uploads/lessons/midday-date-16/CFH6qqfCj62fDP13cGoLWIOwiDLcDfxA9FPgDKo9.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (65, 'Evening Date 16-video01', NULL, 'uploads/lessons/evening-date-16/SxSj86qnbvLZ3FClCikvez68cmdmdXhOoPlHTvuw.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (66, 'Morning Date 17-video01', NULL, 'uploads/lessons/morning-date-17/lVZVKX3HqBk8hf6zZ1THvY1tV8PjgfgnkZR3SFsB.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (67, 'Midday Date 17-video01', NULL, 'uploads/lessons/midday-date-17/ysrf1Xfdi7sE9Gv9zvbTXUkU9Rh2aVBfxswfeDRm.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (68, 'Evening Date 17-video01', NULL, 'uploads/lessons/evening-date-17/CjZmceW1JPmAfpQW4RygXzmhEDtUATOBqIplbvlJ.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (69, 'Morning Date 18-video01', NULL, 'uploads/lessons/morning-date-18/omukIXZSbYSMWr9LR5leAh1AdekjEoYsZFU3sDZf.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (70, 'Morning Date 18-video01', NULL, 'uploads/lessons/morning-date-18/YaFtsIIdwAZKThkWNJhDeuvI2ZU6WEnTYCu9aJQn.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (71, 'Midday Date 18-video01', NULL, 'uploads/lessons/midday-date-18/qLWjM7Wq4XWz28bDJRGvQy0zVl9enFxEd1EL4ovW.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (72, 'Evening Date 18-video01', NULL, 'uploads/lessons/evening-date-18/lOBC1rQ4nN4IIEaPk3eB9SjDLqJQJ984iWYtkSGG.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (73, 'Morning Date 19-video01', NULL, 'uploads/lessons/morning-date-19/xjsDIBjMkWizEdXeJRJmqldV63Xkb4KBAb1u7Ymj.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (74, 'Midday Date 19-video01', NULL, 'uploads/lessons/midday-date-19/xDs5xrkAdrkXr4RcTCC39vY4oTnysjDr7d5gqkBm.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (75, 'Evening Date 19-file_01', NULL, 'uploads/lessons/evening-date-19/xxMRCdFqW6hbyqn0lOZu9jMFnPR565DCSXcgEWc5.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (76, 'Evening Date 19-video01', NULL, 'uploads/lessons/evening-date-20/H8u1MAsuPz0U5bmZCmZ3oqh6mrp4DeZHLX9De38q.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (77, 'Morning Date 20-video01', NULL, 'uploads/lessons/morning-date-20/qplXmOevLPlqtJrqqb3AsQL48uV8AKk58AGiHqXt.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (78, 'Midday Date 12-video01', NULL, 'uploads/lessons/midday-date-12/qggWf1V68kDABB7dLznb86HGEXfdwkwmKM6dl6Sx.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (79, 'Evening Date 20-video01', NULL, 'uploads/lessons/evening-date-20/otA2b8NQtj8j8LfMhgQvd0qGV1sl96cErkHHv8Gs.mp4', 'mp4', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (80, 'Filming yourself - Date 21-file_01', NULL, 'uploads/lessons/filming-yourself-date-21/xt4fBinmcq7nd9eeRPUd9DKRG1P4AZPvwtzTAdqq.pdf', 'pdf', 1, '2023-05-28 22:39:52', '2023-05-28 22:39:52');
INSERT INTO `file_resources` VALUES (89, 'pr1', '<p>pr1&nbsp;<br></p>', 'uploads/file/u5usHs7m2PRlYX34tIyCyg1Z2fFPA6jLNyaqpTW6.mp4', 'mp4', 1, '2023-06-04 18:46:41', '2023-06-04 18:46:42');
INSERT INTO `file_resources` VALUES (90, 'Morning Date 15 (2nd ver)', '<p>Morning Date 15</p>', 'uploads/file/cNOF2XqD0gWsBnH7yJ4w6wVoeCrYKs70XLPSNFwn.mp4', 'mp4', 1, '2023-06-05 01:06:47', '2023-06-06 19:08:37');
INSERT INTO `file_resources` VALUES (91, 'Pronunciaiton Les.01', '<p>Pronunciation Lession 1</p>', 'uploads/file/OsmtdXRHmNBss3Ll3ZmvVZVYayAJFwsaZiiLY36Q.mp4', 'mp4', 1, '2023-06-11 08:30:15', '2023-06-11 08:30:15');
INSERT INTO `file_resources` VALUES (92, 'Pronunciaiton Les.02', 'Pronunciation Lession 2', 'uploads/file/uuxQ9IxJQpzsIXM3CiQCOzhxLz48lyriLxtOhosK.mp4', 'mp4', 1, '2023-06-11 08:30:33', '2023-06-11 08:30:33');
INSERT INTO `file_resources` VALUES (93, 'Pronunciaiton Les.03', 'Pronunciation Lession 3', 'uploads/file/bgwIPODYLIoes0ynX1wwazuj13wHHV241fqtwIdA.mp4', 'mp4', 1, '2023-06-11 08:31:08', '2023-06-11 08:31:08');
INSERT INTO `file_resources` VALUES (94, 'Pronunciaiton Les.04', '<p>Pronunciation Lession 4<br></p>', 'uploads/file/W7eAAblTwsKooJcfKXnyHnFZ9eICxRn0jJGDQi2w.mp4', 'mp4', 1, '2023-06-11 08:32:18', '2023-06-11 08:32:18');
INSERT INTO `file_resources` VALUES (95, 'Pronunciaiton Les.05', 'Pronunciation Lession 5', 'uploads/file/BQBBAe98ZURFx1KWMU1ROluhEjJWUDwPLRB7vYnk.mp4', 'mp4', 1, '2023-06-11 08:32:36', '2023-06-11 08:32:36');
INSERT INTO `file_resources` VALUES (96, 'Pronunciaiton Les.06', 'Pronunciation Lession 6', 'uploads/file/MQWLltnp3FCY8YVbzKzZo3HLHbHBRWmkSDCYwYcx.mp4', 'mp4', 1, '2023-06-11 08:32:54', '2023-06-11 08:32:54');
INSERT INTO `file_resources` VALUES (97, 'Pronunciaiton Les.07', 'Pronunciation Lession 7', 'uploads/file/PxuCfC6eXphCXHMLH45TdPBDki3E8vyz6KjCpZek.mp4', 'mp4', 1, '2023-06-11 08:37:50', '2023-06-11 08:37:50');
INSERT INTO `file_resources` VALUES (98, 'Pronunciaiton Les.08', 'Pronunciation Lession 8', 'uploads/file/b8fJquguNUY1FhNK8bT5NpYKyroyGUdohQhSpiKW.mp4', 'mp4', 1, '2023-06-11 08:38:08', '2023-06-11 08:38:08');
INSERT INTO `file_resources` VALUES (99, 'Pronunciaiton Les.09', 'Pronunciation Lession 9', 'uploads/file/aJw6PSTdkGHym43uLQ3QJJETW0Q3XyOefFuDVMat.mp4', 'mp4', 1, '2023-06-11 08:38:26', '2023-06-11 08:38:26');
INSERT INTO `file_resources` VALUES (100, 'Pronunciaiton Les.10', 'Pronunciation Lession 10', 'uploads/file/CPrhylULhqYO7rKKLW2gwGgq62rdZ5nIOdIG5Rgp.mp4', 'mp4', 1, '2023-06-11 08:38:42', '2023-06-11 08:38:42');
INSERT INTO `file_resources` VALUES (101, 'Pronunciaiton Les.11', 'Pronunciation Lession 11', 'uploads/file/b9YQLN7FHX4zlVvdUCRESY5vnc0jTZp3MbqCVImM.mp4', 'mp4', 1, '2023-06-11 08:38:55', '2023-06-11 08:38:56');
INSERT INTO `file_resources` VALUES (102, 'Pronunciaiton Les.12', 'Pronunciation Lession 12', 'uploads/file/7ElJjKh7lNhBrgUmUE91uP12M8tn6deYacLl4BNq.mp4', 'mp4', 1, '2023-06-11 08:40:00', '2023-06-11 08:40:00');
INSERT INTO `file_resources` VALUES (103, 'Pronunciaiton Les.13', 'Pronunciation Lession 13', 'uploads/file/7Mgc1Axr8GizCdbIbGksp8llcnRzX6UTfp44gJUm.mp4', 'mp4', 1, '2023-06-11 08:40:20', '2023-06-11 08:40:20');
INSERT INTO `file_resources` VALUES (104, 'Pronunciation Les.15', '<p>Pronunciation Les.15<br></p>', 'uploads/file/RcIcC1KBrGcKr3RM6l5AL4YMnE8l5nnMavE5IfXw.mp4', 'mp4', 1, '2023-06-17 21:53:54', '2023-06-17 21:53:54');
INSERT INTO `file_resources` VALUES (105, 'Pronunciation Les.14', 'Pronunciation Les.14', 'uploads/file/goGZtwPwwWxkq8Uv1KCmAKuEGEojWixXP6VvywTT.mp4', 'mp4', 1, '2023-06-17 21:58:46', '2023-06-17 21:58:46');
INSERT INTO `file_resources` VALUES (106, 'Vocabulary Les 1', '<p>Vocabulary Les 1<br></p>', 'uploads/file/mRBlqa2bXaEYKT3qvBkdtNguBp761sw2g2rqa7Xm.mp4', 'mp4', 1, '2023-06-17 22:00:03', '2023-06-17 22:00:03');
INSERT INTO `file_resources` VALUES (107, 'Vocabulary Les 2', 'Vocabulary Les 2', 'uploads/file/UOKE10c2TxAeZU6aOfp6tPwDdglZS7xDSEIMnJXI.mp4', 'mp4', 1, '2023-06-17 22:00:19', '2023-06-17 22:00:19');
INSERT INTO `file_resources` VALUES (108, 'Vocabulary Les 3', 'Vocabulary Les 3', 'uploads/file/0cvpJWrc7LN2tNjCst8om0zL4kUKrCVFbF3HqevF.mp4', 'mp4', 1, '2023-06-17 22:01:05', '2023-06-17 22:01:05');
INSERT INTO `file_resources` VALUES (109, 'Vocabulary Les 4', '<p>Vocabulary Les 4&nbsp;&nbsp;&nbsp;&nbsp;</p>', 'uploads/file/dKcnxJf8cJDAwmmXhuJaRMXyLntvGu4iDuF8dbzi.mp4', 'mp4', 1, '2023-06-17 22:01:18', '2023-06-17 22:01:18');
INSERT INTO `file_resources` VALUES (110, 'Vocabulary Les 5', '<p>Vocabulary Les 5&nbsp;&nbsp;&nbsp;&nbsp;</p>', 'uploads/file/fBBW8R4Kq5Dltm9QihlKzVOd4KynlsvoQcFr9JdI.mp4', 'mp4', 1, '2023-06-17 22:01:43', '2023-06-17 22:01:43');
INSERT INTO `file_resources` VALUES (111, 'Vocabulary Les 6', 'Vocabulary Les 6', 'uploads/file/xNrgrqFrujq39qx7YsbamM6fq6WXRO7vKHPkyLfb.mp4', 'mp4', 1, '2023-06-17 22:02:05', '2023-06-17 22:02:05');
INSERT INTO `file_resources` VALUES (112, 'Vocabulary Les 7', 'Vocabulary Les 7', 'uploads/file/DfvdH2XzD8HfW9YYGV0m2rVrhcyrf6IAQQUZKvPY.mp4', 'mp4', 1, '2023-06-17 22:02:22', '2023-06-17 22:02:22');
INSERT INTO `file_resources` VALUES (113, 'Vocabulary Les 8', 'Vocabulary Les 8', 'uploads/file/TJdosbsNkgOPiJ3E6vjgledcgGcbNnNUWP1nCJVQ.mp4', 'mp4', 1, '2023-06-17 22:02:42', '2023-06-17 22:02:42');
INSERT INTO `file_resources` VALUES (114, 'Vocabulary Les 9', 'Vocabulary Les 9', 'uploads/file/gdJzG0nw9CXuOqJCPLryLKc1ZneN7np492ozy41n.mp4', 'mp4', 1, '2023-06-17 22:02:58', '2023-06-17 22:02:58');
INSERT INTO `file_resources` VALUES (115, 'Vocabulary Les 10', 'Vocabulary Les 10', 'uploads/file/Wfwzt2AJi2tPWN95BYKUKnzrWwpKQlX11t8GcRrk.mp4', 'mp4', 1, '2023-06-17 22:03:19', '2023-06-17 22:03:19');
INSERT INTO `file_resources` VALUES (116, 'Vocabulary Les 11', 'Vocabulary Les 11', 'uploads/file/XgwmhJAqIz7tDKf0SUAAlnc7iT643dOTadkvmlR6.mp4', 'mp4', 1, '2023-06-17 22:03:37', '2023-06-17 22:03:37');
INSERT INTO `file_resources` VALUES (117, 'Midday 20 Version 2', '<p>Midday 20 Version 2<br></p>', 'uploads/file/9Ngx6RoKtl2Kz2vjzZ5HtUG7Ne6sbVDB2ApKanlK', 'mp4', 1, '2023-06-17 22:51:03', '2023-06-17 22:51:03');
INSERT INTO `file_resources` VALUES (118, 'Morning Date 22', '<p>Morning Date 22<br></p>', 'uploads/file/e2Z2602y64u7wU2FjBGanXkrfmTdROu3iq0NBLhJ.mp4', 'mp4', 1, '2023-06-22 09:38:50', '2023-06-22 09:38:50');
INSERT INTO `file_resources` VALUES (119, 'Midday 22', 'Midday 22', 'uploads/file/TK9OQXqxjWbJrukPaGsSV5PT9nNfht4vYlQnaPkg.mp4', 'mp4', 1, '2023-06-22 09:48:21', '2023-06-22 09:48:21');
INSERT INTO `file_resources` VALUES (120, 'Everning Date 22', 'Everning Date 22', 'uploads/file/aePJu5wPzFjsCaQFSbasN8GaHDOlodCmPUWRi6be.mp4', 'mp4', 1, '2023-06-22 09:48:43', '2023-06-22 09:48:43');
INSERT INTO `file_resources` VALUES (121, 'Morning Date 23', '<p>Morning Date 23<br></p>', 'uploads/file/00yNZ0q0FrFVQCn7zVpwo2klB23l5U3bATDqXKCc.mp4', 'mp4', 1, '2023-06-22 09:54:34', '2023-06-22 09:54:34');
INSERT INTO `file_resources` VALUES (122, 'Mid date 23', 'Mid date 23', 'uploads/file/l9bRPPRzXVjmoqG3FwMAw7lgDRgeWxbN5kHGgOQL.mp4', 'mp4', 1, '2023-06-22 09:55:07', '2023-06-22 10:45:08');
INSERT INTO `file_resources` VALUES (123, 'Everning Date 23', '<p>Everning Date 23<br></p>', 'uploads/file/7cUbfUdXRsGu2wkQJsVQ6t7ytj74h9kPzYBwSqzW.mp4', 'mp4', 1, '2023-06-22 10:24:01', '2023-06-22 10:24:01');
INSERT INTO `file_resources` VALUES (124, 'Morning Date 24', '<p>Morning Date 24</p>', 'uploads/file/YLhirKm3qSah2DE3fON5UeMyssBwFcqxwjrUAv7B.mp4', 'mp4', 1, '2023-06-22 10:45:59', '2023-06-22 10:45:59');
INSERT INTO `file_resources` VALUES (125, 'Mid Date 24', 'Mid Date 24', 'uploads/file/nhEJs7aJv5Z0MKfv5eNnlpaTxT25jhoUoXHQI7S8.mp4', 'mp4', 1, '2023-06-22 10:46:26', '2023-06-22 10:46:26');
INSERT INTO `file_resources` VALUES (126, 'Everning Date 24', '<p>Everning Date 24<br></p>', 'uploads/file/zTaBzUicvm6RFQULaevI1EpsrxeHK985dqdTaGJa.mp4', 'mp4', 1, '2023-06-22 10:48:52', '2023-06-22 10:48:52');
INSERT INTO `file_resources` VALUES (127, 'Morning Date 25', 'Morning Date 25', 'uploads/file/5PQXeicmVRbxOsAdt805zq2FhV9jmLUTvRMs2LbJ.mp4', 'mp4', 1, '2023-06-22 10:49:20', '2023-06-22 10:49:20');
INSERT INTO `file_resources` VALUES (128, 'Morning Date 26', '<p>Morning Date 26<br></p>', 'uploads/file/6WE2gDgwKb89HOngofHyaK6YX2U5KAaMh2nPMFOU.mp4', 'mp4', 1, '2023-06-22 10:56:50', '2023-06-22 10:56:50');
INSERT INTO `file_resources` VALUES (129, 'Everning Date 26', 'Everning Date 26', 'uploads/file/D1LYx6sPqkMInLvT3VXpoEPRHa0sA9GIcRsMRFDN.mp4', 'mp4', 1, '2023-06-22 10:57:23', '2023-06-22 10:57:23');
INSERT INTO `file_resources` VALUES (130, 'Date 27 Morning', '<p>Date 27 Morning<br></p>', 'uploads/file/fKdtHbkzHtXyermHr2WcuT5laBO3fJLgvQ3mvtuM.mp4', 'mp4', 1, '2023-06-22 23:42:53', '2023-06-22 23:42:53');
INSERT INTO `file_resources` VALUES (131, 'Date 27 Midday', 'Date 27 Midday', 'uploads/file/j4VM0KxWgJwWwmXU5oUMHxt9mJP2BggXW82yCJsx.mp4', 'mp4', 1, '2023-06-22 23:43:56', '2023-06-22 23:43:56');
INSERT INTO `file_resources` VALUES (132, 'Date 27 Evening', '<p>Date 27 Evening<br></p>', 'uploads/file/bUDCXEqo2OJr3HxfTLGyF8rHr9PEeyZUwglk0pNa.mp4', 'mp4', 1, '2023-06-24 01:36:48', '2023-06-24 01:36:49');
INSERT INTO `file_resources` VALUES (133, 'Date 28 Morning (Updating)', 'Date 28 Morning', NULL, NULL, 1, '2023-06-24 01:38:10', '2023-06-24 01:38:10');
INSERT INTO `file_resources` VALUES (134, 'Date 28 Midday (Updating)', 'Date 28 Midday', NULL, NULL, 1, '2023-06-24 01:38:28', '2023-06-24 01:38:28');
INSERT INTO `file_resources` VALUES (135, 'Date 28 Evening (Updating)', 'Date 28 Evening (Updating)', NULL, NULL, 1, '2023-06-24 01:39:31', '2023-06-24 01:39:31');
INSERT INTO `file_resources` VALUES (136, 'Date 29 Morning', 'Date 29 Morning', 'uploads/file/kWlk0hLrFd005TzORmBEdgVYGP6z2gFFfYWIRdIf.mp4', 'mp4', 1, '2023-06-24 01:40:23', '2023-06-24 01:40:23');
INSERT INTO `file_resources` VALUES (137, 'Date 29 Midday', 'Date 29 Midday', 'uploads/file/1VncVQnKAaIMdIYfb7r2xqiFz4GP4urk3InjF2JO.mp4', 'mp4', 1, '2023-06-24 01:40:56', '2023-06-24 01:40:56');
INSERT INTO `file_resources` VALUES (138, 'Date 29 Evening', 'Date 29 Evening', 'uploads/file/szr8wJTjPcJNSSsvaXnunqXl0v3QqDGeyuA0QW8G.mp4', 'mp4', 1, '2023-06-24 01:41:54', '2023-06-24 01:41:54');
INSERT INTO `file_resources` VALUES (139, 'Date 30 Morning', 'Date 30 Morning', 'uploads/file/zQJqpoykcjhZzIuxXEaMJOzSNb9f48ip5mIEtXBd.mp4', 'mp4', 1, '2023-06-24 01:42:17', '2023-06-24 01:42:17');
INSERT INTO `file_resources` VALUES (140, 'Date 30 Midday', 'Date 30 Midday', 'uploads/file/wUH4220h1vBJEHwfntAYtSP47ChzdJW5feSHfu9u.mp4', 'mp4', 1, '2023-06-24 01:43:23', '2023-06-24 01:43:23');
INSERT INTO `file_resources` VALUES (141, 'Date 30 Evening', 'Date 30 Evening', 'uploads/file/w3uOkSUQTjMhruLZvQVs9kqsMnZDKVS4aRgEvfi1.mp4', 'mp4', 1, '2023-06-24 01:43:49', '2023-06-24 01:43:49');
INSERT INTO `file_resources` VALUES (142, 'Date 31 Morning', '<p>Date 31 Morning<br></p>', 'uploads/file/xsGwY3UUPTyS0BwbfRWlOGdahzupUPczqkD1E2YU.mp4', 'mp4', 1, '2023-06-24 01:44:34', '2023-06-24 01:44:34');
INSERT INTO `file_resources` VALUES (143, 'Date 31 Midday', 'Date 31 Midday', 'uploads/file/uVlKnBNIoJyJ0YrkYZOtHHlRkjIMNN92QXa4iuZB.mp4', 'mp4', 1, '2023-06-24 01:45:05', '2023-06-24 01:45:05');
INSERT INTO `file_resources` VALUES (144, 'Date 31 Evening', 'Date 31 Evening', 'uploads/file/EPjzZt667nUjwnrtGXRaO4Jokv1kqSYE7QH6fZRZ.mp4', 'mp4', 1, '2023-06-24 01:45:23', '2023-06-24 01:45:23');
INSERT INTO `file_resources` VALUES (145, 'Date 32 Morning', 'Date 32 Morning', 'uploads/file/Rx8bJ0vNCYOvew1NDQqk7Zm0lgCMz05BpN0k4I6Q.mp4', 'mp4', 1, '2023-06-24 01:45:54', '2023-06-24 01:45:54');
INSERT INTO `file_resources` VALUES (146, 'Date 32 Midday', 'Date 32 Midday', 'uploads/file/7o5zIEowvT3jq0jtZcnakbDK8tAtJC566hzLvEe6.mp4', 'mp4', 1, '2023-06-24 01:46:18', '2023-06-24 01:46:18');
INSERT INTO `file_resources` VALUES (147, 'Date 32 Evening', 'Date 32 Evening', 'uploads/file/qvLeReCj6C41CONWcexNd1rhMGjK4R3vjmvL5iIz.mp4', 'mp4', 1, '2023-06-24 01:46:53', '2023-06-24 01:46:53');
INSERT INTO `file_resources` VALUES (148, 'Date 33 Morning', 'Date 33 Morning', 'uploads/file/D3pC3RJIh6J8QS1KWP0FgCMQ5g1tpWNvozC6jVor.mp4', 'mp4', 1, '2023-06-24 01:47:15', '2023-06-24 01:47:15');
INSERT INTO `file_resources` VALUES (149, 'Date 33 Midday', 'Date 33 Midday', 'uploads/file/Bz8t5RTCVY43bkdZQScwLEdhV5oXj5OTswLyHbmC.mp4', 'mp4', 1, '2023-06-24 01:47:34', '2023-06-24 01:47:34');
INSERT INTO `file_resources` VALUES (150, 'Date 33 Evening', 'Date 33 Evening', 'uploads/file/6Ox6MQZdkLM3ajGx62DZedhgWWcGHuGMz8BBnX2s.mp4', 'mp4', 1, '2023-06-24 01:47:53', '2023-06-24 01:47:53');
INSERT INTO `file_resources` VALUES (151, 'Date 34 Morning', '<p>Date 34 Morning<br></p>', 'uploads/file/AYgQUEi4GAbj0XvgozFTZkf8hBGhrVmQdeTlDMcH.mp4', 'mp4', 1, '2023-06-24 01:48:26', '2023-06-24 01:48:26');
INSERT INTO `file_resources` VALUES (152, 'Date 34 Midday', 'Date 34 Midday', 'uploads/file/IeUQEXRfK0WdeyScp6BOvP14fkhc6tmeLxO5bes7.mp4', 'mp4', 1, '2023-06-24 01:48:55', '2023-06-24 01:48:55');
INSERT INTO `file_resources` VALUES (153, 'Date 34 Evening', 'Date 34 Evening', 'uploads/file/PBFVlphO9UO9yCt81Q1uWufFoWvySEaYZe1ZIhg3.mp4', 'mp4', 1, '2023-06-24 01:49:17', '2023-06-24 01:49:17');
INSERT INTO `file_resources` VALUES (154, 'Date 26 Midday (updating)', '<p>Date 26 Midday<br></p>', NULL, NULL, 1, '2023-06-24 01:51:33', '2023-06-24 01:51:33');
INSERT INTO `file_resources` VALUES (155, 'Date 25 Midday (Updating)', 'Date 25 Midday (Updating)', NULL, NULL, 1, '2023-06-24 01:51:56', '2023-06-24 01:51:56');
INSERT INTO `file_resources` VALUES (156, 'Date 25 Evening (Updating)', 'Date 25 Evening (Updating)', NULL, NULL, 1, '2023-06-24 01:52:16', '2023-06-24 01:52:16');
INSERT INTO `file_resources` VALUES (157, 'Morning Date 19', '<p>Morning Date 19</p><div><br></div>', 'uploads/file/mHpFB8JgsYAwNv3wakfsWzFfWPKP6Kc1GEOeQ5Bx.mp4', 'mp4', 1, '2023-06-29 21:29:29', '2023-06-29 21:29:30');
INSERT INTO `file_resources` VALUES (158, 'Evening Date 18 .2', '<p>Evening Date 18 .2<br></p>', 'uploads/file/63TqQ28etblLE7vhlkQvzpr611C6yJ5Wp8vPZbVN.mp4', 'mp4', 1, '2023-06-29 23:12:27', '2023-06-29 23:12:27');
INSERT INTO `file_resources` VALUES (159, 'Date 25 Midday', '<p>Date 25 Midday<br></p>', 'uploads/file/v9cjfMyXk2ErnS5mTomXFIf53g21Y1Qv39kgHTgU.mp4', 'mp4', 1, '2023-07-01 04:17:27', '2023-07-01 04:17:27');
INSERT INTO `file_resources` VALUES (160, 'Date 25 evening', 'Date 25 evening', 'uploads/file/TCGnJBFJOGda7LRNSRtlOQz3lCimGwUQ1rUnlwBB.mp4', 'mp4', 1, '2023-07-01 04:17:51', '2023-07-01 04:17:51');
INSERT INTO `file_resources` VALUES (161, 'Date 28- Filming yourself', '<p>Date 28- Filming yourself<br></p>', 'uploads/file/Pide2Hh0eXLgpvJ4eIa3jyfxHRNhMUiDlTRxXWyv.pdf', 'pdf', 1, '2023-07-02 03:17:39', '2023-07-02 03:17:39');
INSERT INTO `file_resources` VALUES (162, 'Date 35', '<p>Date 35<br></p>', 'uploads/file/hzMKSZPIg3SH9AwBqjFlZ9XH6vb7UGeEgdUke9Za.pdf', 'pdf', 1, '2023-07-14 05:30:09', '2023-07-14 05:30:09');
INSERT INTO `file_resources` VALUES (164, 'Morning class 36', '<p>Morning class 36<br></p>', 'uploads/file/BzS2fQa39opRxuZE7yaxsEqeI57JRbaQGYoDgYj2.mp4', 'mp4', 1, '2023-07-14 05:33:54', '2023-07-14 05:33:54');
INSERT INTO `file_resources` VALUES (165, 'Midday 36', 'Midday 36', 'uploads/file/nHUx4hKCui3487OmWk0aZNFEetVB206HJYqnT5kI.mp4', 'mp4', 1, '2023-07-14 05:37:22', '2023-07-14 05:37:22');
INSERT INTO `file_resources` VALUES (166, 'Evening Date 36', 'Evening Date 36', 'uploads/file/6EknCDpS94aVFC1q93egmfmiVhMYnHlqbelDWqNO.mp4', 'mp4', 1, '2023-07-14 05:37:44', '2023-07-14 05:37:44');
INSERT INTO `file_resources` VALUES (167, 'Morning Date 37', 'Morning Date 37', 'uploads/file/uXldpA1PuAAh0ghzNoSenx3pFChv1xU0016wYR8A.mp4', 'mp4', 1, '2023-07-14 05:40:18', '2023-07-14 05:40:18');
INSERT INTO `file_resources` VALUES (169, 'Evening Date 37', '<p>Evening Date 37<br></p>', 'uploads/file/66H93PiXEmThfbHpjRcGVG4LqqMEBYbekyb2rRCh.mp4', 'mp4', 1, '2023-07-14 05:41:51', '2023-07-14 05:41:51');
INSERT INTO `file_resources` VALUES (170, 'Morning Date 38', '<p>Morning Date 38<br></p>', 'uploads/file/UGV09JUF6Oow3Cw231HuOKN5lyuJ74uKNnzinXOR.mp4', 'mp4', 1, '2023-07-14 05:47:36', '2023-07-14 05:47:36');
INSERT INTO `file_resources` VALUES (171, 'Midday 38', 'Midday 38', 'uploads/file/ZbgZDOnLOBDE1JUVR808rxU3l5mNGTKV91DZyDPQ.mp4', 'mp4', 1, '2023-07-14 05:50:40', '2023-07-14 05:50:40');
INSERT INTO `file_resources` VALUES (172, 'Evening Date 38', 'Evening Date 38', 'uploads/file/ffriWipKjQIU7rmCRhWlhfgwUKiiQzmZVnvE3y4X.mp4', 'mp4', 1, '2023-07-14 05:51:23', '2023-07-14 05:51:23');
INSERT INTO `file_resources` VALUES (173, 'Morning Date 39', '<p>Morning Date 39<br></p>', 'uploads/file/4DbVyPeYfzbRyyCEiKjTVZFx4HttTuUZYIFFFiSc.mp4', 'mp4', 1, '2023-07-14 05:53:41', '2023-07-14 05:53:41');
INSERT INTO `file_resources` VALUES (174, 'Date 37 Midday', '<p>Date 37 Midday<br></p>', 'uploads/file/YqGgwPT15PCb6Rm7utX93ETejbmMZ7poHscKB5wX.mp4', 'mp4', 1, '2023-07-16 03:10:40', '2023-07-16 03:10:41');
INSERT INTO `file_resources` VALUES (175, 'Day 39 Midday', '<p>Day 39 Midday<br></p>', 'uploads/file/PCUWxyBd2qrwKLoEwIhjDp5PNxQNYCzFY75QGPzc.mp4', 'mp4', 1, '2023-07-23 09:49:55', '2023-07-23 09:49:55');
INSERT INTO `file_resources` VALUES (176, 'Date 39 Evening', 'Date 39 Evening', 'uploads/file/vohw22DO5kM8DrHll9GOFX0nUetGLaFuIcq0RPQq.mp4', 'mp4', 1, '2023-07-23 09:50:27', '2023-07-23 09:50:27');
INSERT INTO `file_resources` VALUES (177, 'Date 40 Midday', '<p>Date 40 Midday<br></p>', 'uploads/file/8Bbd1RZPt2ahOZp0WP7AZolrdLG3DU5uqk6fkKRc.mp4', 'mp4', 1, '2023-07-23 10:32:46', '2023-07-23 10:32:46');
INSERT INTO `file_resources` VALUES (179, 'Date 41 Morning', '<p>Date 41 Morning<br></p>', 'uploads/file/fFaLCHEO7t0Z5dC74RFwvyofjnkh71KkiT8Gychv.mp4', 'mp4', 1, '2023-07-23 10:34:57', '2023-07-23 10:34:57');
INSERT INTO `file_resources` VALUES (180, 'Date 41 Evening', 'Date 41 Evening', 'uploads/file/dsGwYDvMGrKP7k92VO7yZ7HjIG6vFNNcZo1aF8uE.mp4', 'mp4', 1, '2023-07-23 10:35:37', '2023-08-03 08:04:39');
INSERT INTO `file_resources` VALUES (181, 'Date 40 Evening', '<p>Date 40 Evening<br></p>', 'uploads/file/gAkVdIIzkCCui6aTl9hZKd8qlegxF3durvpMA8ta.mp4', 'mp4', 1, '2023-07-23 21:29:52', '2023-07-23 21:29:53');
INSERT INTO `file_resources` VALUES (182, 'Date 41 Midday', '<p>Date 41 Midday<br></p>', 'uploads/file/DPkUSrIwTE7diMFETARMlnGpVgCqu5NgdPHvzlqV.mp4', 'mp4', 1, '2023-07-27 05:25:11', '2023-07-27 05:25:12');
INSERT INTO `file_resources` VALUES (184, 'Date 43 Midday', '<p>Date 43 Midday<br></p>', 'uploads/file/rWmzMZKt45iOnTCdBDTjEdU1lU6B3wsXrmuXCtxq.mp4', 'mp4', 1, '2023-07-27 05:47:59', '2023-07-27 05:47:59');
INSERT INTO `file_resources` VALUES (185, 'Day 38 Midday', '<p>Day 38 Midday<br></p>', 'uploads/file/5r4DS13WUcvk0iqxHbIr6h4wdBtbklScZm7pIA2t.mp4', 'mp4', 1, '2023-07-27 08:20:17', '2023-07-27 08:20:17');
INSERT INTO `file_resources` VALUES (187, 'Date 42 - Filming', '<p>Date 42 - Filming<br></p>', 'uploads/file/Ig0b0Cl2O2AyOazo48tvDsPsEisOFgdnNaXcQIS2.pdf', 'pdf', 1, '2023-07-27 08:40:34', '2023-07-27 08:40:34');
INSERT INTO `file_resources` VALUES (188, 'Date 43 Morning', '<p>Date 43 Morning<br></p>', 'uploads/file/0OSB2z7BJHGZYmrM9ylDTSGKTOv12wpEbdi6jcvn.mp4', 'mp4', 1, '2023-07-28 01:03:43', '2023-07-28 01:03:43');
INSERT INTO `file_resources` VALUES (189, 'Date 44 Morning', '<p>Date 44 Morning<br></p>', 'uploads/file/TwAfxymgPawHCk2YGgh0lidFpeIGiAiuYk2YPAFs.mp4', 'mp4', 1, '2023-07-31 01:49:13', '2023-07-31 01:49:14');
INSERT INTO `file_resources` VALUES (190, 'Date 6 Evening - 02', '<p>Date 6 Evening - 02<br></p>', 'uploads/file/R7fdT4pBMmnuBKk6TqfTVpeN4N2yOJL4bA3Uqqfu.mp4', 'mp4', 1, '2023-07-31 06:14:37', '2023-07-31 06:14:37');
INSERT INTO `file_resources` VALUES (191, 'Date 26 Midday', '<p>Date 26 Midday<br></p>', 'uploads/file/W7TRbVHXFll5vNm54QqbH86nClFEUeF8Vya7J0OJ.mp4', 'mp4', 1, '2023-08-05 08:07:16', '2023-08-05 08:07:17');
INSERT INTO `file_resources` VALUES (192, 'Date 43 Evening', '<p>Date 43 Evening<br></p>', 'uploads/file/X36kbdAZkqAXbj3cwqHOjOPoNIsgolub106eLT23.mp4', 'mp4', 1, '2023-08-06 03:00:13', '2023-08-06 03:00:14');
INSERT INTO `file_resources` VALUES (193, 'Date 49 Midday', '<p>Date 49 Midday<br></p>', 'uploads/file/5itR1YGiYhPqgiwhj1q2Ucy1VbQpWoNkqJdL0p34.mp4', 'mp4', 1, '2023-08-06 07:25:04', '2023-08-06 07:25:05');
INSERT INTO `file_resources` VALUES (194, 'Date 50 Midday', 'Date 50 Midday', 'uploads/file/g8Vqfo4IRtdsiF2JqauVENqm0nYLtvPHZcXNJrwq.mp4', 'mp4', 1, '2023-08-06 07:25:59', '2023-08-06 07:25:59');
INSERT INTO `file_resources` VALUES (195, 'Day 44 Evening', '<p>Day 44 Evening<br></p>', 'uploads/file/f78XD1j4II5coN9ACuS5JefDM0yUJYxJ0P2qJXyP.mp4', 'mp4', 1, '2023-08-14 02:47:21', '2023-08-14 02:47:21');
INSERT INTO `file_resources` VALUES (196, 'Day 45 Midday', 'Day 45 Midday', 'uploads/file/EjX93GO0MGpJrQhvUHEgXM5P5Ds5nfTRw4Fi36fb.mp4', 'mp4', 1, '2023-08-14 02:47:38', '2023-08-14 03:07:14');
INSERT INTO `file_resources` VALUES (197, 'Day 44 Midday', '<p>Day 44 Midday<br></p>', 'uploads/file/VuFCIsARwwdxB9huljLgISglhOe2sthxNIKtFt8u.mp4', 'mp4', 1, '2023-08-14 03:01:05', '2023-08-14 03:01:05');
INSERT INTO `file_resources` VALUES (198, 'Day 46 Midday', 'Day 46 Midday', 'uploads/file/qB5y58agPZ0ynvD5lkYJD7Mi0yySCsOx6CETvjM9.mp4', 'mp4', 1, '2023-08-14 03:02:48', '2023-08-14 03:02:48');
INSERT INTO `file_resources` VALUES (199, 'Day 47 Morning', '<p>Day 47 Morning<br></p>', 'uploads/file/OmqasRVFZsoiX00oXb3GWKodjZyCyCvqtYl6OTNW.mp4', 'mp4', 1, '2023-08-14 22:44:18', '2023-08-14 22:44:18');
INSERT INTO `file_resources` VALUES (200, 'Day 40 Morning', 'Day 40 Morning', 'uploads/file/4Ef3thqqj1lalmuHM7Zcv4wEITdX6MWQBvSR0mfL.mp4', 'mp4', 1, '2023-08-14 22:44:33', '2023-08-14 22:44:33');
INSERT INTO `file_resources` VALUES (201, 'Day 45 Evening', 'Day 45 Evening', 'uploads/file/0VMs0FJkHYtgskinCUgFLgDf5PtmEMEzNlYdwOLH.mp4', 'mp4', 1, '2023-08-14 22:44:49', '2023-08-14 22:44:49');
INSERT INTO `file_resources` VALUES (202, 'Day 45 Morning', '<p>Day 45 Morning<br></p>', 'uploads/file/hPA7XnNTbP1z3YYH1SbAuaWYrRcGfVsikVTiusW2.mp4', 'mp4', 1, '2023-08-15 03:41:02', '2023-08-15 03:41:02');
INSERT INTO `file_resources` VALUES (203, 'Day 46 Morning', '<p>Day 46 Morning<br></p>', 'uploads/file/d3YB6QKqLEdHHruztb7U3gc62V3t8CLRu05qHnKU.mp4', 'mp4', 1, '2023-08-16 09:58:03', '2023-08-16 09:58:03');
INSERT INTO `file_resources` VALUES (204, 'Day 46 Evening', 'Day 46 Evening', 'uploads/file/I1YjvBpDL8DObFMRm4UlUJ84rKYaUnORjAhuQ0cR.mp4', 'mp4', 1, '2023-08-16 09:58:24', '2023-08-16 09:58:24');
INSERT INTO `file_resources` VALUES (205, 'Day 47 Midday', '<p>Day 47 Midday<br></p>', 'uploads/file/DTXkRKw4EwHmDrqWtC3yjWotkbxvAFJHHhaRXn6y.mp4', 'mp4', 1, '2023-08-18 10:35:43', '2023-08-18 10:35:43');
INSERT INTO `file_resources` VALUES (206, 'Day 47 Evening', 'Day 47 Evening', 'uploads/file/D6cI32pki98GxAUpLNzo0UFN2id4Aq0Iv8I6ly4a.mp4', 'mp4', 1, '2023-08-18 10:36:07', '2023-08-18 10:36:07');
INSERT INTO `file_resources` VALUES (214, 'Day 48', '<p>Day 48</p>', 'uploads/file/B58BpfeFbWqiNDmyZEulWKdqkUgnYj4JH84GjlgJ.pdf', 'pdf', 1, '2023-08-25 08:15:56', '2023-08-25 08:15:56');
INSERT INTO `file_resources` VALUES (215, 'Day 49 Morning', '<p>Day 49 Morning<br></p>', 'uploads/file/Y7FZzwaO09JANRizU7dJ1bfKgB44GrphGeK3NMfz.mp4', 'mp4', 1, '2023-08-27 06:31:05', '2023-08-27 06:31:06');
INSERT INTO `file_resources` VALUES (216, 'Day 49 Evening', 'Day 49 Evening', 'uploads/file/Hg6Ab6yr7JCbARgwdODT43vr4kf73KOMi2fGNLRx.mp4', 'mp4', 1, '2023-08-27 06:31:25', '2023-08-27 06:31:25');
INSERT INTO `file_resources` VALUES (217, 'Day 51 Evening', '<p>Day 51 Evening<br></p>', 'uploads/file/Ar28MoS8tZXf4Yrk1kmIhsQwnOpWjdRzeXFrAedp.mp4', 'mp4', 1, '2023-08-27 07:24:42', '2023-08-27 07:24:42');
INSERT INTO `file_resources` VALUES (218, 'Day 55- Filming talking about your job', 'Day 55- Filming talking about your job', 'uploads/file/2DIXAvYVkrCZn5z94SSayKpUtujzc8A96HfbTp1F.pdf', 'pdf', 1, '2023-08-27 07:25:51', '2023-08-27 07:25:51');
INSERT INTO `file_resources` VALUES (219, 'Day 51 Midday', '<p>Day 51 Midday<br></p>', 'uploads/file/CC81Ov2yjrgcupU4iaXXTJWqOixojzUqjNzdQZRO.mp4', 'mp4', 1, '2023-08-27 09:10:40', '2023-08-27 09:10:40');
INSERT INTO `file_resources` VALUES (220, 'Day 52 Morning', 'Day 52 Morning', 'uploads/file/m1Taa8s87VQlmOH63F6o5sUlPyUVV07v5COKHoAf.mp4', 'mp4', 1, '2023-08-27 09:10:58', '2023-08-27 09:10:58');
INSERT INTO `file_resources` VALUES (221, 'Day 53 Morning', '<p>Day 53 Morning<br></p>', 'uploads/file/qPDezFS5Azm3XFJCe1cmUPDqaHbcRp2rcZGQGsL7.mp4', 'mp4', 1, '2023-08-28 02:21:54', '2023-08-28 02:21:54');
INSERT INTO `file_resources` VALUES (222, 'Day 50 Morning', '<p>Day 50 Morning<br></p>', 'uploads/file/bc6dmtNJzQPYs2RWGaVOo8OblNnbEJWVNJrpWDUk.mp4', 'mp4', 1, '2023-09-01 23:14:53', '2023-09-01 23:14:54');
INSERT INTO `file_resources` VALUES (223, 'Day 50 Evening', 'Day 50 Evening', 'uploads/file/8iyyFj13kDHchO5fjM47i9HVxYJ1lnXoJRNIyxsF.mp4', 'mp4', 1, '2023-09-01 23:15:13', '2023-09-01 23:15:13');
INSERT INTO `file_resources` VALUES (224, 'Day 54 Evening', 'Day 54 Evening', 'uploads/file/OPYHNwjVjEZkQVlJvf4nKhMzriDSug5gYXkn18zh.mp4', 'mp4', 1, '2023-09-01 23:15:41', '2023-09-01 23:15:41');

-- ----------------------------
-- Table structure for image_product
-- ----------------------------
DROP TABLE IF EXISTS `image_product`;
CREATE TABLE `image_product`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image_product
-- ----------------------------

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------

-- ----------------------------
-- Table structure for labels
-- ----------------------------
DROP TABLE IF EXISTS `labels`;
CREATE TABLE `labels`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of labels
-- ----------------------------
INSERT INTO `labels` VALUES (1, 'Need Help', 1, '2023-09-07 02:38:51', '2023-09-07 02:38:51');
INSERT INTO `labels` VALUES (2, 'Hot fix', 2, '2023-09-07 02:38:51', '2023-09-07 02:38:51');
INSERT INTO `labels` VALUES (3, 'Need', 3, '2023-09-07 02:38:51', '2023-09-07 02:38:51');

-- ----------------------------
-- Table structure for main_categories
-- ----------------------------
DROP TABLE IF EXISTS `main_categories`;
CREATE TABLE `main_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sequence` int NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_categories
-- ----------------------------
INSERT INTO `main_categories` VALUES (1, 'Tủ lạnh', NULL, 'uploads/maincategory/TW8v0CNDc4Fdcok0ANgGiH6ORIFkkF2IkxUFEfhW.png', '1', 'tu-lanh', 1, '2023-02-07 10:01:15', '2023-02-07 10:01:15');

-- ----------------------------
-- Table structure for main_category_product
-- ----------------------------
DROP TABLE IF EXISTS `main_category_product`;
CREATE TABLE `main_category_product`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `main_category_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_category_product
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2021_03_04_082108_create_user_roles_table', 1);
INSERT INTO `migrations` VALUES (5, '2021_03_10_064759_create_countries_table', 1);
INSERT INTO `migrations` VALUES (6, '2021_03_10_064949_create_companies_table', 1);
INSERT INTO `migrations` VALUES (7, '2021_03_10_065150_create_cities_table', 1);
INSERT INTO `migrations` VALUES (8, '2021_03_10_065241_create_addresses_table', 1);
INSERT INTO `migrations` VALUES (9, '2021_03_10_065604_create_main_categories_table', 1);
INSERT INTO `migrations` VALUES (10, '2021_03_10_065658_create_categories_table', 1);
INSERT INTO `migrations` VALUES (11, '2021_03_10_065734_create_sub_categories_table', 1);
INSERT INTO `migrations` VALUES (12, '2021_03_10_070113_create_brands_table', 1);
INSERT INTO `migrations` VALUES (13, '2021_03_10_070228_create_colors_table', 1);
INSERT INTO `migrations` VALUES (14, '2021_03_10_070322_create_sizes_table', 1);
INSERT INTO `migrations` VALUES (15, '2021_03_10_070432_create_units_table', 1);
INSERT INTO `migrations` VALUES (16, '2021_03_10_070627_create_products_table', 1);
INSERT INTO `migrations` VALUES (17, '2021_03_10_071228_create_images_table', 1);
INSERT INTO `migrations` VALUES (18, '2021_03_10_071531_create_statuses_table', 1);
INSERT INTO `migrations` VALUES (19, '2021_03_10_071900_create_orders_table', 1);
INSERT INTO `migrations` VALUES (20, '2021_03_10_072021_create_carriers_table', 1);
INSERT INTO `migrations` VALUES (21, '2021_03_10_072301_create_shippings_table', 1);
INSERT INTO `migrations` VALUES (22, '2021_03_10_072513_create_billings_table', 1);
INSERT INTO `migrations` VALUES (23, '2021_03_10_072835_create_notifications_table', 1);
INSERT INTO `migrations` VALUES (24, '2021_03_10_072953_create_settings_table', 1);
INSERT INTO `migrations` VALUES (25, '2021_03_10_073524_create_reviews_table', 1);
INSERT INTO `migrations` VALUES (26, '2021_03_14_064352_create_writers_table', 1);
INSERT INTO `migrations` VALUES (27, '2021_03_14_064535_create_publications_table', 1);
INSERT INTO `migrations` VALUES (28, '2021_03_19_152738_create_vendors_table', 1);
INSERT INTO `migrations` VALUES (29, '2021_05_08_233520_create_order_products_table', 1);
INSERT INTO `migrations` VALUES (31, '2023_09_06_152649_create_labels_table', 2);

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for order_products
-- ----------------------------
DROP TABLE IF EXISTS `order_products`;
CREATE TABLE `order_products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` int NULL DEFAULT NULL,
  `order_id` int NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  `product_code` int NULL DEFAULT NULL,
  `product_name` int NULL DEFAULT NULL,
  `qty` int NULL DEFAULT NULL,
  `color` int NULL DEFAULT NULL,
  `size` int NULL DEFAULT NULL,
  `price` int NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_products
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `carrier_id` int NULL DEFAULT NULL,
  `invoice_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `invoice_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `delivery_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total_discount` double NULL DEFAULT NULL,
  `tax` double NULL DEFAULT NULL,
  `shipping` double NULL DEFAULT NULL,
  `shipping_tax` double NULL DEFAULT NULL,
  `subtotal` double NULL DEFAULT NULL,
  `total` double NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for product_publication
-- ----------------------------
DROP TABLE IF EXISTS `product_publication`;
CREATE TABLE `product_publication`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `publication_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_publication
-- ----------------------------

-- ----------------------------
-- Table structure for product_size
-- ----------------------------
DROP TABLE IF EXISTS `product_size`;
CREATE TABLE `product_size`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `size_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_size
-- ----------------------------

-- ----------------------------
-- Table structure for product_sub_category
-- ----------------------------
DROP TABLE IF EXISTS `product_sub_category`;
CREATE TABLE `product_sub_category`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_sub_category
-- ----------------------------

-- ----------------------------
-- Table structure for product_unit
-- ----------------------------
DROP TABLE IF EXISTS `product_unit`;
CREATE TABLE `product_unit`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `unit_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_unit
-- ----------------------------

-- ----------------------------
-- Table structure for product_vendor
-- ----------------------------
DROP TABLE IF EXISTS `product_vendor`;
CREATE TABLE `product_vendor`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NULL DEFAULT NULL,
  `vendor_id` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_vendor
-- ----------------------------

-- ----------------------------
-- Table structure for product_writer
-- ----------------------------
DROP TABLE IF EXISTS `product_writer`;
CREATE TABLE `product_writer`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `writer_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_writer
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `brand_id` int NULL DEFAULT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tax` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `sku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `stock` int NULL DEFAULT NULL,
  `discount` double NULL DEFAULT NULL,
  `expiration_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `minimum_amount` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `free_delivery` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `total_view` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `thumb_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------

-- ----------------------------
-- Table structure for publications
-- ----------------------------
DROP TABLE IF EXISTS `publications`;
CREATE TABLE `publications`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of publications
-- ----------------------------

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `rattings` int NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `parent_id` int NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviews
-- ----------------------------

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `logo1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `logo2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `logo3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `watermark_logo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `city` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `zip_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------

-- ----------------------------
-- Table structure for shippings
-- ----------------------------
DROP TABLE IF EXISTS `shippings`;
CREATE TABLE `shippings`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `address1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `address2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `city` int NULL DEFAULT NULL,
  `zip_code` int NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shippings
-- ----------------------------

-- ----------------------------
-- Table structure for sizes
-- ----------------------------
DROP TABLE IF EXISTS `sizes`;
CREATE TABLE `sizes`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sizes
-- ----------------------------

-- ----------------------------
-- Table structure for statuses
-- ----------------------------
DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `serial` int NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statuses
-- ----------------------------

-- ----------------------------
-- Table structure for sub_categories
-- ----------------------------
DROP TABLE IF EXISTS `sub_categories`;
CREATE TABLE `sub_categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `main_category_id` int NULL DEFAULT NULL,
  `category_id` int NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sub_categories
-- ----------------------------
INSERT INTO `sub_categories` VALUES (1, 1, 1, '2 cánh', 'uploads/category/5pzLaM5tXta1WiSEZWp4iWkueHrg5DVhzyj7s9lv.jpg', '1', '2-canh', 1, '2023-02-07 10:01:59', '2023-02-07 10:01:59');

-- ----------------------------
-- Table structure for units
-- ----------------------------
DROP TABLE IF EXISTS `units`;
CREATE TABLE `units`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of units
-- ----------------------------

-- ----------------------------
-- Table structure for user_comments
-- ----------------------------
DROP TABLE IF EXISTS `user_comments`;
CREATE TABLE `user_comments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `comment_id` int NOT NULL,
  `new_comment` tinyint(1) NULL DEFAULT 1 COMMENT '1 - new comment\n0 - old coment',
  `updated_time` datetime NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 526 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_comments
-- ----------------------------
INSERT INTO `user_comments` VALUES (246, 2, 2, 1, '2023-08-26 08:13:58');
INSERT INTO `user_comments` VALUES (247, 75, 2, 1, '2023-08-26 08:13:58');
INSERT INTO `user_comments` VALUES (248, 224, 2, 1, '2023-08-26 08:13:58');
INSERT INTO `user_comments` VALUES (262, 2, 4, 1, '2023-08-26 08:14:42');
INSERT INTO `user_comments` VALUES (263, 75, 4, 1, '2023-08-26 08:14:42');
INSERT INTO `user_comments` VALUES (264, 224, 4, 1, '2023-08-26 08:14:42');
INSERT INTO `user_comments` VALUES (277, 188, 1, 1, '2023-08-26 08:28:30');
INSERT INTO `user_comments` VALUES (279, 2, 1, 1, '2023-08-26 08:28:30');
INSERT INTO `user_comments` VALUES (327, 2, 7, 1, '2023-08-28 14:18:25');
INSERT INTO `user_comments` VALUES (328, 75, 7, 1, '2023-08-28 14:18:25');
INSERT INTO `user_comments` VALUES (329, 224, 7, 1, '2023-08-28 14:18:25');
INSERT INTO `user_comments` VALUES (330, 274, 7, 1, '2023-08-28 14:18:25');
INSERT INTO `user_comments` VALUES (351, 92, 6, 1, '2023-08-30 08:20:57');
INSERT INTO `user_comments` VALUES (352, 2, 6, 1, '2023-08-30 08:20:57');
INSERT INTO `user_comments` VALUES (353, 75, 6, 1, '2023-08-30 08:20:57');
INSERT INTO `user_comments` VALUES (354, 224, 6, 1, '2023-08-30 08:20:57');
INSERT INTO `user_comments` VALUES (355, 274, 6, 1, '2023-08-30 08:20:57');
INSERT INTO `user_comments` VALUES (387, 2, 10, 1, '2023-08-30 09:57:39');
INSERT INTO `user_comments` VALUES (388, 75, 10, 1, '2023-08-30 09:57:39');
INSERT INTO `user_comments` VALUES (389, 224, 10, 1, '2023-08-30 09:57:39');
INSERT INTO `user_comments` VALUES (390, 274, 10, 1, '2023-08-30 09:57:39');
INSERT INTO `user_comments` VALUES (411, 276, 8, 1, '2023-08-30 16:59:23');
INSERT INTO `user_comments` VALUES (412, 2, 8, 1, '2023-08-30 16:59:23');
INSERT INTO `user_comments` VALUES (413, 75, 8, 1, '2023-08-30 16:59:23');
INSERT INTO `user_comments` VALUES (414, 224, 8, 1, '2023-08-30 16:59:23');
INSERT INTO `user_comments` VALUES (415, 274, 8, 1, '2023-08-30 16:59:23');
INSERT INTO `user_comments` VALUES (467, 2, 13, 1, '2023-09-04 20:47:29');
INSERT INTO `user_comments` VALUES (468, 75, 13, 1, '2023-09-04 20:47:29');
INSERT INTO `user_comments` VALUES (469, 224, 13, 1, '2023-09-04 20:47:29');
INSERT INTO `user_comments` VALUES (470, 274, 13, 1, '2023-09-04 20:47:29');
INSERT INTO `user_comments` VALUES (477, 2, 14, 1, '2023-09-04 22:00:00');
INSERT INTO `user_comments` VALUES (478, 75, 14, 1, '2023-09-04 22:00:00');
INSERT INTO `user_comments` VALUES (479, 224, 14, 1, '2023-09-04 22:00:00');
INSERT INTO `user_comments` VALUES (480, 274, 14, 1, '2023-09-04 22:00:00');
INSERT INTO `user_comments` VALUES (506, 270, 3, 1, '2023-09-05 11:15:28');
INSERT INTO `user_comments` VALUES (507, 1, 3, 1, '2023-09-05 11:15:28');
INSERT INTO `user_comments` VALUES (521, 94, 12, 1, '2023-09-07 04:07:00');
INSERT INTO `user_comments` VALUES (522, 1, 12, 1, '2023-09-07 04:07:00');
INSERT INTO `user_comments` VALUES (523, 75, 12, 1, '2023-09-07 04:07:00');
INSERT INTO `user_comments` VALUES (524, 224, 12, 1, '2023-09-07 04:07:00');
INSERT INTO `user_comments` VALUES (525, 274, 12, 1, '2023-09-07 04:07:00');

-- ----------------------------
-- Table structure for user_courses
-- ----------------------------
DROP TABLE IF EXISTS `user_courses`;
CREATE TABLE `user_courses`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 206 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_courses
-- ----------------------------
INSERT INTO `user_courses` VALUES (13, 22, 3, '2023-05-29 10:18:41', '2023-05-29 10:18:41');
INSERT INTO `user_courses` VALUES (14, 22, 2, '2023-05-29 10:18:41', '2023-05-29 10:18:41');
INSERT INTO `user_courses` VALUES (15, 22, 1, '2023-05-29 10:18:41', '2023-05-29 10:18:41');
INSERT INTO `user_courses` VALUES (18, 52, 1, '2023-05-29 18:39:28', '2023-05-29 18:39:28');
INSERT INTO `user_courses` VALUES (19, 38, 1, '2023-05-29 18:39:38', '2023-05-29 18:39:38');
INSERT INTO `user_courses` VALUES (20, 36, 1, '2023-05-29 18:39:43', '2023-05-29 18:39:43');
INSERT INTO `user_courses` VALUES (21, 34, 1, '2023-05-29 18:39:48', '2023-05-29 18:39:48');
INSERT INTO `user_courses` VALUES (22, 29, 1, '2023-05-29 18:39:53', '2023-05-29 18:39:53');
INSERT INTO `user_courses` VALUES (33, 58, 1, '2023-06-01 13:00:29', '2023-06-01 13:00:29');
INSERT INTO `user_courses` VALUES (36, 54, 1, '2023-06-01 13:21:57', '2023-06-01 13:21:57');
INSERT INTO `user_courses` VALUES (39, 73, 1, '2023-06-05 06:20:44', '2023-06-05 06:20:44');
INSERT INTO `user_courses` VALUES (40, 74, 9, '2023-06-05 10:50:00', '2023-06-05 10:50:00');
INSERT INTO `user_courses` VALUES (56, 25, 4, '2023-06-09 05:53:35', '2023-06-09 05:53:35');
INSERT INTO `user_courses` VALUES (57, 25, 1, '2023-06-09 05:53:35', '2023-06-09 05:53:35');
INSERT INTO `user_courses` VALUES (58, 76, 1, '2023-06-10 13:09:58', '2023-06-10 13:09:58');
INSERT INTO `user_courses` VALUES (59, 77, 1, '2023-06-10 13:13:58', '2023-06-10 13:13:58');
INSERT INTO `user_courses` VALUES (60, 78, 1, '2023-06-10 13:18:35', '2023-06-10 13:18:35');
INSERT INTO `user_courses` VALUES (61, 79, 1, '2023-06-10 13:23:31', '2023-06-10 13:23:31');
INSERT INTO `user_courses` VALUES (63, 81, 1, '2023-06-10 13:25:45', '2023-06-10 13:25:45');
INSERT INTO `user_courses` VALUES (64, 82, 1, '2023-06-10 13:35:06', '2023-06-10 13:35:06');
INSERT INTO `user_courses` VALUES (65, 83, 1, '2023-06-10 15:01:47', '2023-06-10 15:01:47');
INSERT INTO `user_courses` VALUES (73, 80, 1, '2023-06-12 14:52:33', '2023-06-12 14:52:33');
INSERT INTO `user_courses` VALUES (78, 84, 1, '2023-06-13 18:07:56', '2023-06-13 18:07:56');
INSERT INTO `user_courses` VALUES (79, 86, 1, '2023-06-14 15:37:05', '2023-06-14 15:37:05');
INSERT INTO `user_courses` VALUES (80, 87, 1, '2023-06-14 15:37:51', '2023-06-14 15:37:51');
INSERT INTO `user_courses` VALUES (82, 89, 1, '2023-06-17 11:07:14', '2023-06-17 11:07:14');
INSERT INTO `user_courses` VALUES (86, 90, 11, '2023-06-18 09:09:16', '2023-06-18 09:09:16');
INSERT INTO `user_courses` VALUES (87, 91, 1, '2023-06-19 15:27:30', '2023-06-19 15:27:30');
INSERT INTO `user_courses` VALUES (88, 92, 1, '2023-06-19 17:07:05', '2023-06-19 17:07:05');
INSERT INTO `user_courses` VALUES (89, 93, 1, '2023-06-20 13:43:01', '2023-06-20 13:43:01');
INSERT INTO `user_courses` VALUES (90, 94, 1, '2023-06-20 15:08:39', '2023-06-20 15:08:39');
INSERT INTO `user_courses` VALUES (91, 95, 1, '2023-06-23 11:17:32', '2023-06-23 11:17:32');
INSERT INTO `user_courses` VALUES (92, 96, 1, '2023-06-23 11:19:01', '2023-06-23 11:19:01');
INSERT INTO `user_courses` VALUES (93, 97, 1, '2023-06-24 08:20:46', '2023-06-24 08:20:46');
INSERT INTO `user_courses` VALUES (95, 108, 1, '2023-06-28 09:53:29', '2023-06-28 09:53:29');
INSERT INTO `user_courses` VALUES (99, 88, 1, '2023-06-29 14:49:26', '2023-06-29 14:49:26');
INSERT INTO `user_courses` VALUES (100, 123, 1, '2023-07-01 08:46:03', '2023-07-01 08:46:03');
INSERT INTO `user_courses` VALUES (101, 124, 1, '2023-07-01 08:46:40', '2023-07-01 08:46:40');
INSERT INTO `user_courses` VALUES (104, 114, 1, '2023-07-01 09:00:12', '2023-07-01 09:00:12');
INSERT INTO `user_courses` VALUES (105, 155, 1, '2023-07-05 06:53:40', '2023-07-05 06:53:40');
INSERT INTO `user_courses` VALUES (106, 156, 1, '2023-07-05 06:54:16', '2023-07-05 06:54:16');
INSERT INTO `user_courses` VALUES (108, 126, 1, '2023-07-05 06:56:36', '2023-07-05 06:56:36');
INSERT INTO `user_courses` VALUES (109, 161, 1, '2023-07-05 14:25:17', '2023-07-05 14:25:17');
INSERT INTO `user_courses` VALUES (110, 162, 1, '2023-07-05 18:16:17', '2023-07-05 18:16:17');
INSERT INTO `user_courses` VALUES (111, 163, 1, '2023-07-05 18:16:49', '2023-07-05 18:16:49');
INSERT INTO `user_courses` VALUES (112, 170, 1, '2023-07-06 07:32:37', '2023-07-06 07:32:37');
INSERT INTO `user_courses` VALUES (113, 171, 1, '2023-07-06 07:42:51', '2023-07-06 07:42:51');
INSERT INTO `user_courses` VALUES (115, 98, 1, '2023-07-06 09:56:11', '2023-07-06 09:56:11');
INSERT INTO `user_courses` VALUES (116, 175, 1, '2023-07-07 21:04:12', '2023-07-07 21:04:12');
INSERT INTO `user_courses` VALUES (117, 176, 1, '2023-07-08 11:40:50', '2023-07-08 11:40:50');
INSERT INTO `user_courses` VALUES (118, 184, 1, '2023-07-10 09:33:25', '2023-07-10 09:33:25');
INSERT INTO `user_courses` VALUES (119, 186, 1, '2023-07-10 13:01:15', '2023-07-10 13:01:15');
INSERT INTO `user_courses` VALUES (124, 55, 1, '2023-07-10 13:50:34', '2023-07-10 13:50:34');
INSERT INTO `user_courses` VALUES (125, 188, 1, '2023-07-10 19:01:19', '2023-07-10 19:01:19');
INSERT INTO `user_courses` VALUES (126, 189, 1, '2023-07-11 09:03:36', '2023-07-11 09:03:36');
INSERT INTO `user_courses` VALUES (127, 190, 1, '2023-07-11 09:04:14', '2023-07-11 09:04:14');
INSERT INTO `user_courses` VALUES (128, 191, 1, '2023-07-11 12:05:48', '2023-07-11 12:05:48');
INSERT INTO `user_courses` VALUES (129, 193, 1, '2023-07-11 17:10:54', '2023-07-11 17:10:54');
INSERT INTO `user_courses` VALUES (130, 195, 1, '2023-07-12 15:34:25', '2023-07-12 15:34:25');
INSERT INTO `user_courses` VALUES (131, 196, 1, '2023-07-14 11:07:55', '2023-07-14 11:07:55');
INSERT INTO `user_courses` VALUES (132, 203, 1, '2023-07-16 10:15:10', '2023-07-16 10:15:10');
INSERT INTO `user_courses` VALUES (133, 204, 1, '2023-07-16 11:48:15', '2023-07-16 11:48:15');
INSERT INTO `user_courses` VALUES (134, 205, 1, '2023-07-17 15:46:33', '2023-07-17 15:46:33');
INSERT INTO `user_courses` VALUES (135, 207, 1, '2023-07-18 16:43:48', '2023-07-18 16:43:48');
INSERT INTO `user_courses` VALUES (136, 208, 1, '2023-07-20 09:12:23', '2023-07-20 09:12:23');
INSERT INTO `user_courses` VALUES (137, 209, 1, '2023-07-20 11:32:55', '2023-07-20 11:32:55');
INSERT INTO `user_courses` VALUES (138, 212, 1, '2023-07-21 07:39:18', '2023-07-21 07:39:18');
INSERT INTO `user_courses` VALUES (139, 214, 1, '2023-07-22 11:44:20', '2023-07-22 11:44:20');
INSERT INTO `user_courses` VALUES (140, 218, 1, '2023-07-23 08:18:34', '2023-07-23 08:18:34');
INSERT INTO `user_courses` VALUES (141, 219, 1, '2023-07-23 10:13:50', '2023-07-23 10:13:50');
INSERT INTO `user_courses` VALUES (142, 220, 1, '2023-07-23 13:31:15', '2023-07-23 13:31:15');
INSERT INTO `user_courses` VALUES (143, 222, 1, '2023-07-24 16:22:35', '2023-07-24 16:22:35');
INSERT INTO `user_courses` VALUES (144, 223, 1, '2023-07-24 18:47:13', '2023-07-24 18:47:13');
INSERT INTO `user_courses` VALUES (149, 225, 1, '2023-07-26 18:49:55', '2023-07-26 18:49:55');
INSERT INTO `user_courses` VALUES (150, 215, 1, '2023-07-26 19:18:53', '2023-07-26 19:18:53');
INSERT INTO `user_courses` VALUES (151, 227, 1, '2023-07-27 13:17:33', '2023-07-27 13:17:33');
INSERT INTO `user_courses` VALUES (152, 228, 1, '2023-07-28 18:05:36', '2023-07-28 18:05:36');
INSERT INTO `user_courses` VALUES (153, 231, 1, '2023-07-28 21:52:29', '2023-07-28 21:52:29');
INSERT INTO `user_courses` VALUES (154, 232, 1, '2023-07-29 15:21:14', '2023-07-29 15:21:14');
INSERT INTO `user_courses` VALUES (155, 233, 1, '2023-07-31 12:44:18', '2023-07-31 12:44:18');
INSERT INTO `user_courses` VALUES (156, 234, 1, '2023-07-31 12:45:43', '2023-07-31 12:45:43');
INSERT INTO `user_courses` VALUES (157, 235, 1, '2023-07-31 15:34:48', '2023-07-31 15:34:48');
INSERT INTO `user_courses` VALUES (158, 241, 1, '2023-08-01 19:12:18', '2023-08-01 19:12:18');
INSERT INTO `user_courses` VALUES (161, 75, 4, '2023-08-03 08:26:20', '2023-08-03 08:26:20');
INSERT INTO `user_courses` VALUES (162, 245, 1, '2023-08-05 22:13:39', '2023-08-05 22:13:39');
INSERT INTO `user_courses` VALUES (163, 246, 1, '2023-08-06 13:39:05', '2023-08-06 13:39:05');
INSERT INTO `user_courses` VALUES (165, 247, 1, '2023-08-06 22:34:04', '2023-08-06 22:34:04');
INSERT INTO `user_courses` VALUES (166, 248, 1, '2023-08-07 11:15:44', '2023-08-07 11:15:44');
INSERT INTO `user_courses` VALUES (167, 251, 1, '2023-08-10 08:55:26', '2023-08-10 08:55:26');
INSERT INTO `user_courses` VALUES (168, 252, 1, '2023-08-10 08:56:04', '2023-08-10 08:56:04');
INSERT INTO `user_courses` VALUES (169, 253, 1, '2023-08-10 08:56:31', '2023-08-10 08:56:31');
INSERT INTO `user_courses` VALUES (170, 254, 1, '2023-08-10 10:00:45', '2023-08-10 10:00:45');
INSERT INTO `user_courses` VALUES (171, 255, 1, '2023-08-10 17:56:14', '2023-08-10 17:56:14');
INSERT INTO `user_courses` VALUES (173, 256, 1, '2023-08-10 22:11:59', '2023-08-10 22:11:59');
INSERT INTO `user_courses` VALUES (179, 257, 1, '2023-08-12 08:49:46', '2023-08-12 08:49:46');
INSERT INTO `user_courses` VALUES (180, 258, 1, '2023-08-12 22:00:37', '2023-08-12 22:00:37');
INSERT INTO `user_courses` VALUES (181, 260, 1, '2023-08-13 17:35:27', '2023-08-13 17:35:27');
INSERT INTO `user_courses` VALUES (182, 261, 1, '2023-08-14 14:40:02', '2023-08-14 14:40:02');
INSERT INTO `user_courses` VALUES (183, 262, 1, '2023-08-14 21:01:19', '2023-08-14 21:01:19');
INSERT INTO `user_courses` VALUES (184, 263, 1, '2023-08-15 12:39:06', '2023-08-15 12:39:06');
INSERT INTO `user_courses` VALUES (185, 264, 1, '2023-08-19 10:20:07', '2023-08-19 10:20:07');
INSERT INTO `user_courses` VALUES (186, 265, 1, '2023-08-20 11:58:13', '2023-08-20 11:58:13');
INSERT INTO `user_courses` VALUES (187, 266, 1, '2023-08-21 14:37:57', '2023-08-21 14:37:57');
INSERT INTO `user_courses` VALUES (188, 267, 1, '2023-08-21 21:27:26', '2023-08-21 21:27:26');
INSERT INTO `user_courses` VALUES (189, 268, 1, '2023-08-22 20:46:39', '2023-08-22 20:46:39');
INSERT INTO `user_courses` VALUES (190, 269, 1, '2023-08-24 09:57:07', '2023-08-24 09:57:07');
INSERT INTO `user_courses` VALUES (192, 271, 1, '2023-08-25 08:25:57', '2023-08-25 08:25:57');
INSERT INTO `user_courses` VALUES (193, 270, 4, '2023-08-25 09:00:03', '2023-08-25 09:00:03');
INSERT INTO `user_courses` VALUES (194, 273, 1, '2023-08-27 16:07:04', '2023-08-27 16:07:04');
INSERT INTO `user_courses` VALUES (199, 275, 11, '2023-08-28 13:53:56', '2023-08-28 13:53:56');
INSERT INTO `user_courses` VALUES (200, 276, 11, '2023-08-28 14:01:15', '2023-08-28 14:01:15');
INSERT INTO `user_courses` VALUES (201, 277, 1, '2023-08-29 09:16:31', '2023-08-29 09:16:31');
INSERT INTO `user_courses` VALUES (202, 278, 1, '2023-08-29 11:30:01', '2023-08-29 11:30:01');
INSERT INTO `user_courses` VALUES (203, 286, 1, '2023-09-01 09:23:08', '2023-09-01 09:23:08');
INSERT INTO `user_courses` VALUES (204, 287, 1, '2023-09-01 13:27:46', '2023-09-01 13:27:46');
INSERT INTO `user_courses` VALUES (205, 289, 1, '2023-09-02 17:11:24', '2023-09-02 17:11:24');

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `serial` int NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES (1, 'super_admin', 1, NULL, 'super_admin', 1, '2023-02-07 07:54:42', '2023-02-07 07:54:42');
INSERT INTO `user_roles` VALUES (2, 'Teacher', 2, '1', 'admin', 1, '2023-02-07 07:54:42', '2023-08-24 22:03:28');
INSERT INTO `user_roles` VALUES (3, 'Tài Khoản bị khóa', 3, '1', 'modarator', 1, '2023-02-07 07:54:42', '2023-03-26 21:59:10');
INSERT INTO `user_roles` VALUES (4, 'Người dùng vãng lai', 4, '1', 'user', 1, '2023-02-07 07:54:42', '2023-03-18 05:54:15');
INSERT INTO `user_roles` VALUES (5, 'Học sinh có tài khoản', 5, '1', 'subscriber', 1, '2023-02-07 07:54:42', '2023-03-18 05:54:53');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL DEFAULT 4,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 293 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 1, 'Mr.Super', 'Admin', 'super_admin', 'avatar.png', '+880 123654789', 'superadmin@gmail.com', NULL, NULL, '$2y$10$ozdwZaje96aoLUnYdh2W7OZ.bzSQs5b/a0rqXbqCQ3oTZF0/Bhrq6', NULL, 'super_admin', 1, 'Z53VmyJWexpjrDs4XxDZBsSEQlxpagRwEz8dOHVkwnob5uwzD5ABGedXLGnQ', '2023-02-07 07:54:20', '2023-02-07 07:54:20');
INSERT INTO `users` VALUES (2, 2, 'Teacher', 'Admin', 'admin', 'avatar.png', '+880 123654789', 'admin@gmail.com', NULL, NULL, '$2y$10$O26DDqrM/sZ3vc5DlwV5/eMQVJtZzW08HQ9QU9OQcad2NXCzwL6..', '1', 'admin', 1, 'ICc3EZldvPho8AOOeKTjHk9y2hklAeb5R130eRsuJraeUNsEjEG4uLJk7Kml', '2023-02-07 07:54:20', '2023-09-05 22:51:14');
INSERT INTO `users` VALUES (3, 3, 'Mr. vua', 'modarator', 'modarator', 'avatar.png', '+880 123654789', 'modarator@gmail.com', NULL, NULL, '$2y$10$TufLu/pJ7hGBtKRDYh8blum52Krfie0ay31MkWTvO.aw9aOGeBHuK', '1', 'modarator', 0, NULL, '2023-02-07 07:54:20', '2023-03-18 06:05:49');
INSERT INTO `users` VALUES (4, 4, 'Mr. vua', 'user', 'user', 'avatar.png', '+880 123654789', 'user@gmail.com', NULL, NULL, '$2y$10$lMGWOf9ud7pOuPs2mH.5R..akq5I.nNSpFbt9MtJLQ7m6c1YtLaDS', '1', 'user', 0, NULL, '2023-02-07 07:54:20', '2023-03-18 06:05:35');
INSERT INTO `users` VALUES (5, 5, 'Mr. vua', 'subscriber', 'subscriber', 'avatar.png', '+880 123654789', 'subscriber@gmail.com', NULL, NULL, '$2y$10$A3nycBu6E/ydNS0ZalOETO3Sqg0pXu5b2RLTlENqHMKg9ZvzhmTsC', '1', 'subscriber', 0, NULL, '2023-02-07 07:54:20', '2023-03-18 06:05:28');
INSERT INTO `users` VALUES (20, 4, 'test', 'dev', 'contact', NULL, '0363264392', 'contact@hubert5555.xyz', NULL, NULL, '$2y$10$iKznuRcknJtmNpepsqBJderapMtJWp1uk2Vnzc.EPF8BdJm1DKxmi', '1', '201063e45a70a1309', 0, NULL, '2023-02-08 20:29:04', '2023-03-18 06:05:21');
INSERT INTO `users` VALUES (21, 4, 'test 02', '03', 'thaihoanganh.1990', NULL, '0363108133', 'thaihoanganh.1990@gmail.com', NULL, NULL, '$2y$10$v5F7EwqIf4MGiE5lXNp6d.jfLz9PnFqxpbclidckqqgBcs7kD.t9C', '1', '211063e45dec75ed8', 0, NULL, '2023-02-08 20:43:56', '2023-03-18 06:05:11');
INSERT INTO `users` VALUES (22, 4, 'Hồng Ngọc', 'Nguyễn', 'nguyenhongngochd1995', NULL, '0967645797', 'nguyenhongngochd1995@gmail.com', NULL, NULL, '$2y$10$4ARi2Zm.dlCHKe.DfjucX.J01QlOzG7UE6wurd0YsEfvgwn9FczgW', '1', '221063f57a72af790', 1, NULL, '2023-02-21 20:14:10', '2023-03-18 08:09:46');
INSERT INTO `users` VALUES (24, 4, 'Giang', 'Lê', 'giangleth04', NULL, '0388556419', 'giangleth04@gmail.com', NULL, NULL, '$2y$10$dVi9DJEf6csAWiqoK91JwenPP9jv92p1O9jxn3n.0c0MSKjLjXa9i', NULL, '241063f783ece068b', 1, NULL, '2023-02-23 09:19:08', '2023-02-23 09:19:08');
INSERT INTO `users` VALUES (25, 5, 'Student', '01', 'student01', 'uploads/user/46KIAGtQptqkKwHY4afTwDjb2Vt9KP4Xh7OetZok.png', NULL, 'student01@gmail.com', NULL, NULL, '$2y$10$3JIDsd80WmUAKzIgtLGaeubvzSAefoZLG8zlCnwrT5rWrBUr1e7my', '1', '2510640bdb7540295', 1, '88lHaoVw0olk6czgdh0lHiWMv8zw6FfVThHFaOh3crWraNYRwW14oGr5isCi', '2023-03-10 19:37:57', '2023-06-08 18:53:35');
INSERT INTO `users` VALUES (26, 4, 'Nguyễn', 'Hoài', 'hoainguyenthi18', NULL, '0337839498', 'hoainguyenthi18@icloud.com', NULL, NULL, '$2y$10$MF.e3ohSVZnCAIUvwIg37u6/K5dY3nQLsq21y64cozudfbi6r1o22', NULL, '2610641122368e6d8', 1, NULL, '2023-03-14 20:41:10', '2023-03-14 20:41:10');
INSERT INTO `users` VALUES (27, 4, 'Flora', 'Duong', 'Tungdung0601', NULL, '0394671332', 'Tungdung0601@gmail.com', NULL, NULL, '$2y$10$aQYb36bebUOPlEutFPzLAeuPM1jBBFu93KjgXVBtrCq1kGt/HMdfy', NULL, '271064151670762d3', 1, NULL, '2023-03-17 20:40:00', '2023-03-17 20:40:00');
INSERT INTO `users` VALUES (29, 5, 'Anh', 'Lê Dũng', 'camcheptuankhoa@gmail.com', 'uploads/user/W70EcD5naCSxj4W6IfVKTwvyIPUoh1aPvct6aBH5.png', '0965272830', 'camcheptuankhoa@gmail.com', NULL, NULL, '$2y$10$m2cR.uYK0e9EdLUex4XAROXSUr0verxQ85FFUdSsCQEP6Z2dfCJHG', '1', '291064152be246871', 1, '9amEwDDldKZN1nl8FPxExDbGDy0JOruun4aZ61pFZQsg3T0RszjgGKvcQMeu', '2023-03-17 22:11:30', '2023-03-18 07:26:10');
INSERT INTO `users` VALUES (33, 4, 'Chị', 'Tường Như', 'tuongnhu1999@icloud.com', 'uploads/user/FhUS4iaecmcNGb5s9i6S4lrNzYmdB1BVDkOSEyFT.png', '07038357274', 'tuongnhu1999@icloud.com', NULL, NULL, '$2y$10$9KPe7X/SWf1h0j2gp0h6tulLcd16D/3ao.KFiVrQ8UMuN24jxGbcm', '1', '331064159de8278a3', 1, '7n96D5ZldhDhKufARj4gJc98yOGYm5ei925tuhpt1SPDKlNzOxB7R3lCqSJ7', '2023-03-18 06:18:00', '2023-03-26 22:57:26');
INSERT INTO `users` VALUES (34, 5, 'Anh', 'Văn Bình', 'Binhnguyenhue.1999@gmail.com', 'uploads/user/fQbbqTv3d1T3NoTzyeKE2oNDi95aoN0MgMicrnUG.png', '0347557203', 'Binhnguyenhue.1999@gmail.com', NULL, NULL, '$2y$10$YY0Wq1pUPrZayNomBptIPuXXPobR.NDnpVz.6T3Dk7ua7jG5UjgLK', '1', '34106415b6a9598ba', 1, NULL, '2023-03-18 08:03:37', '2023-03-18 08:03:37');
INSERT INTO `users` VALUES (35, 4, 'Chị', 'Thuỳ Trang', 'thuytrangvo061983@gmail.com', 'uploads/user/u4wxZMl7Gscv9afTJ4URiVVlFRAXiZDLP86gsonx.jpg', '0909906104', 'thuytrangvo061983@gmail.com', NULL, NULL, '$2y$10$8L6ZUcn8Af1r3fG9Be/Gmu90Ql2OStWqRVo3JZIJqdA5bonqgTHXK', '1', '35106415c2f108b55', 1, 'fRpJYH1IIugYxR12qHO1sa2WOwBVZzMiTNN1Prd5GEMbsn37BFId67T6hsBl', '2023-03-18 08:56:01', '2023-03-26 22:57:06');
INSERT INTO `users` VALUES (36, 5, 'Chị', 'Hồng Hạnh', 'Betho.hyuhnh@gmail.com', 'uploads/user/yDUTyp22gU3nAjwKBqJBdZzEqnbUJNdpUzpLOrxf.jpg', '0905194381', 'Betho.hyuhnh@gmail.com', NULL, NULL, '$2y$10$tlnO6qdB1Z2KKeMAvoiiMuPK29aP5KG9y42oAXioIpYS9f0womHP2', '1', '36106415d557e91d6', 1, 'TfrJDUKVpUdGBhuvKXDt0XGshhvDu902JQpHanEpLJxA7cDpDAzdCorKrJvP', '2023-03-18 10:14:31', '2023-03-18 10:14:32');
INSERT INTO `users` VALUES (37, 4, 'Chị', 'Tranthanhnhan10122003@gmail.com', 'Tranthanhnhan10122003@gmail.com', 'uploads/user/rHI5J8lGfTold3bsWYjdkx5YsjNo0cwaqkITQlUp.jpg', '0342240590', 'Tranthanhnhan10122003@gmail.com', NULL, NULL, '$2y$10$8TD8dGaya.w3gEBx6pAN4uKRKW34eIrqLXVsDBjH1b6st975bhO2a', '1', '3710641d2e6ea98c6', 1, NULL, '2023-03-24 00:00:30', '2023-08-06 04:29:51');
INSERT INTO `users` VALUES (38, 5, 'Anh', 'Đại Nghĩa', 'dainghia210604@gmail.com', NULL, NULL, 'dainghia210604@gmail.com', NULL, NULL, '$2y$10$0i3G6CMaGU.fpyHyMLE17eD6VKtkjKt0wu02Wts1BBSTCUKvfa03y', '1', '381064218dcc8cdf6', 1, NULL, '2023-03-27 07:36:28', '2023-03-27 07:36:28');
INSERT INTO `users` VALUES (39, 4, 'chgvhg', 'gjhbhj', 'kutebuk113', NULL, '0857812936', 'kutebuk113@gmail.com', NULL, NULL, '$2y$10$S.ueKX7UATuOMXO.nT0dC.SkXT/0H0N6aPGqaLwPZ/hJcgRYBVHsO', NULL, '39106428366cc851f', 1, NULL, '2023-04-01 08:49:32', '2023-04-01 08:49:32');
INSERT INTO `users` VALUES (40, 4, 'Cẩm', 'Nhi', 'camnhi', NULL, '0866185267', 'camnhi@gmail.com', NULL, NULL, '$2y$10$JIkzijPfajDzII4hrYNJyeWE7JhptbnsX1igO3upjTHWlav.LiB6a', NULL, '401064300b9a53971', 1, NULL, '2023-04-07 07:24:58', '2023-04-07 07:24:58');
INSERT INTO `users` VALUES (43, 4, 'Chị', 'Loan', 'Loanthao2412@gmail.com', NULL, '0934241289', 'Loanthao2412@gmail.com', NULL, NULL, '$2y$10$eb2BYF4z/0Wz0I7fTTu0VOTYFROQgEuatlJCklJXd5n37uiHRPxXC', '1', '43106435608ea8945', 1, 'ApNHWfissbwWP3Le0vSJY0qZaOIzlWurnhI22TZieXhQzEXcsrRedUwFgh2V', '2023-04-11 08:28:46', '2023-04-12 19:57:14');
INSERT INTO `users` VALUES (44, 4, 'Phú', 'Nguyễn', 'phu2387912', NULL, '0916037918', 'phu2387912@gmail.com', NULL, NULL, '$2y$10$X9SEIp.mJHN9F861W/t4M.GoY0L9nMraTNZ6gmSPA7gDpKrJkjUf6', NULL, '4410643ac09f8327c', 1, NULL, '2023-04-15 10:19:59', '2023-04-15 10:19:59');
INSERT INTO `users` VALUES (46, 4, 'đỗ', 'hung', 'hungcter01', NULL, '0918912742', 'hungcter01@gmail.com', NULL, NULL, '$2y$10$vGh0w3mJAVAzcA99EjOvxu3O3GU.zvQwZOWgkjVEIzTRKuFZbagY.', NULL, '4610643bc4d463436', 1, NULL, '2023-04-16 04:50:12', '2023-04-16 04:50:12');
INSERT INTO `users` VALUES (47, 4, 'Diệu', 'Lại', 'laidieu2509.', NULL, '0933449055', 'laidieu2509.@gmail.com', NULL, NULL, '$2y$10$pRN0rND.edDo4f46jMzHCuchwLwps1op9boi.rbXDLYMEpCPefe0e', NULL, '4710643d1c88d565b', 1, NULL, '2023-04-17 05:16:40', '2023-04-17 05:16:40');
INSERT INTO `users` VALUES (48, 4, 'Diệu', 'Lại', 'laidieu25098.', NULL, '0933449055', 'laidieu25098.@gmail.com', NULL, NULL, '$2y$10$sHvO06qLBu9Iuq.BUOEc9.V/CFITSTy9cUX7xqCwj.t0eGUR09iz6', NULL, '4810643d1c99062ee', 1, NULL, '2023-04-17 05:16:57', '2023-04-17 05:16:57');
INSERT INTO `users` VALUES (49, 4, 'Uyen', 'Nguyen', 'uyennguyenn1996', NULL, '3468551055', 'uyennguyenn1996@gmail.com', NULL, NULL, '$2y$10$.kcxSFXaOWbFFRbv0ijLG.tEmsjVY2d/mtn5fe4AromUigCJY2IB.', NULL, '4910643da1c2c3852', 1, NULL, '2023-04-17 14:45:06', '2023-04-17 14:45:06');
INSERT INTO `users` VALUES (52, 5, 'Chị', 'Huyen Tram', 'hathu682005@gmail.com', NULL, '0396122282', 'hathu682005@gmail.com', NULL, NULL, '$2y$10$JivnFfvsa4N8165CfvljG.GpCd0sgYAu8Y8mdzuJ.N3wQMyAOIpzK', '1', '5210643fbd07f3c0c', 1, '0uvqPq8um81GqvVCgLFxN8jWP9MZgMnOJOmTSWQt3MLNEZPc4JvtRba28i8s', '2023-04-19 05:05:59', '2023-04-19 05:05:59');
INSERT INTO `users` VALUES (53, 4, 'Nguyen', 'Anh', 'nttuanh00', NULL, '0396661831', 'nttuanh00@gmail.com', NULL, NULL, '$2y$10$K7Vmc6SI.4otTfb0aRYfzOuFFFPHxJYL.m.AdthwleO9zguFS2lx.', NULL, '5310644497e99f1e9', 1, NULL, '2023-04-22 21:28:57', '2023-04-22 21:28:57');
INSERT INTO `users` VALUES (54, 4, 'Chi', 'Nghi Quach', 'baonghi240795@gmail.com', NULL, 'baonghi240795@gmail.com', 'baonghi240795@gmail.com', NULL, NULL, '$2y$10$MbANBXdNMdXgjb7XJqbqFe4bhEAXTKLDV7Ut.akj3NOzTXutoVjny', '1', '54106457bad918452', 1, 'h0MLKvvolQyl9OR39gIyZJFaIivOrtAjg8OtcvyNJ72MO8JYQwfrIEFrY9il', '2023-05-07 09:51:05', '2023-06-01 02:21:57');
INSERT INTO `users` VALUES (55, 5, 'Chị', 'Tram Nha sĩ', 'caothuyytramrhm2008@gmail.com', NULL, '0356173996', 'caothuyytramrhm2008@gmail.com', NULL, NULL, '$2y$10$Lx25FI6alU6v0Rumt/R6Bu6CTPt80MCBhvb28QU16KDvlbZpV2XS.', '1', '55106464634abbb69', 1, 'TdwQru9RZOARE4ZxeEmJMNeVG0dTUiU1I16DSic12BkdThIrvCdlZk8zXe7c', '2023-05-17 00:16:58', '2023-07-10 02:50:34');
INSERT INTO `users` VALUES (56, 4, 'Hạ', 'Trân', 'hatran130408', NULL, '0924305932', 'hatran130408@gmail.com', NULL, NULL, '$2y$10$4JUcBNAyI3FWds4NbBnDp.e3en23GCBvS0WdMB8UoCMx3FymSlozi', NULL, '561064648d2c3b4df', 1, NULL, '2023-05-17 03:15:40', '2023-05-17 03:15:40');
INSERT INTO `users` VALUES (58, 5, 'Chị', 'Gno', 'Diepne2608@gmail.com', NULL, '0776570118', 'Diepne2608@gmail.com', NULL, NULL, '$2y$10$3eJE.Achr6o1bQfLOCFq0.nVxJ8EYau/p7o3s3B65uYc1Ms9U1qiC', '1', '58106478400a54a3f', 1, 'YfrfqovocwTdBD3K22XO4LRp8i7fbRV3YORZptzkXGQmZxp9ZOJW5ayeodzy', '2023-06-01 01:51:54', '2023-06-01 02:00:29');
INSERT INTO `users` VALUES (59, 4, 'Nguyễn Đình', 'Quí Nhân', 'Quinhan1234', NULL, '0369955027', 'Quinhan1234@icloud.com', NULL, NULL, '$2y$10$6kU156O6rZCSIMNE.lqAY.xDiVGQQpCq/5LfKyHKpA1iKLh3B/MGC', NULL, '5910647af31c8f69f', 1, NULL, '2023-06-03 03:00:28', '2023-06-03 03:00:28');
INSERT INTO `users` VALUES (73, 5, 'Chị', 'Lan Oanh', 'Lanoanh121020@gmail.com', NULL, '1246 289 3955', 'Lanoanh121020@gmail.com', NULL, NULL, '$2y$10$ZfpbUwIQbTUUlemV0bEQ4OwawB6nJhUg0HI6hjnDArMQYkpQmXFCm', '1', '7310647d29b3c7c51', 1, '4WVnlKOccFbVtC2uUd4YiZTxUMG7zzhdQSbpnci7aeqyC8hyYyV5KGu1S2ZO', '2023-06-04 19:17:55', '2023-06-04 19:20:44');
INSERT INTO `users` VALUES (74, 5, 'Chị', 'A', 'A121020@gmail.com', NULL, NULL, 'A121020@gmail.com', NULL, NULL, '$2y$10$QT.9S6BteQUFe4Ci.N/9iOR1PGpUqfkaXZRwuH4XseDbc6Wi3muYK', '1', '7410647d697869ed3', 1, NULL, '2023-06-04 23:50:00', '2023-06-04 23:50:00');
INSERT INTO `users` VALUES (75, 2, 'Tester', '01', 'tester@gmail.com', NULL, NULL, 'tester@gmail.com', NULL, NULL, '$2y$10$z/zxN9be4yNdR0qBY3OqleZugIAQFW.JMAfUDWmDe6Q4m.FE3Ws3y', '1', '7510647dee3740f69', 1, 'lFFq6R3LOmtmw8mtKkUZvHZdaqyhWRNTxwNozuxrvJ4UhrNkikqhCnkLsrub', '2023-06-05 09:16:23', '2023-08-02 21:26:20');
INSERT INTO `users` VALUES (76, 5, 'Huỳnh Hà', 'Ngọc Dung', 'huynhhangocdung240801@gmail.com', NULL, '0931653687', 'huynhhangocdung240801@gmail.com', NULL, NULL, '$2y$10$1uiCq7IvGzn8H57Kvl5JBeNdmj/x2qQh8gIF33x6MuGiKVm.rIE0e', '1', '7610648421c6aafd8', 1, 'Ydr4ZzxSE8tquD7K678Em8ZyyGwghM2Bf6O7KoCxG2S8gtyYX7rbKQUWEPXC', '2023-06-10 02:09:58', '2023-06-10 02:09:58');
INSERT INTO `users` VALUES (77, 5, 'Nguyễn', 'Vân', 'camvanvn0212@gmail.com', NULL, '0342624725', 'camvanvn0212@gmail.com', NULL, NULL, '$2y$10$S8ZgIL3kBdZevWRG7KAPw.U7.FfT0W7XZAzHA7C88r7n0dhhD/OpK', '1', '7710648422b60ed4f', 1, 'nI9xCf0y4b0BgUkUWw2qKxoK1PwW9aY3iObftgXSftY4I8gyyb30wtOhXUeI', '2023-06-10 02:13:58', '2023-06-10 02:13:58');
INSERT INTO `users` VALUES (78, 5, 'Mỹ', 'Khanh', 'nguyenthimykhanh0999@gmail.com', NULL, '0969990999', 'nguyenthimykhanh0999@gmail.com', NULL, NULL, '$2y$10$sJ9i7uRTm14csghZBBKvd.Hxvl1PhEwi8irx3EdV2Earn/1AE38wC', '1', '7810648423cbd0910', 1, '3VpVGVCqweBwiXBCSifrYuxHUJ5wxEyhqC9q08GPn0tKZS6AKEGvxsftLgM3', '2023-06-10 02:18:35', '2023-06-10 02:18:35');
INSERT INTO `users` VALUES (79, 5, 'Rose', 'Rose', 'chautranthimy989@gmail.com', NULL, '0937430293', 'chautranthimy989@gmail.com', NULL, NULL, '$2y$10$QCahixQ8MrC4JDNiNgwN3ONSfV8tLDAl/gAiLtKeVWj.wSaVm9rVm', '1', '7910648424f3594eb', 1, NULL, '2023-06-10 02:23:31', '2023-06-10 02:23:31');
INSERT INTO `users` VALUES (80, 5, 'Yến', 'Nhi', 'ynhi29061994@gmail.com', NULL, '0967031823', 'ynhi29061994@gmail.com', NULL, NULL, '$2y$10$Wv2P8duGE4TZmoFnuJ5V1ewjZheRfGs8sg3Ew42wGTDtjSif/47H.', '1', '8010648425361df41', 1, '7xEhuJbASwPehzFsbutVCKpLJGvTJITy3X9H2jd4KQhCI9VrZbHFT3fcFpqH', '2023-06-10 02:24:38', '2023-06-12 03:52:33');
INSERT INTO `users` VALUES (81, 5, 'Thanh', 'Ngân', 'thanhngan01012020@gmail.com', NULL, '0764967261', 'thanhngan01012020@gmail.com', NULL, NULL, '$2y$10$ATEr0JzMgGxau97hz55m9OS8WNEh90r75WLdNFBimAsGNsH7oCvi2', '1', '8110648425790a92e', 1, '4fzPEy7Kw6J60lwf8aQKmH0E5mSAnTCCfayd2eU2rJb1rQVlqIeyJCPLK1iC', '2023-06-10 02:25:45', '2023-06-10 02:25:45');
INSERT INTO `users` VALUES (82, 5, 'NGO', 'ANH', 'ngoanhpari@gmail.com', NULL, '0906743641', 'ngoanhpari@gmail.com', NULL, NULL, '$2y$10$qd8fMNL/fd4p2HxduNFAZ.o6CBCT8x8ji5imkQjfrx9i0regFzMym', '1', '8210648427aa78426', 1, 'H95qeaU4c95VfHLh5cSbeEkWRAzq9w4393dHMKlClZpxaGnxfLCJ3hKe2aqf', '2023-06-10 02:35:06', '2023-06-10 02:35:06');
INSERT INTO `users` VALUES (83, 5, 'Hồng', 'Nhung', 'phannguyenhongnhung042000@gmail.com', NULL, '0349063920', 'phannguyenhongnhung042000@gmail.com', NULL, NULL, '$2y$10$2HOCxV0s8/MbWlRYuyVaMO6bArUdg9GMI8l97XIaMkTzgMG8tk32a', '1', '831064843bfb4ef64', 1, NULL, '2023-06-10 04:01:47', '2023-06-10 04:01:47');
INSERT INTO `users` VALUES (84, 5, 'Moni', 'Huynh', 'cat_lovely52@yahoo.com', NULL, '0937234621', 'cat_lovely52@yahoo.com', NULL, NULL, '$2y$10$xzyJXIEPmfC2qXktd6o/nea8Ju4Zb5KS8h6wysCqOzpfvPzj9LQLe', '1', '84106488550f65202', 1, 'ewYwUBBoNFZzWNrmUJ4KaA4eafrko9LHDDagMlrLUTshGMHfntLWpAx6fJOi', '2023-06-13 06:37:51', '2023-06-13 07:07:56');
INSERT INTO `users` VALUES (85, 4, 'Linh', 'Truc', 'lehotruclinh25', NULL, '0339547540', 'lehotruclinh25@gmail.com', NULL, NULL, '$2y$10$B9fyhvZ9S3gePDCY6D8Mnuoc5h4t/gtDHIP6QZgS0CgWkvqc0YEgy', NULL, '851064893091c4cc9', 1, NULL, '2023-06-13 22:14:25', '2023-06-13 22:14:25');
INSERT INTO `users` VALUES (86, 5, 'Hoàng', 'Anh', 'dinhthihoanganh160680@gmail.com', NULL, '0903612420', 'dinhthihoanganh160680@gmail.com', NULL, NULL, '$2y$10$LcqeRI4Rn4eSaWPXGZI5quJqz5wsYNjClGEfn2vMEc5o5YGb//zMO', '1', '861064898a41aec9e', 1, 'GWP7U9qgwtgzS3aTZBXVfOjqCH8bg4nQoCpUfsLxqWSxhlfMaAnwGHnTQSKa', '2023-06-14 04:37:05', '2023-06-14 04:37:05');
INSERT INTO `users` VALUES (87, 5, 'Chị', 'Loan', 'loanlykp@gmail.com', NULL, '0908297888', 'loanlykp@gmail.com', NULL, NULL, '$2y$10$oeUkFIN4gP400MiN4LV8.eJVH1tIE0prMKT38NeetoZ22Re3m3uxy', '1', '871064898a6f94459', 1, 'wh3TEAalzPZD0dKZvnWRlyugfM98UcW3KMP8d5eemMnLgdrYRXA7Mf015N3t', '2023-06-14 04:37:51', '2023-06-14 04:37:51');
INSERT INTO `users` VALUES (88, 4, 'Huyền', 'Nữ', 'Tnhuetri@gmail.com', NULL, '0375659795', 'Tnhuetri@gmail.com', NULL, NULL, '$2y$10$CEteBYAhW.2j7rOZTqRwsulDGBI0tuHLh.V1elJR39YyIamSTbEFy', '1', '8810648bbbfca79a2', 1, NULL, '2023-06-15 20:33:48', '2023-06-29 03:49:26');
INSERT INTO `users` VALUES (89, 5, 'Đại', 'Thành', 'Daithanh240722@gmail.com', NULL, NULL, 'Daithanh240722@gmail.com', NULL, NULL, '$2y$10$6efe5gGOarE/u1zLa/jmw.vnR2j/vZXnlgKjpjio8Uak3S3Z6QHY6', '1', '8910648d3f828c46c', 1, NULL, '2023-06-17 00:07:14', '2023-06-17 00:07:14');
INSERT INTO `users` VALUES (90, 5, 'Anh', 'Hảnh', 'hoantrachqb@gmail.com', NULL, '0869053192', 'hoantrachqb@gmail.com', NULL, NULL, '$2y$10$vKyoc1Oo5bro.5XwpVYlyudSosWrvjNNXwC7Iaaxa8Kaegtk5g.0K', '1', '9010648d43f2c0230', 1, 'fe2v8CGC6DIaWrSxVSwLY9D77R82jqFBcLDu6Z150OS7gzNPaF3BTlvQFhmX', '2023-06-17 00:26:10', '2023-06-17 22:09:16');
INSERT INTO `users` VALUES (91, 5, 'Nhu', 'Phuong', 'nhuphuong@telesaenglish.com', NULL, NULL, 'nhuphuong@telesaenglish.com', NULL, NULL, '$2y$10$sreSzZ/XgxHnBggJtbf0muTNGL7FtysxMEzCmMp7nsZM5UVR4pz1a', '1', '911064901f824a183', 1, 'ZcH5eDjMum7Vbi0wGvQBDQ1MxZiLgiKEwgSMAQx9fhQYktKqfhm0W6Qjzw1E', '2023-06-19 04:27:30', '2023-06-19 04:27:30');
INSERT INTO `users` VALUES (92, 5, 'Lê Thị', 'Thu Năm', 'lethithuna1804@gmail.com', NULL, '0348539969', 'lethithuna1804@gmail.com', NULL, NULL, '$2y$10$sqRSojiJnFAxxMRU5Kjb1ut1JveABkVkHwzA5bGNHtCDekf0c8aBS', '1', '9210649036d9e6b2d', 1, 'toQOVO4tRz1l9hcirEFX1HIG7ghq5ZFu5gYRfXKoIu3kj52B06xpFW0ohCCP', '2023-06-19 06:07:05', '2023-06-19 06:07:05');
INSERT INTO `users` VALUES (93, 5, 'Alex', 'Hoàng', 'Alexhoang2811@gmail.com', NULL, '0985849075', 'Alexhoang2811@gmail.com', NULL, NULL, '$2y$10$xMxYBfUi9AhkPJd5LbmJaO2fP8/4h1lWo.xOVOVZcH.8wRYB2VuFK', '1', '931064915885188ca', 1, 'cNr82il7nZmndVyOT0Dd9vbB3Diy7kwrH9m0JmHioXoKL8yfY3pp10NpWLvd', '2023-06-20 02:43:01', '2023-06-20 02:43:01');
INSERT INTO `users` VALUES (94, 5, 'Nguyễn Văn', 'Tâm', 'ngvantamispace@gmail.com', NULL, '0907 449 087', 'ngvantamispace@gmail.com', NULL, NULL, '$2y$10$n8ql0rCam9q/NUKhga8vbOacjjcXpWIDUvExfEWqgTRWFIUKfBCYq', '1', '941064916c97d36a9', 1, 'mQ2Z4FAwMfA5cGbeg8vC2PmDkikVstLXfu6u00qOSNVYreaJhqjtm7hkElJc', '2023-06-20 04:08:39', '2023-06-20 04:08:39');
INSERT INTO `users` VALUES (95, 5, 'yunying', 'Yunying', 'yunyingdesign@gmail.com', NULL, '0934029786', 'yunyingdesign@gmail.com', NULL, NULL, '$2y$10$LCyhMXq6g178R5uq8O88vOY3f7Av09wDFZpxZHnWM0AuLW7Tx/G82', '1', '951064952aecdb5ed', 1, 'cUjtyweNkEk1F3IEwlH3TGO3gn5TENDLeaG28rYkvA13qIW1b0CcLW9JDxcf', '2023-06-23 00:17:32', '2023-06-23 00:17:32');
INSERT INTO `users` VALUES (96, 5, 'Ngo', 'My', 'Chigia490@gmail.com', NULL, '0986995315', 'Chigia490@gmail.com', NULL, NULL, '$2y$10$kgR8FbFgjIcnMgYEEKqtIOQuaYZxs1pg7Jayrx3L/g.PKViAznK5.', '1', '961064952b450ca22', 1, 'qax5HhaJP5Ly92mYK09lgEiBPiuz3ZwsKv1SOxylW3LqM67ntKKOG2y7rzWR', '2023-06-23 00:19:01', '2023-06-23 00:19:01');
INSERT INTO `users` VALUES (97, 5, 'Lê', 'Hoàng Anh', 'hoanganh5dcvl@gmail.com', NULL, NULL, 'hoanganh5dcvl@gmail.com', NULL, NULL, '$2y$10$uHLg3BMYmA/o6dsCwC26Q.6Advy9rOiWYSzMcpmTIVgP5cLwk3C1u', '1', '9710649652feb7d90', 1, NULL, '2023-06-23 21:20:46', '2023-06-23 21:20:46');
INSERT INTO `users` VALUES (98, 5, 'Vũ', 'Chính', 'Nhakhoaphuongdong@gmail.com', NULL, '0985366688', 'Nhakhoaphuongdong@gmail.com', NULL, NULL, '$2y$10$p8mlKlEeCslpHAuqQXNcPudg/4ACAIOOpOEq1aJjt3pHBodPzpGfS', '1', '9810649653305bd9e', 1, 'TW09B9MCnsd95qOhaWBnkzpKqLIzjb4EAPMBwPsJOsGUQGMB6aeP3pncJYhB', '2023-06-23 21:21:36', '2023-07-05 22:56:11');
INSERT INTO `users` VALUES (99, 4, 'Lê', 'Phương Vy', 'Phuongmai2089', NULL, '0562847890', 'Phuongmai2089@gmail.com', NULL, NULL, '$2y$10$iMHeE43McGApQ4/JQT0UOemtlx3mWaTq5v.8t8i/DWhY3J.tcBM22', NULL, '99106496d20fe68f1', 1, NULL, '2023-06-24 06:22:55', '2023-06-24 06:22:55');
INSERT INTO `users` VALUES (100, 4, 'Lê Phương', 'Vy', 'dawngthiphuongmai', NULL, '0562847890', 'dawngthiphuongmai@gmail.com', NULL, NULL, '$2y$10$GwXy3as/EhERC70W8p9exeti1OX.pE0/dOq5wqnAWD.KK6iitemia', NULL, '100106497b6a3f25b0', 1, NULL, '2023-06-24 22:38:11', '2023-06-24 22:38:11');
INSERT INTO `users` VALUES (104, 4, 'Thư', 'Minh', 'Nguyenthiminhthu.nqd', NULL, '0966993201', 'Nguyenthiminhthu.nqd@gmail.com', NULL, NULL, '$2y$10$Oj6VeX1j0mLcNdxv/Ca1jujTDh/XZfRJbfgGblnUvZAUP8dBdF0gy', NULL, '104106497fe189b691', 1, NULL, '2023-06-25 03:43:04', '2023-06-25 03:43:04');
INSERT INTO `users` VALUES (105, 4, 'Đặng', 'Thị phương mai', 'dawngthiphuongmai.fptshop', NULL, '0962927119', 'dawngthiphuongmai.fptshop@gmail.com', NULL, NULL, '$2y$10$tRnmehDd64pSY.6T0IYM0.DaC5/S2vZM17t5fPUrGlrPlNjSlgi1i', NULL, '10510649832565afdb', 1, NULL, '2023-06-25 07:25:58', '2023-06-25 07:25:58');
INSERT INTO `users` VALUES (107, 4, 'Thìn', 'Huỳnh', 'huynhthithuthin1906', NULL, '0962641300', 'huynhthithuthin1906@gmail.com', NULL, NULL, '$2y$10$Cvjlrc/qmZDwjrl4AHMTO.v454vqNY8tHn81VPY1hXO0fIa4n.7Q.', NULL, '10710649b170be4132', 1, NULL, '2023-06-27 12:06:19', '2023-06-27 12:06:19');
INSERT INTO `users` VALUES (108, 5, 'Chị', 'Teacher phuong', 'teacherphuong@gmail.com', NULL, '090157586970', 'teacherphuong@gmail.com', NULL, NULL, '$2y$10$B0bjJNDHkTR8ZZS6BYhxKuM1J0bmLla2oKue0iq.lkV84edQ1eNNi', '1', '10810649baeb92e27d', 1, 'RtBdtUzSKFvThFNttcdmiAxL6NbD6jectkeA7b03MbsHePfpBNY351h0WQNZ', '2023-06-27 22:53:29', '2023-06-27 22:53:29');
INSERT INTO `users` VALUES (109, 4, 'Ky', 'Doan', 'kykhanhdoan472', NULL, '0764336126', 'kykhanhdoan472@gmail.com', NULL, NULL, '$2y$10$63O7lgTiuO6.iD0hHA5QweQaggASMI93l2r/LV7XdpUkBxUZyap76', NULL, '10910649d0ccc3fffe', 1, NULL, '2023-06-28 23:47:08', '2023-06-28 23:47:08');
INSERT INTO `users` VALUES (110, 4, 'Boi Tram', 'Tran', 'boitramtran', NULL, '0888108105', 'boitramtran@gmail.com', NULL, NULL, '$2y$10$vHv471Q9.I8d28/o/tJRVOwwYv0gZRuJjj7HoJMoyboZIMwS.LNkq', NULL, '11010649d70cbb3c85', 1, NULL, '2023-06-29 06:53:47', '2023-06-29 06:53:47');
INSERT INTO `users` VALUES (111, 4, 'Boi Tram', 'Tran', 'zoetran.telesaenglish', NULL, '888108105', 'zoetran.telesaenglish@gmail.com', NULL, NULL, '$2y$10$W2xN5ddjnaFt1JslDfVOw.7rOnHcXlnjCllfPUlHK2CKyUWZlP46m', NULL, '11110649d715217765', 1, NULL, '2023-06-29 06:56:02', '2023-06-29 06:56:02');
INSERT INTO `users` VALUES (112, 4, 'Thu', 'Ngan', 'Hothungan0708', NULL, '0358188416', 'Hothungan0708@gmail.com', NULL, NULL, '$2y$10$cGRp9mNv74Zd4gSedXn6WeNR1OKsJUr097Ke0RZYzrmknHlDkSjTi', NULL, '11210649e24727fcd1', 1, NULL, '2023-06-29 19:40:18', '2023-06-29 19:40:18');
INSERT INTO `users` VALUES (113, 4, 'Linh', 'Ngọc', 'nlinhkt986', NULL, '0981893396', 'nlinhkt986@gmail.com', NULL, NULL, '$2y$10$73/F1bQ2.1H2Pe5uOdr4w.V1SYq1F.tphgZ6x9cHadVYb8rBL9I8e', NULL, '11310649e260eb20e0', 1, NULL, '2023-06-29 19:47:10', '2023-06-29 19:47:10');
INSERT INTO `users` VALUES (114, 5, 'Phuc', 'nguyen', 'hanhthi92', NULL, '0395841162', 'hanhthi92@gmail.com', NULL, NULL, '$2y$10$MXtlVJjJAEM15x/4ScVA.O/znDopp4AWeclILHgs1gDYYW2mUAPyu', '1', '11410649f740119038', 1, NULL, '2023-06-30 19:32:01', '2023-06-30 22:00:12');
INSERT INTO `users` VALUES (120, 4, 'Trần', 'Linh', 'linhlinh.pm266', NULL, '0762590762', 'linhlinh.pm266@gmail.com', NULL, NULL, '$2y$10$MRzwrGHP9hz1AhUo.JFpBOGR4KW9fy9MEWrFAxtVhpLbGx9l5..I.', NULL, '12010649f7749cdbb1', 1, NULL, '2023-06-30 19:46:01', '2023-06-30 19:46:01');
INSERT INTO `users` VALUES (123, 5, 'Anh', 'Ba', 'caubacaonhi73@gmail.com', NULL, '0389898168', 'caubacaonhi73@gmail.com', NULL, NULL, '$2y$10$cOIkyNVKX5SGJzmJuY3m9O3vrFDNU2ucyaJZRfyuhtS29dL/0aUkm', '1', '12310649f936b9c2a9', 1, NULL, '2023-06-30 21:46:03', '2023-06-30 21:46:03');
INSERT INTO `users` VALUES (124, 5, 'Coach', 'Tuấn Anh', 'Coachericngo@gmail.com', NULL, '0909481094', 'Coachericngo@gmail.com', NULL, NULL, '$2y$10$ZBGW.inYH9OpsmGMx7uwF.CsA10Z2ZUTEgpBr/D52o3a.JDesEmj2', '1', '12410649f9390e9204', 1, NULL, '2023-06-30 21:46:40', '2023-06-30 21:46:40');
INSERT INTO `users` VALUES (125, 4, 'Đoàn', 'Khanh', 'Khanhdoans21140', NULL, '0316080467', 'Khanhdoans21140@gmail.com', NULL, NULL, '$2y$10$ccjEYhdD0OZjJDSlHlGEIuvJlPGDp/axn46kmFdx3FDSz2wwWqJI.', NULL, '1251064a02b1f66443', 1, NULL, '2023-07-01 08:33:19', '2023-07-01 08:33:19');
INSERT INTO `users` VALUES (126, 5, 'Duo', 'Jenny', 'myduyenduong030827', NULL, '0408283963', 'myduyenduong030827@gmail.com', NULL, NULL, '$2y$10$MGZpy.Rut6KjnlDARdbDteW6EQQkFYfmR4EYKZTVYMTyJf0UBusNa', '1', '1261064a36a56a6e80', 1, NULL, '2023-07-03 19:39:50', '2023-07-04 19:56:36');
INSERT INTO `users` VALUES (147, 4, 'Lê', 'Tâm', 'letam3123', NULL, '0346813293', 'letam3123@gmail.com', NULL, NULL, '$2y$10$UkTELL7wm5GBdhmuEwRO2.ngPAUmdL8Sbib8cZOTL0c.ibTyhp8q2', NULL, '1471064a4311b337d5', 1, NULL, '2023-07-04 09:47:55', '2023-07-04 09:47:55');
INSERT INTO `users` VALUES (148, 4, 'Andy', 'Nguyen', 'andynguyen2585', NULL, '0908479495', 'andynguyen2585@icloud.com', NULL, NULL, '$2y$10$ZkfNeoq1hcxBDPTFTIgFfumn2mff8DeeoN5ibdBImuT9yNa6xSFF6', NULL, '1481064a484ca606d6', 1, NULL, '2023-07-04 15:44:58', '2023-07-04 15:44:58');
INSERT INTO `users` VALUES (152, 4, 'Tien Tung Nguyen', 'Nguyễn', 'tungcuonganh9', NULL, '0886586588', 'tungcuonganh9@gmail.com', NULL, NULL, '$2y$10$7Mb9qINienZHhpJv333uT.GLEyOtAKU/mglvcbMDiiC.tJw.bP4Uu', NULL, '1521064a4a63c10ae4', 1, NULL, '2023-07-04 18:07:40', '2023-07-04 18:07:40');
INSERT INTO `users` VALUES (153, 4, 'Do', 'Thi My Hanh', 'myhanh090686', NULL, '0949661188', 'myhanh090686@gmail.com', NULL, NULL, '$2y$10$0hmeDwawISPBBrUcQXq1UOiyTBAUT7HlczMtOko7LwdJGB2.1tuj6', NULL, '1531064a4aa7c4470c', 1, NULL, '2023-07-04 18:25:48', '2023-07-04 18:25:48');
INSERT INTO `users` VALUES (155, 5, 'Phương', 'Thúy', 'thuymp2005@gmail.com', NULL, '0974616367', 'thuymp2005@gmail.com', NULL, NULL, '$2y$10$EVRBvj8.GoS6HZq2Bga1u.pxqlBxNpeRuN8ZMZhsOjyEy1J15Ardi', '1', '1551064a4bf1482dc6', 1, 'zflkLtMuli5XPdtGXrRWqbD39rn7UnvLZDXvogNZ3znm8YfclH9EQ9ezHZtK', '2023-07-04 19:53:40', '2023-07-04 19:53:40');
INSERT INTO `users` VALUES (156, 5, 'Huyền', 'Trang', 'Huyentrangul98@gmail.com', NULL, '0343161777', 'Huyentrangul98@gmail.com', NULL, NULL, '$2y$10$kBqt5Pzkp.gI3adBdI1GE.zirpzvbrg8BuGKhKmSmFJ00tLTHP7He', '1', '1561064a4bf380aec2', 1, '7mlkl0BxZCfZwH02Kk8KJ1wLHhm59STg3KTIFS7kGIt4iDHDlAAUBnmiYfgs', '2023-07-04 19:54:16', '2023-07-04 19:54:16');
INSERT INTO `users` VALUES (157, 4, 'Minh Như', 'Huỳnh', 'Hminhnhu04', NULL, '0912196178', 'Hminhnhu04@gmail.com', NULL, NULL, '$2y$10$9CEGhR0vC0utbvr0lIJlwOdIc./TbVpboGLSLfDVjN7J4ordJAQDO', NULL, '1571064a4c3a45473c', 1, NULL, '2023-07-04 20:13:08', '2023-07-04 20:13:08');
INSERT INTO `users` VALUES (158, 4, 'Nguyễn', 'Ngân', 'ngan.nguyen311298', NULL, '0854752257', 'ngan.nguyen311298@gmail.com', NULL, NULL, '$2y$10$4rBq/kmbMkcJk/6I4Tq3lOyMW3ht69MkYGEPhbHAYnWfdqa2i0Q5W', NULL, '1581064a4ec71d0561', 1, NULL, '2023-07-04 23:07:13', '2023-07-04 23:07:13');
INSERT INTO `users` VALUES (159, 4, 'PHAM THAI', 'SON', '17146182', NULL, '0792610954', '17146182@student.hcmute.edu.vn', NULL, NULL, '$2y$10$jNPNNpAPYa8ah7Kfg9kyveMxGRHA42ROWA2I7NgqPLEZX0S71Ve1a', NULL, '1591064a4f79d82204', 1, NULL, '2023-07-04 23:54:53', '2023-07-04 23:54:53');
INSERT INTO `users` VALUES (160, 4, 'Yến', 'Mai', 'Mhyen164', NULL, '0928005348', 'Mhyen164@gmail.com', NULL, NULL, '$2y$10$Hh7jSIQvx6BlAuiSokLED.lfMXpYo2r9yB2G/UjwY1LqMuj3IzSKy', NULL, '1601064a51b37b5041', 1, NULL, '2023-07-05 02:26:47', '2023-07-05 02:26:47');
INSERT INTO `users` VALUES (161, 5, 'Tran', 'Jimmy', 'jimmytran0704999119@gmail.com', NULL, '0704999119', 'jimmytran0704999119@gmail.com', NULL, NULL, '$2y$10$qoxMav4V4kuAKhLSsKnJG.5.obmcnTcvbdFwvWX8A9exGWLUE81Ay', '1', '1611064a528ed39f7d', 1, 'MyJ2HFOhXBtwxoQnlw7R6UWLxvUaNOked7BkI0icThF3RUcjchVFS9J13yEo', '2023-07-05 03:25:17', '2023-07-05 03:25:17');
INSERT INTO `users` VALUES (162, 5, 'Mỹ', 'Thuận', 'Thuanprob14@gmail.com', NULL, '0975841850', 'Thuanprob14@gmail.com', NULL, NULL, '$2y$10$UDRxuuDMuPtYmD4I20ds7ePYQ9t1VVIWkTzR1j5kG3esGZNLjoHH2', '1', '1621064a55f116cde2', 1, 'KAxZqK41nTr8dK3atIr4yQUXs5FrPxFEiu2WKrPnbZTkLXd6wtm8ylJzEmaA', '2023-07-05 07:16:17', '2023-07-05 07:16:17');
INSERT INTO `users` VALUES (163, 5, 'Hải', 'Yến', 'zinzinyen352006@gmail.com', NULL, '0971297206', 'zinzinyen352006@gmail.com', NULL, NULL, '$2y$10$bY/.WiwGsx1W2OrPKzCMBO6UBvfwanSEW4GT7HKEuk16IEh5AGXoK', '1', '1631064a55f313256f', 1, 'Qq5yed7zlNc1i7fgMTCweFhby2Z04QgiINyUtUV8a9EEzWbPa7UfUzM15p1Q', '2023-07-05 07:16:49', '2023-07-05 07:16:49');
INSERT INTO `users` VALUES (164, 4, 'Diep', 'thanh', 'dieptuyetthanh1082', NULL, '0937560660', 'dieptuyetthanh1082@gmail.com', NULL, NULL, '$2y$10$Dm62MXT66RXj9uVPfy5leeU.NMhvL6aD0wzy6Vzz20QePhVtN7xe2', NULL, '1641064a58397502fe', 1, NULL, '2023-07-05 09:52:07', '2023-07-05 09:52:07');
INSERT INTO `users` VALUES (165, 4, 'Thanh', 'Bình', 'lotus.binh', NULL, '0903064180', 'lotus.binh@gmail.com', NULL, NULL, '$2y$10$3e0Lt1TNILZZd2JZmZUZFeMxaY.nqfhlwwxUMpiihGo1S8gvclkE.', NULL, '1651064a5fe5a33d82', 1, NULL, '2023-07-05 18:35:54', '2023-07-05 18:35:54');
INSERT INTO `users` VALUES (167, 4, 'Nghia', 'Le', 'Nghiale14', NULL, '0933709784', 'Nghiale14@gmail.com', NULL, NULL, '$2y$10$hYCnbKHR8syLHCbpJL58AO.l/5pR1P3/oByqQmIM8Xdc6VsCRdJqy', NULL, '1671064a604abdb386', 1, NULL, '2023-07-05 19:02:51', '2023-07-05 19:02:51');
INSERT INTO `users` VALUES (170, 5, 'Le', 'Cat Tuong', 'lecattuong123456789@gmail.com', NULL, '0938979539', 'lecattuong123456789@gmail.com', NULL, NULL, '$2y$10$I/MOvNQUa0rF0SGaulD06OuXPnsPPAgWHYjqQAJFBBw3yvGQoZs2u', '1', '1701064a619b530a57', 1, 'LW4VRFixdIVsAtQcSpN522cxCPTo6bYt3cgKAld2V9SSaDtHbizzke48oUHs', '2023-07-05 20:32:37', '2023-07-05 20:32:37');
INSERT INTO `users` VALUES (171, 3, 'Pham', 'Lien', 'thuylienpham09@gmail.com', NULL, NULL, 'thuylienpham09@gmail.com', NULL, NULL, '$2y$10$LlwK05N/H2lKhcAg3nLJVu1T8wT9kkPGTvcyPND5ZuexBea0Fg80q', '1', '1711064a61c1b59c7b', 1, 'GZSIF11GQxO08jofKiVZIcauvAj2CAi2KubBhYpdgr6tJ89SG0p5sMWmnQ8S', '2023-07-05 20:42:51', '2023-07-24 06:14:58');
INSERT INTO `users` VALUES (172, 4, 'Hương', 'Vo', 'lyhuong.a23', NULL, '0775993479', 'lyhuong.a23@gmail.com', NULL, NULL, '$2y$10$A30lMdWPSATJi9nEfFXba.Eu6UWabctHRDKSBGBDz2kP1NtraeACu', NULL, '1721064a77101a5a2f', 1, NULL, '2023-07-06 20:57:21', '2023-07-06 20:57:21');
INSERT INTO `users` VALUES (173, 4, 'Trang', 'Pham', 'phamhuyentrang3010', NULL, '0789464522', 'phamhuyentrang3010@gmail.com', NULL, NULL, '$2y$10$lo9w8G5xvdtyG3a7tq3tvuXiDoOkbUvS6q4/lHenmY/gV6do4w0kW', NULL, '1731064a7fc2e2348f', 1, NULL, '2023-07-07 06:51:10', '2023-07-07 06:51:10');
INSERT INTO `users` VALUES (174, 4, 'Trần Thị Ngoc Thuyên', 'Thi Ngọc Thuyên', 'thuyenttn.hr', NULL, '0987972970', 'thuyenttn.hr@gmail.com', NULL, NULL, '$2y$10$9fujdpt7MIzUgFLRDda6fu/.ceoLwLn9XEqpolfmgvXA92wBaWWAq', NULL, '1741064a81a4c108c4', 1, NULL, '2023-07-07 08:59:40', '2023-07-07 08:59:40');
INSERT INTO `users` VALUES (175, 5, 'Vu Trieu', 'Nhung', 'vutrieunhung@gmail.com', NULL, '07026835743', 'vutrieunhung@gmail.com', NULL, NULL, '$2y$10$t/NFh81MeAnKn0LZTIvOUuSrHdkZ4gndJVsTp2jKIeH0l6CWPNOA.', '1', '1751064a8296c30eb0', 1, 'A8F7LblOuyicLlMGqPQZXQ3HsWPYW1nTDI8BlpskQsEqz2myRsytIuaa0D6w', '2023-07-07 10:04:12', '2023-07-07 10:04:12');
INSERT INTO `users` VALUES (176, 5, 'Phạm Yến', 'Vy', 'phamyenvykkt@gmail.com', NULL, '094.636.0057', 'phamyenvykkt@gmail.com', NULL, NULL, '$2y$10$Ag8SVMvdI/lXA8Bjuag0O.ddhw/x/TagqXrTcDnNc8Pp8eP8pzcHW', '1', '1761064a8f6e239ee2', 1, NULL, '2023-07-08 00:40:50', '2023-07-08 00:40:50');
INSERT INTO `users` VALUES (177, 4, 'Trung', 'Nguyen', 'trungst', NULL, '0908002299', 'trungst@gmail.com', NULL, NULL, '$2y$10$oo094oADMD0/bFwwVNedd.wNx6AVGwrB4mlYJlodF/cg/jR4TlGly', NULL, '1771064a9460e699de', 1, NULL, '2023-07-08 06:18:38', '2023-07-08 06:18:38');
INSERT INTO `users` VALUES (178, 4, 'Vì Hoa', 'Diep', 'thuysinhhoa13', NULL, '3366093966', 'thuysinhhoa13@gmail.com', NULL, NULL, '$2y$10$TmhnM33144ROIJXB5dJ7KevwH1wZf9PZN.ugO9lESb3iqKB0bfUuO', NULL, '1781064a9bfabaac9e', 1, NULL, '2023-07-08 14:57:31', '2023-07-08 14:57:31');
INSERT INTO `users` VALUES (180, 4, 'Bui', 'Quynh', 'buinguyetquynh', NULL, '0366111828', 'buinguyetquynh@gmail.com', NULL, NULL, '$2y$10$qtT8BBWTxIJRsVBe9HKsN.Q8q.NUJ.a9llqmgIoh3gd/w6CiLZRru', NULL, '1801064a9f32e42055', 1, NULL, '2023-07-08 18:37:18', '2023-07-08 18:37:18');
INSERT INTO `users` VALUES (182, 4, 'Hà', 'Nguyễn', 'hantt254', NULL, '0934047918', 'hantt254@gmail.com', NULL, NULL, '$2y$10$mwQ8lEaBWoRuq8oExbsLlO6e3tR10yAbY62JNBbm64R2EiKjqo7Am', NULL, '1821064aadf8c6e757', 1, NULL, '2023-07-09 11:25:48', '2023-07-09 11:25:48');
INSERT INTO `users` VALUES (183, 4, 'Long', 'Nguyễn', 'Longtiger6868', NULL, '0968074639', 'Longtiger6868@gmail.com', NULL, NULL, '$2y$10$/7uejWHoZKOCocv2wP0jJO5mLobkGLq8nZIeFrCqO/PHzq48nD7qm', NULL, '1831064aaefb93f4b2', 1, NULL, '2023-07-09 12:34:49', '2023-07-09 12:34:49');
INSERT INTO `users` VALUES (184, 4, 'Khong', 'Tu Quynh', 'khongtuquynh@telesaenglish.com', NULL, '0973005543', 'khongtuquynh@telesaenglish.com', NULL, NULL, '$2y$10$0hSD5aMQhD/7aX.5A40K2ebD6L1JeD43xHkv/W1mqUf2GFv5h/T7W', '1', '1841064ab7c05316e9', 1, 'IdRwZhhOBmjG6GpfIAgfYb3ZwmLPFbCxZSzI711AcI2kuf696FG6bwnbikpE', '2023-07-09 22:33:25', '2023-07-22 23:26:23');
INSERT INTO `users` VALUES (185, 4, 'Nguyễn Thị Như', 'Thảo', 'haithao299', NULL, '0979415640', 'haithao299@gmail.com', NULL, NULL, '$2y$10$1lOvnJnSPPRYL1y0687T1eJ33XyzizGZrG56SC82hq0z1s2E54wa6', NULL, '1851064aba548d3301', 1, NULL, '2023-07-10 01:29:28', '2023-07-10 01:29:28');
INSERT INTO `users` VALUES (186, 5, 'Miki', 'Hà', 'Ha.oatside@gmail.com', NULL, '0902526023', 'Ha.oatside@gmail.com', NULL, NULL, '$2y$10$BEwtZq5a6W5OP6mOyjxGzevjPif/5T1R6rGbcO1LjlU1c6isjHL/S', '1', '1861064abacbb39af1', 1, NULL, '2023-07-10 02:01:15', '2023-07-10 02:01:15');
INSERT INTO `users` VALUES (187, 4, 'NGUYEN', 'LIEN', 'ngocliencnshe', NULL, '0963859014', 'ngocliencnshe@gmail.com', NULL, NULL, '$2y$10$/tnO.ENiYWB5gx288OBVn.KvXDGETjSaNA1bsixUHrN0sexRJhwMu', NULL, '1871064abbda2bd28c', 1, NULL, '2023-07-10 03:13:22', '2023-07-10 03:13:22');
INSERT INTO `users` VALUES (188, 5, 'Le', 'Katrina', 'thuy.an.lucbinh@gmail.com', NULL, '+6583491900', 'thuy.an.lucbinh@gmail.com', NULL, NULL, '$2y$10$Duk9oaQw4VQZhWYeab1jKO0R7WavlwUgvQLf2zxaLKpwO4cQV5jAK', '1', '1881064ac010caf868', 1, 'GvsXNTGwaP6CIbajzf2Vr4LBsdkcNYoDg8BgqnqfdGKQn7YP1MftQZVxvOQY', '2023-07-10 08:01:00', '2023-07-10 08:01:19');
INSERT INTO `users` VALUES (189, 5, 'Uyen', 'Linh', 'linda1121974@gmail.com', NULL, '6822303500', 'linda1121974@gmail.com', NULL, NULL, '$2y$10$s8VqN.4jGWkF7E4De24ClOyDqB8VIa7njXewSuwJTPJD02PBWvBNa', '1', '1891064acc688839d4', 1, 'nUtpwa2WJdof9Q8H67fpqjHCTExtkxwVsWBytYbJiR0UoSOxxwQV96HZjgdL', '2023-07-10 22:03:36', '2023-07-10 22:03:36');
INSERT INTO `users` VALUES (190, 5, 'Kim', 'Tuyen', 'hkt280401@gmail.com', NULL, '0708274021', 'hkt280401@gmail.com', NULL, NULL, '$2y$10$ZbbQplmJ9I3B20vHU4vEVOCeQkTzdZvznG4k5nWpmW9S/ss.70gey', '1', '1901064acc6aea2790', 1, 'gjCVmyim50vC7swE4ZG1mJGakYxr2a5VhCuvaSqbv1J3KLw1QVNL5dPuiqLj', '2023-07-10 22:04:14', '2023-07-10 22:04:14');
INSERT INTO `users` VALUES (191, 5, 'Le', 'Thao Trinh', 'lethaotrinh01@gmail.com', NULL, '0785525348', 'lethaotrinh01@gmail.com', NULL, NULL, '$2y$10$/IPGaf27Nw6NeWYk7xjS9.nUF4pjBd3ovAglqzlG3sYPTAAEuCZue', '1', '1911064acf13c36f95', 1, 'XDYZ2lVddliItN7ZIkHoFCKdqVebS5DQiH0ujRHf4YscW89vS6W9TUuMBrtZ', '2023-07-11 01:05:48', '2023-07-11 01:05:48');
INSERT INTO `users` VALUES (192, 4, 'Nguyễn', 'Oanh', 'oanhngu1991', NULL, '0274397109', 'oanhngu1991@gmail.com', NULL, NULL, '$2y$10$krKCE3xMfPNXFgr54Um5VOcPyEeg206knFjIpbGEQZA77ZbGE3l6e', NULL, '1921064ad2488cda8b', 1, NULL, '2023-07-11 04:44:40', '2023-07-11 04:44:40');
INSERT INTO `users` VALUES (193, 5, 'Như', 'Ý', 'nguyenthinhuy8a5nqt@gmail.com', NULL, NULL, 'nguyenthinhuy8a5nqt@gmail.com', NULL, NULL, '$2y$10$tE3A.KpPaHbCpZxPsUSjV.e4gIaD2acew0hMtQC86AsJCbHmqfMAW', '1', '1931064ad38be905ec', 1, 'SunKkMiPcYNRuARtB9YbEdQKkUhxagchJ2g3irZP2eziONYt58nb5ttIWiFg', '2023-07-11 06:10:54', '2023-07-11 06:10:54');
INSERT INTO `users` VALUES (194, 4, 'Đinh', 'thị Quang anh', 'ghetahnha', NULL, '0769358885', 'ghetahnha@gmail.com', NULL, NULL, '$2y$10$2Yj01Fb84RGi2gvS9yscxOZrGsEnHP6.pRXKYW5s6Qtn8YXZmZ72S', NULL, '1941064ae341c5f15f', 1, NULL, '2023-07-12 00:03:24', '2023-07-12 00:03:24');
INSERT INTO `users` VALUES (195, 5, 'Phuong', 'Thao', 'luongthiphuongthaovt@gmail.com', NULL, '0389896271', 'luongthiphuongthaovt@gmail.com', NULL, NULL, '$2y$10$IidCHTrfW7.H2eyTJ7nghuwscCxH9NtuUQWt5SuLq9WNwincAbHQW', '1', '1951064ae73a1af8d6', 1, '1Jm4FkA9IFQMluAG0nIv909pwpLYO99xNb2DA2jhAoJuQZC1D9xSBvWbPDNL', '2023-07-12 04:34:25', '2023-07-12 04:34:25');
INSERT INTO `users` VALUES (196, 5, 'Nguyen', 'Tuoi', 'nguyenthituoisang.ng@gmail.com', NULL, NULL, 'nguyenthituoisang.ng@gmail.com', NULL, NULL, '$2y$10$.Bpgq9R36VaxZJ8SN.FWXOMFUYl5VsGbrqKudMPMDtQ0YnG/ic2te', '1', '1961064b0d82b5dd25', 1, 'yPbk3I1V9DnRabR5XzsqN9t5KoO3XnVvdrYk8a8USIxljVn1x8kVXnKUOktY', '2023-07-14 00:07:55', '2023-07-14 00:07:55');
INSERT INTO `users` VALUES (197, 4, 'Quyên', 'Nguyễn', 'sygia557', NULL, '0703300003', 'sygia557@gmail.com', NULL, NULL, '$2y$10$b3O9gR2lzz1Hx5Gvod2XJOvhn1B3WBcFHmsh8JStAcTwP1t/7Vt.G', NULL, '1971064b12a29a8d6d', 1, NULL, '2023-07-14 05:57:45', '2023-07-14 05:57:45');
INSERT INTO `users` VALUES (198, 4, 'Giau', 'Nguyen', 'Ngocgiau19891989', NULL, '0777025787', 'Ngocgiau19891989@gmail.con', NULL, NULL, '$2y$10$0ffoMjefPL/fpnJYAns.FOS7crW3R3FvIV1wXJMY.BLeCXucDZp8i', NULL, '1981064b12a2bca799', 1, NULL, '2023-07-14 05:57:47', '2023-07-14 05:57:47');
INSERT INTO `users` VALUES (199, 4, 'An', 'Vo', 'An.vo0204', NULL, '0949485539', 'An.vo0204@gmail.com', NULL, NULL, '$2y$10$00QONBX2If.grJudcAEY.uC5PvxVIXTnnBILSz6Na2GQ980bWi1I2', NULL, '1991064b2579168ac7', 1, NULL, '2023-07-15 03:23:45', '2023-07-15 03:23:45');
INSERT INTO `users` VALUES (201, 4, 'Tram', 'Bui', 'buithibichtram04111992', NULL, '0858125157', 'buithibichtram04111992@gmail.com', NULL, NULL, '$2y$10$sROuOg048GEUiZXnYbozM.WnP4nbqc9RUM3MptX6N1JWz0uZdZWuK', NULL, '2011064b26ad56d72d', 1, NULL, '2023-07-15 04:45:57', '2023-07-15 04:45:57');
INSERT INTO `users` VALUES (203, 5, 'Manh', 'Tuan', 'Tuantellu@gmail.com', NULL, '0916243638', 'Tuantellu@gmail.com', NULL, NULL, '$2y$10$jhRuhvjk6iHVuR5F41fKSeU9BLkEu80jOiLSl.LOMnQTTTtXHWuQW', '1', '2031064b36ece4add9', 1, 'mErPCLFpKBqxGznjAAuCG11uvCL20hB3hgze2XYWQRg7aqS2WnoK7JBzInPB', '2023-07-15 23:15:10', '2023-07-15 23:15:10');
INSERT INTO `users` VALUES (204, 5, 'Phương', 'Ngọc', 'hophuongoc@gmail.com', NULL, NULL, 'hophuongoc@gmail.com', NULL, NULL, '$2y$10$rYcPQFd6HCepYgGcQzhnruU5EvhTtc.12.BH1MQSU54b3DUv7TUYa', '1', '2041064b3849f0af9f', 1, 'UEl6G6gfs1mIZHS9wgwLMwPrjOTAdQ63KDmAE6PyZHIxOvDjs63OXRTkxMnI', '2023-07-16 00:48:15', '2023-07-16 00:48:15');
INSERT INTO `users` VALUES (205, 5, 'Bui', 'Nhung', 'nhungbt1711@gmail.com', NULL, '0987373575', 'nhungbt1711@gmail.com', NULL, NULL, '$2y$10$7QeGucwtYc7/dzKhqG46ouNrLiqdPq.uIhUf3MAaakOu3Nl5eaRJS', '1', '2051064b50df919014', 1, 'TfoPjBDftxqDIkgPo6kqZwus7aOSvCw3sicd8r2RuK9SKm7jzAPltbVzVUcw', '2023-07-17 04:46:33', '2023-07-17 04:46:33');
INSERT INTO `users` VALUES (206, 4, 'Loc', 'Nguyen', 'nhloc87.ct', NULL, '0838757555', 'nhloc87.ct@gmail.com', NULL, NULL, '$2y$10$dX31mG4PZGOTVWsaKARPMuQlxBNjPyYUzfXs6ArXizA/kbvhUBSqW', NULL, '2061064b516f6a6556', 1, NULL, '2023-07-17 05:24:54', '2023-07-17 05:24:54');
INSERT INTO `users` VALUES (207, 5, 'Su', 'Hao', 'Tranchauquynhthu.gl@gmail.com', NULL, '0985622643', 'Tranchauquynhthu.gl@gmail.com', NULL, NULL, '$2y$10$GQTxAekEuzwIjJrIwZAWDui1y7c62Bm7FSE4ONGyLxbD/YLSRA.e.', '1', '2071064b66ce468c80', 1, NULL, '2023-07-18 05:43:48', '2023-07-18 05:43:48');
INSERT INTO `users` VALUES (208, 5, 'Le', 'Mina', 'mina.le1527@gmail.com', NULL, '0858125157', 'mina.le1527@gmail.com', NULL, NULL, '$2y$10$jGu0o5aAyizWLUTM.FoKgeo6fOuCll18wIJUz5DrZmlrUanEhcVwK', '1', '2081064b8a617197a4', 1, 'VhJpAWXyCEy4AoJ7gjZnWTBFZsxHqWhG08oDzAJ5i7wGDpgnLu1jaEScKD84', '2023-07-19 22:12:23', '2023-07-19 22:12:23');
INSERT INTO `users` VALUES (209, 5, 'Thu', 'Truong', 'thutruong1712@gmail.com', NULL, '0945402522', 'thutruong1712@gmail.com', NULL, NULL, '$2y$10$3lh1KNmn3BfqK8Yi.SzwFebcsH2hkp/MckQ51wWEuCYd.OTlGHyd6', '1', '2091064b8c707cacd9', 1, 'higUfVTrASRf5axmo3L2sh1DCLVnS19Wwzo2SEpQ0Ot83XcC1x2eHW1Y7ovP', '2023-07-20 00:32:55', '2023-07-20 00:32:55');
INSERT INTO `users` VALUES (210, 4, 'Lê', 'Thị Hoa', 'thinghiale62', NULL, '0399957529', 'thinghiale62@gmail.com', NULL, NULL, '$2y$10$z5FqQRPY1UtqAm2ANTM0MuVGIOCLnoS4zi3NSEzXbe3dVpFKklm7W', NULL, '2101064b921e7049fe', 1, NULL, '2023-07-20 07:00:39', '2023-07-20 07:00:39');
INSERT INTO `users` VALUES (211, 4, 'Nbao', 'Qw', 'nbao8949', NULL, '0397748274', 'nbao8949@gmail.com', NULL, NULL, '$2y$10$FfpTdphLusHdnGrGVtLX1e8sSCBVfpwN5PH7425erU0yoJWR2FaKS', NULL, '2111064b9565305baf', 1, NULL, '2023-07-20 10:44:19', '2023-07-20 10:44:19');
INSERT INTO `users` VALUES (212, 5, 'Nhat', 'Le', 'dinhnhatle.hp@gmail.com', NULL, '0904093357', 'dinhnhatle.hp@gmail.com', NULL, NULL, '$2y$10$/JrFL1BQFAWpDchveEI3wOVvIuyngkl/HrNy5cfvAvGtn2MCcqR5e', '1', '2121064b9e1a91b2a6', 1, 'UxFVNJpxnRogc2RVxLrIvmBvqVtwIj5dMpTHTZDsV9rIYGlsFD9pHvdArsQ9', '2023-07-20 20:38:49', '2023-07-20 20:39:18');
INSERT INTO `users` VALUES (213, 4, 'Thảo', 'Nguyễn', 'ntpphuongthao99', NULL, '0786133374', 'ntpphuongthao99@gmail.com', NULL, NULL, '$2y$10$0yorU5KjnvOZWcPQ8zhGq.4NY5LHGKuyDnebq49yfPZhJEiyGGYCq', NULL, '2131064bb5533b1462', 1, NULL, '2023-07-21 23:04:03', '2023-07-21 23:04:03');
INSERT INTO `users` VALUES (214, 5, 'Hoai', 'Linh', 'Hoailinh30121997@gmail.com', NULL, '0928199616', 'Hoailinh30121997@gmail.com', NULL, NULL, '$2y$10$EyUGXlpuuXwczKXrzHH0seyPPQEH/FDro6Oaep/cH/WNjEtHJmlS6', '1', '2141064bb6cb4b1c96', 1, 'TSLzmay2da6u28LblqWgoK0r1Itn2f3woHrdQCDevUtLo8KgI9aLiClVYWiu', '2023-07-22 00:44:20', '2023-07-22 00:44:20');
INSERT INTO `users` VALUES (215, 5, 'Thắng', 'Võ', 'hoangthang020805', NULL, '0378789682', 'hoangthang020805@gmail.com', NULL, NULL, '$2y$10$gVCGMefzzJsL2/RLb2MlqOwWxnGkIUWQsy9AJo46dq8M3gOpE2bf2', '1', '2151064bbff72e8c6a', 1, 'FeH3GqatfsReUppzvpzcSzny3GzS7Jjn6fKF3qRBDk8BPWnjHd0lNLUswBoM', '2023-07-22 11:10:26', '2023-07-26 08:18:53');
INSERT INTO `users` VALUES (216, 4, 'Thảo', 'Thành', 'huongnguyenbg1508', NULL, '0346340248', 'huongnguyenbg1508@gmail.com', NULL, NULL, '$2y$10$iP0jEz4N4sSd127ufCMaau7x60eiZxDeeh75ytPzzq2UkcX9jUmPm', NULL, '2161064bc8642000a9', 1, NULL, '2023-07-22 20:45:37', '2023-07-22 20:45:38');
INSERT INTO `users` VALUES (217, 4, 'Thảo', 'Thành', 'huongnguyenbg1508', NULL, '0346340248', 'huongnguyenbg1508@gamil.com', NULL, NULL, '$2y$10$BZjgyTxFF48jIcEXxER18euPpNefENqM6L3rdxAfXeWMmz744VJQe', NULL, '2171064bc86951ac1e', 1, NULL, '2023-07-22 20:47:01', '2023-07-22 20:47:01');
INSERT INTO `users` VALUES (218, 5, 'Anh', 'Kiet', 'caoanhkiet2910@gmail.com', NULL, NULL, 'caoanhkiet2910@gmail.com', NULL, NULL, '$2y$10$1p9Ebg3eHsx4Xu7xVleg0OL6jZN.QgmLNWgwY1/P8n3Y0f3Bek91K', '1', '2181064bc8dfae081c', 1, 'T7kY11TPuxUa9PjXeeV2FNtbZnmPDhWPJEMcrqFHuGcwcZ2rP5nQxtzmNuhm', '2023-07-22 21:18:34', '2023-07-22 21:18:34');
INSERT INTO `users` VALUES (219, 5, 'Kim', 'Hue', 'Kimhuele060897@gmail.com', NULL, '0931615719', 'Kimhuele060897@gmail.com', NULL, NULL, '$2y$10$1Vm6YHgBBAmamPMzvC/D9uvk2EiBjW/Z358xUhjbRMI5rMlYmdXc6', '1', '2191064bca8feb29bc', 1, 'BCWlMbvpXygEDeKmcBq4RhUzr4nr2Jm8JknwfxcYEf2bZeBSgPWAYp57c4wC', '2023-07-22 23:13:50', '2023-07-22 23:13:50');
INSERT INTO `users` VALUES (220, 5, 'Minh', 'Hue', 'minhhue1812@gmail.com', NULL, '0965593763', 'minhhue1812@gmail.com', NULL, NULL, '$2y$10$p.lwSTpkVhEfdJB6H3TDj.tZVBmHp9z6bTugsmcLJ2TXmcvjDuJFG', '1', '2201064bcd743aa7d1', 1, NULL, '2023-07-23 02:31:15', '2023-07-23 02:31:15');
INSERT INTO `users` VALUES (221, 4, 'Hiền', 'Trần', 'hitasol1111', NULL, '0858979843', 'hitasol1111@gmail.com', NULL, NULL, '$2y$10$s/Xk.bDK6wjcWapXwsmR4uBWPMfj0g1Z2BFQOSrMmnOMPBMAa0VDi', NULL, '2211064be190226f7d', 1, NULL, '2023-07-24 01:24:02', '2023-07-24 01:24:02');
INSERT INTO `users` VALUES (222, 5, 'Cong', 'Vinh', 'ncvinh37@gmail.com', NULL, '0347703607', 'ncvinh37@gmail.com', NULL, NULL, '$2y$10$vzr9JeJTXnSPMGtPWyAVteCdc/hBbOkUQbscjLqz5bJZf7fCKipmi', '1', '2221064be50ebb70df', 1, 's7BmU12polBAV2z6jad5kLcgx0dpWGZK0d209zQLST1rX7lVak9M1LKjGoB5', '2023-07-24 05:22:35', '2023-07-24 05:22:35');
INSERT INTO `users` VALUES (223, 5, 'Thu', 'Ha', 'Maimoi4291@gmail.com', NULL, '0975097613', 'Maimoi4291@gmail.com', NULL, NULL, '$2y$10$jRUOaRtWxd0SJArMssXwbefCGf1we/L2CDcdZLQpyciAhRx1iz4ki', '1', '2231064be72d1e9458', 1, NULL, '2023-07-24 07:47:13', '2023-07-24 07:47:13');
INSERT INTO `users` VALUES (224, 2, 'Teacher01', 'test', 'teacher01@gmail.com', NULL, NULL, 'teacher01@gmail.com', NULL, NULL, '$2y$10$fKCmN9bRn.Sct/HRxb96HO5dKHdvQ.fRjd32wh3RywJsZmdz1o7m.', '1', '2241064bfd2bedd6f2', 1, NULL, '2023-07-25 08:48:46', '2023-07-25 08:50:20');
INSERT INTO `users` VALUES (225, 5, 'Tai', 'Linh', 'dangthitailinh@gmail.com', NULL, '0393832872', 'dangthitailinh@gmail.com', NULL, NULL, '$2y$10$orIkq/qQwNKGnInBepo0BO4BH/Oe8wLIiKb7WAiJoboDe/ZP.3j9a', '1', '2251064c1167323094', 1, '1Q54G5bWmJ9McD6k0RMoUiCeE8VLwJT2KcRckbqxJHelng11B2RG4qVdIIyA', '2023-07-26 07:49:55', '2023-07-26 07:49:55');
INSERT INTO `users` VALUES (226, 4, 'Tài', 'Chí', 'Truongchitai', NULL, '0389964686', 'Truongchitai@gmail.com', NULL, NULL, '$2y$10$D9Op1f5PF3v1vO52GFB5QuxA2Ck7Nk1ZKe13zvDUizQA3rf.55hnu', NULL, '2261064c1c465a6330', 1, NULL, '2023-07-26 20:12:05', '2023-07-26 20:12:05');
INSERT INTO `users` VALUES (227, 5, 'Hoang', 'Anh', 'hoanganh0202.vn@gmail.com', NULL, '0961815059', 'hoanganh0202.vn@gmail.com', NULL, NULL, '$2y$10$ftiwWe9xYuoTVtHfMqqaGud8k.0Lo9m2YVDqFV0ozFl3eOGNLVxF2', '1', '2271064c21a0d57657', 1, 'NeiCuhRIT3u8AWac3FzvOBMqc3K8jnZaCrMDLYYUKN5Tg6aoUSVAhnp0IQp4', '2023-07-27 02:17:33', '2023-07-27 02:17:33');
INSERT INTO `users` VALUES (228, 5, 'Phan Van', 'Ben', 'phanvanben1965@gmail.com', NULL, '08064317262', 'phanvanben1965@gmail.com', NULL, NULL, '$2y$10$Zk3t8M2faFEdEz5WfJrFzO7uGaK.HaH6Q5YoS1kvIGceESsJe5say', '1', '2281064c3af1013d14', 1, 's7WwqTL73qecV0uoWXWQtMtP7LvhZxYBEd6cLOH19Nbo51Togv9zENt5NmUo', '2023-07-28 07:05:36', '2023-07-28 07:05:36');
INSERT INTO `users` VALUES (229, 4, 'PHAM THAI', 'SON', 'sonmup46', NULL, '0792610954', 'sonmup46@gmail.com', NULL, NULL, '$2y$10$N0AF0Iwsrxn14yaqrHuAm.t4UXkp9.Qzkkl05qQr3u3mowzzajsm.', NULL, '2291064c3cb98daaf3', 1, NULL, '2023-07-28 09:07:20', '2023-07-28 09:07:20');
INSERT INTO `users` VALUES (231, 5, 'Thanh', 'Ha', 'ntthnguyenthanhha@gmail.com', NULL, '0393267479', 'ntthnguyenthanhha@gmail.com', NULL, NULL, '$2y$10$/o5LRN5//7RUstBALPE0tOfmqE2NaPC.09v0Y6uPY/CL3AguI/nrO', '1', '2311064c3e43d66008', 1, 'fvYHPZteq9vcuAVs3wUdZNYB74uFk1ygW5HicT2sRxG7QidyIV1zbLUvz08w', '2023-07-28 10:52:29', '2023-07-28 10:52:29');
INSERT INTO `users` VALUES (232, 5, 'Thu', 'Trang', 'hathithutrangdl@gmail.com', NULL, '0933646387', 'hathithutrangdl@gmail.com', NULL, NULL, '$2y$10$B.OJAzTNWY2qnzgb476Vu.HjSNfV6v4MY2z5/LxlKB.ayIV3JhjQC', '1', '2321064c4da0adb46a', 1, 'I9dGORglJg5CHIzCHbeD6FHGCA9oZdIeQrHNkrsXawEEZUyO1MPRBmdxcvdw', '2023-07-29 04:21:14', '2023-07-29 04:21:14');
INSERT INTO `users` VALUES (233, 5, 'Phong', 'Thai', 'vuphongthai@gmail.com', NULL, '0948356611', 'vuphongthai@gmail.com', NULL, NULL, '$2y$10$tKYJLgTWf7BeWPAccIujv.v2VAPkjWuj5.On9aQpTQOUkWyveo0l2', '1', '2331064c75842b018a', 1, 'GHTEHbmHzHxNusiy2Vw9n4zLr1NIxyX6sojR3bd22J7kPPlUuEMsp3kpg3ui', '2023-07-31 01:44:18', '2023-07-31 01:44:18');
INSERT INTO `users` VALUES (234, 5, 'Tu', 'Chinh', 'tuchinhathlete97@gmail.com', NULL, '0785689828', 'tuchinhathlete97@gmail.com', NULL, NULL, '$2y$10$8qApc/ktYjuwkO8tlCsgaOLa4tR0r8b4k5wNHf1pw9FFzHsYFsc0i', '1', '2341064c7589750555', 1, 'uxxMk3mez3uhMP7D0HeIdJKtHiCqIsWrImFOfebs6org6uHKAmOFMCNUNRij', '2023-07-31 01:45:43', '2023-07-31 01:45:43');
INSERT INTO `users` VALUES (235, 5, 'Thao', 'Le', 'thaole595620@gmail.com', NULL, '0357537896', 'thaole595620@gmail.com', NULL, NULL, '$2y$10$PuCepVw0o3h61nPgxs4LmuPsjIXFlSMFdaNFHNaL8VfXpp6D78ZgC', '1', '2351064c78038ef4a3', 1, 'l4nw8Mcedc43XDmDRAW8q20grrBfVwDGfyoeC3vWkTlUqYMyONbEDqxyFrfk', '2023-07-31 04:34:48', '2023-07-31 04:34:48');
INSERT INTO `users` VALUES (236, 4, 'Lệ', 'Nguyễn', 'milenguyen993', NULL, '0792417789', 'milenguyen993@gmail.com', NULL, NULL, '$2y$10$DmVoW6igLhgyqSn5hGGG1.IyJH1Rf0KR.r/71L29UIw2Hw9QmP2sW', NULL, '2361064c7c56831087', 1, NULL, '2023-07-31 09:30:00', '2023-07-31 09:30:00');
INSERT INTO `users` VALUES (237, 4, 'Tâm', 'Lê', 'leethihongtam', NULL, '0773274548', 'leethihongtam@gmail.com', NULL, NULL, '$2y$10$yBICU9amy.b.DbH7RUZa5umrZuog8EjKZ0/Tev/I2DfiLCaNZ13qS', NULL, '2371064c859180275f', 1, NULL, '2023-07-31 20:00:08', '2023-07-31 20:00:08');
INSERT INTO `users` VALUES (241, 5, 'Huynh', 'Chien', 'huynhchien.cao@outlook.com', NULL, '0919580116', 'huynhchien.cao@outlook.com', NULL, NULL, '$2y$10$PTQDKk.DUzF3bqGEGbW.q.CewKrJ.gBBj98EL2OekQ80Bj/dYd5GG', '1', '2411064c904b2d2304', 1, 'uBs6Xg2QDJCXrFQKSMTPxthCUpMf2QBmiJ1CQmKeztIpwJRF91VZwiS6gP0X', '2023-08-01 08:12:18', '2023-08-01 08:12:18');
INSERT INTO `users` VALUES (242, 4, 'Khắc Tường', 'Đỗ', 'khactuongdo', NULL, '0898007128', 'khactuongdo@gmail.com', NULL, NULL, '$2y$10$y2j2XMqeLlIuLC7qVevY2.JL5oCgnSzZstxS619K85tW/7.gJsbxe', NULL, '2421064cdb48694f50', 1, NULL, '2023-08-04 21:31:34', '2023-08-04 21:31:34');
INSERT INTO `users` VALUES (245, 5, 'Long', 'Phung', 'danglongphung1989@gmail.com', NULL, '0946423999', 'danglongphung1989@gmail.com', NULL, NULL, '$2y$10$GPYOxjMvO6m8oxHYxmuwNOlrjZ0d1MVAobSbnFmxQe3naOHIgSv0G', '1', '2451064ce753381492', 1, 'YqNQjgRKYv6BX6Ucz4iNIn85Tfjk5Au4AeFqFuBtKqZUd6HPicDUkjJ2ykEw', '2023-08-05 11:13:39', '2023-08-05 11:13:39');
INSERT INTO `users` VALUES (246, 5, 'Thu', 'Huyen', 'nguyenthithuhuyen0812@gmail.com', NULL, '0375301928', 'nguyenthithuhuyen0812@gmail.com', NULL, NULL, '$2y$10$UWeLCiSyoUGwK4NHDBcxZOyLcpaJU0U9iErCp2f9flQwzxEy2Ic9G', '1', '2461064cf4e19f2369', 1, 'LtKjyBEdiOTRwyT2oJIxrgHMsyyvX57qqDOXxR8sFuhvlXytBx33tnhF02Lm', '2023-08-06 02:39:05', '2023-08-06 02:39:05');
INSERT INTO `users` VALUES (247, 5, 'hiam', 'solei', 'hiamsolei@gmail.com', NULL, '0395017940', 'hiamsolei@gmail.com', NULL, NULL, '$2y$10$bPe3M9pbDq/1Zu3NasZCxOmEjKJaCfCDeSfF.0eUhaJnkD1Stj636', '1', '2471064cfcb6ca2109', 1, '3A3ZmumDdiNIaP7acnzjCpjj6gx0VKhWhOkjF82YulaXTJxnj0WAXavo9Xav', '2023-08-06 11:33:48', '2023-08-06 11:34:04');
INSERT INTO `users` VALUES (248, 5, 'Ngoc', 'Lan', 'ngoclan03091985@gmail.com', NULL, NULL, 'ngoclan03091985@gmail.com', NULL, NULL, '$2y$10$IkaRocBonzrB3DOvk/BhQ.gnOOxCKYyBhE6Bprcj6cVK.sPOI/vU.', '1', '2481064d07e0051ee6', 1, 'UT7MCJ2LpGbWAJJNDydIlkFaFCsZ6naICCHmuecujzxtwnHf1aSjNLOOk0WV', '2023-08-07 00:15:44', '2023-08-07 00:15:44');
INSERT INTO `users` VALUES (249, 4, 'Huynh', 'Thanh', 'thanhthanh1288', NULL, '0933512533', 'thanhthanh1288@gmail.com', NULL, NULL, '$2y$10$fdEBZdInyS2tN2PgblB7quSsmmQVyXaJlyN14M9.iJhAAdqyPX7xy', NULL, '2491064d23fb3a8a62', 1, NULL, '2023-08-08 08:14:27', '2023-08-08 08:14:27');
INSERT INTO `users` VALUES (250, 4, 'Văn', 'Hoàng', 'hoangdk11345', NULL, '0362926765', 'hoangdk11345@gmail.com', NULL, NULL, '$2y$10$9Y54gsgb2iYeBbVrKZHSKuqNRocf1NiUS85HTaXoZyRxxmHta0UDW', NULL, '2501064d37999f239d', 1, NULL, '2023-08-09 06:33:45', '2023-08-09 06:33:45');
INSERT INTO `users` VALUES (251, 5, 'Nghi', 'Han', 'Nguyen.nghihan@gmail.com', NULL, '0937 060 022', 'Nguyen.nghihan@gmail.com', NULL, NULL, '$2y$10$aVVHEiANzsyKH8D6ur6YquQR/nQl5w97S6fAzz0rVLlLIN5PD/8Ka', '1', '2511064d4519eb681e', 1, '13blB7texdJzha1PI8O4YqWB6op9tNykhqy55f30whfWs47hdZRc9kvjkwEL', '2023-08-09 21:55:26', '2023-08-09 21:55:26');
INSERT INTO `users` VALUES (252, 5, 'BS', 'Tuan', 'leminhtuan896@gmail.com', NULL, NULL, 'leminhtuan896@gmail.com', NULL, NULL, '$2y$10$g.5nRBCtMz7qY5RvZEMgf.mXgm012DNtoCy.iN4LeVLdN0wiCaYP2', '1', '2521064d451c4f262d', 1, 'CRTkdKi2gUEQNf36YRIlu7dgbenf5W7Q9zyMuLWmMiPhKVMsH4yXcnyXCGL9', '2023-08-09 21:56:04', '2023-08-09 21:56:04');
INSERT INTO `users` VALUES (253, 5, 'Luc', 'Nga', 'locthinga221287@gmail.com', NULL, '0367531836', 'locthinga221287@gmail.com', NULL, NULL, '$2y$10$Z9eZP.t3kJtC5yVhEzoBCeeOaW1nOyB/hMXO6JXBv9oUjIwYmTNHe', '1', '2531064d451df61fca', 1, 'LlMbcRHijLHK5Obfae2BH1SSaJxWpzVpsFvRqA5HBNo6qbymqKDugaWWnjwU', '2023-08-09 21:56:31', '2023-08-09 21:56:31');
INSERT INTO `users` VALUES (254, 5, 'Kim', 'Yen', 'huynhthikimyen01@gmail.com', NULL, NULL, 'huynhthikimyen01@gmail.com', NULL, NULL, '$2y$10$oy/3YdXzBinI.er/nJXYi.M486lnrV6M6OR4vijbUCdpvpy7I4gmK', '1', '2541064d460ed2a15c', 1, '6fB8CcswEFC3Lt4UqT7dXObdjF2Ym5ptdOWKXDbFkWzWdf3Ue7IwoZbiJQP3', '2023-08-09 23:00:45', '2023-08-09 23:00:45');
INSERT INTO `users` VALUES (255, 5, 'Thuy', 'Dung', 'thuydungcl45@gmail.com', NULL, NULL, 'thuydungcl45@gmail.com', NULL, NULL, '$2y$10$uNRub8wX//LhBrR8Lq5LOO7NV8GAQSOEgAaKtYNnbGcIgvhDuFUP.', '1', '2551064d4d05ebfea8', 1, 'eVu5LbJklgGsmpU2sSVupQhgMnL1eVWslwdsB0IB3pZpH8TCXEE6lIpvyuqd', '2023-08-10 06:56:14', '2023-08-10 06:56:14');
INSERT INTO `users` VALUES (256, 5, 'Giang', 'Thanh', 'giangthanh2301@gmail.com', NULL, '0896409092', 'giangthanh2301@gmail.com', NULL, NULL, '$2y$10$nOD6RKx9dJ6WOmmnmalmNuVGDD6IWQ1iOJuHteXJ2myAg1SbqVnXa', '1', '2561064d50c3bd9d65', 1, 'gnq9RkUDGNfBcJCSTHcLyYx7ZHogkKDEVyG4Dy3llXcI2k3mAcRnYUXNPQLe', '2023-08-10 11:11:39', '2023-08-10 11:11:59');
INSERT INTO `users` VALUES (257, 5, 'Anh', 'Vũ phạm', 'Vupham12101988@gmail.com', NULL, NULL, 'Vupham12101988@gmail.com', NULL, NULL, '$2y$10$hWPKTtv8wLMs9AmLskAbrOXc.KeIdBp1vUPkUss1ugrAEs1Vsdukm', '1', '2571064d6dd508fd70', 1, 'qOf59ky94hfodBWdGBOXnNZO7hjW0akcmV6orGQbpiZrx8KO3tskFzWsCr3K', '2023-08-11 20:16:00', '2023-08-11 21:49:46');
INSERT INTO `users` VALUES (258, 5, 'Ngoc', 'Yen', 'tranthingocyen2122@gmail.com', NULL, '0835226502', 'tranthingocyen2122@gmail.com', NULL, NULL, '$2y$10$cQ8pn8IqyERx9O7y/.dpxuDQiS.Bu/1DN.o8O9dkwFCJrlHr37Fcm', '1', '2581064d7aca56bb09', 1, 'Zl6wSKFOT9Q3vFI8udz2NFdQEEohZTyEk3bFFHICYCm9kpD1hxP1sOZwjoaJ', '2023-08-12 11:00:37', '2023-08-12 11:00:37');
INSERT INTO `users` VALUES (259, 4, 'Hieu', 'Pham', 'phamhieu77d1', NULL, '0971987697', 'phamhieu77d1@gmail.com', NULL, NULL, '$2y$10$o8fz6V92G2b5Qr8xkczoT.uBrLarD7tRqWsqNcxZ38JC9DAhvHJ.G', NULL, '2591064d83ded5e76e', 1, NULL, '2023-08-12 21:20:29', '2023-08-12 21:20:29');
INSERT INTO `users` VALUES (260, 5, 'NTT', 'Nhung', 'nttnhung95@gmail.com', NULL, '080 7505 7979', 'nttnhung95@gmail.com', NULL, NULL, '$2y$10$TNfnrMAUx4pSoTg.80EsLOMl/OOObH7ansHJB87ecJvzL44ncz8U2', '1', '2601064d8bfee965ec', 1, 'msnXxAKv4voHuJSfLlxjk9e2DqDpHjkA1TBv28RgXf0HrTs8x2UI3dTDClYu', '2023-08-13 06:35:10', '2023-08-13 06:35:27');
INSERT INTO `users` VALUES (261, 5, 'Su', 'Su', 'suubanhbao@gmail.com', NULL, '0878125825', 'suubanhbao@gmail.com', NULL, NULL, '$2y$10$.tAg09m6ltIS1jNKf3TH6e27844dXMG.orH.wWhClKaPLxeXcg..a', '1', '2611064d9e862ddb36', 1, NULL, '2023-08-14 03:40:02', '2023-08-14 03:40:02');
INSERT INTO `users` VALUES (262, 5, 'Lee', 'Thy', 'thylee2508@gmail.com', NULL, '0703943678', 'thylee2508@gmail.com', NULL, NULL, '$2y$10$JsWMqJwOM1Za7xPrqaU4w.sIIWMevM/gDcnq9pQasUHYCcoFTULle', '1', '2621064da41bf5e0de', 1, 'Ig1WBRsECg0hKEZkmlMPOyjG0kszCl5yLAB3lLZdP1YhWEO6CQXVNXKiZIdF', '2023-08-14 10:01:19', '2023-08-14 10:01:19');
INSERT INTO `users` VALUES (263, 5, 'Phuong', 'Thao', 'tp5835620@gmail.com', NULL, '0373639208', 'tp5835620@gmail.com', NULL, NULL, '$2y$10$YUgBov2px7jt1aSqmXA.muwD3Peg5YNLsauzbmLCuRozW5YIGPtTm', '1', '2631064db1d8a21610', 1, NULL, '2023-08-15 01:39:06', '2023-08-15 01:39:06');
INSERT INTO `users` VALUES (264, 5, 'Phuong', 'Chi', 'nngphuongchi@gmail.com', NULL, '0797202785', 'nngphuongchi@gmail.com', NULL, NULL, '$2y$10$VEq7VFwqnXRgHhAtEWrnseehLbq1QBVIHC1dyncuDRvJSh5W2m/Xu', '1', '2641064e042f7a3f08', 1, 'OJnJ2k5yNrYDDYj8N9mvWMVSUXAG6I6MLSI0B8CUORVxnTeGgixM5f64q1BZ', '2023-08-18 23:20:07', '2023-08-18 23:20:07');
INSERT INTO `users` VALUES (265, 5, 'My', 'Linh', 'ktml20112000@gmail.com', NULL, '0337353846', 'ktml20112000@gmail.com', NULL, NULL, '$2y$10$37f8Cy17Kp2dnZbiaKpyGOsHWTgmaw/CEZsMsB8lCqjz.A.lE.dB6', '1', '2651064e1ab7580eb3', 1, 'xkJLIwC1fXDloFJL5eGewR4Fw34gmV2xu4izROk6fQsezFpQAggogo35rkwc', '2023-08-20 00:58:13', '2023-08-20 00:58:13');
INSERT INTO `users` VALUES (266, 5, 'Truong', 'Thuy', 'jadetruonh59@gmail.com', NULL, '0973466263', 'jadetruonh59@gmail.com', NULL, NULL, '$2y$10$7JeCAnYknxbDOkPgkbnH0eBitgxSg6eV/B1ODla0U1fiyN8l.F5MK', '1', '2661064e32265d6ae6', 1, 'maQPoxfF7VI4TBy4RBGxb9I2eDUQOLoN5Qiw1Aj3fK5puPPEDAdeTDs1UJvB', '2023-08-21 03:37:57', '2023-08-21 03:37:57');
INSERT INTO `users` VALUES (267, 5, 'Tran', 'Ti', 'Titran3838@gmail.com', NULL, '0767783838', 'Titran3838@gmail.com', NULL, NULL, '$2y$10$JNLxE80PPrl9PoXKMwTr5OqjTY4YyUdeEk67ewq5XQCU6myVHNSlO', '1', '2671064e3825e53092', 1, 'd1ft7PkIXx3BFZgz11StmfuRrGeG8TFTIkk1kcqydy1sdcEAphg4pPD0nujr', '2023-08-21 10:27:26', '2023-08-21 10:27:26');
INSERT INTO `users` VALUES (268, 5, 'NT', 'Phi', 'ntphi010101@gmail.com', NULL, '0386505215', 'ntphi010101@gmail.com', NULL, NULL, '$2y$10$IXUKQpw/pQ.uQRzSqh4LX.ArxLNW6N2zM4k7ymVBf4IGGmWqdYT7q', '1', '2681064e4ca4fad411', 1, 'UQ0ETFdpvI2ikboDIBhFSJNVmRO7N7vtnZpPcVdFHOnVtHn8wNua1a6561QA', '2023-08-22 09:46:39', '2023-08-22 09:46:39');
INSERT INTO `users` VALUES (269, 5, 'Thy', 'Lan', 'lan.70222067tpe1@oude.edu.vn', NULL, '0396050009', 'lan.70222067tpe1@oude.edu.vn', NULL, NULL, '$2y$10$UVeHY5ov0WsrTPGbjLsS..1Rmzi8Gql6wmXEq3q8hdCNFUuLgTtJy', '1', '2691064e6d5131aa77', 1, 'iUmYgexKwSZj00S6vn2KkLsUCWKySVFiv8B7vas6mtP7DH1jhusQxyaLZgCW', '2023-08-23 22:57:07', '2023-08-23 22:57:07');
INSERT INTO `users` VALUES (270, 5, 'Test', 'Student', 'test.student@gmail.com', NULL, NULL, 'test.student@gmail.com', NULL, NULL, '$2y$10$ayamuPsh5C8vkqmrwVOmy.KsFx6zpKEO2ZLgeQbidHt8rTaM5//oi', '1', '2701064e7ee6b3762b', 1, NULL, '2023-08-24 19:57:31', '2023-08-24 22:00:03');
INSERT INTO `users` VALUES (271, 5, 'Cao', 'Thang', 'Caothang832002@gmail.com', NULL, '0978888989', 'Caothang832002@gmail.com', NULL, NULL, '$2y$10$TJi6VnGOaaAcLMcuZP88KuQMuWUdH134fTG3ZuMSbwgTrwsOe4d4i', '1', '2711064e80325a0831', 1, 'pM4uHn7YKX6l1dJ0etgaLDSSX0iaAAbFRBaOnGviIjmZZg2rllExwmsq7IKb', '2023-08-24 21:25:57', '2023-08-24 21:25:57');
INSERT INTO `users` VALUES (272, 4, 'Nhung', 'Nguyễn', 'baomy1711', NULL, '0358567849', 'baomy1711@gmail.com', NULL, NULL, '$2y$10$WYdJybrEZcp.pCgT411q.OQalp5zD29xFxIVUfEHYvrti/DyRxTbG', NULL, '2721064eac2b7bc332', 1, NULL, '2023-08-26 23:27:51', '2023-08-26 23:27:51');
INSERT INTO `users` VALUES (273, 5, 'Kim', 'Hoang', 'hoangnguyenngockim12a421@gmail.com', NULL, '0915768795', 'hoangnguyenngockim12a421@gmail.com', NULL, NULL, '$2y$10$ODdulxX6FYP2JMFC1m91SOt9i2/Vt/k2QiTZQWT8WNPmvKge4sG7i', '1', '2731064eb12380c5d1', 1, 'NTWkl2MGVq5SioEu1y1n2yQzgdFCl5RMeZoYMGoinjAGam3W2zrwe7n5AqZT', '2023-08-27 05:07:04', '2023-08-27 05:07:04');
INSERT INTO `users` VALUES (274, 2, 'Teacher', 'test', 'teacher02@gmail.com', NULL, NULL, 'teacher02@gmail.com', NULL, NULL, '$2y$10$m8GFNnokSHgGi60P/EFYD.Jw1EUD1OPh.5c6ui.OFMbm3EyWTWTDW', '1', '2741064ec2be22dff6', 1, NULL, '2023-08-28 01:08:50', '2023-08-28 01:09:27');
INSERT INTO `users` VALUES (275, 5, 'Hoc Sinh', 'Hoc Sinh', 'dany.dang90@gmail.com', NULL, '0868339608', 'dany.dang90@gmail.com', NULL, NULL, '$2y$10$jgMSAx0ZLtniXoXmpjpEIu4B/6pgkXX4Brj.cIJqFts3TxP69gv4y', '1', '2751064ec4369de0f1', 1, NULL, '2023-08-28 02:49:13', '2023-08-28 02:53:56');
INSERT INTO `users` VALUES (276, 5, 'Duc', 'Dang', 'studentduc@gmail.com', NULL, '0868339608', 'studentduc@gmail.com', NULL, NULL, '$2y$10$NlAWKS9S08ZPw.DHCHaw6.BuehEGTNyFexkBk4sI.LypjZ5xv60v.', '1', '2761064ec463b1edfa', 1, NULL, '2023-08-28 03:01:15', '2023-08-28 03:01:15');
INSERT INTO `users` VALUES (277, 5, 'Tran', 'Minh', 'tranvanminh05081986@gmail.com', NULL, '0985737636', 'tranvanminh05081986@gmail.com', NULL, NULL, '$2y$10$1B.5JsgydckmXDvqB86Fze/f5AVgqff9ea51bVs872ajP55C2XRea', '1', '2771064ed54ff95c99', 1, 'Emmz1CMYG43qlLDqqUCvaWQMO0zmRfxQgau5Qz9zP9RfzFf7oVnj7A1VMeQS', '2023-08-28 22:16:31', '2023-08-28 22:16:31');
INSERT INTO `users` VALUES (278, 5, 'Nguyen', 'Thanh', 'nguyenvu.hoaithanh110@gmail.com', NULL, '0906889835', 'nguyenvu.hoaithanh110@gmail.com', NULL, NULL, '$2y$10$LD7tWSIPNFI/4YWPIe7wkeUd7ivs.r86mP/CMXJvC4HQhWmgrw6HK', '1', '2781064ed744929e42', 1, 'teyMEHoB08CXbJHtWh9D2ARGLATZVUetTGJrkyfKdQX3OyVdCXmbQGD1kgoX', '2023-08-29 00:30:01', '2023-08-29 00:30:01');
INSERT INTO `users` VALUES (279, 4, 'Trịnh Hồng', 'Ánh', 'thiengiap84', NULL, '0394849337', 'thiengiap84@gmail.com', NULL, NULL, '$2y$10$xtGFyJHf/BZ8Hmq2EMfbYOLp/ZzWHZ7KIhUjDqQthVgN4bKQlClV6', NULL, '2791064efd20106f89', 1, NULL, '2023-08-30 19:34:25', '2023-08-30 19:34:25');
INSERT INTO `users` VALUES (281, 4, 'Thành', 'Vũ Hải', 'thanhpkhsx', NULL, '0904166869', 'thanhpkhsx@gmail.com', NULL, NULL, '$2y$10$JEvvvn2YyWmediNq3tE4Yedav716Pg3jPUYEX2NPgh.baqloc840a', NULL, '2811064f074cc82003', 1, NULL, '2023-08-31 07:09:00', '2023-08-31 07:09:00');
INSERT INTO `users` VALUES (283, 5, 'Truong', 'Van', 'nttruongvan1012@gmail.com', NULL, '0939280256', 'nttruongvan1012@gmail.com', NULL, NULL, '$2y$10$UXV5zi7XG5FU0FL.GEU/KuLYrefU7KfHkQ.IeboVtbkOyYZ1iK4hm', '1', '2831064f0a7ea0769b', 1, NULL, '2023-08-31 10:47:06', '2023-08-31 10:47:06');
INSERT INTO `users` VALUES (284, 4, 'Nguyen', 'Ngan', 'nguyenthikimngan19031997', NULL, '0359855212', 'nguyenthikimngan19031997@gmail.com', NULL, NULL, '$2y$10$4d/J9DtV0Coh3iyIcFjkOO.eLdrvp6s5DYTjmFaMRtUk8D95OGYqe', NULL, '2841064f12f6b7f9d8', 1, NULL, '2023-08-31 20:25:15', '2023-08-31 20:25:15');
INSERT INTO `users` VALUES (286, 5, 'Tuan', 'Hung', 'Phantuanhung11062004@gmail.com', NULL, '0963362168', 'Phantuanhung11062004@gmail.com', NULL, NULL, '$2y$10$Y6yP9SqQK6bWsOsrBNCds.ML0x2O.C9vGc0/6HC5DPZC1YB66FX/a', '1', '2861064f14b0cd1e10', 1, '2zqScFmXuZENCBnJyKYWxKtzuk202yMZ3PcwLicg15djdrce0ekOdAaGVeh7', '2023-08-31 22:23:08', '2023-08-31 22:23:08');
INSERT INTO `users` VALUES (287, 5, 'Thuan', 'Nguyen', 'thuannguyen11081999@gmail.com', NULL, '0365827149', 'thuannguyen11081999@gmail.com', NULL, NULL, '$2y$10$StAelPpsGbHaVI8hOy75.eo4xHef59Jk6sAgZ.SYyAZj/HcOqUTTa', '1', '2871064f184623ee6d', 1, '93vCvBtx0rfM5LAt6ssIZb0LpLV7Ar3Qq4LRRtNnuu3U01tYyCbImSSXSJrd', '2023-09-01 02:27:46', '2023-09-01 02:27:46');
INSERT INTO `users` VALUES (288, 4, 'Kim Hoang', 'Tran', 'Hoangtran254', NULL, '0918343134', 'Hoangtran254@gmail.com', NULL, NULL, '$2y$10$4I80gSIPf.9Ct1Qb6tKkLOxAtBnCAwkwoeoD9.VB0KOv3blLq1idG', NULL, '2881064f2d3d4e073a', 1, NULL, '2023-09-02 02:19:00', '2023-09-02 02:19:00');
INSERT INTO `users` VALUES (289, 5, 'Nguyen', 'Luc', 'nguyen.luc@dmt.co.jp', NULL, NULL, 'nguyen.luc@dmt.co.jp', NULL, NULL, '$2y$10$I930DtRR.6AyJwj0CdhJtuIxgmcDEpYV0VmMoUmG3k1LzhCQu84bq', '1', '2891064f30a4cb3761', 1, NULL, '2023-09-02 06:11:24', '2023-09-02 06:11:24');
INSERT INTO `users` VALUES (290, 4, 'Dư anh', 'bình', 'duanhbinh', NULL, '0948611111', 'duanhbinh@gmail.com', NULL, NULL, '$2y$10$78AeMf6nFp4kLtSMvJdrDebjX1tLQEJdBmKlr804ShxTxnJ72m/uG', NULL, '2901064f40033a50b9', 1, NULL, '2023-09-02 23:40:35', '2023-09-02 23:40:35');
INSERT INTO `users` VALUES (292, 4, 'Tuan', 'Hoang', 'Hoangtuan', NULL, '0915685681', 'Hoangtuan@ecomled.vn', NULL, NULL, '$2y$10$82/jc1oPaUQW1MgYV32ZJ.ohOI/BbKF.SQcVl9KkM7Rua0.6xe4Jq', NULL, '2921064f495b51d392', 1, NULL, '2023-09-03 10:18:29', '2023-09-03 10:18:29');

-- ----------------------------
-- Table structure for vendor_users
-- ----------------------------
DROP TABLE IF EXISTS `vendor_users`;
CREATE TABLE `vendor_users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `lesson_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1388 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vendor_users
-- ----------------------------
INSERT INTO `vendor_users` VALUES (28, 25, 35, '2023-04-03 22:02:36', '2023-04-03 22:02:36');
INSERT INTO `vendor_users` VALUES (29, 25, 36, '2023-04-03 22:03:51', '2023-04-03 22:03:51');
INSERT INTO `vendor_users` VALUES (33, 43, 35, '2023-04-11 19:34:58', '2023-04-11 19:34:58');
INSERT INTO `vendor_users` VALUES (35, 52, 36, '2023-04-20 10:01:27', '2023-04-20 10:01:27');
INSERT INTO `vendor_users` VALUES (36, 52, 35, '2023-04-20 10:23:34', '2023-04-20 10:23:34');
INSERT INTO `vendor_users` VALUES (37, 52, 37, '2023-04-20 20:06:56', '2023-04-20 20:06:56');
INSERT INTO `vendor_users` VALUES (39, 52, 38, '2023-04-21 04:35:35', '2023-04-21 04:35:35');
INSERT INTO `vendor_users` VALUES (40, 36, 35, '2023-04-21 22:47:33', '2023-04-21 22:47:33');
INSERT INTO `vendor_users` VALUES (41, 36, 36, '2023-04-21 22:47:36', '2023-04-21 22:47:36');
INSERT INTO `vendor_users` VALUES (42, 36, 37, '2023-04-21 22:53:14', '2023-04-21 22:53:14');
INSERT INTO `vendor_users` VALUES (44, 52, 39, '2023-04-22 17:08:25', '2023-04-22 17:08:25');
INSERT INTO `vendor_users` VALUES (45, 52, 40, '2023-04-22 17:25:24', '2023-04-22 17:25:24');
INSERT INTO `vendor_users` VALUES (46, 52, 41, '2023-04-23 15:54:13', '2023-04-23 15:54:13');
INSERT INTO `vendor_users` VALUES (47, 52, 42, '2023-04-24 19:45:22', '2023-04-24 19:45:22');
INSERT INTO `vendor_users` VALUES (48, 52, 43, '2023-04-24 20:04:23', '2023-04-24 20:04:23');
INSERT INTO `vendor_users` VALUES (49, 36, 38, '2023-04-24 21:04:52', '2023-04-24 21:04:52');
INSERT INTO `vendor_users` VALUES (50, 36, 39, '2023-04-24 21:05:16', '2023-04-24 21:05:16');
INSERT INTO `vendor_users` VALUES (51, 52, 44, '2023-04-26 17:13:54', '2023-04-26 17:13:54');
INSERT INTO `vendor_users` VALUES (52, 52, 45, '2023-04-30 15:42:30', '2023-04-30 15:42:30');
INSERT INTO `vendor_users` VALUES (53, 52, 46, '2023-05-03 20:16:48', '2023-05-03 20:16:48');
INSERT INTO `vendor_users` VALUES (54, 52, 47, '2023-05-07 16:15:49', '2023-05-07 16:15:49');
INSERT INTO `vendor_users` VALUES (56, 54, 35, '2023-05-08 16:23:05', '2023-05-08 16:23:05');
INSERT INTO `vendor_users` VALUES (57, 54, 36, '2023-05-08 17:05:52', '2023-05-08 17:05:52');
INSERT INTO `vendor_users` VALUES (58, 54, 37, '2023-05-08 17:44:16', '2023-05-08 17:44:16');
INSERT INTO `vendor_users` VALUES (60, 25, 37, '2023-05-10 13:20:20', '2023-05-10 13:20:20');
INSERT INTO `vendor_users` VALUES (61, 25, 38, '2023-05-10 13:20:22', '2023-05-10 13:20:22');
INSERT INTO `vendor_users` VALUES (62, 25, 39, '2023-05-10 13:20:25', '2023-05-10 13:20:25');
INSERT INTO `vendor_users` VALUES (63, 25, 40, '2023-05-10 13:20:27', '2023-05-10 13:20:27');
INSERT INTO `vendor_users` VALUES (64, 54, 38, '2023-05-10 20:33:15', '2023-05-10 20:33:15');
INSERT INTO `vendor_users` VALUES (65, 54, 39, '2023-05-10 20:47:42', '2023-05-10 20:47:42');
INSERT INTO `vendor_users` VALUES (66, 54, 40, '2023-05-10 20:52:47', '2023-05-10 20:52:47');
INSERT INTO `vendor_users` VALUES (67, 54, 41, '2023-05-10 20:53:11', '2023-05-10 20:53:11');
INSERT INTO `vendor_users` VALUES (68, 54, 42, '2023-05-10 21:03:19', '2023-05-10 21:03:19');
INSERT INTO `vendor_users` VALUES (69, 54, 43, '2023-05-10 21:04:37', '2023-05-10 21:04:37');
INSERT INTO `vendor_users` VALUES (71, 55, 35, '2023-05-17 12:27:02', '2023-05-17 12:27:02');
INSERT INTO `vendor_users` VALUES (72, 55, 36, '2023-05-17 13:22:17', '2023-05-17 13:22:17');
INSERT INTO `vendor_users` VALUES (73, 55, 37, '2023-05-17 13:27:25', '2023-05-17 13:27:25');
INSERT INTO `vendor_users` VALUES (74, 55, 38, '2023-05-18 14:58:55', '2023-05-18 14:58:55');
INSERT INTO `vendor_users` VALUES (75, 55, 39, '2023-05-18 14:58:57', '2023-05-18 14:58:57');
INSERT INTO `vendor_users` VALUES (76, 55, 40, '2023-05-18 15:23:23', '2023-05-18 15:23:23');
INSERT INTO `vendor_users` VALUES (77, 55, 41, '2023-05-19 12:15:29', '2023-05-19 12:15:29');
INSERT INTO `vendor_users` VALUES (78, 55, 42, '2023-05-19 13:33:58', '2023-05-19 13:33:58');
INSERT INTO `vendor_users` VALUES (79, 55, 43, '2023-05-19 20:04:20', '2023-05-19 20:04:20');
INSERT INTO `vendor_users` VALUES (80, 55, 44, '2023-05-20 14:59:57', '2023-05-20 14:59:57');
INSERT INTO `vendor_users` VALUES (81, 55, 45, '2023-05-20 15:04:04', '2023-05-20 15:04:04');
INSERT INTO `vendor_users` VALUES (82, 55, 46, '2023-05-20 15:06:58', '2023-05-20 15:06:58');
INSERT INTO `vendor_users` VALUES (83, 52, 48, '2023-05-22 09:39:27', '2023-05-22 09:39:27');
INSERT INTO `vendor_users` VALUES (84, 52, 50, '2023-05-22 09:39:31', '2023-05-22 09:39:31');
INSERT INTO `vendor_users` VALUES (86, 55, 47, '2023-05-23 12:41:44', '2023-05-23 12:41:44');
INSERT INTO `vendor_users` VALUES (87, 55, 48, '2023-05-23 12:45:25', '2023-05-23 12:45:25');
INSERT INTO `vendor_users` VALUES (88, 55, 50, '2023-05-23 12:50:14', '2023-05-23 12:50:14');
INSERT INTO `vendor_users` VALUES (89, 55, 51, '2023-05-23 15:08:06', '2023-05-23 15:08:06');
INSERT INTO `vendor_users` VALUES (90, 55, 52, '2023-05-23 15:15:21', '2023-05-23 15:15:21');
INSERT INTO `vendor_users` VALUES (91, 55, 53, '2023-05-23 15:16:53', '2023-05-23 15:16:53');
INSERT INTO `vendor_users` VALUES (92, 55, 54, '2023-05-23 15:26:26', '2023-05-23 15:26:26');
INSERT INTO `vendor_users` VALUES (93, 55, 55, '2023-05-23 15:27:22', '2023-05-23 15:27:22');
INSERT INTO `vendor_users` VALUES (95, 55, 56, '2023-05-27 20:04:25', '2023-05-27 20:04:25');
INSERT INTO `vendor_users` VALUES (96, 55, 57, '2023-05-27 20:04:26', '2023-05-27 20:04:26');
INSERT INTO `vendor_users` VALUES (97, 55, 58, '2023-05-27 20:04:27', '2023-05-27 20:04:27');
INSERT INTO `vendor_users` VALUES (98, 55, 59, '2023-05-27 20:04:29', '2023-05-27 20:04:29');
INSERT INTO `vendor_users` VALUES (99, 55, 60, '2023-05-27 20:04:32', '2023-05-27 20:04:32');
INSERT INTO `vendor_users` VALUES (100, 55, 61, '2023-05-27 20:06:51', '2023-05-27 20:06:51');
INSERT INTO `vendor_users` VALUES (101, 55, 62, '2023-05-27 20:23:46', '2023-05-27 20:23:46');
INSERT INTO `vendor_users` VALUES (102, 55, 63, '2023-05-27 20:23:48', '2023-05-27 20:23:48');
INSERT INTO `vendor_users` VALUES (103, 52, 23, '2023-05-30 11:16:20', '2023-05-30 11:16:20');
INSERT INTO `vendor_users` VALUES (104, 52, 8, '2023-05-30 16:30:45', '2023-05-30 16:30:45');
INSERT INTO `vendor_users` VALUES (105, 52, 9, '2023-05-30 16:30:46', '2023-05-30 16:30:46');
INSERT INTO `vendor_users` VALUES (106, 52, 10, '2023-05-30 16:30:46', '2023-05-30 16:30:46');
INSERT INTO `vendor_users` VALUES (107, 52, 11, '2023-05-30 16:30:51', '2023-05-30 16:30:51');
INSERT INTO `vendor_users` VALUES (108, 52, 12, '2023-05-30 16:30:54', '2023-05-30 16:30:54');
INSERT INTO `vendor_users` VALUES (109, 52, 13, '2023-05-30 16:30:55', '2023-05-30 16:30:55');
INSERT INTO `vendor_users` VALUES (110, 52, 14, '2023-05-30 16:30:58', '2023-05-30 16:30:58');
INSERT INTO `vendor_users` VALUES (111, 52, 15, '2023-05-30 16:30:59', '2023-05-30 16:30:59');
INSERT INTO `vendor_users` VALUES (112, 52, 16, '2023-05-30 16:31:02', '2023-05-30 16:31:02');
INSERT INTO `vendor_users` VALUES (113, 52, 17, '2023-05-30 16:31:02', '2023-05-30 16:31:02');
INSERT INTO `vendor_users` VALUES (114, 52, 22, '2023-05-30 16:31:10', '2023-05-30 16:31:10');
INSERT INTO `vendor_users` VALUES (115, 52, 18, '2023-05-30 16:31:13', '2023-05-30 16:31:13');
INSERT INTO `vendor_users` VALUES (116, 52, 20, '2023-05-30 16:31:16', '2023-05-30 16:31:16');
INSERT INTO `vendor_users` VALUES (117, 52, 19, '2023-05-30 16:31:18', '2023-05-30 16:31:18');
INSERT INTO `vendor_users` VALUES (118, 52, 21, '2023-05-30 16:31:19', '2023-05-30 16:31:19');
INSERT INTO `vendor_users` VALUES (119, 52, 24, '2023-05-30 16:31:25', '2023-05-30 16:31:25');
INSERT INTO `vendor_users` VALUES (120, 52, 25, '2023-05-31 14:23:21', '2023-05-31 14:23:21');
INSERT INTO `vendor_users` VALUES (121, 75, 82, '2023-06-05 20:22:49', '2023-06-05 20:22:49');
INSERT INTO `vendor_users` VALUES (126, 76, 209, '2023-06-12 22:58:41', '2023-06-12 22:58:41');
INSERT INTO `vendor_users` VALUES (127, 83, 209, '2023-06-13 06:47:47', '2023-06-13 06:47:47');
INSERT INTO `vendor_users` VALUES (130, 80, 210, '2023-06-13 09:46:32', '2023-06-13 09:46:32');
INSERT INTO `vendor_users` VALUES (131, 83, 210, '2023-06-13 11:06:14', '2023-06-13 11:06:14');
INSERT INTO `vendor_users` VALUES (133, 78, 209, '2023-06-13 13:33:04', '2023-06-13 13:33:04');
INSERT INTO `vendor_users` VALUES (134, 78, 210, '2023-06-13 13:33:05', '2023-06-13 13:33:05');
INSERT INTO `vendor_users` VALUES (135, 78, 211, '2023-06-13 13:48:25', '2023-06-13 13:48:25');
INSERT INTO `vendor_users` VALUES (136, 80, 211, '2023-06-13 17:27:51', '2023-06-13 17:27:51');
INSERT INTO `vendor_users` VALUES (137, 80, 209, '2023-06-13 17:36:05', '2023-06-13 17:36:05');
INSERT INTO `vendor_users` VALUES (138, 25, 209, '2023-06-13 17:51:55', '2023-06-13 17:51:55');
INSERT INTO `vendor_users` VALUES (139, 83, 212, '2023-06-13 19:20:11', '2023-06-13 19:20:11');
INSERT INTO `vendor_users` VALUES (140, 84, 209, '2023-06-14 05:24:55', '2023-06-14 05:24:55');
INSERT INTO `vendor_users` VALUES (141, 83, 213, '2023-06-14 05:53:52', '2023-06-14 05:53:52');
INSERT INTO `vendor_users` VALUES (142, 83, 214, '2023-06-14 05:53:55', '2023-06-14 05:53:55');
INSERT INTO `vendor_users` VALUES (143, 78, 212, '2023-06-14 08:45:12', '2023-06-14 08:45:12');
INSERT INTO `vendor_users` VALUES (144, 78, 213, '2023-06-14 11:55:01', '2023-06-14 11:55:01');
INSERT INTO `vendor_users` VALUES (145, 78, 214, '2023-06-14 11:55:09', '2023-06-14 11:55:09');
INSERT INTO `vendor_users` VALUES (146, 84, 210, '2023-06-14 15:01:14', '2023-06-14 15:01:14');
INSERT INTO `vendor_users` VALUES (147, 84, 211, '2023-06-14 15:48:12', '2023-06-14 15:48:12');
INSERT INTO `vendor_users` VALUES (148, 76, 210, '2023-06-14 17:45:12', '2023-06-14 17:45:12');
INSERT INTO `vendor_users` VALUES (149, 76, 212, '2023-06-14 17:47:41', '2023-06-14 17:47:41');
INSERT INTO `vendor_users` VALUES (150, 76, 211, '2023-06-14 17:47:42', '2023-06-14 17:47:42');
INSERT INTO `vendor_users` VALUES (151, 83, 215, '2023-06-14 18:13:40', '2023-06-14 18:13:40');
INSERT INTO `vendor_users` VALUES (152, 84, 212, '2023-06-14 19:06:56', '2023-06-14 19:06:56');
INSERT INTO `vendor_users` VALUES (153, 83, 216, '2023-06-15 06:49:41', '2023-06-15 06:49:41');
INSERT INTO `vendor_users` VALUES (154, 83, 218, '2023-06-15 10:57:08', '2023-06-15 10:57:08');
INSERT INTO `vendor_users` VALUES (155, 76, 214, '2023-06-15 11:52:35', '2023-06-15 11:52:35');
INSERT INTO `vendor_users` VALUES (156, 76, 213, '2023-06-15 11:52:38', '2023-06-15 11:52:38');
INSERT INTO `vendor_users` VALUES (157, 76, 215, '2023-06-15 11:52:44', '2023-06-15 11:52:44');
INSERT INTO `vendor_users` VALUES (158, 78, 215, '2023-06-15 13:35:33', '2023-06-15 13:35:33');
INSERT INTO `vendor_users` VALUES (159, 55, 216, '2023-06-15 14:27:04', '2023-06-15 14:27:04');
INSERT INTO `vendor_users` VALUES (160, 55, 217, '2023-06-15 14:35:41', '2023-06-15 14:35:41');
INSERT INTO `vendor_users` VALUES (161, 55, 218, '2023-06-15 14:39:50', '2023-06-15 14:39:50');
INSERT INTO `vendor_users` VALUES (162, 55, 219, '2023-06-15 14:43:03', '2023-06-15 14:43:03');
INSERT INTO `vendor_users` VALUES (163, 78, 216, '2023-06-15 14:46:24', '2023-06-15 14:46:24');
INSERT INTO `vendor_users` VALUES (164, 55, 220, '2023-06-15 14:59:38', '2023-06-15 14:59:38');
INSERT INTO `vendor_users` VALUES (165, 55, 221, '2023-06-15 15:10:24', '2023-06-15 15:10:24');
INSERT INTO `vendor_users` VALUES (166, 55, 222, '2023-06-15 15:16:05', '2023-06-15 15:16:05');
INSERT INTO `vendor_users` VALUES (167, 55, 223, '2023-06-15 15:22:05', '2023-06-15 15:22:05');
INSERT INTO `vendor_users` VALUES (168, 78, 217, '2023-06-15 18:02:32', '2023-06-15 18:02:32');
INSERT INTO `vendor_users` VALUES (169, 76, 216, '2023-06-15 18:04:06', '2023-06-15 18:04:06');
INSERT INTO `vendor_users` VALUES (170, 78, 218, '2023-06-15 18:47:54', '2023-06-15 18:47:54');
INSERT INTO `vendor_users` VALUES (171, 84, 213, '2023-06-15 21:38:18', '2023-06-15 21:38:18');
INSERT INTO `vendor_users` VALUES (172, 84, 214, '2023-06-15 21:43:27', '2023-06-15 21:43:27');
INSERT INTO `vendor_users` VALUES (173, 84, 215, '2023-06-16 05:03:49', '2023-06-16 05:03:49');
INSERT INTO `vendor_users` VALUES (174, 76, 217, '2023-06-16 07:36:34', '2023-06-16 07:36:34');
INSERT INTO `vendor_users` VALUES (175, 55, 224, '2023-06-16 08:41:01', '2023-06-16 08:41:01');
INSERT INTO `vendor_users` VALUES (176, 55, 225, '2023-06-16 08:46:19', '2023-06-16 08:46:19');
INSERT INTO `vendor_users` VALUES (177, 76, 218, '2023-06-16 08:46:59', '2023-06-16 08:46:59');
INSERT INTO `vendor_users` VALUES (178, 55, 226, '2023-06-16 08:48:12', '2023-06-16 08:48:12');
INSERT INTO `vendor_users` VALUES (179, 76, 219, '2023-06-16 08:54:32', '2023-06-16 08:54:32');
INSERT INTO `vendor_users` VALUES (180, 55, 227, '2023-06-16 08:56:48', '2023-06-16 08:56:48');
INSERT INTO `vendor_users` VALUES (181, 55, 228, '2023-06-16 08:57:11', '2023-06-16 08:57:11');
INSERT INTO `vendor_users` VALUES (182, 55, 229, '2023-06-16 09:01:11', '2023-06-16 09:01:11');
INSERT INTO `vendor_users` VALUES (183, 55, 230, '2023-06-16 09:42:19', '2023-06-16 09:42:19');
INSERT INTO `vendor_users` VALUES (184, 76, 220, '2023-06-16 11:17:30', '2023-06-16 11:17:30');
INSERT INTO `vendor_users` VALUES (185, 78, 220, '2023-06-16 11:59:32', '2023-06-16 11:59:32');
INSERT INTO `vendor_users` VALUES (186, 78, 219, '2023-06-16 11:59:32', '2023-06-16 11:59:32');
INSERT INTO `vendor_users` VALUES (187, 84, 216, '2023-06-16 18:18:15', '2023-06-16 18:18:15');
INSERT INTO `vendor_users` VALUES (188, 83, 219, '2023-06-16 19:17:52', '2023-06-16 19:17:52');
INSERT INTO `vendor_users` VALUES (190, 83, 221, '2023-06-16 20:44:24', '2023-06-16 20:44:24');
INSERT INTO `vendor_users` VALUES (191, 83, 222, '2023-06-17 11:18:46', '2023-06-17 11:18:46');
INSERT INTO `vendor_users` VALUES (192, 83, 224, '2023-06-17 13:05:52', '2023-06-17 13:05:52');
INSERT INTO `vendor_users` VALUES (193, 83, 225, '2023-06-17 13:10:07', '2023-06-17 13:10:07');
INSERT INTO `vendor_users` VALUES (194, 83, 226, '2023-06-17 13:19:41', '2023-06-17 13:19:41');
INSERT INTO `vendor_users` VALUES (195, 83, 227, '2023-06-17 13:34:39', '2023-06-17 13:34:39');
INSERT INTO `vendor_users` VALUES (196, 55, 231, '2023-06-17 13:56:41', '2023-06-17 13:56:41');
INSERT INTO `vendor_users` VALUES (197, 55, 232, '2023-06-17 13:57:07', '2023-06-17 13:57:07');
INSERT INTO `vendor_users` VALUES (198, 55, 233, '2023-06-17 13:57:08', '2023-06-17 13:57:08');
INSERT INTO `vendor_users` VALUES (199, 55, 234, '2023-06-17 13:57:08', '2023-06-17 13:57:08');
INSERT INTO `vendor_users` VALUES (201, 78, 221, '2023-06-17 18:48:43', '2023-06-17 18:48:43');
INSERT INTO `vendor_users` VALUES (202, 78, 222, '2023-06-17 19:37:32', '2023-06-17 19:37:32');
INSERT INTO `vendor_users` VALUES (203, 78, 223, '2023-06-17 19:37:39', '2023-06-17 19:37:39');
INSERT INTO `vendor_users` VALUES (204, 76, 221, '2023-06-17 21:22:36', '2023-06-17 21:22:36');
INSERT INTO `vendor_users` VALUES (205, 76, 222, '2023-06-17 21:25:42', '2023-06-17 21:25:42');
INSERT INTO `vendor_users` VALUES (206, 83, 223, '2023-06-17 21:43:12', '2023-06-17 21:43:12');
INSERT INTO `vendor_users` VALUES (207, 77, 209, '2023-06-17 23:26:44', '2023-06-17 23:26:44');
INSERT INTO `vendor_users` VALUES (208, 77, 210, '2023-06-17 23:36:55', '2023-06-17 23:36:55');
INSERT INTO `vendor_users` VALUES (209, 78, 283, '2023-06-18 10:17:22', '2023-06-18 10:17:22');
INSERT INTO `vendor_users` VALUES (210, 78, 282, '2023-06-18 10:17:22', '2023-06-18 10:17:22');
INSERT INTO `vendor_users` VALUES (211, 78, 281, '2023-06-18 10:17:22', '2023-06-18 10:17:22');
INSERT INTO `vendor_users` VALUES (212, 78, 280, '2023-06-18 10:17:23', '2023-06-18 10:17:23');
INSERT INTO `vendor_users` VALUES (213, 78, 279, '2023-06-18 10:17:23', '2023-06-18 10:17:23');
INSERT INTO `vendor_users` VALUES (214, 76, 269, '2023-06-18 11:00:43', '2023-06-18 11:00:43');
INSERT INTO `vendor_users` VALUES (215, 76, 270, '2023-06-18 11:00:44', '2023-06-18 11:00:44');
INSERT INTO `vendor_users` VALUES (216, 76, 271, '2023-06-18 11:00:44', '2023-06-18 11:00:44');
INSERT INTO `vendor_users` VALUES (217, 76, 273, '2023-06-18 11:00:47', '2023-06-18 11:00:47');
INSERT INTO `vendor_users` VALUES (218, 76, 274, '2023-06-18 11:00:47', '2023-06-18 11:00:47');
INSERT INTO `vendor_users` VALUES (219, 76, 272, '2023-06-18 11:00:48', '2023-06-18 11:00:48');
INSERT INTO `vendor_users` VALUES (220, 76, 275, '2023-06-18 11:00:51', '2023-06-18 11:00:51');
INSERT INTO `vendor_users` VALUES (221, 76, 276, '2023-06-18 11:00:51', '2023-06-18 11:00:51');
INSERT INTO `vendor_users` VALUES (222, 76, 278, '2023-06-18 11:00:51', '2023-06-18 11:00:51');
INSERT INTO `vendor_users` VALUES (223, 76, 277, '2023-06-18 11:00:54', '2023-06-18 11:00:54');
INSERT INTO `vendor_users` VALUES (224, 76, 279, '2023-06-18 11:00:57', '2023-06-18 11:00:57');
INSERT INTO `vendor_users` VALUES (225, 76, 280, '2023-06-18 11:00:59', '2023-06-18 11:00:59');
INSERT INTO `vendor_users` VALUES (226, 76, 282, '2023-06-18 11:01:00', '2023-06-18 11:01:00');
INSERT INTO `vendor_users` VALUES (227, 76, 281, '2023-06-18 11:01:00', '2023-06-18 11:01:00');
INSERT INTO `vendor_users` VALUES (228, 76, 283, '2023-06-18 11:01:04', '2023-06-18 11:01:04');
INSERT INTO `vendor_users` VALUES (229, 76, 284, '2023-06-18 11:01:05', '2023-06-18 11:01:05');
INSERT INTO `vendor_users` VALUES (230, 76, 285, '2023-06-18 11:01:05', '2023-06-18 11:01:05');
INSERT INTO `vendor_users` VALUES (231, 78, 284, '2023-06-18 13:09:07', '2023-06-18 13:09:07');
INSERT INTO `vendor_users` VALUES (232, 78, 285, '2023-06-18 18:52:11', '2023-06-18 18:52:11');
INSERT INTO `vendor_users` VALUES (233, 84, 269, '2023-06-19 04:37:10', '2023-06-19 04:37:10');
INSERT INTO `vendor_users` VALUES (234, 84, 270, '2023-06-19 04:37:11', '2023-06-19 04:37:11');
INSERT INTO `vendor_users` VALUES (235, 84, 271, '2023-06-19 04:37:13', '2023-06-19 04:37:13');
INSERT INTO `vendor_users` VALUES (236, 84, 272, '2023-06-19 04:37:14', '2023-06-19 04:37:14');
INSERT INTO `vendor_users` VALUES (237, 84, 273, '2023-06-19 04:37:17', '2023-06-19 04:37:17');
INSERT INTO `vendor_users` VALUES (238, 84, 274, '2023-06-19 04:37:19', '2023-06-19 04:37:19');
INSERT INTO `vendor_users` VALUES (239, 84, 275, '2023-06-19 04:37:24', '2023-06-19 04:37:24');
INSERT INTO `vendor_users` VALUES (240, 84, 276, '2023-06-19 04:37:28', '2023-06-19 04:37:28');
INSERT INTO `vendor_users` VALUES (242, 90, 418, '2023-06-19 11:00:53', '2023-06-19 11:00:53');
INSERT INTO `vendor_users` VALUES (244, 90, 420, '2023-06-19 11:05:17', '2023-06-19 11:05:17');
INSERT INTO `vendor_users` VALUES (245, 90, 421, '2023-06-19 11:08:54', '2023-06-19 11:08:54');
INSERT INTO `vendor_users` VALUES (246, 90, 422, '2023-06-19 11:15:02', '2023-06-19 11:15:02');
INSERT INTO `vendor_users` VALUES (247, 90, 423, '2023-06-19 11:18:59', '2023-06-19 11:18:59');
INSERT INTO `vendor_users` VALUES (248, 76, 346, '2023-06-19 17:28:23', '2023-06-19 17:28:23');
INSERT INTO `vendor_users` VALUES (249, 83, 347, '2023-06-19 19:04:27', '2023-06-19 19:04:27');
INSERT INTO `vendor_users` VALUES (250, 83, 348, '2023-06-19 19:04:28', '2023-06-19 19:04:28');
INSERT INTO `vendor_users` VALUES (251, 83, 346, '2023-06-19 19:04:36', '2023-06-19 19:04:36');
INSERT INTO `vendor_users` VALUES (252, 90, 417, '2023-06-19 19:33:22', '2023-06-19 19:33:22');
INSERT INTO `vendor_users` VALUES (253, 90, 419, '2023-06-19 19:33:23', '2023-06-19 19:33:23');
INSERT INTO `vendor_users` VALUES (254, 84, 327, '2023-06-19 19:59:28', '2023-06-19 19:59:28');
INSERT INTO `vendor_users` VALUES (255, 84, 328, '2023-06-19 19:59:30', '2023-06-19 19:59:30');
INSERT INTO `vendor_users` VALUES (256, 84, 329, '2023-06-19 19:59:31', '2023-06-19 19:59:31');
INSERT INTO `vendor_users` VALUES (257, 84, 330, '2023-06-19 19:59:34', '2023-06-19 19:59:34');
INSERT INTO `vendor_users` VALUES (258, 84, 331, '2023-06-19 19:59:36', '2023-06-19 19:59:36');
INSERT INTO `vendor_users` VALUES (259, 84, 332, '2023-06-19 19:59:40', '2023-06-19 19:59:40');
INSERT INTO `vendor_users` VALUES (260, 84, 333, '2023-06-19 19:59:43', '2023-06-19 19:59:43');
INSERT INTO `vendor_users` VALUES (261, 84, 334, '2023-06-19 19:59:46', '2023-06-19 19:59:46');
INSERT INTO `vendor_users` VALUES (262, 84, 335, '2023-06-19 19:59:50', '2023-06-19 19:59:50');
INSERT INTO `vendor_users` VALUES (263, 84, 336, '2023-06-20 06:08:50', '2023-06-20 06:08:50');
INSERT INTO `vendor_users` VALUES (265, 92, 327, '2023-06-20 09:44:20', '2023-06-20 09:44:20');
INSERT INTO `vendor_users` VALUES (266, 84, 337, '2023-06-20 11:12:20', '2023-06-20 11:12:20');
INSERT INTO `vendor_users` VALUES (268, 89, 327, '2023-06-20 16:24:13', '2023-06-20 16:24:13');
INSERT INTO `vendor_users` VALUES (269, 89, 328, '2023-06-20 16:24:14', '2023-06-20 16:24:14');
INSERT INTO `vendor_users` VALUES (270, 89, 329, '2023-06-20 16:24:14', '2023-06-20 16:24:14');
INSERT INTO `vendor_users` VALUES (271, 89, 331, '2023-06-20 16:24:20', '2023-06-20 16:24:20');
INSERT INTO `vendor_users` VALUES (272, 89, 332, '2023-06-20 16:24:21', '2023-06-20 16:24:21');
INSERT INTO `vendor_users` VALUES (273, 89, 330, '2023-06-20 16:24:27', '2023-06-20 16:24:27');
INSERT INTO `vendor_users` VALUES (274, 89, 333, '2023-06-20 17:12:25', '2023-06-20 17:12:25');
INSERT INTO `vendor_users` VALUES (275, 89, 334, '2023-06-20 17:12:29', '2023-06-20 17:12:29');
INSERT INTO `vendor_users` VALUES (276, 89, 335, '2023-06-20 17:12:33', '2023-06-20 17:12:33');
INSERT INTO `vendor_users` VALUES (277, 92, 328, '2023-06-20 18:25:04', '2023-06-20 18:25:04');
INSERT INTO `vendor_users` VALUES (278, 83, 349, '2023-06-20 19:52:01', '2023-06-20 19:52:01');
INSERT INTO `vendor_users` VALUES (279, 83, 350, '2023-06-20 19:52:04', '2023-06-20 19:52:04');
INSERT INTO `vendor_users` VALUES (280, 83, 351, '2023-06-20 19:52:08', '2023-06-20 19:52:08');
INSERT INTO `vendor_users` VALUES (281, 84, 338, '2023-06-21 04:12:29', '2023-06-21 04:12:29');
INSERT INTO `vendor_users` VALUES (282, 84, 339, '2023-06-21 04:45:19', '2023-06-21 04:45:19');
INSERT INTO `vendor_users` VALUES (283, 92, 329, '2023-06-21 09:02:49', '2023-06-21 09:02:49');
INSERT INTO `vendor_users` VALUES (284, 84, 340, '2023-06-21 10:12:30', '2023-06-21 10:12:30');
INSERT INTO `vendor_users` VALUES (285, 78, 346, '2023-06-21 13:14:38', '2023-06-21 13:14:38');
INSERT INTO `vendor_users` VALUES (286, 78, 347, '2023-06-21 14:03:56', '2023-06-21 14:03:56');
INSERT INTO `vendor_users` VALUES (287, 78, 348, '2023-06-21 14:41:28', '2023-06-21 14:41:28');
INSERT INTO `vendor_users` VALUES (288, 94, 327, '2023-06-21 19:10:00', '2023-06-21 19:10:00');
INSERT INTO `vendor_users` VALUES (289, 94, 328, '2023-06-21 20:21:08', '2023-06-21 20:21:08');
INSERT INTO `vendor_users` VALUES (290, 94, 329, '2023-06-21 20:22:41', '2023-06-21 20:22:41');
INSERT INTO `vendor_users` VALUES (291, 84, 341, '2023-06-22 04:29:57', '2023-06-22 04:29:57');
INSERT INTO `vendor_users` VALUES (292, 84, 342, '2023-06-22 04:56:05', '2023-06-22 04:56:05');
INSERT INTO `vendor_users` VALUES (293, 92, 330, '2023-06-22 04:57:29', '2023-06-22 04:57:29');
INSERT INTO `vendor_users` VALUES (294, 92, 331, '2023-06-22 04:58:42', '2023-06-22 04:58:42');
INSERT INTO `vendor_users` VALUES (295, 92, 332, '2023-06-22 04:58:46', '2023-06-22 04:58:46');
INSERT INTO `vendor_users` VALUES (296, 84, 343, '2023-06-22 05:01:32', '2023-06-22 05:01:32');
INSERT INTO `vendor_users` VALUES (297, 94, 330, '2023-06-22 05:36:24', '2023-06-22 05:36:24');
INSERT INTO `vendor_users` VALUES (298, 92, 333, '2023-06-22 16:48:45', '2023-06-22 16:48:45');
INSERT INTO `vendor_users` VALUES (299, 92, 334, '2023-06-22 16:48:46', '2023-06-22 16:48:46');
INSERT INTO `vendor_users` VALUES (300, 92, 335, '2023-06-22 17:03:53', '2023-06-22 17:03:53');
INSERT INTO `vendor_users` VALUES (302, 89, 337, '2023-06-22 18:31:59', '2023-06-22 18:31:59');
INSERT INTO `vendor_users` VALUES (303, 89, 338, '2023-06-22 18:32:01', '2023-06-22 18:32:01');
INSERT INTO `vendor_users` VALUES (304, 89, 339, '2023-06-22 18:39:38', '2023-06-22 18:39:38');
INSERT INTO `vendor_users` VALUES (305, 89, 340, '2023-06-22 18:39:38', '2023-06-22 18:39:38');
INSERT INTO `vendor_users` VALUES (306, 83, 352, '2023-06-22 19:27:26', '2023-06-22 19:27:26');
INSERT INTO `vendor_users` VALUES (307, 83, 353, '2023-06-22 19:27:30', '2023-06-22 19:27:30');
INSERT INTO `vendor_users` VALUES (308, 83, 354, '2023-06-22 19:27:34', '2023-06-22 19:27:34');
INSERT INTO `vendor_users` VALUES (309, 94, 331, '2023-06-22 19:55:54', '2023-06-22 19:55:54');
INSERT INTO `vendor_users` VALUES (310, 94, 332, '2023-06-22 20:08:58', '2023-06-22 20:08:58');
INSERT INTO `vendor_users` VALUES (311, 94, 333, '2023-06-22 20:34:42', '2023-06-22 20:34:42');
INSERT INTO `vendor_users` VALUES (312, 84, 344, '2023-06-23 05:46:34', '2023-06-23 05:46:34');
INSERT INTO `vendor_users` VALUES (313, 84, 345, '2023-06-23 05:47:21', '2023-06-23 05:47:21');
INSERT INTO `vendor_users` VALUES (314, 76, 328, '2023-06-23 16:41:36', '2023-06-23 16:41:36');
INSERT INTO `vendor_users` VALUES (315, 76, 327, '2023-06-23 16:41:36', '2023-06-23 16:41:36');
INSERT INTO `vendor_users` VALUES (316, 76, 329, '2023-06-23 16:41:37', '2023-06-23 16:41:37');
INSERT INTO `vendor_users` VALUES (317, 83, 355, '2023-06-23 20:11:23', '2023-06-23 20:11:23');
INSERT INTO `vendor_users` VALUES (318, 83, 356, '2023-06-23 20:19:55', '2023-06-23 20:19:55');
INSERT INTO `vendor_users` VALUES (319, 83, 358, '2023-06-23 22:19:04', '2023-06-23 22:19:04');
INSERT INTO `vendor_users` VALUES (320, 83, 359, '2023-06-23 22:53:29', '2023-06-23 22:53:29');
INSERT INTO `vendor_users` VALUES (321, 83, 360, '2023-06-23 23:07:35', '2023-06-23 23:07:35');
INSERT INTO `vendor_users` VALUES (322, 94, 334, '2023-06-24 07:45:18', '2023-06-24 07:45:18');
INSERT INTO `vendor_users` VALUES (323, 94, 335, '2023-06-24 08:30:20', '2023-06-24 08:30:20');
INSERT INTO `vendor_users` VALUES (324, 94, 336, '2023-06-24 08:31:42', '2023-06-24 08:31:42');
INSERT INTO `vendor_users` VALUES (325, 76, 331, '2023-06-24 11:38:39', '2023-06-24 11:38:39');
INSERT INTO `vendor_users` VALUES (326, 76, 330, '2023-06-24 11:38:39', '2023-06-24 11:38:39');
INSERT INTO `vendor_users` VALUES (327, 76, 333, '2023-06-24 11:38:40', '2023-06-24 11:38:40');
INSERT INTO `vendor_users` VALUES (328, 76, 332, '2023-06-24 11:38:40', '2023-06-24 11:38:40');
INSERT INTO `vendor_users` VALUES (329, 76, 334, '2023-06-24 11:38:44', '2023-06-24 11:38:44');
INSERT INTO `vendor_users` VALUES (330, 76, 335, '2023-06-24 11:38:44', '2023-06-24 11:38:44');
INSERT INTO `vendor_users` VALUES (331, 76, 336, '2023-06-24 11:38:45', '2023-06-24 11:38:45');
INSERT INTO `vendor_users` VALUES (332, 76, 337, '2023-06-24 11:38:49', '2023-06-24 11:38:49');
INSERT INTO `vendor_users` VALUES (333, 76, 338, '2023-06-24 11:38:50', '2023-06-24 11:38:50');
INSERT INTO `vendor_users` VALUES (334, 76, 339, '2023-06-24 11:38:50', '2023-06-24 11:38:50');
INSERT INTO `vendor_users` VALUES (335, 76, 340, '2023-06-24 11:38:51', '2023-06-24 11:38:51');
INSERT INTO `vendor_users` VALUES (336, 76, 341, '2023-06-24 11:38:51', '2023-06-24 11:38:51');
INSERT INTO `vendor_users` VALUES (337, 76, 342, '2023-06-24 11:38:54', '2023-06-24 11:38:54');
INSERT INTO `vendor_users` VALUES (338, 76, 343, '2023-06-24 11:38:54', '2023-06-24 11:38:54');
INSERT INTO `vendor_users` VALUES (339, 76, 344, '2023-06-24 11:38:57', '2023-06-24 11:38:57');
INSERT INTO `vendor_users` VALUES (340, 76, 345, '2023-06-24 11:38:58', '2023-06-24 11:38:58');
INSERT INTO `vendor_users` VALUES (341, 76, 347, '2023-06-24 11:39:03', '2023-06-24 11:39:03');
INSERT INTO `vendor_users` VALUES (342, 76, 348, '2023-06-24 11:39:04', '2023-06-24 11:39:04');
INSERT INTO `vendor_users` VALUES (343, 76, 349, '2023-06-24 11:39:04', '2023-06-24 11:39:04');
INSERT INTO `vendor_users` VALUES (344, 76, 350, '2023-06-24 11:39:05', '2023-06-24 11:39:05');
INSERT INTO `vendor_users` VALUES (345, 76, 351, '2023-06-24 11:39:08', '2023-06-24 11:39:08');
INSERT INTO `vendor_users` VALUES (346, 76, 352, '2023-06-24 11:39:11', '2023-06-24 11:39:11');
INSERT INTO `vendor_users` VALUES (347, 76, 353, '2023-06-24 11:39:11', '2023-06-24 11:39:11');
INSERT INTO `vendor_users` VALUES (348, 76, 354, '2023-06-24 11:39:15', '2023-06-24 11:39:15');
INSERT INTO `vendor_users` VALUES (349, 76, 355, '2023-06-24 11:39:15', '2023-06-24 11:39:15');
INSERT INTO `vendor_users` VALUES (350, 76, 356, '2023-06-24 11:39:19', '2023-06-24 11:39:19');
INSERT INTO `vendor_users` VALUES (351, 76, 357, '2023-06-24 11:39:25', '2023-06-24 11:39:25');
INSERT INTO `vendor_users` VALUES (352, 76, 358, '2023-06-24 11:39:26', '2023-06-24 11:39:26');
INSERT INTO `vendor_users` VALUES (353, 76, 359, '2023-06-24 11:39:27', '2023-06-24 11:39:27');
INSERT INTO `vendor_users` VALUES (354, 92, 336, '2023-06-24 15:31:27', '2023-06-24 15:31:27');
INSERT INTO `vendor_users` VALUES (355, 92, 337, '2023-06-24 15:31:33', '2023-06-24 15:31:33');
INSERT INTO `vendor_users` VALUES (356, 92, 338, '2023-06-24 15:31:34', '2023-06-24 15:31:34');
INSERT INTO `vendor_users` VALUES (357, 76, 360, '2023-06-24 16:48:15', '2023-06-24 16:48:15');
INSERT INTO `vendor_users` VALUES (358, 76, 361, '2023-06-24 16:48:18', '2023-06-24 16:48:18');
INSERT INTO `vendor_users` VALUES (359, 76, 362, '2023-06-24 16:48:21', '2023-06-24 16:48:21');
INSERT INTO `vendor_users` VALUES (360, 89, 336, '2023-06-24 18:09:01', '2023-06-24 18:09:01');
INSERT INTO `vendor_users` VALUES (361, 89, 341, '2023-06-24 18:09:11', '2023-06-24 18:09:11');
INSERT INTO `vendor_users` VALUES (362, 78, 383, '2023-06-24 18:14:35', '2023-06-24 18:14:35');
INSERT INTO `vendor_users` VALUES (363, 78, 382, '2023-06-24 18:14:36', '2023-06-24 18:14:36');
INSERT INTO `vendor_users` VALUES (364, 78, 380, '2023-06-24 18:14:40', '2023-06-24 18:14:40');
INSERT INTO `vendor_users` VALUES (365, 78, 379, '2023-06-24 18:14:40', '2023-06-24 18:14:40');
INSERT INTO `vendor_users` VALUES (366, 78, 378, '2023-06-24 18:14:40', '2023-06-24 18:14:40');
INSERT INTO `vendor_users` VALUES (367, 78, 335, '2023-06-24 18:22:24', '2023-06-24 18:22:24');
INSERT INTO `vendor_users` VALUES (368, 92, 339, '2023-06-24 19:03:31', '2023-06-24 19:03:31');
INSERT INTO `vendor_users` VALUES (369, 83, 361, '2023-06-24 21:21:39', '2023-06-24 21:21:39');
INSERT INTO `vendor_users` VALUES (370, 83, 362, '2023-06-24 21:35:37', '2023-06-24 21:35:37');
INSERT INTO `vendor_users` VALUES (371, 83, 363, '2023-06-24 22:58:03', '2023-06-24 22:58:03');
INSERT INTO `vendor_users` VALUES (372, 92, 340, '2023-06-25 07:54:55', '2023-06-25 07:54:55');
INSERT INTO `vendor_users` VALUES (373, 92, 341, '2023-06-25 07:54:58', '2023-06-25 07:54:58');
INSERT INTO `vendor_users` VALUES (374, 92, 344, '2023-06-25 07:55:03', '2023-06-25 07:55:03');
INSERT INTO `vendor_users` VALUES (375, 92, 343, '2023-06-25 08:00:42', '2023-06-25 08:00:42');
INSERT INTO `vendor_users` VALUES (376, 92, 342, '2023-06-25 08:00:42', '2023-06-25 08:00:42');
INSERT INTO `vendor_users` VALUES (377, 87, 327, '2023-06-25 09:02:57', '2023-06-25 09:02:57');
INSERT INTO `vendor_users` VALUES (378, 87, 328, '2023-06-25 10:18:17', '2023-06-25 10:18:17');
INSERT INTO `vendor_users` VALUES (379, 87, 329, '2023-06-25 10:25:06', '2023-06-25 10:25:06');
INSERT INTO `vendor_users` VALUES (380, 94, 337, '2023-06-25 12:27:37', '2023-06-25 12:27:37');
INSERT INTO `vendor_users` VALUES (382, 94, 338, '2023-06-25 14:56:16', '2023-06-25 14:56:16');
INSERT INTO `vendor_users` VALUES (383, 78, 352, '2023-06-25 17:07:22', '2023-06-25 17:07:22');
INSERT INTO `vendor_users` VALUES (385, 89, 342, '2023-06-25 17:20:20', '2023-06-25 17:20:20');
INSERT INTO `vendor_users` VALUES (386, 89, 344, '2023-06-25 17:20:31', '2023-06-25 17:20:31');
INSERT INTO `vendor_users` VALUES (387, 89, 343, '2023-06-25 17:20:31', '2023-06-25 17:20:31');
INSERT INTO `vendor_users` VALUES (388, 89, 345, '2023-06-25 17:21:05', '2023-06-25 17:21:05');
INSERT INTO `vendor_users` VALUES (389, 78, 354, '2023-06-26 09:05:59', '2023-06-26 09:05:59');
INSERT INTO `vendor_users` VALUES (390, 76, 363, '2023-06-26 12:25:12', '2023-06-26 12:25:12');
INSERT INTO `vendor_users` VALUES (391, 78, 355, '2023-06-26 15:07:49', '2023-06-26 15:07:49');
INSERT INTO `vendor_users` VALUES (392, 78, 356, '2023-06-26 15:43:56', '2023-06-26 15:43:56');
INSERT INTO `vendor_users` VALUES (393, 55, 333, '2023-06-26 17:00:26', '2023-06-26 17:00:26');
INSERT INTO `vendor_users` VALUES (394, 55, 334, '2023-06-26 17:05:25', '2023-06-26 17:05:25');
INSERT INTO `vendor_users` VALUES (395, 89, 346, '2023-06-26 17:08:00', '2023-06-26 17:08:00');
INSERT INTO `vendor_users` VALUES (396, 55, 335, '2023-06-26 17:13:25', '2023-06-26 17:13:25');
INSERT INTO `vendor_users` VALUES (397, 55, 336, '2023-06-26 17:21:52', '2023-06-26 17:21:52');
INSERT INTO `vendor_users` VALUES (398, 55, 337, '2023-06-26 17:26:20', '2023-06-26 17:26:20');
INSERT INTO `vendor_users` VALUES (399, 89, 348, '2023-06-26 17:43:27', '2023-06-26 17:43:27');
INSERT INTO `vendor_users` VALUES (400, 89, 347, '2023-06-26 17:43:34', '2023-06-26 17:43:34');
INSERT INTO `vendor_users` VALUES (401, 89, 349, '2023-06-26 17:48:33', '2023-06-26 17:48:33');
INSERT INTO `vendor_users` VALUES (402, 80, 327, '2023-06-26 18:48:17', '2023-06-26 18:48:17');
INSERT INTO `vendor_users` VALUES (403, 80, 328, '2023-06-26 18:48:18', '2023-06-26 18:48:18');
INSERT INTO `vendor_users` VALUES (404, 80, 329, '2023-06-26 18:48:19', '2023-06-26 18:48:19');
INSERT INTO `vendor_users` VALUES (405, 80, 330, '2023-06-26 18:48:23', '2023-06-26 18:48:23');
INSERT INTO `vendor_users` VALUES (406, 80, 331, '2023-06-26 18:48:28', '2023-06-26 18:48:28');
INSERT INTO `vendor_users` VALUES (407, 80, 332, '2023-06-26 18:57:22', '2023-06-26 18:57:22');
INSERT INTO `vendor_users` VALUES (408, 80, 333, '2023-06-26 18:57:22', '2023-06-26 18:57:22');
INSERT INTO `vendor_users` VALUES (409, 94, 339, '2023-06-26 19:45:44', '2023-06-26 19:45:44');
INSERT INTO `vendor_users` VALUES (410, 94, 340, '2023-06-26 20:21:02', '2023-06-26 20:21:02');
INSERT INTO `vendor_users` VALUES (411, 55, 330, '2023-06-27 06:41:06', '2023-06-27 06:41:06');
INSERT INTO `vendor_users` VALUES (412, 55, 331, '2023-06-27 06:54:28', '2023-06-27 06:54:28');
INSERT INTO `vendor_users` VALUES (413, 55, 332, '2023-06-27 06:54:28', '2023-06-27 06:54:28');
INSERT INTO `vendor_users` VALUES (414, 89, 438, '2023-06-27 17:59:45', '2023-06-27 17:59:45');
INSERT INTO `vendor_users` VALUES (415, 89, 428, '2023-06-27 17:59:57', '2023-06-27 17:59:57');
INSERT INTO `vendor_users` VALUES (416, 89, 429, '2023-06-27 17:59:58', '2023-06-27 17:59:58');
INSERT INTO `vendor_users` VALUES (417, 89, 430, '2023-06-27 17:59:58', '2023-06-27 17:59:58');
INSERT INTO `vendor_users` VALUES (418, 89, 431, '2023-06-27 17:59:59', '2023-06-27 17:59:59');
INSERT INTO `vendor_users` VALUES (419, 89, 432, '2023-06-27 17:59:59', '2023-06-27 17:59:59');
INSERT INTO `vendor_users` VALUES (420, 89, 433, '2023-06-27 18:00:00', '2023-06-27 18:00:00');
INSERT INTO `vendor_users` VALUES (421, 89, 434, '2023-06-27 18:00:04', '2023-06-27 18:00:04');
INSERT INTO `vendor_users` VALUES (422, 89, 435, '2023-06-27 18:00:04', '2023-06-27 18:00:04');
INSERT INTO `vendor_users` VALUES (423, 89, 436, '2023-06-27 18:00:05', '2023-06-27 18:00:05');
INSERT INTO `vendor_users` VALUES (424, 89, 437, '2023-06-27 18:00:05', '2023-06-27 18:00:05');
INSERT INTO `vendor_users` VALUES (425, 89, 439, '2023-06-27 18:00:14', '2023-06-27 18:00:14');
INSERT INTO `vendor_users` VALUES (426, 89, 440, '2023-06-27 18:00:14', '2023-06-27 18:00:14');
INSERT INTO `vendor_users` VALUES (427, 89, 441, '2023-06-27 18:00:15', '2023-06-27 18:00:15');
INSERT INTO `vendor_users` VALUES (428, 89, 442, '2023-06-27 18:00:16', '2023-06-27 18:00:16');
INSERT INTO `vendor_users` VALUES (429, 89, 443, '2023-06-27 18:00:16', '2023-06-27 18:00:16');
INSERT INTO `vendor_users` VALUES (430, 89, 444, '2023-06-27 18:00:16', '2023-06-27 18:00:16');
INSERT INTO `vendor_users` VALUES (431, 89, 445, '2023-06-27 18:00:17', '2023-06-27 18:00:17');
INSERT INTO `vendor_users` VALUES (432, 89, 446, '2023-06-27 18:00:17', '2023-06-27 18:00:17');
INSERT INTO `vendor_users` VALUES (433, 89, 447, '2023-06-27 18:00:21', '2023-06-27 18:00:21');
INSERT INTO `vendor_users` VALUES (434, 89, 448, '2023-06-27 18:00:26', '2023-06-27 18:00:26');
INSERT INTO `vendor_users` VALUES (435, 89, 449, '2023-06-27 18:00:26', '2023-06-27 18:00:26');
INSERT INTO `vendor_users` VALUES (436, 89, 450, '2023-06-27 18:00:29', '2023-06-27 18:00:29');
INSERT INTO `vendor_users` VALUES (437, 89, 451, '2023-06-27 18:07:21', '2023-06-27 18:07:21');
INSERT INTO `vendor_users` VALUES (438, 94, 441, '2023-06-27 20:37:18', '2023-06-27 20:37:18');
INSERT INTO `vendor_users` VALUES (439, 94, 442, '2023-06-27 21:09:24', '2023-06-27 21:09:24');
INSERT INTO `vendor_users` VALUES (440, 84, 428, '2023-06-28 05:01:46', '2023-06-28 05:01:46');
INSERT INTO `vendor_users` VALUES (441, 84, 429, '2023-06-28 05:01:46', '2023-06-28 05:01:46');
INSERT INTO `vendor_users` VALUES (442, 84, 430, '2023-06-28 05:01:47', '2023-06-28 05:01:47');
INSERT INTO `vendor_users` VALUES (443, 84, 431, '2023-06-28 05:01:49', '2023-06-28 05:01:49');
INSERT INTO `vendor_users` VALUES (445, 84, 433, '2023-06-28 05:01:50', '2023-06-28 05:01:50');
INSERT INTO `vendor_users` VALUES (446, 84, 434, '2023-06-28 05:01:54', '2023-06-28 05:01:54');
INSERT INTO `vendor_users` VALUES (447, 84, 435, '2023-06-28 05:01:54', '2023-06-28 05:01:54');
INSERT INTO `vendor_users` VALUES (448, 84, 436, '2023-06-28 05:01:55', '2023-06-28 05:01:55');
INSERT INTO `vendor_users` VALUES (449, 84, 437, '2023-06-28 05:01:58', '2023-06-28 05:01:58');
INSERT INTO `vendor_users` VALUES (450, 84, 438, '2023-06-28 05:02:04', '2023-06-28 05:02:04');
INSERT INTO `vendor_users` VALUES (451, 84, 439, '2023-06-28 05:02:05', '2023-06-28 05:02:05');
INSERT INTO `vendor_users` VALUES (452, 84, 440, '2023-06-28 05:02:07', '2023-06-28 05:02:07');
INSERT INTO `vendor_users` VALUES (453, 84, 441, '2023-06-28 05:02:08', '2023-06-28 05:02:08');
INSERT INTO `vendor_users` VALUES (454, 84, 442, '2023-06-28 05:02:09', '2023-06-28 05:02:09');
INSERT INTO `vendor_users` VALUES (455, 84, 443, '2023-06-28 05:02:12', '2023-06-28 05:02:12');
INSERT INTO `vendor_users` VALUES (456, 84, 444, '2023-06-28 05:02:12', '2023-06-28 05:02:12');
INSERT INTO `vendor_users` VALUES (457, 84, 445, '2023-06-28 05:02:13', '2023-06-28 05:02:13');
INSERT INTO `vendor_users` VALUES (458, 84, 446, '2023-06-28 05:02:17', '2023-06-28 05:02:17');
INSERT INTO `vendor_users` VALUES (459, 84, 447, '2023-06-28 05:02:21', '2023-06-28 05:02:21');
INSERT INTO `vendor_users` VALUES (460, 84, 448, '2023-06-28 05:08:19', '2023-06-28 05:08:19');
INSERT INTO `vendor_users` VALUES (463, 55, 440, '2023-06-29 09:18:05', '2023-06-29 09:18:05');
INSERT INTO `vendor_users` VALUES (464, 55, 441, '2023-06-29 09:18:06', '2023-06-29 09:18:06');
INSERT INTO `vendor_users` VALUES (465, 55, 442, '2023-06-29 09:18:09', '2023-06-29 09:18:09');
INSERT INTO `vendor_users` VALUES (467, 55, 438, '2023-06-29 09:38:47', '2023-06-29 09:38:47');
INSERT INTO `vendor_users` VALUES (468, 55, 439, '2023-06-29 09:38:50', '2023-06-29 09:38:50');
INSERT INTO `vendor_users` VALUES (469, 76, 473, '2023-06-29 11:38:17', '2023-06-29 11:38:17');
INSERT INTO `vendor_users` VALUES (470, 90, 424, '2023-06-29 14:39:57', '2023-06-29 14:39:57');
INSERT INTO `vendor_users` VALUES (471, 90, 425, '2023-06-29 14:39:58', '2023-06-29 14:39:58');
INSERT INTO `vendor_users` VALUES (472, 90, 426, '2023-06-29 14:40:03', '2023-06-29 14:40:03');
INSERT INTO `vendor_users` VALUES (473, 90, 427, '2023-06-29 14:40:09', '2023-06-29 14:40:09');
INSERT INTO `vendor_users` VALUES (474, 89, 452, '2023-06-29 17:20:34', '2023-06-29 17:20:34');
INSERT INTO `vendor_users` VALUES (475, 89, 453, '2023-06-29 17:42:49', '2023-06-29 17:42:49');
INSERT INTO `vendor_users` VALUES (476, 89, 454, '2023-06-29 17:42:49', '2023-06-29 17:42:49');
INSERT INTO `vendor_users` VALUES (477, 89, 455, '2023-06-29 18:04:39', '2023-06-29 18:04:39');
INSERT INTO `vendor_users` VALUES (479, 94, 445, '2023-06-29 19:17:22', '2023-06-29 19:17:22');
INSERT INTO `vendor_users` VALUES (480, 94, 444, '2023-06-29 19:17:28', '2023-06-29 19:17:28');
INSERT INTO `vendor_users` VALUES (481, 94, 446, '2023-06-29 19:27:41', '2023-06-29 19:27:41');
INSERT INTO `vendor_users` VALUES (482, 76, 472, '2023-06-30 07:02:49', '2023-06-30 07:02:49');
INSERT INTO `vendor_users` VALUES (483, 76, 471, '2023-06-30 07:02:49', '2023-06-30 07:02:49');
INSERT INTO `vendor_users` VALUES (484, 76, 469, '2023-06-30 07:02:50', '2023-06-30 07:02:50');
INSERT INTO `vendor_users` VALUES (486, 76, 467, '2023-06-30 07:02:53', '2023-06-30 07:02:53');
INSERT INTO `vendor_users` VALUES (487, 76, 468, '2023-06-30 07:02:54', '2023-06-30 07:02:54');
INSERT INTO `vendor_users` VALUES (488, 76, 470, '2023-06-30 07:02:54', '2023-06-30 07:02:54');
INSERT INTO `vendor_users` VALUES (489, 76, 474, '2023-06-30 07:35:42', '2023-06-30 07:35:42');
INSERT INTO `vendor_users` VALUES (490, 76, 475, '2023-06-30 07:35:43', '2023-06-30 07:35:43');
INSERT INTO `vendor_users` VALUES (491, 84, 432, '2023-06-30 23:13:56', '2023-06-30 23:13:56');
INSERT INTO `vendor_users` VALUES (492, 84, 449, '2023-06-30 23:14:07', '2023-06-30 23:14:07');
INSERT INTO `vendor_users` VALUES (493, 84, 450, '2023-06-30 23:23:34', '2023-06-30 23:23:34');
INSERT INTO `vendor_users` VALUES (494, 94, 447, '2023-07-01 07:25:06', '2023-07-01 07:25:06');
INSERT INTO `vendor_users` VALUES (495, 94, 440, '2023-07-01 07:29:15', '2023-07-01 07:29:15');
INSERT INTO `vendor_users` VALUES (496, 94, 439, '2023-07-01 07:29:16', '2023-07-01 07:29:16');
INSERT INTO `vendor_users` VALUES (497, 94, 438, '2023-07-01 07:29:19', '2023-07-01 07:29:19');
INSERT INTO `vendor_users` VALUES (498, 94, 443, '2023-07-01 07:29:20', '2023-07-01 07:29:20');
INSERT INTO `vendor_users` VALUES (499, 94, 428, '2023-07-01 07:29:29', '2023-07-01 07:29:29');
INSERT INTO `vendor_users` VALUES (500, 94, 429, '2023-07-01 07:29:30', '2023-07-01 07:29:30');
INSERT INTO `vendor_users` VALUES (501, 94, 430, '2023-07-01 07:29:33', '2023-07-01 07:29:33');
INSERT INTO `vendor_users` VALUES (502, 94, 431, '2023-07-01 07:29:34', '2023-07-01 07:29:34');
INSERT INTO `vendor_users` VALUES (503, 94, 432, '2023-07-01 07:29:37', '2023-07-01 07:29:37');
INSERT INTO `vendor_users` VALUES (504, 94, 433, '2023-07-01 07:29:39', '2023-07-01 07:29:39');
INSERT INTO `vendor_users` VALUES (505, 94, 434, '2023-07-01 07:29:43', '2023-07-01 07:29:43');
INSERT INTO `vendor_users` VALUES (506, 94, 435, '2023-07-01 07:29:47', '2023-07-01 07:29:47');
INSERT INTO `vendor_users` VALUES (507, 94, 436, '2023-07-01 07:29:47', '2023-07-01 07:29:47');
INSERT INTO `vendor_users` VALUES (508, 94, 437, '2023-07-01 07:30:02', '2023-07-01 07:30:02');
INSERT INTO `vendor_users` VALUES (509, 94, 448, '2023-07-01 07:30:08', '2023-07-01 07:30:08');
INSERT INTO `vendor_users` VALUES (510, 94, 449, '2023-07-01 07:47:54', '2023-07-01 07:47:54');
INSERT INTO `vendor_users` VALUES (511, 78, 458, '2023-07-01 13:34:18', '2023-07-01 13:34:18');
INSERT INTO `vendor_users` VALUES (512, 94, 450, '2023-07-01 20:02:52', '2023-07-01 20:02:52');
INSERT INTO `vendor_users` VALUES (513, 94, 451, '2023-07-01 20:08:24', '2023-07-01 20:08:24');
INSERT INTO `vendor_users` VALUES (514, 94, 452, '2023-07-01 20:49:19', '2023-07-01 20:49:19');
INSERT INTO `vendor_users` VALUES (515, 94, 453, '2023-07-01 20:51:44', '2023-07-01 20:51:44');
INSERT INTO `vendor_users` VALUES (516, 94, 454, '2023-07-01 21:01:55', '2023-07-01 21:01:55');
INSERT INTO `vendor_users` VALUES (517, 94, 455, '2023-07-01 21:02:14', '2023-07-01 21:02:14');
INSERT INTO `vendor_users` VALUES (518, 94, 456, '2023-07-01 21:03:45', '2023-07-01 21:03:45');
INSERT INTO `vendor_users` VALUES (519, 78, 459, '2023-07-02 15:45:59', '2023-07-02 15:45:59');
INSERT INTO `vendor_users` VALUES (520, 89, 456, '2023-07-02 16:48:04', '2023-07-02 16:48:04');
INSERT INTO `vendor_users` VALUES (521, 89, 457, '2023-07-02 16:53:01', '2023-07-02 16:53:01');
INSERT INTO `vendor_users` VALUES (522, 89, 458, '2023-07-02 17:13:13', '2023-07-02 17:13:13');
INSERT INTO `vendor_users` VALUES (523, 84, 451, '2023-07-03 04:31:10', '2023-07-03 04:31:10');
INSERT INTO `vendor_users` VALUES (524, 84, 452, '2023-07-03 04:31:13', '2023-07-03 04:31:13');
INSERT INTO `vendor_users` VALUES (525, 89, 459, '2023-07-03 16:53:59', '2023-07-03 16:53:59');
INSERT INTO `vendor_users` VALUES (526, 89, 460, '2023-07-03 17:00:16', '2023-07-03 17:00:16');
INSERT INTO `vendor_users` VALUES (527, 89, 461, '2023-07-03 17:04:24', '2023-07-03 17:04:24');
INSERT INTO `vendor_users` VALUES (528, 94, 457, '2023-07-03 21:00:07', '2023-07-03 21:00:07');
INSERT INTO `vendor_users` VALUES (529, 94, 458, '2023-07-03 21:00:24', '2023-07-03 21:00:24');
INSERT INTO `vendor_users` VALUES (530, 94, 459, '2023-07-03 21:01:51', '2023-07-03 21:01:51');
INSERT INTO `vendor_users` VALUES (531, 94, 460, '2023-07-03 21:02:44', '2023-07-03 21:02:44');
INSERT INTO `vendor_users` VALUES (532, 94, 461, '2023-07-03 21:04:12', '2023-07-03 21:04:12');
INSERT INTO `vendor_users` VALUES (533, 94, 462, '2023-07-03 21:05:03', '2023-07-03 21:05:03');
INSERT INTO `vendor_users` VALUES (534, 94, 463, '2023-07-03 21:26:58', '2023-07-03 21:26:58');
INSERT INTO `vendor_users` VALUES (535, 84, 453, '2023-07-04 05:08:00', '2023-07-04 05:08:00');
INSERT INTO `vendor_users` VALUES (536, 84, 454, '2023-07-04 05:31:46', '2023-07-04 05:31:46');
INSERT INTO `vendor_users` VALUES (537, 80, 438, '2023-07-04 08:33:20', '2023-07-04 08:33:20');
INSERT INTO `vendor_users` VALUES (538, 80, 437, '2023-07-04 09:39:40', '2023-07-04 09:39:40');
INSERT INTO `vendor_users` VALUES (539, 80, 428, '2023-07-04 09:39:44', '2023-07-04 09:39:44');
INSERT INTO `vendor_users` VALUES (540, 80, 429, '2023-07-04 09:39:46', '2023-07-04 09:39:46');
INSERT INTO `vendor_users` VALUES (541, 80, 430, '2023-07-04 09:39:49', '2023-07-04 09:39:49');
INSERT INTO `vendor_users` VALUES (542, 80, 431, '2023-07-04 09:39:51', '2023-07-04 09:39:51');
INSERT INTO `vendor_users` VALUES (543, 80, 432, '2023-07-04 09:39:54', '2023-07-04 09:39:54');
INSERT INTO `vendor_users` VALUES (544, 80, 433, '2023-07-04 09:39:57', '2023-07-04 09:39:57');
INSERT INTO `vendor_users` VALUES (545, 80, 439, '2023-07-04 09:40:13', '2023-07-04 09:40:13');
INSERT INTO `vendor_users` VALUES (546, 80, 440, '2023-07-04 09:49:55', '2023-07-04 09:49:55');
INSERT INTO `vendor_users` VALUES (547, 80, 442, '2023-07-04 13:27:36', '2023-07-04 13:27:36');
INSERT INTO `vendor_users` VALUES (548, 80, 441, '2023-07-04 13:27:36', '2023-07-04 13:27:36');
INSERT INTO `vendor_users` VALUES (549, 80, 435, '2023-07-04 13:56:41', '2023-07-04 13:56:41');
INSERT INTO `vendor_users` VALUES (550, 80, 434, '2023-07-04 13:56:44', '2023-07-04 13:56:44');
INSERT INTO `vendor_users` VALUES (551, 80, 436, '2023-07-04 13:56:49', '2023-07-04 13:56:49');
INSERT INTO `vendor_users` VALUES (552, 89, 462, '2023-07-04 17:56:52', '2023-07-04 17:56:52');
INSERT INTO `vendor_users` VALUES (553, 89, 463, '2023-07-04 18:12:02', '2023-07-04 18:12:02');
INSERT INTO `vendor_users` VALUES (554, 89, 464, '2023-07-04 18:23:37', '2023-07-04 18:23:37');
INSERT INTO `vendor_users` VALUES (555, 55, 453, '2023-07-05 07:27:56', '2023-07-05 07:27:56');
INSERT INTO `vendor_users` VALUES (556, 55, 454, '2023-07-05 07:30:48', '2023-07-05 07:30:48');
INSERT INTO `vendor_users` VALUES (557, 55, 455, '2023-07-05 08:42:05', '2023-07-05 08:42:05');
INSERT INTO `vendor_users` VALUES (558, 78, 461, '2023-07-05 15:37:43', '2023-07-05 15:37:43');
INSERT INTO `vendor_users` VALUES (559, 78, 460, '2023-07-05 15:38:14', '2023-07-05 15:38:14');
INSERT INTO `vendor_users` VALUES (560, 94, 464, '2023-07-05 20:32:07', '2023-07-05 20:32:07');
INSERT INTO `vendor_users` VALUES (561, 94, 465, '2023-07-05 20:36:43', '2023-07-05 20:36:43');
INSERT INTO `vendor_users` VALUES (562, 94, 485, '2023-07-05 20:37:20', '2023-07-05 20:37:20');
INSERT INTO `vendor_users` VALUES (563, 94, 466, '2023-07-05 20:41:47', '2023-07-05 20:41:47');
INSERT INTO `vendor_users` VALUES (564, 93, 428, '2023-07-06 08:56:38', '2023-07-06 08:56:38');
INSERT INTO `vendor_users` VALUES (565, 80, 443, '2023-07-06 13:51:25', '2023-07-06 13:51:25');
INSERT INTO `vendor_users` VALUES (566, 80, 444, '2023-07-06 13:51:25', '2023-07-06 13:51:25');
INSERT INTO `vendor_users` VALUES (567, 80, 445, '2023-07-06 14:21:50', '2023-07-06 14:21:50');
INSERT INTO `vendor_users` VALUES (568, 80, 447, '2023-07-06 14:21:54', '2023-07-06 14:21:54');
INSERT INTO `vendor_users` VALUES (569, 80, 449, '2023-07-06 16:23:51', '2023-07-06 16:23:51');
INSERT INTO `vendor_users` VALUES (570, 80, 448, '2023-07-06 16:23:53', '2023-07-06 16:23:53');
INSERT INTO `vendor_users` VALUES (571, 84, 455, '2023-07-07 04:28:11', '2023-07-07 04:28:11');
INSERT INTO `vendor_users` VALUES (572, 163, 428, '2023-07-07 05:08:30', '2023-07-07 05:08:30');
INSERT INTO `vendor_users` VALUES (573, 163, 429, '2023-07-07 05:16:05', '2023-07-07 05:16:05');
INSERT INTO `vendor_users` VALUES (574, 36, 428, '2023-07-07 11:50:26', '2023-07-07 11:50:26');
INSERT INTO `vendor_users` VALUES (575, 36, 429, '2023-07-07 11:50:27', '2023-07-07 11:50:27');
INSERT INTO `vendor_users` VALUES (576, 36, 430, '2023-07-07 11:50:27', '2023-07-07 11:50:27');
INSERT INTO `vendor_users` VALUES (577, 36, 431, '2023-07-07 12:03:24', '2023-07-07 12:03:24');
INSERT INTO `vendor_users` VALUES (578, 36, 432, '2023-07-07 12:03:24', '2023-07-07 12:03:24');
INSERT INTO `vendor_users` VALUES (579, 55, 459, '2023-07-07 13:28:53', '2023-07-07 13:28:53');
INSERT INTO `vendor_users` VALUES (580, 55, 460, '2023-07-07 13:28:53', '2023-07-07 13:28:53');
INSERT INTO `vendor_users` VALUES (581, 55, 461, '2023-07-07 13:28:54', '2023-07-07 13:28:54');
INSERT INTO `vendor_users` VALUES (582, 55, 462, '2023-07-07 13:29:56', '2023-07-07 13:29:56');
INSERT INTO `vendor_users` VALUES (583, 55, 463, '2023-07-07 13:34:26', '2023-07-07 13:34:26');
INSERT INTO `vendor_users` VALUES (584, 55, 464, '2023-07-07 13:39:11', '2023-07-07 13:39:11');
INSERT INTO `vendor_users` VALUES (585, 92, 428, '2023-07-07 17:14:28', '2023-07-07 17:14:28');
INSERT INTO `vendor_users` VALUES (586, 92, 429, '2023-07-07 17:14:29', '2023-07-07 17:14:29');
INSERT INTO `vendor_users` VALUES (587, 92, 430, '2023-07-07 17:14:34', '2023-07-07 17:14:34');
INSERT INTO `vendor_users` VALUES (588, 92, 431, '2023-07-07 17:14:36', '2023-07-07 17:14:36');
INSERT INTO `vendor_users` VALUES (589, 92, 432, '2023-07-07 17:14:38', '2023-07-07 17:14:38');
INSERT INTO `vendor_users` VALUES (590, 92, 433, '2023-07-07 17:14:42', '2023-07-07 17:14:42');
INSERT INTO `vendor_users` VALUES (591, 92, 434, '2023-07-07 17:14:45', '2023-07-07 17:14:45');
INSERT INTO `vendor_users` VALUES (592, 92, 435, '2023-07-07 17:14:47', '2023-07-07 17:14:47');
INSERT INTO `vendor_users` VALUES (593, 92, 436, '2023-07-07 17:14:49', '2023-07-07 17:14:49');
INSERT INTO `vendor_users` VALUES (594, 92, 437, '2023-07-07 17:14:54', '2023-07-07 17:14:54');
INSERT INTO `vendor_users` VALUES (595, 92, 438, '2023-07-07 17:14:59', '2023-07-07 17:14:59');
INSERT INTO `vendor_users` VALUES (596, 92, 439, '2023-07-07 17:15:02', '2023-07-07 17:15:02');
INSERT INTO `vendor_users` VALUES (597, 92, 440, '2023-07-07 17:15:05', '2023-07-07 17:15:05');
INSERT INTO `vendor_users` VALUES (598, 92, 441, '2023-07-07 17:15:07', '2023-07-07 17:15:07');
INSERT INTO `vendor_users` VALUES (599, 92, 442, '2023-07-07 17:15:11', '2023-07-07 17:15:11');
INSERT INTO `vendor_users` VALUES (600, 92, 443, '2023-07-07 17:15:14', '2023-07-07 17:15:14');
INSERT INTO `vendor_users` VALUES (601, 92, 444, '2023-07-07 17:15:17', '2023-07-07 17:15:17');
INSERT INTO `vendor_users` VALUES (602, 92, 445, '2023-07-07 17:15:20', '2023-07-07 17:15:20');
INSERT INTO `vendor_users` VALUES (603, 92, 446, '2023-07-07 17:15:25', '2023-07-07 17:15:25');
INSERT INTO `vendor_users` VALUES (604, 92, 447, '2023-07-07 17:15:28', '2023-07-07 17:15:28');
INSERT INTO `vendor_users` VALUES (605, 92, 448, '2023-07-07 17:15:37', '2023-07-07 17:15:37');
INSERT INTO `vendor_users` VALUES (606, 92, 449, '2023-07-07 17:15:38', '2023-07-07 17:15:38');
INSERT INTO `vendor_users` VALUES (607, 92, 450, '2023-07-07 17:15:41', '2023-07-07 17:15:41');
INSERT INTO `vendor_users` VALUES (608, 92, 451, '2023-07-07 17:15:47', '2023-07-07 17:15:47');
INSERT INTO `vendor_users` VALUES (609, 92, 452, '2023-07-07 17:15:50', '2023-07-07 17:15:50');
INSERT INTO `vendor_users` VALUES (610, 92, 453, '2023-07-07 17:15:52', '2023-07-07 17:15:52');
INSERT INTO `vendor_users` VALUES (611, 92, 454, '2023-07-07 17:15:55', '2023-07-07 17:15:55');
INSERT INTO `vendor_users` VALUES (612, 92, 455, '2023-07-07 17:15:58', '2023-07-07 17:15:58');
INSERT INTO `vendor_users` VALUES (613, 92, 456, '2023-07-07 17:16:02', '2023-07-07 17:16:02');
INSERT INTO `vendor_users` VALUES (614, 92, 457, '2023-07-07 17:16:05', '2023-07-07 17:16:05');
INSERT INTO `vendor_users` VALUES (615, 92, 458, '2023-07-07 17:16:14', '2023-07-07 17:16:14');
INSERT INTO `vendor_users` VALUES (616, 92, 459, '2023-07-07 17:16:18', '2023-07-07 17:16:18');
INSERT INTO `vendor_users` VALUES (617, 92, 460, '2023-07-07 17:16:21', '2023-07-07 17:16:21');
INSERT INTO `vendor_users` VALUES (618, 92, 461, '2023-07-07 17:16:24', '2023-07-07 17:16:24');
INSERT INTO `vendor_users` VALUES (619, 92, 462, '2023-07-07 17:16:27', '2023-07-07 17:16:27');
INSERT INTO `vendor_users` VALUES (620, 92, 463, '2023-07-07 17:16:31', '2023-07-07 17:16:31');
INSERT INTO `vendor_users` VALUES (621, 92, 464, '2023-07-07 17:16:34', '2023-07-07 17:16:34');
INSERT INTO `vendor_users` VALUES (622, 92, 465, '2023-07-07 17:16:37', '2023-07-07 17:16:37');
INSERT INTO `vendor_users` VALUES (623, 92, 485, '2023-07-07 17:16:41', '2023-07-07 17:16:41');
INSERT INTO `vendor_users` VALUES (624, 92, 466, '2023-07-07 17:16:45', '2023-07-07 17:16:45');
INSERT INTO `vendor_users` VALUES (625, 92, 467, '2023-07-07 17:16:53', '2023-07-07 17:16:53');
INSERT INTO `vendor_users` VALUES (626, 92, 468, '2023-07-07 17:16:56', '2023-07-07 17:16:56');
INSERT INTO `vendor_users` VALUES (627, 92, 469, '2023-07-07 17:16:59', '2023-07-07 17:16:59');
INSERT INTO `vendor_users` VALUES (628, 92, 470, '2023-07-07 17:17:02', '2023-07-07 17:17:02');
INSERT INTO `vendor_users` VALUES (629, 92, 471, '2023-07-07 17:17:05', '2023-07-07 17:17:05');
INSERT INTO `vendor_users` VALUES (630, 92, 472, '2023-07-07 17:17:08', '2023-07-07 17:17:08');
INSERT INTO `vendor_users` VALUES (631, 92, 473, '2023-07-07 17:17:13', '2023-07-07 17:17:13');
INSERT INTO `vendor_users` VALUES (632, 92, 474, '2023-07-07 17:17:17', '2023-07-07 17:17:17');
INSERT INTO `vendor_users` VALUES (633, 92, 475, '2023-07-07 17:17:20', '2023-07-07 17:17:20');
INSERT INTO `vendor_users` VALUES (634, 92, 476, '2023-07-07 17:17:23', '2023-07-07 17:17:23');
INSERT INTO `vendor_users` VALUES (635, 92, 477, '2023-07-07 17:36:41', '2023-07-07 17:36:41');
INSERT INTO `vendor_users` VALUES (636, 163, 430, '2023-07-07 20:52:39', '2023-07-07 20:52:39');
INSERT INTO `vendor_users` VALUES (637, 84, 456, '2023-07-08 04:43:59', '2023-07-08 04:43:59');
INSERT INTO `vendor_users` VALUES (638, 78, 462, '2023-07-08 04:48:13', '2023-07-08 04:48:13');
INSERT INTO `vendor_users` VALUES (639, 163, 431, '2023-07-08 05:19:44', '2023-07-08 05:19:44');
INSERT INTO `vendor_users` VALUES (640, 163, 432, '2023-07-08 12:46:13', '2023-07-08 12:46:13');
INSERT INTO `vendor_users` VALUES (641, 80, 455, '2023-07-08 13:28:24', '2023-07-08 13:28:24');
INSERT INTO `vendor_users` VALUES (642, 80, 454, '2023-07-08 13:28:24', '2023-07-08 13:28:24');
INSERT INTO `vendor_users` VALUES (643, 78, 463, '2023-07-08 14:02:40', '2023-07-08 14:02:40');
INSERT INTO `vendor_users` VALUES (644, 78, 464, '2023-07-08 15:11:24', '2023-07-08 15:11:24');
INSERT INTO `vendor_users` VALUES (645, 78, 465, '2023-07-08 15:11:30', '2023-07-08 15:11:30');
INSERT INTO `vendor_users` VALUES (646, 92, 478, '2023-07-08 16:07:50', '2023-07-08 16:07:50');
INSERT INTO `vendor_users` VALUES (647, 92, 479, '2023-07-08 16:07:53', '2023-07-08 16:07:53');
INSERT INTO `vendor_users` VALUES (648, 92, 480, '2023-07-08 16:29:09', '2023-07-08 16:29:09');
INSERT INTO `vendor_users` VALUES (650, 89, 465, '2023-07-08 17:00:31', '2023-07-08 17:00:31');
INSERT INTO `vendor_users` VALUES (651, 89, 485, '2023-07-08 17:00:31', '2023-07-08 17:00:31');
INSERT INTO `vendor_users` VALUES (652, 89, 466, '2023-07-08 17:29:13', '2023-07-08 17:29:13');
INSERT INTO `vendor_users` VALUES (655, 89, 467, '2023-07-08 17:42:37', '2023-07-08 17:42:37');
INSERT INTO `vendor_users` VALUES (656, 163, 433, '2023-07-08 18:08:49', '2023-07-08 18:08:49');
INSERT INTO `vendor_users` VALUES (657, 163, 434, '2023-07-09 08:09:06', '2023-07-09 08:09:06');
INSERT INTO `vendor_users` VALUES (658, 163, 435, '2023-07-09 09:17:19', '2023-07-09 09:17:19');
INSERT INTO `vendor_users` VALUES (659, 94, 467, '2023-07-09 13:52:40', '2023-07-09 13:52:40');
INSERT INTO `vendor_users` VALUES (660, 94, 468, '2023-07-09 14:01:50', '2023-07-09 14:01:50');
INSERT INTO `vendor_users` VALUES (661, 94, 469, '2023-07-09 14:07:46', '2023-07-09 14:07:46');
INSERT INTO `vendor_users` VALUES (662, 92, 481, '2023-07-09 17:46:19', '2023-07-09 17:46:19');
INSERT INTO `vendor_users` VALUES (663, 92, 482, '2023-07-09 18:02:18', '2023-07-09 18:02:18');
INSERT INTO `vendor_users` VALUES (665, 163, 436, '2023-07-09 20:53:20', '2023-07-09 20:53:20');
INSERT INTO `vendor_users` VALUES (666, 92, 483, '2023-07-09 20:58:01', '2023-07-09 20:58:01');
INSERT INTO `vendor_users` VALUES (667, 163, 438, '2023-07-10 08:22:00', '2023-07-10 08:22:00');
INSERT INTO `vendor_users` VALUES (668, 78, 466, '2023-07-10 11:40:09', '2023-07-10 11:40:09');
INSERT INTO `vendor_users` VALUES (669, 76, 511, '2023-07-10 14:28:07', '2023-07-10 14:28:07');
INSERT INTO `vendor_users` VALUES (670, 55, 465, '2023-07-10 14:54:38', '2023-07-10 14:54:38');
INSERT INTO `vendor_users` VALUES (671, 55, 485, '2023-07-10 14:57:08', '2023-07-10 14:57:08');
INSERT INTO `vendor_users` VALUES (672, 55, 466, '2023-07-10 15:01:18', '2023-07-10 15:01:18');
INSERT INTO `vendor_users` VALUES (673, 55, 467, '2023-07-10 15:18:14', '2023-07-10 15:18:14');
INSERT INTO `vendor_users` VALUES (674, 163, 437, '2023-07-10 18:35:23', '2023-07-10 18:35:23');
INSERT INTO `vendor_users` VALUES (675, 163, 439, '2023-07-10 18:35:26', '2023-07-10 18:35:26');
INSERT INTO `vendor_users` VALUES (676, 163, 440, '2023-07-11 07:18:23', '2023-07-11 07:18:23');
INSERT INTO `vendor_users` VALUES (677, 92, 486, '2023-07-11 08:35:25', '2023-07-11 08:35:25');
INSERT INTO `vendor_users` VALUES (678, 92, 487, '2023-07-11 08:35:25', '2023-07-11 08:35:25');
INSERT INTO `vendor_users` VALUES (679, 92, 488, '2023-07-11 09:07:36', '2023-07-11 09:07:36');
INSERT INTO `vendor_users` VALUES (680, 55, 468, '2023-07-11 12:39:34', '2023-07-11 12:39:34');
INSERT INTO `vendor_users` VALUES (681, 55, 469, '2023-07-11 12:44:31', '2023-07-11 12:44:31');
INSERT INTO `vendor_users` VALUES (682, 55, 470, '2023-07-11 12:47:29', '2023-07-11 12:47:29');
INSERT INTO `vendor_users` VALUES (683, 76, 515, '2023-07-11 14:25:30', '2023-07-11 14:25:30');
INSERT INTO `vendor_users` VALUES (684, 76, 514, '2023-07-11 14:25:38', '2023-07-11 14:25:38');
INSERT INTO `vendor_users` VALUES (685, 76, 513, '2023-07-11 14:25:38', '2023-07-11 14:25:38');
INSERT INTO `vendor_users` VALUES (686, 76, 512, '2023-07-11 14:25:38', '2023-07-11 14:25:38');
INSERT INTO `vendor_users` VALUES (687, 76, 510, '2023-07-11 14:25:39', '2023-07-11 14:25:39');
INSERT INTO `vendor_users` VALUES (688, 163, 441, '2023-07-11 17:21:04', '2023-07-11 17:21:04');
INSERT INTO `vendor_users` VALUES (689, 163, 442, '2023-07-11 17:21:05', '2023-07-11 17:21:05');
INSERT INTO `vendor_users` VALUES (691, 84, 457, '2023-07-12 04:32:06', '2023-07-12 04:32:06');
INSERT INTO `vendor_users` VALUES (692, 84, 458, '2023-07-12 04:52:00', '2023-07-12 04:52:00');
INSERT INTO `vendor_users` VALUES (693, 92, 489, '2023-07-12 08:51:23', '2023-07-12 08:51:23');
INSERT INTO `vendor_users` VALUES (694, 92, 490, '2023-07-12 09:12:41', '2023-07-12 09:12:41');
INSERT INTO `vendor_users` VALUES (695, 92, 491, '2023-07-12 09:14:56', '2023-07-12 09:14:56');
INSERT INTO `vendor_users` VALUES (696, 55, 471, '2023-07-12 09:26:48', '2023-07-12 09:26:48');
INSERT INTO `vendor_users` VALUES (697, 55, 472, '2023-07-12 09:36:03', '2023-07-12 09:36:03');
INSERT INTO `vendor_users` VALUES (698, 55, 473, '2023-07-12 09:41:08', '2023-07-12 09:41:08');
INSERT INTO `vendor_users` VALUES (699, 55, 474, '2023-07-12 09:47:15', '2023-07-12 09:47:15');
INSERT INTO `vendor_users` VALUES (700, 55, 475, '2023-07-12 09:50:15', '2023-07-12 09:50:15');
INSERT INTO `vendor_users` VALUES (701, 55, 476, '2023-07-12 09:53:53', '2023-07-12 09:53:53');
INSERT INTO `vendor_users` VALUES (702, 163, 443, '2023-07-12 09:54:24', '2023-07-12 09:54:24');
INSERT INTO `vendor_users` VALUES (703, 163, 444, '2023-07-12 09:54:29', '2023-07-12 09:54:29');
INSERT INTO `vendor_users` VALUES (704, 55, 477, '2023-07-12 09:56:24', '2023-07-12 09:56:24');
INSERT INTO `vendor_users` VALUES (705, 76, 517, '2023-07-12 10:15:53', '2023-07-12 10:15:53');
INSERT INTO `vendor_users` VALUES (706, 76, 516, '2023-07-12 10:15:53', '2023-07-12 10:15:53');
INSERT INTO `vendor_users` VALUES (707, 163, 445, '2023-07-12 14:00:39', '2023-07-12 14:00:39');
INSERT INTO `vendor_users` VALUES (708, 94, 470, '2023-07-12 19:42:49', '2023-07-12 19:42:49');
INSERT INTO `vendor_users` VALUES (709, 76, 518, '2023-07-13 09:16:25', '2023-07-13 09:16:25');
INSERT INTO `vendor_users` VALUES (710, 76, 519, '2023-07-13 09:16:26', '2023-07-13 09:16:26');
INSERT INTO `vendor_users` VALUES (711, 76, 520, '2023-07-13 09:29:48', '2023-07-13 09:29:48');
INSERT INTO `vendor_users` VALUES (712, 76, 521, '2023-07-13 10:23:32', '2023-07-13 10:23:32');
INSERT INTO `vendor_users` VALUES (713, 55, 478, '2023-07-13 18:15:19', '2023-07-13 18:15:19');
INSERT INTO `vendor_users` VALUES (714, 55, 479, '2023-07-13 18:17:38', '2023-07-13 18:17:38');
INSERT INTO `vendor_users` VALUES (715, 163, 446, '2023-07-14 10:40:12', '2023-07-14 10:40:12');
INSERT INTO `vendor_users` VALUES (716, 163, 447, '2023-07-14 10:40:15', '2023-07-14 10:40:15');
INSERT INTO `vendor_users` VALUES (717, 191, 428, '2023-07-14 11:39:41', '2023-07-14 11:39:41');
INSERT INTO `vendor_users` VALUES (718, 191, 429, '2023-07-14 11:39:41', '2023-07-14 11:39:41');
INSERT INTO `vendor_users` VALUES (719, 191, 430, '2023-07-14 11:39:42', '2023-07-14 11:39:42');
INSERT INTO `vendor_users` VALUES (720, 191, 431, '2023-07-14 11:39:46', '2023-07-14 11:39:46');
INSERT INTO `vendor_users` VALUES (721, 191, 432, '2023-07-14 11:39:49', '2023-07-14 11:39:49');
INSERT INTO `vendor_users` VALUES (722, 191, 433, '2023-07-14 11:39:53', '2023-07-14 11:39:53');
INSERT INTO `vendor_users` VALUES (723, 191, 434, '2023-07-14 11:39:57', '2023-07-14 11:39:57');
INSERT INTO `vendor_users` VALUES (724, 191, 435, '2023-07-14 11:40:01', '2023-07-14 11:40:01');
INSERT INTO `vendor_users` VALUES (725, 25, 428, '2023-07-14 12:47:02', '2023-07-14 12:47:02');
INSERT INTO `vendor_users` VALUES (726, 55, 480, '2023-07-14 12:52:32', '2023-07-14 12:52:32');
INSERT INTO `vendor_users` VALUES (727, 55, 481, '2023-07-14 12:59:51', '2023-07-14 12:59:51');
INSERT INTO `vendor_users` VALUES (728, 55, 482, '2023-07-14 13:03:15', '2023-07-14 13:03:15');
INSERT INTO `vendor_users` VALUES (729, 76, 522, '2023-07-14 14:47:30', '2023-07-14 14:47:30');
INSERT INTO `vendor_users` VALUES (730, 76, 523, '2023-07-14 14:47:30', '2023-07-14 14:47:30');
INSERT INTO `vendor_users` VALUES (731, 76, 524, '2023-07-14 14:47:30', '2023-07-14 14:47:30');
INSERT INTO `vendor_users` VALUES (732, 92, 492, '2023-07-14 15:09:08', '2023-07-14 15:09:08');
INSERT INTO `vendor_users` VALUES (733, 92, 493, '2023-07-14 15:09:11', '2023-07-14 15:09:11');
INSERT INTO `vendor_users` VALUES (734, 92, 494, '2023-07-14 15:28:10', '2023-07-14 15:28:10');
INSERT INTO `vendor_users` VALUES (735, 163, 1229, '2023-07-14 17:37:12', '2023-07-14 17:37:12');
INSERT INTO `vendor_users` VALUES (736, 163, 1231, '2023-07-14 17:37:12', '2023-07-14 17:37:12');
INSERT INTO `vendor_users` VALUES (737, 163, 1230, '2023-07-14 17:37:15', '2023-07-14 17:37:15');
INSERT INTO `vendor_users` VALUES (738, 163, 1232, '2023-07-14 17:37:18', '2023-07-14 17:37:18');
INSERT INTO `vendor_users` VALUES (739, 163, 1233, '2023-07-14 17:37:21', '2023-07-14 17:37:21');
INSERT INTO `vendor_users` VALUES (740, 163, 1234, '2023-07-14 17:37:29', '2023-07-14 17:37:29');
INSERT INTO `vendor_users` VALUES (741, 163, 1235, '2023-07-14 17:37:32', '2023-07-14 17:37:32');
INSERT INTO `vendor_users` VALUES (742, 163, 1236, '2023-07-14 17:37:35', '2023-07-14 17:37:35');
INSERT INTO `vendor_users` VALUES (743, 163, 1237, '2023-07-14 17:37:38', '2023-07-14 17:37:38');
INSERT INTO `vendor_users` VALUES (744, 163, 1238, '2023-07-14 17:37:42', '2023-07-14 17:37:42');
INSERT INTO `vendor_users` VALUES (745, 163, 1239, '2023-07-14 17:38:08', '2023-07-14 17:38:08');
INSERT INTO `vendor_users` VALUES (746, 163, 1240, '2023-07-14 17:38:12', '2023-07-14 17:38:12');
INSERT INTO `vendor_users` VALUES (747, 163, 1220, '2023-07-14 17:39:29', '2023-07-14 17:39:29');
INSERT INTO `vendor_users` VALUES (748, 188, 1219, '2023-07-14 19:52:36', '2023-07-14 19:52:36');
INSERT INTO `vendor_users` VALUES (749, 195, 1219, '2023-07-14 20:28:21', '2023-07-14 20:28:21');
INSERT INTO `vendor_users` VALUES (750, 188, 1220, '2023-07-14 20:29:56', '2023-07-14 20:29:56');
INSERT INTO `vendor_users` VALUES (751, 94, 1261, '2023-07-14 20:47:09', '2023-07-14 20:47:09');
INSERT INTO `vendor_users` VALUES (752, 94, 1262, '2023-07-14 20:51:19', '2023-07-14 20:51:19');
INSERT INTO `vendor_users` VALUES (754, 195, 1220, '2023-07-15 04:27:47', '2023-07-15 04:27:47');
INSERT INTO `vendor_users` VALUES (755, 94, 1263, '2023-07-15 06:15:11', '2023-07-15 06:15:11');
INSERT INTO `vendor_users` VALUES (756, 94, 1264, '2023-07-15 06:31:34', '2023-07-15 06:31:34');
INSERT INTO `vendor_users` VALUES (757, 89, 1219, '2023-07-15 08:16:21', '2023-07-15 08:16:21');
INSERT INTO `vendor_users` VALUES (758, 89, 1220, '2023-07-15 08:16:21', '2023-07-15 08:16:21');
INSERT INTO `vendor_users` VALUES (759, 89, 1221, '2023-07-15 08:16:22', '2023-07-15 08:16:22');
INSERT INTO `vendor_users` VALUES (760, 89, 1222, '2023-07-15 08:16:22', '2023-07-15 08:16:22');
INSERT INTO `vendor_users` VALUES (761, 89, 1223, '2023-07-15 08:16:23', '2023-07-15 08:16:23');
INSERT INTO `vendor_users` VALUES (762, 89, 1224, '2023-07-15 08:16:23', '2023-07-15 08:16:23');
INSERT INTO `vendor_users` VALUES (763, 89, 1225, '2023-07-15 08:16:24', '2023-07-15 08:16:24');
INSERT INTO `vendor_users` VALUES (764, 89, 1226, '2023-07-15 08:16:24', '2023-07-15 08:16:24');
INSERT INTO `vendor_users` VALUES (765, 89, 1227, '2023-07-15 08:16:28', '2023-07-15 08:16:28');
INSERT INTO `vendor_users` VALUES (766, 89, 1228, '2023-07-15 08:16:28', '2023-07-15 08:16:28');
INSERT INTO `vendor_users` VALUES (767, 89, 1239, '2023-07-15 08:16:32', '2023-07-15 08:16:32');
INSERT INTO `vendor_users` VALUES (768, 89, 1240, '2023-07-15 08:16:33', '2023-07-15 08:16:33');
INSERT INTO `vendor_users` VALUES (769, 89, 1241, '2023-07-15 08:16:33', '2023-07-15 08:16:33');
INSERT INTO `vendor_users` VALUES (770, 89, 1242, '2023-07-15 08:16:34', '2023-07-15 08:16:34');
INSERT INTO `vendor_users` VALUES (771, 89, 1243, '2023-07-15 08:16:35', '2023-07-15 08:16:35');
INSERT INTO `vendor_users` VALUES (772, 89, 1244, '2023-07-15 08:16:35', '2023-07-15 08:16:35');
INSERT INTO `vendor_users` VALUES (773, 89, 1245, '2023-07-15 08:16:36', '2023-07-15 08:16:36');
INSERT INTO `vendor_users` VALUES (774, 89, 1247, '2023-07-15 08:16:40', '2023-07-15 08:16:40');
INSERT INTO `vendor_users` VALUES (775, 89, 1246, '2023-07-15 08:16:40', '2023-07-15 08:16:40');
INSERT INTO `vendor_users` VALUES (776, 89, 1248, '2023-07-15 08:16:41', '2023-07-15 08:16:41');
INSERT INTO `vendor_users` VALUES (777, 89, 1249, '2023-07-15 08:16:45', '2023-07-15 08:16:45');
INSERT INTO `vendor_users` VALUES (778, 89, 1250, '2023-07-15 08:16:45', '2023-07-15 08:16:45');
INSERT INTO `vendor_users` VALUES (779, 89, 1251, '2023-07-15 08:16:46', '2023-07-15 08:16:46');
INSERT INTO `vendor_users` VALUES (781, 89, 1252, '2023-07-15 08:16:47', '2023-07-15 08:16:47');
INSERT INTO `vendor_users` VALUES (782, 89, 1253, '2023-07-15 08:16:48', '2023-07-15 08:16:48');
INSERT INTO `vendor_users` VALUES (783, 89, 1254, '2023-07-15 08:16:48', '2023-07-15 08:16:48');
INSERT INTO `vendor_users` VALUES (784, 89, 1255, '2023-07-15 08:16:49', '2023-07-15 08:16:49');
INSERT INTO `vendor_users` VALUES (785, 89, 1256, '2023-07-15 08:16:49', '2023-07-15 08:16:49');
INSERT INTO `vendor_users` VALUES (786, 89, 1257, '2023-07-15 08:16:52', '2023-07-15 08:16:52');
INSERT INTO `vendor_users` VALUES (787, 89, 1258, '2023-07-15 08:16:53', '2023-07-15 08:16:53');
INSERT INTO `vendor_users` VALUES (788, 89, 1259, '2023-07-15 08:16:57', '2023-07-15 08:16:57');
INSERT INTO `vendor_users` VALUES (792, 89, 1261, '2023-07-15 09:18:20', '2023-07-15 09:18:20');
INSERT INTO `vendor_users` VALUES (793, 163, 1241, '2023-07-15 11:22:57', '2023-07-15 11:22:57');
INSERT INTO `vendor_users` VALUES (794, 196, 1219, '2023-07-15 11:35:00', '2023-07-15 11:35:00');
INSERT INTO `vendor_users` VALUES (795, 196, 1220, '2023-07-15 11:35:01', '2023-07-15 11:35:01');
INSERT INTO `vendor_users` VALUES (796, 196, 1221, '2023-07-15 11:35:04', '2023-07-15 11:35:04');
INSERT INTO `vendor_users` VALUES (797, 196, 1222, '2023-07-15 11:35:06', '2023-07-15 11:35:06');
INSERT INTO `vendor_users` VALUES (798, 89, 1260, '2023-07-15 18:08:11', '2023-07-15 18:08:11');
INSERT INTO `vendor_users` VALUES (799, 89, 1262, '2023-07-15 18:08:12', '2023-07-15 18:08:12');
INSERT INTO `vendor_users` VALUES (800, 163, 1219, '2023-07-15 18:39:16', '2023-07-15 18:39:16');
INSERT INTO `vendor_users` VALUES (801, 163, 1221, '2023-07-15 18:39:21', '2023-07-15 18:39:21');
INSERT INTO `vendor_users` VALUES (802, 163, 1242, '2023-07-15 18:39:26', '2023-07-15 18:39:26');
INSERT INTO `vendor_users` VALUES (803, 163, 1243, '2023-07-15 18:39:29', '2023-07-15 18:39:29');
INSERT INTO `vendor_users` VALUES (804, 94, 1265, '2023-07-15 20:23:51', '2023-07-15 20:23:51');
INSERT INTO `vendor_users` VALUES (805, 94, 1266, '2023-07-15 20:30:22', '2023-07-15 20:30:22');
INSERT INTO `vendor_users` VALUES (806, 94, 1267, '2023-07-15 20:30:48', '2023-07-15 20:30:48');
INSERT INTO `vendor_users` VALUES (807, 94, 1268, '2023-07-15 20:33:29', '2023-07-15 20:33:29');
INSERT INTO `vendor_users` VALUES (808, 196, 1223, '2023-07-16 10:48:46', '2023-07-16 10:48:46');
INSERT INTO `vendor_users` VALUES (809, 196, 1224, '2023-07-16 10:48:47', '2023-07-16 10:48:47');
INSERT INTO `vendor_users` VALUES (810, 196, 1225, '2023-07-16 10:52:42', '2023-07-16 10:52:42');
INSERT INTO `vendor_users` VALUES (811, 163, 1244, '2023-07-16 14:12:06', '2023-07-16 14:12:06');
INSERT INTO `vendor_users` VALUES (812, 163, 1245, '2023-07-16 14:23:42', '2023-07-16 14:23:42');
INSERT INTO `vendor_users` VALUES (813, 163, 1246, '2023-07-16 14:23:45', '2023-07-16 14:23:45');
INSERT INTO `vendor_users` VALUES (814, 195, 1221, '2023-07-16 15:50:30', '2023-07-16 15:50:30');
INSERT INTO `vendor_users` VALUES (815, 195, 1222, '2023-07-16 16:31:53', '2023-07-16 16:31:53');
INSERT INTO `vendor_users` VALUES (816, 195, 1224, '2023-07-16 16:48:45', '2023-07-16 16:48:45');
INSERT INTO `vendor_users` VALUES (817, 195, 1223, '2023-07-16 16:48:45', '2023-07-16 16:48:45');
INSERT INTO `vendor_users` VALUES (818, 94, 1269, '2023-07-16 19:03:16', '2023-07-16 19:03:16');
INSERT INTO `vendor_users` VALUES (819, 94, 1270, '2023-07-16 19:05:58', '2023-07-16 19:05:58');
INSERT INTO `vendor_users` VALUES (820, 196, 1226, '2023-07-16 21:23:20', '2023-07-16 21:23:20');
INSERT INTO `vendor_users` VALUES (821, 196, 1227, '2023-07-16 21:42:20', '2023-07-16 21:42:20');
INSERT INTO `vendor_users` VALUES (823, 163, 1222, '2023-07-17 07:53:58', '2023-07-17 07:53:58');
INSERT INTO `vendor_users` VALUES (824, 89, 1263, '2023-07-17 08:21:42', '2023-07-17 08:21:42');
INSERT INTO `vendor_users` VALUES (825, 89, 1264, '2023-07-17 08:22:54', '2023-07-17 08:22:54');
INSERT INTO `vendor_users` VALUES (826, 163, 1247, '2023-07-17 08:48:16', '2023-07-17 08:48:16');
INSERT INTO `vendor_users` VALUES (827, 163, 1248, '2023-07-17 08:49:10', '2023-07-17 08:49:10');
INSERT INTO `vendor_users` VALUES (828, 92, 1279, '2023-07-17 09:00:54', '2023-07-17 09:00:54');
INSERT INTO `vendor_users` VALUES (829, 92, 1280, '2023-07-17 09:00:56', '2023-07-17 09:00:56');
INSERT INTO `vendor_users` VALUES (830, 92, 1281, '2023-07-17 09:00:58', '2023-07-17 09:00:58');
INSERT INTO `vendor_users` VALUES (831, 92, 1286, '2023-07-17 09:01:13', '2023-07-17 09:01:13');
INSERT INTO `vendor_users` VALUES (832, 92, 1287, '2023-07-17 09:01:17', '2023-07-17 09:01:17');
INSERT INTO `vendor_users` VALUES (833, 92, 1288, '2023-07-17 09:01:20', '2023-07-17 09:01:20');
INSERT INTO `vendor_users` VALUES (834, 170, 1219, '2023-07-17 13:25:47', '2023-07-17 13:25:47');
INSERT INTO `vendor_users` VALUES (835, 170, 1220, '2023-07-17 13:25:58', '2023-07-17 13:25:58');
INSERT INTO `vendor_users` VALUES (836, 170, 1221, '2023-07-17 13:26:00', '2023-07-17 13:26:00');
INSERT INTO `vendor_users` VALUES (837, 170, 1222, '2023-07-17 13:26:04', '2023-07-17 13:26:04');
INSERT INTO `vendor_users` VALUES (838, 170, 1223, '2023-07-17 13:26:07', '2023-07-17 13:26:07');
INSERT INTO `vendor_users` VALUES (839, 170, 1224, '2023-07-17 13:26:10', '2023-07-17 13:26:10');
INSERT INTO `vendor_users` VALUES (840, 170, 1225, '2023-07-17 13:26:13', '2023-07-17 13:26:13');
INSERT INTO `vendor_users` VALUES (841, 170, 1226, '2023-07-17 13:26:17', '2023-07-17 13:26:17');
INSERT INTO `vendor_users` VALUES (842, 170, 1227, '2023-07-17 13:26:20', '2023-07-17 13:26:20');
INSERT INTO `vendor_users` VALUES (843, 170, 1228, '2023-07-17 13:26:23', '2023-07-17 13:26:23');
INSERT INTO `vendor_users` VALUES (844, 170, 1229, '2023-07-17 13:26:28', '2023-07-17 13:26:28');
INSERT INTO `vendor_users` VALUES (845, 170, 1230, '2023-07-17 13:26:30', '2023-07-17 13:26:30');
INSERT INTO `vendor_users` VALUES (847, 196, 1228, '2023-07-18 05:43:34', '2023-07-18 05:43:34');
INSERT INTO `vendor_users` VALUES (848, 195, 1225, '2023-07-18 10:43:35', '2023-07-18 10:43:35');
INSERT INTO `vendor_users` VALUES (849, 195, 1226, '2023-07-18 10:43:40', '2023-07-18 10:43:40');
INSERT INTO `vendor_users` VALUES (850, 196, 1229, '2023-07-18 12:09:08', '2023-07-18 12:09:08');
INSERT INTO `vendor_users` VALUES (851, 196, 1230, '2023-07-18 12:09:14', '2023-07-18 12:09:14');
INSERT INTO `vendor_users` VALUES (852, 196, 1232, '2023-07-18 12:11:58', '2023-07-18 12:11:58');
INSERT INTO `vendor_users` VALUES (853, 196, 1233, '2023-07-18 12:11:58', '2023-07-18 12:11:58');
INSERT INTO `vendor_users` VALUES (854, 196, 1231, '2023-07-18 12:12:02', '2023-07-18 12:12:02');
INSERT INTO `vendor_users` VALUES (855, 196, 1234, '2023-07-18 12:28:59', '2023-07-18 12:28:59');
INSERT INTO `vendor_users` VALUES (856, 196, 1235, '2023-07-18 12:29:09', '2023-07-18 12:29:09');
INSERT INTO `vendor_users` VALUES (857, 205, 1219, '2023-07-18 14:57:22', '2023-07-18 14:57:22');
INSERT INTO `vendor_users` VALUES (858, 163, 1249, '2023-07-18 17:51:23', '2023-07-18 17:51:23');
INSERT INTO `vendor_users` VALUES (859, 163, 1250, '2023-07-18 17:51:28', '2023-07-18 17:51:28');
INSERT INTO `vendor_users` VALUES (860, 163, 1251, '2023-07-18 18:02:17', '2023-07-18 18:02:17');
INSERT INTO `vendor_users` VALUES (861, 92, 1292, '2023-07-19 10:55:58', '2023-07-19 10:55:58');
INSERT INTO `vendor_users` VALUES (862, 92, 1293, '2023-07-19 10:56:01', '2023-07-19 10:56:01');
INSERT INTO `vendor_users` VALUES (863, 92, 1294, '2023-07-19 10:56:05', '2023-07-19 10:56:05');
INSERT INTO `vendor_users` VALUES (864, 89, 1265, '2023-07-19 18:00:29', '2023-07-19 18:00:29');
INSERT INTO `vendor_users` VALUES (865, 163, 1252, '2023-07-19 18:18:00', '2023-07-19 18:18:00');
INSERT INTO `vendor_users` VALUES (866, 163, 1253, '2023-07-19 18:18:06', '2023-07-19 18:18:06');
INSERT INTO `vendor_users` VALUES (867, 163, 1254, '2023-07-19 18:31:34', '2023-07-19 18:31:34');
INSERT INTO `vendor_users` VALUES (868, 163, 1255, '2023-07-19 20:26:48', '2023-07-19 20:26:48');
INSERT INTO `vendor_users` VALUES (869, 188, 1221, '2023-07-20 08:07:21', '2023-07-20 08:07:21');
INSERT INTO `vendor_users` VALUES (870, 196, 1236, '2023-07-20 13:17:03', '2023-07-20 13:17:03');
INSERT INTO `vendor_users` VALUES (872, 195, 1227, '2023-07-20 15:20:28', '2023-07-20 15:20:28');
INSERT INTO `vendor_users` VALUES (874, 195, 1228, '2023-07-20 15:20:37', '2023-07-20 15:20:37');
INSERT INTO `vendor_users` VALUES (875, 195, 1229, '2023-07-20 15:28:07', '2023-07-20 15:28:07');
INSERT INTO `vendor_users` VALUES (876, 195, 1230, '2023-07-20 15:28:18', '2023-07-20 15:28:18');
INSERT INTO `vendor_users` VALUES (877, 76, 1313, '2023-07-20 16:40:23', '2023-07-20 16:40:23');
INSERT INTO `vendor_users` VALUES (878, 76, 1312, '2023-07-20 16:40:23', '2023-07-20 16:40:23');
INSERT INTO `vendor_users` VALUES (879, 76, 1314, '2023-07-20 16:40:24', '2023-07-20 16:40:24');
INSERT INTO `vendor_users` VALUES (880, 163, 1223, '2023-07-20 17:48:27', '2023-07-20 17:48:27');
INSERT INTO `vendor_users` VALUES (881, 89, 1269, '2023-07-20 19:27:21', '2023-07-20 19:27:21');
INSERT INTO `vendor_users` VALUES (882, 89, 1270, '2023-07-20 19:31:30', '2023-07-20 19:31:30');
INSERT INTO `vendor_users` VALUES (883, 89, 1271, '2023-07-20 19:49:11', '2023-07-20 19:49:11');
INSERT INTO `vendor_users` VALUES (884, 94, 1271, '2023-07-20 20:31:39', '2023-07-20 20:31:39');
INSERT INTO `vendor_users` VALUES (885, 94, 1272, '2023-07-20 20:42:57', '2023-07-20 20:42:57');
INSERT INTO `vendor_users` VALUES (886, 163, 1256, '2023-07-21 18:11:50', '2023-07-21 18:11:50');
INSERT INTO `vendor_users` VALUES (887, 163, 1257, '2023-07-21 19:00:09', '2023-07-21 19:00:09');
INSERT INTO `vendor_users` VALUES (888, 84, 1249, '2023-07-22 04:20:14', '2023-07-22 04:20:14');
INSERT INTO `vendor_users` VALUES (889, 84, 1250, '2023-07-22 04:20:15', '2023-07-22 04:20:15');
INSERT INTO `vendor_users` VALUES (890, 84, 1251, '2023-07-22 04:20:18', '2023-07-22 04:20:18');
INSERT INTO `vendor_users` VALUES (891, 84, 1252, '2023-07-22 04:20:24', '2023-07-22 04:20:24');
INSERT INTO `vendor_users` VALUES (892, 84, 1253, '2023-07-22 04:20:27', '2023-07-22 04:20:27');
INSERT INTO `vendor_users` VALUES (893, 52, 1238, '2023-07-22 05:51:12', '2023-07-22 05:51:12');
INSERT INTO `vendor_users` VALUES (894, 188, 1222, '2023-07-22 07:40:31', '2023-07-22 07:40:31');
INSERT INTO `vendor_users` VALUES (895, 76, 1316, '2023-07-22 11:58:25', '2023-07-22 11:58:25');
INSERT INTO `vendor_users` VALUES (896, 76, 1317, '2023-07-22 11:58:25', '2023-07-22 11:58:25');
INSERT INTO `vendor_users` VALUES (897, 76, 1315, '2023-07-22 11:58:30', '2023-07-22 11:58:30');
INSERT INTO `vendor_users` VALUES (898, 76, 1318, '2023-07-22 11:58:31', '2023-07-22 11:58:31');
INSERT INTO `vendor_users` VALUES (899, 76, 1309, '2023-07-22 11:58:33', '2023-07-22 11:58:33');
INSERT INTO `vendor_users` VALUES (900, 76, 1310, '2023-07-22 11:58:33', '2023-07-22 11:58:33');
INSERT INTO `vendor_users` VALUES (901, 76, 1311, '2023-07-22 11:58:34', '2023-07-22 11:58:34');
INSERT INTO `vendor_users` VALUES (902, 89, 1272, '2023-07-22 17:53:41', '2023-07-22 17:53:41');
INSERT INTO `vendor_users` VALUES (903, 89, 1273, '2023-07-22 18:02:41', '2023-07-22 18:02:41');
INSERT INTO `vendor_users` VALUES (904, 89, 1274, '2023-07-22 18:38:10', '2023-07-22 18:38:10');
INSERT INTO `vendor_users` VALUES (905, 163, 1259, '2023-07-22 19:06:59', '2023-07-22 19:06:59');
INSERT INTO `vendor_users` VALUES (906, 163, 1260, '2023-07-22 21:12:43', '2023-07-22 21:12:43');
INSERT INTO `vendor_users` VALUES (907, 163, 1261, '2023-07-22 21:12:50', '2023-07-22 21:12:50');
INSERT INTO `vendor_users` VALUES (908, 163, 1224, '2023-07-22 21:33:31', '2023-07-22 21:33:31');
INSERT INTO `vendor_users` VALUES (909, 163, 1225, '2023-07-22 21:33:53', '2023-07-22 21:33:53');
INSERT INTO `vendor_users` VALUES (910, 163, 1226, '2023-07-22 21:45:15', '2023-07-22 21:45:15');
INSERT INTO `vendor_users` VALUES (911, 163, 1227, '2023-07-22 21:47:30', '2023-07-22 21:47:30');
INSERT INTO `vendor_users` VALUES (912, 163, 1228, '2023-07-22 21:48:50', '2023-07-22 21:48:50');
INSERT INTO `vendor_users` VALUES (913, 163, 1262, '2023-07-23 18:49:46', '2023-07-23 18:49:46');
INSERT INTO `vendor_users` VALUES (914, 163, 1263, '2023-07-23 19:09:17', '2023-07-23 19:09:17');
INSERT INTO `vendor_users` VALUES (915, 163, 1264, '2023-07-23 19:11:45', '2023-07-23 19:11:45');
INSERT INTO `vendor_users` VALUES (916, 84, 1360, '2023-07-24 17:13:09', '2023-07-24 17:13:09');
INSERT INTO `vendor_users` VALUES (917, 163, 1372, '2023-07-24 19:00:25', '2023-07-24 19:00:25');
INSERT INTO `vendor_users` VALUES (918, 214, 1326, '2023-07-25 17:35:16', '2023-07-25 17:35:16');
INSERT INTO `vendor_users` VALUES (919, 214, 1325, '2023-07-25 17:41:37', '2023-07-25 17:41:37');
INSERT INTO `vendor_users` VALUES (920, 214, 1327, '2023-07-25 17:41:38', '2023-07-25 17:41:38');
INSERT INTO `vendor_users` VALUES (921, 163, 1375, '2023-07-25 19:51:28', '2023-07-25 19:51:28');
INSERT INTO `vendor_users` VALUES (922, 84, 1361, '2023-07-26 04:28:50', '2023-07-26 04:28:50');
INSERT INTO `vendor_users` VALUES (923, 163, 1492, '2023-07-27 17:40:58', '2023-07-27 17:40:58');
INSERT INTO `vendor_users` VALUES (924, 89, 1497, '2023-07-27 17:50:08', '2023-07-27 17:50:08');
INSERT INTO `vendor_users` VALUES (925, 94, 1500, '2023-07-27 20:34:58', '2023-07-27 20:34:58');
INSERT INTO `vendor_users` VALUES (926, 94, 1501, '2023-07-27 20:42:32', '2023-07-27 20:42:32');
INSERT INTO `vendor_users` VALUES (927, 55, 1489, '2023-07-29 14:07:03', '2023-07-29 14:07:03');
INSERT INTO `vendor_users` VALUES (928, 55, 1490, '2023-07-29 14:07:05', '2023-07-29 14:07:05');
INSERT INTO `vendor_users` VALUES (929, 55, 1491, '2023-07-29 14:07:07', '2023-07-29 14:07:07');
INSERT INTO `vendor_users` VALUES (930, 55, 1492, '2023-07-29 14:07:09', '2023-07-29 14:07:09');
INSERT INTO `vendor_users` VALUES (931, 55, 1493, '2023-07-29 14:07:13', '2023-07-29 14:07:13');
INSERT INTO `vendor_users` VALUES (932, 55, 1494, '2023-07-29 14:07:17', '2023-07-29 14:07:17');
INSERT INTO `vendor_users` VALUES (933, 163, 1497, '2023-07-30 07:40:35', '2023-07-30 07:40:35');
INSERT INTO `vendor_users` VALUES (934, 78, 1595, '2023-08-01 08:06:02', '2023-08-01 08:06:02');
INSERT INTO `vendor_users` VALUES (935, 232, 1557, '2023-08-01 14:08:12', '2023-08-01 14:08:12');
INSERT INTO `vendor_users` VALUES (936, 232, 1558, '2023-08-01 14:08:18', '2023-08-01 14:08:18');
INSERT INTO `vendor_users` VALUES (937, 163, 1621, '2023-08-01 19:06:50', '2023-08-01 19:06:50');
INSERT INTO `vendor_users` VALUES (938, 52, 1579, '2023-08-02 06:44:07', '2023-08-02 06:44:07');
INSERT INTO `vendor_users` VALUES (939, 195, 1557, '2023-08-02 08:55:41', '2023-08-02 08:55:41');
INSERT INTO `vendor_users` VALUES (940, 195, 1558, '2023-08-02 08:55:43', '2023-08-02 08:55:43');
INSERT INTO `vendor_users` VALUES (941, 195, 1559, '2023-08-02 08:57:01', '2023-08-02 08:57:01');
INSERT INTO `vendor_users` VALUES (943, 195, 1561, '2023-08-02 08:57:20', '2023-08-02 08:57:20');
INSERT INTO `vendor_users` VALUES (944, 195, 1562, '2023-08-02 08:57:29', '2023-08-02 08:57:29');
INSERT INTO `vendor_users` VALUES (945, 195, 1560, '2023-08-02 08:58:06', '2023-08-02 08:58:06');
INSERT INTO `vendor_users` VALUES (946, 195, 1563, '2023-08-02 08:58:43', '2023-08-02 08:58:43');
INSERT INTO `vendor_users` VALUES (947, 195, 1564, '2023-08-02 08:59:42', '2023-08-02 08:59:42');
INSERT INTO `vendor_users` VALUES (949, 195, 1565, '2023-08-02 09:00:36', '2023-08-02 09:00:36');
INSERT INTO `vendor_users` VALUES (950, 195, 1566, '2023-08-02 09:00:47', '2023-08-02 09:00:47');
INSERT INTO `vendor_users` VALUES (951, 195, 1567, '2023-08-02 09:01:35', '2023-08-02 09:01:35');
INSERT INTO `vendor_users` VALUES (952, 195, 1568, '2023-08-02 09:02:55', '2023-08-02 09:02:55');
INSERT INTO `vendor_users` VALUES (953, 234, 1557, '2023-08-02 09:42:55', '2023-08-02 09:42:55');
INSERT INTO `vendor_users` VALUES (954, 78, 1596, '2023-08-02 13:25:35', '2023-08-02 13:25:35');
INSERT INTO `vendor_users` VALUES (955, 232, 1559, '2023-08-02 14:18:37', '2023-08-02 14:18:37');
INSERT INTO `vendor_users` VALUES (956, 232, 1560, '2023-08-02 14:33:08', '2023-08-02 14:33:08');
INSERT INTO `vendor_users` VALUES (957, 232, 1561, '2023-08-02 15:13:20', '2023-08-02 15:13:20');
INSERT INTO `vendor_users` VALUES (958, 163, 1624, '2023-08-02 17:52:27', '2023-08-02 17:52:27');
INSERT INTO `vendor_users` VALUES (959, 227, 1557, '2023-08-02 19:47:11', '2023-08-02 19:47:11');
INSERT INTO `vendor_users` VALUES (960, 227, 1558, '2023-08-02 21:24:59', '2023-08-02 21:24:59');
INSERT INTO `vendor_users` VALUES (961, 78, 1597, '2023-08-03 06:49:34', '2023-08-03 06:49:34');
INSERT INTO `vendor_users` VALUES (962, 232, 1562, '2023-08-03 11:22:57', '2023-08-03 11:22:57');
INSERT INTO `vendor_users` VALUES (963, 232, 1563, '2023-08-03 11:27:33', '2023-08-03 11:27:33');
INSERT INTO `vendor_users` VALUES (964, 232, 1564, '2023-08-03 11:30:40', '2023-08-03 11:30:40');
INSERT INTO `vendor_users` VALUES (965, 78, 1598, '2023-08-03 12:13:37', '2023-08-03 12:13:37');
INSERT INTO `vendor_users` VALUES (966, 78, 1599, '2023-08-03 12:14:28', '2023-08-03 12:14:28');
INSERT INTO `vendor_users` VALUES (967, 195, 1569, '2023-08-03 14:20:34', '2023-08-03 14:20:34');
INSERT INTO `vendor_users` VALUES (968, 195, 1570, '2023-08-03 14:20:34', '2023-08-03 14:20:34');
INSERT INTO `vendor_users` VALUES (969, 195, 1571, '2023-08-03 14:20:35', '2023-08-03 14:20:35');
INSERT INTO `vendor_users` VALUES (970, 195, 1572, '2023-08-03 14:20:41', '2023-08-03 14:20:41');
INSERT INTO `vendor_users` VALUES (971, 195, 1573, '2023-08-03 14:34:52', '2023-08-03 14:34:52');
INSERT INTO `vendor_users` VALUES (972, 195, 1574, '2023-08-03 14:35:38', '2023-08-03 14:35:38');
INSERT INTO `vendor_users` VALUES (973, 234, 1558, '2023-08-03 15:32:22', '2023-08-03 15:32:22');
INSERT INTO `vendor_users` VALUES (974, 234, 1559, '2023-08-03 15:32:22', '2023-08-03 15:32:22');
INSERT INTO `vendor_users` VALUES (975, 234, 1561, '2023-08-03 16:51:28', '2023-08-03 16:51:28');
INSERT INTO `vendor_users` VALUES (976, 234, 1562, '2023-08-03 16:51:28', '2023-08-03 16:51:28');
INSERT INTO `vendor_users` VALUES (977, 234, 1560, '2023-08-03 16:51:32', '2023-08-03 16:51:32');
INSERT INTO `vendor_users` VALUES (978, 163, 1627, '2023-08-03 19:02:54', '2023-08-03 19:02:54');
INSERT INTO `vendor_users` VALUES (979, 227, 1559, '2023-08-03 20:12:21', '2023-08-03 20:12:21');
INSERT INTO `vendor_users` VALUES (981, 227, 1560, '2023-08-03 21:12:31', '2023-08-03 21:12:31');
INSERT INTO `vendor_users` VALUES (982, 227, 1561, '2023-08-03 21:12:38', '2023-08-03 21:12:38');
INSERT INTO `vendor_users` VALUES (983, 227, 1562, '2023-08-04 09:35:47', '2023-08-04 09:35:47');
INSERT INTO `vendor_users` VALUES (984, 232, 1565, '2023-08-04 15:09:53', '2023-08-04 15:09:53');
INSERT INTO `vendor_users` VALUES (985, 232, 1566, '2023-08-04 15:31:11', '2023-08-04 15:31:11');
INSERT INTO `vendor_users` VALUES (986, 232, 1567, '2023-08-04 15:35:27', '2023-08-04 15:35:27');
INSERT INTO `vendor_users` VALUES (987, 232, 1568, '2023-08-04 15:49:21', '2023-08-04 15:49:21');
INSERT INTO `vendor_users` VALUES (988, 163, 1630, '2023-08-04 21:17:07', '2023-08-04 21:17:07');
INSERT INTO `vendor_users` VALUES (989, 98, 1566, '2023-08-05 04:18:05', '2023-08-05 04:18:05');
INSERT INTO `vendor_users` VALUES (990, 232, 1569, '2023-08-05 09:37:36', '2023-08-05 09:37:36');
INSERT INTO `vendor_users` VALUES (991, 232, 1570, '2023-08-05 10:04:11', '2023-08-05 10:04:11');
INSERT INTO `vendor_users` VALUES (992, 232, 1803, '2023-08-05 10:17:50', '2023-08-05 10:17:50');
INSERT INTO `vendor_users` VALUES (993, 232, 1804, '2023-08-05 10:17:56', '2023-08-05 10:17:56');
INSERT INTO `vendor_users` VALUES (995, 78, 1998, '2023-08-06 19:21:42', '2023-08-06 19:21:42');
INSERT INTO `vendor_users` VALUES (996, 233, 1955, '2023-08-06 19:34:01', '2023-08-06 19:34:01');
INSERT INTO `vendor_users` VALUES (997, 233, 1956, '2023-08-06 19:34:03', '2023-08-06 19:34:03');
INSERT INTO `vendor_users` VALUES (998, 233, 1957, '2023-08-06 19:34:09', '2023-08-06 19:34:09');
INSERT INTO `vendor_users` VALUES (999, 233, 1958, '2023-08-06 19:42:03', '2023-08-06 19:42:03');
INSERT INTO `vendor_users` VALUES (1000, 94, 2017, '2023-08-06 20:16:46', '2023-08-06 20:16:46');
INSERT INTO `vendor_users` VALUES (1001, 94, 2018, '2023-08-06 20:34:49', '2023-08-06 20:34:49');
INSERT INTO `vendor_users` VALUES (1002, 227, 1955, '2023-08-06 21:12:29', '2023-08-06 21:12:29');
INSERT INTO `vendor_users` VALUES (1003, 227, 1956, '2023-08-06 21:12:32', '2023-08-06 21:12:32');
INSERT INTO `vendor_users` VALUES (1004, 227, 1957, '2023-08-06 21:12:33', '2023-08-06 21:12:33');
INSERT INTO `vendor_users` VALUES (1005, 227, 1958, '2023-08-06 21:12:37', '2023-08-06 21:12:37');
INSERT INTO `vendor_users` VALUES (1006, 227, 1959, '2023-08-06 21:12:38', '2023-08-06 21:12:38');
INSERT INTO `vendor_users` VALUES (1007, 227, 1960, '2023-08-06 21:12:39', '2023-08-06 21:12:39');
INSERT INTO `vendor_users` VALUES (1008, 227, 1961, '2023-08-06 21:12:44', '2023-08-06 21:12:44');
INSERT INTO `vendor_users` VALUES (1009, 227, 1962, '2023-08-06 21:34:04', '2023-08-06 21:34:04');
INSERT INTO `vendor_users` VALUES (1010, 227, 1963, '2023-08-06 21:46:07', '2023-08-06 21:46:07');
INSERT INTO `vendor_users` VALUES (1011, 232, 1965, '2023-08-07 09:57:18', '2023-08-07 09:57:18');
INSERT INTO `vendor_users` VALUES (1012, 232, 1966, '2023-08-07 09:57:19', '2023-08-07 09:57:19');
INSERT INTO `vendor_users` VALUES (1013, 232, 1967, '2023-08-07 09:57:21', '2023-08-07 09:57:21');
INSERT INTO `vendor_users` VALUES (1014, 232, 1968, '2023-08-07 09:57:26', '2023-08-07 09:57:26');
INSERT INTO `vendor_users` VALUES (1015, 232, 1969, '2023-08-07 09:57:27', '2023-08-07 09:57:27');
INSERT INTO `vendor_users` VALUES (1016, 232, 1955, '2023-08-07 09:57:36', '2023-08-07 09:57:36');
INSERT INTO `vendor_users` VALUES (1017, 232, 1956, '2023-08-07 09:57:37', '2023-08-07 09:57:37');
INSERT INTO `vendor_users` VALUES (1018, 232, 1957, '2023-08-07 09:57:37', '2023-08-07 09:57:37');
INSERT INTO `vendor_users` VALUES (1019, 232, 1958, '2023-08-07 09:57:38', '2023-08-07 09:57:38');
INSERT INTO `vendor_users` VALUES (1020, 232, 1959, '2023-08-07 09:57:43', '2023-08-07 09:57:43');
INSERT INTO `vendor_users` VALUES (1021, 232, 1960, '2023-08-07 09:57:43', '2023-08-07 09:57:43');
INSERT INTO `vendor_users` VALUES (1022, 232, 1961, '2023-08-07 09:57:48', '2023-08-07 09:57:48');
INSERT INTO `vendor_users` VALUES (1023, 232, 1962, '2023-08-07 09:57:53', '2023-08-07 09:57:53');
INSERT INTO `vendor_users` VALUES (1024, 232, 1963, '2023-08-07 09:57:54', '2023-08-07 09:57:54');
INSERT INTO `vendor_users` VALUES (1025, 232, 1964, '2023-08-07 09:57:54', '2023-08-07 09:57:54');
INSERT INTO `vendor_users` VALUES (1026, 232, 1970, '2023-08-07 10:21:07', '2023-08-07 10:21:07');
INSERT INTO `vendor_users` VALUES (1027, 232, 1971, '2023-08-07 10:21:13', '2023-08-07 10:21:13');
INSERT INTO `vendor_users` VALUES (1028, 232, 1972, '2023-08-07 10:43:32', '2023-08-07 10:43:32');
INSERT INTO `vendor_users` VALUES (1029, 232, 1973, '2023-08-07 10:53:40', '2023-08-07 10:53:40');
INSERT INTO `vendor_users` VALUES (1030, 156, 1955, '2023-08-07 16:07:37', '2023-08-07 16:07:37');
INSERT INTO `vendor_users` VALUES (1031, 156, 1956, '2023-08-07 16:07:38', '2023-08-07 16:07:38');
INSERT INTO `vendor_users` VALUES (1032, 156, 1957, '2023-08-07 16:07:42', '2023-08-07 16:07:42');
INSERT INTO `vendor_users` VALUES (1033, 156, 1958, '2023-08-07 16:07:46', '2023-08-07 16:07:46');
INSERT INTO `vendor_users` VALUES (1034, 156, 1959, '2023-08-07 16:07:49', '2023-08-07 16:07:49');
INSERT INTO `vendor_users` VALUES (1035, 156, 1960, '2023-08-07 16:07:53', '2023-08-07 16:07:53');
INSERT INTO `vendor_users` VALUES (1036, 156, 1961, '2023-08-07 16:07:58', '2023-08-07 16:07:58');
INSERT INTO `vendor_users` VALUES (1037, 156, 1962, '2023-08-07 16:08:02', '2023-08-07 16:08:02');
INSERT INTO `vendor_users` VALUES (1038, 156, 1963, '2023-08-07 16:08:07', '2023-08-07 16:08:07');
INSERT INTO `vendor_users` VALUES (1039, 156, 1964, '2023-08-07 16:08:12', '2023-08-07 16:08:12');
INSERT INTO `vendor_users` VALUES (1040, 156, 1965, '2023-08-07 16:08:18', '2023-08-07 16:08:18');
INSERT INTO `vendor_users` VALUES (1041, 156, 1966, '2023-08-07 16:08:23', '2023-08-07 16:08:23');
INSERT INTO `vendor_users` VALUES (1042, 78, 1999, '2023-08-07 16:35:33', '2023-08-07 16:35:33');
INSERT INTO `vendor_users` VALUES (1043, 156, 1967, '2023-08-07 19:30:59', '2023-08-07 19:30:59');
INSERT INTO `vendor_users` VALUES (1044, 78, 2000, '2023-08-07 20:03:39', '2023-08-07 20:03:39');
INSERT INTO `vendor_users` VALUES (1045, 156, 1968, '2023-08-07 20:12:24', '2023-08-07 20:12:24');
INSERT INTO `vendor_users` VALUES (1046, 196, 1955, '2023-08-07 21:26:32', '2023-08-07 21:26:32');
INSERT INTO `vendor_users` VALUES (1047, 196, 1956, '2023-08-07 21:26:35', '2023-08-07 21:26:35');
INSERT INTO `vendor_users` VALUES (1048, 196, 1957, '2023-08-07 21:26:38', '2023-08-07 21:26:38');
INSERT INTO `vendor_users` VALUES (1049, 247, 1955, '2023-08-08 09:15:39', '2023-08-08 09:15:39');
INSERT INTO `vendor_users` VALUES (1050, 247, 1956, '2023-08-08 10:26:41', '2023-08-08 10:26:41');
INSERT INTO `vendor_users` VALUES (1051, 247, 1957, '2023-08-08 10:26:42', '2023-08-08 10:26:42');
INSERT INTO `vendor_users` VALUES (1052, 232, 1974, '2023-08-08 13:49:08', '2023-08-08 13:49:08');
INSERT INTO `vendor_users` VALUES (1053, 232, 1975, '2023-08-08 14:04:38', '2023-08-08 14:04:38');
INSERT INTO `vendor_users` VALUES (1054, 232, 1976, '2023-08-08 14:04:43', '2023-08-08 14:04:43');
INSERT INTO `vendor_users` VALUES (1055, 163, 2037, '2023-08-08 16:25:14', '2023-08-08 16:25:14');
INSERT INTO `vendor_users` VALUES (1056, 232, 2215, '2023-08-09 13:59:37', '2023-08-09 13:59:37');
INSERT INTO `vendor_users` VALUES (1057, 232, 2216, '2023-08-09 13:59:42', '2023-08-09 13:59:42');
INSERT INTO `vendor_users` VALUES (1058, 232, 2205, '2023-08-09 13:59:52', '2023-08-09 13:59:52');
INSERT INTO `vendor_users` VALUES (1059, 232, 2206, '2023-08-09 13:59:56', '2023-08-09 13:59:56');
INSERT INTO `vendor_users` VALUES (1060, 232, 2207, '2023-08-09 14:00:01', '2023-08-09 14:00:01');
INSERT INTO `vendor_users` VALUES (1061, 232, 2208, '2023-08-09 14:00:06', '2023-08-09 14:00:06');
INSERT INTO `vendor_users` VALUES (1062, 232, 2209, '2023-08-09 14:00:07', '2023-08-09 14:00:07');
INSERT INTO `vendor_users` VALUES (1063, 232, 2210, '2023-08-09 14:00:12', '2023-08-09 14:00:12');
INSERT INTO `vendor_users` VALUES (1064, 232, 2211, '2023-08-09 14:00:21', '2023-08-09 14:00:21');
INSERT INTO `vendor_users` VALUES (1065, 232, 2212, '2023-08-09 14:00:26', '2023-08-09 14:00:26');
INSERT INTO `vendor_users` VALUES (1066, 232, 2213, '2023-08-09 14:00:31', '2023-08-09 14:00:31');
INSERT INTO `vendor_users` VALUES (1067, 232, 2214, '2023-08-09 14:00:38', '2023-08-09 14:00:38');
INSERT INTO `vendor_users` VALUES (1068, 232, 2217, '2023-08-09 14:19:33', '2023-08-09 14:19:33');
INSERT INTO `vendor_users` VALUES (1069, 247, 2195, '2023-08-10 07:38:01', '2023-08-10 07:38:01');
INSERT INTO `vendor_users` VALUES (1070, 247, 2196, '2023-08-10 07:38:05', '2023-08-10 07:38:05');
INSERT INTO `vendor_users` VALUES (1071, 247, 2197, '2023-08-10 07:38:06', '2023-08-10 07:38:06');
INSERT INTO `vendor_users` VALUES (1072, 247, 2198, '2023-08-10 07:38:09', '2023-08-10 07:38:09');
INSERT INTO `vendor_users` VALUES (1073, 247, 2199, '2023-08-10 07:38:12', '2023-08-10 07:38:12');
INSERT INTO `vendor_users` VALUES (1074, 247, 2200, '2023-08-10 07:38:16', '2023-08-10 07:38:16');
INSERT INTO `vendor_users` VALUES (1075, 247, 2201, '2023-08-10 07:47:54', '2023-08-10 07:47:54');
INSERT INTO `vendor_users` VALUES (1076, 227, 2204, '2023-08-10 08:18:07', '2023-08-10 08:18:07');
INSERT INTO `vendor_users` VALUES (1077, 94, 2261, '2023-08-10 08:20:08', '2023-08-10 08:20:08');
INSERT INTO `vendor_users` VALUES (1078, 247, 2202, '2023-08-10 08:20:10', '2023-08-10 08:20:10');
INSERT INTO `vendor_users` VALUES (1079, 94, 2262, '2023-08-10 08:28:02', '2023-08-10 08:28:02');
INSERT INTO `vendor_users` VALUES (1080, 78, 2240, '2023-08-10 08:58:37', '2023-08-10 08:58:37');
INSERT INTO `vendor_users` VALUES (1081, 94, 2263, '2023-08-10 09:11:54', '2023-08-10 09:11:54');
INSERT INTO `vendor_users` VALUES (1082, 227, 2205, '2023-08-10 14:53:54', '2023-08-10 14:53:54');
INSERT INTO `vendor_users` VALUES (1083, 227, 2206, '2023-08-10 15:22:11', '2023-08-10 15:22:11');
INSERT INTO `vendor_users` VALUES (1084, 232, 2218, '2023-08-10 15:32:42', '2023-08-10 15:32:42');
INSERT INTO `vendor_users` VALUES (1085, 232, 2219, '2023-08-10 15:32:46', '2023-08-10 15:32:46');
INSERT INTO `vendor_users` VALUES (1086, 232, 2220, '2023-08-10 15:32:54', '2023-08-10 15:32:54');
INSERT INTO `vendor_users` VALUES (1087, 232, 2221, '2023-08-10 15:42:02', '2023-08-10 15:42:02');
INSERT INTO `vendor_users` VALUES (1088, 232, 2222, '2023-08-10 15:59:19', '2023-08-10 15:59:19');
INSERT INTO `vendor_users` VALUES (1089, 247, 2203, '2023-08-10 18:00:16', '2023-08-10 18:00:16');
INSERT INTO `vendor_users` VALUES (1090, 253, 2195, '2023-08-10 18:55:04', '2023-08-10 18:55:04');
INSERT INTO `vendor_users` VALUES (1093, 253, 2284, '2023-08-10 19:34:44', '2023-08-10 19:34:44');
INSERT INTO `vendor_users` VALUES (1094, 253, 2279, '2023-08-10 19:35:07', '2023-08-10 19:35:07');
INSERT INTO `vendor_users` VALUES (1095, 94, 2264, '2023-08-10 19:54:53', '2023-08-10 19:54:53');
INSERT INTO `vendor_users` VALUES (1096, 253, 2198, '2023-08-10 20:07:21', '2023-08-10 20:07:21');
INSERT INTO `vendor_users` VALUES (1097, 253, 2196, '2023-08-10 20:23:14', '2023-08-10 20:23:14');
INSERT INTO `vendor_users` VALUES (1098, 94, 2267, '2023-08-11 03:35:40', '2023-08-11 03:35:40');
INSERT INTO `vendor_users` VALUES (1099, 94, 2268, '2023-08-11 03:57:50', '2023-08-11 03:57:50');
INSERT INTO `vendor_users` VALUES (1100, 55, 2232, '2023-08-11 09:04:57', '2023-08-11 09:04:57');
INSERT INTO `vendor_users` VALUES (1101, 55, 2233, '2023-08-11 09:06:43', '2023-08-11 09:06:43');
INSERT INTO `vendor_users` VALUES (1102, 55, 2234, '2023-08-11 09:07:28', '2023-08-11 09:07:28');
INSERT INTO `vendor_users` VALUES (1103, 227, 2207, '2023-08-11 10:36:25', '2023-08-11 10:36:25');
INSERT INTO `vendor_users` VALUES (1104, 227, 2208, '2023-08-11 10:54:33', '2023-08-11 10:54:33');
INSERT INTO `vendor_users` VALUES (1105, 227, 2209, '2023-08-11 11:22:04', '2023-08-11 11:22:04');
INSERT INTO `vendor_users` VALUES (1106, 232, 2225, '2023-08-11 17:41:41', '2023-08-11 17:41:41');
INSERT INTO `vendor_users` VALUES (1107, 232, 2223, '2023-08-11 17:47:47', '2023-08-11 17:47:47');
INSERT INTO `vendor_users` VALUES (1108, 232, 2224, '2023-08-11 17:51:43', '2023-08-11 17:51:43');
INSERT INTO `vendor_users` VALUES (1110, 247, 2204, '2023-08-12 08:01:28', '2023-08-12 08:01:28');
INSERT INTO `vendor_users` VALUES (1111, 247, 2205, '2023-08-12 08:01:32', '2023-08-12 08:01:32');
INSERT INTO `vendor_users` VALUES (1112, 247, 2206, '2023-08-12 08:01:33', '2023-08-12 08:01:33');
INSERT INTO `vendor_users` VALUES (1113, 247, 2207, '2023-08-12 08:36:41', '2023-08-12 08:36:41');
INSERT INTO `vendor_users` VALUES (1114, 78, 2243, '2023-08-12 15:47:00', '2023-08-12 15:47:00');
INSERT INTO `vendor_users` VALUES (1115, 247, 2208, '2023-08-12 18:01:31', '2023-08-12 18:01:31');
INSERT INTO `vendor_users` VALUES (1116, 247, 2209, '2023-08-12 18:03:01', '2023-08-12 18:03:01');
INSERT INTO `vendor_users` VALUES (1117, 232, 2228, '2023-08-13 15:17:04', '2023-08-13 15:17:04');
INSERT INTO `vendor_users` VALUES (1118, 232, 2229, '2023-08-13 15:17:09', '2023-08-13 15:17:09');
INSERT INTO `vendor_users` VALUES (1119, 232, 2230, '2023-08-13 15:27:12', '2023-08-13 15:27:12');
INSERT INTO `vendor_users` VALUES (1120, 232, 2231, '2023-08-13 15:39:14', '2023-08-13 15:39:14');
INSERT INTO `vendor_users` VALUES (1121, 232, 2226, '2023-08-13 15:43:46', '2023-08-13 15:43:46');
INSERT INTO `vendor_users` VALUES (1122, 227, 2210, '2023-08-13 20:23:29', '2023-08-13 20:23:29');
INSERT INTO `vendor_users` VALUES (1123, 227, 2211, '2023-08-13 21:07:56', '2023-08-13 21:07:56');
INSERT INTO `vendor_users` VALUES (1124, 94, 2269, '2023-08-14 04:10:59', '2023-08-14 04:10:59');
INSERT INTO `vendor_users` VALUES (1127, 262, 2558, '2023-08-14 22:11:10', '2023-08-14 22:11:10');
INSERT INTO `vendor_users` VALUES (1128, 262, 2559, '2023-08-15 08:00:41', '2023-08-15 08:00:41');
INSERT INTO `vendor_users` VALUES (1129, 262, 2560, '2023-08-15 08:41:31', '2023-08-15 08:41:31');
INSERT INTO `vendor_users` VALUES (1130, 262, 2561, '2023-08-15 09:11:28', '2023-08-15 09:11:28');
INSERT INTO `vendor_users` VALUES (1131, 247, 2558, '2023-08-15 18:47:36', '2023-08-15 18:47:36');
INSERT INTO `vendor_users` VALUES (1132, 247, 2578, '2023-08-16 08:32:41', '2023-08-16 08:32:41');
INSERT INTO `vendor_users` VALUES (1133, 195, 2558, '2023-08-16 10:58:47', '2023-08-16 10:58:47');
INSERT INTO `vendor_users` VALUES (1134, 195, 2559, '2023-08-16 10:58:55', '2023-08-16 10:58:55');
INSERT INTO `vendor_users` VALUES (1136, 195, 2560, '2023-08-16 10:59:02', '2023-08-16 10:59:02');
INSERT INTO `vendor_users` VALUES (1138, 195, 2561, '2023-08-16 10:59:25', '2023-08-16 10:59:25');
INSERT INTO `vendor_users` VALUES (1140, 195, 2562, '2023-08-16 10:59:29', '2023-08-16 10:59:29');
INSERT INTO `vendor_users` VALUES (1141, 195, 2563, '2023-08-16 10:59:33', '2023-08-16 10:59:33');
INSERT INTO `vendor_users` VALUES (1142, 195, 2564, '2023-08-16 10:59:36', '2023-08-16 10:59:36');
INSERT INTO `vendor_users` VALUES (1143, 195, 2565, '2023-08-16 10:59:39', '2023-08-16 10:59:39');
INSERT INTO `vendor_users` VALUES (1144, 195, 2566, '2023-08-16 10:59:43', '2023-08-16 10:59:43');
INSERT INTO `vendor_users` VALUES (1147, 195, 2568, '2023-08-16 10:59:55', '2023-08-16 10:59:55');
INSERT INTO `vendor_users` VALUES (1150, 195, 2569, '2023-08-16 11:00:03', '2023-08-16 11:00:03');
INSERT INTO `vendor_users` VALUES (1151, 195, 2570, '2023-08-16 11:00:07', '2023-08-16 11:00:07');
INSERT INTO `vendor_users` VALUES (1152, 195, 2571, '2023-08-16 11:00:11', '2023-08-16 11:00:11');
INSERT INTO `vendor_users` VALUES (1155, 195, 2572, '2023-08-16 11:00:16', '2023-08-16 11:00:16');
INSERT INTO `vendor_users` VALUES (1157, 195, 2573, '2023-08-16 11:00:21', '2023-08-16 11:00:21');
INSERT INTO `vendor_users` VALUES (1158, 227, 2577, '2023-08-16 15:41:26', '2023-08-16 15:41:26');
INSERT INTO `vendor_users` VALUES (1159, 195, 2567, '2023-08-16 19:13:14', '2023-08-16 19:13:14');
INSERT INTO `vendor_users` VALUES (1160, 195, 2574, '2023-08-16 19:31:29', '2023-08-16 19:31:29');
INSERT INTO `vendor_users` VALUES (1162, 232, 2614, '2023-08-17 12:37:54', '2023-08-17 12:37:54');
INSERT INTO `vendor_users` VALUES (1163, 232, 2596, '2023-08-17 12:56:38', '2023-08-17 12:56:38');
INSERT INTO `vendor_users` VALUES (1165, 232, 2597, '2023-08-17 13:12:17', '2023-08-17 13:12:17');
INSERT INTO `vendor_users` VALUES (1167, 195, 2575, '2023-08-17 15:29:02', '2023-08-17 15:29:02');
INSERT INTO `vendor_users` VALUES (1169, 195, 2576, '2023-08-17 15:29:10', '2023-08-17 15:29:10');
INSERT INTO `vendor_users` VALUES (1171, 232, 2598, '2023-08-18 13:24:12', '2023-08-18 13:24:12');
INSERT INTO `vendor_users` VALUES (1172, 232, 2599, '2023-08-18 13:33:50', '2023-08-18 13:33:50');
INSERT INTO `vendor_users` VALUES (1173, 232, 2600, '2023-08-18 13:48:17', '2023-08-18 13:48:17');
INSERT INTO `vendor_users` VALUES (1175, 195, 2577, '2023-08-19 08:00:48', '2023-08-19 08:00:48');
INSERT INTO `vendor_users` VALUES (1176, 227, 2578, '2023-08-19 12:00:50', '2023-08-19 12:00:50');
INSERT INTO `vendor_users` VALUES (1177, 195, 2578, '2023-08-19 12:04:12', '2023-08-19 12:04:12');
INSERT INTO `vendor_users` VALUES (1178, 247, 2559, '2023-08-19 19:37:35', '2023-08-19 19:37:35');
INSERT INTO `vendor_users` VALUES (1179, 247, 2560, '2023-08-19 19:37:36', '2023-08-19 19:37:36');
INSERT INTO `vendor_users` VALUES (1180, 247, 2561, '2023-08-19 19:37:36', '2023-08-19 19:37:36');
INSERT INTO `vendor_users` VALUES (1181, 247, 2567, '2023-08-19 19:37:49', '2023-08-19 19:37:49');
INSERT INTO `vendor_users` VALUES (1182, 232, 2601, '2023-08-19 20:35:19', '2023-08-19 20:35:19');
INSERT INTO `vendor_users` VALUES (1183, 232, 2602, '2023-08-19 20:41:03', '2023-08-19 20:41:03');
INSERT INTO `vendor_users` VALUES (1184, 232, 2603, '2023-08-19 20:41:11', '2023-08-19 20:41:11');
INSERT INTO `vendor_users` VALUES (1185, 232, 2604, '2023-08-21 13:07:37', '2023-08-21 13:07:37');
INSERT INTO `vendor_users` VALUES (1186, 232, 2605, '2023-08-21 13:19:23', '2023-08-21 13:19:23');
INSERT INTO `vendor_users` VALUES (1187, 232, 2606, '2023-08-21 13:19:28', '2023-08-21 13:19:28');
INSERT INTO `vendor_users` VALUES (1188, 195, 2579, '2023-08-21 13:21:09', '2023-08-21 13:21:09');
INSERT INTO `vendor_users` VALUES (1190, 94, 2630, '2023-08-21 17:15:32', '2023-08-21 17:15:32');
INSERT INTO `vendor_users` VALUES (1191, 247, 2566, '2023-08-22 12:03:40', '2023-08-22 12:03:40');
INSERT INTO `vendor_users` VALUES (1192, 247, 2562, '2023-08-22 12:03:43', '2023-08-22 12:03:43');
INSERT INTO `vendor_users` VALUES (1193, 247, 2563, '2023-08-22 12:03:45', '2023-08-22 12:03:45');
INSERT INTO `vendor_users` VALUES (1194, 247, 2564, '2023-08-22 12:03:52', '2023-08-22 12:03:52');
INSERT INTO `vendor_users` VALUES (1195, 247, 2565, '2023-08-22 12:03:59', '2023-08-22 12:03:59');
INSERT INTO `vendor_users` VALUES (1196, 247, 2568, '2023-08-22 12:04:08', '2023-08-22 12:04:08');
INSERT INTO `vendor_users` VALUES (1197, 247, 2569, '2023-08-22 12:04:10', '2023-08-22 12:04:10');
INSERT INTO `vendor_users` VALUES (1198, 247, 2570, '2023-08-22 12:04:12', '2023-08-22 12:04:12');
INSERT INTO `vendor_users` VALUES (1199, 247, 2571, '2023-08-22 12:04:14', '2023-08-22 12:04:14');
INSERT INTO `vendor_users` VALUES (1200, 247, 2572, '2023-08-22 12:04:17', '2023-08-22 12:04:17');
INSERT INTO `vendor_users` VALUES (1201, 247, 2573, '2023-08-22 12:04:19', '2023-08-22 12:04:19');
INSERT INTO `vendor_users` VALUES (1202, 247, 2574, '2023-08-22 12:04:21', '2023-08-22 12:04:21');
INSERT INTO `vendor_users` VALUES (1203, 247, 2576, '2023-08-22 12:04:32', '2023-08-22 12:04:32');
INSERT INTO `vendor_users` VALUES (1205, 247, 2577, '2023-08-22 12:04:44', '2023-08-22 12:04:44');
INSERT INTO `vendor_users` VALUES (1206, 247, 2575, '2023-08-22 12:04:49', '2023-08-22 12:04:49');
INSERT INTO `vendor_users` VALUES (1207, 247, 2579, '2023-08-22 12:04:58', '2023-08-22 12:04:58');
INSERT INTO `vendor_users` VALUES (1208, 247, 2580, '2023-08-22 12:05:01', '2023-08-22 12:05:01');
INSERT INTO `vendor_users` VALUES (1209, 247, 2581, '2023-08-22 12:05:03', '2023-08-22 12:05:03');
INSERT INTO `vendor_users` VALUES (1210, 247, 2582, '2023-08-22 12:05:04', '2023-08-22 12:05:04');
INSERT INTO `vendor_users` VALUES (1211, 247, 2583, '2023-08-22 12:05:08', '2023-08-22 12:05:08');
INSERT INTO `vendor_users` VALUES (1212, 247, 2584, '2023-08-22 12:05:10', '2023-08-22 12:05:10');
INSERT INTO `vendor_users` VALUES (1213, 247, 2586, '2023-08-22 12:05:14', '2023-08-22 12:05:14');
INSERT INTO `vendor_users` VALUES (1214, 247, 2587, '2023-08-22 12:05:19', '2023-08-22 12:05:19');
INSERT INTO `vendor_users` VALUES (1215, 247, 2585, '2023-08-22 12:05:24', '2023-08-22 12:05:24');
INSERT INTO `vendor_users` VALUES (1216, 247, 2588, '2023-08-22 12:05:42', '2023-08-22 12:05:42');
INSERT INTO `vendor_users` VALUES (1217, 247, 2589, '2023-08-22 12:05:45', '2023-08-22 12:05:45');
INSERT INTO `vendor_users` VALUES (1218, 247, 2590, '2023-08-22 12:05:47', '2023-08-22 12:05:47');
INSERT INTO `vendor_users` VALUES (1219, 247, 2591, '2023-08-22 12:05:49', '2023-08-22 12:05:49');
INSERT INTO `vendor_users` VALUES (1220, 247, 2592, '2023-08-22 12:05:51', '2023-08-22 12:05:51');
INSERT INTO `vendor_users` VALUES (1221, 247, 2593, '2023-08-22 12:05:54', '2023-08-22 12:05:54');
INSERT INTO `vendor_users` VALUES (1222, 247, 2594, '2023-08-22 12:05:56', '2023-08-22 12:05:56');
INSERT INTO `vendor_users` VALUES (1223, 247, 2595, '2023-08-22 12:06:55', '2023-08-22 12:06:55');
INSERT INTO `vendor_users` VALUES (1224, 215, 2577, '2023-08-22 13:26:29', '2023-08-22 13:26:29');
INSERT INTO `vendor_users` VALUES (1225, 163, 2662, '2023-08-22 15:24:36', '2023-08-22 15:24:36');
INSERT INTO `vendor_users` VALUES (1226, 195, 2580, '2023-08-22 18:56:42', '2023-08-22 18:56:42');
INSERT INTO `vendor_users` VALUES (1229, 247, 2614, '2023-08-23 08:38:11', '2023-08-23 08:38:11');
INSERT INTO `vendor_users` VALUES (1230, 247, 2596, '2023-08-23 09:59:03', '2023-08-23 09:59:03');
INSERT INTO `vendor_users` VALUES (1231, 232, 2607, '2023-08-23 13:17:10', '2023-08-23 13:17:10');
INSERT INTO `vendor_users` VALUES (1232, 232, 2610, '2023-08-23 13:29:21', '2023-08-23 13:29:21');
INSERT INTO `vendor_users` VALUES (1233, 232, 2611, '2023-08-23 13:29:24', '2023-08-23 13:29:24');
INSERT INTO `vendor_users` VALUES (1234, 232, 2608, '2023-08-23 13:30:03', '2023-08-23 13:30:03');
INSERT INTO `vendor_users` VALUES (1235, 232, 2609, '2023-08-23 13:46:10', '2023-08-23 13:46:10');
INSERT INTO `vendor_users` VALUES (1236, 247, 2597, '2023-08-23 17:58:47', '2023-08-23 17:58:47');
INSERT INTO `vendor_users` VALUES (1237, 163, 2667, '2023-08-23 18:05:44', '2023-08-23 18:05:44');
INSERT INTO `vendor_users` VALUES (1238, 195, 2581, '2023-08-24 18:55:20', '2023-08-24 18:55:20');
INSERT INTO `vendor_users` VALUES (1239, 195, 2582, '2023-08-24 18:55:25', '2023-08-24 18:55:25');
INSERT INTO `vendor_users` VALUES (1240, 247, 2598, '2023-08-24 20:05:55', '2023-08-24 20:05:55');
INSERT INTO `vendor_users` VALUES (1241, 247, 2599, '2023-08-24 20:35:40', '2023-08-24 20:35:40');
INSERT INTO `vendor_users` VALUES (1242, 269, 2558, '2023-08-25 08:16:42', '2023-08-25 08:16:42');
INSERT INTO `vendor_users` VALUES (1243, 269, 2559, '2023-08-25 08:40:18', '2023-08-25 08:40:18');
INSERT INTO `vendor_users` VALUES (1244, 269, 2560, '2023-08-25 08:46:46', '2023-08-25 08:46:46');
INSERT INTO `vendor_users` VALUES (1245, 227, 2580, '2023-08-25 11:52:32', '2023-08-25 11:52:32');
INSERT INTO `vendor_users` VALUES (1246, 247, 2600, '2023-08-25 15:16:41', '2023-08-25 15:16:41');
INSERT INTO `vendor_users` VALUES (1247, 232, 2612, '2023-08-25 15:40:16', '2023-08-25 15:40:16');
INSERT INTO `vendor_users` VALUES (1248, 247, 2601, '2023-08-25 16:38:36', '2023-08-25 16:38:36');
INSERT INTO `vendor_users` VALUES (1249, 247, 2602, '2023-08-25 16:54:45', '2023-08-25 16:54:45');
INSERT INTO `vendor_users` VALUES (1250, 269, 2561, '2023-08-26 08:45:09', '2023-08-26 08:45:09');
INSERT INTO `vendor_users` VALUES (1251, 269, 2562, '2023-08-26 08:55:13', '2023-08-26 08:55:13');
INSERT INTO `vendor_users` VALUES (1252, 269, 2563, '2023-08-26 08:55:35', '2023-08-26 08:55:35');
INSERT INTO `vendor_users` VALUES (1253, 247, 2603, '2023-08-26 19:20:30', '2023-08-26 19:20:30');
INSERT INTO `vendor_users` VALUES (1254, 247, 2604, '2023-08-26 19:20:37', '2023-08-26 19:20:37');
INSERT INTO `vendor_users` VALUES (1255, 247, 2605, '2023-08-26 19:32:38', '2023-08-26 19:32:38');
INSERT INTO `vendor_users` VALUES (1256, 247, 2612, '2023-08-26 20:28:40', '2023-08-26 20:28:40');
INSERT INTO `vendor_users` VALUES (1257, 247, 2606, '2023-08-26 20:35:26', '2023-08-26 20:35:26');
INSERT INTO `vendor_users` VALUES (1258, 269, 2564, '2023-08-27 14:37:27', '2023-08-27 14:37:27');
INSERT INTO `vendor_users` VALUES (1259, 247, 2870, '2023-08-27 18:23:03', '2023-08-27 18:23:03');
INSERT INTO `vendor_users` VALUES (1260, 269, 2957, '2023-08-27 18:48:39', '2023-08-27 18:48:39');
INSERT INTO `vendor_users` VALUES (1261, 269, 2958, '2023-08-27 18:48:39', '2023-08-27 18:48:39');
INSERT INTO `vendor_users` VALUES (1262, 269, 2959, '2023-08-27 18:48:40', '2023-08-27 18:48:40');
INSERT INTO `vendor_users` VALUES (1263, 269, 2960, '2023-08-27 18:48:40', '2023-08-27 18:48:40');
INSERT INTO `vendor_users` VALUES (1264, 269, 2961, '2023-08-27 18:48:41', '2023-08-27 18:48:41');
INSERT INTO `vendor_users` VALUES (1265, 269, 2962, '2023-08-27 18:48:41', '2023-08-27 18:48:41');
INSERT INTO `vendor_users` VALUES (1266, 269, 2963, '2023-08-27 18:48:47', '2023-08-27 18:48:47');
INSERT INTO `vendor_users` VALUES (1267, 269, 2964, '2023-08-27 18:48:51', '2023-08-27 18:48:51');
INSERT INTO `vendor_users` VALUES (1268, 247, 2871, '2023-08-27 19:03:25', '2023-08-27 19:03:25');
INSERT INTO `vendor_users` VALUES (1269, 247, 3006, '2023-08-27 19:09:59', '2023-08-27 19:09:59');
INSERT INTO `vendor_users` VALUES (1270, 247, 3007, '2023-08-27 19:10:02', '2023-08-27 19:10:02');
INSERT INTO `vendor_users` VALUES (1271, 247, 3008, '2023-08-27 19:10:06', '2023-08-27 19:10:06');
INSERT INTO `vendor_users` VALUES (1272, 269, 2965, '2023-08-27 19:17:29', '2023-08-27 19:17:29');
INSERT INTO `vendor_users` VALUES (1273, 247, 3009, '2023-08-27 19:34:30', '2023-08-27 19:34:30');
INSERT INTO `vendor_users` VALUES (1274, 225, 2957, '2023-08-27 23:09:54', '2023-08-27 23:09:54');
INSERT INTO `vendor_users` VALUES (1275, 262, 2959, '2023-08-28 11:45:59', '2023-08-28 11:45:59');
INSERT INTO `vendor_users` VALUES (1276, 262, 2960, '2023-08-28 11:46:00', '2023-08-28 11:46:00');
INSERT INTO `vendor_users` VALUES (1277, 262, 2961, '2023-08-28 11:46:00', '2023-08-28 11:46:00');
INSERT INTO `vendor_users` VALUES (1278, 262, 2962, '2023-08-28 11:46:01', '2023-08-28 11:46:01');
INSERT INTO `vendor_users` VALUES (1279, 262, 2963, '2023-08-28 11:46:02', '2023-08-28 11:46:02');
INSERT INTO `vendor_users` VALUES (1280, 262, 2957, '2023-08-28 11:46:06', '2023-08-28 11:46:06');
INSERT INTO `vendor_users` VALUES (1281, 262, 2958, '2023-08-28 11:46:07', '2023-08-28 11:46:07');
INSERT INTO `vendor_users` VALUES (1282, 275, 417, '2023-08-28 13:55:10', '2023-08-28 13:55:10');
INSERT INTO `vendor_users` VALUES (1283, 269, 2966, '2023-08-28 14:48:57', '2023-08-28 14:48:57');
INSERT INTO `vendor_users` VALUES (1284, 269, 2967, '2023-08-28 15:32:39', '2023-08-28 15:32:39');
INSERT INTO `vendor_users` VALUES (1285, 269, 2968, '2023-08-28 15:32:43', '2023-08-28 15:32:43');
INSERT INTO `vendor_users` VALUES (1286, 232, 2996, '2023-08-28 15:58:19', '2023-08-28 15:58:19');
INSERT INTO `vendor_users` VALUES (1287, 232, 2998, '2023-08-28 16:07:16', '2023-08-28 16:07:16');
INSERT INTO `vendor_users` VALUES (1288, 269, 2969, '2023-08-29 15:32:12', '2023-08-29 15:32:12');
INSERT INTO `vendor_users` VALUES (1289, 269, 2970, '2023-08-29 15:32:15', '2023-08-29 15:32:15');
INSERT INTO `vendor_users` VALUES (1290, 264, 2957, '2023-08-29 19:52:44', '2023-08-29 19:52:44');
INSERT INTO `vendor_users` VALUES (1291, 264, 2958, '2023-08-29 19:52:45', '2023-08-29 19:52:45');
INSERT INTO `vendor_users` VALUES (1293, 278, 2957, '2023-08-30 13:33:16', '2023-08-30 13:33:16');
INSERT INTO `vendor_users` VALUES (1294, 278, 2958, '2023-08-30 13:33:19', '2023-08-30 13:33:19');
INSERT INTO `vendor_users` VALUES (1295, 278, 2959, '2023-08-30 13:33:21', '2023-08-30 13:33:21');
INSERT INTO `vendor_users` VALUES (1296, 195, 2957, '2023-08-30 16:30:11', '2023-08-30 16:30:11');
INSERT INTO `vendor_users` VALUES (1297, 195, 2958, '2023-08-30 16:30:15', '2023-08-30 16:30:15');
INSERT INTO `vendor_users` VALUES (1298, 195, 2959, '2023-08-30 16:30:17', '2023-08-30 16:30:17');
INSERT INTO `vendor_users` VALUES (1299, 195, 2960, '2023-08-30 16:30:19', '2023-08-30 16:30:19');
INSERT INTO `vendor_users` VALUES (1300, 195, 2961, '2023-08-30 16:30:22', '2023-08-30 16:30:22');
INSERT INTO `vendor_users` VALUES (1301, 195, 2962, '2023-08-30 16:30:24', '2023-08-30 16:30:24');
INSERT INTO `vendor_users` VALUES (1302, 195, 2963, '2023-08-30 16:30:28', '2023-08-30 16:30:28');
INSERT INTO `vendor_users` VALUES (1303, 195, 2964, '2023-08-30 16:30:31', '2023-08-30 16:30:31');
INSERT INTO `vendor_users` VALUES (1304, 195, 2965, '2023-08-30 16:30:34', '2023-08-30 16:30:34');
INSERT INTO `vendor_users` VALUES (1305, 195, 2966, '2023-08-30 16:30:38', '2023-08-30 16:30:38');
INSERT INTO `vendor_users` VALUES (1306, 195, 2967, '2023-08-30 16:30:44', '2023-08-30 16:30:44');
INSERT INTO `vendor_users` VALUES (1307, 195, 2968, '2023-08-30 16:30:46', '2023-08-30 16:30:46');
INSERT INTO `vendor_users` VALUES (1308, 195, 2969, '2023-08-30 16:30:49', '2023-08-30 16:30:49');
INSERT INTO `vendor_users` VALUES (1309, 195, 2970, '2023-08-30 16:30:53', '2023-08-30 16:30:53');
INSERT INTO `vendor_users` VALUES (1310, 195, 2971, '2023-08-30 16:30:55', '2023-08-30 16:30:55');
INSERT INTO `vendor_users` VALUES (1311, 195, 2972, '2023-08-30 16:30:57', '2023-08-30 16:30:57');
INSERT INTO `vendor_users` VALUES (1312, 195, 2973, '2023-08-30 16:31:01', '2023-08-30 16:31:01');
INSERT INTO `vendor_users` VALUES (1313, 195, 2974, '2023-08-30 16:31:05', '2023-08-30 16:31:05');
INSERT INTO `vendor_users` VALUES (1314, 195, 2975, '2023-08-30 16:31:08', '2023-08-30 16:31:08');
INSERT INTO `vendor_users` VALUES (1315, 195, 2976, '2023-08-30 16:31:11', '2023-08-30 16:31:11');
INSERT INTO `vendor_users` VALUES (1316, 195, 2977, '2023-08-30 16:31:17', '2023-08-30 16:31:17');
INSERT INTO `vendor_users` VALUES (1317, 195, 2978, '2023-08-30 16:31:19', '2023-08-30 16:31:19');
INSERT INTO `vendor_users` VALUES (1318, 195, 2979, '2023-08-30 16:31:21', '2023-08-30 16:31:21');
INSERT INTO `vendor_users` VALUES (1319, 195, 2980, '2023-08-30 16:31:23', '2023-08-30 16:31:23');
INSERT INTO `vendor_users` VALUES (1320, 195, 2981, '2023-08-30 16:31:26', '2023-08-30 16:31:26');
INSERT INTO `vendor_users` VALUES (1321, 195, 2982, '2023-08-30 17:02:03', '2023-08-30 17:02:03');
INSERT INTO `vendor_users` VALUES (1322, 195, 2983, '2023-08-30 17:02:04', '2023-08-30 17:02:04');
INSERT INTO `vendor_users` VALUES (1323, 195, 2984, '2023-08-30 17:02:08', '2023-08-30 17:02:08');
INSERT INTO `vendor_users` VALUES (1324, 269, 2971, '2023-08-30 19:53:53', '2023-08-30 19:53:53');
INSERT INTO `vendor_users` VALUES (1325, 269, 2972, '2023-08-30 20:22:52', '2023-08-30 20:22:52');
INSERT INTO `vendor_users` VALUES (1326, 269, 2973, '2023-08-30 20:22:54', '2023-08-30 20:22:54');
INSERT INTO `vendor_users` VALUES (1327, 269, 2974, '2023-08-30 20:22:56', '2023-08-30 20:22:56');
INSERT INTO `vendor_users` VALUES (1328, 278, 2960, '2023-08-31 13:36:46', '2023-08-31 13:36:46');
INSERT INTO `vendor_users` VALUES (1329, 278, 2961, '2023-08-31 13:36:50', '2023-08-31 13:36:50');
INSERT INTO `vendor_users` VALUES (1330, 278, 2962, '2023-08-31 13:36:55', '2023-08-31 13:36:55');
INSERT INTO `vendor_users` VALUES (1331, 94, 3027, '2023-08-31 21:46:03', '2023-08-31 21:46:03');
INSERT INTO `vendor_users` VALUES (1332, 94, 3031, '2023-08-31 21:46:22', '2023-08-31 21:46:22');
INSERT INTO `vendor_users` VALUES (1333, 94, 3032, '2023-08-31 21:50:43', '2023-08-31 21:50:43');
INSERT INTO `vendor_users` VALUES (1334, 94, 3039, '2023-09-01 15:25:23', '2023-09-01 15:25:23');
INSERT INTO `vendor_users` VALUES (1335, 94, 3040, '2023-09-01 15:33:49', '2023-09-01 15:33:49');
INSERT INTO `vendor_users` VALUES (1336, 94, 3041, '2023-09-01 15:34:23', '2023-09-01 15:34:23');
INSERT INTO `vendor_users` VALUES (1337, 94, 3042, '2023-09-01 15:46:20', '2023-09-01 15:46:20');
INSERT INTO `vendor_users` VALUES (1338, 94, 3043, '2023-09-01 16:25:46', '2023-09-01 16:25:46');
INSERT INTO `vendor_users` VALUES (1339, 55, 3000, '2023-09-01 16:27:46', '2023-09-01 16:27:46');
INSERT INTO `vendor_users` VALUES (1340, 94, 3044, '2023-09-01 16:30:02', '2023-09-01 16:30:02');
INSERT INTO `vendor_users` VALUES (1341, 94, 3045, '2023-09-01 20:13:02', '2023-09-01 20:13:02');
INSERT INTO `vendor_users` VALUES (1342, 94, 3047, '2023-09-01 20:28:44', '2023-09-01 20:28:44');
INSERT INTO `vendor_users` VALUES (1343, 94, 3046, '2023-09-01 21:01:44', '2023-09-01 21:01:44');
INSERT INTO `vendor_users` VALUES (1345, 286, 2957, '2023-09-02 09:26:03', '2023-09-02 09:26:03');
INSERT INTO `vendor_users` VALUES (1346, 278, 2963, '2023-09-02 11:38:07', '2023-09-02 11:38:07');
INSERT INTO `vendor_users` VALUES (1347, 278, 2964, '2023-09-02 11:38:11', '2023-09-02 11:38:11');
INSERT INTO `vendor_users` VALUES (1348, 278, 2965, '2023-09-02 11:38:14', '2023-09-02 11:38:14');
INSERT INTO `vendor_users` VALUES (1350, 287, 2957, '2023-09-02 21:11:40', '2023-09-02 21:11:40');
INSERT INTO `vendor_users` VALUES (1351, 286, 2958, '2023-09-02 21:13:36', '2023-09-02 21:13:36');
INSERT INTO `vendor_users` VALUES (1352, 286, 2959, '2023-09-02 21:13:40', '2023-09-02 21:13:40');
INSERT INTO `vendor_users` VALUES (1353, 287, 2958, '2023-09-02 21:20:37', '2023-09-02 21:20:37');
INSERT INTO `vendor_users` VALUES (1354, 287, 2959, '2023-09-02 21:20:44', '2023-09-02 21:20:44');
INSERT INTO `vendor_users` VALUES (1355, 94, 3050, '2023-09-03 10:55:15', '2023-09-03 10:55:15');
INSERT INTO `vendor_users` VALUES (1356, 94, 3056, '2023-09-03 19:22:13', '2023-09-03 19:22:13');
INSERT INTO `vendor_users` VALUES (1357, 94, 3055, '2023-09-03 19:37:13', '2023-09-03 19:37:13');
INSERT INTO `vendor_users` VALUES (1358, 94, 3057, '2023-09-03 19:37:47', '2023-09-03 19:37:47');
INSERT INTO `vendor_users` VALUES (1359, 94, 3058, '2023-09-03 19:47:54', '2023-09-03 19:47:54');
INSERT INTO `vendor_users` VALUES (1360, 287, 2960, '2023-09-03 19:53:19', '2023-09-03 19:53:19');
INSERT INTO `vendor_users` VALUES (1361, 94, 3059, '2023-09-03 20:42:30', '2023-09-03 20:42:30');
INSERT INTO `vendor_users` VALUES (1362, 94, 3060, '2023-09-03 20:58:30', '2023-09-03 20:58:30');
INSERT INTO `vendor_users` VALUES (1363, 269, 2975, '2023-09-03 22:11:08', '2023-09-03 22:11:08');
INSERT INTO `vendor_users` VALUES (1364, 269, 2976, '2023-09-03 22:15:03', '2023-09-03 22:15:03');
INSERT INTO `vendor_users` VALUES (1365, 269, 2977, '2023-09-03 22:15:09', '2023-09-03 22:15:09');
INSERT INTO `vendor_users` VALUES (1366, 269, 2978, '2023-09-03 23:00:54', '2023-09-03 23:00:54');
INSERT INTO `vendor_users` VALUES (1367, 269, 2979, '2023-09-03 23:00:57', '2023-09-03 23:00:57');
INSERT INTO `vendor_users` VALUES (1368, 269, 2980, '2023-09-03 23:10:09', '2023-09-03 23:10:09');
INSERT INTO `vendor_users` VALUES (1369, 278, 2966, '2023-09-04 10:45:34', '2023-09-04 10:45:34');
INSERT INTO `vendor_users` VALUES (1370, 278, 2967, '2023-09-04 10:45:40', '2023-09-04 10:45:40');
INSERT INTO `vendor_users` VALUES (1371, 278, 2968, '2023-09-04 10:45:42', '2023-09-04 10:45:42');
INSERT INTO `vendor_users` VALUES (1372, 278, 2969, '2023-09-04 10:45:44', '2023-09-04 10:45:44');
INSERT INTO `vendor_users` VALUES (1373, 278, 2970, '2023-09-04 10:45:45', '2023-09-04 10:45:45');
INSERT INTO `vendor_users` VALUES (1374, 278, 2971, '2023-09-04 10:45:48', '2023-09-04 10:45:48');
INSERT INTO `vendor_users` VALUES (1375, 278, 2972, '2023-09-04 11:22:12', '2023-09-04 11:22:12');
INSERT INTO `vendor_users` VALUES (1376, 278, 2973, '2023-09-04 11:25:52', '2023-09-04 11:25:52');
INSERT INTO `vendor_users` VALUES (1377, 278, 2974, '2023-09-04 11:59:41', '2023-09-04 11:59:41');
INSERT INTO `vendor_users` VALUES (1378, 289, 2957, '2023-09-04 20:33:28', '2023-09-04 20:33:28');
INSERT INTO `vendor_users` VALUES (1379, 289, 2958, '2023-09-04 20:41:04', '2023-09-04 20:41:04');
INSERT INTO `vendor_users` VALUES (1380, 289, 2959, '2023-09-04 20:47:52', '2023-09-04 20:47:52');
INSERT INTO `vendor_users` VALUES (1381, 287, 2961, '2023-09-04 21:55:50', '2023-09-04 21:55:50');
INSERT INTO `vendor_users` VALUES (1382, 287, 2962, '2023-09-04 22:00:25', '2023-09-04 22:00:25');
INSERT INTO `vendor_users` VALUES (1383, 25, 90, '2023-09-05 08:06:47', '2023-09-05 08:06:47');
INSERT INTO `vendor_users` VALUES (1384, 269, 2981, '2023-09-05 14:52:24', '2023-09-05 14:52:24');
INSERT INTO `vendor_users` VALUES (1385, 269, 2982, '2023-09-05 15:16:08', '2023-09-05 15:16:08');
INSERT INTO `vendor_users` VALUES (1386, 269, 2983, '2023-09-05 15:16:10', '2023-09-05 15:16:10');
INSERT INTO `vendor_users` VALUES (1387, 269, 2984, '2023-09-05 15:16:13', '2023-09-05 15:16:13');

-- ----------------------------
-- Table structure for vendors
-- ----------------------------
DROP TABLE IF EXISTS `vendors`;
CREATE TABLE `vendors`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `audio01` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `audio02` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `audio03` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file01` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file02` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file03` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `video01` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `video02` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `video03` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 209 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vendors
-- ----------------------------
INSERT INTO `vendors` VALUES (35, 'Morning Day 1', '<p>Morning Day 1<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-1/YSpCNmraIgcMhYIVFzDqgYUt8IHlZMFIsQGTFLNG.pdf', NULL, NULL, 'uploads/lessons/morning-date-1/Xmqibs9u2QBaoSJ3iVKGw7TP5cYTxbFbS70GlsOJ.mp4', NULL, NULL, 1, '2023-03-15 21:18:25', '2023-08-06 22:40:04');
INSERT INTO `vendors` VALUES (36, 'Midday Day 1', '<p>Midday Day 1<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-1/MEb7NafG3BQVfXE4acOQR9uLuzOZOIYM9A8V1nD9.pdf', NULL, NULL, 'uploads/lessons/midday-date-1/peBZCGXvhcn4Mw0DndfW1OXKOgFjoscLB5VH4QNr.mp4', NULL, NULL, 1, '2023-03-15 22:26:20', '2023-08-06 22:40:27');
INSERT INTO `vendors` VALUES (37, 'Evening Day 1', 'Evening Day 1', NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-1/TaEcx7r5sUzNBUjC7PhD8X9X1Zxlh4zNbJTJAE5n.pdf', 'uploads/lessons/evening-date-1/s0aGrfa4zjIZXcQGgbAwCxpa62YWv8Da3tOUqXU1.pdf', NULL, 'uploads/lessons/evening-date-1/VhQqkSuHS0PQWBUKyAc0BkZSGWgs9HQwN3CPTUVe.mp4', NULL, NULL, 1, '2023-03-15 22:30:59', '2023-08-06 22:40:45');
INSERT INTO `vendors` VALUES (38, 'Morning Day 2', '<p>Morning Day 2<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-2/QCuyRzdL4qmyUVjMIkTtmJkwlIwQBwmnE7hcxyN3.pdf', NULL, NULL, 'uploads/lessons/morning-date-2/rQ4xTiycr5ZP4MHI4iFG5X9bg3YA476odV1BDmkw.mp4', NULL, NULL, 1, '2023-03-17 21:43:29', '2023-08-06 22:44:00');
INSERT INTO `vendors` VALUES (39, 'Midday Day 2', '<p>Midday Day 2<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-2/Ynhw0KB6K3ERE5kKn1ytk95AZdtfHEV8ksNXpese.pdf', NULL, NULL, 'uploads/lessons/midday-date-2/VE2Rk9NrsQqph44ZcJThfJ6wpEbZ7ZuxAlcATYds.mp4', NULL, NULL, 1, '2023-03-17 21:49:36', '2023-08-06 22:47:30');
INSERT INTO `vendors` VALUES (40, 'Evening Date 2', '<p>Evening Date 2<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-2/0b6sSM52xOVrrIJp8HDl5IkbguupfrfztPpBPrPd.pdf', NULL, NULL, 'uploads/lessons/evening-date-2/bZmFxHuCAntqoq3D2MBfm4Wfcw5F6exRD3r6Rehz.mp4', NULL, NULL, 1, '2023-03-17 21:53:45', '2023-03-17 21:53:46');
INSERT INTO `vendors` VALUES (41, 'Morning Day 3', '<p>Morning Day 3<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-3/otnwzlPQgAD5U1zn7R4ixLgy2B0DjLAOxydIUhPb.pdf', NULL, NULL, 'uploads/lessons/morning-date-3/YY9kosEn44Nh5httMIXabNANA1Nnsfj1VmLP2qhM.mp4', NULL, NULL, 1, '2023-03-17 21:56:14', '2023-08-06 22:47:51');
INSERT INTO `vendors` VALUES (42, 'Midday Day 3', '<p>Midday Day 3<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-3/6KnRYERU03rukn8O5jaG87aYC5uvc1XuDIzehtqb.pdf', NULL, NULL, 'uploads/lessons/midday-date-3/TlFG6IbCsBxqhmbPQbVwyuuuDCDu4yup3OvpB6NS.mp4', NULL, NULL, 1, '2023-03-17 22:01:09', '2023-08-06 22:48:24');
INSERT INTO `vendors` VALUES (43, 'Evening Day 3', '<p>Evening Day 3<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-3/rkjNSghLAyiYFueD1ZM54SKcurIOw8HzuAqdgMW4.mp4', NULL, NULL, 1, '2023-03-17 22:03:16', '2023-08-06 22:49:02');
INSERT INTO `vendors` VALUES (44, 'Morning Day 4', '<p>Morning Day 4<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-4/oMotq3T9TiJItnyIPHzHLS6cjeVqrisO3Ki4zZOz.pdf', NULL, NULL, 'uploads/lessons/morning-date-4/WzMx7yNPTAAOWNuNtJUue9VdvCVurz1TEKUUulRJ.mp4', NULL, NULL, 1, '2023-03-20 00:12:07', '2023-08-06 22:49:24');
INSERT INTO `vendors` VALUES (45, 'Midday Day 4', 'Midday Day 4', NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-4/hlxQIatE4one41gKjs9bBWh1tB0zcftUZLtd0hED.pdf', NULL, NULL, 'uploads/lessons/midday-date-4/TwB9CKAWzZR2a1AxLXjjou34FhiTIsVLhy3EVe9g.mp4', NULL, NULL, 1, '2023-03-20 00:15:16', '2023-08-06 22:50:50');
INSERT INTO `vendors` VALUES (46, 'Evening Day 4', '<p>Evening Day 4<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-4/bNh3NgaqCu8IEV24DVRmD4wYsELptI1x0CuNVvCa.pdf', NULL, NULL, 'uploads/lessons/evening-date-4/D2fcXj9BacA0KdWbEKaV36Da9kGCijVC4JsEHsDW.mp4', NULL, NULL, 1, '2023-03-20 00:38:29', '2023-08-06 22:51:02');
INSERT INTO `vendors` VALUES (47, 'Morning Day 5', '<p>Morning Day 5<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-5/uvxuByYhKOUZPTZG33DSymmvQK0mP8JR221TquYR.mp4', NULL, NULL, 1, '2023-03-20 01:46:56', '2023-08-06 22:53:21');
INSERT INTO `vendors` VALUES (48, 'Midday Day 5', '<p>Midday Day 5<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-5/DX7dz8vLNs6JLCq4cOOfuXT3Ei0h50hkQCpR9cW7.mp4', NULL, NULL, 1, '2023-03-20 02:28:50', '2023-08-06 22:56:10');
INSERT INTO `vendors` VALUES (50, 'Evening Day 5', 'Evening Day 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-5/5Uqohbyennq8k0DDZYRDTSui1kKdHclksF8oieGp.mp4', NULL, NULL, 1, '2023-03-20 03:20:38', '2023-08-06 22:56:23');
INSERT INTO `vendors` VALUES (51, 'Morning Day 6', '<p>Morning Day 6<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-6/zwJrdZO6wFEmMxKNtxZxTmaacFuOEdNAWFN2yLYu.mp4', NULL, NULL, 1, '2023-03-27 07:21:52', '2023-08-06 22:56:40');
INSERT INTO `vendors` VALUES (52, 'Midday Day 6', 'Midday Day 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-6/pP3HIv1rzJMM4ZFRvnJuwfUYerFiCzrxcqoYmH01.mp4', NULL, NULL, 1, '2023-03-27 07:29:45', '2023-08-06 23:07:06');
INSERT INTO `vendors` VALUES (53, 'Evening Day 6', 'Evening Day 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/R7fdT4pBMmnuBKk6TqfTVpeN4N2yOJL4bA3Uqqfu.mp4', NULL, NULL, 1, '2023-03-27 07:31:29', '2023-08-06 23:08:11');
INSERT INTO `vendors` VALUES (54, 'Day 7 - Recording', '<p>Day 7 - Recording<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/date-7-recording/ZioUtzKRk4zyWoAjsl6HxGrfWM2dwKvMn33xPSUD.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-03-27 10:08:14', '2023-08-06 23:08:26');
INSERT INTO `vendors` VALUES (55, 'Morning Day 8', '<p>Morning Day 8<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-8/UtqqKER0FdlsyEtdYzWdp7WbhyPRFN86gqFk2nU4.mp4', NULL, NULL, 1, '2023-03-31 22:01:53', '2023-08-06 23:10:41');
INSERT INTO `vendors` VALUES (56, 'Midday Day 8', '<p>Midday Day 8<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-8/tAyM34w29Hg56p08SzDOi3tc4qX9XcLD0yY1QLUu.mp4', NULL, NULL, 1, '2023-03-31 22:32:37', '2023-08-06 23:10:56');
INSERT INTO `vendors` VALUES (57, 'Evening  Day 8', '<p>Evening&nbsp; Day 8<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/evening-8/e5AcLgHTNad27FoNRSx3O6mRuAbXFGl5A9LWeIh7.mp4', NULL, NULL, 1, '2023-03-31 22:38:14', '2023-08-06 23:11:08');
INSERT INTO `vendors` VALUES (58, 'Morning Day 9', '<p>Morning Day 9<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-9/gc99E1xpFyYV9T2sPAKFAS7m2kMz3m1LnVi4dBJy.mp4', NULL, NULL, 1, '2023-03-31 22:44:35', '2023-08-06 23:11:23');
INSERT INTO `vendors` VALUES (59, 'Midday Day 9', '<p>Midday Day 9<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-9/ostP6n9ymkzOMtByQ26XnwgFlWs5WvTYIoVDndlt.pdf', NULL, NULL, 'uploads/lessons/evening-date-9/IwlTNksiL1n31ecMgyTkLU24khVFXbMDt0jinYWV.mp4', NULL, NULL, 1, '2023-04-01 00:11:08', '2023-08-06 23:11:39');
INSERT INTO `vendors` VALUES (60, 'Evening Day 9', '<p>Evening Day 9<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-9/y3FQRg4fpkikVvE8Wmg8dzssqn2QX2XxpRgelkDg.pdf', NULL, NULL, 'uploads/lessons/evening-date-9/EWUcwlNJxKZVaE2vDOd3ELBgjU0NGhgel8VVZZBR.mp4', NULL, NULL, 1, '2023-04-07 05:01:29', '2023-08-06 23:11:53');
INSERT INTO `vendors` VALUES (61, 'Morning Date 10', '<p>Morning Date 10<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-10/5EvWX607KTmXhiDIXCOM9b2esKQ4t9wD8IZ9Mt2s.mp4', NULL, NULL, 'uploads/lessons/morning-date-10/NDdouitiikICHnF357DBkqCcOYYpR3DFqtQTTJLG.mp4', NULL, NULL, 1, '2023-04-07 06:50:25', '2023-04-07 06:56:39');
INSERT INTO `vendors` VALUES (62, 'Midday Day 10', 'Midday Day 10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-10/27YD2HLsPfQ4Mn5MbItIT4xyBfSHi7fJuFIIbu0P.mp4', NULL, NULL, 1, '2023-04-07 06:52:18', '2023-08-06 23:24:02');
INSERT INTO `vendors` VALUES (63, 'Evening Day 10', '<p>Evening Day 10<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-10/LfFJU1JBVMZSzCZ05ZC8UcYjvbOXgCF4mb7L75aq.mp4', NULL, NULL, 1, '2023-04-07 22:01:12', '2023-08-06 23:24:09');
INSERT INTO `vendors` VALUES (64, 'Morning Day 11', 'Morning Day 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-11/gdvUj11sQT0IVSJtmlSV0F5rbhbZAlw1v2U7YKaZ.mp4', NULL, NULL, 1, '2023-04-07 22:07:13', '2023-08-06 23:24:21');
INSERT INTO `vendors` VALUES (65, 'Midday Day 11', '<p>Midday Day 11<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-11/wOyfzAcZQ1ko91Y8VZJay9f4leIgPS2N5naN6Cdy.mp4', NULL, NULL, 1, '2023-04-14 06:39:06', '2023-08-06 23:24:28');
INSERT INTO `vendors` VALUES (66, 'Evening Day 11', '<p>Evening Day 11<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-11/VlCGM2ympiYch5FgvIiTHNiqmOKztaLgLR8wzi9c.mp4', NULL, NULL, 1, '2023-04-14 06:49:52', '2023-08-06 23:25:19');
INSERT INTO `vendors` VALUES (67, 'Morning Day 12', '<p>Morning Day 12<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-12/HAd43qO9OxXm5T021eWZDpUDNfaQBlmIMHNaz1jD.mp4', NULL, NULL, 1, '2023-04-14 07:01:53', '2023-08-06 23:25:29');
INSERT INTO `vendors` VALUES (68, 'Midday Day 12', 'Midday Day 12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-12/qiC4Hj25BpUHGwuqjOmM8Yb4iMX1xfNwhCLRGFAI.mp4', NULL, NULL, 1, '2023-04-14 07:23:25', '2023-08-06 23:25:35');
INSERT INTO `vendors` VALUES (69, 'Evening Day 12', '<p>Evening Day 12<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-12/qsIUFdV7g6Q4gc7IMcyFRrKN3P9nSMxUIlDWy0FG.mp4', NULL, NULL, 1, '2023-04-14 09:57:12', '2023-08-06 23:25:42');
INSERT INTO `vendors` VALUES (70, 'Morning Day 13', 'Morning Day 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-13/wPxwF7szdbab3DQuh2VHjQsb2a3yxzJqgX8WKfhQ.mp4', NULL, NULL, 1, '2023-04-14 09:58:03', '2023-08-06 23:25:50');
INSERT INTO `vendors` VALUES (71, 'Midday  Day 13', 'Midday&nbsp; Day 13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-13/RJg0SmKmHtpH5Pyf7RCwXErvETZx6GjgVIJSz2sE.mp4', NULL, NULL, 1, '2023-04-14 09:59:44', '2023-08-06 23:25:57');
INSERT INTO `vendors` VALUES (72, 'Evening Day 13', '<p>Evening Day 13<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-13/fg3gE4OtWijSw2MMB9JMWPrEbCb0grhmYWAJtpjO.mp4', NULL, NULL, 1, '2023-04-14 20:27:27', '2023-08-06 23:26:05');
INSERT INTO `vendors` VALUES (73, 'Filming yourself - Day 14', '<p>Filming yourself - Day 14<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/filming-yourself-date-14/ShLVgcQJGcX8nn5uWlgYKIQBhXACI1woGtLH1Tr5.pdf', NULL, NULL, NULL, NULL, NULL, 1, '2023-04-26 03:12:35', '2023-08-06 23:26:20');
INSERT INTO `vendors` VALUES (75, 'Midday- Day 15', '<p>Midday- Day 15<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-15/3D6JBKIwv06NChnNwkiTHklguEbElIgdZogr0AZP.mp4', NULL, NULL, 1, '2023-04-26 03:36:09', '2023-08-06 23:26:30');
INSERT INTO `vendors` VALUES (76, 'Evening Day 15', '<p>Evening Day 15<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-15/UxNWMAtButaWyv6ahuYdPLDN7OVeGThLMsHXLtoV.jpg', NULL, NULL, 'uploads/lessons/evening-date-15/TXGsK6pLWU2yZa0iRJBP4e0QYh2U5CjPtKB8y9v5.mp4', NULL, NULL, 1, '2023-04-26 04:21:30', '2023-08-06 23:26:37');
INSERT INTO `vendors` VALUES (77, 'Morning Day 16', '<p>Morning Day 16<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-16/56kPXIDyRX3Ow5VL68NJtQxemqG81RPTGfMlp59P.mp4', NULL, NULL, 1, '2023-04-26 04:37:23', '2023-08-06 23:29:47');
INSERT INTO `vendors` VALUES (78, 'Midday Day 16', '<p>Midday Day 16<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-16/CFH6qqfCj62fDP13cGoLWIOwiDLcDfxA9FPgDKo9.mp4', NULL, NULL, 1, '2023-04-26 04:58:17', '2023-08-06 23:29:55');
INSERT INTO `vendors` VALUES (79, 'Evening Day 16', '<p>Evening Day 16<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-16/SxSj86qnbvLZ3FClCikvez68cmdmdXhOoPlHTvuw.mp4', NULL, NULL, 1, '2023-04-26 04:59:27', '2023-08-06 23:30:04');
INSERT INTO `vendors` VALUES (80, 'Morning Day 17', 'Morning Day 17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-17/lVZVKX3HqBk8hf6zZ1THvY1tV8PjgfgnkZR3SFsB.mp4', NULL, NULL, 1, '2023-04-26 05:10:07', '2023-08-06 23:30:12');
INSERT INTO `vendors` VALUES (81, 'Midday Day 17', '<p>Midday Day 17<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-17/ysrf1Xfdi7sE9Gv9zvbTXUkU9Rh2aVBfxswfeDRm.mp4', NULL, NULL, 1, '2023-04-26 05:31:54', '2023-08-06 23:30:20');
INSERT INTO `vendors` VALUES (82, 'Evening Day 17', 'Evening Day 17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-17/CjZmceW1JPmAfpQW4RygXzmhEDtUATOBqIplbvlJ.mp4', NULL, NULL, 1, '2023-04-26 05:55:41', '2023-08-06 23:30:27');
INSERT INTO `vendors` VALUES (83, 'Morning Day 18', '<p>Morning Day 18<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-18/omukIXZSbYSMWr9LR5leAh1AdekjEoYsZFU3sDZf.mp4', NULL, NULL, 1, '2023-04-26 06:04:46', '2023-08-06 23:30:33');
INSERT INTO `vendors` VALUES (85, 'Midday Day 18', '<p>Midday Day 18<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-18/qLWjM7Wq4XWz28bDJRGvQy0zVl9enFxEd1EL4ovW.mp4', NULL, NULL, 1, '2023-04-26 06:30:46', '2023-08-06 23:30:41');
INSERT INTO `vendors` VALUES (86, 'Evening Day 18', 'Evening Day 18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/63TqQ28etblLE7vhlkQvzpr611C6yJ5Wp8vPZbVN.mp4', 'uploads/file/63TqQ28etblLE7vhlkQvzpr611C6yJ5Wp8vPZbVN.mp4', NULL, 1, '2023-04-26 06:31:24', '2023-08-06 23:30:56');
INSERT INTO `vendors` VALUES (87, 'Morning Day 19', '<p>Morning Day 19<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/mHpFB8JgsYAwNv3wakfsWzFfWPKP6Kc1GEOeQ5Bx.mp4', NULL, NULL, 1, '2023-04-26 06:39:00', '2023-08-06 23:31:06');
INSERT INTO `vendors` VALUES (88, 'Midday Day 19', 'Midday Day 19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-19/xDs5xrkAdrkXr4RcTCC39vY4oTnysjDr7d5gqkBm.mp4', NULL, NULL, 1, '2023-04-26 06:50:08', '2023-08-06 23:32:13');
INSERT INTO `vendors` VALUES (89, 'Evening Day 19', '<p>Evening Day 20<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-19/xxMRCdFqW6hbyqn0lOZu9jMFnPR565DCSXcgEWc5.pdf', NULL, NULL, 'uploads/lessons/evening-date-20/H8u1MAsuPz0U5bmZCmZ3oqh6mrp4DeZHLX9De38q.mp4', NULL, NULL, 1, '2023-04-26 07:10:48', '2023-08-06 23:32:21');
INSERT INTO `vendors` VALUES (90, 'Morning Day 20', '<p>Morning Day 20<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/morning-date-20/qplXmOevLPlqtJrqqb3AsQL48uV8AKk58AGiHqXt.mp4', NULL, NULL, 1, '2023-04-26 07:37:52', '2023-08-06 23:32:35');
INSERT INTO `vendors` VALUES (91, 'Midday Day 20', 'Midday Day 12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/midday-date-12/qggWf1V68kDABB7dLznb86HGEXfdwkwmKM6dl6Sx.mp4', NULL, NULL, 1, '2023-04-26 07:50:54', '2023-08-06 23:33:08');
INSERT INTO `vendors` VALUES (92, 'Evening Day 20', 'Evening Day 20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/lessons/evening-date-20/otA2b8NQtj8j8LfMhgQvd0qGV1sl96cErkHHv8Gs.mp4', NULL, NULL, 1, '2023-04-26 07:53:01', '2023-08-06 23:33:31');
INSERT INTO `vendors` VALUES (94, 'Filming yourself - Day 21', '<p>Filming yourself - Day 21<br></p>', NULL, NULL, NULL, NULL, 'uploads/lessons/filming-yourself-date-21/xt4fBinmcq7nd9eeRPUd9DKRG1P4AZPvwtzTAdqq.pdf', NULL, NULL, NULL, NULL, NULL, 1, '2023-04-27 02:14:09', '2023-08-06 23:33:39');
INSERT INTO `vendors` VALUES (98, 'Morning Day 15', '<p><span style=\"color: rgba(255, 255, 255, 0.85); font-family: Roboto, sans-serif; font-size: 15px; white-space: nowrap; background-color: rgba(0, 0, 0, 0.2);\">Morning Day 15</span><br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/cNOF2XqD0gWsBnH7yJ4w6wVoeCrYKs70XLPSNFwn.mp4', NULL, NULL, 1, '2023-06-06 19:12:41', '2023-08-06 23:33:46');
INSERT INTO `vendors` VALUES (99, 'pronunciation 1', '<p>Pronunciation 1</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/OsmtdXRHmNBss3Ll3ZmvVZVYayAJFwsaZiiLY36Q.mp4', NULL, NULL, 1, '2023-06-18 19:34:13', '2023-06-18 19:34:13');
INSERT INTO `vendors` VALUES (100, 'Pronunciation 2', '<p>Pronunciation 2&nbsp;<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/uuxQ9IxJQpzsIXM3CiQCOzhxLz48lyriLxtOhosK.mp4', NULL, NULL, 1, '2023-06-18 19:37:39', '2023-06-18 19:37:39');
INSERT INTO `vendors` VALUES (101, 'Vocabulary  Lesson 1', '<p>Vocabulary  Les 1<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/mRBlqa2bXaEYKT3qvBkdtNguBp761sw2g2rqa7Xm.mp4', NULL, NULL, 1, '2023-06-18 19:39:05', '2023-06-18 20:47:03');
INSERT INTO `vendors` VALUES (102, 'Vocabulary lesson 2', '<p>Vocabulary lesson 2<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/UOKE10c2TxAeZU6aOfp6tPwDdglZS7xDSEIMnJXI.mp4', NULL, NULL, 1, '2023-06-18 19:41:34', '2023-06-18 19:41:34');
INSERT INTO `vendors` VALUES (103, 'Vocabulary Lesson 3', '<p>Vocabulary Lesson 3<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/0cvpJWrc7LN2tNjCst8om0zL4kUKrCVFbF3HqevF.mp4', NULL, NULL, 1, '2023-06-18 19:44:26', '2023-06-18 20:07:27');
INSERT INTO `vendors` VALUES (104, 'Vocabulary Lesson 4', 'Vocabulary Lesson 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/W7eAAblTwsKooJcfKXnyHnFZ9eICxRn0jJGDQi2w.mp4', NULL, NULL, 1, '2023-06-18 19:45:14', '2023-06-18 20:08:06');
INSERT INTO `vendors` VALUES (105, 'Pronunciation Lesson 5', 'Pronunciation Lesson 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/BQBBAe98ZURFx1KWMU1ROluhEjJWUDwPLRB7vYnk.mp4', NULL, NULL, 1, '2023-06-18 19:45:52', '2023-06-18 20:09:38');
INSERT INTO `vendors` VALUES (106, 'Pronunciation  Lesson 6', 'Pronunciation  6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/MQWLltnp3FCY8YVbzKzZo3HLHbHBRWmkSDCYwYcx.mp4', NULL, NULL, 1, '2023-06-18 19:46:34', '2023-06-18 20:46:43');
INSERT INTO `vendors` VALUES (107, 'Pronunciation Les  7', 'Pronunciation Les&nbsp; 7&nbsp;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/PxuCfC6eXphCXHMLH45TdPBDki3E8vyz6KjCpZek.mp4', NULL, NULL, 1, '2023-06-18 19:47:14', '2023-06-18 19:47:14');
INSERT INTO `vendors` VALUES (108, 'Vocabulary Lesson 5', '<p>VOCABULARY 5</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/fBBW8R4Kq5Dltm9QihlKzVOd4KynlsvoQcFr9JdI.mp4', NULL, NULL, 1, '2023-06-18 20:28:32', '2023-06-18 20:28:32');
INSERT INTO `vendors` VALUES (109, 'Vocabulary Lesson 6', 'Vocabulary Lesson 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/xNrgrqFrujq39qx7YsbamM6fq6WXRO7vKHPkyLfb.mp4', NULL, NULL, 1, '2023-06-18 20:30:10', '2023-06-18 20:41:16');
INSERT INTO `vendors` VALUES (110, 'Vocabulary Lesson 7', 'Vocabulary Lesson 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/DfvdH2XzD8HfW9YYGV0m2rVrhcyrf6IAQQUZKvPY.mp4', NULL, NULL, 1, '2023-06-18 20:30:44', '2023-06-18 20:30:44');
INSERT INTO `vendors` VALUES (111, 'Vocabulary Lesson 8', 'Vocabulary Lesson 8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/TJdosbsNkgOPiJ3E6vjgledcgGcbNnNUWP1nCJVQ.mp4', NULL, NULL, 1, '2023-06-18 20:31:36', '2023-06-18 20:31:36');
INSERT INTO `vendors` VALUES (112, 'Vocabulary Lesson 9', '<p>Vocabulary Lesson 9<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/gdJzG0nw9CXuOqJCPLryLKc1ZneN7np492ozy41n.mp4', NULL, NULL, 1, '2023-06-18 20:37:48', '2023-06-18 20:37:48');
INSERT INTO `vendors` VALUES (113, 'vocabulary Lesson 10', 'vocabulary Lesson 10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/Wfwzt2AJi2tPWN95BYKUKnzrWwpKQlX11t8GcRrk.mp4', NULL, NULL, 1, '2023-06-18 20:39:17', '2023-06-18 20:39:17');
INSERT INTO `vendors` VALUES (114, 'Vocabulary Lesson 11', 'Vocabulary Lesson 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/XgwmhJAqIz7tDKf0SUAAlnc7iT643dOTadkvmlR6.mp4', NULL, NULL, 1, '2023-06-18 20:40:01', '2023-06-18 20:40:01');
INSERT INTO `vendors` VALUES (115, 'Day 22 Morning', '<p>&nbsp;Day 22 Morning<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/e2Z2602y64u7wU2FjBGanXkrfmTdROu3iq0NBLhJ.mp4', NULL, NULL, 1, '2023-06-22 11:53:15', '2023-08-06 23:35:18');
INSERT INTO `vendors` VALUES (116, 'Day 22 Midday', '&nbsp;Day 22 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/TK9OQXqxjWbJrukPaGsSV5PT9nNfht4vYlQnaPkg.mp4', NULL, NULL, 1, '2023-06-22 11:54:00', '2023-08-06 23:36:05');
INSERT INTO `vendors` VALUES (117, 'Everning Day 22', 'Everning Day 22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/aePJu5wPzFjsCaQFSbasN8GaHDOlodCmPUWRi6be.mp4', NULL, NULL, 1, '2023-06-22 11:54:26', '2023-08-06 23:36:13');
INSERT INTO `vendors` VALUES (118, 'Morning Day 23', 'Morning Day 23&nbsp;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/00yNZ0q0FrFVQCn7zVpwo2klB23l5U3bATDqXKCc.mp4', NULL, NULL, 1, '2023-06-22 11:54:52', '2023-08-06 23:36:20');
INSERT INTO `vendors` VALUES (119, 'Day 23 Midday', '<p>Day 23 Midday<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/l9bRPPRzXVjmoqG3FwMAw7lgDRgeWxbN5kHGgOQL.mp4', NULL, NULL, 1, '2023-06-22 11:55:27', '2023-08-06 23:36:28');
INSERT INTO `vendors` VALUES (120, 'Day 23 Everning', 'Everning Day 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/7cUbfUdXRsGu2wkQJsVQ6t7ytj74h9kPzYBwSqzW.mp4', NULL, NULL, 1, '2023-06-22 11:55:40', '2023-08-06 23:36:43');
INSERT INTO `vendors` VALUES (121, 'Day 24 Morning', '&nbsp;Day 24 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/YLhirKm3qSah2DE3fON5UeMyssBwFcqxwjrUAv7B.mp4', NULL, NULL, 1, '2023-06-22 11:56:00', '2023-08-06 23:36:54');
INSERT INTO `vendors` VALUES (122, 'Day 24 Midday', 'Day 24 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/nhEJs7aJv5Z0MKfv5eNnlpaTxT25jhoUoXHQI7S8.mp4', NULL, NULL, 1, '2023-06-22 11:56:18', '2023-08-06 23:43:00');
INSERT INTO `vendors` VALUES (123, 'Day 24 Evening', '&nbsp;Day 24 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/zTaBzUicvm6RFQULaevI1EpsrxeHK985dqdTaGJa.mp4', NULL, NULL, 1, '2023-06-22 11:56:34', '2023-08-06 23:43:14');
INSERT INTO `vendors` VALUES (124, 'Day 25 Morning', '&nbsp;Day 25 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/5PQXeicmVRbxOsAdt805zq2FhV9jmLUTvRMs2LbJ.mp4', NULL, NULL, 1, '2023-06-22 11:56:47', '2023-08-06 23:43:24');
INSERT INTO `vendors` VALUES (125, 'Day 25 Midday', '&nbsp;Day 25 Midday&nbsp;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/v9cjfMyXk2ErnS5mTomXFIf53g21Y1Qv39kgHTgU.mp4', NULL, NULL, 1, '2023-06-22 11:57:21', '2023-08-06 23:43:45');
INSERT INTO `vendors` VALUES (126, 'Day 25 Eveningy', '&nbsp;Day 25 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/TCGnJBFJOGda7LRNSRtlOQz3lCimGwUQ1rUnlwBB.mp4', NULL, NULL, 1, '2023-06-22 11:57:39', '2023-08-06 23:44:15');
INSERT INTO `vendors` VALUES (127, 'Day 26 Morning', '&nbsp;Day 26 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/6WE2gDgwKb89HOngofHyaK6YX2U5KAaMh2nPMFOU.mp4', NULL, NULL, 1, '2023-06-22 11:58:01', '2023-08-06 23:44:34');
INSERT INTO `vendors` VALUES (128, 'Day 26 Midday', '&nbsp;Day 26 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/W7TRbVHXFll5vNm54QqbH86nClFEUeF8Vya7J0OJ.mp4', NULL, NULL, 1, '2023-06-22 11:58:17', '2023-08-06 23:44:49');
INSERT INTO `vendors` VALUES (129, 'Day 26 Evening', '&nbsp;Day 26 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/D1LYx6sPqkMInLvT3VXpoEPRHa0sA9GIcRsMRFDN.mp4', NULL, NULL, 1, '2023-06-22 11:58:28', '2023-08-06 23:45:00');
INSERT INTO `vendors` VALUES (130, 'Day 27 Morning', '<p>Day 27 Morning<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/fKdtHbkzHtXyermHr2WcuT5laBO3fJLgvQ3mvtuM.mp4', NULL, NULL, 1, '2023-06-24 01:56:26', '2023-08-06 23:45:11');
INSERT INTO `vendors` VALUES (131, 'Day 27 Midday', 'Day 27 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/j4VM0KxWgJwWwmXU5oUMHxt9mJP2BggXW82yCJsx.mp4', NULL, NULL, 1, '2023-06-24 01:56:52', '2023-08-06 23:47:05');
INSERT INTO `vendors` VALUES (132, 'Day 27 Evening', 'Day 27 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/bUDCXEqo2OJr3HxfTLGyF8rHr9PEeyZUwglk0pNa.mp4', NULL, NULL, 1, '2023-06-24 01:57:12', '2023-08-06 23:47:56');
INSERT INTO `vendors` VALUES (133, 'Day 28- Filming yourself', '<p>Day 28<br></p>', NULL, NULL, NULL, NULL, 'uploads/file/Pide2Hh0eXLgpvJ4eIa3jyfxHRNhMUiDlTRxXWyv.pdf', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-24 01:59:46', '2023-08-06 23:48:02');
INSERT INTO `vendors` VALUES (136, 'Day 29 Morning', 'Day 29 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/kWlk0hLrFd005TzORmBEdgVYGP6z2gFFfYWIRdIf.mp4', NULL, NULL, 1, '2023-06-24 02:00:45', '2023-08-06 23:48:08');
INSERT INTO `vendors` VALUES (137, 'Day 29 Midday', 'Day 29 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/1VncVQnKAaIMdIYfb7r2xqiFz4GP4urk3InjF2JO.mp4', NULL, NULL, 1, '2023-06-24 02:01:03', '2023-08-06 23:48:15');
INSERT INTO `vendors` VALUES (138, 'Day 29 Evening', 'Day 29 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/szr8wJTjPcJNSSsvaXnunqXl0v3QqDGeyuA0QW8G.mp4', NULL, NULL, 1, '2023-06-24 02:01:16', '2023-08-06 23:48:24');
INSERT INTO `vendors` VALUES (139, 'Date 30 Morning', 'Date 30 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/zQJqpoykcjhZzIuxXEaMJOzSNb9f48ip5mIEtXBd.mp4', NULL, NULL, 1, '2023-06-24 02:01:31', '2023-06-24 02:01:31');
INSERT INTO `vendors` VALUES (140, 'Date 30 Midday', 'Date 30 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/wUH4220h1vBJEHwfntAYtSP47ChzdJW5feSHfu9u.mp4', NULL, NULL, 1, '2023-06-24 02:01:44', '2023-06-24 02:01:44');
INSERT INTO `vendors` VALUES (141, 'Date 30 Evening', 'Date 30 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/w3uOkSUQTjMhruLZvQVs9kqsMnZDKVS4aRgEvfi1.mp4', NULL, NULL, 1, '2023-06-24 02:01:54', '2023-06-24 02:01:54');
INSERT INTO `vendors` VALUES (142, 'Day 31 Morning', 'Day 31 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/xsGwY3UUPTyS0BwbfRWlOGdahzupUPczqkD1E2YU.mp4', NULL, NULL, 1, '2023-06-24 02:02:09', '2023-06-24 02:02:09');
INSERT INTO `vendors` VALUES (143, 'Day 31 Midday', 'Day 31 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/uVlKnBNIoJyJ0YrkYZOtHHlRkjIMNN92QXa4iuZB.mp4', NULL, NULL, 1, '2023-06-24 02:02:17', '2023-06-24 02:02:17');
INSERT INTO `vendors` VALUES (144, 'Day 31 Evening', 'Day 31 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/EPjzZt667nUjwnrtGXRaO4Jokv1kqSYE7QH6fZRZ.mp4', NULL, NULL, 1, '2023-06-24 02:02:27', '2023-06-24 02:02:27');
INSERT INTO `vendors` VALUES (145, 'Day 32 Morning', 'Day 32 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/Rx8bJ0vNCYOvew1NDQqk7Zm0lgCMz05BpN0k4I6Q.mp4', NULL, NULL, 1, '2023-06-24 02:02:38', '2023-08-06 23:52:22');
INSERT INTO `vendors` VALUES (146, 'Day 32 Midday', 'Day 32 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/7o5zIEowvT3jq0jtZcnakbDK8tAtJC566hzLvEe6.mp4', NULL, NULL, 1, '2023-06-24 02:02:56', '2023-08-06 23:52:32');
INSERT INTO `vendors` VALUES (147, 'Day 32 Evening', 'Day 32 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/qvLeReCj6C41CONWcexNd1rhMGjK4R3vjmvL5iIz.mp4', NULL, NULL, 1, '2023-06-24 02:03:03', '2023-08-06 23:52:39');
INSERT INTO `vendors` VALUES (148, 'Day 33 Morning', 'Day 33 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/D3pC3RJIh6J8QS1KWP0FgCMQ5g1tpWNvozC6jVor.mp4', NULL, NULL, 1, '2023-06-24 02:03:14', '2023-08-06 23:52:45');
INSERT INTO `vendors` VALUES (149, 'Day 33 Midday', 'Day 33 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/Bz8t5RTCVY43bkdZQScwLEdhV5oXj5OTswLyHbmC.mp4', NULL, NULL, 1, '2023-06-24 02:03:36', '2023-08-06 23:52:52');
INSERT INTO `vendors` VALUES (150, 'Day 33 Evening', 'Day 33 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/6Ox6MQZdkLM3ajGx62DZedhgWWcGHuGMz8BBnX2s.mp4', NULL, NULL, 1, '2023-06-24 02:03:49', '2023-08-06 23:53:01');
INSERT INTO `vendors` VALUES (151, 'Day 34 Morning', 'Day 34 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/AYgQUEi4GAbj0XvgozFTZkf8hBGhrVmQdeTlDMcH.mp4', NULL, NULL, 1, '2023-06-24 02:04:01', '2023-08-06 23:53:08');
INSERT INTO `vendors` VALUES (152, 'Day 34 Midday', 'Day 34 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/IeUQEXRfK0WdeyScp6BOvP14fkhc6tmeLxO5bes7.mp4', NULL, NULL, 1, '2023-06-24 02:04:13', '2023-08-06 23:52:16');
INSERT INTO `vendors` VALUES (153, 'Day 34 Evening', 'Day 34 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/PBFVlphO9UO9yCt81Q1uWufFoWvySEaYZe1ZIhg3.mp4', NULL, NULL, 1, '2023-06-24 02:04:22', '2023-08-06 23:53:17');
INSERT INTO `vendors` VALUES (154, 'Day 35 - Film Yourself', '<p>Day 35 - Film Yourself<br></p>', NULL, NULL, NULL, NULL, 'uploads/file/hzMKSZPIg3SH9AwBqjFlZ9XH6vb7UGeEgdUke9Za.pdf', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-14 05:58:42', '2023-08-06 23:56:21');
INSERT INTO `vendors` VALUES (155, 'Day 36 Morning', 'Day 36 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/BzS2fQa39opRxuZE7yaxsEqeI57JRbaQGYoDgYj2.mp4', NULL, NULL, 1, '2023-07-14 05:59:28', '2023-08-06 23:56:35');
INSERT INTO `vendors` VALUES (156, 'Day 36 Midday', '<p>Day 36 Midday<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/nHUx4hKCui3487OmWk0aZNFEetVB206HJYqnT5kI.mp4', NULL, NULL, 1, '2023-07-14 05:59:45', '2023-08-06 23:56:56');
INSERT INTO `vendors` VALUES (157, 'Day 36 Evening', 'Day 36 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/6EknCDpS94aVFC1q93egmfmiVhMYnHlqbelDWqNO.mp4', NULL, NULL, 1, '2023-07-14 05:59:59', '2023-08-06 23:57:21');
INSERT INTO `vendors` VALUES (158, 'Day 37 Morning', 'Day 37 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/uXldpA1PuAAh0ghzNoSenx3pFChv1xU0016wYR8A.mp4', NULL, NULL, 1, '2023-07-14 06:00:14', '2023-08-06 23:57:32');
INSERT INTO `vendors` VALUES (159, 'Day 37 Midday', 'Day 37 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/YqGgwPT15PCb6Rm7utX93ETejbmMZ7poHscKB5wX.mp4', NULL, NULL, 1, '2023-07-14 06:00:29', '2023-08-06 23:57:40');
INSERT INTO `vendors` VALUES (160, 'Day 37 Evening', 'Day 37 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/66H93PiXEmThfbHpjRcGVG4LqqMEBYbekyb2rRCh.mp4', NULL, NULL, 1, '2023-07-14 06:00:44', '2023-08-06 23:57:47');
INSERT INTO `vendors` VALUES (161, 'Day 38 Morning', 'Day 38 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/UGV09JUF6Oow3Cw231HuOKN5lyuJ74uKNnzinXOR.mp4', NULL, NULL, 1, '2023-07-14 06:01:04', '2023-08-06 23:58:31');
INSERT INTO `vendors` VALUES (162, 'Day 38 Midday', 'Day 38 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/5r4DS13WUcvk0iqxHbIr6h4wdBtbklScZm7pIA2t.mp4', NULL, NULL, 1, '2023-07-14 06:01:12', '2023-08-06 23:58:56');
INSERT INTO `vendors` VALUES (163, 'Day 38 Evening', 'Day 38 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/ffriWipKjQIU7rmCRhWlhfgwUKiiQzmZVnvE3y4X.mp4', NULL, NULL, 1, '2023-07-14 06:01:23', '2023-08-06 23:59:07');
INSERT INTO `vendors` VALUES (164, 'Day 39 Morning', 'Day 39 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/4DbVyPeYfzbRyyCEiKjTVZFx4HttTuUZYIFFFiSc.mp4', NULL, NULL, 1, '2023-07-14 06:01:34', '2023-08-07 00:00:38');
INSERT INTO `vendors` VALUES (165, 'Day 39 Midday', '<p>Day 39 Midday&nbsp;<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/PCUWxyBd2qrwKLoEwIhjDp5PNxQNYCzFY75QGPzc.mp4', NULL, NULL, 1, '2023-07-23 10:36:34', '2023-08-07 00:00:48');
INSERT INTO `vendors` VALUES (166, 'Day 39 evening', 'Day 39 evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/vohw22DO5kM8DrHll9GOFX0nUetGLaFuIcq0RPQq.mp4', NULL, NULL, 1, '2023-07-23 10:36:47', '2023-08-07 00:00:55');
INSERT INTO `vendors` VALUES (167, 'Day 40 Morning', 'Date 40 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/4Ef3thqqj1lalmuHM7Zcv4wEITdX6MWQBvSR0mfL.mp4', NULL, NULL, 1, '2023-07-23 10:37:17', '2023-08-14 22:45:19');
INSERT INTO `vendors` VALUES (168, 'Day 40 Midday', 'Day 40 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/8Bbd1RZPt2ahOZp0WP7AZolrdLG3DU5uqk6fkKRc.mp4', NULL, NULL, 1, '2023-07-23 10:37:31', '2023-08-07 00:03:19');
INSERT INTO `vendors` VALUES (169, 'Day 40 Evening', 'Day 40 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/gAkVdIIzkCCui6aTl9hZKd8qlegxF3durvpMA8ta.mp4', NULL, NULL, 1, '2023-07-23 10:37:44', '2023-08-07 00:03:32');
INSERT INTO `vendors` VALUES (170, 'Day 41 Morning', 'Day 41 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/fFaLCHEO7t0Z5dC74RFwvyofjnkh71KkiT8Gychv.mp4', NULL, NULL, 1, '2023-07-23 10:37:59', '2023-08-07 00:04:17');
INSERT INTO `vendors` VALUES (171, 'Date 41 Midday', 'Date 41 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/DPkUSrIwTE7diMFETARMlnGpVgCqu5NgdPHvzlqV.mp4', NULL, NULL, 1, '2023-07-23 10:38:15', '2023-08-07 00:05:10');
INSERT INTO `vendors` VALUES (172, 'Day 41 Evening', 'Day 41 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/dsGwYDvMGrKP7k92VO7yZ7HjIG6vFNNcZo1aF8uE.mp4', NULL, NULL, 1, '2023-07-23 10:38:27', '2023-08-07 00:05:17');
INSERT INTO `vendors` VALUES (173, 'Day 42 - Fliming yourself', '<p>Day 42 - Fliming yourself<br></p>', NULL, NULL, NULL, NULL, 'uploads/file/Ig0b0Cl2O2AyOazo48tvDsPsEisOFgdnNaXcQIS2.pdf', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-27 05:37:12', '2023-08-07 00:05:46');
INSERT INTO `vendors` VALUES (174, 'Day 43 Morning', '<p>Day 43 Morning<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/0OSB2z7BJHGZYmrM9ylDTSGKTOv12wpEbdi6jcvn.mp4', NULL, NULL, 1, '2023-07-27 05:48:32', '2023-08-07 00:10:53');
INSERT INTO `vendors` VALUES (175, 'Day 43 Midday', 'Day 43 Midday&nbsp;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/rWmzMZKt45iOnTCdBDTjEdU1lU6B3wsXrmuXCtxq.mp4', NULL, NULL, 1, '2023-07-27 05:48:46', '2023-08-07 00:11:01');
INSERT INTO `vendors` VALUES (176, 'Day 43 Evening', 'Day 43 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/X36kbdAZkqAXbj3cwqHOjOPoNIsgolub106eLT23.mp4', NULL, NULL, 1, '2023-07-27 05:48:55', '2023-08-07 00:11:16');
INSERT INTO `vendors` VALUES (177, 'Day 44 Morning', '<p>Day 44 Morning<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/TwAfxymgPawHCk2YGgh0lidFpeIGiAiuYk2YPAFs.mp4', NULL, NULL, 1, '2023-07-31 01:49:50', '2023-08-07 00:11:29');
INSERT INTO `vendors` VALUES (178, 'Day 44 Midday', 'Day 44 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/VuFCIsARwwdxB9huljLgISglhOe2sthxNIKtFt8u.mp4', NULL, NULL, 1, '2023-07-31 01:50:09', '2023-08-14 03:03:15');
INSERT INTO `vendors` VALUES (179, 'Day 44 Evening', 'Day 44 Evening ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/f78XD1j4II5coN9ACuS5JefDM0yUJYxJ0P2qJXyP.mp4', NULL, NULL, 1, '2023-07-31 01:50:25', '2023-08-14 03:03:41');
INSERT INTO `vendors` VALUES (180, 'Day 45 Morrning', '<p>Day 45 Morrning<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/hPA7XnNTbP1z3YYH1SbAuaWYrRcGfVsikVTiusW2.mp4', NULL, NULL, 1, '2023-08-06 07:44:47', '2023-08-15 03:41:23');
INSERT INTO `vendors` VALUES (181, 'Day 45 Midday', 'Day 45 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/EjX93GO0MGpJrQhvUHEgXM5P5Ds5nfTRw4Fi36fb.mp4', NULL, NULL, 1, '2023-08-06 07:45:06', '2023-08-14 03:07:28');
INSERT INTO `vendors` VALUES (182, 'Day 45 Evening', 'Day 45 Evening ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/0VMs0FJkHYtgskinCUgFLgDf5PtmEMEzNlYdwOLH.mp4', NULL, NULL, 1, '2023-08-06 07:45:18', '2023-08-14 22:45:45');
INSERT INTO `vendors` VALUES (183, 'Day 46 Morning', '<p>Day 46 Morning<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/d3YB6QKqLEdHHruztb7U3gc62V3t8CLRu05qHnKU.mp4', NULL, NULL, 1, '2023-08-06 07:48:57', '2023-08-16 09:59:39');
INSERT INTO `vendors` VALUES (184, 'Day 46 Midday', '<p>Day 46 Midday <br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/qB5y58agPZ0ynvD5lkYJD7Mi0yySCsOx6CETvjM9.mp4', NULL, NULL, 1, '2023-08-06 08:09:33', '2023-08-14 03:09:38');
INSERT INTO `vendors` VALUES (185, 'Day 46 Evening', 'Day 46 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/I1YjvBpDL8DObFMRm4UlUJ84rKYaUnORjAhuQ0cR.mp4', NULL, NULL, 1, '2023-08-06 08:09:52', '2023-08-16 09:59:01');
INSERT INTO `vendors` VALUES (186, 'Day 47 Morning', 'Day 47 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/OmqasRVFZsoiX00oXb3GWKodjZyCyCvqtYl6OTNW.mp4', NULL, NULL, 1, '2023-08-06 08:11:22', '2023-08-14 22:46:08');
INSERT INTO `vendors` VALUES (187, 'Day 47 Midday', 'Day 47 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/DTXkRKw4EwHmDrqWtC3yjWotkbxvAFJHHhaRXn6y.mp4', NULL, NULL, 1, '2023-08-06 08:11:39', '2023-08-18 10:36:35');
INSERT INTO `vendors` VALUES (188, 'Day 47 Evening', 'Day 47 Evening ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/D6cI32pki98GxAUpLNzo0UFN2id4Aq0Iv8I6ly4a.mp4', NULL, NULL, 1, '2023-08-06 08:11:51', '2023-08-18 10:36:50');
INSERT INTO `vendors` VALUES (189, 'Day 48', 'Day 48', NULL, NULL, NULL, NULL, 'uploads/file/B58BpfeFbWqiNDmyZEulWKdqkUgnYj4JH84GjlgJ.pdf', NULL, NULL, NULL, NULL, NULL, 1, '2023-08-06 08:12:16', '2023-08-25 08:16:15');
INSERT INTO `vendors` VALUES (190, 'Day 49 Morning', '<p>Day 49 Morning<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/Y7FZzwaO09JANRizU7dJ1bfKgB44GrphGeK3NMfz.mp4', NULL, NULL, 1, '2023-08-27 06:26:15', '2023-08-27 06:31:43');
INSERT INTO `vendors` VALUES (191, 'Day 49 Midday', 'Day 49 Midday ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/5itR1YGiYhPqgiwhj1q2Ucy1VbQpWoNkqJdL0p34.mp4', NULL, NULL, 1, '2023-08-27 06:26:32', '2023-08-27 06:32:01');
INSERT INTO `vendors` VALUES (192, 'Date 49 Evening', 'Date 49 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/Hg6Ab6yr7JCbARgwdODT43vr4kf73KOMi2fGNLRx.mp4', NULL, NULL, 1, '2023-08-27 06:26:41', '2023-08-27 06:32:14');
INSERT INTO `vendors` VALUES (193, 'Day 50 Morning', '<p>Day 50 Morning<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/bc6dmtNJzQPYs2RWGaVOo8OblNnbEJWVNJrpWDUk.mp4', NULL, NULL, 1, '2023-08-27 06:35:45', '2023-09-01 23:16:28');
INSERT INTO `vendors` VALUES (194, 'Day 50 Midday', 'Day 50 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/g8Vqfo4IRtdsiF2JqauVENqm0nYLtvPHZcXNJrwq.mp4', NULL, NULL, 1, '2023-08-27 06:36:00', '2023-08-27 06:36:00');
INSERT INTO `vendors` VALUES (195, 'Day 50 Evening', 'Day 50 Evening ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/8iyyFj13kDHchO5fjM47i9HVxYJ1lnXoJRNIyxsF.mp4', NULL, NULL, 1, '2023-08-27 06:36:15', '2023-09-01 23:16:07');
INSERT INTO `vendors` VALUES (196, 'Day 51 Morning (Updating)', '<p>Day 51 Morning<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-27 07:26:40', '2023-08-27 07:26:40');
INSERT INTO `vendors` VALUES (197, 'Day 51 Midday', '<b>Day 51 Midday </b>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/CC81Ov2yjrgcupU4iaXXTJWqOixojzUqjNzdQZRO.mp4', NULL, NULL, 1, '2023-08-27 07:26:57', '2023-08-27 09:11:28');
INSERT INTO `vendors` VALUES (198, 'Day 51 Evening', 'Day 51 Evening&nbsp;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/Ar28MoS8tZXf4Yrk1kmIhsQwnOpWjdRzeXFrAedp.mp4', NULL, NULL, 1, '2023-08-27 07:27:12', '2023-08-27 07:27:12');
INSERT INTO `vendors` VALUES (199, 'Day 52 Morning', 'Day 52 Morning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/m1Taa8s87VQlmOH63F6o5sUlPyUVV07v5COKHoAf.mp4', NULL, NULL, 1, '2023-08-27 07:27:34', '2023-08-27 09:11:45');
INSERT INTO `vendors` VALUES (200, 'Day 52 Midday(Updating)', 'Day 52 Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-27 07:27:55', '2023-08-27 07:27:55');
INSERT INTO `vendors` VALUES (201, 'Day 52  Evening (Updating)', 'Day 52&nbsp; Evening (Updating)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-27 07:28:05', '2023-08-27 07:28:05');
INSERT INTO `vendors` VALUES (202, 'Day 53  Morning', 'Day 53&nbsp; Morning&nbsp;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/qPDezFS5Azm3XFJCe1cmUPDqaHbcRp2rcZGQGsL7.mp4', NULL, NULL, 1, '2023-08-27 07:28:28', '2023-08-28 02:22:12');
INSERT INTO `vendors` VALUES (203, 'Day 53  Midday (Updating)', 'Day 53&nbsp; Midday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-27 07:28:40', '2023-08-27 07:28:40');
INSERT INTO `vendors` VALUES (204, 'Day 53 Evening (Updating)', 'Day 53 Evening&nbsp;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-27 07:28:58', '2023-08-27 07:28:58');
INSERT INTO `vendors` VALUES (205, 'Day 54 Morning', '<p>Day 54 Morning<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/file/OPYHNwjVjEZkQVlJvf4nKhMzriDSug5gYXkn18zh.mp4', NULL, NULL, 1, '2023-08-27 07:31:15', '2023-09-01 23:16:54');
INSERT INTO `vendors` VALUES (206, 'Day 54 Midday (Updating)', '<p>Day 54 Midday&nbsp;<br></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-27 07:33:14', '2023-08-27 07:33:14');
INSERT INTO `vendors` VALUES (207, 'Day 54 Evening (Updating)', 'Day 54 Evening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2023-08-27 07:33:28', '2023-08-27 07:33:28');
INSERT INTO `vendors` VALUES (208, 'Day 55 - Film yourself', 'Day 55 Filming talking about your job', NULL, NULL, NULL, NULL, 'uploads/file/2DIXAvYVkrCZn5z94SSayKpUtujzc8A96HfbTp1F.pdf', NULL, NULL, NULL, NULL, NULL, 1, '2023-08-27 07:33:55', '2023-08-27 07:33:55');

-- ----------------------------
-- Table structure for writers
-- ----------------------------
DROP TABLE IF EXISTS `writers`;
CREATE TABLE `writers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` int NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of writers
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
