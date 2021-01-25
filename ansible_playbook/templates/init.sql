/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.5.131
 Source Server Type    : MySQL
 Source Server Version : 50633
 Source Host           : 192.168.5.131:3306
 Source Schema         : 1217

 Target Server Type    : MySQL
 Target Server Version : 50633
 File Encoding         : 65001

 Date: 17/12/2020 20:44:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cs_cluster
-- ----------------------------
DROP TABLE IF EXISTS `cs_cluster`;
CREATE TABLE `cs_cluster`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_names` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `json` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `oneStart` tinyint(1) NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 711 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_cluster
-- ----------------------------
INSERT INTO `cs_cluster` VALUES (597, 'Hive', 'hive', '192.168.5.135:10003', '[{\"delFlag\":false,\"value\":\"Hive metastore\",\"status\":true},{\"delFlag\":true,\"value\":\"hiveserver2\",\"status\":true}]', '{\"hiveUrl\":\"192.168.5.135:10003\"}', 1, '2020-12-14 14:33:26', '2020-12-14 14:33:26');
INSERT INTO `cs_cluster` VALUES (599, 'HDFS', 'hdfs', '192.168.5.135:9000', '[{\"delFlag\":false,\"value\":\"NameNode\",\"status\":true},{\"delFlag\":false,\"value\":\"DataNode\",\"status\":true},{\"delFlag\":false,\"value\":\"SecondaryNameNode\",\"status\":true}]', '{\"webUI\":\"192.168.5.135:9870\",\"ip\":\"192.168.5.135\",\"hdfsUrl\":\"hdfs://192.168.5.135:9000\"}', 0, '2020-12-01 14:55:25', '2020-11-26 14:00:01');
INSERT INTO `cs_cluster` VALUES (700, 'Kafka', 'kafka', '192.168.5.134:9092', '[{\"delFlag\":true,\"value\":\"Kafka\",\"status\":true}]', '{\"kafkaUrl\":\"192.168.5.134:9092\"}', 0, '2020-12-02 17:16:33', '2020-12-02 17:16:33');
INSERT INTO `cs_cluster` VALUES (701, 'Spark', 'spark', '192.168.0.44:8080', '[{\"value\":\"Spark\",\"status\":true}]', '{\"webUI\":\"192.168.0.44:8080\",\"ip\":\"192.168.0.44\",\"sparkUrl\":\"192.168.0.44:8080\"}', 0, '2020-12-01 14:55:25', '2020-11-06 20:53:26');
INSERT INTO `cs_cluster` VALUES (707, 'Nacos', 'nacos', '192.168.0.45:8848', '[{\"value\":\"Nacos\",\"status\":true}]', '{\"nacosUrl\":\"192.168.0.45:8848\",\"webUI\":\"192.168.0.45:8848/nacos\"}', 0, '2020-12-01 14:55:25', '2020-11-06 20:54:07');
INSERT INTO `cs_cluster` VALUES (708, 'Ignite', 'ignite', '192.168.5.135', '[{\"value\":\"Ignite\",\"status\":true}]', '{\"igniteUrl\":\"192.168.5.135\",\"ip\":\"192.168.5.135\"}', 0, '2020-12-01 14:55:25', '2020-08-20 20:40:06');
INSERT INTO `cs_cluster` VALUES (710, 'cindy', 'cindy', '10.10.1.81:8000', '[{\"value\":\"****￥￥￥写什么好呢\",\"status\":true},{\"value\":\"***\",\"status\":true}]', NULL, 1, '2020-12-10 15:50:23', '2020-12-10 15:50:23');

-- ----------------------------
-- Table structure for cs_cluster_instance
-- ----------------------------
DROP TABLE IF EXISTS `cs_cluster_instance`;
CREATE TABLE `cs_cluster_instance`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cluster_id` int(11) NULL DEFAULT NULL,
  `server_id` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT ' 0未运行 / 1运行中 /2运行错误',
  `status_update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 780 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_cluster_instance
-- ----------------------------
INSERT INTO `cs_cluster_instance` VALUES (393, 'Hive metastore', 597, 124, '0', '2019-10-18 10:20:24', '2020-12-01 14:55:25', '2018-06-14 10:49:27');
INSERT INTO `cs_cluster_instance` VALUES (401, 'SecondaryNameNode', 599, 122, '0', '2019-10-18 10:20:24', '2020-12-01 14:55:25', '2018-06-14 13:58:55');
INSERT INTO `cs_cluster_instance` VALUES (404, 'DataNode', 599, 121, '0', '2019-10-18 10:20:24', '2020-12-01 14:55:25', '2018-06-14 13:58:56');
INSERT INTO `cs_cluster_instance` VALUES (417, 'NameNode', 599, 121, '0', '2019-10-18 10:20:24', '2020-12-01 14:55:25', '2018-06-14 13:58:58');
INSERT INTO `cs_cluster_instance` VALUES (418, 'Hive hiveserver2', 597, 124, '0', '2019-10-18 10:20:24', '2020-12-01 14:55:25', '2018-06-14 13:05:42');
INSERT INTO `cs_cluster_instance` VALUES (510, 'Cluster_Server', 601, 122, '0', '2019-10-18 10:20:24', '2020-12-01 14:55:25', '2019-02-15 09:26:29');
INSERT INTO `cs_cluster_instance` VALUES (511, 'Kafka_Server', 601, 122, '0', '2019-10-18 10:20:24', '2020-12-01 14:55:25', '2019-02-15 09:26:38');
INSERT INTO `cs_cluster_instance` VALUES (527, 'DataNode', 599, 127, '0', '2019-10-18 10:20:24', '2020-12-01 14:55:25', '2019-04-01 17:14:28');
INSERT INTO `cs_cluster_instance` VALUES (669, 'DataNode', 599, 140, '0', '2020-02-25 11:21:26', '2020-12-01 14:55:25', '2020-02-25 11:21:26');
INSERT INTO `cs_cluster_instance` VALUES (689, 'DataNode', 599, 152, '0', '2020-06-24 13:58:00', '2020-12-01 14:55:25', '2020-06-24 13:58:00');
INSERT INTO `cs_cluster_instance` VALUES (693, 'NameNode', 599, 152, '0', '2020-07-13 18:22:44', '2020-12-01 14:55:25', '2020-07-13 18:22:44');
INSERT INTO `cs_cluster_instance` VALUES (704, 'Spark', 701, 122, '0', '2020-07-23 08:59:41', '2020-12-01 14:55:25', '2020-07-23 08:59:41');
INSERT INTO `cs_cluster_instance` VALUES (707, 'Spark', 701, 151, '0', '2020-08-07 13:41:15', '2020-12-01 14:55:25', '2020-08-07 13:41:15');
INSERT INTO `cs_cluster_instance` VALUES (708, 'Nacos', 702, 150, '0', '2020-08-07 13:41:15', '2020-12-01 14:55:25', '2020-08-07 13:41:15');
INSERT INTO `cs_cluster_instance` VALUES (733, 's', 711, 121, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (734, 's', 711, 122, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (735, 's', 711, 124, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (736, 's', 711, 125, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (737, 's', 711, 126, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (738, 's', 711, 144, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (739, 's', 711, 148, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (740, 's', 711, 150, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (741, 's', 711, 149, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (742, 's', 711, 147, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (743, 's', 711, 154, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (744, 's', 711, 153, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (745, 's', 711, 152, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (746, 's', 711, 151, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (747, 's', 711, 127, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (748, 's', 711, 128, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (749, 's', 711, 139, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (750, 's', 711, 140, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (751, 's', 711, 141, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (752, 's', 711, 138, '0', '2020-09-06 11:05:33', '2020-12-01 14:55:25', '2020-09-06 11:05:33');
INSERT INTO `cs_cluster_instance` VALUES (770, 'Kafka', 700, 1, '0', '2020-12-01 20:30:44', '2020-12-01 20:30:44', '2020-12-01 20:30:44');
INSERT INTO `cs_cluster_instance` VALUES (771, 'Kafka', 700, 151, '0', '2020-12-01 20:31:00', '2020-12-01 20:31:00', '2020-12-01 20:31:00');
INSERT INTO `cs_cluster_instance` VALUES (774, 'Hive metastore', 597, 1, '0', '2020-12-02 08:52:11', '2020-12-02 08:52:11', '2020-12-02 08:52:11');
INSERT INTO `cs_cluster_instance` VALUES (776, 'Hive metastore', 597, 121, '0', '2020-12-10 15:43:24', '2020-12-10 15:43:24', '2020-12-10 15:43:24');
INSERT INTO `cs_cluster_instance` VALUES (777, 'Hive metastore', 597, 159, '0', '2020-12-10 15:43:33', '2020-12-10 15:43:33', '2020-12-10 15:43:33');
INSERT INTO `cs_cluster_instance` VALUES (778, '****￥￥￥写什么好呢', 710, 1, '0', '2020-12-10 15:50:54', '2020-12-10 15:50:54', '2020-12-10 15:50:54');

-- ----------------------------
-- Table structure for cs_data_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `cs_data_dictionary`;
CREATE TABLE `cs_data_dictionary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_id` int(11) NOT NULL COMMENT '为null时为目录，目录无code;不为null为数据字典',
  `code` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1:列表;2:下拉树',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_data_dictionary_list
-- ----------------------------
DROP TABLE IF EXISTS `cs_data_dictionary_list`;
CREATE TABLE `cs_data_dictionary_list`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_dictionary_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_data_dictionary_tree
-- ----------------------------
DROP TABLE IF EXISTS `cs_data_dictionary_tree`;
CREATE TABLE `cs_data_dictionary_tree`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_dictionary_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `p_id` int(11) NOT NULL DEFAULT 0,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_db
-- ----------------------------
DROP TABLE IF EXISTS `cs_db`;
CREATE TABLE `cs_db`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `code` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据库类型。\r\n01：mysql\r\n08：oracle\r\n10：impala\r\n11：sqlserver\r\n12：postgresql\r\n14：influxdb',
  `cluster_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `db_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_way` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `origin_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据源类型（1采集2推送）',
  `schema_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '命名空间约束名',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_department
-- ----------------------------
DROP TABLE IF EXISTS `cs_department`;
CREATE TABLE `cs_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dp_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源中心部门id',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_file
-- ----------------------------
DROP TABLE IF EXISTS `cs_file`;
CREATE TABLE `cs_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department_id` int(11) NULL DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `type_code` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version_des` varchar(125) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_way` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `origin_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据源类型（1采集2推送）',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_group
-- ----------------------------
DROP TABLE IF EXISTS `cs_group`;
CREATE TABLE `cs_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` int(10) NULL DEFAULT NULL COMMENT '创建项目的userId',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_group_user
-- ----------------------------
DROP TABLE IF EXISTS `cs_group_user`;
CREATE TABLE `cs_group_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  `creator` int(10) NULL DEFAULT NULL COMMENT '创建项目的userId',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_lib
-- ----------------------------
DROP TABLE IF EXISTS `cs_lib`;
CREATE TABLE `cs_lib`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_lib
-- ----------------------------
INSERT INTO `cs_lib` VALUES (55, 'clusterShell.sh', '/windows2linux_Cluster', '1', '2020-12-01 14:55:26', 'script', '2018-05-08 10:30:18');
INSERT INTO `cs_lib` VALUES (56, 'ETL-Spark-Plugin.jar', '/etl/spark', '1', '2020-12-01 14:55:26', 'spark', '2018-05-08 14:40:55');

-- ----------------------------
-- Table structure for cs_livy
-- ----------------------------
DROP TABLE IF EXISTS `cs_livy`;
CREATE TABLE `cs_livy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `type` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'java \\python',
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版本号',
  `describ` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `fileName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'File containing the application to execute',
  `jsonParam` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '参数',
  `batchId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT 'session id',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `start_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_menu
-- ----------------------------
DROP TABLE IF EXISTS `cs_menu`;
CREATE TABLE `cs_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `platform_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `operation` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index`(`operation`, `parent_id`, `level`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1088 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_menu
-- ----------------------------
INSERT INTO `cs_menu` VALUES (-1, 0, 'src/assets/001', 'appIndex', '数据中台', '01', -1, NULL, '2020-12-01 14:55:26', '2020-02-26 13:45:47');
INSERT INTO `cs_menu` VALUES (6, -1, 'src/assets/img/index/6.png', 'appIndex.task', '任务调度', '01', 12, '17', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (7, -1, 'src/assets/img/index/console.png', 'appIndex.console', '平台运维', '01', 5, '6', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (9, 7, 'src/assets/img/index/icon/server.png', 'appIndex.console.serverManagement', '服务器管理', '01', 3, '', '2020-12-01 14:55:26', '2020-03-25 09:45:48');
INSERT INTO `cs_menu` VALUES (10, 7, 'src/assets/img/index/icon/resourceBundle.png', 'appIndex.console.resourceManagement', '资源包管理', '01', 4, '', '2020-12-01 14:55:26', '2020-03-25 09:46:08');
INSERT INTO `cs_menu` VALUES (11, 7, 'src/assets/img/index/icon/serviceDeployment.png', 'appIndex.console.serviceDeployment', '服务部署', '01', 5, '', '2020-12-01 14:55:26', '2020-07-21 09:40:37');
INSERT INTO `cs_menu` VALUES (13, 402, 'src/assets/img/index/menu/console/1.png', 'appIndex.console.userManagement', '用户管理', '01', 1, '', '2020-12-01 14:55:26', '2020-02-26 13:13:57');
INSERT INTO `cs_menu` VALUES (14, 402, 'src/assets/img/index/menu/console/2.png', 'appIndex.console.roleManagement', '角色管理', '01', 2, '', '2020-12-01 14:55:26', '2020-02-26 13:14:00');
INSERT INTO `cs_menu` VALUES (15, 403, 'src/assets/img/index/menu/console/3.png', 'appIndex.console.menuManagement', '菜单管理', '01', 7, '', '2020-12-01 14:55:26', '2020-02-26 13:16:15');
INSERT INTO `cs_menu` VALUES (22, 402, 'src/assets/img/index/menu/console/4.png', 'appIndex.console.permissionManagement', '权限管理', '01', 8, '', '2020-12-01 14:55:26', '2020-09-23 16:37:22');
INSERT INTO `cs_menu` VALUES (170, -1, 'src/assets/img/index/menu/dataAsset/operator.png', 'appIndex.operator', '数据授权', '01', 17, '3', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (175, 170, 'src/assets/img/index/icon/resourcesApproval.png', 'appIndex.operator', '资源审批', '01', 4, '', '2020-12-01 14:55:26', '2020-03-21 17:11:07');
INSERT INTO `cs_menu` VALUES (178, 170, 'src/assets/img/index/menu/dataAsset/operatorCenter.png', 'appIndex.operator', '资源中心', '01', 2, '', '2020-12-01 14:55:26', '2020-02-26 13:16:07');
INSERT INTO `cs_menu` VALUES (229, 175, 'src/assets/001', 'appIndex.operator.approvalOriginal', '原始数据库', '01', 1, '', '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (230, 178, 'src/assets/001', 'appIndex.operator.originalData', '原始数据库', '01', 1, '', '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (239, -1, 'src/assets/img/index/9.png', 'appIndex.dg', '数据采集', '01', 4, '2', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (240, 239, 'src/assets/img/index/icon/datafill.png', 'appIndex.dg.itemManager', '数据填报', '01', 4, '', '2020-12-01 14:55:26', '2020-05-08 19:10:10');
INSERT INTO `cs_menu` VALUES (255, 175, 'src/assets/001', 'appIndex.operator.approvalTheme', '主题数据库', '01', 3, '', '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (277, 7, 'src/assets/img/index/icon/platform.png', 'appIndex.console', '平台设置', '01', 7, '', '2020-12-01 14:55:26', '2020-03-25 10:04:43');
INSERT INTO `cs_menu` VALUES (278, 277, 'src/assets/001', 'appIndex.console.preferences', '系统设置', '01', 278, '', '2020-12-01 14:55:26', '2020-02-26 13:13:56');
INSERT INTO `cs_menu` VALUES (279, 277, 'src/assets/001', 'appIndex.console.cluster', '集群设置', '01', 279, '', '2020-12-01 14:55:26', '2020-02-26 13:13:58');
INSERT INTO `cs_menu` VALUES (319, 6, 'src/assets/img/index/icon/layout.png', 'appIndex.task.taskEtl', '任务配置', '01', 3, '', '2020-12-01 14:55:26', '2020-04-04 11:00:04');
INSERT INTO `cs_menu` VALUES (331, 178, 'src/assets/001', 'appIndex.operator.themeData', '主题数据库', '01', 3, '', '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (332, 178, 'src/assets/001', 'appIndex.operator.mainData', '资源数据库', '01', 2, '', '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (336, 277, 'src/assets/001', 'appIndex.console.initSet', '初始设置', '01', 336, '', '2020-12-01 14:55:26', '2020-02-26 13:11:21');
INSERT INTO `cs_menu` VALUES (365, 239, 'src/assets/img/index/icon/collectLogs.png', 'appIndex.dg.dgTaskManage', '采集日志', '01', 5, '', '2020-12-01 14:55:26', '2020-05-08 19:10:31');
INSERT INTO `cs_menu` VALUES (367, 769, 'src/assets/001', 'appIndex.dg.itemManagerDb', '数据库', '01', 367, '', '2020-12-01 14:55:26', '2020-02-26 13:11:26');
INSERT INTO `cs_menu` VALUES (368, 769, 'src/assets/001', 'appIndex.dg.itemManagerFile', '文件数据', '01', 368, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (369, 365, 'src/assets/001', 'appIndex.dg.taskManageDb', '数据库', '01', 1, NULL, '2020-12-01 14:55:26', '2019-11-22 14:41:46');
INSERT INTO `cs_menu` VALUES (370, 365, 'src/assets/001', 'appIndex.dg.taskManageFile', '文件数据', '01', 2, NULL, '2020-12-01 14:55:26', '2019-11-22 14:41:46');
INSERT INTO `cs_menu` VALUES (385, 403, 'src/assets/img/index/menu/dg/4.png', 'appIndex.console.logCheck', '日志查看', '01', 10, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (392, -1, 'src/assets/img/index/cluster.png', 'appIndex.cluster', '集群监控', '01', 6, '7', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (396, 6, 'src/assets/img/index/icon/taskRecord.png', 'appIndex.task.taskLog', '任务日志', '01', 5, NULL, '2020-12-01 14:55:26', '2020-05-15 11:36:46');
INSERT INTO `cs_menu` VALUES (399, 396, '001', 'appIndex.task.etlLog', '任务配置', '01', 1, NULL, '2020-12-01 14:55:26', '2020-04-04 11:00:22');
INSERT INTO `cs_menu` VALUES (402, 7, 'src/assets/img/index/icon/userCenter.png', 'appIndex.console.user', '用户中心', '01', 1, '', '2020-12-01 14:55:26', '2020-03-25 09:44:59');
INSERT INTO `cs_menu` VALUES (403, 7, 'src/assets/img/index/icon/system.png', 'appIndex.console.systemManage', '系统管理', '01', 6, '', '2020-12-01 14:55:26', '2020-03-25 10:04:25');
INSERT INTO `cs_menu` VALUES (404, 7, 'src/assets/img/index/menu/dg/3.png', 'appIndex.console.baseApi', '资源接口', '01', 8, '', '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (424, 175, 'src/assets/001', 'appIndex.operator.approvalMain', '资源数据库', '01', 2, '', '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (428, 6, 'src/assets/img/index/icon/dataExport.png', 'appIndex.task.taskExport', '数据导出', '01', 4, NULL, '2020-12-01 14:55:26', '2020-05-15 11:36:32');
INSERT INTO `cs_menu` VALUES (429, 428, '001', 'appIndex.task.taskExportDb', '表数据', '01', 429, NULL, '2020-12-01 14:55:26', '2020-04-04 11:01:32');
INSERT INTO `cs_menu` VALUES (430, 428, '001', 'appIndex.task.taskExportFile', '文件数据', '01', 430, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (444, 396, '001', 'appIndex.task.ExpeortDbLog', '表数据', '01', 6, NULL, '2020-12-01 14:55:26', '2020-04-04 11:03:00');
INSERT INTO `cs_menu` VALUES (445, 396, '001', 'appIndex.task.ExpeorFileLog', '文件数据', '01', 7, NULL, '2020-12-01 14:55:26', '2020-04-04 11:03:14');
INSERT INTO `cs_menu` VALUES (459, 240, 'src/assets/001', 'appIndex.dg.itemFilling', '原始数据填报', '01', 459, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (461, 175, 'src/assets/001', 'appIndex.operator.approvalFilling', '填报审批', '01', 8, NULL, '2020-12-01 14:55:26', '2020-05-14 15:05:30');
INSERT INTO `cs_menu` VALUES (478, -1, 'src/assets/img/index/4.png', 'appIndex.fileManage', '文件存储', '01', 2, '12', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (479, 478, 'src/assets/img/index/menu/fileManage/01.png', 'appIndex.fileManage.cataLogManage', '目录管理', '01', 479, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (480, 478, 'src/assets/img/index/menu/fileManage/02.png', 'appIndex.fileManage.volumeManage', '卷管理', '01', 480, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (481, 478, 'src/assets/img/index/menu/fileManage/03.png', 'appIndex.fileManage.limitManage', '配额管理', '01', 481, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (482, 478, 'src/assets/img/index/menu/fileManage/04.png', 'appIndex.fileManage.shareManage', '共享管理', '01', 482, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (491, -1, 'dataplan.png', '/dataPlan', '数据规划', '01', 8, '1', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (493, -1, 'masterData.png', '/masterData', '数据处理', '01', 11, '1', '2020-12-01 14:55:26', '2020-10-29 15:38:54');
INSERT INTO `cs_menu` VALUES (494, -1, 'dataService.png', '/dataService', '数据服务', '01', 9, '1', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (495, -1, 'baseData.png', '/system', '资源管理', '01', 10, '1', '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (497, -1, 'dataBrowing.png', '/dataBrowsers', '数据查询', '01', 7, '1', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (498, 491, 'datadefine.png', '', '数据定义', '01', 3, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (519, 493, 'dataValidate.png', '/masterData/dataCheckRules', '入库规则', '01', 519, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (526, 494, 'serviceInterface.png', '/dataService/inteface', '服务接口配置', '01', 526, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (527, 495, 'dictionary.png', '/system/dataDictionary', '字典配置', '01', 1, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (529, 495, 'systemManage.png', '/system/systemParameter', '系统参数', '01', 4, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (530, 495, 'baseDataManage.png', '/system/basetableManagement', '资源表管理', '01', 2, NULL, '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (532, 497, 'dataBrowing.png', '00', '过程数据查询', '01', 532, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (533, 497, 'queryData.png', '/dataBrowsers/dataQuery', '资源数据查询', '01', 533, NULL, '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (534, 497, 'dataBrowing.png', '/dataBrowsers/dataBrowing', '资源数据查询', '01', 534, NULL, '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (535, 532, '00', '/dataBrowsers/dataBrowser/dataEtlBefore', '清洗前', '01', 535, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (536, 532, '00', '/dataBrowsers/dataBrowser/dataEtlAfter', '清洗后', '01', 536, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (571, 239, 'src/assets/img/index/menu/dataAsset/operationHome.png', 'appIndex.dg.collectionHome', '运行监控', '01', 1, NULL, '2020-12-01 14:55:26', '2020-03-21 12:04:00');
INSERT INTO `cs_menu` VALUES (574, 170, 'src/assets/img/index/menu/dataAsset/operationHome.png', 'appIndex.operator.operationHome', '运行监控', '01', 1, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (576, 6, 'src/assets/img/index/menu/dataAsset/operationHome.png', 'appIndex.task.taskHome', '运行监控', '01', 1, NULL, '2020-12-01 14:55:26', '2020-03-21 12:15:36');
INSERT INTO `cs_menu` VALUES (586, 491, 'datadefine.png', '/dataPlan/dataStandard', '数据标准', '01', 1, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (587, 491, 'bussinessRelatipn.png', '/dataPlan/operationSystem', '系统注册', '01', 2, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (588, 498, '01', '/dataPlan/dataDefiniton/masterDataDefinition', '资源数据定义', '01', 588, NULL, '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (589, 491, 'taskScheduling.png', '/dataPlan/dataConfig', '关联关系', '01', 10, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (591, 498, '01', '/dataPlan/dataDefiniton/dataPermission', '授权管理', '01', 591, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (592, 498, '01', '/dataPlan/dataDefiniton/viewConfig', '视图配置', '01', 592, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (594, 597, 'src/assets/img/index/menu/dataManage/8.png', 'appIndex.dataSearchManage', '搜索配置', '01', 594, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (595, 594, '01', 'appIndex.dataSearchManage.dataList', '搜索配置', '01', 595, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (596, 594, 'src/assets/img/index/menu/dataManage/10.png', 'appIndex.dataSearchManage.dataSearchModule', '数据搜索模型', '01', 596, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (597, 594, '01', 'appIndex.dataSearchManage.storageManage', '存储管理', '01', 597, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (606, 493, 'dataValidate.png', '/masterData/dataPushRules', '推送规则', '01', 606, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (607, 493, 'dataApproval.png', '/masterData/dataHandle', '数据加工', '01', 607, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (610, 494, 'serviceInterface.png', '/dataService/journal', '接口日志', '01', 610, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (611, 497, 'dataBrowing.png', '/dataBrowsers/target', '目标数据查询', '01', 611, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (617, 770, 'src/assets/001', 'appIndex.dg.itemManagerMsg', '消息监听', '01', 617, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (619, 495, 'baseDataManage.png', '/system/customFun', '自定义函数', '01', 619, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (621, 493, 'dataValidate.png', '/masterData/codeRule', '编码规则', '01', 621, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (668, -1, 'dataFilling.png', '/dataFilling', '数据填报', '01', 13, '1', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (669, 668, 'dataFilling.png', '/dataFilling/dataModify', '数据录入', '01', 669, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (670, 668, 'dataFilling.png', '/dataFilling/dataModify', '资源数据查询', '01', 670, NULL, '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (671, 668, 'dataFilling.png', '/dataFilling/dataDownload', '数据下载', '01', 671, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (675, 365, 'src/assets/001', 'appIndex.dg.dGcollectLogs', '原始数据填报', '01', 4, NULL, '2020-12-01 14:55:26', '2019-11-22 14:41:46');
INSERT INTO `cs_menu` VALUES (680, -1, 'src/assets/img/index/menu/dataAsset/dataPlanning.png', 'appIndex.dataPlanning', '数据规划', '01', 14, '3', '2020-12-01 19:54:46', '2020-12-01 19:54:46');
INSERT INTO `cs_menu` VALUES (681, -1, 'src/assets/img/index/menu/dataAsset/datalife.png', 'appIndex.datalife', '生命周期', '01', 18, '3', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (682, -1, 'src/assets/img/index/menu/dataAsset/serverInterface.png', 'appIndex.serverInterface', '数据接口', '01', 19, '3', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (683, 681, 'src/assets/img/index/icon/historyData.png', 'appIndex.datalife.sourceData', '历史数据', '01', 683, NULL, '2020-12-01 14:55:26', '2020-05-11 13:37:29');
INSERT INTO `cs_menu` VALUES (684, 683, 'src/assets/img/index/menu/operator/4.png', 'appIndex.datalife.sourceHistoryData', '原始数据库', '01', 684, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (685, 680, 'src/assets/img/index/menu/dataAsset/dataPlanDirtionary.png', 'appIndex.dataPlanning.dataDictionary', '标准定义', '01', 1, '', '2020-12-01 14:55:26', '2020-03-20 11:35:51');
INSERT INTO `cs_menu` VALUES (686, 680, 'src/assets/img/index/icon/template.png', 'appIndex.dataPlanning.sourceMetaData', '交换模板', '01', 3, NULL, '2020-12-01 14:55:26', '2020-07-20 16:45:20');
INSERT INTO `cs_menu` VALUES (687, 680, 'src/assets/img/index/icon/resourcesCatalogue.png', 'appIndex.dataPlanning.dataContents', '行业数据', '01', 4, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (688, 680, 'src/assets/img/index/menu/dataAsset/dataPlanCode.png', 'appIndex.dataPlanning.dataAutoContents', '数据编目', '01', 5, NULL, '2020-12-01 14:55:26', '2020-03-20 11:35:51');
INSERT INTO `cs_menu` VALUES (692, 687, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.sourceData', '原始数据库', '01', 692, NULL, '2020-12-01 14:55:26', '2020-03-15 09:00:39');
INSERT INTO `cs_menu` VALUES (693, 687, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.masterData', '资源数据库', '01', 693, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (694, 687, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.topicData', '主题数据库', '01', 694, NULL, '2020-12-01 14:55:26', '2020-03-15 09:00:31');
INSERT INTO `cs_menu` VALUES (697, 990, 'src/assets/img/index/icom/sourceData.png', 'appIndex.serverInterface.sourceDataInterface', '原始数据库', '01', 697, NULL, '2020-12-01 14:55:26', '2020-05-15 11:02:42');
INSERT INTO `cs_menu` VALUES (698, 990, 'src/assets/img/index/icon/masterData.png', 'appIndex.serverInterface.masterDataInterface', '资源数据库', '01', 698, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (699, 990, 'src/assets/img/index/icon/themData.png', 'appIndex.serverInterface.topicDataInterface', '主题数据库', '01', 699, NULL, '2020-12-01 14:55:26', '2020-05-15 11:02:54');
INSERT INTO `cs_menu` VALUES (701, 681, 'src/assets/img/index/menu/dataAsset/datalifeTheme.png', 'appIndex.datalife.thematicData', '归档数据', '01', 701, NULL, '2020-12-01 14:55:26', '2020-03-26 11:04:04');
INSERT INTO `cs_menu` VALUES (702, 683, 'src/assets/img/index/menu/operator/4.png', 'appIndex.datalife.masterHistoryData', '资源数据库', '01', 702, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (703, 701, 'src/assets/img/index/menu/operator/4.png', 'appIndex.datalife.sourceArchiveData', '原始数据库', '01', 703, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (705, 685, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.fieldStandard', '字段标准', '01', 2, NULL, '2020-12-01 14:55:26', '2019-11-21 15:20:19');
INSERT INTO `cs_menu` VALUES (706, 685, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.typeStandard', '分类标准', '01', 3, NULL, '2020-12-01 14:55:26', '2020-10-25 16:07:22');
INSERT INTO `cs_menu` VALUES (709, -1, 'src/assets/img/index/5.png', 'appIndex.etl', '数据清洗', '01', 20, '21', '2020-12-01 14:55:26', '2020-10-29 15:37:53');
INSERT INTO `cs_menu` VALUES (710, 709, 'src/assets/img/index/icon/fuse.png', 'appIndex.etl.processingFlow', '离线数据处理', '01', 2, NULL, '2020-12-01 14:55:26', '2020-07-23 10:01:44');
INSERT INTO `cs_menu` VALUES (711, 709, 'src/assets/img/index/icon/algorithm.png', 'appIndex.etl', '算法管理', '01', 4, NULL, '2020-12-01 14:55:26', '2020-07-23 10:01:44');
INSERT INTO `cs_menu` VALUES (712, 709, 'src/assets/img/index/icon/processLogs.png', 'appIndex.etl.etlLogs', '流程日志', '01', 6, NULL, '2020-12-01 14:55:26', '2020-07-23 10:01:44');
INSERT INTO `cs_menu` VALUES (713, 709, 'src/assets/img/index/icon/Interface.png', 'appIndex.etl.interfaceEtl', '对外接口', '01', 5, NULL, '2020-12-01 14:55:26', '2020-07-23 10:01:44');
INSERT INTO `cs_menu` VALUES (714, 709, 'src/assets/img/index/menu/dataAsset/operationHome.png', 'appIndex.etl.flowHome', '运行监控', '01', 1, NULL, '2020-12-01 14:55:26', '2020-07-23 10:01:44');
INSERT INTO `cs_menu` VALUES (719, 711, 'src/assets/001', 'appIndex.etl.pythonCom', 'Python算法', '01', 719, NULL, '2020-12-01 14:55:26', '2020-02-04 12:28:58');
INSERT INTO `cs_menu` VALUES (723, -1, 'src/assets/img/index/dataExcavate.png', 'appIndex.developHome', '数据挖掘', '01', 21, '21', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (724, 178, 'src/assets/001', 'appIndex.operator.dataSearchManage', '数据搜索', '01', 8, NULL, '2020-12-01 14:55:26', '2020-05-15 13:13:10');
INSERT INTO `cs_menu` VALUES (728, 687, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.gisData', 'GIS数据', '01', 728, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (730, 178, 'src/assets/001', 'appIndex.operator.dataProvide', '原始数据填报', '01', 9, NULL, '2020-12-01 14:55:26', '2020-05-15 13:13:10');
INSERT INTO `cs_menu` VALUES (744, 723, 'src/assets/img/index/icon/import.png', 'appIndex.developHome.dataTmport', '数据源导入', '01', 744, NULL, '2020-12-01 14:55:26', '2020-03-24 16:06:50');
INSERT INTO `cs_menu` VALUES (745, 723, 'src/assets/img/index/icon/ready.png', 'appIndex.developHome.dataPreparation', '数据准备', '01', 745, NULL, '2020-12-01 14:55:26', '2020-03-24 15:53:29');
INSERT INTO `cs_menu` VALUES (746, 745, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.dataPreparation.basicOperation', '资源操作', '01', 746, NULL, '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (747, 745, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.dataPreparation.sqlProcess', 'SQL处理', '01', 747, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (748, 723, 'src/assets/img/index/icon/development.png', 'appIndex.developHome.algorithmDevelopment', '算法开发', '01', 748, NULL, '2020-12-01 14:55:26', '2020-03-24 16:10:31');
INSERT INTO `cs_menu` VALUES (749, 748, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmDevelopment.sqlProgram', 'SQL编程', '01', 749, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (750, 748, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmDevelopment.javaProgram', 'Java编程', '01', 750, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (751, 748, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmDevelopment.pythonProgram', 'Python编程', '01', 751, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (752, 748, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmDevelopment.rProgram', 'R编程', '01', 752, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (753, 723, 'src/assets/img/index/icon/customized.png', 'appIndex.developHome.algorithmTrain', '算法训练', '01', 753, NULL, '2020-12-01 14:55:26', '2020-03-24 15:52:56');
INSERT INTO `cs_menu` VALUES (754, 753, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmTrain.train', '训练', '01', 754, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (755, 753, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmTrain.test', '测试', '01', 755, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (756, 753, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmTrain.reason', '推理', '01', 756, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (757, 753, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmTrain.algorithmLog', '算法训练日志', '01', 757, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (758, 723, 'src/assets/img/index/icon/flow.png', 'appIndex.developHome.processCustomized', '流程定制', '01', 758, NULL, '2020-12-01 14:55:26', '2020-03-24 16:10:57');
INSERT INTO `cs_menu` VALUES (760, 758, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.processCustomized.customized', '流程定制', '01', 760, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (761, 758, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.processCustomized.processLog', '流程运行日志', '01', 761, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (762, 723, 'src/assets/img/index/icon/administration.png', 'appIndex.developHome.algorithmManagement', '算法包管理', '01', 762, NULL, '2020-12-01 14:55:26', '2020-03-24 16:16:25');
INSERT INTO `cs_menu` VALUES (763, 762, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmManagement.featureEngine', '特征工程', '01', 763, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (764, 762, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmManagement.processStatisticalAnalysis', '统计分析', '01', 764, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (765, 762, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmManagement.machineLearn', '机器学习', '01', 765, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (766, 762, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmManagement.deepLearn', '深度学习', '01', 766, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (767, 762, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmManagement.automaticLearn', '自动学习', '01', 767, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (768, 762, 'src/assets/img/index/menu/receive/3.png', 'appIndex.developHome.algorithmManagement.customAlgorithms', '自定义算法', '01', 768, NULL, '2020-12-01 14:55:26', '2019-10-24 13:35:07');
INSERT INTO `cs_menu` VALUES (769, 239, 'src/assets/img/index/icon/offlineData.png', 'appIndex.dg', '离线数据采集', '01', 2, NULL, '2020-12-01 14:55:26', '2020-05-08 19:07:31');
INSERT INTO `cs_menu` VALUES (770, 239, 'src/assets/img/index/icon/onlineData.png', 'appIndex.dg', '实时数据采集', '01', 3, NULL, '2020-12-01 14:55:26', '2020-03-21 13:10:12');
INSERT INTO `cs_menu` VALUES (771, 240, 'src/assets/001', 'appIndex.dg.masterDataReport', '资源数据填报', '01', 771, NULL, '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (772, 365, 'src/assets/001', 'appIndex.dg.dgMasterDataReport', '资源数据填报', '01', 5, NULL, '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (773, 178, 'src/assets/001', 'appIndex.operator.operatorMasterDataReport', '资源数据填报', '01', 10, NULL, '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (776, 770, 'src/assets/001', 'appIndex.dg.networkMonitor', 'TCP监听', '01', 776, NULL, '2020-12-01 14:55:26', '2020-06-12 19:56:05');
INSERT INTO `cs_menu` VALUES (815, 680, 'src/assets/img/index/menu/dataAsset/dataPlanCatalog.png', 'appIndex.dataPlanning.metaManagement', '元数据查询', '01', 6, NULL, '2020-12-01 14:55:26', '2020-03-20 11:35:51');
INSERT INTO `cs_menu` VALUES (816, 815, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.sourceDataView', '原始库', '01', 816, NULL, '2020-12-01 14:55:26', '2020-03-15 08:59:09');
INSERT INTO `cs_menu` VALUES (817, 815, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.masterDataView', '资源数据库', '01', 817, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (818, 815, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.topicDataView', '主题数据库', '01', 818, NULL, '2020-12-01 14:55:26', '2020-03-15 08:59:44');
INSERT INTO `cs_menu` VALUES (819, 685, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.namingStandard', '命名标准', '01', 1, NULL, '2020-12-01 14:55:26', '2019-11-20 09:52:03');
INSERT INTO `cs_menu` VALUES (820, 769, 'src/assets/001', 'appIndex.dg.serviceApi', '服务接口', '01', 820, NULL, '2020-12-01 14:55:26', '2020-06-12 19:55:50');
INSERT INTO `cs_menu` VALUES (822, 685, ' src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.typeStandard', '编码标准', '01', 822, NULL, '2020-12-01 14:55:26', '2019-11-21 15:23:08');
INSERT INTO `cs_menu` VALUES (823, 365, 'src/assets/001', 'appIndex.dg.logServiceApi', '服务接口', '01', 3, NULL, '2020-12-01 14:55:26', '2020-06-12 19:55:35');
INSERT INTO `cs_menu` VALUES (826, -1, 'src/assets/img/index/menu/dataAsset/dataPlanning.png', 'appIndex.nodeManagement', '节点管理', '01', 27, '3', '2020-12-01 19:53:41', '2020-12-01 19:53:41');
INSERT INTO `cs_menu` VALUES (827, 826, 'src/assets/img/index/menu/dataAsset/serverInterfacePlatform.png', 'appIndex.nodeManagement.clientManage', '客户端管理', '01', 827, NULL, '2020-12-01 14:55:26', '2019-11-29 14:26:18');
INSERT INTO `cs_menu` VALUES (828, 826, 'src/assets/img/index/menu/dataAsset/serverInterfacePlatform.png', 'appIndex.nodeManagement.nodeSynchro', '节点同步', '01', 828, NULL, '2020-12-01 14:55:26', '2019-11-29 14:28:59');
INSERT INTO `cs_menu` VALUES (829, 828, '11', 'appIndex.nodeManagement.basicData', '原始数据库', '01', 829, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (830, 828, '11', 'appIndex.nodeManagement.masterData', '资源数据库', '01', 830, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (831, 828, '11', 'appIndex.nodeManagement.themeData', '主题数据库', '01', 831, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (832, 826, 'src/assets/img/index/menu/dataAsset/serverInterfacePlatform.png', 'appIndex.nodeManagement.dataAuthorization', '数据授权', '01', 832, NULL, '2020-12-01 14:55:26', '2019-11-29 14:36:14');
INSERT INTO `cs_menu` VALUES (833, 832, '11', 'appIndex.nodeManagement.dataExtraction', '数据提取', '01', 833, NULL, '2020-12-01 14:55:26', '2019-11-29 14:38:20');
INSERT INTO `cs_menu` VALUES (834, 832, '11', 'appIndex.nodeManagement.dataReport', '数据上报', '01', 834, NULL, '2020-12-01 14:55:26', '2019-11-29 14:39:40');
INSERT INTO `cs_menu` VALUES (883, 7, 'src/assets/img/index/icon/projectManager.png', 'appIndex.console.projectManagement', '项目管理', '01', 2, NULL, '2020-12-01 14:55:26', '2020-03-25 09:45:20');
INSERT INTO `cs_menu` VALUES (884, -1, 'src/assets/img/index/4.png', 'appIndex.configurationCenter', '配置中心', '01', 29, '3', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (885, 884, 'src/assets/img/index/menu/dataAsset/operationHome.png', 'appIndex.configurationCenter.consoleHome', '运行监控', '01', 885, NULL, '2020-12-01 14:55:26', '2020-04-03 17:06:48');
INSERT INTO `cs_menu` VALUES (886, 884, 'src/assets/img/index/icon/dataSource.png', 'appIndex.configurationCenter.webSocketService', '数据源配置', '01', 886, NULL, '2020-12-01 14:55:26', '2020-04-03 17:06:40');
INSERT INTO `cs_menu` VALUES (887, 884, 'src/assets/img/index/icon/gather.png', 'appIndex.configurationCenter.clusterManager', '采集项管理', '01', 887, NULL, '2020-12-01 14:55:26', '2020-04-03 17:06:44');
INSERT INTO `cs_menu` VALUES (888, 884, 'src/assets/img/index/icon/matlab.png', 'appIndex.configurationCenter.matlabManager', 'MATLAB服务', '01', 888, NULL, '2020-12-01 14:55:26', '2020-04-08 17:47:58');
INSERT INTO `cs_menu` VALUES (889, 6, 'src/assets/img/index/icon/handle.png', 'appIndex.task.handling', '任务编排', '01', 2, NULL, '2020-12-01 14:55:26', '2020-03-25 09:36:37');
INSERT INTO `cs_menu` VALUES (890, 680, 'src/assets/img/index/icon/tagManager.png', 'appIndex.tagManage.tagDefine', '标签管理', '01', 2, NULL, '2020-12-01 14:55:26', '2020-03-21 16:51:45');
INSERT INTO `cs_menu` VALUES (891, 890, 'src/assets/img/index/menu/dataAsset/operatorApproval.png', 'appIndex.tagManage.tagDefine', '标签定义', '01', 891, NULL, '2020-12-01 14:55:26', '2020-03-20 11:32:37');
INSERT INTO `cs_menu` VALUES (892, 890, 'src/assets/img/index/menu/dataAsset/operatorApproval.png', 'appIndex.tagManage.tagSearch', '标签查询', '01', 892, NULL, '2020-12-01 14:55:26', '2020-03-20 11:33:16');
INSERT INTO `cs_menu` VALUES (893, -1, 'src/assets/img/index/dataStorage.png', 'appIndex.dataManage', '数据存储', '01', 15, '3', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (894, -1, 'src/assets/img/index/fileStorage.png', 'appIndex.fileManage', '文件存储', '01', 16, '3', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (895, 893, 'src/assets/img/index/menu/dataAsset/operationHome.png', 'appIndex.dataManage.storageHome', '运行监控', '01', 895, NULL, '2020-12-01 14:55:26', '2020-03-21 12:09:15');
INSERT INTO `cs_menu` VALUES (896, 893, 'src/assets/img/index/icon/dataModle.png', 'appIndex.dataManage', '数据模型', '01', 896, NULL, '2020-12-01 14:55:26', '2020-03-21 17:01:29');
INSERT INTO `cs_menu` VALUES (897, 896, 'src/assets/001', 'appIndex.dataManage.resourceDirectoryOri', '原始数据层', '01', 897, NULL, '2020-12-01 14:55:26', '2020-03-21 11:11:34');
INSERT INTO `cs_menu` VALUES (898, 896, 'src/assets/001', 'appIndex.dataManage.resourceDirectoryBas', '资源数据层', '01', 898, NULL, '2020-12-01 14:55:26', '2020-10-30 22:09:09');
INSERT INTO `cs_menu` VALUES (899, 896, 'src/assets/001', 'appIndex.dataManage.resourceDirectoryTheme', '主题数据层', '01', 899, NULL, '2020-12-01 14:55:26', '2020-03-21 11:12:52');
INSERT INTO `cs_menu` VALUES (900, 896, 'src/assets/001', 'appIndex.dataManage.resourceDirectoryAna', '分析数据层', '01', 900, NULL, '2020-12-01 14:55:26', '2020-03-21 11:13:25');
INSERT INTO `cs_menu` VALUES (901, 893, 'src/assets/img/index/icon/storageManager.png', 'appIndex.dataManage.tableStructure', '存储管理', '01', 901, NULL, '2020-12-01 14:55:26', '2020-05-08 17:35:36');
INSERT INTO `cs_menu` VALUES (902, 901, 'src/assets/001', 'appIndex.dataManage.originalTable', '原始数据库', '01', 1, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (903, 901, 'src/assets/001', 'appIndex.dataManage.analyticalTable', '分析数据库', '01', 4, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (904, 901, 'src/assets/001', 'appIndex.dataManage.baseTable', '资源数据库', '01', 2, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (905, 901, 'src/assets/001', 'appIndex.dataManage.themeTable', '主题数据库', '01', 3, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (906, 893, 'src/assets/img/index/icon/searchSetting.png', 'appIndex.dataManage.dataList', '搜索配置', '01', 906, NULL, '2020-12-01 14:55:26', '2020-03-21 17:03:11');
INSERT INTO `cs_menu` VALUES (907, 893, 'src/assets/img/index/icon/dataView.png', 'appIndex.dataManage.dataCheck', '数据浏览', '01', 907, NULL, '2020-12-01 14:55:26', '2020-05-15 11:31:21');
INSERT INTO `cs_menu` VALUES (908, 907, 'src/assets/001', 'appIndex.dataManage.dataCheckOri', '原始数据库', '01', 908, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (909, 907, 'src/assets/001', 'appIndex.dataManage.dataCheckBas', '资源数据库', '01', 909, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (910, 907, 'src/assets/001', 'appIndex.dataManage.dataCheckTheme', '主题数据库', '01', 910, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (911, 907, 'src/assets/001', 'appIndex.dataManage.dataCheckAna', '分析数据库', '01', 911, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (912, 893, 'src/assets/img/index/icon/dataOutput.png', 'appIndex.dataManage.exportDb', '数据导出', '01', 912, NULL, '2020-12-01 14:55:26', '2020-05-15 11:31:48');
INSERT INTO `cs_menu` VALUES (913, 939, 'src/assets/img/index/menu/dataManage/6.png', 'appIndex.fileManage.fileManageResourceDirectoryOri', '原始数据库', '01', 2, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (914, 894, 'src/assets/img/index/menu/dataManage/1.png', 'appIndex.fileManage.originalTable', '存储管理2', '01', 3, NULL, '2020-12-01 14:55:26', '2020-03-27 09:56:47');
INSERT INTO `cs_menu` VALUES (915, 894, 'src/assets/img/index/icon/fileView.png', 'appIndex.fileManage.fileOperation', '文件浏览', '01', 4, NULL, '2020-12-01 14:55:26', '2020-05-15 11:33:06');
INSERT INTO `cs_menu` VALUES (916, 894, 'src/assets/img/index/icon/exportFile.png', 'appIndex.fileManage.exportFile', '文件导出', '01', 5, NULL, '2020-12-01 14:55:26', '2020-05-15 11:33:27');
INSERT INTO `cs_menu` VALUES (917, 894, 'src/assets/img/index/menu/dataAsset/operationHome.png', 'appIndex.fileManage.storageHome', '运行监控', '01', 1, NULL, '2020-12-01 14:55:26', '2020-03-27 09:56:47');
INSERT INTO `cs_menu` VALUES (918, 687, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.analysisData', '分析数据库', '01', 918, NULL, '2020-12-01 14:55:26', '2020-03-23 19:27:50');
INSERT INTO `cs_menu` VALUES (921, 683, 'src/assets/img/index/menu/operator/4.png', 'appIndex.datalife.themeHistoryData', '主题数据库', '01', 921, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (926, 701, 'src/assets/img/index/menu/operator/4.png', 'appIndex.datalife.masterArchiveData', '资源数据库', '01', 926, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (927, 701, 'src/assets/img/index/menu/operator/4.png', 'appIndex.datalife.themeArchiveData', '主题数据库', '01', 927, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (930, 990, 'src/assets/img/index/icon/analysisData.png', 'appIndex.serverInterface.analysisDataInterface', '分析数据库', '01', 930, NULL, '2020-12-01 14:55:26', '2020-05-15 11:02:51');
INSERT INTO `cs_menu` VALUES (931, -1, 'src/assets/img/index/3.png', 'appIndex.algorithmWarehouse', '算法仓库', '01', 30, '57', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (935, 931, 'src/assets/img/index/menu/receive/3.png', 'appIndex.algorithmWarehouse.featureEngine', '特征工程', '01', 935, NULL, '2020-12-01 14:55:26', '2020-04-10 13:25:15');
INSERT INTO `cs_menu` VALUES (936, 931, 'src/assets/img/index/menu/receive/3.png', 'appIndex.algorithmWarehouse.processStatisticalAnalysis', '统计分析', '01', 936, NULL, '2020-12-01 14:55:26', '2020-04-10 13:25:28');
INSERT INTO `cs_menu` VALUES (937, 931, 'src/assets/img/index/menu/receive/3.png', 'appIndex.algorithmWarehouse.machineLearn', '机器学习', '01', 937, NULL, '2020-12-01 14:55:26', '2020-04-10 13:25:41');
INSERT INTO `cs_menu` VALUES (938, 931, 'src/assets/img/index/menu/receive/3.png', 'appIndex.algorithmWarehouse.deepLearn', '深度学习', '01', 938, NULL, '2020-12-01 14:55:26', '2020-04-10 13:25:54');
INSERT INTO `cs_menu` VALUES (939, 894, 'src/assets/img/index/icon/storeManage.png', 'appIndex.fileManage', '存储管理', '01', 2, NULL, '2020-12-01 14:55:26', '2020-05-15 11:32:48');
INSERT INTO `cs_menu` VALUES (940, 939, 'src/assets/img/index/menu/dataManage/6.png', 'appIndex.fileManage.fileManageResourceDirectoryBas', '资源数据库', '01', 940, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (941, 939, 'src/assets/img/index/menu/dataManage/6.png', 'appIndex.fileManage.fileManageResourceDirectoryTheme', '主题数据库', '01', 941, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (942, 939, 'src/assets/img/index/menu/dataManage/6.png', 'appIndex.fileManage.fileManageResourceDirectoryAna', '分析数据库', '01', 942, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (943, 402, 'src/assets/img/index/menu/console/1.png', 'appIndex.console.groupManagement', '分组管理', '01', 943, NULL, '2020-12-01 14:55:26', '2020-04-07 13:59:51');
INSERT INTO `cs_menu` VALUES (944, 931, 'src/assets/img/index/icon/arithmeticManage.png', 'appIndex.algorithmWarehouse', '算法管理', '01', 944, NULL, '2020-12-02 10:00:35', '2020-12-02 10:00:35');
INSERT INTO `cs_menu` VALUES (946, 944, 'src/assets/img/index/menu/receive/3.png', 'appIndex.algorithmWarehouse.sparkUDF', 'sparkUDF', '01', 3, NULL, '2020-12-01 14:55:26', '2020-09-08 10:37:59');
INSERT INTO `cs_menu` VALUES (947, 944, 'src/assets/img/index/menu/receive/3.png', 'appIndex.algorithmWarehouse.cAlgorithmPackages', 'Scala算法', '01', 4, NULL, '2020-12-01 14:55:26', '2020-06-12 19:52:43');
INSERT INTO `cs_menu` VALUES (948, 944, 'src/assets/img/index/menu/receive/3.png', 'appIndex.algorithmWarehouse.matlabAlgorithmPackages', '数据库UDF', '01', 5, NULL, '2020-12-01 14:55:26', '2020-06-12 19:51:08');
INSERT INTO `cs_menu` VALUES (949, 944, 'src/assets/img/index/menu/receive/3.png', 'appIndex.algorithmWarehouse.accessAlgorithmPackages', 'Java算法', '01', 2, NULL, '2020-12-01 14:55:26', '2020-06-12 19:49:16');
INSERT INTO `cs_menu` VALUES (950, -1, 'src/assets/img/index/reportQuery.png', 'appIndex.reportSearch', '数据共享', '01', 28, '3', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (951, 958, 'src/assets/img/index/menu/dataAsset/serverInterfaceData.png', 'appIndex.reportSearch.analysisDataInterface', '分析数据库', '01', 4, NULL, '2020-12-01 14:55:26', '2020-04-15 18:08:53');
INSERT INTO `cs_menu` VALUES (952, 958, 'src/assets/img/index/menu/dataAsset/serverInterfaceData.png', 'appIndex.reportSearch.topicDataInterface', '主题数据库', '01', 3, NULL, '2020-12-01 14:55:26', '2020-04-15 18:08:42');
INSERT INTO `cs_menu` VALUES (953, 958, 'src/assets/img/index/menu/dataAsset/serverInterfaceData.png', 'appIndex.reportSearch.masterDataInterface', '资源数据库', '01', 2, NULL, '2020-12-01 14:55:26', '2020-11-26 10:12:55');
INSERT INTO `cs_menu` VALUES (954, 958, 'src/assets/img/index/menu/dataAsset/serverInterfaceData.png', 'appIndex.reportSearch.sourceDataInterface', '原始数据库', '01', 1, NULL, '2020-12-01 14:55:26', '2020-04-15 18:09:01');
INSERT INTO `cs_menu` VALUES (957, 957, 'src/assets/img/index/menu/dataAsset/serverInterfaceData.png', 'appIndex.reportSearch', '数据同步', '01', 957, NULL, '2020-12-01 14:55:26', '2020-04-15 18:07:47');
INSERT INTO `cs_menu` VALUES (958, 950, 'src/assets/img/index/icon/dataSynchronization.png', 'appIndex.reportSearch.sourceDataInterface', '数据同步', '01', 958, NULL, '2020-12-01 14:55:26', '2020-05-15 11:34:32');
INSERT INTO `cs_menu` VALUES (960, 944, 'src/assets/img/index/menu/receive/3.png', 'appIndex.algorithmWarehouse.daImpalaUDF', '数据处理UDF', '01', 960, NULL, '2020-12-01 14:55:26', '2020-06-12 19:50:51');
INSERT INTO `cs_menu` VALUES (965, 178, 'null', 'appIndex.operator.fileData', '文件数据', '01', 5, NULL, '2020-12-01 14:55:26', '2020-05-15 13:13:10');
INSERT INTO `cs_menu` VALUES (966, 175, 'null', 'appIndex.operator.approvalFileData', '文件数据', '01', 5, NULL, '2020-12-01 14:55:26', '2020-05-14 15:05:30');
INSERT INTO `cs_menu` VALUES (972, -1, '宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽', '宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽', '宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽宽', '01', 31, '60', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (974, 972, '2', '2', '2', '01', 974, NULL, '2020-12-01 14:55:26', '2020-04-26 16:52:33');
INSERT INTO `cs_menu` VALUES (975, 974, '3', '3', '3', '01', 975, NULL, '2020-12-01 14:55:26', '2020-04-26 16:52:39');
INSERT INTO `cs_menu` VALUES (976, 975, '4', '4', '4', '01', 976, NULL, '2020-12-01 14:55:26', '2020-04-26 16:52:45');
INSERT INTO `cs_menu` VALUES (977, 976, '5', '5', '5', '01', 977, NULL, '2020-12-01 14:55:26', '2020-04-26 16:52:52');
INSERT INTO `cs_menu` VALUES (978, 977, '6', '6', '6', '01', 978, NULL, '2020-12-01 14:55:26', '2020-04-26 16:52:58');
INSERT INTO `cs_menu` VALUES (979, 978, '7', '7', '7', '01', 979, NULL, '2020-12-01 14:55:26', '2020-04-26 16:53:06');
INSERT INTO `cs_menu` VALUES (980, 979, '8', '8', '8', '01', 980, NULL, '2020-12-01 14:55:26', '2020-04-26 16:53:12');
INSERT INTO `cs_menu` VALUES (981, 980, '9', '9', '9', '01', 981, NULL, '2020-12-01 14:55:26', '2020-04-26 16:53:18');
INSERT INTO `cs_menu` VALUES (983, 175, 'src/assets/001', 'appIndex.operator.approvalSearch', '数据搜索', '01', 9, NULL, '2020-12-01 14:55:26', '2020-05-14 15:05:30');
INSERT INTO `cs_menu` VALUES (989, 403, 'src/assets/img/index/icon/analysisChart.png', 'appIndex.console.operateLogs', '操作日志', '01', 989, NULL, '2020-12-01 14:55:26', '2020-05-14 13:30:37');
INSERT INTO `cs_menu` VALUES (990, 682, 'src/assets/img/index/menu/dataAsset/serverInterfaceData.png', 'appIndex.serverInterface.databaseInterface', '数据库接口', '01', 990, NULL, '2020-12-01 14:55:26', '2020-05-15 11:02:37');
INSERT INTO `cs_menu` VALUES (991, 682, 'src/assets/img/index/icon/collectInterface.png', 'appIndex.serverInterface.collectInterface', '采集接口', '01', 991, NULL, '2020-12-01 14:55:26', '2020-05-15 11:03:27');
INSERT INTO `cs_menu` VALUES (992, 991, 'src/assets/img/index/icon/themData.png', 'appIndex.serverInterface.databaseData', '数据库', '01', 992, NULL, '2020-12-01 14:55:26', '2020-05-15 11:03:47');
INSERT INTO `cs_menu` VALUES (993, 991, 'src/assets/img/index/icon/themData.png', 'appIndex.serverInterface.fileData', '文件', '01', 993, NULL, '2020-12-01 14:55:26', '2020-05-15 11:04:00');
INSERT INTO `cs_menu` VALUES (994, 682, 'src/assets/img/index/icon/dataDevelopment.png', 'appIndex.serverInterface.dataDevelopInterface', '数据开发', '01', 994, NULL, '2020-12-01 14:55:26', '2020-05-15 11:04:20');
INSERT INTO `cs_menu` VALUES (995, 682, 'src/assets/img/index/icon/dataDevelopment.png', 'appIndex.serverInterface.cleaningFusionInterface', '清洗融合', '01', 995, NULL, '2020-12-01 14:55:26', '2020-07-20 18:01:32');
INSERT INTO `cs_menu` VALUES (996, 709, 'src/assets/img/index/icon/dataPlanDirtionary.png', 'appIndex.da.daFunction', '知识库', '01', 7, NULL, '2020-12-01 14:55:26', '2020-07-23 10:01:44');
INSERT INTO `cs_menu` VALUES (1007, 682, 'src/assets/img/index/menu/dataAsset/serverInterfaceData.png', 'appIndex.serverInterface.customInterface', '自定义接口', '01', 1007, NULL, '2020-12-01 14:55:26', '2020-05-22 09:08:12');
INSERT INTO `cs_menu` VALUES (1014, -1, 'src/assets/img/index/4.png', 'appIndex.ruleWarehouse', '规则仓库', '01', 32, '57', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (1015, 1014, 'src/assets/img/index/icon/arithmeticManage.png', 'appIndex.ruleWarehouse.dataSet', '数据集', '01', 1, NULL, '2020-12-01 14:55:26', '2020-08-12 16:53:19');
INSERT INTO `cs_menu` VALUES (1016, 1014, 'src/assets/img/index/icon/arithmeticManage.png', 'appIndex.ruleWarehouse.ruleDefinition', '业务规则', '01', 2, NULL, '2020-12-01 14:55:26', '2020-08-12 16:53:19');
INSERT INTO `cs_menu` VALUES (1021, -1, 'src/assets/img/index/dataPush.png', 'appIndex.dataPush', '数据推送', '01', 33, '2', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (1022, 1021, 'src/assets/img/index/menu/dataAsset/operationHome.png', 'appIndex.dataPush.collectionHome', '运行监控', '01', 1022, NULL, '2020-12-01 14:55:26', '2020-06-16 09:39:26');
INSERT INTO `cs_menu` VALUES (1023, 1021, 'src/assets/img/index/icon/offlineData.png', 'appIndex.dataPush', '数据推送', '01', 1023, NULL, '2020-12-01 14:55:26', '2020-06-16 09:41:12');
INSERT INTO `cs_menu` VALUES (1024, 1023, 'src/assets/001', 'appIndex.dataPush.itemManagerDb', '数据库', '01', 1024, NULL, '2020-12-01 14:55:26', '2020-06-16 09:43:13');
INSERT INTO `cs_menu` VALUES (1025, 1023, 'src/assets/001', 'appIndex.dataPush.itemManagerFile', '文件数据', '01', 1025, NULL, '2020-12-01 14:55:26', '2020-06-16 09:44:52');
INSERT INTO `cs_menu` VALUES (1026, 1021, 'src/assets/img/index/icon/collectLogs.png', 'appIndex.dataPush', '推送日志', '01', 1026, NULL, '2020-12-01 14:55:26', '2020-07-01 12:33:59');
INSERT INTO `cs_menu` VALUES (1027, 1026, 'src/assets/001', 'appIndex.dataPush.taskManageDb', '数据库', '01', 1027, NULL, '2020-12-01 14:55:26', '2020-06-16 09:55:16');
INSERT INTO `cs_menu` VALUES (1028, 1026, 'src/assets/001', 'appIndex.dataPush.taskManageFile', '文件数据', '01', 1028, NULL, '2020-12-01 14:55:26', '2020-06-16 09:55:23');
INSERT INTO `cs_menu` VALUES (1029, 950, 'src/assets/img/index/icon/dataReception.png', 'appIndex.dataReception', '数据接收', '01', 1029, '', '2020-12-01 14:55:26', '2020-07-21 09:35:48');
INSERT INTO `cs_menu` VALUES (1030, 1029, 'src/assets/img/index/icon/dataSynchronization.png', 'appIndex.dataReception.receptionData', '接收数据', '01', 1030, NULL, '2020-12-01 14:55:26', '2020-06-24 10:07:08');
INSERT INTO `cs_menu` VALUES (1035, 1029, 'src/assets/img/index/icon/dataSynchronization.png', 'appIndex.dataReception.dataClassification', '数据分类', '01', 1035, NULL, '2020-12-01 14:55:26', '2020-06-24 09:33:36');
INSERT INTO `cs_menu` VALUES (1036, 1035, 'src/assets/img/index/menu/dataAsset/serverInterfaceData.png', 'appIndex.dataReception.dataClassification', '数据', '01', 2, NULL, '2020-12-01 14:55:26', '2020-07-18 20:52:39');
INSERT INTO `cs_menu` VALUES (1037, 1035, 'src/assets/img/index/menu/dataAsset/serverInterfaceData.png', 'appIndex.dataReception.interface', '接口', '01', 2, NULL, '2020-12-01 14:55:26', '2020-07-18 20:52:42');
INSERT INTO `cs_menu` VALUES (1038, 1014, 'src/assets/img/index/icon/arithmeticManage.png', 'appIndex.ruleWarehouse.knowledge', '知识库', '01', 4, NULL, '2020-12-01 14:55:26', '2020-08-12 16:53:19');
INSERT INTO `cs_menu` VALUES (1039, 277, 'src/assets/img/index/icon/system.png', 'appIndex.console.platformInitialization', '平台初始化', '01', 1039, NULL, '2020-12-01 14:55:26', '2020-07-15 08:56:24');
INSERT INTO `cs_menu` VALUES (1040, 950, 'src/assets/img/index/icon/shareLibrary.png', 'appIndex.dataPlanning.shareLibrary', '数据推送', '01', 1040, NULL, '2020-12-01 14:55:26', '2020-07-21 09:39:16');
INSERT INTO `cs_menu` VALUES (1043, 7, 'src/assets/img/index/icon/projectManager.png', 'appIndex.about', '关于', '01', 1043, NULL, '2020-12-01 14:55:26', '2020-07-18 22:42:52');
INSERT INTO `cs_menu` VALUES (1044, 709, 'src/assets/img/index/icon/fuse.png', 'appIndex.etl.realtimeDataProcess', '实时数据处理', '01', 3, NULL, '2020-12-01 14:55:26', '2020-07-23 10:01:44');
INSERT INTO `cs_menu` VALUES (1045, 770, 'src/assets/001', 'appIndex.dg.databaseMonitor', '数据库增量', '01', 1045, NULL, '2020-12-01 14:55:26', '2020-08-04 17:30:52');
INSERT INTO `cs_menu` VALUES (1046, -1, 'src/assets/img/index/2.png', 'appIndex.modelBase', '模型库', '01', 34, '57', '2020-12-01 14:55:26', '2020-09-05 19:39:35');
INSERT INTO `cs_menu` VALUES (1048, 890, 'src/assets/img/index/menu/dataAsset/operatorApproval.png', 'appIndex.tagManage.tagStorage', '标签存储', '01', 1048, NULL, '2020-12-01 14:55:26', '2020-08-11 16:34:55');
INSERT INTO `cs_menu` VALUES (1049, 1014, 'src/assets/img/index/icon/arithmeticManage.png', 'appIndex.ruleWarehouse.ruleTag', '标签规则', '01', 3, NULL, '2020-12-01 14:55:26', '2020-08-13 16:06:50');
INSERT INTO `cs_menu` VALUES (1050, 365, 'src/assets/001', 'appIndex.dg.databaseMonitorLog', '数据库增量', '01', 1050, NULL, '2020-12-01 14:55:26', '2020-08-13 11:05:15');
INSERT INTO `cs_menu` VALUES (1056, 769, 'src/assets/001', 'appIndex.dg.itemManagerVideo', '视频采集', '01', 1056, NULL, '2020-12-01 14:55:26', '2020-10-28 09:41:16');
INSERT INTO `cs_menu` VALUES (1057, 769, 'src/assets/001', 'appIndex.dg.itemManagerAudio', '音频采集', '01', 1057, NULL, '2020-12-01 14:55:26', '2020-10-28 09:42:11');
INSERT INTO `cs_menu` VALUES (1058, 769, 'src/assets/001', 'appIndex.dg.itemManagerPicture', '图片采集', '01', 1058, NULL, '2020-12-01 14:55:26', '2020-10-28 09:42:55');
INSERT INTO `cs_menu` VALUES (1059, 769, 'src/assets/001', 'appIndex.dg.itemManagerText', '文本采集', '01', 1059, NULL, '2020-12-01 14:55:26', '2020-10-28 09:43:28');
INSERT INTO `cs_menu` VALUES (1060, 1023, 'src/assets/001', 'appIndex.dataPush.itemMonitoring', '推送监控', '01', 1060, NULL, '2020-12-01 14:55:26', '2020-10-28 11:15:28');
INSERT INTO `cs_menu` VALUES (1061, 365, 'src/assets/001', 'appIndex.dg.taskManageVideo', '视频采集', '01', 1061, NULL, '2020-12-01 14:55:26', '2020-10-28 17:52:33');
INSERT INTO `cs_menu` VALUES (1062, 365, 'src/assets/001', 'appIndex.dg.taskManageAudio', '音频采集', '01', 1062, NULL, '2020-12-01 14:55:26', '2020-10-28 17:53:34');
INSERT INTO `cs_menu` VALUES (1063, 365, 'src/assets/001', 'appIndex.dg.taskManagePicture', '图片采集', '01', 1063, NULL, '2020-12-01 14:55:26', '2020-10-28 17:54:11');
INSERT INTO `cs_menu` VALUES (1064, 365, 'src/assets/001', 'appIndex.dg.taskManageText', '文本采集', '01', 1064, NULL, '2020-12-01 14:55:26', '2020-10-28 17:54:49');
INSERT INTO `cs_menu` VALUES (1065, 685, 'src/assets/img/index/menu/operator/4.png', 'appIndex.dataPlanning.organization', '组织机构', '01', 1065, NULL, '2020-12-01 14:55:26', '2020-10-29 15:05:40');
INSERT INTO `cs_menu` VALUES (1066, 680, 'src/assets/img/index/icon/dataView.png', 'appIndex.dataPlanning.objectModel', '实体对象模型', '01', 1066, NULL, '2020-12-01 14:55:26', '2020-11-10 09:18:26');
INSERT INTO `cs_menu` VALUES (1076, 403, 'src/assets/001', 'appIndex.console.license', '系统授权', '01', 1076, NULL, '2020-12-09 19:36:42', '2020-12-09 19:36:42');
INSERT INTO `cs_menu` VALUES (1078, -1, 'data_factory', 'appIndex/dg/collectionHome', '数据采集', '01', 1078, '60', '2020-12-10 13:44:24', '2020-12-10 13:44:24');
INSERT INTO `cs_menu` VALUES (1079, -1, '1', '1', '数据采集', '01', 1079, '60', '2020-12-10 13:49:39', '2020-12-10 13:49:39');
INSERT INTO `cs_menu` VALUES (1080, 1079, 'http', '1.1.1.1', '数据推送', '01', 1080, NULL, '2020-12-10 13:53:51', '2020-12-10 13:53:51');
INSERT INTO `cs_menu` VALUES (1081, 1079, '1.1.1.', '1.1.1*****', '数据推送', '01', 1081, NULL, '2020-12-10 13:54:33', '2020-12-10 13:54:33');
INSERT INTO `cs_menu` VALUES (1082, 1078, 'src/assets/img/index/icon/offlineData.png', 'appIndex.dg', '离线数据采集', '01', 1082, NULL, '2020-12-10 14:31:06', '2020-12-10 14:31:06');
INSERT INTO `cs_menu` VALUES (1084, -1, 'ssd', 'ssd', 'ceshi1', '01', 1084, '2', '2020-12-15 09:17:43', '2020-12-15 09:17:43');
INSERT INTO `cs_menu` VALUES (1085, 1084, 'd', 's', 'ceshiq', '01', 1085, NULL, '2020-12-14 17:06:48', '2020-12-14 17:06:48');
INSERT INTO `cs_menu` VALUES (1086, 1081, '123', '****￥￥￥￥', '123', '01', 1086, NULL, '2020-12-15 09:18:41', '2020-12-15 09:18:41');
INSERT INTO `cs_menu` VALUES (1087, 1085, '111', '1111', '111', '01', 1087, NULL, '2020-12-15 15:40:08', '2020-12-15 15:40:08');

-- ----------------------------
-- Table structure for cs_message
-- ----------------------------
DROP TABLE IF EXISTS `cs_message`;
CREATE TABLE `cs_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `topic` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `nature` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通道性质（内部:INTERNAL 外部:EXTERNAL）',
  `level` int(11) NULL DEFAULT NULL COMMENT '轮询确定消息通道',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `msg_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息类型',
  `json` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分区和备份参数',
  `version` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'kafka版本号',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `auth_flag` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否认证（01：是；02：否）',
  PRIMARY KEY (`id`, `url`, `topic`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_operating_params
-- ----------------------------
DROP TABLE IF EXISTS `cs_operating_params`;
CREATE TABLE `cs_operating_params`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '运行参数序号',
  `department_id` int(11) NOT NULL COMMENT '用户部门id',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '参数所属流程类型(ACCESS;ETL;PROCESSING)',
  `linked_id` int(11) NOT NULL COMMENT '关联流程序号(数据处理id，采集项id，清洗流程id)',
  `param_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '运行参数键',
  `param_value_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运行参数键对应的值类型（数值: NUMBER 字符串:VARCHAR 时间:TIME）',
  `param_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运行参数值',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '键说明描述',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据采集，清洗，处理运行流程时的参数' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_project
-- ----------------------------
DROP TABLE IF EXISTS `cs_project`;
CREATE TABLE `cs_project`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '项目ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `code` varchar(110) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `creator` int(10) NULL DEFAULT NULL COMMENT '创建项目的userId',
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_project_relation
-- ----------------------------
DROP TABLE IF EXISTS `cs_project_relation`;
CREATE TABLE `cs_project_relation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目部门关联Id',
  `project_id` int(11) NULL DEFAULT NULL COMMENT '项目Id',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门Id',
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_resource
-- ----------------------------
DROP TABLE IF EXISTS `cs_resource`;
CREATE TABLE `cs_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_code` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `version` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_resource
-- ----------------------------
INSERT INTO `cs_resource` VALUES (161, 'dataaccess', '04', '/home/clouddata/BigData-Cloud2.0/resource', 'CloudData-DataAccess.zip', 'ee', '2020-12-01 14:55:26', '2018-12-29 14:03:20');
INSERT INTO `cs_resource` VALUES (169, 'GlobalEngine', '05', '/home/clouddata/iovCloud/resource/', 'GlobalEngine.zip', '35', '2020-12-01 14:55:26', '2020-02-25 14:54:00');
INSERT INTO `cs_resource` VALUES (170, 'DataProcessing', '02', '/home/clouddata/iovCloud/resource/', 'DataProcessing.zip', '1', '2020-12-01 14:55:26', '2020-07-23 08:50:23');

-- ----------------------------
-- Table structure for cs_role
-- ----------------------------
DROP TABLE IF EXISTS `cs_role`;
CREATE TABLE `cs_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `permission` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_role
-- ----------------------------
INSERT INTO `cs_role` VALUES (1, '1', '超级管理员', '{\"230\":{\"level\":\"230\",\"name\":\"原始数据\",\"checked\":\"false\",\"pId\":178,\"id\":230,\"open\":\"false\",\"order\":230},\"231\":{\"level\":\"231\",\"name\":\"API服务\",\"checked\":\"false\",\"pId\":176,\"id\":231,\"open\":\"false\",\"order\":231},\"352\":{\"level\":\"352\",\"name\":\"流程日志\",\"checked\":\"false\",\"pId\":249,\"id\":352,\"open\":\"false\",\"order\":352},\"353\":{\"level\":\"353\",\"name\":\"接口服务\",\"checked\":\"false\",\"pId\":249,\"id\":353,\"open\":\"false\",\"order\":353},\"356\":{\"level\":\"1\",\"name\":\"流程管理\",\"checked\":\"false\",\"pId\":3,\"id\":356,\"open\":\"false\",\"order\":1},\"239\":{\"level\":\"2\",\"name\":\"数据接入\",\"checked\":\"false\",\"pId\":-1,\"id\":239,\"open\":\"true\",\"order\":2},\"10\":{\"level\":\"4\",\"name\":\"资源包管理\",\"checked\":\"true\",\"pId\":7,\"id\":10,\"open\":\"false\",\"order\":4},\"11\":{\"level\":\"2\",\"name\":\"服务部署\",\"checked\":\"true\",\"pId\":7,\"id\":11,\"open\":\"false\",\"order\":2},\"13\":{\"level\":\"2\",\"name\":\"用户管理\",\"checked\":\"true\",\"pId\":402,\"id\":13,\"open\":\"false\",\"order\":2},\"14\":{\"level\":\"1\",\"name\":\"角色管理\",\"checked\":\"true\",\"pId\":402,\"id\":14,\"open\":\"false\",\"order\":1},\"15\":{\"level\":\"7\",\"name\":\"菜单管理\",\"checked\":\"true\",\"pId\":403,\"id\":15,\"open\":\"false\",\"order\":7},\"240\":{\"level\":\"1\",\"name\":\"数据项注册\",\"checked\":\"false\",\"pId\":239,\"id\":240,\"open\":\"false\",\"order\":1},\"361\":{\"level\":\"2\",\"name\":\"汇聚配置\",\"checked\":\"false\",\"pId\":3,\"id\":361,\"open\":\"true\",\"order\":2},\"241\":{\"level\":\"5\",\"name\":\"集群管理\",\"checked\":\"false\",\"pId\":239,\"id\":241,\"open\":\"false\",\"order\":5},\"362\":{\"level\":\"1\",\"name\":\"数据项配置\",\"checked\":\"false\",\"pId\":361,\"id\":362,\"open\":\"false\",\"order\":1},\"242\":{\"level\":\"4\",\"name\":\"流程管理\",\"checked\":\"false\",\"pId\":239,\"id\":242,\"open\":\"false\",\"order\":4},\"363\":{\"level\":\"3\",\"name\":\"流程数据项\",\"checked\":\"false\",\"pId\":361,\"id\":363,\"open\":\"false\",\"order\":3},\"1\":{\"level\":\"1\",\"name\":\"首页\",\"checked\":\"true\",\"pId\":-1,\"id\":1,\"open\":\"false\",\"order\":1},\"244\":{\"level\":\"52\",\"name\":\"数据建模\",\"checked\":\"false\",\"pId\":4,\"id\":244,\"open\":\"false\",\"order\":52},\"365\":{\"level\":\"2\",\"name\":\"任务管理\",\"checked\":\"false\",\"pId\":239,\"id\":365,\"open\":\"false\",\"order\":2},\"3\":{\"level\":\"3\",\"name\":\"数据汇聚\",\"checked\":\"false\",\"pId\":-1,\"id\":3,\"open\":\"true\",\"order\":3},\"245\":{\"level\":\"247\",\"name\":\"分析数据模型\",\"checked\":\"false\",\"pId\":244,\"id\":245,\"open\":\"false\",\"order\":247},\"4\":{\"level\":\"4\",\"name\":\"数据存储\",\"checked\":\"false\",\"pId\":-1,\"id\":4,\"open\":\"false\",\"order\":4},\"246\":{\"level\":\"245\",\"name\":\"原始数据模型\",\"checked\":\"false\",\"pId\":244,\"id\":246,\"open\":\"false\",\"order\":245},\"367\":{\"level\":\"367\",\"name\":\"数据库\",\"checked\":\"false\",\"pId\":240,\"id\":367,\"open\":\"false\",\"order\":367},\"400\":{\"level\":\"400\",\"name\":\"流程定制\",\"checked\":\"false\",\"pId\":356,\"id\":400,\"open\":\"false\",\"order\":400},\"247\":{\"level\":\"246\",\"name\":\"基础数据模型\",\"checked\":\"false\",\"pId\":244,\"id\":247,\"open\":\"false\",\"order\":246},\"368\":{\"level\":\"368\",\"name\":\"文件数据\",\"checked\":\"false\",\"pId\":240,\"id\":368,\"open\":\"false\",\"order\":368},\"401\":{\"level\":\"401\",\"name\":\"流程日志\",\"checked\":\"false\",\"pId\":356,\"id\":401,\"open\":\"false\",\"order\":401},\"6\":{\"level\":\"7\",\"name\":\"任务调度\",\"checked\":\"false\",\"pId\":-1,\"id\":6,\"open\":\"false\",\"order\":7},\"248\":{\"level\":\"9\",\"name\":\"集群管理\",\"checked\":\"false\",\"pId\":3,\"id\":248,\"open\":\"false\",\"order\":9},\"369\":{\"level\":\"369\",\"name\":\"数据库\",\"checked\":\"false\",\"pId\":365,\"id\":369,\"open\":\"false\",\"order\":369},\"402\":{\"level\":\"5\",\"name\":\"用户中心\",\"checked\":\"true\",\"pId\":7,\"id\":402,\"open\":\"true\",\"order\":5},\"7\":{\"level\":\"8\",\"name\":\"平台运维\",\"checked\":\"true\",\"pId\":-1,\"id\":7,\"open\":\"true\",\"order\":8},\"249\":{\"level\":\"5\",\"name\":\"数据清洗\",\"checked\":\"false\",\"pId\":-1,\"id\":249,\"open\":\"false\",\"order\":5},\"403\":{\"level\":\"6\",\"name\":\"系统管理\",\"checked\":\"true\",\"pId\":7,\"id\":403,\"open\":\"true\",\"order\":6},\"8\":{\"level\":\"1\",\"name\":\"平台服务\",\"checked\":\"false\",\"pId\":7,\"id\":8,\"open\":\"false\",\"order\":1},\"404\":{\"level\":\"404\",\"name\":\"基础接口\",\"checked\":\"true\",\"pId\":403,\"id\":404,\"open\":\"false\",\"order\":404},\"9\":{\"level\":\"3\",\"name\":\"服务器管理\",\"checked\":\"true\",\"pId\":7,\"id\":9,\"open\":\"false\",\"order\":3},\"405\":{\"level\":\"405\",\"name\":\"应用资源\",\"checked\":\"false\",\"pId\":178,\"id\":405,\"open\":\"false\",\"order\":405},\"406\":{\"level\":\"406\",\"name\":\"面板管理\",\"checked\":\"false\",\"pId\":170,\"id\":406,\"open\":\"false\",\"order\":406},\"407\":{\"level\":\"407\",\"name\":\"模板管理\",\"checked\":\"false\",\"pId\":406,\"id\":407,\"open\":\"false\",\"order\":407},\"408\":{\"level\":\"408\",\"name\":\"面板定制\",\"checked\":\"false\",\"pId\":406,\"id\":408,\"open\":\"false\",\"order\":408},\"22\":{\"level\":\"8\",\"name\":\"权限管理\",\"checked\":\"true\",\"pId\":403,\"id\":22,\"open\":\"false\",\"order\":8},\"370\":{\"level\":\"370\",\"name\":\"文件数据\",\"checked\":\"false\",\"pId\":365,\"id\":370,\"open\":\"false\",\"order\":370},\"372\":{\"level\":\"6\",\"name\":\"数据分析\",\"checked\":\"false\",\"pId\":-1,\"id\":372,\"open\":\"false\",\"order\":6},\"373\":{\"level\":\"373\",\"name\":\"模型管理\",\"checked\":\"false\",\"pId\":372,\"id\":373,\"open\":\"false\",\"order\":373},\"374\":{\"level\":\"374\",\"name\":\"图表分析\",\"checked\":\"false\",\"pId\":372,\"id\":374,\"open\":\"false\",\"order\":374},\"375\":{\"level\":\"375\",\"name\":\"模板管理\",\"checked\":\"false\",\"pId\":372,\"id\":375,\"open\":\"false\",\"order\":375},\"255\":{\"level\":\"255\",\"name\":\"图表资源\",\"checked\":\"false\",\"pId\":175,\"id\":255,\"open\":\"false\",\"order\":255},\"376\":{\"level\":\"376\",\"name\":\"分析字典\",\"checked\":\"false\",\"pId\":372,\"id\":376,\"open\":\"false\",\"order\":376},\"410\":{\"level\":\"410\",\"name\":\"展示资源\",\"checked\":\"false\",\"pId\":178,\"id\":410,\"open\":\"false\",\"order\":410},\"378\":{\"level\":\"378\",\"name\":\"函数管理\",\"checked\":\"false\",\"pId\":372,\"id\":378,\"open\":\"false\",\"order\":378},\"411\":{\"level\":\"411\",\"name\":\"应用注册\",\"checked\":\"false\",\"pId\":7,\"id\":411,\"open\":\"false\",\"order\":411},\"412\":{\"level\":\"412\",\"name\":\"资源注册\",\"checked\":\"false\",\"pId\":7,\"id\":412,\"open\":\"false\",\"order\":412},\"413\":{\"level\":\"413\",\"name\":\"页面资源注册\",\"checked\":\"false\",\"pId\":412,\"id\":413,\"open\":\"false\",\"order\":413},\"414\":{\"level\":\"414\",\"name\":\"test122\",\"checked\":\"false\",\"pId\":-1,\"id\":414,\"open\":\"false\"},\"415\":{\"level\":\"415\",\"name\":\"去去去\",\"checked\":\"false\",\"pId\":414,\"id\":415,\"open\":\"false\"},\"380\":{\"level\":\"380\",\"name\":\"图表资源\",\"checked\":\"false\",\"pId\":176,\"id\":380,\"open\":\"false\",\"order\":380},\"381\":{\"level\":\"381\",\"name\":\"平台接口\",\"checked\":\"false\",\"pId\":170,\"id\":381,\"open\":\"false\",\"order\":381},\"383\":{\"level\":\"383\",\"name\":\"数据接入\",\"checked\":\"false\",\"pId\":381,\"id\":383,\"open\":\"false\",\"order\":383},\"263\":{\"level\":\"56\",\"name\":\"存储管理\",\"checked\":\"false\",\"pId\":4,\"id\":263,\"open\":\"true\",\"order\":56},\"384\":{\"level\":\"384\",\"name\":\"数据清洗\",\"checked\":\"false\",\"pId\":381,\"id\":384,\"open\":\"false\",\"order\":384},\"385\":{\"level\":\"10\",\"name\":\"日志查看\",\"checked\":\"true\",\"pId\":403,\"id\":385,\"open\":\"false\",\"order\":10},\"386\":{\"level\":\"386\",\"name\":\"文件数据\",\"checked\":\"false\",\"pId\":338,\"id\":386,\"open\":\"false\",\"order\":386},\"387\":{\"level\":\"387\",\"name\":\"数据库\",\"checked\":\"false\",\"pId\":338,\"id\":387,\"open\":\"false\",\"order\":387},\"304\":{\"level\":\"304\",\"name\":\"基础接口\",\"checked\":\"false\",\"pId\":381,\"id\":304,\"open\":\"false\",\"order\":304},\"306\":{\"level\":\"306\",\"name\":\"脚本管理\",\"checked\":\"false\",\"pId\":249,\"id\":306,\"open\":\"false\",\"order\":306},\"309\":{\"level\":\"309\",\"name\":\"流程管理\",\"checked\":\"false\",\"pId\":249,\"id\":309,\"open\":\"false\",\"order\":309},\"47\":{\"level\":\"244\",\"name\":\"数据浏览\",\"checked\":\"false\",\"pId\":4,\"id\":47,\"open\":\"true\",\"order\":244},\"390\":{\"level\":\"390\",\"name\":\"分析图表\",\"checked\":\"false\",\"pId\":178,\"id\":390,\"open\":\"false\",\"order\":390},\"270\":{\"level\":\"42\",\"name\":\"数据目录\",\"checked\":\"false\",\"pId\":4,\"id\":270,\"open\":\"true\",\"order\":42},\"271\":{\"level\":\"271\",\"name\":\"元数据\",\"checked\":\"false\",\"pId\":270,\"id\":271,\"open\":\"false\",\"order\":271},\"392\":{\"level\":\"392\",\"name\":\"集群服务\",\"checked\":\"true\",\"pId\":-1,\"id\":392,\"open\":\"false\",\"order\":392},\"272\":{\"level\":\"272\",\"name\":\"原始数据目录\",\"checked\":\"false\",\"pId\":270,\"id\":272,\"open\":\"false\",\"order\":272},\"393\":{\"level\":\"393\",\"name\":\"系统函数\",\"checked\":\"false\",\"pId\":372,\"id\":393,\"open\":\"false\",\"order\":393},\"394\":{\"level\":\"394\",\"name\":\"数据库\",\"checked\":\"false\",\"pId\":318,\"id\":394,\"open\":\"false\",\"order\":394},\"395\":{\"level\":\"395\",\"name\":\"文件数据\",\"checked\":\"false\",\"pId\":318,\"id\":395,\"open\":\"false\",\"order\":395},\"396\":{\"level\":\"396\",\"name\":\"调度日志\",\"checked\":\"false\",\"pId\":6,\"id\":396,\"open\":\"false\",\"order\":396},\"397\":{\"level\":\"397\",\"name\":\"数据库调度日志\",\"checked\":\"false\",\"pId\":396,\"id\":397,\"open\":\"false\",\"order\":397},\"277\":{\"level\":\"9\",\"name\":\"平台设置\",\"checked\":\"true\",\"pId\":7,\"id\":277,\"open\":\"false\",\"order\":9},\"398\":{\"level\":\"398\",\"name\":\"文件调度日志\",\"checked\":\"false\",\"pId\":396,\"id\":398,\"open\":\"false\",\"order\":398},\"278\":{\"level\":\"278\",\"name\":\"系统设置\",\"checked\":\"true\",\"pId\":277,\"id\":278,\"open\":\"false\",\"order\":278},\"399\":{\"level\":\"399\",\"name\":\"数据清洗日志\",\"checked\":\"false\",\"pId\":396,\"id\":399,\"open\":\"false\",\"order\":399},\"279\":{\"level\":\"279\",\"name\":\"集群设置\",\"checked\":\"true\",\"pId\":277,\"id\":279,\"open\":\"false\",\"order\":279},\"312\":{\"level\":\"312\",\"name\":\"组件管理\",\"checked\":\"false\",\"pId\":249,\"id\":312,\"open\":\"true\",\"order\":312},\"313\":{\"level\":\"313\",\"name\":\"Spark组件\",\"checked\":\"false\",\"pId\":312,\"id\":313,\"open\":\"false\",\"order\":313},\"314\":{\"level\":\"314\",\"name\":\"Hadoop组件\",\"checked\":\"false\",\"pId\":312,\"id\":314,\"open\":\"false\",\"order\":314},\"318\":{\"level\":\"318\",\"name\":\"数据接入调度\",\"checked\":\"false\",\"pId\":6,\"id\":318,\"open\":\"false\",\"order\":318},\"319\":{\"level\":\"319\",\"name\":\"数据清洗调度\",\"checked\":\"false\",\"pId\":6,\"id\":319,\"open\":\"false\",\"order\":319},\"-1\":{\"level\":\"-1\",\"name\":\"IOV管理平台\",\"checked\":\"true\",\"pId\":0,\"id\":-1,\"open\":\"true\",\"order\":-1},\"281\":{\"level\":\"281\",\"name\":\"文件数据\",\"checked\":\"false\",\"pId\":47,\"id\":281,\"open\":\"false\",\"order\":281},\"283\":{\"level\":\"283\",\"name\":\"数据库数据\",\"checked\":\"false\",\"pId\":47,\"id\":283,\"open\":\"false\",\"order\":283},\"320\":{\"level\":\"320\",\"name\":\"基础数据目录\",\"checked\":\"false\",\"pId\":270,\"id\":320,\"open\":\"false\",\"order\":320},\"321\":{\"level\":\"321\",\"name\":\"分析数据目录\",\"checked\":\"false\",\"pId\":270,\"id\":321,\"open\":\"false\",\"order\":321},\"290\":{\"level\":\"5\",\"name\":\"组件管理\",\"checked\":\"false\",\"pId\":3,\"id\":290,\"open\":\"false\",\"order\":5},\"170\":{\"level\":\"9\",\"name\":\"平台运营\",\"checked\":\"false\",\"pId\":-1,\"id\":170,\"open\":\"true\",\"order\":9},\"291\":{\"level\":\"291\",\"name\":\"组件配置\",\"checked\":\"false\",\"pId\":290,\"id\":291,\"open\":\"false\",\"order\":291},\"292\":{\"level\":\"292\",\"name\":\"LIB库\",\"checked\":\"false\",\"pId\":290,\"id\":292,\"open\":\"false\",\"order\":292},\"175\":{\"level\":\"175\",\"name\":\"资源审批\",\"checked\":\"false\",\"pId\":170,\"id\":175,\"open\":\"true\",\"order\":175},\"176\":{\"level\":\"174\",\"name\":\"资源发布\",\"checked\":\"false\",\"pId\":170,\"id\":176,\"open\":\"false\",\"order\":174},\"331\":{\"level\":\"331\",\"name\":\"基础数据\",\"checked\":\"false\",\"pId\":178,\"id\":331,\"open\":\"false\",\"order\":331},\"178\":{\"level\":\"172\",\"name\":\"资源中心\",\"checked\":\"false\",\"pId\":170,\"id\":178,\"open\":\"true\",\"order\":172},\"332\":{\"level\":\"332\",\"name\":\"分析数据\",\"checked\":\"false\",\"pId\":178,\"id\":332,\"open\":\"false\",\"order\":332},\"336\":{\"level\":\"336\",\"name\":\"初始设置\",\"checked\":\"true\",\"pId\":277,\"id\":336,\"open\":\"false\",\"order\":336},\"337\":{\"level\":\"2\",\"name\":\"汇聚日志\",\"checked\":\"false\",\"pId\":361,\"id\":337,\"open\":\"false\",\"order\":2},\"338\":{\"level\":\"6\",\"name\":\"接口服务\",\"checked\":\"false\",\"pId\":239,\"id\":338,\"open\":\"false\",\"order\":6},\"340\":{\"level\":\"340\",\"name\":\"原始数据存储\",\"checked\":\"false\",\"pId\":263,\"id\":340,\"open\":\"false\",\"order\":340},\"341\":{\"level\":\"341\",\"name\":\"基础数据存储\",\"checked\":\"false\",\"pId\":263,\"id\":341,\"open\":\"false\",\"order\":341},\"342\":{\"level\":\"342\",\"name\":\"分析数据存储\",\"checked\":\"false\",\"pId\":263,\"id\":342,\"open\":\"false\",\"order\":342},\"227\":{\"level\":\"227\",\"name\":\"数据资源\",\"checked\":\"false\",\"pId\":176,\"id\":227,\"open\":\"false\",\"order\":227},\"229\":{\"level\":\"229\",\"name\":\"数据资源\",\"checked\":\"false\",\"pId\":175,\"id\":229,\"open\":\"false\",\"order\":229}}', '2020-12-01 14:55:26', '2019-02-26 21:29:27');
INSERT INTO `cs_role` VALUES (2, '2', '管理员', '{\"230\":{\"level\":\"230\",\"name\":\"原始数据\",\"checked\":\"true\",\"pId\":178,\"id\":230,\"open\":\"false\",\"order\":230},\"231\":{\"level\":\"231\",\"name\":\"API服务\",\"checked\":\"true\",\"pId\":176,\"id\":231,\"open\":\"false\",\"order\":231},\"352\":{\"level\":\"352\",\"name\":\"流程日志\",\"checked\":\"true\",\"pId\":249,\"id\":352,\"open\":\"false\",\"order\":352},\"353\":{\"level\":\"353\",\"name\":\"接口服务\",\"checked\":\"true\",\"pId\":249,\"id\":353,\"open\":\"false\",\"order\":353},\"356\":{\"level\":\"2\",\"name\":\"流程管理\",\"checked\":\"true\",\"pId\":3,\"id\":356,\"open\":\"true\",\"order\":1},\"239\":{\"level\":\"2\",\"name\":\"数据接入\",\"checked\":\"true\",\"pId\":-1,\"id\":239,\"open\":\"true\",\"order\":2},\"10\":{\"level\":\"11\",\"name\":\"资源包管理\",\"checked\":\"false\",\"pId\":7,\"id\":10,\"open\":\"false\",\"order\":4},\"11\":{\"level\":\"9\",\"name\":\"服务部署\",\"checked\":\"false\",\"pId\":7,\"id\":11,\"open\":\"false\",\"order\":2},\"13\":{\"level\":\"13\",\"name\":\"用户管理\",\"checked\":\"false\",\"pId\":402,\"id\":13,\"open\":\"false\",\"order\":2},\"14\":{\"level\":\"14\",\"name\":\"角色管理\",\"checked\":\"false\",\"pId\":402,\"id\":14,\"open\":\"false\",\"order\":1},\"15\":{\"level\":\"15\",\"name\":\"菜单管理\",\"checked\":\"false\",\"pId\":403,\"id\":15,\"open\":\"false\",\"order\":7},\"240\":{\"level\":\"240\",\"name\":\"数据项注册\",\"checked\":\"true\",\"pId\":239,\"id\":240,\"open\":\"false\",\"order\":1},\"361\":{\"level\":\"1\",\"name\":\"汇聚配置\",\"checked\":\"true\",\"pId\":3,\"id\":361,\"open\":\"true\",\"order\":2},\"241\":{\"level\":\"365\",\"name\":\"集群管理\",\"checked\":\"true\",\"pId\":239,\"id\":241,\"open\":\"false\",\"order\":5},\"362\":{\"level\":\"362\",\"name\":\"数据项配置\",\"checked\":\"true\",\"pId\":361,\"id\":362,\"open\":\"false\",\"order\":1},\"242\":{\"level\":\"241\",\"name\":\"流程管理\",\"checked\":\"true\",\"pId\":239,\"id\":242,\"open\":\"false\",\"order\":4},\"363\":{\"level\":\"363\",\"name\":\"流程数据项\",\"checked\":\"true\",\"pId\":361,\"id\":363,\"open\":\"false\",\"order\":3},\"1\":{\"level\":\"1\",\"name\":\"首页\",\"checked\":\"true\",\"pId\":-1,\"id\":1,\"open\":\"false\",\"order\":1},\"244\":{\"level\":\"52\",\"name\":\"数据建模\",\"checked\":\"true\",\"pId\":4,\"id\":244,\"open\":\"false\",\"order\":52},\"365\":{\"level\":\"243\",\"name\":\"任务管理\",\"checked\":\"true\",\"pId\":239,\"id\":365,\"open\":\"false\",\"order\":2},\"3\":{\"level\":\"3\",\"name\":\"数据汇聚\",\"checked\":\"true\",\"pId\":-1,\"id\":3,\"open\":\"true\",\"order\":3},\"245\":{\"level\":\"247\",\"name\":\"分析数据模型\",\"checked\":\"true\",\"pId\":244,\"id\":245,\"open\":\"false\",\"order\":247},\"4\":{\"level\":\"4\",\"name\":\"数据存储\",\"checked\":\"true\",\"pId\":-1,\"id\":4,\"open\":\"false\",\"order\":4},\"246\":{\"level\":\"245\",\"name\":\"原始数据模型\",\"checked\":\"true\",\"pId\":244,\"id\":246,\"open\":\"false\",\"order\":245},\"367\":{\"level\":\"367\",\"name\":\"数据库\",\"checked\":\"true\",\"pId\":240,\"id\":367,\"open\":\"false\",\"order\":367},\"400\":{\"level\":\"400\",\"name\":\"流程定制\",\"checked\":\"true\",\"pId\":356,\"id\":400,\"open\":\"false\",\"order\":400},\"247\":{\"level\":\"246\",\"name\":\"基础数据模型\",\"checked\":\"true\",\"pId\":244,\"id\":247,\"open\":\"false\",\"order\":246},\"368\":{\"level\":\"368\",\"name\":\"文件数据\",\"checked\":\"true\",\"pId\":240,\"id\":368,\"open\":\"false\",\"order\":368},\"401\":{\"level\":\"401\",\"name\":\"流程日志\",\"checked\":\"true\",\"pId\":356,\"id\":401,\"open\":\"false\",\"order\":401},\"6\":{\"level\":\"7\",\"name\":\"任务调度\",\"checked\":\"true\",\"pId\":-1,\"id\":6,\"open\":\"true\",\"order\":7},\"248\":{\"level\":\"5\",\"name\":\"集群管理\",\"checked\":\"true\",\"pId\":3,\"id\":248,\"open\":\"false\",\"order\":9},\"369\":{\"level\":\"369\",\"name\":\"数据库\",\"checked\":\"true\",\"pId\":365,\"id\":369,\"open\":\"false\",\"order\":369},\"402\":{\"level\":\"402\",\"name\":\"用户中心\",\"checked\":\"false\",\"pId\":7,\"id\":402,\"open\":\"false\",\"order\":5},\"7\":{\"level\":\"8\",\"name\":\"平台运维\",\"checked\":\"true\",\"pId\":-1,\"id\":7,\"open\":\"true\",\"order\":8},\"249\":{\"level\":\"5\",\"name\":\"数据清洗\",\"checked\":\"true\",\"pId\":-1,\"id\":249,\"open\":\"true\",\"order\":5},\"403\":{\"level\":\"403\",\"name\":\"系统管理\",\"checked\":\"false\",\"pId\":7,\"id\":403,\"open\":\"false\",\"order\":6},\"8\":{\"level\":\"8\",\"name\":\"平台服务\",\"checked\":\"true\",\"pId\":7,\"id\":8,\"open\":\"false\",\"order\":1},\"404\":{\"level\":\"404\",\"name\":\"基础接口\",\"checked\":\"false\",\"pId\":403,\"id\":404,\"open\":\"false\",\"order\":404},\"9\":{\"level\":\"10\",\"name\":\"服务器管理\",\"checked\":\"false\",\"pId\":7,\"id\":9,\"open\":\"false\",\"order\":3},\"405\":{\"level\":\"405\",\"name\":\"应用资源\",\"checked\":\"true\",\"pId\":178,\"id\":405,\"open\":\"false\",\"order\":405},\"406\":{\"level\":\"406\",\"name\":\"面板管理\",\"checked\":\"true\",\"pId\":170,\"id\":406,\"open\":\"true\",\"order\":406},\"407\":{\"level\":\"407\",\"name\":\"模板管理\",\"checked\":\"true\",\"pId\":406,\"id\":407,\"open\":\"false\",\"order\":407},\"408\":{\"level\":\"408\",\"name\":\"面板定制\",\"checked\":\"true\",\"pId\":406,\"id\":408,\"open\":\"false\",\"order\":408},\"22\":{\"level\":\"22\",\"name\":\"权限管理\",\"checked\":\"false\",\"pId\":403,\"id\":22,\"open\":\"false\",\"order\":8},\"370\":{\"level\":\"370\",\"name\":\"文件数据\",\"checked\":\"true\",\"pId\":365,\"id\":370,\"open\":\"false\",\"order\":370},\"372\":{\"level\":\"6\",\"name\":\"数据分析\",\"checked\":\"true\",\"pId\":-1,\"id\":372,\"open\":\"true\",\"order\":6},\"373\":{\"level\":\"373\",\"name\":\"模型管理\",\"checked\":\"true\",\"pId\":372,\"id\":373,\"open\":\"false\",\"order\":373},\"374\":{\"level\":\"374\",\"name\":\"图表分析\",\"checked\":\"true\",\"pId\":372,\"id\":374,\"open\":\"false\",\"order\":374},\"375\":{\"level\":\"375\",\"name\":\"模板管理\",\"checked\":\"true\",\"pId\":372,\"id\":375,\"open\":\"false\",\"order\":375},\"255\":{\"level\":\"255\",\"name\":\"图表资源\",\"checked\":\"true\",\"pId\":175,\"id\":255,\"open\":\"false\",\"order\":255},\"376\":{\"level\":\"376\",\"name\":\"分析字典\",\"checked\":\"true\",\"pId\":372,\"id\":376,\"open\":\"false\",\"order\":376},\"410\":{\"level\":\"410\",\"name\":\"展示资源\",\"checked\":\"false\",\"pId\":178,\"id\":410,\"open\":\"false\",\"order\":410},\"378\":{\"level\":\"378\",\"name\":\"函数管理\",\"checked\":\"true\",\"pId\":372,\"id\":378,\"open\":\"false\",\"order\":378},\"411\":{\"level\":\"411\",\"name\":\"应用注册\",\"checked\":\"false\",\"pId\":7,\"id\":411,\"open\":\"false\",\"order\":411},\"412\":{\"level\":\"412\",\"name\":\"资源注册\",\"checked\":\"false\",\"pId\":7,\"id\":412,\"open\":\"false\",\"order\":412},\"413\":{\"level\":\"413\",\"name\":\"页面资源注册\",\"checked\":\"false\",\"pId\":412,\"id\":413,\"open\":\"false\",\"order\":413},\"414\":{\"level\":\"414\",\"name\":\"test122\",\"checked\":\"false\",\"pId\":-1,\"id\":414,\"open\":\"false\"},\"415\":{\"level\":\"415\",\"name\":\"去去去\",\"checked\":\"false\",\"pId\":414,\"id\":415,\"open\":\"false\"},\"380\":{\"level\":\"2\",\"name\":\"图表资源\",\"checked\":\"true\",\"pId\":176,\"id\":380,\"open\":\"false\",\"order\":380},\"381\":{\"level\":\"2\",\"name\":\"平台接口\",\"checked\":\"true\",\"pId\":170,\"id\":381,\"open\":\"false\",\"order\":381},\"383\":{\"level\":\"383\",\"name\":\"数据接入\",\"checked\":\"true\",\"pId\":381,\"id\":383,\"open\":\"false\",\"order\":383},\"263\":{\"level\":\"56\",\"name\":\"存储管理\",\"checked\":\"true\",\"pId\":4,\"id\":263,\"open\":\"false\",\"order\":56},\"384\":{\"level\":\"384\",\"name\":\"数据清洗\",\"checked\":\"true\",\"pId\":381,\"id\":384,\"open\":\"false\",\"order\":384},\"385\":{\"level\":\"385\",\"name\":\"日志查看\",\"checked\":\"false\",\"pId\":403,\"id\":385,\"open\":\"false\",\"order\":10},\"386\":{\"level\":\"386\",\"name\":\"文件数据\",\"checked\":\"true\",\"pId\":338,\"id\":386,\"open\":\"false\",\"order\":386},\"387\":{\"level\":\"387\",\"name\":\"数据库\",\"checked\":\"true\",\"pId\":338,\"id\":387,\"open\":\"false\",\"order\":387},\"304\":{\"level\":\"304\",\"name\":\"基础接口\",\"checked\":\"true\",\"pId\":381,\"id\":304,\"open\":\"false\",\"order\":304},\"306\":{\"level\":\"306\",\"name\":\"脚本管理\",\"checked\":\"false\",\"pId\":249,\"id\":306,\"open\":\"false\",\"order\":306},\"309\":{\"level\":\"309\",\"name\":\"流程管理\",\"checked\":\"true\",\"pId\":249,\"id\":309,\"open\":\"false\",\"order\":309},\"47\":{\"level\":\"244\",\"name\":\"数据浏览\",\"checked\":\"true\",\"pId\":4,\"id\":47,\"open\":\"false\",\"order\":244},\"390\":{\"level\":\"390\",\"name\":\"分析图表\",\"checked\":\"true\",\"pId\":178,\"id\":390,\"open\":\"false\",\"order\":390},\"270\":{\"level\":\"42\",\"name\":\"数据目录\",\"checked\":\"true\",\"pId\":4,\"id\":270,\"open\":\"true\",\"order\":42},\"271\":{\"level\":\"271\",\"name\":\"元数据\",\"checked\":\"true\",\"pId\":270,\"id\":271,\"open\":\"false\",\"order\":271},\"392\":{\"level\":\"392\",\"name\":\"集群服务\",\"checked\":\"false\",\"pId\":-1,\"id\":392,\"open\":\"false\",\"order\":392},\"272\":{\"level\":\"272\",\"name\":\"原始数据目录\",\"checked\":\"true\",\"pId\":270,\"id\":272,\"open\":\"false\",\"order\":272},\"393\":{\"level\":\"393\",\"name\":\"系统函数\",\"checked\":\"true\",\"pId\":372,\"id\":393,\"open\":\"false\",\"order\":393},\"394\":{\"level\":\"394\",\"name\":\"数据库\",\"checked\":\"true\",\"pId\":318,\"id\":394,\"open\":\"false\",\"order\":394},\"395\":{\"level\":\"395\",\"name\":\"文件数据\",\"checked\":\"true\",\"pId\":318,\"id\":395,\"open\":\"false\",\"order\":395},\"396\":{\"level\":\"396\",\"name\":\"调度日志\",\"checked\":\"true\",\"pId\":6,\"id\":396,\"open\":\"false\",\"order\":396},\"397\":{\"level\":\"397\",\"name\":\"数据库调度日志\",\"checked\":\"true\",\"pId\":396,\"id\":397,\"open\":\"false\",\"order\":397},\"277\":{\"level\":\"277\",\"name\":\"平台设置\",\"checked\":\"false\",\"pId\":7,\"id\":277,\"open\":\"true\",\"order\":9},\"398\":{\"level\":\"398\",\"name\":\"文件调度日志\",\"checked\":\"true\",\"pId\":396,\"id\":398,\"open\":\"false\",\"order\":398},\"278\":{\"level\":\"278\",\"name\":\"系统设置\",\"checked\":\"false\",\"pId\":277,\"id\":278,\"open\":\"false\",\"order\":278},\"399\":{\"level\":\"399\",\"name\":\"数据清洗日志\",\"checked\":\"true\",\"pId\":396,\"id\":399,\"open\":\"false\",\"order\":399},\"279\":{\"level\":\"279\",\"name\":\"集群设置\",\"checked\":\"false\",\"pId\":277,\"id\":279,\"open\":\"false\",\"order\":279},\"312\":{\"level\":\"312\",\"name\":\"组件管理\",\"checked\":\"true\",\"pId\":249,\"id\":312,\"open\":\"false\",\"order\":312},\"313\":{\"level\":\"313\",\"name\":\"Spark组件\",\"checked\":\"true\",\"pId\":312,\"id\":313,\"open\":\"false\",\"order\":313},\"314\":{\"level\":\"314\",\"name\":\"Hadoop组件\",\"checked\":\"true\",\"pId\":312,\"id\":314,\"open\":\"false\",\"order\":314},\"318\":{\"level\":\"318\",\"name\":\"数据接入调度\",\"checked\":\"true\",\"pId\":6,\"id\":318,\"open\":\"true\",\"order\":318},\"319\":{\"level\":\"319\",\"name\":\"数据清洗调度\",\"checked\":\"true\",\"pId\":6,\"id\":319,\"open\":\"false\",\"order\":319},\"-1\":{\"level\":\"-1\",\"name\":\"IOV管理平台\",\"checked\":\"true\",\"pId\":0,\"id\":-1,\"open\":\"true\",\"order\":-1},\"281\":{\"level\":\"281\",\"name\":\"文件数据\",\"checked\":\"true\",\"pId\":47,\"id\":281,\"open\":\"false\",\"order\":281},\"283\":{\"level\":\"283\",\"name\":\"数据库数据\",\"checked\":\"true\",\"pId\":47,\"id\":283,\"open\":\"false\",\"order\":283},\"320\":{\"level\":\"320\",\"name\":\"基础数据目录\",\"checked\":\"true\",\"pId\":270,\"id\":320,\"open\":\"false\",\"order\":320},\"321\":{\"level\":\"321\",\"name\":\"分析数据目录\",\"checked\":\"true\",\"pId\":270,\"id\":321,\"open\":\"false\",\"order\":321},\"290\":{\"level\":\"4\",\"name\":\"组件管理\",\"checked\":\"true\",\"pId\":3,\"id\":290,\"open\":\"true\",\"order\":5},\"170\":{\"level\":\"9\",\"name\":\"平台运营\",\"checked\":\"true\",\"pId\":-1,\"id\":170,\"open\":\"true\",\"order\":9},\"291\":{\"level\":\"291\",\"name\":\"组件配置\",\"checked\":\"true\",\"pId\":290,\"id\":291,\"open\":\"false\",\"order\":291},\"292\":{\"level\":\"292\",\"name\":\"LIB库\",\"checked\":\"true\",\"pId\":290,\"id\":292,\"open\":\"false\",\"order\":292},\"175\":{\"level\":\"4\",\"name\":\"资源审批\",\"checked\":\"true\",\"pId\":170,\"id\":175,\"open\":\"false\",\"order\":175},\"176\":{\"level\":\"3\",\"name\":\"资源发布\",\"checked\":\"true\",\"pId\":170,\"id\":176,\"open\":\"false\",\"order\":174},\"331\":{\"level\":\"331\",\"name\":\"基础数据\",\"checked\":\"true\",\"pId\":178,\"id\":331,\"open\":\"false\",\"order\":331},\"178\":{\"level\":\"1\",\"name\":\"资源中心\",\"checked\":\"true\",\"pId\":170,\"id\":178,\"open\":\"true\",\"order\":172},\"332\":{\"level\":\"332\",\"name\":\"分析数据\",\"checked\":\"true\",\"pId\":178,\"id\":332,\"open\":\"false\",\"order\":332},\"336\":{\"level\":\"336\",\"name\":\"初始设置\",\"checked\":\"false\",\"pId\":277,\"id\":336,\"open\":\"false\",\"order\":336},\"337\":{\"level\":\"3\",\"name\":\"汇聚日志\",\"checked\":\"true\",\"pId\":361,\"id\":337,\"open\":\"false\",\"order\":2},\"338\":{\"level\":\"338\",\"name\":\"接口服务\",\"checked\":\"true\",\"pId\":239,\"id\":338,\"open\":\"true\",\"order\":6},\"340\":{\"level\":\"340\",\"name\":\"原始数据存储\",\"checked\":\"true\",\"pId\":263,\"id\":340,\"open\":\"false\",\"order\":340},\"341\":{\"level\":\"341\",\"name\":\"基础数据存储\",\"checked\":\"true\",\"pId\":263,\"id\":341,\"open\":\"false\",\"order\":341},\"342\":{\"level\":\"342\",\"name\":\"分析数据存储\",\"checked\":\"true\",\"pId\":263,\"id\":342,\"open\":\"false\",\"order\":342},\"227\":{\"level\":\"1\",\"name\":\"数据资源\",\"checked\":\"true\",\"pId\":176,\"id\":227,\"open\":\"false\",\"order\":227},\"229\":{\"level\":\"229\",\"name\":\"数据资源\",\"checked\":\"true\",\"pId\":175,\"id\":229,\"open\":\"false\",\"order\":229}}', '2020-12-01 14:55:26', '2020-06-22 16:02:58');
INSERT INTO `cs_role` VALUES (3, '3', '普通人员', '{\"230\":{\"level\":\"230\",\"name\":\"原始数据\",\"checked\":\"true\",\"pId\":178,\"id\":230,\"open\":\"false\",\"order\":230},\"231\":{\"level\":\"231\",\"name\":\"API服务\",\"checked\":\"true\",\"pId\":176,\"id\":231,\"open\":\"false\",\"order\":231},\"352\":{\"level\":\"352\",\"name\":\"流程日志\",\"checked\":\"true\",\"pId\":249,\"id\":352,\"open\":\"false\",\"order\":352},\"353\":{\"level\":\"353\",\"name\":\"接口服务\",\"checked\":\"true\",\"pId\":249,\"id\":353,\"open\":\"false\",\"order\":353},\"356\":{\"level\":\"2\",\"name\":\"流程管理\",\"checked\":\"true\",\"pId\":3,\"id\":356,\"open\":\"false\",\"order\":1},\"239\":{\"level\":\"2\",\"name\":\"数据接入\",\"checked\":\"true\",\"pId\":-1,\"id\":239,\"open\":\"false\",\"order\":2},\"10\":{\"level\":\"11\",\"name\":\"资源包管理\",\"checked\":\"true\",\"pId\":7,\"id\":10,\"open\":\"false\",\"order\":4},\"11\":{\"level\":\"9\",\"name\":\"服务部署\",\"checked\":\"true\",\"pId\":7,\"id\":11,\"open\":\"false\",\"order\":2},\"13\":{\"level\":\"13\",\"name\":\"用户管理\",\"checked\":\"true\",\"pId\":402,\"id\":13,\"open\":\"false\",\"order\":2},\"14\":{\"level\":\"14\",\"name\":\"角色管理\",\"checked\":\"true\",\"pId\":402,\"id\":14,\"open\":\"false\",\"order\":1},\"15\":{\"level\":\"15\",\"name\":\"菜单管理\",\"checked\":\"true\",\"pId\":403,\"id\":15,\"open\":\"false\",\"order\":7},\"240\":{\"level\":\"240\",\"name\":\"数据项注册\",\"checked\":\"true\",\"pId\":239,\"id\":240,\"open\":\"false\",\"order\":1},\"361\":{\"level\":\"3\",\"name\":\"汇聚配置\",\"checked\":\"true\",\"pId\":3,\"id\":361,\"open\":\"false\",\"order\":2},\"241\":{\"level\":\"365\",\"name\":\"集群管理\",\"checked\":\"true\",\"pId\":239,\"id\":241,\"open\":\"false\",\"order\":5},\"362\":{\"level\":\"362\",\"name\":\"数据项配置\",\"checked\":\"true\",\"pId\":361,\"id\":362,\"open\":\"false\",\"order\":1},\"242\":{\"level\":\"241\",\"name\":\"流程管理\",\"checked\":\"true\",\"pId\":239,\"id\":242,\"open\":\"false\",\"order\":4},\"363\":{\"level\":\"363\",\"name\":\"流程数据项\",\"checked\":\"true\",\"pId\":361,\"id\":363,\"open\":\"false\",\"order\":3},\"1\":{\"level\":\"1\",\"name\":\"首页\",\"checked\":\"true\",\"pId\":-1,\"id\":1,\"open\":\"false\",\"order\":1},\"244\":{\"level\":\"52\",\"name\":\"数据建模\",\"checked\":\"true\",\"pId\":4,\"id\":244,\"open\":\"false\",\"order\":52},\"365\":{\"level\":\"243\",\"name\":\"任务管理\",\"checked\":\"true\",\"pId\":239,\"id\":365,\"open\":\"false\",\"order\":2},\"3\":{\"level\":\"3\",\"name\":\"数据汇聚\",\"checked\":\"true\",\"pId\":-1,\"id\":3,\"open\":\"false\",\"order\":3},\"245\":{\"level\":\"247\",\"name\":\"分析数据模型\",\"checked\":\"true\",\"pId\":244,\"id\":245,\"open\":\"false\",\"order\":247},\"4\":{\"level\":\"4\",\"name\":\"数据存储\",\"checked\":\"true\",\"pId\":-1,\"id\":4,\"open\":\"false\",\"order\":4},\"246\":{\"level\":\"245\",\"name\":\"原始数据模型\",\"checked\":\"true\",\"pId\":244,\"id\":246,\"open\":\"false\",\"order\":245},\"367\":{\"level\":\"367\",\"name\":\"数据库\",\"checked\":\"true\",\"pId\":240,\"id\":367,\"open\":\"false\",\"order\":367},\"400\":{\"level\":\"400\",\"name\":\"流程定制\",\"checked\":\"false\",\"pId\":356,\"id\":400,\"open\":\"false\",\"order\":400},\"247\":{\"level\":\"246\",\"name\":\"基础数据模型\",\"checked\":\"true\",\"pId\":244,\"id\":247,\"open\":\"false\",\"order\":246},\"368\":{\"level\":\"368\",\"name\":\"文件数据\",\"checked\":\"true\",\"pId\":240,\"id\":368,\"open\":\"false\",\"order\":368},\"401\":{\"level\":\"401\",\"name\":\"流程日志\",\"checked\":\"false\",\"pId\":356,\"id\":401,\"open\":\"false\",\"order\":401},\"6\":{\"level\":\"7\",\"name\":\"任务调度\",\"checked\":\"true\",\"pId\":-1,\"id\":6,\"open\":\"false\",\"order\":7},\"248\":{\"level\":\"10\",\"name\":\"集群管理\",\"checked\":\"true\",\"pId\":3,\"id\":248,\"open\":\"false\",\"order\":9},\"369\":{\"level\":\"369\",\"name\":\"数据库\",\"checked\":\"true\",\"pId\":365,\"id\":369,\"open\":\"false\",\"order\":369},\"402\":{\"level\":\"402\",\"name\":\"用户中心\",\"checked\":\"false\",\"pId\":7,\"id\":402,\"open\":\"false\",\"order\":5},\"7\":{\"level\":\"8\",\"name\":\"平台运维\",\"checked\":\"true\",\"pId\":-1,\"id\":7,\"open\":\"false\",\"order\":8},\"249\":{\"level\":\"5\",\"name\":\"数据清洗\",\"checked\":\"true\",\"pId\":-1,\"id\":249,\"open\":\"true\",\"order\":5},\"403\":{\"level\":\"403\",\"name\":\"系统管理\",\"checked\":\"false\",\"pId\":7,\"id\":403,\"open\":\"false\",\"order\":6},\"8\":{\"level\":\"8\",\"name\":\"平台服务\",\"checked\":\"true\",\"pId\":7,\"id\":8,\"open\":\"false\",\"order\":1},\"404\":{\"level\":\"404\",\"name\":\"基础接口\",\"checked\":\"false\",\"pId\":403,\"id\":404,\"open\":\"false\",\"order\":404},\"9\":{\"level\":\"10\",\"name\":\"服务器管理\",\"checked\":\"true\",\"pId\":7,\"id\":9,\"open\":\"false\",\"order\":3},\"405\":{\"level\":\"405\",\"name\":\"应用资源\",\"checked\":\"false\",\"pId\":178,\"id\":405,\"open\":\"false\",\"order\":405},\"406\":{\"level\":\"406\",\"name\":\"面板管理\",\"checked\":\"false\",\"pId\":170,\"id\":406,\"open\":\"false\",\"order\":406},\"407\":{\"level\":\"407\",\"name\":\"模板管理\",\"checked\":\"false\",\"pId\":406,\"id\":407,\"open\":\"false\",\"order\":407},\"408\":{\"level\":\"408\",\"name\":\"面板定制\",\"checked\":\"false\",\"pId\":406,\"id\":408,\"open\":\"false\",\"order\":408},\"22\":{\"level\":\"22\",\"name\":\"权限管理\",\"checked\":\"true\",\"pId\":403,\"id\":22,\"open\":\"false\",\"order\":8},\"370\":{\"level\":\"370\",\"name\":\"文件数据\",\"checked\":\"true\",\"pId\":365,\"id\":370,\"open\":\"false\",\"order\":370},\"372\":{\"level\":\"6\",\"name\":\"数据分析\",\"checked\":\"true\",\"pId\":-1,\"id\":372,\"open\":\"false\",\"order\":6},\"373\":{\"level\":\"373\",\"name\":\"模型管理\",\"checked\":\"true\",\"pId\":372,\"id\":373,\"open\":\"false\",\"order\":373},\"374\":{\"level\":\"374\",\"name\":\"图表分析\",\"checked\":\"true\",\"pId\":372,\"id\":374,\"open\":\"false\",\"order\":374},\"375\":{\"level\":\"375\",\"name\":\"模板管理\",\"checked\":\"true\",\"pId\":372,\"id\":375,\"open\":\"false\",\"order\":375},\"255\":{\"level\":\"255\",\"name\":\"图表资源\",\"checked\":\"true\",\"pId\":175,\"id\":255,\"open\":\"false\",\"order\":255},\"376\":{\"level\":\"376\",\"name\":\"分析字典\",\"checked\":\"true\",\"pId\":372,\"id\":376,\"open\":\"false\",\"order\":376},\"410\":{\"level\":\"410\",\"name\":\"展示资源\",\"checked\":\"false\",\"pId\":178,\"id\":410,\"open\":\"false\",\"order\":410},\"378\":{\"level\":\"378\",\"name\":\"函数管理\",\"checked\":\"true\",\"pId\":372,\"id\":378,\"open\":\"false\",\"order\":378},\"411\":{\"level\":\"411\",\"name\":\"应用注册\",\"checked\":\"false\",\"pId\":7,\"id\":411,\"open\":\"false\",\"order\":411},\"412\":{\"level\":\"412\",\"name\":\"资源注册\",\"checked\":\"false\",\"pId\":7,\"id\":412,\"open\":\"false\",\"order\":412},\"413\":{\"level\":\"413\",\"name\":\"页面资源注册\",\"checked\":\"false\",\"pId\":412,\"id\":413,\"open\":\"false\",\"order\":413},\"414\":{\"level\":\"414\",\"name\":\"test122\",\"checked\":\"false\",\"pId\":-1,\"id\":414,\"open\":\"false\"},\"415\":{\"level\":\"415\",\"name\":\"去去去\",\"checked\":\"false\",\"pId\":414,\"id\":415,\"open\":\"false\"},\"380\":{\"level\":\"2\",\"name\":\"图表资源\",\"checked\":\"true\",\"pId\":176,\"id\":380,\"open\":\"false\",\"order\":380},\"381\":{\"level\":\"2\",\"name\":\"平台接口\",\"checked\":\"true\",\"pId\":170,\"id\":381,\"open\":\"false\",\"order\":381},\"383\":{\"level\":\"383\",\"name\":\"数据接入\",\"checked\":\"true\",\"pId\":381,\"id\":383,\"open\":\"false\",\"order\":383},\"263\":{\"level\":\"56\",\"name\":\"存储管理\",\"checked\":\"true\",\"pId\":4,\"id\":263,\"open\":\"false\",\"order\":56},\"384\":{\"level\":\"384\",\"name\":\"数据清洗\",\"checked\":\"true\",\"pId\":381,\"id\":384,\"open\":\"false\",\"order\":384},\"385\":{\"level\":\"385\",\"name\":\"日志查看\",\"checked\":\"true\",\"pId\":403,\"id\":385,\"open\":\"false\",\"order\":10},\"386\":{\"level\":\"386\",\"name\":\"文件数据\",\"checked\":\"true\",\"pId\":338,\"id\":386,\"open\":\"false\",\"order\":386},\"387\":{\"level\":\"387\",\"name\":\"数据库\",\"checked\":\"true\",\"pId\":338,\"id\":387,\"open\":\"false\",\"order\":387},\"304\":{\"level\":\"304\",\"name\":\"基础接口\",\"checked\":\"true\",\"pId\":381,\"id\":304,\"open\":\"false\",\"order\":304},\"306\":{\"level\":\"306\",\"name\":\"脚本管理\",\"checked\":\"false\",\"pId\":249,\"id\":306,\"open\":\"true\",\"order\":306},\"309\":{\"level\":\"309\",\"name\":\"流程管理\",\"checked\":\"true\",\"pId\":249,\"id\":309,\"open\":\"false\",\"order\":309},\"47\":{\"level\":\"244\",\"name\":\"数据浏览\",\"checked\":\"true\",\"pId\":4,\"id\":47,\"open\":\"false\",\"order\":244},\"390\":{\"level\":\"390\",\"name\":\"分析图表\",\"checked\":\"true\",\"pId\":178,\"id\":390,\"open\":\"false\",\"order\":390},\"270\":{\"level\":\"42\",\"name\":\"数据目录\",\"checked\":\"true\",\"pId\":4,\"id\":270,\"open\":\"false\",\"order\":42},\"271\":{\"level\":\"271\",\"name\":\"元数据\",\"checked\":\"true\",\"pId\":270,\"id\":271,\"open\":\"false\",\"order\":271},\"392\":{\"level\":\"392\",\"name\":\"集群服务\",\"checked\":\"false\",\"pId\":-1,\"id\":392,\"open\":\"false\",\"order\":392},\"272\":{\"level\":\"272\",\"name\":\"原始数据目录\",\"checked\":\"true\",\"pId\":270,\"id\":272,\"open\":\"false\",\"order\":272},\"393\":{\"level\":\"393\",\"name\":\"系统函数\",\"checked\":\"false\",\"pId\":372,\"id\":393,\"open\":\"false\",\"order\":393},\"394\":{\"level\":\"394\",\"name\":\"数据库\",\"checked\":\"false\",\"pId\":318,\"id\":394,\"open\":\"false\",\"order\":394},\"395\":{\"level\":\"395\",\"name\":\"文件数据\",\"checked\":\"false\",\"pId\":318,\"id\":395,\"open\":\"false\",\"order\":395},\"396\":{\"level\":\"396\",\"name\":\"调度日志\",\"checked\":\"false\",\"pId\":6,\"id\":396,\"open\":\"false\",\"order\":396},\"397\":{\"level\":\"397\",\"name\":\"数据库调度日志\",\"checked\":\"false\",\"pId\":396,\"id\":397,\"open\":\"false\",\"order\":397},\"277\":{\"level\":\"277\",\"name\":\"平台设置\",\"checked\":\"true\",\"pId\":7,\"id\":277,\"open\":\"false\",\"order\":9},\"398\":{\"level\":\"398\",\"name\":\"文件调度日志\",\"checked\":\"false\",\"pId\":396,\"id\":398,\"open\":\"false\",\"order\":398},\"278\":{\"level\":\"278\",\"name\":\"系统设置\",\"checked\":\"true\",\"pId\":277,\"id\":278,\"open\":\"false\",\"order\":278},\"399\":{\"level\":\"399\",\"name\":\"数据清洗日志\",\"checked\":\"false\",\"pId\":396,\"id\":399,\"open\":\"false\",\"order\":399},\"279\":{\"level\":\"279\",\"name\":\"集群设置\",\"checked\":\"true\",\"pId\":277,\"id\":279,\"open\":\"false\",\"order\":279},\"312\":{\"level\":\"312\",\"name\":\"组件管理\",\"checked\":\"true\",\"pId\":249,\"id\":312,\"open\":\"false\",\"order\":312},\"313\":{\"level\":\"313\",\"name\":\"Spark组件\",\"checked\":\"true\",\"pId\":312,\"id\":313,\"open\":\"false\",\"order\":313},\"314\":{\"level\":\"314\",\"name\":\"Hadoop组件\",\"checked\":\"true\",\"pId\":312,\"id\":314,\"open\":\"false\",\"order\":314},\"318\":{\"level\":\"318\",\"name\":\"数据接入调度\",\"checked\":\"true\",\"pId\":6,\"id\":318,\"open\":\"false\",\"order\":318},\"319\":{\"level\":\"319\",\"name\":\"数据清洗调度\",\"checked\":\"true\",\"pId\":6,\"id\":319,\"open\":\"false\",\"order\":319},\"-1\":{\"level\":\"-1\",\"name\":\"IOV管理平台\",\"checked\":\"true\",\"pId\":0,\"id\":-1,\"open\":\"true\",\"order\":-1},\"281\":{\"level\":\"281\",\"name\":\"文件数据\",\"checked\":\"true\",\"pId\":47,\"id\":281,\"open\":\"false\",\"order\":281},\"283\":{\"level\":\"283\",\"name\":\"数据库数据\",\"checked\":\"true\",\"pId\":47,\"id\":283,\"open\":\"false\",\"order\":283},\"320\":{\"level\":\"320\",\"name\":\"基础数据目录\",\"checked\":\"true\",\"pId\":270,\"id\":320,\"open\":\"false\",\"order\":320},\"321\":{\"level\":\"321\",\"name\":\"分析数据目录\",\"checked\":\"true\",\"pId\":270,\"id\":321,\"open\":\"false\",\"order\":321},\"290\":{\"level\":\"6\",\"name\":\"组件管理\",\"checked\":\"true\",\"pId\":3,\"id\":290,\"open\":\"false\",\"order\":5},\"170\":{\"level\":\"9\",\"name\":\"平台运营\",\"checked\":\"true\",\"pId\":-1,\"id\":170,\"open\":\"false\",\"order\":9},\"291\":{\"level\":\"291\",\"name\":\"组件配置\",\"checked\":\"true\",\"pId\":290,\"id\":291,\"open\":\"false\",\"order\":291},\"292\":{\"level\":\"292\",\"name\":\"LIB库\",\"checked\":\"true\",\"pId\":290,\"id\":292,\"open\":\"false\",\"order\":292},\"175\":{\"level\":\"4\",\"name\":\"资源审批\",\"checked\":\"true\",\"pId\":170,\"id\":175,\"open\":\"false\",\"order\":175},\"176\":{\"level\":\"3\",\"name\":\"资源发布\",\"checked\":\"true\",\"pId\":170,\"id\":176,\"open\":\"false\",\"order\":174},\"331\":{\"level\":\"331\",\"name\":\"基础数据\",\"checked\":\"true\",\"pId\":178,\"id\":331,\"open\":\"false\",\"order\":331},\"178\":{\"level\":\"1\",\"name\":\"资源中心\",\"checked\":\"true\",\"pId\":170,\"id\":178,\"open\":\"false\",\"order\":172},\"332\":{\"level\":\"332\",\"name\":\"分析数据\",\"checked\":\"true\",\"pId\":178,\"id\":332,\"open\":\"false\",\"order\":332},\"336\":{\"level\":\"336\",\"name\":\"初始设置\",\"checked\":\"true\",\"pId\":277,\"id\":336,\"open\":\"false\",\"order\":336},\"337\":{\"level\":\"5\",\"name\":\"汇聚日志\",\"checked\":\"true\",\"pId\":361,\"id\":337,\"open\":\"false\",\"order\":2},\"338\":{\"level\":\"338\",\"name\":\"接口服务\",\"checked\":\"true\",\"pId\":239,\"id\":338,\"open\":\"false\",\"order\":6},\"340\":{\"level\":\"340\",\"name\":\"原始数据存储\",\"checked\":\"true\",\"pId\":263,\"id\":340,\"open\":\"false\",\"order\":340},\"341\":{\"level\":\"341\",\"name\":\"基础数据存储\",\"checked\":\"true\",\"pId\":263,\"id\":341,\"open\":\"false\",\"order\":341},\"342\":{\"level\":\"342\",\"name\":\"分析数据存储\",\"checked\":\"true\",\"pId\":263,\"id\":342,\"open\":\"false\",\"order\":342},\"227\":{\"level\":\"1\",\"name\":\"数据资源\",\"checked\":\"true\",\"pId\":176,\"id\":227,\"open\":\"false\",\"order\":227},\"229\":{\"level\":\"229\",\"name\":\"数据资源\",\"checked\":\"true\",\"pId\":175,\"id\":229,\"open\":\"false\",\"order\":229}}', '2020-12-01 14:55:26', '2018-02-28 17:56:28');
INSERT INTO `cs_role` VALUES (8, '2', 'cindy_test', NULL, '2020-12-01 14:55:26', '2020-11-26 17:23:55');
INSERT INTO `cs_role` VALUES (10, '2', 'test123', NULL, '2020-11-30 17:47:57', '2020-11-30 17:47:57');
INSERT INTO `cs_role` VALUES (11, '2', 'coffee', NULL, '2020-12-01 14:55:26', '2020-12-01 13:35:24');
INSERT INTO `cs_role` VALUES (13, '2', 'xue_test', NULL, '2020-12-02 10:06:20', '2020-12-02 10:06:20');
INSERT INTO `cs_role` VALUES (15, '2', 'qy', NULL, '2020-12-10 10:45:45', '2020-12-10 10:45:45');
INSERT INTO `cs_role` VALUES (16, '3', 'qy2', NULL, '2020-12-10 10:45:53', '2020-12-10 10:45:53');
INSERT INTO `cs_role` VALUES (17, '3', 'cindy2', NULL, '2020-12-10 10:46:05', '2020-12-10 10:46:05');
INSERT INTO `cs_role` VALUES (18, '2', '测试管理', NULL, '2020-12-10 10:46:24', '2020-12-10 10:46:24');
INSERT INTO `cs_role` VALUES (19, '2', 'xue_test2', NULL, '2020-12-10 16:52:31', '2020-12-10 16:52:31');
INSERT INTO `cs_role` VALUES (20, '2', 'tz_test', NULL, '2020-12-16 14:23:36', '2020-12-16 14:23:36');

-- ----------------------------
-- Table structure for cs_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `cs_role_permission`;
CREATE TABLE `cs_role_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NULL DEFAULT NULL,
  `menu_id` int(11) NULL DEFAULT NULL,
  `subsystem_id` int(11) NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182496 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_role_permission
-- ----------------------------
INSERT INTO `cs_role_permission` VALUES (179016, 1, -1, 7, '2020-12-01 14:55:26', '2020-11-26 19:06:59');
INSERT INTO `cs_role_permission` VALUES (179017, 1, 392, 7, '2020-12-01 14:55:26', '2020-11-26 19:06:59');
INSERT INTO `cs_role_permission` VALUES (179253, 2, -1, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179254, 2, 6, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179255, 2, 576, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179256, 2, 889, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179257, 2, 319, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179258, 2, 428, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179259, 2, 429, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179260, 2, 430, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179261, 2, 396, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179262, 2, 399, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179263, 2, 444, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179264, 2, 445, 17, '2020-12-01 14:55:26', '2020-11-26 20:27:38');
INSERT INTO `cs_role_permission` VALUES (179350, 2, -1, 21, '2020-12-01 14:55:26', '2020-11-27 09:32:59');
INSERT INTO `cs_role_permission` VALUES (179351, 2, 709, 21, '2020-12-01 14:55:26', '2020-11-27 09:32:59');
INSERT INTO `cs_role_permission` VALUES (179352, 2, 714, 21, '2020-12-01 14:55:26', '2020-11-27 09:32:59');
INSERT INTO `cs_role_permission` VALUES (179353, 2, 710, 21, '2020-12-01 14:55:26', '2020-11-27 09:32:59');
INSERT INTO `cs_role_permission` VALUES (179354, 2, 1044, 21, '2020-12-01 14:55:26', '2020-11-27 09:32:59');
INSERT INTO `cs_role_permission` VALUES (179355, 2, 712, 21, '2020-12-01 14:55:26', '2020-11-27 09:32:59');
INSERT INTO `cs_role_permission` VALUES (179356, 2, 996, 21, '2020-12-01 14:55:26', '2020-11-27 09:32:59');
INSERT INTO `cs_role_permission` VALUES (179357, 2, -1, 57, '2020-12-01 14:55:26', '2020-11-27 09:33:48');
INSERT INTO `cs_role_permission` VALUES (179358, 2, 931, 57, '2020-12-01 14:55:26', '2020-11-27 09:33:48');
INSERT INTO `cs_role_permission` VALUES (179359, 2, 944, 57, '2020-12-01 14:55:26', '2020-11-27 09:33:48');
INSERT INTO `cs_role_permission` VALUES (179360, 2, 949, 57, '2020-12-01 14:55:26', '2020-11-27 09:33:48');
INSERT INTO `cs_role_permission` VALUES (179361, 2, 946, 57, '2020-12-01 14:55:26', '2020-11-27 09:33:48');
INSERT INTO `cs_role_permission` VALUES (179362, 2, 1014, 57, '2020-12-01 14:55:26', '2020-11-27 09:33:48');
INSERT INTO `cs_role_permission` VALUES (179363, 2, 1015, 57, '2020-12-01 14:55:26', '2020-11-27 09:33:48');
INSERT INTO `cs_role_permission` VALUES (179364, 2, 1016, 57, '2020-12-01 14:55:26', '2020-11-27 09:33:48');
INSERT INTO `cs_role_permission` VALUES (179365, 2, 1049, 57, '2020-12-01 14:55:26', '2020-11-27 09:33:48');
INSERT INTO `cs_role_permission` VALUES (179366, 2, 1038, 57, '2020-12-01 14:55:26', '2020-11-27 09:33:48');
INSERT INTO `cs_role_permission` VALUES (179367, 2, 1046, 57, '2020-12-01 14:55:26', '2020-11-27 09:33:48');
INSERT INTO `cs_role_permission` VALUES (179526, 3, NULL, -1, '2020-12-01 14:55:26', '2020-11-28 11:33:12');
INSERT INTO `cs_role_permission` VALUES (179527, 3, NULL, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:12');
INSERT INTO `cs_role_permission` VALUES (179528, 3, NULL, 3, '2020-12-01 14:55:26', '2020-11-28 11:33:12');
INSERT INTO `cs_role_permission` VALUES (179529, 3, NULL, 21, '2020-12-01 14:55:26', '2020-11-28 11:33:12');
INSERT INTO `cs_role_permission` VALUES (179530, 3, NULL, 17, '2020-12-01 14:55:26', '2020-11-28 11:33:12');
INSERT INTO `cs_role_permission` VALUES (179531, 3, NULL, 57, '2020-12-01 14:55:26', '2020-11-28 11:33:12');
INSERT INTO `cs_role_permission` VALUES (179532, 3, -1, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179533, 3, 1051, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179534, 3, 1052, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179535, 3, 239, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179536, 3, 571, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179537, 3, 769, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179538, 3, 367, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179539, 3, 368, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179540, 3, 820, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179541, 3, 1056, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179542, 3, 1057, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179543, 3, 1058, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179544, 3, 1059, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179545, 3, 770, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179546, 3, 617, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179547, 3, 776, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179548, 3, 1045, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179549, 3, 240, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179550, 3, 459, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179551, 3, 771, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179552, 3, 365, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179553, 3, 369, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179554, 3, 370, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179555, 3, 823, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179556, 3, 675, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179557, 3, 772, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179558, 3, 1050, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179559, 3, 1061, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179560, 3, 1062, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179561, 3, 1063, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179562, 3, 1064, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179563, 3, 1021, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179564, 3, 1022, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179565, 3, 1023, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179566, 3, 1024, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179567, 3, 1025, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179568, 3, 1060, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179569, 3, 1026, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179570, 3, 1027, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179571, 3, 1028, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179572, 3, 1055, 2, '2020-12-01 14:55:26', '2020-11-28 11:33:18');
INSERT INTO `cs_role_permission` VALUES (179579, 8, -1, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179580, 8, 1051, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179581, 8, 1052, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179582, 8, 239, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179583, 8, 571, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179584, 8, 769, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179585, 8, 367, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179586, 8, 368, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179587, 8, 820, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179588, 8, 1056, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179589, 8, 1057, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179590, 8, 1058, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179591, 8, 1059, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179592, 8, 770, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179593, 8, 617, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179594, 8, 776, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179595, 8, 1045, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179596, 8, 240, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179597, 8, 459, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179598, 8, 771, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179599, 8, 365, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179600, 8, 369, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179601, 8, 370, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179602, 8, 823, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179603, 8, 675, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179604, 8, 772, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179605, 8, 1050, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179606, 8, 1061, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179607, 8, 1062, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179608, 8, 1063, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179609, 8, 1064, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179610, 8, 1021, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179611, 8, 1022, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179612, 8, 1023, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179613, 8, 1024, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179614, 8, 1025, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179615, 8, 1060, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179616, 8, 1026, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179617, 8, 1027, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179618, 8, 1028, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179619, 8, 1055, 2, '2020-12-01 14:55:26', '2020-11-28 11:57:42');
INSERT INTO `cs_role_permission` VALUES (179664, 1, NULL, -1, '2020-12-01 14:55:26', '2020-11-28 12:05:47');
INSERT INTO `cs_role_permission` VALUES (179665, 1, NULL, 6, '2020-12-01 14:55:26', '2020-11-28 12:05:47');
INSERT INTO `cs_role_permission` VALUES (179666, 1, NULL, 7, '2020-12-01 14:55:26', '2020-11-28 12:05:47');
INSERT INTO `cs_role_permission` VALUES (179779, 2, -1, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179780, 2, 239, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179781, 2, 571, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179782, 2, 769, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179783, 2, 367, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179784, 2, 368, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179785, 2, 820, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179786, 2, 1056, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179787, 2, 1057, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179788, 2, 1058, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179789, 2, 1059, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179790, 2, 770, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179791, 2, 617, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179792, 2, 776, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179793, 2, 1045, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179794, 2, 240, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179795, 2, 459, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179796, 2, 771, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179797, 2, 365, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179798, 2, 369, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179799, 2, 370, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179800, 2, 823, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179801, 2, 675, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179802, 2, 772, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179803, 2, 1050, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179804, 2, 1061, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179805, 2, 1062, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179806, 2, 1063, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179807, 2, 1064, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179808, 2, 1021, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179809, 2, 1022, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179810, 2, 1023, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179811, 2, 1024, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179812, 2, 1025, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179813, 2, 1060, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179814, 2, 1026, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179815, 2, 1027, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179816, 2, 1028, 2, '2020-12-01 14:55:26', '2020-11-28 14:16:53');
INSERT INTO `cs_role_permission` VALUES (179817, 2, NULL, -1, '2020-12-01 14:55:26', '2020-11-28 15:59:09');
INSERT INTO `cs_role_permission` VALUES (179818, 2, NULL, 2, '2020-12-01 14:55:26', '2020-11-28 15:59:09');
INSERT INTO `cs_role_permission` VALUES (179819, 2, NULL, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:09');
INSERT INTO `cs_role_permission` VALUES (179820, 2, NULL, 21, '2020-12-01 14:55:26', '2020-11-28 15:59:09');
INSERT INTO `cs_role_permission` VALUES (179821, 2, NULL, 17, '2020-12-01 14:55:26', '2020-11-28 15:59:09');
INSERT INTO `cs_role_permission` VALUES (179822, 2, NULL, 57, '2020-12-01 14:55:26', '2020-11-28 15:59:09');
INSERT INTO `cs_role_permission` VALUES (179823, 2, -1, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179824, 2, 680, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179825, 2, 685, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179826, 2, 819, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179827, 2, 705, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179828, 2, 706, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179829, 2, 1065, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179830, 2, 890, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179831, 2, 891, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179832, 2, 892, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179833, 2, 1048, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179834, 2, 687, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179835, 2, 692, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179836, 2, 693, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179837, 2, 694, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179838, 2, 918, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179839, 2, 893, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179840, 2, 895, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179841, 2, 901, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179842, 2, 902, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179843, 2, 904, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179844, 2, 905, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179845, 2, 903, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179846, 2, 906, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179847, 2, 907, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179848, 2, 908, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179849, 2, 909, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179850, 2, 910, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179851, 2, 911, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179852, 2, 912, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179853, 2, 894, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179854, 2, 917, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179855, 2, 939, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179856, 2, 913, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179857, 2, 940, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179858, 2, 941, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179859, 2, 942, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179860, 2, 915, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179861, 2, 916, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179862, 2, 682, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179863, 2, 990, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179864, 2, 697, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179865, 2, 698, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179866, 2, 699, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179867, 2, 930, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179868, 2, 991, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179869, 2, 992, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179870, 2, 993, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179871, 2, 994, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179872, 2, 995, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179873, 2, 950, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179874, 2, 958, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179875, 2, 954, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179876, 2, 953, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179877, 2, 952, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179878, 2, 951, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179879, 2, 1029, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179880, 2, 1030, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179881, 2, 1035, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179882, 2, 1036, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179883, 2, 1037, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179884, 2, 884, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179885, 2, 885, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179886, 2, 886, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179887, 2, 887, 3, '2020-12-01 14:55:26', '2020-11-28 15:59:10');
INSERT INTO `cs_role_permission` VALUES (179888, 10, NULL, -1, '2020-12-01 14:55:26', '2020-11-30 17:46:52');
INSERT INTO `cs_role_permission` VALUES (179889, 10, NULL, 2, '2020-12-01 14:55:26', '2020-11-30 17:46:52');
INSERT INTO `cs_role_permission` VALUES (179890, 10, NULL, 3, '2020-12-01 14:55:26', '2020-11-30 17:46:52');
INSERT INTO `cs_role_permission` VALUES (179891, 10, NULL, 21, '2020-12-01 14:55:26', '2020-11-30 17:46:52');
INSERT INTO `cs_role_permission` VALUES (179892, 10, NULL, 17, '2020-12-01 14:55:26', '2020-11-30 17:46:52');
INSERT INTO `cs_role_permission` VALUES (179893, 10, NULL, 57, '2020-12-01 14:55:26', '2020-11-30 17:46:52');
INSERT INTO `cs_role_permission` VALUES (180010, 10, -1, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180011, 10, 680, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180012, 10, 685, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180013, 10, 819, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180014, 10, 705, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180015, 10, 706, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180016, 10, 822, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180017, 10, 1065, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180018, 10, 890, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180019, 10, 891, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180020, 10, 892, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180021, 10, 1048, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180022, 10, 686, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180023, 10, 687, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180024, 10, 692, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180025, 10, 693, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180026, 10, 694, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180027, 10, 728, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180028, 10, 918, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180029, 10, 688, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180030, 10, 815, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180031, 10, 816, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180032, 10, 817, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180033, 10, 818, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180034, 10, 1066, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180035, 10, 893, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180036, 10, 895, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180037, 10, 896, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180038, 10, 897, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180039, 10, 898, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180040, 10, 899, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180041, 10, 900, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180042, 10, 901, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180043, 10, 902, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180044, 10, 904, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180045, 10, 905, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180046, 10, 903, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180047, 10, 906, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180048, 10, 907, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180049, 10, 908, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180050, 10, 909, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180051, 10, 910, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180052, 10, 911, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180053, 10, 912, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180054, 10, 894, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180055, 10, 917, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180056, 10, 939, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180057, 10, 913, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180058, 10, 940, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180059, 10, 941, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180060, 10, 942, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180061, 10, 914, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180062, 10, 915, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180063, 10, 916, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180064, 10, 170, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180065, 10, 574, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180066, 10, 178, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180067, 10, 230, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180068, 10, 332, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180069, 10, 331, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180070, 10, 965, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180071, 10, 724, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180072, 10, 730, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180073, 10, 773, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180074, 10, 175, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180075, 10, 229, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180076, 10, 424, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180077, 10, 255, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180078, 10, 966, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180079, 10, 461, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180080, 10, 983, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180081, 10, 681, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180082, 10, 683, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180083, 10, 684, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180084, 10, 702, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180085, 10, 921, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180086, 10, 701, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180087, 10, 703, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180088, 10, 926, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180089, 10, 927, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180090, 10, 682, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180091, 10, 990, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180092, 10, 697, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180093, 10, 698, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180094, 10, 699, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180095, 10, 930, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180096, 10, 991, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180097, 10, 992, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180098, 10, 993, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180099, 10, 994, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180100, 10, 995, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180101, 10, 1007, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180102, 10, 826, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180103, 10, 827, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180104, 10, 828, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180105, 10, 829, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180106, 10, 830, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180107, 10, 831, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180108, 10, 832, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180109, 10, 833, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180110, 10, 834, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180111, 10, 950, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180112, 10, 958, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180113, 10, 954, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180114, 10, 953, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180115, 10, 952, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180116, 10, 951, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180117, 10, 1029, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180118, 10, 1030, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180119, 10, 1035, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180120, 10, 1036, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180121, 10, 1037, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180122, 10, 1040, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180123, 10, 884, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180124, 10, 885, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180125, 10, 886, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180126, 10, 887, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180127, 10, 888, 3, '2020-12-01 14:55:26', '2020-11-30 18:03:34');
INSERT INTO `cs_role_permission` VALUES (180170, 11, -1, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180171, 11, 239, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180172, 11, 571, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180173, 11, 769, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180174, 11, 367, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180175, 11, 368, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180176, 11, 820, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180177, 11, 1056, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180178, 11, 1057, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180179, 11, 1058, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180180, 11, 1059, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180181, 11, 770, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180182, 11, 617, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180183, 11, 776, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180184, 11, 1045, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180185, 11, 240, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180186, 11, 459, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180187, 11, 771, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180188, 11, 365, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180189, 11, 369, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180190, 11, 370, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180191, 11, 823, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180192, 11, 675, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180193, 11, 772, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180194, 11, 1050, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180195, 11, 1061, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180196, 11, 1062, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180197, 11, 1063, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180198, 11, 1064, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180199, 11, 1021, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180200, 11, 1022, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180201, 11, 1023, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180202, 11, 1024, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180203, 11, 1025, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180204, 11, 1060, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180205, 11, 1026, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180206, 11, 1027, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180207, 11, 1028, 2, '2020-12-01 14:55:26', '2020-12-01 13:36:14');
INSERT INTO `cs_role_permission` VALUES (180208, 11, NULL, -1, '2020-12-01 14:55:26', '2020-12-01 13:41:18');
INSERT INTO `cs_role_permission` VALUES (180209, 11, NULL, 2, '2020-12-01 14:55:26', '2020-12-01 13:41:18');
INSERT INTO `cs_role_permission` VALUES (180210, 11, NULL, 3, '2020-12-01 14:55:26', '2020-12-01 13:41:18');
INSERT INTO `cs_role_permission` VALUES (180211, 11, -1, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180212, 11, 893, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180213, 11, 895, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180214, 11, 896, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180215, 11, 897, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180216, 11, 898, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180217, 11, 899, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180218, 11, 900, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180219, 11, 901, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180220, 11, 902, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180221, 11, 904, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180222, 11, 905, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180223, 11, 903, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180224, 11, 906, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180225, 11, 907, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180226, 11, 908, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180227, 11, 909, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180228, 11, 910, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180229, 11, 911, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180230, 11, 912, 3, '2020-12-01 14:55:26', '2020-12-01 13:42:27');
INSERT INTO `cs_role_permission` VALUES (180307, 10, -1, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180308, 10, 1051, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180309, 10, 1052, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180310, 10, 239, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180311, 10, 571, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180312, 10, 769, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180313, 10, 367, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180314, 10, 368, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180315, 10, 820, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180316, 10, 1056, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180317, 10, 1057, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180318, 10, 1058, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180319, 10, 1059, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180320, 10, 770, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180321, 10, 617, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180322, 10, 776, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180323, 10, 1045, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180324, 10, 240, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180325, 10, 459, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180326, 10, 771, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180327, 10, 365, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180328, 10, 369, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180329, 10, 370, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180330, 10, 823, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180331, 10, 675, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180332, 10, 772, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180333, 10, 1050, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180334, 10, 1061, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180335, 10, 1062, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180336, 10, 1063, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180337, 10, 1064, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180338, 10, 1021, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180339, 10, 1022, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180340, 10, 1023, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180341, 10, 1024, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180342, 10, 1025, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180343, 10, 1060, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180344, 10, 1026, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180345, 10, 1027, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180346, 10, 1028, 2, '2020-12-01 19:04:21', '2020-12-01 18:26:25');
INSERT INTO `cs_role_permission` VALUES (180392, 12, -1, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180393, 12, 239, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180394, 12, 571, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180395, 12, 769, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180396, 12, 367, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180397, 12, 368, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180398, 12, 820, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180399, 12, 1056, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180400, 12, 1057, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180401, 12, 1058, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180402, 12, 1059, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180403, 12, 770, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180404, 12, 617, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180405, 12, 776, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180406, 12, 1045, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180407, 12, 240, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180408, 12, 459, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180409, 12, 771, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180410, 12, 365, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180411, 12, 369, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180412, 12, 370, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180413, 12, 823, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180414, 12, 675, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180415, 12, 772, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180416, 12, 1050, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180417, 12, 1061, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180418, 12, 1062, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180419, 12, 1063, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180420, 12, 1064, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180421, 12, 1021, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180422, 12, 1022, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180423, 12, 1023, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180424, 12, 1024, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180425, 12, 1025, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180426, 12, 1060, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180427, 12, 1026, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180428, 12, 1027, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180429, 12, 1028, 2, '2020-12-02 10:04:11', '2020-12-02 10:04:11');
INSERT INTO `cs_role_permission` VALUES (180430, 12, NULL, -1, '2020-12-02 10:04:30', '2020-12-02 10:04:30');
INSERT INTO `cs_role_permission` VALUES (180431, 12, NULL, 2, '2020-12-02 10:04:30', '2020-12-02 10:04:30');
INSERT INTO `cs_role_permission` VALUES (180432, 12, NULL, 3, '2020-12-02 10:04:30', '2020-12-02 10:04:30');
INSERT INTO `cs_role_permission` VALUES (180433, 12, -1, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180434, 12, 680, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180435, 12, 685, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180436, 12, 819, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180437, 12, 705, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180438, 12, 706, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180439, 12, 822, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180440, 12, 1065, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180441, 12, 890, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180442, 12, 891, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180443, 12, 892, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180444, 12, 1048, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180445, 12, 686, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180446, 12, 687, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180447, 12, 692, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180448, 12, 693, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180449, 12, 694, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180450, 12, 728, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180451, 12, 918, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180452, 12, 688, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180453, 12, 815, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180454, 12, 816, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180455, 12, 817, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180456, 12, 818, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180457, 12, 1066, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180458, 12, 893, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180459, 12, 895, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180460, 12, 896, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180461, 12, 897, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180462, 12, 898, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180463, 12, 899, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180464, 12, 900, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180465, 12, 901, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180466, 12, 902, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180467, 12, 904, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180468, 12, 905, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180469, 12, 903, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180470, 12, 906, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180471, 12, 907, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180472, 12, 908, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180473, 12, 909, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180474, 12, 910, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180475, 12, 911, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180476, 12, 912, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180477, 12, 894, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180478, 12, 917, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180479, 12, 939, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180480, 12, 913, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180481, 12, 940, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180482, 12, 941, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180483, 12, 942, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180484, 12, 914, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180485, 12, 915, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180486, 12, 916, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180487, 12, 170, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180488, 12, 574, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180489, 12, 178, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180490, 12, 230, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180491, 12, 332, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180492, 12, 331, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180493, 12, 965, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180494, 12, 724, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180495, 12, 730, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180496, 12, 773, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180497, 12, 175, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180498, 12, 229, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180499, 12, 424, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180500, 12, 255, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180501, 12, 966, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180502, 12, 461, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180503, 12, 983, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180504, 12, 681, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180505, 12, 683, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180506, 12, 684, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180507, 12, 702, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180508, 12, 921, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180509, 12, 701, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180510, 12, 703, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180511, 12, 926, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180512, 12, 927, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180513, 12, 682, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180514, 12, 990, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180515, 12, 697, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180516, 12, 698, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180517, 12, 699, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180518, 12, 930, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180519, 12, 991, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180520, 12, 992, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180521, 12, 993, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180522, 12, 994, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180523, 12, 995, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180524, 12, 1007, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180525, 12, 826, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180526, 12, 827, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180527, 12, 828, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180528, 12, 829, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180529, 12, 830, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180530, 12, 831, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180531, 12, 832, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180532, 12, 833, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180533, 12, 834, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180534, 12, 950, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180535, 12, 958, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180536, 12, 954, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180537, 12, 953, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180538, 12, 952, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180539, 12, 951, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180540, 12, 1029, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180541, 12, 1030, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180542, 12, 1035, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180543, 12, 1037, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180544, 12, 1036, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180545, 12, 1040, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180546, 12, 884, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180547, 12, 885, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180548, 12, 886, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180549, 12, 887, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180550, 12, 888, 3, '2020-12-02 10:04:39', '2020-12-02 10:04:39');
INSERT INTO `cs_role_permission` VALUES (180704, 13, -1, 21, '2020-12-04 11:09:57', '2020-12-04 11:09:57');
INSERT INTO `cs_role_permission` VALUES (180705, 13, 709, 21, '2020-12-04 11:09:57', '2020-12-04 11:09:57');
INSERT INTO `cs_role_permission` VALUES (180706, 13, 714, 21, '2020-12-04 11:09:57', '2020-12-04 11:09:57');
INSERT INTO `cs_role_permission` VALUES (180707, 13, 710, 21, '2020-12-04 11:09:57', '2020-12-04 11:09:57');
INSERT INTO `cs_role_permission` VALUES (180708, 13, 1044, 21, '2020-12-04 11:09:57', '2020-12-04 11:09:57');
INSERT INTO `cs_role_permission` VALUES (180709, 13, 711, 21, '2020-12-04 11:09:57', '2020-12-04 11:09:57');
INSERT INTO `cs_role_permission` VALUES (180710, 13, 719, 21, '2020-12-04 11:09:57', '2020-12-04 11:09:57');
INSERT INTO `cs_role_permission` VALUES (180711, 13, 713, 21, '2020-12-04 11:09:57', '2020-12-04 11:09:57');
INSERT INTO `cs_role_permission` VALUES (180712, 13, 712, 21, '2020-12-04 11:09:57', '2020-12-04 11:09:57');
INSERT INTO `cs_role_permission` VALUES (180713, 13, 996, 21, '2020-12-04 11:09:57', '2020-12-04 11:09:57');
INSERT INTO `cs_role_permission` VALUES (180886, 13, NULL, -1, '2020-12-04 18:18:20', '2020-12-04 18:18:20');
INSERT INTO `cs_role_permission` VALUES (180887, 13, NULL, 2, '2020-12-04 18:18:20', '2020-12-04 18:18:20');
INSERT INTO `cs_role_permission` VALUES (180888, 13, NULL, 3, '2020-12-04 18:18:20', '2020-12-04 18:18:20');
INSERT INTO `cs_role_permission` VALUES (180889, 13, NULL, 21, '2020-12-04 18:18:20', '2020-12-04 18:18:20');
INSERT INTO `cs_role_permission` VALUES (180890, 13, NULL, 57, '2020-12-04 18:18:20', '2020-12-04 18:18:20');
INSERT INTO `cs_role_permission` VALUES (180891, 13, NULL, 61, '2020-12-04 18:18:20', '2020-12-04 18:18:20');
INSERT INTO `cs_role_permission` VALUES (180892, 13, -1, 61, '2020-12-04 18:23:35', '2020-12-04 18:23:35');
INSERT INTO `cs_role_permission` VALUES (180893, 13, 1073, 61, '2020-12-04 18:23:35', '2020-12-04 18:23:35');
INSERT INTO `cs_role_permission` VALUES (180900, 13, -1, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180901, 13, 239, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180902, 13, 571, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180903, 13, 769, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180904, 13, 367, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180905, 13, 368, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180906, 13, 820, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180907, 13, 1056, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180908, 13, 1057, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180909, 13, 1058, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180910, 13, 1059, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180911, 13, 770, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180912, 13, 617, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180913, 13, 776, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180914, 13, 1045, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180915, 13, 240, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180916, 13, 459, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180917, 13, 771, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180918, 13, 365, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180919, 13, 369, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180920, 13, 370, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180921, 13, 823, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180922, 13, 675, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180923, 13, 772, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180924, 13, 1050, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180925, 13, 1061, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180926, 13, 1062, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180927, 13, 1063, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180928, 13, 1064, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180929, 13, 1021, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180930, 13, 1022, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180931, 13, 1023, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180932, 13, 1024, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180933, 13, 1025, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180934, 13, 1060, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180935, 13, 1026, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180936, 13, 1027, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (180937, 13, 1028, 2, '2020-12-07 15:35:00', '2020-12-07 15:35:00');
INSERT INTO `cs_role_permission` VALUES (181166, 18, -1, -1, '2020-12-10 10:51:42', '2020-12-10 10:51:42');
INSERT INTO `cs_role_permission` VALUES (181225, 17, -1, -1, '2020-12-10 10:52:28', '2020-12-10 10:52:28');
INSERT INTO `cs_role_permission` VALUES (181232, 17, -1, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181233, 17, 239, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181234, 17, 571, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181235, 17, 769, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181236, 17, 367, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181237, 17, 368, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181238, 17, 820, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181239, 17, 1056, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181240, 17, 1057, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181241, 17, 1058, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181242, 17, 1059, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181243, 17, 770, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181244, 17, 617, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181245, 17, 776, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181246, 17, 1045, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181247, 17, 240, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181248, 17, 459, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181249, 17, 771, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181250, 17, 365, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181251, 17, 369, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181252, 17, 370, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181253, 17, 823, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181254, 17, 675, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181255, 17, 772, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181256, 17, 1050, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181257, 17, 1061, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181258, 17, 1062, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181259, 17, 1063, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181260, 17, 1064, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181261, 17, 1021, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181262, 17, 1022, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181263, 17, 1023, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181264, 17, 1024, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181265, 17, 1025, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181266, 17, 1060, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181267, 17, 1026, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181268, 17, 1027, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181269, 17, 1028, 2, '2020-12-10 10:54:08', '2020-12-10 10:54:08');
INSERT INTO `cs_role_permission` VALUES (181270, 17, -1, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181271, 17, 680, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181272, 17, 685, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181273, 17, 819, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181274, 17, 705, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181275, 17, 706, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181276, 17, 822, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181277, 17, 1065, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181278, 17, 890, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181279, 17, 891, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181280, 17, 892, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181281, 17, 1048, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181282, 17, 686, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181283, 17, 687, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181284, 17, 692, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181285, 17, 693, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181286, 17, 694, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181287, 17, 728, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181288, 17, 918, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181289, 17, 688, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181290, 17, 815, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181291, 17, 816, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181292, 17, 817, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181293, 17, 818, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181294, 17, 1066, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181295, 17, 893, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181296, 17, 895, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181297, 17, 896, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181298, 17, 897, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181299, 17, 898, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181300, 17, 899, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181301, 17, 900, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181302, 17, 901, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181303, 17, 902, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181304, 17, 904, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181305, 17, 905, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181306, 17, 903, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181307, 17, 906, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181308, 17, 907, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181309, 17, 908, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181310, 17, 909, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181311, 17, 910, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181312, 17, 911, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181313, 17, 912, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181314, 17, 894, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181315, 17, 917, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181316, 17, 939, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181317, 17, 913, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181318, 17, 940, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181319, 17, 941, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181320, 17, 942, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181321, 17, 914, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181322, 17, 915, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181323, 17, 916, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181324, 17, 170, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181325, 17, 574, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181326, 17, 178, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181327, 17, 230, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181328, 17, 332, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181329, 17, 331, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181330, 17, 965, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181331, 17, 724, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181332, 17, 730, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181333, 17, 773, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181334, 17, 175, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181335, 17, 229, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181336, 17, 424, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181337, 17, 255, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181338, 17, 966, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181339, 17, 461, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181340, 17, 983, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181341, 17, 681, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181342, 17, 683, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181343, 17, 684, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181344, 17, 702, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181345, 17, 921, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181346, 17, 701, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181347, 17, 703, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181348, 17, 926, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181349, 17, 927, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181350, 17, 682, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181351, 17, 990, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181352, 17, 697, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181353, 17, 698, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181354, 17, 699, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181355, 17, 930, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181356, 17, 991, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181357, 17, 992, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181358, 17, 993, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181359, 17, 994, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181360, 17, 995, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181361, 17, 1007, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181362, 17, 826, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181363, 17, 827, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181364, 17, 828, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181365, 17, 829, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181366, 17, 830, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181367, 17, 831, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181368, 17, 832, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181369, 17, 833, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181370, 17, 834, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181371, 17, 950, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181372, 17, 958, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181373, 17, 954, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181374, 17, 953, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181375, 17, 952, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181376, 17, 951, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181377, 17, 1029, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181378, 17, 1030, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181379, 17, 1035, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181380, 17, 1037, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181381, 17, 1036, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181382, 17, 1040, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181383, 17, 884, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181384, 17, 885, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181385, 17, 886, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181386, 17, 887, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181387, 17, 888, 3, '2020-12-10 10:54:15', '2020-12-10 10:54:15');
INSERT INTO `cs_role_permission` VALUES (181388, 17, -1, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181389, 17, 709, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181390, 17, 714, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181391, 17, 710, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181392, 17, 1044, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181393, 17, 711, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181394, 17, 719, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181395, 17, 713, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181396, 17, 712, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181397, 17, 996, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181398, 17, 723, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181399, 17, 744, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181400, 17, 745, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181401, 17, 746, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181402, 17, 747, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181403, 17, 748, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181404, 17, 749, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181405, 17, 750, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181406, 17, 751, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181407, 17, 752, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181408, 17, 753, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181409, 17, 754, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181410, 17, 755, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181411, 17, 756, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181412, 17, 757, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181413, 17, 758, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181414, 17, 760, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181415, 17, 761, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181416, 17, 762, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181417, 17, 763, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181418, 17, 764, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181419, 17, 765, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181420, 17, 766, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181421, 17, 767, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181422, 17, 768, 21, '2020-12-10 10:54:18', '2020-12-10 10:54:18');
INSERT INTO `cs_role_permission` VALUES (181423, 17, -1, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181424, 17, 6, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181425, 17, 576, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181426, 17, 889, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181427, 17, 319, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181428, 17, 428, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181429, 17, 429, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181430, 17, 430, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181431, 17, 396, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181432, 17, 399, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181433, 17, 444, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181434, 17, 445, 17, '2020-12-10 10:54:22', '2020-12-10 10:54:22');
INSERT INTO `cs_role_permission` VALUES (181435, 17, -1, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181436, 17, 931, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181437, 17, 935, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181438, 17, 936, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181439, 17, 937, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181440, 17, 938, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181441, 17, 944, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181442, 17, 949, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181443, 17, 946, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181444, 17, 947, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181445, 17, 948, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181446, 17, 960, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181447, 17, 1014, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181448, 17, 1015, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181449, 17, 1016, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181450, 17, 1049, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181451, 17, 1038, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181452, 17, 1046, 57, '2020-12-10 10:54:25', '2020-12-10 10:54:25');
INSERT INTO `cs_role_permission` VALUES (181465, 17, NULL, -1, '2020-12-10 10:55:27', '2020-12-10 10:55:27');
INSERT INTO `cs_role_permission` VALUES (181466, 17, NULL, 2, '2020-12-10 10:55:27', '2020-12-10 10:55:27');
INSERT INTO `cs_role_permission` VALUES (181467, 17, NULL, 3, '2020-12-10 10:55:27', '2020-12-10 10:55:27');
INSERT INTO `cs_role_permission` VALUES (181468, 17, NULL, 21, '2020-12-10 10:55:27', '2020-12-10 10:55:27');
INSERT INTO `cs_role_permission` VALUES (181469, 17, NULL, 17, '2020-12-10 10:55:27', '2020-12-10 10:55:27');
INSERT INTO `cs_role_permission` VALUES (181470, 17, NULL, 57, '2020-12-10 10:55:27', '2020-12-10 10:55:27');
INSERT INTO `cs_role_permission` VALUES (181726, 18, -1, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181727, 18, 972, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181728, 18, 974, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181729, 18, 975, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181730, 18, 976, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181731, 18, 977, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181732, 18, 978, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181733, 18, 979, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181734, 18, 980, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181735, 18, 981, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181736, 18, 1078, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181737, 18, 1082, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181738, 18, 1079, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181739, 18, 1080, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181740, 18, 1081, 60, '2020-12-10 16:34:52', '2020-12-10 16:34:52');
INSERT INTO `cs_role_permission` VALUES (181884, 18, NULL, -1, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181885, 18, NULL, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181886, 18, NULL, 3, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181887, 18, NULL, 21, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181888, 18, NULL, 17, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181889, 18, NULL, 60, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181890, 18, -1, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181891, 18, 239, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181892, 18, 571, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181893, 18, 769, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181894, 18, 367, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181895, 18, 368, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181896, 18, 820, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181897, 18, 1056, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181898, 18, 1057, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181899, 18, 1058, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181900, 18, 1059, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181901, 18, 770, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181902, 18, 617, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181903, 18, 776, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181904, 18, 1045, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181905, 18, 240, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181906, 18, 459, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181907, 18, 771, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181908, 18, 365, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181909, 18, 369, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181910, 18, 370, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181911, 18, 823, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181912, 18, 675, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181913, 18, 772, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181914, 18, 1050, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181915, 18, 1061, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181916, 18, 1062, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181917, 18, 1063, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181918, 18, 1064, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181919, 18, 1021, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181920, 18, 1022, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181921, 18, 1023, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181922, 18, 1024, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181923, 18, 1025, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181924, 18, 1060, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181925, 18, 1026, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181926, 18, 1027, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (181927, 18, 1028, 2, '2020-12-10 16:43:34', '2020-12-10 16:43:34');
INSERT INTO `cs_role_permission` VALUES (182116, 13, -1, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182117, 13, 680, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182118, 13, 685, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182119, 13, 819, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182120, 13, 705, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182121, 13, 706, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182122, 13, 822, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182123, 13, 1065, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182124, 13, 890, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182125, 13, 891, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182126, 13, 892, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182127, 13, 1048, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182128, 13, 687, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182129, 13, 692, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182130, 13, 693, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182131, 13, 694, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182132, 13, 918, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182133, 13, 1066, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182134, 13, 893, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182135, 13, 895, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182136, 13, 896, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182137, 13, 897, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182138, 13, 898, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182139, 13, 899, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182140, 13, 900, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182141, 13, 901, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182142, 13, 902, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182143, 13, 904, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182144, 13, 905, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182145, 13, 903, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182146, 13, 906, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182147, 13, 907, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182148, 13, 908, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182149, 13, 909, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182150, 13, 910, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182151, 13, 911, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182152, 13, 912, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182153, 13, 894, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182154, 13, 917, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182155, 13, 939, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182156, 13, 913, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182157, 13, 940, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182158, 13, 941, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182159, 13, 942, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182160, 13, 914, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182161, 13, 915, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182162, 13, 916, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182163, 13, 170, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182164, 13, 574, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182165, 13, 178, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182166, 13, 230, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182167, 13, 332, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182168, 13, 331, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182169, 13, 965, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182170, 13, 724, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182171, 13, 730, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182172, 13, 773, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182173, 13, 175, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182174, 13, 229, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182175, 13, 424, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182176, 13, 255, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182177, 13, 966, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182178, 13, 461, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182179, 13, 983, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182180, 13, 884, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182181, 13, 885, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182182, 13, 886, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182183, 13, 887, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182184, 13, 888, 3, '2020-12-10 17:03:13', '2020-12-10 17:03:13');
INSERT INTO `cs_role_permission` VALUES (182206, 13, -1, 57, '2020-12-11 15:39:54', '2020-12-11 15:39:54');
INSERT INTO `cs_role_permission` VALUES (182207, 13, 931, 57, '2020-12-11 15:39:54', '2020-12-11 15:39:54');
INSERT INTO `cs_role_permission` VALUES (182208, 13, 944, 57, '2020-12-11 15:39:54', '2020-12-11 15:39:54');
INSERT INTO `cs_role_permission` VALUES (182209, 13, 949, 57, '2020-12-11 15:39:54', '2020-12-11 15:39:54');
INSERT INTO `cs_role_permission` VALUES (182210, 13, 946, 57, '2020-12-11 15:39:54', '2020-12-11 15:39:54');
INSERT INTO `cs_role_permission` VALUES (182211, 13, 1014, 57, '2020-12-11 15:39:54', '2020-12-11 15:39:54');
INSERT INTO `cs_role_permission` VALUES (182212, 13, 1015, 57, '2020-12-11 15:39:54', '2020-12-11 15:39:54');
INSERT INTO `cs_role_permission` VALUES (182213, 13, 1016, 57, '2020-12-11 15:39:54', '2020-12-11 15:39:54');
INSERT INTO `cs_role_permission` VALUES (182214, 13, 1049, 57, '2020-12-11 15:39:54', '2020-12-11 15:39:54');
INSERT INTO `cs_role_permission` VALUES (182215, 13, 1038, 57, '2020-12-11 15:39:54', '2020-12-11 15:39:54');
INSERT INTO `cs_role_permission` VALUES (182285, 19, -1, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182286, 19, 239, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182287, 19, 571, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182288, 19, 769, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182289, 19, 367, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182290, 19, 368, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182291, 19, 820, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182292, 19, 1056, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182293, 19, 1057, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182294, 19, 1058, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182295, 19, 1059, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182296, 19, 770, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182297, 19, 617, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182298, 19, 776, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182299, 19, 1045, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182300, 19, 240, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182301, 19, 459, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182302, 19, 771, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182303, 19, 365, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182304, 19, 369, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182305, 19, 370, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182306, 19, 823, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182307, 19, 675, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182308, 19, 772, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182309, 19, 1050, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182310, 19, 1061, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182311, 19, 1062, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182312, 19, 1063, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182313, 19, 1064, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182314, 19, 1021, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182315, 19, 1022, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182316, 19, 1023, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182317, 19, 1024, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182318, 19, 1025, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182319, 19, 1060, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182320, 19, 1026, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182321, 19, 1027, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182322, 19, 1028, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182323, 19, 1084, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182324, 19, 1085, 2, '2020-12-15 14:29:51', '2020-12-15 14:29:51');
INSERT INTO `cs_role_permission` VALUES (182325, 19, NULL, -1, '2020-12-15 14:30:01', '2020-12-15 14:30:01');
INSERT INTO `cs_role_permission` VALUES (182326, 19, NULL, 2, '2020-12-15 14:30:01', '2020-12-15 14:30:01');
INSERT INTO `cs_role_permission` VALUES (182327, 19, NULL, 3, '2020-12-15 14:30:01', '2020-12-15 14:30:01');
INSERT INTO `cs_role_permission` VALUES (182328, 19, NULL, 21, '2020-12-15 14:30:01', '2020-12-15 14:30:01');
INSERT INTO `cs_role_permission` VALUES (182329, 19, NULL, 17, '2020-12-15 14:30:01', '2020-12-15 14:30:01');
INSERT INTO `cs_role_permission` VALUES (182330, 19, NULL, 57, '2020-12-15 14:30:01', '2020-12-15 14:30:01');
INSERT INTO `cs_role_permission` VALUES (182331, 19, NULL, 60, '2020-12-15 14:30:01', '2020-12-15 14:30:01');
INSERT INTO `cs_role_permission` VALUES (182357, 8, NULL, -1, '2020-12-15 14:31:41', '2020-12-15 14:31:41');
INSERT INTO `cs_role_permission` VALUES (182358, 8, NULL, 2, '2020-12-15 14:31:41', '2020-12-15 14:31:41');
INSERT INTO `cs_role_permission` VALUES (182359, 8, NULL, 3, '2020-12-15 14:31:41', '2020-12-15 14:31:41');
INSERT INTO `cs_role_permission` VALUES (182360, 8, NULL, 21, '2020-12-15 14:31:41', '2020-12-15 14:31:41');
INSERT INTO `cs_role_permission` VALUES (182361, 8, NULL, 17, '2020-12-15 14:31:41', '2020-12-15 14:31:41');
INSERT INTO `cs_role_permission` VALUES (182362, 8, NULL, 57, '2020-12-15 14:31:41', '2020-12-15 14:31:41');
INSERT INTO `cs_role_permission` VALUES (182363, 8, NULL, 60, '2020-12-15 14:31:41', '2020-12-15 14:31:41');
INSERT INTO `cs_role_permission` VALUES (182376, 8, -1, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182377, 8, 6, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182378, 8, 576, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182379, 8, 889, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182380, 8, 319, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182381, 8, 428, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182382, 8, 429, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182383, 8, 430, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182384, 8, 396, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182385, 8, 399, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182386, 8, 444, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182387, 8, 445, 17, '2020-12-15 14:31:49', '2020-12-15 14:31:49');
INSERT INTO `cs_role_permission` VALUES (182388, 1, -1, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182389, 1, 7, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182390, 1, 402, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182391, 1, 13, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182392, 1, 14, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182393, 1, 22, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182394, 1, 943, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182395, 1, 883, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182396, 1, 9, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182397, 1, 10, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182398, 1, 11, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182399, 1, 403, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182400, 1, 15, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182401, 1, 385, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182402, 1, 989, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182403, 1, 1076, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182404, 1, 277, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182405, 1, 278, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182406, 1, 279, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182407, 1, 336, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182408, 1, 1039, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182409, 1, 1043, 6, '2020-12-15 21:44:09', '2020-12-15 21:44:09');
INSERT INTO `cs_role_permission` VALUES (182410, 20, NULL, -1, '2020-12-16 14:14:40', '2020-12-16 14:14:40');
INSERT INTO `cs_role_permission` VALUES (182411, 20, NULL, 2, '2020-12-16 14:14:40', '2020-12-16 14:14:40');
INSERT INTO `cs_role_permission` VALUES (182412, 20, NULL, 3, '2020-12-16 14:14:40', '2020-12-16 14:14:40');
INSERT INTO `cs_role_permission` VALUES (182413, 20, NULL, 21, '2020-12-16 14:14:40', '2020-12-16 14:14:40');
INSERT INTO `cs_role_permission` VALUES (182414, 20, NULL, 17, '2020-12-16 14:14:40', '2020-12-16 14:14:40');
INSERT INTO `cs_role_permission` VALUES (182415, 20, NULL, 57, '2020-12-16 14:14:40', '2020-12-16 14:14:40');
INSERT INTO `cs_role_permission` VALUES (182416, 20, NULL, 60, '2020-12-16 14:14:40', '2020-12-16 14:14:40');
INSERT INTO `cs_role_permission` VALUES (182458, 20, -1, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182459, 20, 239, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182460, 20, 571, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182461, 20, 769, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182462, 20, 367, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182463, 20, 368, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182464, 20, 820, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182465, 20, 1056, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182466, 20, 1057, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182467, 20, 1058, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182468, 20, 1059, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182469, 20, 770, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182470, 20, 617, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182471, 20, 776, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182472, 20, 1045, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182473, 20, 240, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182474, 20, 459, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182475, 20, 771, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182476, 20, 365, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182477, 20, 369, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182478, 20, 370, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182479, 20, 823, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182480, 20, 675, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182481, 20, 772, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182482, 20, 1050, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182483, 20, 1061, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182484, 20, 1062, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182485, 20, 1063, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182486, 20, 1064, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182487, 20, 1021, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182488, 20, 1022, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182489, 20, 1023, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182490, 20, 1024, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182491, 20, 1025, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182492, 20, 1060, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182493, 20, 1026, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182494, 20, 1027, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');
INSERT INTO `cs_role_permission` VALUES (182495, 20, 1028, 2, '2020-12-16 14:25:45', '2020-12-16 14:25:45');

-- ----------------------------
-- Table structure for cs_rule_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `cs_rule_dictionary`;
CREATE TABLE `cs_rule_dictionary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rules` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `display_flag` int(1) NULL DEFAULT NULL,
  `des` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_rule_dictionary
-- ----------------------------
INSERT INTO `cs_rule_dictionary` VALUES (1, '数值类型转换为int', '01', 'int(v)', 0, ' 将v值的类型转为int，aviator内置函数不支持转int', '2020-12-01 14:55:26', '2017-11-10 13:02:40');
INSERT INTO `cs_rule_dictionary` VALUES (2, '数值类型转换为long', '02', 'long(v)', 1, '将v值的类型转为 long', '2020-12-01 14:55:26', '2017-11-09 18:05:28');
INSERT INTO `cs_rule_dictionary` VALUES (3, '数值类型转换为double', '03', 'double(v)', 1, '将v值的类型转为 double', '2020-12-01 14:55:26', '2017-11-09 18:05:33');
INSERT INTO `cs_rule_dictionary` VALUES (4, '转为字符串类型', '04', 'str(v)', 1, '将v值的类型转为 string', '2020-12-01 14:55:26', '2017-11-09 18:05:49');
INSERT INTO `cs_rule_dictionary` VALUES (5, '日期转换（\"yyyy年MM月dd日 HH:mm:ss\"）', '05', 'date_to_string(v,\'yyyy年MM月dd日 HH:mm:ss\')', 1, '将 Date类型的对象v转化化\"yyyy年MM月dd日 HH:mm:ss\"格式的字符串', '2020-12-01 14:55:26', '2017-11-13 15:56:39');
INSERT INTO `cs_rule_dictionary` VALUES (6, '日期转换（\"yyyy年MM月dd日\"）', '06', 'date_to_string(v,\'yyyy年MM月dd日\')', 1, '将 Date类型的对象v转化化\"yyyy年MM月dd日\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:06:33');
INSERT INTO `cs_rule_dictionary` VALUES (7, '日期转换（\"HH:mm:ss\"）', '07', 'date_to_string(v,\'HH:mm:ss\')', 1, '将 Date类型的对象v转化化\"HH:mm:ss\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:06:45');
INSERT INTO `cs_rule_dictionary` VALUES (8, '日期转换（\"yyyy-MM-dd HH:mm:ss\"）', '08', 'date_to_string(v,\'yyyy-MM-dd HH:mm:ss\')', 1, '将 Date类型的对象v转化化\"yyyy-MM-dd HH:mm:ss\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:07:31');
INSERT INTO `cs_rule_dictionary` VALUES (9, '日期转换（\"yyyy年MM月dd日 HH:mm:ss\"）', '09', 'date_to_string(v,\'yyyy-MM-dd\')', 1, '将 Date类型的对象v转化化\"yyyy-MM-dd\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:07:36');
INSERT INTO `cs_rule_dictionary` VALUES (10, '日期转换（\"yyyy/MM/dd HH:mm:ss\"）', '10', 'date_to_string(v,\'yyyy/MM/dd HH:mm:ss\')', 1, '将 Date类型的对象v转化化\"yyyy/MM/dd HH:mm:ss\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:07:49');
INSERT INTO `cs_rule_dictionary` VALUES (11, '日期转换（\"yyyy/MM/dd\"）', '11', 'date_to_string(v,\'yyyy/MM/dd\')', 1, '将 Date类型的对象v转化化\"yyyy/MM/dd\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:08:13');
INSERT INTO `cs_rule_dictionary` VALUES (12, '日期转换（\"yyyy.MM.dd HH:mm:ss\"）', '12', 'date_to_string(v,\'yyyy.MM.dd HH:mm:ss\')', 1, '将 Date类型的对象v转化化\"yyyy.MM.dd HH:mm:ss\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:08:30');
INSERT INTO `cs_rule_dictionary` VALUES (13, '日期转换（\"yyyy.MM.dd\"）', '13', 'date_to_string(v,\'yyyy.MM.dd\')', 1, '将 Date类型的对象v转化化\"yyyy.MM.dd\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:08:45');
INSERT INTO `cs_rule_dictionary` VALUES (14, '日期转换（MM/dd/yyyy HH:mm:ss\"）', '14', 'date_to_string(v,\'MM/dd/yyyy HH:mm:ss\')', 1, '将 Date类型的对象v转化化\"MM/dd/yyyy HH:mm:ss\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:09:01');
INSERT INTO `cs_rule_dictionary` VALUES (15, '日期转换（\"MM/dd/yyyy\"）', '15', 'date_to_string(v,\'MM/dd/yyyy\')', 1, '将 Date类型的对象v转化化\"MM/dd/yyyy\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:09:16');
INSERT INTO `cs_rule_dictionary` VALUES (16, '日期转换（\"MM.dd,yyyy HH:mm:ss\"）', '16', 'date_to_string(v,\'MM.dd,yyyy HH:mm:ss\')', 1, '将 Date类型的对象v转化化\"MM.dd,yyyy HH:mm:ss\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:09:30');
INSERT INTO `cs_rule_dictionary` VALUES (17, '日期转换（\"MM.dd,yyyy\"）', '17', 'date_to_string(v,\'MM.dd,yyyy\')', 1, '将 Date类型的对象v转化化\"MM.dd,yyyy\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:09:45');
INSERT INTO `cs_rule_dictionary` VALUES (18, '日期转换（\"yyyyMMddHHmmss\"）', '18', 'date_to_string(v,\'yyyyMMddHHmmss\')', 1, '将 Date类型的对象v转化化\"yyyyMMddHHmmss\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:09:58');
INSERT INTO `cs_rule_dictionary` VALUES (19, '日期转换（\"yyyyMMddHHmmssSSS\"）', '19', 'date_to_string(v,\'yyyyMMddHHmmssSSS\')', 1, '将 Date类型的对象v转化化\"yyyyMMddHHmmssSSS\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:10:08');
INSERT INTO `cs_rule_dictionary` VALUES (20, '日期转换（\"yyyyMMdd\"）', '20', 'date_to_string(v,\'yyyyMMdd\')', 1, '将 Date类型的对象v转化化\"yyyyMMdd\"格式的字符串', '2020-12-01 14:55:26', '2017-11-09 18:10:18');
INSERT INTO `cs_rule_dictionary` VALUES (21, '字符串转日期（\"yyyy年MM月dd日 HH:mm:ss\"）', '21', 'string_to_date(v,\'yyyy年MM月dd日 HH:mm:ss\')', 1, '将\"yyyy年MM月dd日 HH:mm:ss\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (23, '字符串转日期（\"yyyy年MM月dd日\"）', '23', 'string_to_date(v,\'yyyy年MM月dd日\')', 1, '将\"yyyy年MM月dd日\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (24, '字符串转日期（\"HH:mm:ss\"）', '24', 'string_to_date(v,\'HH:mm:ss\')', 1, '将\"HH:mm:ss\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (25, '字符串转日期（\"yyyy-MM-dd HH:mm:ss\"）', '25', 'string_to_date(v,\'yyyy-MM-dd HH:mm:ss\')', 1, '将\"yyyy-MM-dd HH:mm:ss\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (26, '字符串转日期（\"yyyy年MM月dd日 HH:mm:ss\"）', '26', 'string_to_date(v,\'yyyy-MM-dd\')', 1, '将\"yyyy-MM-dd\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (27, '字符串转日期（\"yyyy/MM/dd HH:mm:ss\"）', '27', 'string_to_date(v,\'yyyy/MM/dd HH:mm:ss\')', 1, '将\"yyyy/MM/dd HH:mm:ss\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (28, '字符串转日期（\"yyyy/MM/dd\"）', '28', 'string_to_date(v,\'yyyy/MM/dd\')', 1, '将\"yyyy/MM/dd\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (29, '字符串转日期（\"yyyy.MM.dd HH:mm:ss\"）', '29', 'string_to_date(v,\'yyyy.MM.dd HH:mm:ss\')', 1, '将\"yyyy.MM.dd HH:mm:ss\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (30, '字符串转日期（\"yyyy.MM.dd\"）', '30', 'string_to_date(v,\'yyyy.MM.dd\')', 1, '将\"yyyy.MM.dd\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (31, '字符串转日期（MM/dd/yyyy HH:mm:ss\"）', '31', 'string_to_date(v,\'MM/dd/yyyy HH:mm:ss\')', 1, '将\"MM/dd/yyyy HH:mm:ss\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (32, '字符串转日期（\"MM/dd/yyyy\"）', '32', 'string_to_date(v,\'MM/dd/yyyy\')', 1, '将\"MM/dd/yyyy\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (33, '字符串转日期（\"MM.dd,yyyy HH:mm:ss\"）', '33', 'string_to_date(v,\'MM.dd,yyyy HH:mm:ss\')', 1, '将\"MM.dd,yyyy HH:mm:ss\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (34, '字符串转日期（\"MM.dd,yyyy\"）', '34', 'string_to_date(v,\'MM.dd,yyyy\')', 1, '将\"MM.dd,yyyy\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (35, '字符串转日期（\"yyyyMMddHHmmss\"）', '35', 'string_to_date(v,\'yyyyMMddHHmmss\')', 1, '将\"yyyyMMddHHmmss\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');
INSERT INTO `cs_rule_dictionary` VALUES (36, '字符串转日期（\"yyyyMMddHHmmssSSS\"）', '36', 'string_to_date(v,\'yyyyMMddHHmmssSSS\')', 1, '将\"yyyyMMddHHmmssSSS\"格式的字符串转换为Date类型', '2020-12-01 14:55:26', '2017-11-14 10:15:31');

-- ----------------------------
-- Table structure for cs_server
-- ----------------------------
DROP TABLE IF EXISTS `cs_server`;
CREATE TABLE `cs_server`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cpu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `memory` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disk` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `used_disk` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avail_disk` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disk_use_percent` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_server_disk_info
-- ----------------------------
DROP TABLE IF EXISTS `cs_server_disk_info`;
CREATE TABLE `cs_server_disk_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NULL DEFAULT 0,
  `dis_name_partition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `total_partition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `used_partition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `avail_partition` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `use_percent_partition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存放对应服务器的硬盘具体数值' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_service_deploy
-- ----------------------------
DROP TABLE IF EXISTS `cs_service_deploy`;
CREATE TABLE `cs_service_deploy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `server_id` int(11) NULL DEFAULT NULL,
  `resource_id` int(11) NULL DEFAULT NULL,
  `tcp_port` int(11) NULL DEFAULT NULL,
  `http_port` int(11) NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `agent_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1，采集；2，汇聚',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_service_deploy
-- ----------------------------
INSERT INTO `cs_service_deploy` VALUES (39, '04', 'local', 'MTI3LjAuMC4x', 126, 161, NULL, NULL, '3', '2020-12-05 23:09:36', '1', '2020-12-05 23:09:36');
INSERT INTO `cs_service_deploy` VALUES (40, '04', 'other', 'MTI3LjAuMC4x', 122, 161, NULL, NULL, '5', '2020-12-01 14:55:26', '2', '2020-11-26 14:37:26');
INSERT INTO `cs_service_deploy` VALUES (43, '05', 'r', 'MTI3LjAuMC4x', 127, 169, NULL, NULL, '5', '2020-12-01 09:27:48', '1', '2020-12-01 09:27:48');
INSERT INTO `cs_service_deploy` VALUES (44, '04', 'hfcaccess', 'MTI3LjAuMC4x', 152, 161, NULL, NULL, '5', '2020-12-01 14:55:26', '1', '2020-11-26 14:37:32');
INSERT INTO `cs_service_deploy` VALUES (45, '04', '霍霍', 'MTI3LjAuMC4xHHHH', 154, 161, NULL, NULL, '3', '2020-12-01 14:55:26', '1', '2020-11-27 15:51:07');
INSERT INTO `cs_service_deploy` VALUES (49, '05', '1', 'MTI3LjAuMC4x', 152, 169, NULL, NULL, '5', '2020-12-05 22:06:15', '1', '2020-12-05 22:06:15');
INSERT INTO `cs_service_deploy` VALUES (50, '04', '测试', 'MTI3LjAuMC4x', 141, 161, NULL, NULL, '5', '2020-12-01 14:55:26', '1', '2020-11-26 14:37:38');
INSERT INTO `cs_service_deploy` VALUES (51, '04', 'test', 'MTI3LjAuMC4x', 153, 161, NULL, NULL, '5', '2020-12-01 14:55:26', '1', '2020-11-26 14:37:39');
INSERT INTO `cs_service_deploy` VALUES (52, '04', '123', 'MTI3LjAuMC4x', 151, 161, NULL, NULL, '5', '2020-12-01 14:55:26', '1', '2020-11-26 14:37:41');
INSERT INTO `cs_service_deploy` VALUES (53, '04', '23333', 'MTI3LjAuMC4x', 150, 161, NULL, NULL, '5', '2020-12-01 14:55:26', '2', '2020-11-26 14:37:43');
INSERT INTO `cs_service_deploy` VALUES (54, '04', '23', 'MTI3LjAuMC4x', 149, 161, NULL, NULL, '5', '2020-12-01 14:55:26', '1', '2020-11-26 14:37:45');
INSERT INTO `cs_service_deploy` VALUES (55, '04', '23432', 'MTI3LjAuMC4x', 148, 161, NULL, NULL, '3', '2020-12-17 19:53:04', '1', '2020-12-17 19:53:04');
INSERT INTO `cs_service_deploy` VALUES (56, '04', 'localIn', 'MTI3LjAuMC4x', 126, 161, NULL, NULL, '3', '2020-12-01 14:55:26', '2', '2020-11-26 14:18:15');
INSERT INTO `cs_service_deploy` VALUES (57, '04', '采集', 'MTI3LjAuMC4x', 1, 161, NULL, NULL, '3', '2020-12-01 14:55:26', '1', '2020-11-26 17:12:52');
INSERT INTO `cs_service_deploy` VALUES (60, '02', '阿斯弗', 'MS4xLjEuMQ==', 158, 170, NULL, NULL, '5', '2020-12-05 22:06:11', '2', '2020-12-05 22:06:11');
INSERT INTO `cs_service_deploy` VALUES (61, '05', '啊沙发上', 'MTkyLjE2OC41LjEzNg==', 157, 169, NULL, NULL, '5', '2020-12-01 14:55:26', '1', '2020-12-01 09:27:43');
INSERT INTO `cs_service_deploy` VALUES (64, '04', 'test_cindy', 'MTkyLjE2OC41LjEzNg==', 157, 161, NULL, NULL, '5', '2020-12-10 13:30:43', '1', '2020-12-10 13:30:43');
INSERT INTO `cs_service_deploy` VALUES (65, '04', 'cindy', 'MTkyLjE2OC41LjEzMQ==', 147, 161, NULL, NULL, '5', '2020-12-10 13:31:09', '1', '2020-12-10 13:31:09');
INSERT INTO `cs_service_deploy` VALUES (66, '04', '汇聚', 'MTAuMTAuMTc2LjIyOQ==', 144, 161, NULL, NULL, '5', '2020-12-10 13:31:58', '2', '2020-12-10 13:31:58');

-- ----------------------------
-- Table structure for cs_subsystem
-- ----------------------------
DROP TABLE IF EXISTS `cs_subsystem`;
CREATE TABLE `cs_subsystem`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `platform_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `role_ids` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '多个角色，英文逗号分割',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_subsystem
-- ----------------------------
INSERT INTO `cs_subsystem` VALUES (2, '数据交换', 'appIndex/dg/collectionHome', 'data_factory', 2, '01', '2020-12-10 14:28:56', '2,3', '2020-12-10 14:28:56');
INSERT INTO `cs_subsystem` VALUES (3, '数据资产', 'appIndex/dataPlanning/namingStandard', 'data_operation', 3, '01', '2020-12-01 14:55:26', '2,3', '2020-11-26 14:19:20');
INSERT INTO `cs_subsystem` VALUES (6, '平台管理', 'appIndex/console/userManagement', 'data_factory', 7, '01', '2020-12-01 14:55:26', '1', '2020-11-26 14:19:27');
INSERT INTO `cs_subsystem` VALUES (7, '集群监控', 'appIndex/cluster', 'data_deploy', 12, '01', '2020-12-01 14:55:26', '1', '2020-11-26 14:19:30');
INSERT INTO `cs_subsystem` VALUES (17, '任务调度', 'appIndex/task/taskHome', 'data_deploy', 19, '01', '2020-12-01 14:55:26', '2,3', '2020-11-26 14:19:35');
INSERT INTO `cs_subsystem` VALUES (21, '数据处理', 'appIndex/etl/flowHome', 'data_development', 10, '01', '2020-12-01 14:55:26', '2,3', '2020-11-26 14:19:41');
INSERT INTO `cs_subsystem` VALUES (57, '算法仓库', 'appIndex/algorithmWarehouse/accessAlgorithmPackages', 'algorithm_storehouse', 57, '01', '2020-12-01 14:55:26', '2,3', '2020-11-26 14:19:45');
INSERT INTO `cs_subsystem` VALUES (60, '数据交换2', 'appIndex/dg/collectionHome', 'data_factory', 60, '01', '2020-12-10 14:29:19', '2', '2020-12-10 14:29:19');

-- ----------------------------
-- Table structure for cs_system_log
-- ----------------------------
DROP TABLE IF EXISTS `cs_system_log`;
CREATE TABLE `cs_system_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户',
  `role` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色',
  `uri` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '请求地址',
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `params` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '访问参数',
  `results` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '返回参数',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'IP地址',
  `browser` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '浏览器',
  `time` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '执行时长(毫秒)',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cs_system_param
-- ----------------------------
DROP TABLE IF EXISTS `cs_system_param`;
CREATE TABLE `cs_system_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `system_param_catalog_id` int(11) NULL DEFAULT NULL,
  `system_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `system_value` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 296 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_system_param
-- ----------------------------
INSERT INTO `cs_system_param` VALUES (3, '用于文件管理中临时文件存储', 3, 'dataManager.storage.temporary.folder', '/tmp', '2020-12-01 14:55:26', '2017-07-10 18:40:36');
INSERT INTO `cs_system_param` VALUES (4, '用于资源包上传临时文件存储', 1, 'console.resource.temporary.folder', '/home/clouddata/iovCloud/resource/', '2020-12-01 14:55:26', '2018-03-20 10:44:47');
INSERT INTO `cs_system_param` VALUES (14, '系统名称', 1, 'console.serverDeploy.type', '04:数据接入agent,02:数据处理agent,05:附加功能agent', '2020-12-01 14:55:26', '2019-10-22 17:31:21');
INSERT INTO `cs_system_param` VALUES (15, '文件服务源分类', 1, 'console.file.source.type', '05:HDFS,06:FTP', '2020-12-01 14:55:26', '2020-07-07 17:44:47');
INSERT INTO `cs_system_param` VALUES (16, '数据库服务分类', 1, 'console.db.type', '01:MySQL,08:Oracle,11:SQLServer,12:PostgreSQL,16:Beyon,17:Gauss,18:Esgyn', '2020-11-30 16:07:55', '2020-11-30 16:07:55');
INSERT INTO `cs_system_param` VALUES (18, '模型分类', 3, 'dataManager.model.type', '01:原始数据,02:基础数据,03:分析数据', '2020-12-01 14:55:26', '2018-12-17 15:25:29');
INSERT INTO `cs_system_param` VALUES (20, '源数据分类', 3, 'dataManager.metadata.desc.type', '00:基本信息,01:MySQL,08:Oracle,10:Impala,05:HDFS,13:Alluxio,14:InfluxDb,16:Beyon', '2020-12-01 14:55:26', '2020-06-03 13:05:41');
INSERT INTO `cs_system_param` VALUES (21, '源数据输入类型分类', 3, 'dataManager.metadata.input.type', '01:文本,02:数字,03:日期,04:文件', '2020-12-01 14:55:26', '2017-07-10 18:40:46');
INSERT INTO `cs_system_param` VALUES (53, '数据存储分类', 3, 'dataManager.db.type', '00:全部,01:MYSQL,08:ORACLE,10:IMPALA&false,14:INFLUFXDB&false,15:GREENPLUM&false,16:BEYON,17:GAUSS,18:ESGYN', '2020-12-01 14:55:26', '2020-08-07 13:42:16');
INSERT INTO `cs_system_param` VALUES (55, '数据项注册源分类', 5, 'dataAccess.dataItem.src.type', '02:数据库,01:文件数据,03:服务接口,04:webservice接口,05:tcp,06:网络爬取,07:数据填报,08:消息监听', '2020-12-01 14:55:26', '2019-09-23 09:17:38');
INSERT INTO `cs_system_param` VALUES (56, '数据项注册目标分类', 5, 'dataAccess.dataItem.target.type', '01:文件系统,02:传输通道', '2020-12-01 14:55:26', '2017-05-08 14:21:01');
INSERT INTO `cs_system_param` VALUES (57, '注册项数据是否为可结构化数据', 5, 'dataAccess.dataItem.structure.type', '01:结构数据,02:非结构数据', '2020-12-01 14:55:26', '2017-04-21 17:19:28');
INSERT INTO `cs_system_param` VALUES (59, '用于资源包部署文件存储', 1, 'console.resource.deploy.folder', '/home/clouddata/iovCloud', '2020-12-01 14:55:26', '2018-07-31 17:53:46');
INSERT INTO `cs_system_param` VALUES (65, '模板放置地址', 5, 'dataAccess.dataItem.template.path', 'template', '2020-12-01 14:55:26', '2017-07-10 18:42:08');
INSERT INTO `cs_system_param` VALUES (66, '模板上传HDFS用户名称', 5, 'dataAccess.dataItem.template.user', 'HDFS', '2020-12-01 14:55:26', '2017-07-14 13:26:14');
INSERT INTO `cs_system_param` VALUES (73, '任务调度中调度管理的分类子菜单', 8, 'taskSchedule.scheduleManager.type', '01:调度流程,02:数据接入,03:数据清洗,04:任务注册', '2020-12-01 14:55:26', '2017-08-08 18:28:44');
INSERT INTO `cs_system_param` VALUES (76, '数据汇聚mapper分类', 6, 'receive.mapper.type', '01:MySQL,08:Oracle,03:Impala,05:HDFS,14:InfluxDb', '2020-12-01 14:55:26', '2019-03-03 12:21:23');
INSERT INTO `cs_system_param` VALUES (84, '数据采集DB_Topic', 5, 'dataAccess.db.topic.name', 'dg_db_sys_topic', '2020-12-01 14:55:26', '2018-09-11 14:35:29');
INSERT INTO `cs_system_param` VALUES (86, '数据汇聚日志收集主题', 6, 'receive.log.pulsar.topic', 'receive_workflow_log', '2020-12-01 14:55:26', '2018-09-05 13:57:46');
INSERT INTO `cs_system_param` VALUES (87, '数据汇聚日志收集分组', 6, 'receive.log.pulsar.subscription', 'receive_workflow_group', '2020-12-01 14:55:26', '2018-09-05 13:57:52');
INSERT INTO `cs_system_param` VALUES (102, '数据项db分类', 5, 'dataAccess.dataItem.db.type', '01:MySQL,08:Oracle,11:SQLServer,12:PostgreSQL,16:BEYON,17:GAUSS', '2020-12-01 14:55:26', '2020-08-07 13:42:00');
INSERT INTO `cs_system_param` VALUES (103, '数据项文件分类', 5, 'dataAccess.dataItem.file.type', '01:本地文件,05:HDFS,06:FTP', '2020-12-01 14:55:26', '2019-08-20 10:12:43');
INSERT INTO `cs_system_param` VALUES (105, '状态查询频率', 7, 'etl.status.period', '5000', '2020-12-01 14:55:26', '2017-08-10 19:08:20');
INSERT INTO `cs_system_param` VALUES (127, 'ssh连接服务器端口', 1, 'console.servicer.port', '22', '2020-12-01 14:55:26', '2018-08-01 14:53:39');
INSERT INTO `cs_system_param` VALUES (130, 'UDF函数路径', 10, 'udf.jar.path', 'impala/udf', '2020-12-01 14:55:26', '2018-01-12 18:37:31');
INSERT INTO `cs_system_param` VALUES (131, 'UDF上传名称', 10, 'udf.jar.user', 'impala', '2020-12-01 14:55:26', '2018-01-12 10:28:07');
INSERT INTO `cs_system_param` VALUES (132, '资源类型码解析', 2, 'operator.resource.typeCode', 'sourceDirectory:原始数据,masterDirectory:主数据,themeDirectory:主题数据', '2020-12-01 14:55:26', '2020-07-24 13:01:04');
INSERT INTO `cs_system_param` VALUES (149, '数据项文件类型分类', 5, 'dataAccess.dataItem.file.fileType', '03:File', '2020-12-01 14:55:26', '2020-06-04 09:50:25');
INSERT INTO `cs_system_param` VALUES (150, 'impala数据存储路径', 3, 'dataManager.storage.hdfs_url', '/impala_data', '2020-12-01 14:55:26', '2018-03-06 14:58:55');
INSERT INTO `cs_system_param` VALUES (151, 'impala支持的存储格式类型', 3, 'dataManager.storage.type', '01:txt,02:csv,03:parquet', '2020-12-01 14:55:26', '2018-04-17 18:27:53');
INSERT INTO `cs_system_param` VALUES (152, '基础分析类别显示分类', 3, 'dataManager.db.analyse.type', '00:全部,01:MYSQL,10:IMPALA&false,14:INFLUXDB&false,16:BEYON', '2020-12-01 14:55:26', '2020-06-11 00:55:11');
INSERT INTO `cs_system_param` VALUES (153, 'impala数据存储用户', 3, 'dataManager.storage.hdfs_user', 'impala_user', '2020-12-01 14:55:26', '2018-03-06 14:58:42');
INSERT INTO `cs_system_param` VALUES (154, '基础分析的源数据分类', 3, 'dataManager.metadata.analyse.type', '00:基本信息,10:Impala', '2020-12-01 14:55:26', '2018-03-07 09:39:48');
INSERT INTO `cs_system_param` VALUES (155, '数据模型的分类', 3, 'dataManger.model.type', '01:MySQL,08:Oracle,10:Impala,14:InfluxDb', '2020-12-01 14:55:26', '2019-02-15 11:02:37');
INSERT INTO `cs_system_param` VALUES (156, '面板定制资源类型', 2, 'operator.panelCustomSource.type', '1:图资源,2:表资源', '2020-12-01 14:55:26', '2018-08-02 09:42:25');
INSERT INTO `cs_system_param` VALUES (157, '面板定制图表资源地址前缀', 2, 'restful.ip.port', 'http://10.10.176.96:9002/manage', '2020-12-01 14:55:26', '2019-05-10 09:36:21');
INSERT INTO `cs_system_param` VALUES (159, '数据图谱Impala库', 3, 'dataManage.dataAtlas.impalaPath', '10.10.1.83:21050/it_select', '2020-12-01 14:55:26', '2018-06-07 18:37:43');
INSERT INTO `cs_system_param` VALUES (161, 'TCP服务', 5, 'dataAccess.dataItem.tcp.type', '01:TCP', '2020-12-01 14:55:26', '2018-04-17 16:29:20');
INSERT INTO `cs_system_param` VALUES (162, '网络爬虫', 5, 'dataAccess.dataItem.WebSpider.type', '01:网络爬虫', '2020-12-01 14:55:26', '2018-04-17 16:29:24');
INSERT INTO `cs_system_param` VALUES (163, 'impala数据存储类型', 3, 'dataManager.ImpalaStorage.type', '01:parquet', '2020-12-01 14:55:26', '2018-04-17 16:58:04');
INSERT INTO `cs_system_param` VALUES (164, '数据可导出分类', 3, 'dataManager.export.type', '06:FTP,05:HDFS', '2020-12-01 14:55:26', '2019-09-06 18:45:16');
INSERT INTO `cs_system_param` VALUES (167, '集群端口列表', 1, 'console.clustershell.portList', '{\"zookeeper\" : 2181,\"hive\" : 10000,\"spark\" : 7077,\"hdfs\" : 9000,\"ssh\" : 22,\"kafka\":9090}', '2020-12-01 14:55:26', '2020-08-07 13:41:15');
INSERT INTO `cs_system_param` VALUES (171, '源数据分类', 3, 'dataManager.metadata.type', '00:基本信息', '2020-12-01 14:55:26', '2018-05-14 16:54:35');
INSERT INTO `cs_system_param` VALUES (173, '填报数据项', 5, 'dataAccess.dataItem.fill.type', '01:填报数据项', '2020-12-01 14:55:26', '2018-07-30 19:06:51');
INSERT INTO `cs_system_param` VALUES (174, '部署资源包名称', 1, 'console.resource.name', 'DataAccess,DataProcessing,GlobalEngine', '2020-12-01 14:55:26', '2020-02-25 13:36:01');
INSERT INTO `cs_system_param` VALUES (177, '数据采集File_Topic', 5, 'dataAccess.file.topic.name', 'dg_file_sys_topic', '2020-12-01 14:55:26', '2018-09-11 14:34:26');
INSERT INTO `cs_system_param` VALUES (178, '数据工厂任务调度分类', 8, 'taskSchedule.dataFactory.type', '01:文件导出调度,02:数据库导出调度,03:数据工厂调度,04:数据治理调度', '2020-12-01 14:55:26', '2018-12-28 10:54:51');
INSERT INTO `cs_system_param` VALUES (179, '数据治理任务调度分类', 8, 'taskSchedule.masterData.type', '01:接入,02:清洗,03:校验,04:推送', '2020-12-01 14:55:26', '2018-09-19 15:12:09');
INSERT INTO `cs_system_param` VALUES (187, '数据项消息监听分类', 5, 'dataAccess.dataItem.message.type', '02:WebSocket,03:KAFKA', '2020-12-01 14:55:26', '2020-07-18 22:01:30');
INSERT INTO `cs_system_param` VALUES (189, '平台rest和server日志地址', 1, 'console.system.log', '/home/clouddata/Data_platform/logs/', '2020-12-01 14:55:26', '2020-07-22 10:28:34');
INSERT INTO `cs_system_param` VALUES (190, '文件存储的文件类型', 3, 'fileStorage.file.type', '00:全部,05:HDFS,13:Alluxio&false', '2020-12-01 14:55:26', '2020-06-11 00:56:38');
INSERT INTO `cs_system_param` VALUES (191, '采集自定义函数Jar包上传地址', 5, 'dataAccess.functionjar.address', 'D:/gfsdata/Upload/jar/access', '2020-12-01 14:55:26', '2020-06-06 03:23:07');
INSERT INTO `cs_system_param` VALUES (192, '汇聚自定义函数Jar包上传地址', 6, 'receive.functionjar.address', '/gfsdata/Upload/jar/receive', '2020-12-01 14:55:26', '2019-12-12 15:21:47');
INSERT INTO `cs_system_param` VALUES (193, '清洗自定义函数Jar包上传地址', 7, 'etl.functionjar.address', '/dataHub/algorithmWarehouse/Upload/jar', '2020-12-14 15:37:43', '2020-12-14 15:37:43');
INSERT INTO `cs_system_param` VALUES (194, '汇聚流程监听Topic', 6, 'receive.workflow.pulsar.topic', 'receive_workflow_topic', '2020-12-01 14:55:26', '2019-05-07 15:31:15');
INSERT INTO `cs_system_param` VALUES (195, '数据搜索类型', 3, 'dataManager.db.search.type', '00:全部,01:MySQL,16:BEYON', '2020-12-01 14:55:26', '2020-08-07 13:42:00');
INSERT INTO `cs_system_param` VALUES (196, '汇聚流程的运行状态', 6, 'receive.workflowstatus.pulsar.topic', 'receive_workflow_status_topic', '2020-12-01 14:55:26', '2019-05-27 11:04:27');
INSERT INTO `cs_system_param` VALUES (197, 'etl流程监听Topic', 7, 'etl.workflow.pulsar.topic', 'workflow_param_topic', '2020-12-01 14:55:26', '2019-06-13 11:22:42');
INSERT INTO `cs_system_param` VALUES (200, '数据采集Topic', 5, 'dataAccess.topic.name', 'dg_sys_topic', '2020-12-01 14:55:26', '2019-08-16 09:27:10');
INSERT INTO `cs_system_param` VALUES (201, '数据汇聚与数据清洗流程日志监听通道', 6, 'workflow_status_log_topic', 'workflow_status_log', '2020-12-01 14:55:26', '2019-06-12 17:30:16');
INSERT INTO `cs_system_param` VALUES (202, '上传地址', 7, 'upload.address', '/gfsdata/Upload', '2020-12-01 14:55:26', '2019-12-12 15:22:02');
INSERT INTO `cs_system_param` VALUES (203, 'HDFS使用情况', 3, 'hdfs.usage.url', 'http://192.168.5.135:9870/jmx?qry=Hadoop:service=NameNode,name=FSNamesystem', '2020-12-10 17:34:32', '2020-12-10 17:34:32');
INSERT INTO `cs_system_param` VALUES (204, 'Alluxio使用情况', 3, 'alluxio.usage.url', 'http://10.10.1.81:19999/api/v1/master/info', '2020-12-01 14:55:26', '2020-04-13 01:26:19');
INSERT INTO `cs_system_param` VALUES (205, 'mail服务器地址', 7, 'mail.smtp.host', 'pop.163.com', '2020-12-01 14:55:26', '2020-07-16 15:41:10');
INSERT INTO `cs_system_param` VALUES (206, 'mail服务器端口', 7, 'mail.smtp.port', '110', '2020-12-01 14:55:26', '2020-07-16 15:41:17');
INSERT INTO `cs_system_param` VALUES (207, 'mail发信人账户', 7, 'mail.smtp.account', '123qq.com', '2020-12-01 14:55:26', '2020-07-16 16:01:05');
INSERT INTO `cs_system_param` VALUES (208, 'mail发信人账户密码', 7, 'mail.smtp.password', '1312313', '2020-12-01 14:55:26', '2020-07-16 16:00:49');
INSERT INTO `cs_system_param` VALUES (209, 'mail邮件协议', 7, 'mail.transport.protocol', 'pop3', '2020-12-01 14:55:26', '2020-07-16 15:41:41');
INSERT INTO `cs_system_param` VALUES (215, '文件数据项文件类型分类', 5, 'dataAccess.dataItem.file.fileTypeCode', 'binary:二进制,image:图片,video:视频,archive:压缩包,text:TXT文件,csv:CSV文件,excel:Excel文件,other:其它', '2020-12-01 14:55:26', '2019-08-21 11:32:12');
INSERT INTO `cs_system_param` VALUES (216, 'socket类型', 6, 'dataAccess.socketDataItem.socket.type', '01:TCP,02:UDP', '2020-12-01 14:55:26', '2019-10-21 16:04:21');
INSERT INTO `cs_system_param` VALUES (219, '服务参数类型', 5, 'service.param.type', '01:path,02:queryParam,03:header,04:jsonBody', '2020-12-01 14:55:26', '2019-11-18 17:40:12');
INSERT INTO `cs_system_param` VALUES (220, '导入数据库数库Url地址', 15, 'import.datasource.url', 'jdbc:mysql://10.10.1.74:3307/iov_import_data?useUnicode=true&characterEncoding=utf-8&serverTimezone=GMT%2B8', '2020-12-01 14:55:26', '2019-11-20 13:37:33');
INSERT INTO `cs_system_param` VALUES (221, '导入数据库', 15, 'import.database', 'iov_import_data', '2020-12-01 14:55:26', '2019-11-20 13:36:58');
INSERT INTO `cs_system_param` VALUES (222, 'auth认证类型', 5, 'restful.auth.type', '01:免认证,02:用户名/密码认证,03:OAuth2.0', '2020-12-01 14:55:26', '2019-11-20 14:46:17');
INSERT INTO `cs_system_param` VALUES (223, '数据治理校验规则上传jar包地址', 16, 'rule.jar.path', '/gfsdata/Upload/jar/rule', '2020-12-01 14:55:26', '2019-12-13 10:07:47');
INSERT INTO `cs_system_param` VALUES (224, '数据治理流程监听Topic', 16, 'governance.workflow.pulsar.topic', 'governance_workflow_topic', '2020-12-01 14:55:26', '2019-12-16 18:24:19');
INSERT INTO `cs_system_param` VALUES (225, '导入数据库用户', 15, 'importDatabaseUser', 'root', '2020-12-01 14:55:26', '2020-03-06 18:01:13');
INSERT INTO `cs_system_param` VALUES (226, '导入数据库密码', 15, 'importDatabaseUser', '123456', '2020-12-01 14:55:26', '2020-03-06 18:03:11');
INSERT INTO `cs_system_param` VALUES (227, 'mail暂存附件地址', 7, 'mail.attach.path', '/gfsdata/java_mail', '2020-12-01 14:55:26', '2020-03-10 16:36:22');
INSERT INTO `cs_system_param` VALUES (228, '服务平台数据填报类型', 5, 'dataFilling.service.code.name', '01:原始数据填报,02:主数据填报,03:文件上传&false', '2020-12-01 14:55:26', '2020-07-13 14:34:32');
INSERT INTO `cs_system_param` VALUES (229, '数据规划全部类型', 5, 'datamanage.all.types', '00:全部目标库,01:MySQL,08:ORACLE,10:IMPALA&false,14:INFLUXDB&false,15:GREENPLUM&false,05:HDFS,13:ALLUXIO&false,16:BEYON,17:GAUSS,18:ESGYN', '2020-12-01 14:55:26', '2020-09-06 09:55:46');
INSERT INTO `cs_system_param` VALUES (230, '数据规划非原始的全部类型', 5, 'datamanage.master.types', '00:全部,01:MySQL,10:IMPALA&false,14:INFLUXDB&false,05:HDFS,13:ALLUXIO&false,16:BEYON', '2020-12-01 14:55:26', '2020-06-29 17:24:49');
INSERT INTO `cs_system_param` VALUES (231, '中心节点ip', 17, 'nodemanage.masterAddress', '127.0.0.1:5186', '2020-12-01 14:55:26', '2020-04-08 13:26:37');
INSERT INTO `cs_system_param` VALUES (232, '数据接口数据采集', 5, 'dataAssert.dataAccess.DataBaseAndFile', 'DATABASE:数据库,File:文件数据', '2020-12-01 14:55:26', '2020-05-11 15:02:23');
INSERT INTO `cs_system_param` VALUES (233, '分片上传文件的临时目录', 3, 'localTemporary', '/opt/data/datamanageTemp/', '2020-12-01 14:55:26', '2020-05-20 16:24:30');
INSERT INTO `cs_system_param` VALUES (236, '生命周期历史文件根目录', 20, 'historyDirectory', 'historyDirectory', '2020-12-01 14:55:26', '2020-05-27 15:53:39');
INSERT INTO `cs_system_param` VALUES (237, '生命周期历史文件根目录\r\n', 20, 'archiveDirctory', 'archiveDirctory', '2020-12-01 14:55:26', '2020-05-27 15:55:06');
INSERT INTO `cs_system_param` VALUES (238, '服务平台自主分析面板背景图上传', 15, 'imgUploadAddr', '/opt/data/imgUpload/', '2020-12-01 14:55:26', '2020-06-02 10:22:48');
INSERT INTO `cs_system_param` VALUES (239, '共享库类型', 5, 'datamanage.share.types', '01:MySQL,08:ORACLE,16:BEYON,05:HDFS,17:FTP', '2020-12-01 14:55:26', '2020-06-16 17:06:44');
INSERT INTO `cs_system_param` VALUES (240, '动作库jar上传地址', 21, 'actionlibrary.jar.address', '/action-library', '2020-12-01 14:55:26', '2020-06-17 09:32:36');
INSERT INTO `cs_system_param` VALUES (241, '同步资源中心授权码', 1, 'resouce.center.secretKey', '934b-5358-00b1-cba8-f96a-5d72-f72f-1611', '2020-12-01 14:55:26', '2020-09-27 10:51:53');
INSERT INTO `cs_system_param` VALUES (242, '同步资源中心开关', 1, 'resouce.center.switch', 'true', '2020-12-01 14:55:26', '2020-07-02 16:57:59');
INSERT INTO `cs_system_param` VALUES (243, '资源中心心跳授权码', 1, 'resouce.center.heartBeatKey', '934b-5358-00b1-cba8-f96a-5d72-f72f-1611', '2020-12-01 14:55:26', '2020-09-27 10:51:48');
INSERT INTO `cs_system_param` VALUES (244, '初始化netty服务集合', 1, 'netty.servers', '52.82.112.3:8033,', '2020-12-01 14:55:26', '2020-09-27 10:53:34');
INSERT INTO `cs_system_param` VALUES (245, '资源中心netty地址端口', 1, 'resouce.center.server', '52.82.112.3:8033', '2020-12-01 14:55:26', '2020-09-27 10:53:28');
INSERT INTO `cs_system_param` VALUES (248, '资源中心共享接口地址', 1, 'resouce.center.share.interfaceurl', 'http://52.82.112.3:5068/mdm/external/reportInterface', '2020-12-01 14:55:26', '2020-09-27 10:52:48');
INSERT INTO `cs_system_param` VALUES (249, '资源中心共享数据库接口', 1, 'resouce.center.share.dburl', 'http://52.82.112.3:5068/mdm/external/reportDataBase', '2020-12-01 14:55:26', '2020-09-27 10:52:31');
INSERT INTO `cs_system_param` VALUES (250, '资源中心共享授权码', 1, 'resouce.center.share.Key', '934b-5358-00b1-cba8-f96a-5d72-f72f-1611', '2020-12-01 14:55:26', '2020-09-27 10:50:19');
INSERT INTO `cs_system_param` VALUES (254, 'qq', 17, 'ww', 'zz', '2020-12-01 14:55:26', '2020-07-23 11:34:52');
INSERT INTO `cs_system_param` VALUES (255, 'livy的jar文件路径', 1, 'filePath', 'user/livy/file/', '2020-12-01 14:55:26', '2020-09-07 19:25:44');
INSERT INTO `cs_system_param` VALUES (256, 'Livy', 1, 'livy.toSpark.url', 'http://192.168.5.135:8998/', '2020-12-01 14:55:26', '2020-11-26 13:52:50');
INSERT INTO `cs_system_param` VALUES (257, 'yarn的host', 1, 'yarn.host', '192.168.5.135', '2020-12-01 14:55:26', '2020-11-26 13:52:37');
INSERT INTO `cs_system_param` VALUES (260, 'BEYON资源类型', 2, 'beyon.resource.typeCode', 'sourceDirectory:原始数据,masterDirectory:基础数据,themeDirectory:主题数据,analysisDirectory:分析数据', '2020-12-01 14:55:26', '2020-08-17 14:15:57');
INSERT INTO `cs_system_param` VALUES (261, '实时监听数据库类型', 5, 'dataAccess.dataMonitor.db.type', '00:全部源库,01:MySQL,08:Oracle&false,11:SQLServer,12:PostgreSQL,16:BEYON', '2020-12-01 14:55:26', '2020-09-24 20:43:26');
INSERT INTO `cs_system_param` VALUES (262, '同步资源中心接口URL', 1, 'resouce.center.synDpAndUsUrl', 'http://52.82.112.3:5068/mdm/external/getDeptAndUserBySecretKey', '2020-12-01 14:55:26', '2020-09-27 15:00:17');
INSERT INTO `cs_system_param` VALUES (263, 'kafka', 1, 'param', '{\"partition\":\"3\",\"factor\":\"1\"}', '2020-12-01 14:55:26', '2020-09-02 10:59:35');
INSERT INTO `cs_system_param` VALUES (266, 'yarn的host用户名', 1, 'yarn.host.user', 'root', '2020-12-01 14:55:26', '2020-09-08 15:06:44');
INSERT INTO `cs_system_param` VALUES (267, 'yarn的host密码', 1, 'yarn.host.pwd', 'unis.com123', '2020-12-01 14:55:26', '2020-09-10 13:51:17');
INSERT INTO `cs_system_param` VALUES (272, 'ww', 23, 'ww', 'ww', '2020-12-01 14:55:26', '2020-09-10 14:24:22');
INSERT INTO `cs_system_param` VALUES (273, 'www', 21, 'www', 'ww', '2020-12-01 14:55:26', '2020-09-10 14:41:11');
INSERT INTO `cs_system_param` VALUES (274, 'ee', 23, 'ee', 'eee', '2020-12-01 14:55:26', '2020-09-10 14:26:57');
INSERT INTO `cs_system_param` VALUES (278, 'ccgggggggggggggggggg', 27, '1ggggggggggggggggggggggggggggggg', '1ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', '2020-12-04 17:22:22', '2020-12-04 17:22:22');
INSERT INTO `cs_system_param` VALUES (279, '数据项检索目录分类', 2, 'dataSearch.resource.typeCode', '01:原始数据,02:资源数据,03:分析数据,05:主题数据', '2020-12-09 10:00:28', '2020-12-09 10:00:28');
INSERT INTO `cs_system_param` VALUES (280, '数据项检索数据库分类', 2, 'dataSearch.all.types', '01:MySQL,08:ORACLE,16:BEYON,17:GAUSS,18:ESGYN', '2020-12-01 14:55:26', '2020-09-25 13:43:02');
INSERT INTO `cs_system_param` VALUES (281, '标签库发送spark的topic', 21, 'tagmodel_param_topic', 'tagmodel_param_topic', '2020-12-01 14:55:26', '2020-09-27 22:36:09');
INSERT INTO `cs_system_param` VALUES (282, '石家庄ftp服务器ip', 1, 'sjz.ftp.ip', '192.168.5.134', '2020-12-01 14:55:26', '2020-10-26 11:54:09');
INSERT INTO `cs_system_param` VALUES (283, '石家庄ftp服务器端口', 1, 'sjz.ftp.port', '21', '2020-12-01 14:55:26', '2020-10-26 11:54:31');
INSERT INTO `cs_system_param` VALUES (284, '石家庄ftp服务器用户名', 1, 'sjz.ftp.username', 'test1', '2020-12-01 14:55:26', '2020-10-26 11:54:59');
INSERT INTO `cs_system_param` VALUES (285, '石家庄ftp服务器密码', 1, 'sjz.ftp.password', '123456', '2020-12-01 14:55:26', '2020-10-26 11:55:24');
INSERT INTO `cs_system_param` VALUES (286, '石家庄ftp服务器错误回执路径', 1, 'sjz.error.ftpPath', '/hyh/errortest/', '2020-12-01 14:55:26', '2020-10-26 17:14:58');
INSERT INTO `cs_system_param` VALUES (287, '石家庄hdfs服务器错误回执存储路径', 1, 'sjz.error.hdfsPath', '/DATA/ERRORRECEIPT/', '2020-12-01 14:55:26', '2020-10-26 17:15:44');
INSERT INTO `cs_system_param` VALUES (289, '数据中台server服务', 1, 'data.platform.server.addr', 'http://192.168.5.135:5186/iov/rest/', '2020-12-01 14:55:26', '2020-11-26 13:51:37');
INSERT INTO `cs_system_param` VALUES (290, '数据中台server服务', 1, 'data.platform.server.hyh', 'http://localhost:5186/iov/rest/', '2020-11-30 20:14:15', '2020-11-30 20:14:15');
INSERT INTO `cs_system_param` VALUES (291, 'etl流程SparkUDF上传地址', 7, 'etl.udf.address', '/dataHub/algorithmWarehouse/Upload/jar/udf/', '2020-12-01 19:04:21', '2020-12-01 15:12:45');
INSERT INTO `cs_system_param` VALUES (294, 'ffffffffffffffffffff', 27, 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2020-12-04 17:22:43', '2020-12-04 17:22:43');
INSERT INTO `cs_system_param` VALUES (295, 'cindy', 31, 'key', '@@@￥￥￥￥****（）（）（）', '2020-12-10 15:10:44', '2020-12-10 15:10:44');

-- ----------------------------
-- Table structure for cs_system_param_catalog
-- ----------------------------
DROP TABLE IF EXISTS `cs_system_param_catalog`;
CREATE TABLE `cs_system_param_catalog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NULL DEFAULT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_system_param_catalog
-- ----------------------------
INSERT INTO `cs_system_param_catalog` VALUES (1, NULL, '00', '平台运维', '2020-12-01 14:55:26', '2020-04-11 19:33:22');
INSERT INTO `cs_system_param_catalog` VALUES (2, NULL, '01', '平台运营', '2020-12-01 14:55:26', '2017-07-10 18:39:39');
INSERT INTO `cs_system_param_catalog` VALUES (3, NULL, '04', '数据存储', '2020-12-01 14:55:26', '2017-07-10 18:40:28');
INSERT INTO `cs_system_param_catalog` VALUES (5, NULL, '06', '数据采集', '2020-12-01 14:55:26', '2018-09-11 14:28:22');
INSERT INTO `cs_system_param_catalog` VALUES (6, NULL, '07', '数据汇聚', '2020-12-01 14:55:26', '2017-07-10 18:42:25');
INSERT INTO `cs_system_param_catalog` VALUES (7, NULL, '08', '数据清洗', '2020-12-01 14:55:26', '2017-07-10 18:43:30');
INSERT INTO `cs_system_param_catalog` VALUES (8, NULL, '09', '任务调度', '2020-12-01 14:55:26', '2017-07-10 18:44:13');
INSERT INTO `cs_system_param_catalog` VALUES (14, NULL, '02', '功能开关', '2020-12-01 14:55:26', '2019-10-24 16:49:08');
INSERT INTO `cs_system_param_catalog` VALUES (15, NULL, '10', '数据分析', '2020-12-01 14:55:26', '2019-11-20 13:33:02');
INSERT INTO `cs_system_param_catalog` VALUES (16, NULL, '11', '数据治理', '2020-12-01 14:55:26', '2019-11-20 13:33:02');
INSERT INTO `cs_system_param_catalog` VALUES (17, NULL, '12', '节点管理', '2020-12-01 14:55:26', '2020-04-16 14:35:01');
INSERT INTO `cs_system_param_catalog` VALUES (20, NULL, '13', '生命周期', '2020-12-01 14:55:26', '2020-09-10 14:15:40');
INSERT INTO `cs_system_param_catalog` VALUES (21, NULL, '14', '规则引擎', '2020-12-01 14:55:26', '2020-06-17 09:29:24');
INSERT INTO `cs_system_param_catalog` VALUES (27, NULL, 'ces', 'ces', '2020-12-02 08:56:50', '2020-12-02 08:56:50');
INSERT INTO `cs_system_param_catalog` VALUES (29, NULL, 'A', '模块A', '2020-12-01 14:55:26', '2020-09-24 13:54:34');
INSERT INTO `cs_system_param_catalog` VALUES (31, NULL, '%%%%%%%%%', 'cindy', '2020-12-10 15:07:15', '2020-12-10 15:07:15');
INSERT INTO `cs_system_param_catalog` VALUES (33, NULL, '***', 'cindy2', '2020-12-10 15:11:30', '2020-12-10 15:11:30');

-- ----------------------------
-- Table structure for cs_user
-- ----------------------------
DROP TABLE IF EXISTS `cs_user`;
CREATE TABLE `cs_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NULL DEFAULT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `p_id` int(11) NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `user` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `pwd` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `salt` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `mobile_phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `member_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `unit` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `start_date` date NULL DEFAULT NULL,
  `end_date` date NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `del_flag` int(11) NULL DEFAULT NULL,
  `center_user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '资源中心用户id',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`, `mobile_phone`) USING BTREE,
  UNIQUE INDEX `user`(`id`, `user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 175 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cs_user
-- ----------------------------
INSERT INTO `cs_user` VALUES (1, NULL, 1, NULL, '超级管理员', 'admin', '3cf0bded1eb951c7eef37184bab3e587', '37808cc4353f6e787273c7daed1a9e56', NULL, NULL, '13089658121', NULL, 'hirian', '2017-05-03', '2030-08-30', '2020-12-01 14:55:26', 0, NULL, '2020-02-29 21:11:49');

-- ----------------------------
-- Table structure for df_data_filling_item
-- ----------------------------
DROP TABLE IF EXISTS `df_data_filling_item`;
CREATE TABLE `df_data_filling_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据项名称',
  `catalog_id` int(11) NOT NULL COMMENT '目标表目录序号',
  `catalog_content_id` int(11) NOT NULL COMMENT '目标表序号',
  `db_id` int(11) NOT NULL COMMENT '目标表数据库序号',
  `flag` tinyint(1) NOT NULL COMMENT '是否允许审批（0：不允许；1：允许）',
  `status` tinyint(1) NOT NULL COMMENT '状态（0:未发布；1:已发布）',
  `authorize_status` int(3) NULL DEFAULT NULL COMMENT '授权状态',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据填报数据项' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for df_filling_content
-- ----------------------------
DROP TABLE IF EXISTS `df_filling_content`;
CREATE TABLE `df_filling_content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `data_filling_item_id` int(11) NOT NULL COMMENT '数据填报项id',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '填报内容',
  `apply_user_id` int(11) NOT NULL COMMENT '填报人id',
  `approve_user_id` int(11) NULL DEFAULT NULL COMMENT '审批人id',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门id',
  `approve_date` datetime(0) NULL DEFAULT NULL COMMENT '审批日期',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '解析excel信息',
  `approve_opinion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审批意见',
  `apply_opinion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '申请理由',
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '填报内容状态（0:未上传 1:已上报 2:审批通过 3:审批驳回 4:解析中 5:解析成功 6:解析失败）',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据填报内容' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for df_filling_rules
-- ----------------------------
DROP TABLE IF EXISTS `df_filling_rules`;
CREATE TABLE `df_filling_rules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `data_filling_item_id` int(11) NOT NULL COMMENT '数据填报项id',
  `data_content_fields_id` int(11) NOT NULL COMMENT '目标表字段id',
  `filling_type` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '填报规则',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据填报规则' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_data_catalog
-- ----------------------------
DROP TABLE IF EXISTS `dg_data_catalog`;
CREATE TABLE `dg_data_catalog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `p_id` int(11) NOT NULL COMMENT '父id',
  `department_id` int(11) NOT NULL COMMENT '部门id',
  `project_id` int(11) NOT NULL COMMENT '项目id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型（01=数据库，02=文件数据）',
  `item_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '栏目分类01采集02推送',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采集左侧目录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_data_catalog
-- ----------------------------
INSERT INTO `dg_data_catalog` VALUES (1, -1, 40, 170, 'test', '2020-10-25 14:03:32', '01', '01', '2020-10-25 14:03:32');
INSERT INTO `dg_data_catalog` VALUES (2, -1, 40, 170, '石家庄治安', '2020-10-25 14:11:18', '01', '02', '2020-10-25 14:11:18');
INSERT INTO `dg_data_catalog` VALUES (3, -1, 40, 170, '2222', '2020-10-25 14:12:55', '02', '01', '2020-10-25 14:12:55');
INSERT INTO `dg_data_catalog` VALUES (4, -1, 56, 177, '流程测试', '2020-10-26 10:27:45', '01', '01', '2020-10-26 10:27:45');
INSERT INTO `dg_data_catalog` VALUES (5, -1, 56, 177, '数据推送测试', '2020-10-26 13:51:19', '01', '02', '2020-10-26 13:51:19');
INSERT INTO `dg_data_catalog` VALUES (6, -1, 59, 179, 'mTO', '2020-10-26 14:46:40', '01', '01', '2020-10-26 14:46:40');
INSERT INTO `dg_data_catalog` VALUES (7, -1, 56, 177, '文件推送测试', '2020-10-26 15:01:53', '02', '02', '2020-10-26 15:01:53');
INSERT INTO `dg_data_catalog` VALUES (8, -1, 40, 170, '测试', '2020-10-26 16:19:47', '03', '01', '2020-10-26 16:19:47');
INSERT INTO `dg_data_catalog` VALUES (9, -1, 40, 170, '石家庄', '2020-10-26 16:41:59', '02', '02', '2020-10-26 16:41:59');
INSERT INTO `dg_data_catalog` VALUES (10, 9, 40, 170, '警宗推送', '2020-10-26 16:42:11', '02', '02', '2020-10-26 16:42:11');
INSERT INTO `dg_data_catalog` VALUES (12, -1, 159, 196, '人员信息', '2020-10-27 11:20:54', '01', '01', '2020-10-27 11:20:54');
INSERT INTO `dg_data_catalog` VALUES (13, -1, 159, 196, '车辆信息', '2020-10-27 11:21:04', '01', '01', '2020-10-27 11:21:04');
INSERT INTO `dg_data_catalog` VALUES (14, -1, 159, 196, '区域信息', '2020-10-27 11:21:11', '01', '01', '2020-10-27 11:21:11');
INSERT INTO `dg_data_catalog` VALUES (15, -1, 56, 177, '公共课', '2020-10-27 13:58:07', '03', '01', '2020-10-27 13:58:07');
INSERT INTO `dg_data_catalog` VALUES (17, -1, 56, 177, '数据采集', '2020-10-27 15:25:40', '03', '01', '2020-10-27 15:25:40');
INSERT INTO `dg_data_catalog` VALUES (18, -1, 56, 177, '采集流程测试', '2020-10-27 17:45:55', '01', '01', '2020-10-27 17:45:55');
INSERT INTO `dg_data_catalog` VALUES (21, -1, 56, 177, '尹顺流程测试', '2020-10-28 08:55:47', '01', '01', '2020-10-28 08:55:47');
INSERT INTO `dg_data_catalog` VALUES (23, -1, 56, 177, '文件采集mysql测试', '2020-10-28 11:39:41', '02', '01', '2020-10-28 11:39:41');
INSERT INTO `dg_data_catalog` VALUES (24, -1, 157, 194, 'testfile', '2020-10-29 09:37:23', '02', '01', '2020-10-29 09:37:23');
INSERT INTO `dg_data_catalog` VALUES (26, -1, 159, 196, '推送人员信息', '2020-10-29 15:38:53', '01', '02', '2020-10-29 15:38:53');
INSERT INTO `dg_data_catalog` VALUES (27, -1, 59, 179, '视频', '2020-10-30 16:50:09', '02', '01', '2020-10-30 16:50:09');
INSERT INTO `dg_data_catalog` VALUES (28, -1, 59, 179, '消息', '2020-10-30 16:53:24', '03', '01', '2020-10-30 16:53:24');
INSERT INTO `dg_data_catalog` VALUES (30, -1, 157, 194, '数据库采集测试一', '2020-10-30 23:33:56', '01', '01', '2020-10-30 23:33:56');
INSERT INTO `dg_data_catalog` VALUES (31, -1, 56, 177, '推送流程测试', '2020-11-02 13:41:32', '01', '02', '2020-11-02 13:41:32');
INSERT INTO `dg_data_catalog` VALUES (32, -1, 40, 170, '测试', '2020-11-03 15:26:13', '07', '01', '2020-11-03 15:26:13');
INSERT INTO `dg_data_catalog` VALUES (33, -1, 56, 177, '薛测试', '2020-11-05 08:57:32', '01', '01', '2020-11-05 08:57:32');
INSERT INTO `dg_data_catalog` VALUES (34, -1, 1, 2, 'mysql采集', '2020-11-26 13:44:10', '01', '01', '2020-11-26 13:44:10');
INSERT INTO `dg_data_catalog` VALUES (35, -1, 3, 3, 'mysql采集推送', '2020-11-26 13:56:40', '01', '01', '2020-12-03 22:04:34');
INSERT INTO `dg_data_catalog` VALUES (37, -1, 3, 3, 'BEYON采集', '2020-11-26 15:51:39', '01', '01', '2020-11-26 15:51:39');
INSERT INTO `dg_data_catalog` VALUES (38, -1, 3, 3, '数据推送1', '2020-11-26 16:19:22', '01', '02', '2020-12-11 15:53:14');
INSERT INTO `dg_data_catalog` VALUES (39, -1, 3, 3, '服务接口', '2020-11-26 19:01:48', '08', '01', '2020-11-26 19:01:48');
INSERT INTO `dg_data_catalog` VALUES (40, -1, 3, 3, '文件test', '2020-11-26 21:15:43', '02', '01', '2020-12-08 13:39:03');
INSERT INTO `dg_data_catalog` VALUES (41, -1, 1, 2, '1127', '2020-11-27 08:45:43', '08', '01', '2020-11-27 08:45:43');
INSERT INTO `dg_data_catalog` VALUES (42, -1, 3, 3, '消息监控', '2020-11-27 14:07:42', '03', '01', '2020-12-08 16:04:37');
INSERT INTO `dg_data_catalog` VALUES (43, -1, 3, 3, 'file', '2020-11-27 15:37:28', '02', '02', '2020-12-11 15:53:48');
INSERT INTO `dg_data_catalog` VALUES (44, -1, 1, 2, '文件采集', '2020-11-27 16:39:08', '02', '01', '2020-11-27 16:39:08');
INSERT INTO `dg_data_catalog` VALUES (45, -1, 1, 2, '1127', '2020-11-27 16:49:51', '01', '02', '2020-11-27 16:49:51');
INSERT INTO `dg_data_catalog` VALUES (46, -1, 3, 3, '视频采集', '2020-11-28 14:48:06', '04', '01', '2020-11-28 14:48:06');
INSERT INTO `dg_data_catalog` VALUES (47, -1, 3, 3, '音频采集', '2020-11-28 14:54:51', '05', '01', '2020-11-28 14:54:51');
INSERT INTO `dg_data_catalog` VALUES (48, -1, 3, 3, 'pics', '2020-11-28 14:59:37', '06', '01', '2020-11-28 14:59:37');
INSERT INTO `dg_data_catalog` VALUES (49, -1, 3, 3, 'txt', '2020-11-28 15:03:47', '07', '01', '2020-11-28 15:03:47');
INSERT INTO `dg_data_catalog` VALUES (50, -1, 1, 2, 'test', '2020-11-30 18:22:08', '02', '02', '2020-12-11 15:51:39');
INSERT INTO `dg_data_catalog` VALUES (51, -1, 1, 2, 'test', '2020-12-01 09:52:29', '03', '01', '2020-12-01 09:52:29');
INSERT INTO `dg_data_catalog` VALUES (52, -1, 1, 4, '1201', '2020-12-01 10:51:24', '07', '01', '2020-12-01 10:51:24');
INSERT INTO `dg_data_catalog` VALUES (53, -1, 3, 4, '飞洒发', '2020-12-01 14:52:01', '01', '01', '2020-12-01 14:52:01');
INSERT INTO `dg_data_catalog` VALUES (54, -1, 1, 3, '人口库', '2020-12-01 16:34:15', '01', '01', '2020-12-01 16:34:28');
INSERT INTO `dg_data_catalog` VALUES (55, -1, 1, 3, '1', '2020-12-01 18:52:48', '01', '02', '2020-12-01 18:52:48');
INSERT INTO `dg_data_catalog` VALUES (56, -1, 9, 6, '教师信息', '2020-12-02 11:02:20', '01', '01', '2020-12-02 11:02:20');
INSERT INTO `dg_data_catalog` VALUES (57, -1, 9, 6, '学生信息', '2020-12-02 14:13:58', '01', '01', '2020-12-02 14:13:58');
INSERT INTO `dg_data_catalog` VALUES (59, 58, 1, 2, '视频采集1203', '2020-12-03 14:34:36', '04', '01', '2020-12-03 14:34:36');
INSERT INTO `dg_data_catalog` VALUES (60, -1, 1, 2, '视频采集', '2020-12-03 15:00:03', '04', '01', '2020-12-03 15:00:03');
INSERT INTO `dg_data_catalog` VALUES (61, -1, 1, 2, '图片采集', '2020-12-03 17:16:27', '06', '01', '2020-12-03 17:16:27');
INSERT INTO `dg_data_catalog` VALUES (62, -1, 1, 2, '文本采集', '2020-12-03 17:30:22', '07', '01', '2020-12-03 17:30:22');
INSERT INTO `dg_data_catalog` VALUES (63, -1, 1, 2, '音频采集', '2020-12-03 17:34:08', '05', '01', '2020-12-03 17:34:08');
INSERT INTO `dg_data_catalog` VALUES (65, -1, 1, 4, 'fy', '2020-12-04 18:28:09', '02', '01', '2020-12-04 18:28:09');
INSERT INTO `dg_data_catalog` VALUES (66, -1, 1, 2, '1', '2020-12-05 10:53:21', '01', '01', '2020-12-05 10:53:21');
INSERT INTO `dg_data_catalog` VALUES (67, 66, 1, 2, '1', '2020-12-05 10:53:26', '01', '01', '2020-12-05 10:53:26');
INSERT INTO `dg_data_catalog` VALUES (68, -1, 1, 2, '2', '2020-12-05 10:53:47', '01', '01', '2020-12-05 10:53:47');
INSERT INTO `dg_data_catalog` VALUES (69, -1, 1, 2, 'third', '2020-12-07 16:34:55', '02', '01', '2020-12-07 16:34:55');
INSERT INTO `dg_data_catalog` VALUES (70, -1, 1, 3, 'asa', '2020-12-10 17:44:28', '08', '01', '2020-12-10 17:44:28');
INSERT INTO `dg_data_catalog` VALUES (71, -1, 1, 2, '功能测试', '2020-12-11 10:57:29', '01', '02', '2020-12-11 10:57:29');
INSERT INTO `dg_data_catalog` VALUES (72, -1, 3, 3, '推送测试', '2020-12-11 15:52:31', '01', '02', '2020-12-11 15:52:55');
INSERT INTO `dg_data_catalog` VALUES (73, -1, 3, 3, '文件数据', '2020-12-11 15:53:37', '02', '02', '2020-12-11 15:53:37');
INSERT INTO `dg_data_catalog` VALUES (76, -1, 1, 3, 'wulei源', '2020-12-16 15:12:11', '01', '01', '2020-12-16 15:12:11');

-- ----------------------------
-- Table structure for dg_db_data_item
-- ----------------------------
DROP TABLE IF EXISTS `dg_db_data_item`;
CREATE TABLE `dg_db_data_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `catalog_id` int(11) NOT NULL COMMENT '所属目录id',
  `db_id` int(11) NOT NULL COMMENT '数据库ID',
  `source_name_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '源表英文名',
  `source_name_cn` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '源表中文名',
  `db_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '库类型(01:MySQL,08:Oracle,11:SQLServer,12:PostgreSQL,16:Beyon,17:Gauss)',
  `access_mode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采集模式(01:代理，02：直连）',
  `save_mode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库模式(01：新增，02：更新，03：覆盖)',
  `status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（01为生成任务，02已生成任务，03执行成功，04、执行失败）',
  `excute_time` timestamp(0) NULL DEFAULT NULL COMMENT '执行时间',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `target_catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '目标id',
  `target_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '输出到目标类型（01：数据库，02：文件）',
  `table_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据库表类型（01：数据库表，02：视图）',
  `data_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源编目类型',
  `view_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '视图sql',
  `parameter_id` int(11) NULL DEFAULT NULL COMMENT '规则参数id',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门ID',
  `item_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '01采集02推送',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库数据项' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_db_item_field_map
-- ----------------------------
DROP TABLE IF EXISTS `dg_db_item_field_map`;
CREATE TABLE `dg_db_item_field_map`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_item_id` int(11) NULL DEFAULT NULL,
  `map_filed` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `file_db` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_db_task_rules
-- ----------------------------
DROP TABLE IF EXISTS `dg_db_task_rules`;
CREATE TABLE `dg_db_task_rules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `data_item_id` int(11) NULL DEFAULT NULL COMMENT '数据项id',
  `package_size` int(11) NULL DEFAULT NULL COMMENT '分包大小（2000）',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方式(时间戳:1 增量标识:2 等)',
  `type_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '起始时间',
  `field_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '增量字段',
  `total_or_increment` tinyint(1) NULL DEFAULT NULL COMMENT '全量或增量(0:增量；1全量)',
  `base_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'SQL语句',
  `script` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '生成动参的groovy脚本',
  `use_script` tinyint(1) NULL DEFAULT NULL COMMENT '是否使用动参',
  `before_script` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '运行前脚本',
  `after_script` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '运行后脚本',
  `before_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运行前脚本执行状态(是否执行 false:不执行 true:执行)',
  `after_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运行后脚本执行状态(是否执行 false:不执行 true:执行)',
  `create_date` timestamp(0) NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `topic_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'topic是否已启动（01：未启动，02：已启动）',
  `handle_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理方式（00无，01算法，02规则）',
  `handle_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则ids',
  `corn_task_id` int(11) NULL DEFAULT NULL COMMENT '定时任务配置id',
  `topic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '唯一序列topic',
  `increment_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '01：按时间字段；02：按排序字段',
  `increment_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '增量字段',
  `increment_time` timestamp(0) NULL DEFAULT NULL COMMENT '增量字段时间',
  `increment_offset` int(11) NULL DEFAULT NULL COMMENT '排序字段偏移',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库任务规则' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_debezium_data_item
-- ----------------------------
DROP TABLE IF EXISTS `dg_debezium_data_item`;
CREATE TABLE `dg_debezium_data_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name_en` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '英文名称',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `src_type_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '源类型',
  `department_id` int(11) NOT NULL COMMENT '部门id',
  `topic_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一序列号值',
  `status` int(1) NOT NULL COMMENT '状态(0:未发布；1已发布;  2已启动；3启动中；4暂停中)',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `db_id` int(11) NOT NULL COMMENT '数据库id',
  `table_names` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表名',
  `project_id` int(10) NOT NULL COMMENT '项目id',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库监听数据项' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_debezium_data_rules
-- ----------------------------
DROP TABLE IF EXISTS `dg_debezium_data_rules`;
CREATE TABLE `dg_debezium_data_rules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `data_item_id` int(11) NULL DEFAULT NULL COMMENT '增量注册表id',
  `target_catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '资源编目原始库contentid',
  `create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `handle_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理方式（00无，01算法，02规则）\',
  `handle_rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则ids',
  `parameter_id` int(11) NULL DEFAULT NULL COMMENT '规则参数id',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库增量规则表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_debezium_data_rules
-- ----------------------------
INSERT INTO `dg_debezium_data_rules` VALUES (2, 112122097, 19, '2020-11-27 13:36:18', '', '', NULL, '2020-11-27 13:36:18');
INSERT INTO `dg_debezium_data_rules` VALUES (3, 133321401, 4, '2020-11-27 13:41:04', '', '', NULL, '2020-11-27 13:41:04');
INSERT INTO `dg_debezium_data_rules` VALUES (4, 151523737, 4, '2020-11-27 15:15:40', '', '', NULL, '2020-11-27 15:15:40');
INSERT INTO `dg_debezium_data_rules` VALUES (8, 171815766, 28, '2020-11-27 17:20:52', '', '', NULL, '2020-11-27 17:20:52');
INSERT INTO `dg_debezium_data_rules` VALUES (10, 175326848, 27, '2020-11-27 17:54:10', '', '', NULL, '2020-11-27 17:54:10');
INSERT INTO `dg_debezium_data_rules` VALUES (14, 190434660, 1, '2020-12-04 13:40:47', '', '', NULL, '2020-12-04 13:40:47');
INSERT INTO `dg_debezium_data_rules` VALUES (15, 192558752, 144, '2020-12-07 19:28:55', '', '', NULL, '2020-12-07 19:28:55');

-- ----------------------------
-- Table structure for dg_debezium_log_detail
-- ----------------------------
DROP TABLE IF EXISTS `dg_debezium_log_detail`;
CREATE TABLE `dg_debezium_log_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_item_id` int(11) NULL DEFAULT NULL COMMENT '数据库增量配置项id',
  `incre_message` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据库增量信息',
  `error_message` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常信息',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库增量异常信息表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_deploy
-- ----------------------------
DROP TABLE IF EXISTS `dg_deploy`;
CREATE TABLE `dg_deploy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键序号',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据项类型',
  `data_item_id` int(11) NOT NULL COMMENT '数据项id',
  `deploy_id` int(11) NOT NULL COMMENT 'CS_SERVICE_DEPLOY部署的插件id',
  `level` int(11) NOT NULL COMMENT '轮询值',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `attribute` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '节点属性（01：采集节点，02：汇聚节点）',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_file_data_item
-- ----------------------------
DROP TABLE IF EXISTS `dg_file_data_item`;
CREATE TABLE `dg_file_data_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `catalog_id` int(11) NOT NULL COMMENT '所属目录树id',
  `src_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '源分类编码 01:文件系统,02:数据库表',
  `department_id` int(11) NOT NULL COMMENT '部门id',
  `status` tinyint(1) NOT NULL COMMENT '状态(0:未发布；1已发布)',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `item_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '01采集02推送',
  `parameter_id` int(11) NULL DEFAULT NULL COMMENT '规则参数id',
  `type_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外部文件数据源类型（05hdfs06ftp）',
  `file_id` int(11) NULL DEFAULT NULL COMMENT '数据源id（配置中心的文件服务序号）',
  `file_path` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外部文件地址',
  `save_mode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保存模式（01：新增，02：更新，03：覆盖',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件数据数据项' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_file_item_field
-- ----------------------------
DROP TABLE IF EXISTS `dg_file_item_field`;
CREATE TABLE `dg_file_item_field`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL COMMENT '数据项id',
  `src_file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始文件类型',
  `target_file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目标文件类型',
  `txt_delimiter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始txt文件分割符',
  `header` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始文件字段结构,例如：col1,col2',
  `start_index` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始文件从哪行开始读取',
  `package_size` int(5) NULL DEFAULT NULL COMMENT '原始文件如果是数据库，定义分包大小',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_file_task_cg_rules
-- ----------------------------
DROP TABLE IF EXISTS `dg_file_task_cg_rules`;
CREATE TABLE `dg_file_task_cg_rules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `file_item_id` int(11) NULL DEFAULT NULL COMMENT '文件注册项id',
  `catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '资源编目原始数据项id',
  `write_mode` tinyint(1) NULL DEFAULT NULL COMMENT '1新增，2更新3覆盖',
  `handle_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则类型(算法和jar)',
  `handle_ids` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则id',
  `text_rules` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文件规则（header、delimiter、start_row、start_column、sheet_num）',
  `map_filed` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '字段映射',
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_file_task_cg_rules
-- ----------------------------
INSERT INTO `dg_file_task_cg_rules` VALUES (1, 133124232, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 13:31:24', '2020-10-27 13:31:24');
INSERT INTO `dg_file_task_cg_rules` VALUES (2, 113107070, 1377, 1, '00', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"\",\"start_row\":\"1\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"主键\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"名称\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"type\",\"srcFiled\":3,\"targetFiledCN\":\"分类\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"create_date\",\"srcFiled\":4,\"targetFiledCN\":\"创建时间\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"colour\",\"srcFiled\":5,\"targetFiledCN\":\"颜色\",\"srcFiledType\":\"String\"}]', '2020-10-27 13:36:12', '2020-10-27 13:36:12');
INSERT INTO `dg_file_task_cg_rules` VALUES (3, 191559181, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 19:15:59', '2020-10-27 19:15:59');
INSERT INTO `dg_file_task_cg_rules` VALUES (4, 110048682, 1380, 3, '00', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\" \",\"start_row\":\"1\"}', '[]', '2020-10-28 11:05:21', '2020-10-28 11:05:21');
INSERT INTO `dg_file_task_cg_rules` VALUES (5, 114109727, 1380, 1, '00', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\",\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"create_date\",\"srcFiled\":4,\"targetFiledCN\":\"创建时间\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"code\",\"srcFiled\":3,\"targetFiledCN\":\"编码\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"名称\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"主键\",\"srcFiledType\":\"String\"}]', '2020-10-28 11:46:21', '2020-10-28 11:46:21');
INSERT INTO `dg_file_task_cg_rules` VALUES (6, 154923864, NULL, NULL, '02', '105', NULL, NULL, '2020-10-28 15:49:23', '2020-10-28 15:49:23');
INSERT INTO `dg_file_task_cg_rules` VALUES (7, 123002017, NULL, NULL, '01', '233', NULL, NULL, '2020-10-29 12:30:02', '2020-10-29 12:30:02');
INSERT INTO `dg_file_task_cg_rules` VALUES (9, 85853406, NULL, NULL, '00', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\",\",\"start_row\":\"2\"}', NULL, '2020-10-30 08:58:27', '2020-10-30 08:58:27');
INSERT INTO `dg_file_task_cg_rules` VALUES (10, 135336445, 1380, 1, '00', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\",\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"create_date\",\"srcFiled\":4,\"targetFiledCN\":\"创建时间\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"code\",\"srcFiled\":3,\"targetFiledCN\":\"编码\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"名称\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"主键\",\"srcFiledType\":\"String\"}]', '2020-10-30 13:54:33', '2020-10-30 13:54:33');
INSERT INTO `dg_file_task_cg_rules` VALUES (11, 164323941, 1408, 1, '00', 'csv', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\",\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"code\",\"srcFiled\":9,\"targetFiledCN\":\"code\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"create_date\",\"srcFiled\":10,\"targetFiledCN\":\"create_date\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"data_hub_bz\",\"srcFiled\":2,\"targetFiledCN\":\"备注\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"data_hub_cjd\",\"srcFiled\":5,\"targetFiledCN\":\"组织机构\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"data_hub_id\",\"srcFiled\":1,\"targetFiledCN\":\"主记录id\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"data_hub_sjlyxtdm\",\"srcFiled\":6,\"targetFiledCN\":\"数据来源系统代码\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"data_hub_sjmgjb\",\"srcFiled\":3,\"targetFiledCN\":\"数据记录敏感等级\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"data_hub_xxrksj\",\"srcFiled\":4,\"targetFiledCN\":\"时间戳类型\",\"srcFiledType\":\"Date\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":7,\"targetFiledCN\":\"id\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":8,\"targetFiledCN\":\"name\",\"srcFiledType\":\"String\"}]', '2020-10-30 16:56:47', '2020-10-30 16:56:47');
INSERT INTO `dg_file_task_cg_rules` VALUES (12, 85946783, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-05 08:59:46', '2020-11-05 08:59:46');
INSERT INTO `dg_file_task_cg_rules` VALUES (15, 195248008, NULL, NULL, '', '', NULL, NULL, '2020-11-29 19:53:01', '2020-11-29 19:53:52');
INSERT INTO `dg_file_task_cg_rules` VALUES (16, 102524625, NULL, NULL, '', '', NULL, NULL, '2020-11-30 10:25:42', '2020-11-30 10:26:00');
INSERT INTO `dg_file_task_cg_rules` VALUES (17, 182546975, NULL, NULL, '', '', NULL, NULL, '2020-11-30 18:26:07', '2020-11-30 18:30:01');
INSERT INTO `dg_file_task_cg_rules` VALUES (18, 155847461, 75, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"2\",\"delimiter\":\"\",\"start_row\":\"1\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"time\",\"srcFiled\":1,\"targetFiledCN\":\"time\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"age\",\"srcFiled\":\"\",\"targetFiledCN\":\"age\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":\"\",\"targetFiledCN\":\"name\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":\"\",\"targetFiledCN\":\"id\",\"srcFiledType\":\"\"}]', '2020-12-01 19:50:13', '2020-12-01 19:50:13');
INSERT INTO `dg_file_task_cg_rules` VALUES (19, 174442470, 208, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"2\",\"delimiter\":\",\",\"start_row\":\"1\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"zltime\",\"srcFiled\":\"\",\"targetFiledCN\":\"zltime\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"test\",\"srcFiled\":\"\",\"targetFiledCN\":\"test\",\"srcFiledType\":\"Int\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"score\",\"srcFiled\":\"\",\"targetFiledCN\":\"score\",\"srcFiledType\":\"Date\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":\"\",\"targetFiledCN\":\"id\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":\"\",\"targetFiledCN\":\"name\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"age\",\"srcFiled\":\"\",\"targetFiledCN\":\"age\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"education\",\"srcFiled\":\"\",\"targetFiledCN\":\"education\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"navite\",\"srcFiled\":\"\",\"targetFiledCN\":\"navite\",\"srcFiledType\":\"\"}]', '2020-12-02 09:03:41', '2020-12-11 17:38:27');
INSERT INTO `dg_file_task_cg_rules` VALUES (20, 132903840, 1, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\",\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"ID\",\"srcFiled\":1,\"targetFiledCN\":\"ID\",\"srcFiledType\":\"\"}]', '2020-12-03 13:37:32', '2020-12-03 13:37:32');
INSERT INTO `dg_file_task_cg_rules` VALUES (21, 135534604, 108, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\",\",\"start_row\":\"1\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"stuid\",\"srcFiled\":1,\"targetFiledCN\":\"stuid\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"stuname\",\"srcFiled\":2,\"targetFiledCN\":\"stuname\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"stusex\",\"srcFiled\":3,\"targetFiledCN\":\"stusex\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"stubirth\",\"srcFiled\":4,\"targetFiledCN\":\"stubirth\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"stutel\",\"srcFiled\":5,\"targetFiledCN\":\"stutel\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"stuaddr\",\"srcFiled\":6,\"targetFiledCN\":\"stuaddr\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"stuphoto\",\"srcFiled\":7,\"targetFiledCN\":\"stuphoto\",\"srcFiledType\":\"\"}]', '2020-12-03 13:59:47', '2020-12-03 14:08:11');
INSERT INTO `dg_file_task_cg_rules` VALUES (22, 211611085, NULL, NULL, '', '', NULL, NULL, '2020-12-05 21:16:18', '2020-12-05 21:28:05');
INSERT INTO `dg_file_task_cg_rules` VALUES (23, 211651106, NULL, NULL, '', '', NULL, NULL, '2020-12-05 21:16:58', '2020-12-05 21:31:14');
INSERT INTO `dg_file_task_cg_rules` VALUES (24, 85532904, 72, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"\",\"start_row\":\"1\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"time\",\"srcFiled\":4,\"targetFiledCN\":\"time\",\"srcFiledType\":\"Date\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"age\",\"srcFiled\":3,\"targetFiledCN\":\"age\",\"srcFiledType\":\"Int\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"name\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"id\",\"srcFiledType\":\"Int\"}]', '2020-12-07 09:10:09', '2020-12-07 09:10:09');
INSERT INTO `dg_file_task_cg_rules` VALUES (25, 163459282, 132, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"，\",\"start_row\":\"100\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"id\",\"srcFiledType\":\"\"}]', '2020-12-07 16:38:58', '2020-12-07 16:49:51');
INSERT INTO `dg_file_task_cg_rules` VALUES (26, 185142430, 72, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"time\",\"srcFiled\":4,\"targetFiledCN\":\"time\",\"srcFiledType\":\"Date\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"age\",\"srcFiled\":3,\"targetFiledCN\":\"age\",\"srcFiledType\":\"Int\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"name\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"id\",\"srcFiledType\":\"Int\"}]', '2020-12-07 18:53:05', '2020-12-07 18:53:05');
INSERT INTO `dg_file_task_cg_rules` VALUES (27, 190009914, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-07 19:00:10', '2020-12-07 19:00:10');
INSERT INTO `dg_file_task_cg_rules` VALUES (28, 185722975, 142, 1, '01', '36', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"age\",\"srcFiled\":3,\"targetFiledCN\":\"\",\"srcFiledType\":\"Int\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"\",\"srcFiledType\":\"Int\"}]', '2020-12-07 19:01:44', '2020-12-11 16:11:15');
INSERT INTO `dg_file_task_cg_rules` VALUES (29, 191627088, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-07 19:16:27', '2020-12-07 19:16:27');
INSERT INTO `dg_file_task_cg_rules` VALUES (30, 134751373, 142, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"age\",\"srcFiled\":3,\"targetFiledCN\":\"\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"\",\"srcFiledType\":\"\"}]', '2020-12-08 13:48:56', '2020-12-08 13:48:56');
INSERT INTO `dg_file_task_cg_rules` VALUES (31, 140731271, 142, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"age\",\"srcFiled\":3,\"targetFiledCN\":\"\",\"srcFiledType\":\"Int\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"\",\"srcFiledType\":\"Int\"}]', '2020-12-08 14:08:28', '2020-12-08 14:08:28');
INSERT INTO `dg_file_task_cg_rules` VALUES (32, 140945513, NULL, NULL, '', '', NULL, NULL, '2020-12-08 14:09:51', '2020-12-08 14:10:38');
INSERT INTO `dg_file_task_cg_rules` VALUES (33, 135625602, NULL, NULL, '', '', NULL, NULL, '2020-12-11 13:56:30', '2020-12-11 13:57:41');
INSERT INTO `dg_file_task_cg_rules` VALUES (34, 140122409, NULL, NULL, '', '', NULL, NULL, '2020-12-11 14:01:27', '2020-12-11 14:02:06');
INSERT INTO `dg_file_task_cg_rules` VALUES (35, 141232858, NULL, NULL, '01', '26', NULL, NULL, '2020-12-11 14:12:37', '2020-12-11 14:19:06');
INSERT INTO `dg_file_task_cg_rules` VALUES (36, 141542429, NULL, NULL, '', '', NULL, NULL, '2020-12-11 14:15:47', '2020-12-11 14:16:22');
INSERT INTO `dg_file_task_cg_rules` VALUES (37, 143619478, NULL, NULL, '', '', NULL, NULL, '2020-12-11 14:36:24', '2020-12-11 14:36:40');
INSERT INTO `dg_file_task_cg_rules` VALUES (38, 155732596, NULL, NULL, '', '', NULL, NULL, '2020-12-11 15:57:38', '2020-12-11 15:58:00');
INSERT INTO `dg_file_task_cg_rules` VALUES (39, 155816760, 142, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"age\",\"srcFiled\":3,\"targetFiledCN\":\"\",\"srcFiledType\":\"Int\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"\",\"srcFiledType\":\"Int\"}]', '2020-12-11 15:59:55', '2020-12-11 15:59:55');
INSERT INTO `dg_file_task_cg_rules` VALUES (40, 160551683, 142, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"age\",\"srcFiled\":3,\"targetFiledCN\":\"\",\"srcFiledType\":\"Int\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"\",\"srcFiledType\":\"Int\"}]', '2020-12-11 16:06:42', '2020-12-11 16:06:42');
INSERT INTO `dg_file_task_cg_rules` VALUES (41, 161615563, 142, 1, '01', '36', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"age\",\"srcFiled\":1,\"targetFiledCN\":\"\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":3,\"targetFiledCN\":\"\",\"srcFiledType\":\"\"}]', '2020-12-11 16:18:37', '2020-12-11 16:18:37');
INSERT INTO `dg_file_task_cg_rules` VALUES (42, 110048569, 142, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"age\",\"srcFiled\":3,\"targetFiledCN\":\"\",\"srcFiledType\":\"Int\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":2,\"targetFiledCN\":\"\",\"srcFiledType\":\"String\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"\",\"srcFiledType\":\"Int\"}]', '2020-12-14 11:02:48', '2020-12-14 11:02:48');
INSERT INTO `dg_file_task_cg_rules` VALUES (43, 170006418, 47, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\",\",\"start_row\":\"1\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":1,\"targetFiledCN\":\"id\",\"srcFiledType\":\"\"}]', '2020-12-14 17:07:42', '2020-12-14 17:07:42');
INSERT INTO `dg_file_task_cg_rules` VALUES (44, 153112146, 210, 1, '', '', '{\"sheet_num\":\"-1\",\"start_column\":\"1\",\"delimiter\":\"\",\"start_row\":\"2\"}', '[{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"id\",\"srcFiled\":\"\",\"targetFiledCN\":\"id\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"name\",\"srcFiled\":\"\",\"targetFiledCN\":\"name\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"email\",\"srcFiled\":\"\",\"targetFiledCN\":\"email\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"phone\",\"srcFiled\":\"\",\"targetFiledCN\":\"phone\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"password\",\"srcFiled\":\"\",\"targetFiledCN\":\"password\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"username\",\"srcFiled\":\"\",\"targetFiledCN\":\"username\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"idcard\",\"srcFiled\":\"\",\"targetFiledCN\":\"idcard\",\"srcFiledType\":\"\"},{\"srcFiledCN\":\"\",\"isBusinessPk\":false,\"targetFiled\":\"create_date\",\"srcFiled\":\"\",\"targetFiledCN\":\"create_date\",\"srcFiledType\":\"\"}]', '2020-12-14 17:23:47', '2020-12-15 16:18:44');

-- ----------------------------
-- Table structure for dg_file_task_ct_rules
-- ----------------------------
DROP TABLE IF EXISTS `dg_file_task_ct_rules`;
CREATE TABLE `dg_file_task_ct_rules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `file_item_id` int(11) NULL DEFAULT NULL COMMENT '文件注册表id',
  `src_file_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '源文件类型（txt、excel、csv）',
  `write_mode` int(11) NULL DEFAULT NULL COMMENT '写入方式（1追加、2覆盖）',
  `write_type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '写入文件类型（txtexcel、csv）',
  `write_prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '写入文件前缀',
  `corn_task_id` int(11) NULL DEFAULT NULL COMMENT '任务调度id',
  `target_catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '资源编目原始库contentid',
  `is_put_db` int(11) NULL DEFAULT NULL COMMENT '是否走汇聚节点（0否，1是）',
  `topic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息通道名称',
  `create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `topic_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'topic是否已启动（01：未启动，02：已启动）',
  `package_size` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分包大小',
  `increment_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '01：按时间字段；02：按排序字段',
  `increment_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '增量字段',
  `increment_time` timestamp(0) NULL DEFAULT NULL COMMENT '增量字段时间',
  `increment_offset` int(11) NULL DEFAULT NULL COMMENT '排序字段偏移',
  `base_sql` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'SQL语句',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_file_task_rules
-- ----------------------------
DROP TABLE IF EXISTS `dg_file_task_rules`;
CREATE TABLE `dg_file_task_rules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `data_item_id` int(11) NULL DEFAULT NULL COMMENT '数据项id',
  `is_back` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否备份',
  `file_type_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型编码',
  `file_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `src_file_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '源文件类型',
  `txt_delimiter` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '源文件txt分割符',
  `header` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '源文件字段结构col1,col2',
  `start_index` tinyint(2) NULL DEFAULT NULL COMMENT '原始文件从哪行开始读取',
  `package_size` int(5) NULL DEFAULT NULL COMMENT '原始文件如果是数据库，定义分包大小',
  `file_prefix` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成文件的前缀',
  `is_header` tinyint(1) NULL DEFAULT NULL COMMENT '生成的文件是否加入字段头信息（0false，1true）',
  `sheet` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '源文件如果是excel，需选择要读取的sheet,多个sheet用逗号分割',
  `create_date` timestamp(0) NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件数据项任务规则' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_file_task_text_template
-- ----------------------------
DROP TABLE IF EXISTS `dg_file_task_text_template`;
CREATE TABLE `dg_file_task_text_template`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `file_item_id` int(10) NULL DEFAULT NULL COMMENT '文件数据项主键',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型（xml,json）',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'content',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `head_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头部类型（1默认头部，2去掉头部，3自定义头部）',
  `custom_head_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '自定义头部内容',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文本模板设置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_file_task_text_template
-- ----------------------------
INSERT INTO `dg_file_task_text_template` VALUES (4, 123002017, 'XML', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dg_file_task_text_template` VALUES (5, 85059405, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dg_file_task_text_template` VALUES (6, 85853406, 'EXCEL', NULL, NULL, '1', NULL, NULL);
INSERT INTO `dg_file_task_text_template` VALUES (7, 85946783, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dg_file_task_text_template` VALUES (8, 141229496, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dg_file_task_text_template` VALUES (9, 143656840, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dg_file_task_text_template` VALUES (10, 195248008, 'EXCEL', NULL, NULL, NULL, NULL, '2020-11-29 19:56:14');
INSERT INTO `dg_file_task_text_template` VALUES (11, 102524625, 'EXCEL', NULL, NULL, NULL, NULL, '2020-12-03 22:51:48');
INSERT INTO `dg_file_task_text_template` VALUES (12, 182546975, 'JSON', NULL, NULL, NULL, NULL, '2020-11-30 18:30:01');
INSERT INTO `dg_file_task_text_template` VALUES (13, 211611085, 'JSON', NULL, NULL, NULL, NULL, '2020-12-05 21:28:05');
INSERT INTO `dg_file_task_text_template` VALUES (14, 211651106, 'JSON', NULL, NULL, NULL, NULL, '2020-12-05 21:31:14');
INSERT INTO `dg_file_task_text_template` VALUES (15, 190009914, NULL, NULL, NULL, NULL, NULL, '2020-12-07 19:00:10');
INSERT INTO `dg_file_task_text_template` VALUES (16, 191627088, NULL, NULL, NULL, NULL, NULL, '2020-12-07 19:16:27');
INSERT INTO `dg_file_task_text_template` VALUES (17, 140945513, 'EXCEL', NULL, NULL, NULL, NULL, '2020-12-08 14:10:38');
INSERT INTO `dg_file_task_text_template` VALUES (18, 135625602, 'JSON', NULL, NULL, NULL, NULL, '2020-12-11 13:57:41');
INSERT INTO `dg_file_task_text_template` VALUES (19, 140122409, 'JSON', NULL, NULL, NULL, NULL, '2020-12-11 14:08:28');
INSERT INTO `dg_file_task_text_template` VALUES (20, 141232858, 'JSON', NULL, NULL, NULL, NULL, '2020-12-11 14:13:56');
INSERT INTO `dg_file_task_text_template` VALUES (21, 141542429, 'JSON', NULL, NULL, NULL, NULL, '2020-12-11 14:16:22');
INSERT INTO `dg_file_task_text_template` VALUES (22, 143619478, 'JSON', NULL, NULL, NULL, NULL, '2020-12-11 14:36:40');
INSERT INTO `dg_file_task_text_template` VALUES (23, 155732596, 'JSON', NULL, NULL, NULL, NULL, '2020-12-11 15:58:00');

-- ----------------------------
-- Table structure for dg_jar_dynamic_param
-- ----------------------------
DROP TABLE IF EXISTS `dg_jar_dynamic_param`;
CREATE TABLE `dg_jar_dynamic_param`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `item_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '01采集  02推送',
  `data_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据类型（01数据库 02文件）',
  `data_item_id` int(10) NULL DEFAULT NULL COMMENT '数据项id',
  `json_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '动态参数json',
  `jar_id` int(10) NULL DEFAULT NULL COMMENT 'jar包id',
  `jar_function_id` int(10) NULL DEFAULT NULL COMMENT 'jar包的函数(类)id',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'jar包动态参数' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_jar_dynamic_param
-- ----------------------------
INSERT INTO `dg_jar_dynamic_param` VALUES (1, '02', '02', 123002017, '[]', 0, 233, NULL, NULL);

-- ----------------------------
-- Table structure for dg_message_data_item
-- ----------------------------
DROP TABLE IF EXISTS `dg_message_data_item`;
CREATE TABLE `dg_message_data_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `catalog_id` int(11) NOT NULL COMMENT '所属目录id',
  `src_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息监听数据项类型（01:pulsar；02:WebSocket）',
  `topic_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '源通道名称（pulsar类型专有）',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '监听的源地址(格式为ip:端口号)',
  `request_url` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求地址路径(WebSocket专有)',
  `script` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '启动脚本',
  `message_id` int(11) NULL DEFAULT NULL COMMENT '配置中心的消息通道的id',
  `department_id` int(11) NOT NULL COMMENT '所属部门的id',
  `topic_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一topic序列号',
  `status` int(1) NOT NULL COMMENT '数据项状态（0：未发布；1已发布；2：启动；3启动中；4：停止中）',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `auth_flag` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否认证（01：是；02：否）',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消息监听数据项' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_message_receive_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_message_receive_log`;
CREATE TABLE `dg_message_receive_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `data_item_id` int(11) NULL DEFAULT NULL COMMENT '数据项id',
  `message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '消息',
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '消息接收日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_message_task_rules
-- ----------------------------
DROP TABLE IF EXISTS `dg_message_task_rules`;
CREATE TABLE `dg_message_task_rules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `data_item_id` int(11) NULL DEFAULT NULL COMMENT '数据项id',
  `handle_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理方式（00无，01算法，02规则）',
  `handle_rule_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则ids',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '资源编目原始数据项id',
  `save_mode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库模式(01：新增，02：更新)',
  `parameter_id` int(11) NULL DEFAULT NULL COMMENT '规则参数id',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '实时消息规则表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_metadata_manager
-- ----------------------------
DROP TABLE IF EXISTS `dg_metadata_manager`;
CREATE TABLE `dg_metadata_manager`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '采集源分类(DATABASE,FILE,FILLING)',
  `source_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '来源类型 DATABASE：dm_data_catalog_content; FILE:fs_file_catalog_content',
  `data_item_id` int(11) NOT NULL COMMENT '数据项id',
  `directory_id` int(11) NOT NULL COMMENT '元目录id',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_push_rule
-- ----------------------------
DROP TABLE IF EXISTS `dg_push_rule`;
CREATE TABLE `dg_push_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_item_id` int(11) NULL DEFAULT NULL,
  `rule_ids` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `src_push_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推送数据源类型 01 数据库 02 文件系统',
  `rule_paramlib_id` int(11) NULL DEFAULT NULL COMMENT '规则参数库id',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_push_task_rules_collect_detail_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_push_task_rules_collect_detail_log`;
CREATE TABLE `dg_push_task_rules_collect_detail_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `task_id` int(10) NULL DEFAULT NULL COMMENT '任务id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_task_id`(`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汇聚任务详情日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_push_task_rules_detail
-- ----------------------------
DROP TABLE IF EXISTS `dg_push_task_rules_detail`;
CREATE TABLE `dg_push_task_rules_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务类型(DATABASE/FILE/SERVICE)',
  `batch_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务批次号',
  `data_item_id` int(11) NULL DEFAULT NULL COMMENT '数据项id',
  `task_info` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '任务详情',
  `send_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送状态(0:未执行 1:已分发 2:已读取 3:采集成功 4:采集失败)',
  `data_amount` int(11) NULL DEFAULT NULL COMMENT '数据量',
  `send_time` datetime(0) NULL DEFAULT NULL COMMENT '发送时间',
  `receive_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务接收状态(0:未接收 1:接收成功 2:接受失败)',
  `receive_data_amount` int(11) NULL DEFAULT NULL COMMENT '接收数据量',
  `receive_time` datetime(0) NULL DEFAULT NULL COMMENT '接收时间',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `converge_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `task_serial` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务序列号',
  `increment_expand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '增量扩展字段',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推送任务详情' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_push_task_rules_detail_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_push_task_rules_detail_log`;
CREATE TABLE `dg_push_task_rules_detail_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `task_id` int(11) NULL DEFAULT NULL COMMENT '任务id',
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志内容',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采集任务日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_service_access
-- ----------------------------
DROP TABLE IF EXISTS `dg_service_access`;
CREATE TABLE `dg_service_access`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务名',
  `name_en` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ssl_cert_way` tinyint(1) NULL DEFAULT NULL COMMENT '0:http;1:https单向认证;2:https双向认证',
  `root_cert_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '根证书上传路径',
  `topic_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'topic编码',
  `client_cert_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户端证书上传路径',
  `secret_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '秘钥',
  `catalog_id` int(11) NOT NULL COMMENT '系统标识',
  `url` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求方式',
  `auth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '认证方式',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `des` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `service_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口类型(11:Restful,12:WebService)',
  `name_space` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '命名空间',
  `fun_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_service_param
-- ----------------------------
DROP TABLE IF EXISTS `dg_service_param`;
CREATE TABLE `dg_service_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL COMMENT '服务标识',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tree_id` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tree_parent_id` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `param_type_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_service_task_rules
-- ----------------------------
DROP TABLE IF EXISTS `dg_service_task_rules`;
CREATE TABLE `dg_service_task_rules`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `data_item_id` int(11) NULL DEFAULT NULL COMMENT '数据项id',
  `handle_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理方式（00无，01算法，02规则）',
  `handle_rule_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则ids',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '资源编目原始数据项id',
  `save_mode` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入库模式(01：新增，02：更新)',
  `parameter_id` int(11) NULL DEFAULT NULL COMMENT '规则参数id',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '服务接口规则表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_service_task_rules
-- ----------------------------
INSERT INTO `dg_service_task_rules` VALUES (10, 4, '', '', '2020-11-27 10:35:44', 1, '01', NULL, '2020-11-27 10:35:44');
INSERT INTO `dg_service_task_rules` VALUES (17, 2, '', '', '2020-11-28 17:39:22', 51, '01', NULL, '2020-11-28 17:39:22');
INSERT INTO `dg_service_task_rules` VALUES (27, 1, '01', '23', '2020-12-02 10:12:25', 7, '01', NULL, '2020-12-02 10:12:25');
INSERT INTO `dg_service_task_rules` VALUES (28, 13, '01', '26,25', '2020-12-02 11:27:10', 72, '01', NULL, '2020-12-02 11:27:10');
INSERT INTO `dg_service_task_rules` VALUES (30, 14, '01', '26,25', '2020-12-02 11:42:14', 48, '01', NULL, '2020-12-02 11:42:14');
INSERT INTO `dg_service_task_rules` VALUES (34, 16, '', '', '2020-12-09 17:22:26', 142, '02', NULL, '2020-12-09 17:22:26');
INSERT INTO `dg_service_task_rules` VALUES (35, 17, '', '', '2020-12-09 17:23:45', 166, '01', NULL, '2020-12-09 17:23:45');
INSERT INTO `dg_service_task_rules` VALUES (36, 12, '01', '25', '2020-12-09 18:28:42', 48, '01', NULL, '2020-12-09 18:28:42');

-- ----------------------------
-- Table structure for dg_socket_data_item
-- ----------------------------
DROP TABLE IF EXISTS `dg_socket_data_item`;
CREATE TABLE `dg_socket_data_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据项名称',
  `catalog_id` int(11) NOT NULL COMMENT '数据项分类id',
  `src_type_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '源类型编码 01:TCP 02:UDP;',
  `port` int(11) NULL DEFAULT NULL COMMENT '端口号',
  `status` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT '数据项状态 0：未发布 1:已发布 2：启动',
  `information` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录frontend和backend',
  `servers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_table_fields
-- ----------------------------
DROP TABLE IF EXISTS `dg_table_fields`;
CREATE TABLE `dg_table_fields`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段类型',
  `field` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段英文名称',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段中文名称',
  `size` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段长度',
  `length` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为主键',
  `is_null` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否允许null值',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `is_business` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否业务主键',
  `data_item_id` int(11) NULL DEFAULT NULL COMMENT '数据库数据项主表id',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库数据表信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_tables
-- ----------------------------
DROP TABLE IF EXISTS `dg_tables`;
CREATE TABLE `dg_tables`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `db_id` int(11) NULL DEFAULT NULL COMMENT '所属数据库id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名称',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库数据项库表关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_task_rules_collect_detail_audio_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_collect_detail_audio_log`;
CREATE TABLE `dg_task_rules_collect_detail_audio_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `task_id` int(10) NULL DEFAULT NULL COMMENT '任务id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_task_id`(`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汇聚任务详情日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_task_rules_collect_detail_audio_log
-- ----------------------------
INSERT INTO `dg_task_rules_collect_detail_audio_log` VALUES (50, 6601, '2020-12-01 18:27:21==>数据写入任务【collect】开始:=任务id=6601<br/>2020-12-01 18:27:28==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/cindy/test/20201201182718073_094 The Alphabet Chant - www.jixutao.com】！:=成功<br/>2020-12-01 18:27:28==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-01 18:27:28==>数据写入任务【collect】:=完成!<br/>', '2020-12-01 18:27:22', '2020-12-01 18:27:36');
INSERT INTO `dg_task_rules_collect_detail_audio_log` VALUES (51, 10924, '2020-12-08 18:24:05==>数据写入任务【collect】开始:=任务id=10924<br/>2020-12-08 18:24:05==>处理mysql数据源写入:=开始<br/>2020-12-08 18:24:06==>【mysql】:=追加开始<br/>2020-12-08 18:33:22==>【mysql】:=追加结束，耗时556022ms<br/>2020-12-08 18:33:22==>处理mysql数据源写入:=结束<br/>2020-12-08 18:33:22==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-08 18:33:22==>数据写入任务【collect】:=完成!<br/>', '2020-12-04 09:32:58', '2020-12-08 18:33:22');
INSERT INTO `dg_task_rules_collect_detail_audio_log` VALUES (52, 12253, '2020-12-05 21:39:30==>数据写入任务【collect】开始:=任务id=12253<br/>2020-12-05 21:39:30==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/test/cindy/test/cindy/20201205213926565_094 The Alphabet Chant - www.jixutao.com.mp3】！:=成功<br/>2020-12-05 21:39:30==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-05 21:39:30==>数据写入任务【collect】:=完成!<br/>', '2020-12-05 21:39:30', '2020-12-05 21:39:37');
INSERT INTO `dg_task_rules_collect_detail_audio_log` VALUES (53, 12254, '2020-12-05 21:41:22==>数据写入任务【collect】开始:=任务id=12254<br/>2020-12-05 21:41:22==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/test/cindy/test/cindy/094 The Alphabet Chant - www.jixutao.com.mp3】！:=成功<br/>2020-12-05 21:41:22==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-05 21:41:22==>数据写入任务【collect】:=完成!<br/>', '2020-12-05 21:41:23', '2020-12-05 21:41:30');
INSERT INTO `dg_task_rules_collect_detail_audio_log` VALUES (54, 18053, '2020-12-07 14:07:14==>数据写入任务【collect】开始:=任务id=18053<br/>2020-12-07 14:07:14==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/test/cindy/test/cindy/094 The Alphabet Chant - www.jixutao.com.mp3】！:=成功<br/>2020-12-07 14:07:14==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-07 14:07:14==>数据写入任务【collect】:=完成!<br/>', '2020-12-07 14:07:15', '2020-12-07 14:07:33');
INSERT INTO `dg_task_rules_collect_detail_audio_log` VALUES (55, 18069, '2020-12-07 14:08:35==>数据写入任务【collect】开始:=任务id=18069<br/>2020-12-07 14:08:35==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/test/cindy/test/cindy/094 The Alphabet Chant - www.jixutao.com.mp3】！:=成功<br/>2020-12-07 14:08:35==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-07 14:08:35==>数据写入任务【collect】:=完成!<br/>', '2020-12-07 14:08:35', '2020-12-07 14:08:54');
INSERT INTO `dg_task_rules_collect_detail_audio_log` VALUES (56, 24947, '2020-12-14 14:46:33==>数据写入任务【collect】开始:=任务id=24947<br/>2020-12-14 14:46:33==>数据写入HDFS【hdfs://192.168.5.135:9000/zacs/qfftest/1130/test/ypmp3_20201214144610806_094 The Alphabet Chant - www.jixutao.com.mp3】！:=成功<br/>2020-12-14 14:46:33==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-14 14:46:33==>数据写入任务【collect】:=完成!<br/>', '2020-12-14 14:46:14', '2020-12-14 14:46:33');

-- ----------------------------
-- Table structure for dg_task_rules_collect_detail_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_collect_detail_log`;
CREATE TABLE `dg_task_rules_collect_detail_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `task_id` int(10) NULL DEFAULT NULL COMMENT '任务id',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_task_id`(`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汇聚任务详情日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_task_rules_collect_detail_picture_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_collect_detail_picture_log`;
CREATE TABLE `dg_task_rules_collect_detail_picture_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `task_id` int(10) NULL DEFAULT NULL COMMENT '任务id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_task_id`(`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汇聚任务详情日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_task_rules_collect_detail_picture_log
-- ----------------------------
INSERT INTO `dg_task_rules_collect_detail_picture_log` VALUES (50, 6598, '2020-12-01 18:21:13==>数据写入任务【collect】开始:=任务id=6598<br/>2020-12-01 18:21:18==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/cindy/test/20201201182032087_2】！:=成功<br/>2020-12-01 18:21:18==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-01 18:21:18==>数据写入任务【collect】:=完成!<br/>', '2020-12-01 18:24:22', '2020-12-01 18:24:22');
INSERT INTO `dg_task_rules_collect_detail_picture_log` VALUES (51, 6599, '2020-12-01 18:25:33==>数据写入任务【collect】开始:=任务id=6599<br/>2020-12-01 18:25:33==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/cindy/test/20201201182536381_2】！:=成功<br/>2020-12-01 18:25:33==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-01 18:25:33==>数据写入任务【collect】:=完成!<br/>', '2020-12-01 18:25:41', '2020-12-01 18:25:41');
INSERT INTO `dg_task_rules_collect_detail_picture_log` VALUES (52, 10923, '2020-12-08 17:39:59==>数据写入任务【collect】开始:=任务id=10923<br/>2020-12-08 17:39:59==>处理mysql数据源写入:=开始<br/>2020-12-08 17:40:01==>【mysql】:=追加开始<br/>2020-12-08 17:45:02==>【mysql】:=追加结束，耗时301369ms<br/>2020-12-08 17:45:02==>处理mysql数据源写入:=结束<br/>2020-12-08 17:45:02==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-08 17:45:02==>数据写入任务【collect】:=完成!<br/>', '2020-12-04 09:22:54', '2020-12-08 17:45:02');
INSERT INTO `dg_task_rules_collect_detail_picture_log` VALUES (53, 12291, '2020-12-06 22:26:46==>数据写入任务【collect】开始:=任务id=12291<br/>2020-12-06 22:26:47==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/cindy/ww/cron.png】！:=成功<br/>2020-12-06 22:26:47==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-06 22:26:47==>数据写入任务【collect】:=完成!<br/>', '2020-12-06 22:26:47', '2020-12-06 22:27:01');
INSERT INTO `dg_task_rules_collect_detail_picture_log` VALUES (54, 12292, '2020-12-06 22:26:47==>数据写入任务【collect】开始:=任务id=12292<br/>2020-12-06 22:26:47==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/cindy/ww/hdfs2.png】！:=成功<br/>2020-12-06 22:26:47==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-06 22:26:47==>数据写入任务【collect】:=完成!<br/>', '2020-12-06 22:26:47', '2020-12-06 22:27:01');
INSERT INTO `dg_task_rules_collect_detail_picture_log` VALUES (55, 12293, '2020-12-06 22:27:50==>数据写入任务【collect】开始:=任务id=12293<br/>2020-12-06 22:27:50==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/cindy/ww/cron.png】！:=成功<br/>2020-12-06 22:27:50==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-06 22:27:50==>数据写入任务【collect】:=完成!<br/>', '2020-12-06 22:27:51', '2020-12-06 22:28:05');
INSERT INTO `dg_task_rules_collect_detail_picture_log` VALUES (56, 12294, '2020-12-06 22:27:50==>数据写入任务【collect】开始:=任务id=12294<br/>2020-12-06 22:27:50==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/cindy/ww/hdfs2.png】！:=成功<br/>2020-12-06 22:27:50==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-06 22:27:50==>数据写入任务【collect】:=完成!<br/>', '2020-12-06 22:27:51', '2020-12-06 22:28:05');

-- ----------------------------
-- Table structure for dg_task_rules_collect_detail_text_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_collect_detail_text_log`;
CREATE TABLE `dg_task_rules_collect_detail_text_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `task_id` int(10) NULL DEFAULT NULL COMMENT '任务id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_task_id`(`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汇聚任务详情日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_task_rules_collect_detail_text_log
-- ----------------------------
INSERT INTO `dg_task_rules_collect_detail_text_log` VALUES (50, 6602, '2020-12-01 18:27:26==>数据写入任务【collect】开始:=任务id=6602<br/>2020-12-01 18:27:26==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/cindy/test/20201201182731273_文本测试.txt】！:=成功<br/>2020-12-01 18:27:26==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-01 18:27:26==>数据写入任务【collect】:=完成!<br/>', '2020-12-01 18:27:34', '2020-12-01 18:27:34');
INSERT INTO `dg_task_rules_collect_detail_text_log` VALUES (51, 10771, '2020-12-04 09:28:53==>数据写入任务【collect】开始:=任务id=10771<br/>2020-12-04 09:28:53==>数据写入HDFS【hdfs://192.168.5.135:9000/zacs/qfftest/1130/test/ftptest_20201203191920999_qq1_bak.txt】！:=成功<br/>2020-12-04 09:28:53==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-04 09:28:53==>数据写入任务【collect】:=完成!<br/>', '2020-12-04 09:28:54', '2020-12-04 09:28:57');
INSERT INTO `dg_task_rules_collect_detail_text_log` VALUES (52, 25769, '2020-12-14 18:52:28==>数据写入任务【collect】开始:=任务id=25769<br/>2020-12-14 18:52:28==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/cindy/test/20201214185225191_文本测试.txt】！:=成功<br/>2020-12-14 18:52:28==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-14 18:52:28==>数据写入任务【collect】:=完成!<br/>', '2020-12-14 18:52:28', '2020-12-14 18:52:28');

-- ----------------------------
-- Table structure for dg_task_rules_collect_detail_video_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_collect_detail_video_log`;
CREATE TABLE `dg_task_rules_collect_detail_video_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `task_id` int(10) NULL DEFAULT NULL COMMENT '任务id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `index_task_id`(`task_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '汇聚任务详情日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_task_rules_collect_detail_video_log
-- ----------------------------
INSERT INTO `dg_task_rules_collect_detail_video_log` VALUES (50, 6600, '2020-12-01 18:26:45==>数据写入任务【collect】开始:=任务id=6600<br/>2020-12-01 18:26:45==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/cindy/test/20201201182649176_meeting_02.mp4】！:=成功<br/>2020-12-01 18:26:45==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-01 18:26:45==>数据写入任务【collect】:=完成!<br/>', '2020-12-01 18:26:53', '2020-12-01 18:26:53');
INSERT INTO `dg_task_rules_collect_detail_video_log` VALUES (51, 18155, '2020-12-07 17:09:16==>数据写入任务【collect】开始:=任务id=18155<br/>2020-12-07 17:09:16==>数据写入HDFS【hdfs://192.168.5.135:9000/cd/Cindy/cindy/test/20201207141538961_meeting_02.mp4】！:=成功<br/>2020-12-07 17:09:16==>获取ITaskRulesDetailProvider服务:=成功<br/>2020-12-07 17:09:16==>数据写入任务【collect】:=完成!<br/>', '2020-12-07 17:09:17', '2020-12-07 17:09:36');

-- ----------------------------
-- Table structure for dg_task_rules_detail
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_detail`;
CREATE TABLE `dg_task_rules_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务类型(DATABASE/FILE/SERVICE)',
  `batch_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务批次号',
  `data_item_id` int(11) NULL DEFAULT NULL COMMENT '数据项id',
  `task_info` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '任务详情',
  `send_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送状态(0:未执行 1:已分发 2:已读取 3:采集成功 4:采集失败)',
  `data_amount` int(11) NULL DEFAULT NULL COMMENT '数据量',
  `send_time` datetime(0) NULL DEFAULT NULL COMMENT '发送时间',
  `receive_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务接收状态(0:未接收 1:接收成功 2:接受失败)',
  `receive_data_amount` int(11) NULL DEFAULT NULL COMMENT '接收数据量',
  `receive_time` datetime(0) NULL DEFAULT NULL COMMENT '接收时间',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `converge_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `increment_expand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '增量扩展字段',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采集任务详情' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_task_rules_detail_audio_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_detail_audio_log`;
CREATE TABLE `dg_task_rules_detail_audio_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `task_id` int(11) NULL DEFAULT NULL COMMENT '任务id',
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志内容',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70291 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_task_rules_detail_audio_log
-- ----------------------------
INSERT INTO `dg_task_rules_detail_audio_log` VALUES (70282, 6515, '[6515][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:26', '2020-11-30 19:31:27');
INSERT INTO `dg_task_rules_detail_audio_log` VALUES (70283, 6601, '[6601][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:27:14');
INSERT INTO `dg_task_rules_detail_audio_log` VALUES (70284, 6601, '[6601][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:27:37');
INSERT INTO `dg_task_rules_detail_audio_log` VALUES (70285, 10924, '[10924][HdfsReadAction]doAction 发送数据成功！', '2020-12-04 09:32:58', '2020-12-04 09:33:01');
INSERT INTO `dg_task_rules_detail_audio_log` VALUES (70286, 12253, '[12253][HdfsReadAction]doAction 发送数据成功！', '2020-12-05 21:39:30', '2020-12-05 21:39:37');
INSERT INTO `dg_task_rules_detail_audio_log` VALUES (70287, 12254, '[12254][HdfsReadAction]doAction 发送数据成功！', '2020-12-05 21:41:23', '2020-12-05 21:41:30');
INSERT INTO `dg_task_rules_detail_audio_log` VALUES (70288, 18053, '[18053][HdfsReadAction]doAction 发送数据成功！', '2020-12-07 14:07:15', '2020-12-07 14:07:33');
INSERT INTO `dg_task_rules_detail_audio_log` VALUES (70289, 18069, '[18069][HdfsReadAction]doAction 发送数据成功！', '2020-12-07 14:08:35', '2020-12-07 14:08:54');
INSERT INTO `dg_task_rules_detail_audio_log` VALUES (70290, 24947, '[24947][HdfsReadAction]doAction 发送数据成功！', '2020-12-14 14:46:14', '2020-12-14 14:46:33');

-- ----------------------------
-- Table structure for dg_task_rules_detail_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_detail_log`;
CREATE TABLE `dg_task_rules_detail_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `task_id` int(11) NULL DEFAULT NULL COMMENT '任务id',
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志内容',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dg_task_rules_detail_picture_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_detail_picture_log`;
CREATE TABLE `dg_task_rules_detail_picture_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `task_id` int(11) NULL DEFAULT NULL COMMENT '任务id',
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志内容',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70305 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_task_rules_detail_picture_log
-- ----------------------------
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70282, 6516, '[6516][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-30 19:35:34');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70283, 6594, '[6594][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 17:03:10');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70284, 6595, '[6595][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 17:07:34');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70285, 6596, '[6596][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 17:08:35');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70286, 6598, '[6598][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:21:23');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70287, 6598, '[6598][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:21:23');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70288, 6594, '[6594][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:25:21');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70289, 6595, '[6595][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:25:21');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70290, 6596, '[6596][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:25:21');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70291, 6598, '[6598][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:25:22');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70292, 6598, '[6598][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:25:22');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70293, 6599, '[6599][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:25:34');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70294, 6599, '[6599][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:25:41');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70295, 10768, '[10768][HdfsReadAction]doAction 发送数据成功！', '2020-12-03 17:24:00', '2020-12-03 17:24:06');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70296, 10768, '[10768][HdfsReadAction]doAction 发送数据成功！', '2020-12-03 17:24:12', '2020-12-03 17:24:18');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70297, 10768, '[10768][HdfsReadAction]doAction 发送数据成功！', '2020-12-03 17:24:35', '2020-12-03 17:24:41');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70298, 10769, '[10769][HdfsReadAction]doAction 发送数据成功！', '2020-12-03 17:29:01', '2020-12-03 17:29:07');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70299, 10772, '[10772][FtpReadAction]doAction 发送数据成功！', '2020-12-03 19:21:33', '2020-12-03 19:21:32');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70300, 10923, '[10923][FtpReadAction]doAction 发送数据成功！', '2020-12-04 09:22:54', '2020-12-04 09:22:57');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70301, 12291, '[12291][HdfsReadAction]doAction 发送数据成功！', '2020-12-06 22:26:47', '2020-12-06 22:27:01');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70302, 12292, '[12292][HdfsReadAction]doAction 发送数据成功！', '2020-12-06 22:26:47', '2020-12-06 22:27:01');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70303, 12293, '[12293][HdfsReadAction]doAction 发送数据成功！', '2020-12-06 22:27:51', '2020-12-06 22:28:05');
INSERT INTO `dg_task_rules_detail_picture_log` VALUES (70304, 12294, '[12294][HdfsReadAction]doAction 发送数据成功！', '2020-12-06 22:27:51', '2020-12-06 22:28:05');

-- ----------------------------
-- Table structure for dg_task_rules_detail_text_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_detail_text_log`;
CREATE TABLE `dg_task_rules_detail_text_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `task_id` int(11) NULL DEFAULT NULL COMMENT '任务id',
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志内容',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70290 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_task_rules_detail_text_log
-- ----------------------------
INSERT INTO `dg_task_rules_detail_text_log` VALUES (70282, 6510, '[6510][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-30 18:53:21');
INSERT INTO `dg_task_rules_detail_text_log` VALUES (70283, 6602, '[6602][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:27:26');
INSERT INTO `dg_task_rules_detail_text_log` VALUES (70284, 6602, '[6602][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:27:37');
INSERT INTO `dg_task_rules_detail_text_log` VALUES (70285, 10770, '[10770][HdfsReadAction]doAction 发送数据成功！', '2020-12-03 17:32:30', '2020-12-03 17:32:36');
INSERT INTO `dg_task_rules_detail_text_log` VALUES (70286, 10770, '[10770][HdfsReadAction]doAction 发送数据成功！', '2020-12-03 17:33:24', '2020-12-03 17:33:30');
INSERT INTO `dg_task_rules_detail_text_log` VALUES (70287, 10771, '[10771][FtpReadAction]doAction 发送数据成功！', '2020-12-03 19:19:26', '2020-12-03 19:19:25');
INSERT INTO `dg_task_rules_detail_text_log` VALUES (70288, 10771, '[10771][FtpReadAction]doAction 发送数据成功！', '2020-12-04 09:28:54', '2020-12-04 09:28:57');
INSERT INTO `dg_task_rules_detail_text_log` VALUES (70289, 25769, '[25769][HdfsReadAction]doAction 发送数据成功！', '2020-12-14 18:52:28', '2020-12-14 18:52:28');

-- ----------------------------
-- Table structure for dg_task_rules_detail_video_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_detail_video_log`;
CREATE TABLE `dg_task_rules_detail_video_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `task_id` int(11) NULL DEFAULT NULL COMMENT '任务id',
  `text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '日志内容',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70300 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dg_task_rules_detail_video_log
-- ----------------------------
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70282, 5281, '[5281][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-28 14:53:40');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70283, 5302, '[5302][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-28 14:56:06');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70284, 5362, '[5362][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-28 14:57:09');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70285, 5403, '[5403][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-28 15:00:34');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70286, 5281, '[5281][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-30 11:47:26');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70287, 5302, '[5302][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-30 11:47:27');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70288, 5362, '[5362][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-30 11:47:28');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70289, 5403, '[5403][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-30 11:47:30');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70290, 6511, '[6511][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-30 18:56:20');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70291, 6512, '[6512][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-30 19:00:17');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70292, 6517, '[6517][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 14:55:27', '2020-11-30 19:38:41');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70293, 6600, '[6600][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:26:45');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70294, 6600, '[6600][HdfsReadAction]doAction 发送数据成功！', '2020-12-01 19:04:22', '2020-12-01 18:26:53');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70295, 10765, '[10765][HdfsReadAction]doAction 发送数据成功！', '2020-12-03 15:32:29', '2020-12-03 15:32:35');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70296, 10766, '[10766][HdfsReadAction]doAction 发送数据成功！', '2020-12-03 16:09:06', '2020-12-03 16:09:11');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70297, 18155, '[18155][HdfsReadAction]doAction 发送数据成功！', '2020-12-07 17:09:17', '2020-12-07 17:09:36');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70298, 24867, '[24867][HdfsReadAction]doAction 发送数据成功！', '2020-12-14 10:55:48', '2020-12-14 10:56:05');
INSERT INTO `dg_task_rules_detail_video_log` VALUES (70299, 24866, '[24866][HdfsReadAction]doAction 发送数据成功！', '2020-12-14 10:55:48', '2020-12-14 10:56:05');

-- ----------------------------
-- Table structure for dg_task_rules_push_detail_log
-- ----------------------------
DROP TABLE IF EXISTS `dg_task_rules_push_detail_log`;
CREATE TABLE `dg_task_rules_push_detail_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `task_id` int(10) NULL DEFAULT NULL COMMENT '任务id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推送任务详情日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dm_data_catalog
-- ----------------------------
DROP TABLE IF EXISTS `dm_data_catalog`;
CREATE TABLE `dm_data_catalog`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NULL DEFAULT NULL COMMENT '父节点id',
  `department_id` int(10) NULL DEFAULT NULL COMMENT '用户的部门id',
  `project_id` int(10) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录的名称',
  `data_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录的数据类型',
  `ranks` int(5) NULL DEFAULT NULL COMMENT '排序',
  `create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dm_data_catalog_content
-- ----------------------------
DROP TABLE IF EXISTS `dm_data_catalog_content`;
CREATE TABLE `dm_data_catalog_content`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `metadata_id` int(10) NULL DEFAULT NULL,
  `authorize_status` int(1) NULL DEFAULT NULL,
  `name_cn` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文名称',
  `source_name_en` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name_en` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `catalog_id` int(10) NULL DEFAULT NULL COMMENT '目录id',
  `source_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源类型 字符串,类型间以逗号隔开',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存入类型,是新建的还是导入的 导入0 新建1',
  `sheet` int(10) NULL DEFAULT NULL COMMENT '当前的sheet页,是基础用法(字段):0,还是高级用法(sql):1',
  `stored_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'impala专用:存储格式类型 01:txt,02:csv,03:parquet',
  `txt_delimiter` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'txt专用分隔符类别',
  `create_sql` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `uni_sign` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '唯一资源标识符',
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dm_data_catalog_content_fields
-- ----------------------------
DROP TABLE IF EXISTS `dm_data_catalog_content_fields`;
CREATE TABLE `dm_data_catalog_content_fields`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catalog_content_id` int(10) NULL DEFAULT NULL COMMENT '数据目录内容id - 也就是表名id',
  `field_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段英文名',
  `field_name_cn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段中文名',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段类型',
  `length` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '长度',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否是主键？   true:主键 false:非主键',
  `is_null` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否允许为空？  true:允许 false：不允许',
  `is_business_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否是业务主键？  true:主键 false：非主键  一个表可多选,多选为联合主键',
  `default_value` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段的默认值',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否可查询',
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `qualifier_prefix` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '限定词前缀',
  `is_qualifier` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否使用限定词',
  `is_fixed` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否固定字段',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dm_data_catalog_content_filter
-- ----------------------------
DROP TABLE IF EXISTS `dm_data_catalog_content_filter`;
CREATE TABLE `dm_data_catalog_content_filter`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '过滤器名称',
  `user_id` int(11) NOT NULL COMMENT '过滤器所属用户id',
  `content_id` int(11) NOT NULL COMMENT '表id',
  `condition_json` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '过滤条件json，格式： [{\"fieldId\":1,\"fieldName\":\"aaa\",\"operation\":\">\",\"keyword\":2},{}]',
  `advanced_json` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `catalog_id` int(11) NOT NULL COMMENT '分类树id',
  `create_date` timestamp(0) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '表查询条件过滤器' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dm_data_search_auth
-- ----------------------------
DROP TABLE IF EXISTS `dm_data_search_auth`;
CREATE TABLE `dm_data_search_auth`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '搜素业务表id',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门id',
  `catalog_id` int(10) NULL DEFAULT NULL,
  `type` int(1) NULL DEFAULT NULL,
  `publish` int(1) NULL DEFAULT 0 COMMENT '发布状态',
  `authorize` int(1) NULL DEFAULT 0 COMMENT '授权状态',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dm_data_share_catalog_content
-- ----------------------------
DROP TABLE IF EXISTS `dm_data_share_catalog_content`;
CREATE TABLE `dm_data_share_catalog_content`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dm_tables_manager_id` int(10) NULL DEFAULT NULL,
  `dm_DataCatalogContent_id` int(10) NULL DEFAULT NULL,
  `code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `metadata_id` int(10) NULL DEFAULT NULL,
  `authorize_status` int(1) NULL DEFAULT NULL,
  `name_cn` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文名称',
  `source_name_en` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name_en` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `catalog_id` int(10) NULL DEFAULT NULL COMMENT '目录id',
  `data_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '共享的数据位置（01原始库）',
  `source_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源类型 字符串,类型间以逗号隔开',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存入类型,是新建的还是导入的 导入0 新建1',
  `sheet` int(10) NULL DEFAULT NULL COMMENT '当前的sheet页,是基础用法(字段):0,还是高级用法(sql):1',
  `stored_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'impala专用:存储格式类型 01:txt,02:csv,03:parquet',
  `txt_delimiter` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'txt专用分隔符类别',
  `create_sql` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dm_export_log
-- ----------------------------
DROP TABLE IF EXISTS `dm_export_log`;
CREATE TABLE `dm_export_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `export_rule_id` int(11) NULL DEFAULT NULL COMMENT '导出规则的id',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导出的文件名字',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导出的文件路径',
  `data_amount` int(11) NULL DEFAULT NULL COMMENT '导出条数',
  `error_cause` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '错误原因',
  `package_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '分包语句',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导出的状态 1:成功 0:失败',
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dm_export_rule
-- ----------------------------
DROP TABLE IF EXISTS `dm_export_rule`;
CREATE TABLE `dm_export_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门id',
  `project_id` int(11) NULL DEFAULT NULL,
  `file_id` int(11) NULL DEFAULT NULL COMMENT '文件的id',
  `db_id` int(11) NULL DEFAULT NULL COMMENT '数据库的id',
  `file_or_db` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件还是数据库',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导出规则名称',
  `source_type_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '源数据类型',
  `type_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据存储位置类别',
  `export_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '导出详细信息',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导出的描述信息',
  `package_size` int(11) NULL DEFAULT NULL COMMENT '分包数',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储准确路径',
  `table_id` int(11) NULL DEFAULT NULL COMMENT '导出的表id',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否导出完毕',
  `end_time` timestamp(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dm_partition
-- ----------------------------
DROP TABLE IF EXISTS `dm_partition`;
CREATE TABLE `dm_partition`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `catalog_content_id` int(11) NULL DEFAULT NULL,
  `param` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dm_tables_manager
-- ----------------------------
DROP TABLE IF EXISTS `dm_tables_manager`;
CREATE TABLE `dm_tables_manager`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `catalog_content_id` int(10) NULL DEFAULT NULL COMMENT '表ID',
  `department_id` int(10) NULL DEFAULT NULL COMMENT '部门ID',
  `db_id` int(10) NULL DEFAULT NULL COMMENT '数据库ID',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态  0:未创建 1:已创建',
  `service_status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务发布状态   0:未发布 1:已发布',
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dp_access_task
-- ----------------------------
DROP TABLE IF EXISTS `dp_access_task`;
CREATE TABLE `dp_access_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_processing_id` int(11) NOT NULL,
  `data_item_type` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_item_id` int(11) NOT NULL,
  `data_item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `batch_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total` int(10) NULL DEFAULT 0,
  `send_data_amount` int(10) NULL DEFAULT 0,
  `receive_data_amount` int(10) NULL DEFAULT 0,
  `send_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `receive_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `width` int(8) NULL DEFAULT NULL,
  `height` int(8) NULL DEFAULT NULL,
  `left` int(8) NULL DEFAULT NULL,
  `top` int(8) NULL DEFAULT NULL,
  `exec_order` int(4) NOT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '01采集02推送',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dp_data_processing
-- ----------------------------
DROP TABLE IF EXISTS `dp_data_processing`;
CREATE TABLE `dp_data_processing`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `project_id` int(11) NULL DEFAULT NULL COMMENT '项目ID',
  `department_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `type` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `relate_flag` tinyint(1) NULL DEFAULT 1 COMMENT '0 关闭 1打开',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程运行状态',
  `end_time` timestamp(0) NULL DEFAULT NULL COMMENT '流程运行结束时间',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dp_etl_task
-- ----------------------------
DROP TABLE IF EXISTS `dp_etl_task`;
CREATE TABLE `dp_etl_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_processing_id` int(11) NOT NULL,
  `workflow_manage_id` int(11) NOT NULL,
  `workflow_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `current_node` int(10) NULL DEFAULT NULL,
  `total_node` int(10) NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `top` int(5) NULL DEFAULT NULL,
  `height` int(5) NULL DEFAULT NULL,
  `left` int(5) NULL DEFAULT NULL,
  `width` int(5) NULL DEFAULT NULL,
  `exec_order` int(4) NOT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dp_task_relation
-- ----------------------------
DROP TABLE IF EXISTS `dp_task_relation`;
CREATE TABLE `dp_task_relation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_processing_id` int(11) NULL DEFAULT NULL COMMENT '数据处理任务Id',
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是采集还是清洗类型 access，etl',
  `src_task_id` int(11) NULL DEFAULT NULL COMMENT '源任务Id',
  `tar_task_id` int(11) NULL DEFAULT NULL COMMENT '目标任务Id',
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for en_object_model
-- ----------------------------
DROP TABLE IF EXISTS `en_object_model`;
CREATE TABLE `en_object_model`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `catalog_id` int(11) NULL DEFAULT NULL COMMENT '目录id',
  `model_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模型名称',
  `model_point` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模型坐标',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模型描述',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for en_object_model_catalog
-- ----------------------------
DROP TABLE IF EXISTS `en_object_model_catalog`;
CREATE TABLE `en_object_model_catalog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '目录父节点',
  `project_id` int(11) NULL DEFAULT NULL COMMENT '项目id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录名称',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录代码',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模型目录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for en_object_model_cfg
-- ----------------------------
DROP TABLE IF EXISTS `en_object_model_cfg`;
CREATE TABLE `en_object_model_cfg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `catalog_id` int(11) NULL DEFAULT NULL COMMENT '目录id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `model_id` int(11) NULL DEFAULT NULL COMMENT '模型id',
  `model_item_id` int(11) NULL DEFAULT NULL COMMENT '模型项id',
  `catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '资源id',
  `db_id` int(11) NULL DEFAULT NULL COMMENT '数据库id',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置类型（1单表2多表）',
  `field` int(11) NULL DEFAULT NULL COMMENT '字段id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '多表sql',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '新建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模型配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for en_object_model_cfg_catalog
-- ----------------------------
DROP TABLE IF EXISTS `en_object_model_cfg_catalog`;
CREATE TABLE `en_object_model_cfg_catalog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '目录父节点',
  `model_id` int(11) NULL DEFAULT NULL COMMENT '模型id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录名称',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录代码',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模型配置目录表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for en_object_model_item
-- ----------------------------
DROP TABLE IF EXISTS `en_object_model_item`;
CREATE TABLE `en_object_model_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `model_id` int(11) NULL DEFAULT NULL COMMENT '模型id',
  `catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '资源id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代码',
  `des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模型坐标json',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模型数据项' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of en_object_model_item
-- ----------------------------
INSERT INTO `en_object_model_item` VALUES (1, 0, 0, '999', NULL, '888', NULL, '2020-11-28 02:32:37');

-- ----------------------------
-- Table structure for en_object_model_item_rela
-- ----------------------------
DROP TABLE IF EXISTS `en_object_model_item_rela`;
CREATE TABLE `en_object_model_item_rela`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代码',
  `master_item_id` int(11) NULL DEFAULT NULL COMMENT '主数据项id',
  `slave_item_id` int(11) NULL DEFAULT NULL COMMENT '从数据项id',
  `master_filed_id` int(11) NULL DEFAULT NULL COMMENT '主数据字段id',
  `slaver_filed_id` int(11) NULL DEFAULT NULL COMMENT '从数据字段id',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模型数据项关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_component_category_python
-- ----------------------------
DROP TABLE IF EXISTS `etl_component_category_python`;
CREATE TABLE `etl_component_category_python`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(5) NULL DEFAULT NULL COMMENT '项目Id',
  `department_id` int(11) NULL DEFAULT NULL,
  `p_id` int(11) NULL DEFAULT NULL,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `component_category_desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_component_python
-- ----------------------------
DROP TABLE IF EXISTS `etl_component_python`;
CREATE TABLE `etl_component_python`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL COMMENT '部门id',
  `component_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所上传组件的名称',
  `component_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所上传组件的路径',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型：文件/附件',
  `component_category_id` int(11) NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据清洗-插件管理-Python组件' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_lib_repository
-- ----------------------------
DROP TABLE IF EXISTS `etl_lib_repository`;
CREATE TABLE `etl_lib_repository`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lib_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lib_version` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lib_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lib_size` int(5) NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_model
-- ----------------------------
DROP TABLE IF EXISTS `etl_model`;
CREATE TABLE `etl_model`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id。',
  `group_id` int(11) NOT NULL COMMENT 'etl_model_group 表id',
  `data_type` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '数据类型 数据表 TABLE 数据库 DATABASE 文件 FILE',
  `linked_id` int(11) NOT NULL DEFAULT 0 COMMENT 'dm_tables_manager',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '【数据清洗】流程的输入输出格式管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_model_group
-- ----------------------------
DROP TABLE IF EXISTS `etl_model_group`;
CREATE TABLE `etl_model_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号id',
  `category_id` int(11) NOT NULL COMMENT '左侧分类id',
  `type` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `linked_id` int(11) NULL DEFAULT 0 COMMENT 'cs_db 表id',
  `width` int(11) NOT NULL COMMENT '宽度',
  `height` int(11) NOT NULL COMMENT '高度',
  `left` int(11) NOT NULL COMMENT '距左距离',
  `top` int(11) NOT NULL COMMENT '距上距离',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据清洗融合 业务流程组数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_model_group_relation
-- ----------------------------
DROP TABLE IF EXISTS `etl_model_group_relation`;
CREATE TABLE `etl_model_group_relation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关联关系id',
  `category_id` int(11) NOT NULL COMMENT '左侧分类id',
  `source_group_id` int(11) NOT NULL COMMENT '源id',
  `target_group_id` int(11) NOT NULL COMMENT '目标id组',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_udf_category
-- ----------------------------
DROP TABLE IF EXISTS `etl_udf_category`;
CREATE TABLE `etl_udf_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department_id` int(11) NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '【数据清洗】函数管理页面左侧的目录。' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_udf_function
-- ----------------------------
DROP TABLE IF EXISTS `etl_udf_function`;
CREATE TABLE `etl_udf_function`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mainClass_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sql_script` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `return_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `input_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `database_id` int(11) NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '【数据清洗】函数管理页面右侧的数据项。' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_workflow_category
-- ----------------------------
DROP TABLE IF EXISTS `etl_workflow_category`;
CREATE TABLE `etl_workflow_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id。（外键）',
  `project_id` int(6) NULL DEFAULT NULL COMMENT '项目Id',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门id。',
  `p_id` int(11) NULL DEFAULT NULL COMMENT '目录的父id。',
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录的名称。',
  `workflow_category_desc` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录的描述信息。（字段未使用）',
  `compute_type` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计算类型。离线：offLine 实时：realTime',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '记录的创建时间。',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '【数据清洗】流程管理页面左侧的目录' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_workflow_manager
-- ----------------------------
DROP TABLE IF EXISTS `etl_workflow_manager`;
CREATE TABLE `etl_workflow_manager`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id。（外键。关联查询流程组件信息和日志时使用。）',
  `workflow_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程数据项的名称。',
  `workflow_category_id` int(11) NOT NULL COMMENT '流程数据项所归属的左侧目录id。',
  `workflow_code` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '每个流程数据项所拥有的唯一编号。(外键)',
  `workflow_param` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '流程数据项的初始参数。',
  `identification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程管理身份证',
  `flow_json` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '前端用来绘制流程数据项所使用用的json',
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程数据项的运行状态。waiting:待运行 running:运行中 fail:运行失败 succeed:运行成功。 ',
  `service_status` tinyint(1) NULL DEFAULT NULL COMMENT '服务状态 1:表示已加载到接口服务列表中。 0:表示未加载。 2:表示已经在平台运营发布。',
  `script` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '生成动参的groovy脚本',
  `use_script` tinyint(1) NULL DEFAULT NULL COMMENT '是否使用动参',
  `execution_rate` double(11, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '流程运行进度',
  `des` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '新建流程时填写的流程数据项描述信息。',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '流程创建时间。',
  `streaming_query_id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00000000-0000-0000-0000-000000000000' COMMENT '流的唯一id表示。实时数据处理中用于流的停止。',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '【数据清洗】流程管理页面右侧的流程数据项。' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_workflow_plugin_param
-- ----------------------------
DROP TABLE IF EXISTS `etl_workflow_plugin_param`;
CREATE TABLE `etl_workflow_plugin_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id。',
  `workflow_id` int(11) NULL DEFAULT NULL COMMENT 'workflowManager表中流程数据项的主键id。',
  `plugin_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的id。',
  `plugin_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的名称',
  `plugin_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的编目',
  `data_in_var_cn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的输入变量中文。',
  `data_in_var` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的输入变量。',
  `data_out_var_cn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的输出变量中文。',
  `data_out_var` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的输出变量。',
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '插件运行状态，运行时设置',
  `select_table` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选择表：01 单表。02 多表。',
  `file_catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '文件数据源Id。',
  `db_source_id` int(11) NULL DEFAULT NULL COMMENT '表数据源Id。',
  `data_catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '选择数据表时dataCatalogContent的id',
  `plugin_json` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '插件参数Json',
  `des` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '组件描述信息',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录的创建时间。',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '【数据清洗】流程中组件的配置参数。' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_workflow_plugin_run_log
-- ----------------------------
DROP TABLE IF EXISTS `etl_workflow_plugin_run_log`;
CREATE TABLE `etl_workflow_plugin_run_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id。',
  `workflow_run_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程数据项每一次运行都会产生的一个唯一编号。',
  `plugin_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的名称。',
  `plugin_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件id。',
  `run_start_time` timestamp(0) NULL DEFAULT NULL COMMENT '组件的开始运行时间。',
  `run_end_time` timestamp(0) NULL DEFAULT NULL COMMENT '组件的结束运行时间。',
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的运行状态。2：运行成功。3：运行失败。',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '记录的创建时间。',
  `loop_accumulator` int(1) NULL DEFAULT NULL COMMENT '节点在此次流程中第几次运行',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '【数据清洗】流程中组件的运行状态。' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_workflow_relation
-- ----------------------------
DROP TABLE IF EXISTS `etl_workflow_relation`;
CREATE TABLE `etl_workflow_relation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_manager_id` int(11) NOT NULL DEFAULT 0 COMMENT 'etl_workflow_manager表id',
  `group_relation_id` int(11) NOT NULL DEFAULT 0 COMMENT 'etl_model_group_relation 表id',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `关联关系`(`group_relation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '关联流程与选择表模型组之间的连线的关联关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_workflow_run_log
-- ----------------------------
DROP TABLE IF EXISTS `etl_workflow_run_log`;
CREATE TABLE `etl_workflow_run_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id。',
  `workflow_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程数据项所拥有的唯一编号id。',
  `workflow_run_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程数据项每一次运行都会产生的一个唯一编号。（外键。可以根据此编号查询到相应的运行日志。）',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '流程运行的开始时间。',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '流程运行的结束时间。',
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程的运行状态。1：流程启动。2：运行成功。3：运行失败。',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '记录的创建时间。',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '【数据清洗】流程数据项的运行状态。' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for etl_workflow_run_log_detail
-- ----------------------------
DROP TABLE IF EXISTS `etl_workflow_run_log_detail`;
CREATE TABLE `etl_workflow_run_log_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id。',
  `workflow_run_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程数据项每一次运行都会产生的一个唯一编号。（外键。可以根据此编号查询到相应的详细运行日志。）',
  `run_time_sequence` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志的时间序列。',
  `log_content_detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详细的日志信息。',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '记录的创建时间。',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `runcode`(`workflow_run_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '【数据清洗】流程日志页面的详细流程运行日志。' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fs_export_log
-- ----------------------------
DROP TABLE IF EXISTS `fs_export_log`;
CREATE TABLE `fs_export_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `export_rule_id` int(11) NULL DEFAULT NULL COMMENT '导出规则的id',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导出的文件名字',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导出的文件路径',
  `data_amount` int(11) NULL DEFAULT NULL COMMENT '导出条数',
  `error_cause` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '错误原因',
  `package_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '分包语句',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导出的状态 1:成功 0:失败',
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fs_export_rule
-- ----------------------------
DROP TABLE IF EXISTS `fs_export_rule`;
CREATE TABLE `fs_export_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门id',
  `project_id` int(11) NULL DEFAULT NULL,
  `file_id` int(11) NULL DEFAULT NULL COMMENT '文件的id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导出规则名称',
  `type_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据存储位置类别',
  `export_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '导出详细信息',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导出的描述信息',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储准确路径',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_time` timestamp(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fs_file_catalog
-- ----------------------------
DROP TABLE IF EXISTS `fs_file_catalog`;
CREATE TABLE `fs_file_catalog`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NULL DEFAULT 0 COMMENT '父节点',
  `department_id` int(10) NULL DEFAULT NULL COMMENT '部门id',
  `project_id` int(10) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `data_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据类型',
  `create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fs_file_catalog_content
-- ----------------------------
DROP TABLE IF EXISTS `fs_file_catalog_content`;
CREATE TABLE `fs_file_catalog_content`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `metadata_id` int(10) NULL DEFAULT NULL,
  `upload_authorize_status` int(2) NULL DEFAULT 0 COMMENT '上报授权状态',
  `name_cn` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文名',
  `source_name_en` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name_en` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名',
  `catalog_id` int(10) NULL DEFAULT NULL COMMENT '数据目录id',
  `source_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源类型',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存入类型',
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `download_authorize_status` int(2) NULL DEFAULT 0 COMMENT '下载授权状态',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fs_file_share_catalog_content
-- ----------------------------
DROP TABLE IF EXISTS `fs_file_share_catalog_content`;
CREATE TABLE `fs_file_share_catalog_content`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `data_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '共享的数据位置（01原始库）',
  `fs_file_catalog_content_id` int(10) NULL DEFAULT NULL COMMENT 'fs_file_catalog_content_id',
  `metadata_id` int(10) NULL DEFAULT NULL,
  `upload_authorize_status` int(2) NULL DEFAULT 0 COMMENT '上报授权状态',
  `name_cn` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文名',
  `source_name_en` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `name_en` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名',
  `catalog_id` int(10) NULL DEFAULT NULL COMMENT '数据目录id',
  `source_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源类型',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存入类型',
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `download_authorize_status` int(2) NULL DEFAULT 0 COMMENT '下载授权状态',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fs_file_system
-- ----------------------------
DROP TABLE IF EXISTS `fs_file_system`;
CREATE TABLE `fs_file_system`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门ID',
  `file_id` int(11) NULL DEFAULT NULL COMMENT '文件服务ID',
  `catalog_content_id` int(10) NULL DEFAULT NULL COMMENT '表ID',
  `update_date` date NULL DEFAULT NULL COMMENT '更新时间',
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mn_beyon_monitor
-- ----------------------------
DROP TABLE IF EXISTS `mn_beyon_monitor`;
CREATE TABLE `mn_beyon_monitor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `total_num` int(11) NULL DEFAULT NULL COMMENT '资源总数',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `department_id` int(10) NULL DEFAULT NULL COMMENT '部门id',
  `project_id` int(10) NULL DEFAULT NULL COMMENT '项目id',
  `data_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据类型',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mn_catalog_day_monitor
-- ----------------------------
DROP TABLE IF EXISTS `mn_catalog_day_monitor`;
CREATE TABLE `mn_catalog_day_monitor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `catalog_id` int(11) NOT NULL COMMENT '目录id',
  `catalog_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录名称',
  `count_num` int(11) NULL DEFAULT NULL COMMENT '总数',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `department_id` int(10) NULL DEFAULT NULL COMMENT '部门id',
  `project_id` int(10) NULL DEFAULT NULL COMMENT '项目id',
  `day_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '天',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mn_collect_monitor
-- ----------------------------
DROP TABLE IF EXISTS `mn_collect_monitor`;
CREATE TABLE `mn_collect_monitor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `total_count` int(11) NULL DEFAULT NULL COMMENT '总记录数',
  `total_amount` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总容量',
  `create_date` date NULL DEFAULT NULL COMMENT '创建时间',
  `department_id` int(10) NULL DEFAULT NULL COMMENT '部门id',
  `project_id` int(10) NULL DEFAULT NULL COMMENT '项目id',
  `target_id` int(11) NULL DEFAULT NULL COMMENT '数据库或原始库文件id',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型(DATABASE/FILE)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '采集监控表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mn_push_monitor
-- ----------------------------
DROP TABLE IF EXISTS `mn_push_monitor`;
CREATE TABLE `mn_push_monitor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `total_count` int(11) NULL DEFAULT NULL COMMENT '总记录数',
  `create_date` date NULL DEFAULT NULL COMMENT '创建时间',
  `department_id` int(10) NULL DEFAULT NULL COMMENT '部门id',
  `project_id` int(10) NULL DEFAULT NULL COMMENT '项目id',
  `target_id` int(11) NULL DEFAULT NULL COMMENT '数据库或原始库文件id',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型(DATABASE/FILE)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推送监控表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mn_resource_monitor
-- ----------------------------
DROP TABLE IF EXISTS `mn_resource_monitor`;
CREATE TABLE `mn_resource_monitor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `total_num` int(11) NULL DEFAULT NULL COMMENT '资源总数',
  `total_item` int(11) NULL DEFAULT NULL COMMENT '资源条数',
  `total_amount` int(11) NULL DEFAULT NULL COMMENT '资源量级',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_date` timestamp(0) NULL DEFAULT NULL COMMENT '修改时间',
  `department_id` int(10) NULL DEFAULT NULL COMMENT '部门id',
  `project_id` int(10) NULL DEFAULT NULL COMMENT '项目id',
  `table_properties` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源表信息',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for model_data_catalog
-- ----------------------------
DROP TABLE IF EXISTS `model_data_catalog`;
CREATE TABLE `model_data_catalog`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NULL DEFAULT NULL COMMENT '父节点id',
  `department_id` int(10) NULL DEFAULT NULL COMMENT '用户的部门id',
  `project_id` int(10) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录的名称',
  `data_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录的数据类型',
  `rank` int(5) NULL DEFAULT NULL COMMENT '排序',
  `create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '模型库目录结构' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for model_data_flow_plugin_param
-- ----------------------------
DROP TABLE IF EXISTS `model_data_flow_plugin_param`;
CREATE TABLE `model_data_flow_plugin_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id。',
  `plugin_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '插件id',
  `work_flow_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模型库左侧菜单栏表中流程数据项的主键id。',
  `plugin_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的名称',
  `plugin_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的类型',
  `data_in_var_cn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的输入变量中文。',
  `data_in_var` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的输入变量。',
  `data_out_var_cn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的输出变量中文。',
  `data_out_var` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件的输出变量。',
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '插件运行状态，运行时设置',
  `select_table` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选择表：01 单表。02 多表。',
  `db_source_id` int(11) NULL DEFAULT NULL COMMENT '表数据源Id。',
  `data_catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '选择数据表时dataCatalogContent的id',
  `plugin_json` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '插件参数Json',
  `des` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '组件描述信息',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录的创建时间。',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '【数据清洗】流程中组件的配置参数。' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for model_data_manager
-- ----------------------------
DROP TABLE IF EXISTS `model_data_manager`;
CREATE TABLE `model_data_manager`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id。（外键。关联查询流程组件信息和日志时使用。）',
  `workflow_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程数据项的名称。',
  `workflow_category_id` int(11) NOT NULL COMMENT '流程数据项所归属的左侧目录id。',
  `workflow_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '每个流程数据项所拥有的唯一编号。(外键)',
  `flow_json` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '前端用来绘制流程数据项所使用用的json',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '流程创建时间。',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '【数据清洗】流程管理页面右侧的流程数据项。' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_access_service_access
-- ----------------------------
DROP TABLE IF EXISTS `op_access_service_access`;
CREATE TABLE `op_access_service_access`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采集表name',
  `catalog_id` int(11) NULL DEFAULT NULL COMMENT '目录id',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'DATABASE:数据库;FILE:文件数据',
  `item_id` bigint(11) NULL DEFAULT NULL COMMENT '数据库和文件数据采集表的id(bigint类型)',
  `uuid` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '唯一校验码',
  `status` int(2) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_apply_resource
-- ----------------------------
DROP TABLE IF EXISTS `op_apply_resource`;
CREATE TABLE `op_apply_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `resource_info_id` int(11) NULL DEFAULT NULL,
  `apply_opinion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `approve_user_id` int(11) NULL DEFAULT NULL,
  `department_id` int(11) NULL DEFAULT NULL,
  `approve_opinion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `apply_date` datetime(0) NULL DEFAULT NULL,
  `approve_date` datetime(0) NULL DEFAULT NULL,
  `start_date` datetime(0) NULL DEFAULT NULL,
  `end_date` datetime(0) NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_center_db
-- ----------------------------
DROP TABLE IF EXISTS `op_center_db`;
CREATE TABLE `op_center_db`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中心id',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据库用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据库密码',
  `ch_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据库表中文名称',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据库类型',
  `table_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名称',
  `url` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '连接地址',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '从资源中心拉取的数据库数据' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_center_service
-- ----------------------------
DROP TABLE IF EXISTS `op_center_service`;
CREATE TABLE `op_center_service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid_db` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联的中心数据库id',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求方式get，post',
  `serviceUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `sslCertWay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '认证方式http',
  `tableName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名称',
  `serviceCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务编码',
  `serviceName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务名',
  `serviceStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口状态',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网关状态',
  `requestBody` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求示例',
  `responseBody` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '返回参数',
  `requestType` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求类型',
  `remark` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '从资源中心拉取的接口数据' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_center_share_relation
-- ----------------------------
DROP TABLE IF EXISTS `op_center_share_relation`;
CREATE TABLE `op_center_share_relation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `center_dept_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源中心部门id对应数据中台dept_id',
  `center_user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源中心用户id对于数据中台center_user_id',
  `data_source_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中心数据源id',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门人员和同步共享数据的关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_classify_standard
-- ----------------------------
DROP TABLE IF EXISTS `op_classify_standard`;
CREATE TABLE `op_classify_standard`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `item_key` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `json_value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'json数据',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_collect
-- ----------------------------
DROP TABLE IF EXISTS `op_collect`;
CREATE TABLE `op_collect`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户Id',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门Id',
  `resource_info_id` int(11) NULL DEFAULT NULL COMMENT '资源id',
  `resource_info_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `resource_department_id` int(11) NULL DEFAULT NULL,
  `type_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源类型',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_custom_access
-- ----------------------------
DROP TABLE IF EXISTS `op_custom_access`;
CREATE TABLE `op_custom_access`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uuid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `db_id` int(11) NULL DEFAULT NULL,
  `content_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(2) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plugin_json` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_date` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `authorize_status` int(1) NULL DEFAULT NULL COMMENT '授权状态',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_database_reconcile
-- ----------------------------
DROP TABLE IF EXISTS `op_database_reconcile`;
CREATE TABLE `op_database_reconcile`  (
  `id` int(11) NOT NULL COMMENT '主键',
  `data_item_id` int(11) NOT NULL COMMENT '数据项id',
  `reconcile_date` date NULL DEFAULT NULL COMMENT '对账日期',
  `collect_num` int(11) NULL DEFAULT NULL COMMENT '采集数量',
  `converge_num` int(11) NULL DEFAULT NULL COMMENT '汇聚数量',
  `receive_num` int(11) NULL DEFAULT NULL COMMENT '入库数量',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `correct_num` int(11) NULL DEFAULT NULL COMMENT '更正量',
  `type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型（01：数据库对账，02：服务接口对账）',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库数据对账表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_datalife_archive_item
-- ----------------------------
DROP TABLE IF EXISTS `op_datalife_archive_item`;
CREATE TABLE `op_datalife_archive_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据项名称',
  `data_content_id` int(11) NULL DEFAULT NULL COMMENT '原始数据目录ID',
  `data_format` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据格式：csv、parquet',
  `path` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据转移路径',
  `datalife_frequency` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据生命周期：1、2、3',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `type` int(2) NULL DEFAULT NULL COMMENT '归档类型 1-数据库数据 3-文件数据',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_datalife_history_item
-- ----------------------------
DROP TABLE IF EXISTS `op_datalife_history_item`;
CREATE TABLE `op_datalife_history_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据项名称',
  `data_content_id` int(11) NULL DEFAULT NULL COMMENT '原始数据目录ID',
  `data_format` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据格式：csv、parquet',
  `path` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据转移路径',
  `datalife_frequency` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据生命周期：1、2、3',
  `create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `type` int(2) NULL DEFAULT NULL COMMENT '历史存储类型 1-数据库数据 3-文件数据',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_dataname_standard
-- ----------------------------
DROP TABLE IF EXISTS `op_dataname_standard`;
CREATE TABLE `op_dataname_standard`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键序号',
  `category_id` int(11) NOT NULL COMMENT '左侧树id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '命名规则名称',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '命名类型（DB/TABLE）',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '命名编码',
  `is_prefix` tinyint(1) NOT NULL COMMENT '是否前缀限制',
  `prefix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '前缀限制',
  `separators` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分隔符',
  `is_suffix` tinyint(1) NOT NULL COMMENT '是否后缀限制',
  `suffix` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '后缀限制',
  `length` int(11) NOT NULL COMMENT '规则长度',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库以及数据表命名标准' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_field_standard
-- ----------------------------
DROP TABLE IF EXISTS `op_field_standard`;
CREATE TABLE `op_field_standard`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `name_cn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中文名称',
  `name_en` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '英文名称',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段类型(string,int等)',
  `field_length` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段长度',
  `is_null` int(3) NOT NULL COMMENT '是否允许null',
  `is_pk` int(3) NOT NULL COMMENT '是否为主键',
  `des` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_file_reconcile
-- ----------------------------
DROP TABLE IF EXISTS `op_file_reconcile`;
CREATE TABLE `op_file_reconcile`  (
  `id` int(11) NOT NULL COMMENT '主键',
  `data_item_id` int(11) NOT NULL COMMENT '数据项id',
  `reconcile_date` date NULL DEFAULT NULL COMMENT '对账日期',
  `collect_num` int(11) NULL DEFAULT NULL COMMENT '采集数量',
  `converge_num` int(11) NULL DEFAULT NULL COMMENT '汇聚数量',
  `receive_num` int(11) NULL DEFAULT NULL COMMENT '入库数量',
  `create_date` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `correct_num` int(11) NULL DEFAULT NULL COMMENT '更正量',
  `type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型（01：文件数据对账，02：视频采集对账，03：音频采集对账，04：图片采集对账，05：文本采集对账）',
  `type_code` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外部文件数据源类型（05:hdfs,06:ftp）',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件数据对账表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_file_resource_authorize_user
-- ----------------------------
DROP TABLE IF EXISTS `op_file_resource_authorize_user`;
CREATE TABLE `op_file_resource_authorize_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_info_id` int(11) NULL DEFAULT NULL COMMENT '资源Id',
  `resource_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源名称，冗余字段',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门Id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户Id',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权资源的类型：数据目录、分析图表',
  `type_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据目录下的：源数据、主数据、主题数据、自定义目录。分析图表：数据模型、分析图、分析表、分析主题',
  `if_authorize_department` int(11) NULL DEFAULT NULL COMMENT '是否授权给部门',
  `create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `group_id` int(11) NULL DEFAULT 0 COMMENT '分组ID',
  `if_authorize_group` int(11) NULL DEFAULT 0 COMMENT '是否授权给分组 1-是 0-否',
  `upload` int(1) NULL DEFAULT 0 COMMENT '是否有上传权限 1-是 0-否',
  `download` int(1) NULL DEFAULT 0 COMMENT '是否有下载权限 1-是 0-否',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_file_upload
-- ----------------------------
DROP TABLE IF EXISTS `op_file_upload`;
CREATE TABLE `op_file_upload`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '登录用户id',
  `catalog_content_id` int(11) NOT NULL,
  `name_cn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '上传文件中文名称',
  `name_en` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件名称',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件上传路径',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `length` bigint(10) NULL DEFAULT NULL COMMENT '字节数',
  `status` tinyint(1) NOT NULL COMMENT '状态 0：未上传 1：上传成功 2：上传失败',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件上传记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_gis_layer
-- ----------------------------
DROP TABLE IF EXISTS `op_gis_layer`;
CREATE TABLE `op_gis_layer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'URL地址',
  `url_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'URl信息',
  `center` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中心点坐标',
  `coordinate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '坐标系',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'UUID',
  `status` int(3) NOT NULL COMMENT '状态(0:未发布 1:已发布)',
  `authorize_status` int(3) NOT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_gis_layer_category
-- ----------------------------
DROP TABLE IF EXISTS `op_gis_layer_category`;
CREATE TABLE `op_gis_layer_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `department_id` int(11) NOT NULL COMMENT '部门id',
  `p_id` int(11) NULL DEFAULT NULL COMMENT '父节点id',
  `center` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coordinate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_label
-- ----------------------------
DROP TABLE IF EXISTS `op_label`;
CREATE TABLE `op_label`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键序号',
  `classify_id` int(11) NOT NULL DEFAULT 0 COMMENT '所属分类id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '标签名称',
  `code` char(17) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '标签编码',
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '版本号',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签数据项' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_label_classify
-- ----------------------------
DROP TABLE IF EXISTS `op_label_classify`;
CREATE TABLE `op_label_classify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键序号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '分类名称',
  `department_id` int(11) NOT NULL DEFAULT 0 COMMENT '部门id',
  `project_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签管理分类数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_label_mark
-- ----------------------------
DROP TABLE IF EXISTS `op_label_mark`;
CREATE TABLE `op_label_mark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键序号',
  `type` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '标记类型(SOURCE:原始数据 MASTER:主数据 THEME:主题数据 DIAGRAM:图资源 FORM:表资源 )',
  `relation_id` int(11) NOT NULL DEFAULT 1 COMMENT '关联的数据项id',
  `label_id` int(11) NOT NULL DEFAULT 1 COMMENT '关联的标签id',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签标记关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_metadata
-- ----------------------------
DROP TABLE IF EXISTS `op_metadata`;
CREATE TABLE `op_metadata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `department_id` int(11) NOT NULL COMMENT '部门id',
  `project_id` int(11) NULL DEFAULT NULL,
  `data_source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据来源',
  `source_format` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '数据格式(Mysql,Oracle,postgreSql,SqlServer,Csv,Excel,Txt,File,CanFile)',
  `target_format` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_tag` int(11) NULL DEFAULT NULL COMMENT '数据标签',
  `update_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更新单位(月，天，时)',
  `update_frequency` int(11) NOT NULL COMMENT '更新频次',
  `custom_fields` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '自定义字段信息',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `origin_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据源类型（1采集2推送）',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '原始数据元信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_panel_custom
-- ----------------------------
DROP TABLE IF EXISTS `op_panel_custom`;
CREATE TABLE `op_panel_custom`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_category_id` int(11) NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  `page_views` int(11) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_panel_custom_category
-- ----------------------------
DROP TABLE IF EXISTS `op_panel_custom_category`;
CREATE TABLE `op_panel_custom_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department_id` int(11) NULL DEFAULT NULL,
  `p_id` int(11) NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_panel_custom_content
-- ----------------------------
DROP TABLE IF EXISTS `op_panel_custom_content`;
CREATE TABLE `op_panel_custom_content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panel_custom_id` int(11) NULL DEFAULT NULL,
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `top` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `left` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `style` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `custom_resource_id` int(11) NULL DEFAULT NULL,
  `type` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_panel_custom_resource
-- ----------------------------
DROP TABLE IF EXISTS `op_panel_custom_resource`;
CREATE TABLE `op_panel_custom_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_category_id` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL COMMENT '1:图资源,2:表资源,3:页面资源',
  `resource_id` int(11) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_panel_template
-- ----------------------------
DROP TABLE IF EXISTS `op_panel_template`;
CREATE TABLE `op_panel_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_panel_template_content
-- ----------------------------
DROP TABLE IF EXISTS `op_panel_template_content`;
CREATE TABLE `op_panel_template_content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panel_template_id` int(11) NULL DEFAULT NULL,
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `top` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `left` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `style` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `type` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_report
-- ----------------------------
DROP TABLE IF EXISTS `op_report`;
CREATE TABLE `op_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '数据项id,关联DM_DATA_CATALOG_CONTENT',
  `project_id` int(11) NULL DEFAULT NULL COMMENT '当前项目id',
  `project_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前项目名称',
  `dept_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前部门id',
  `status` tinyint(2) NULL DEFAULT NULL COMMENT '0:未完成;1:已完成(中心节点是否完成对表结构的创建)',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布说明',
  `create_date` timestamp(0) NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_resource_apply
-- ----------------------------
DROP TABLE IF EXISTS `op_resource_apply`;
CREATE TABLE `op_resource_apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_info_id` int(11) NULL DEFAULT NULL COMMENT '资源ID',
  `resource_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `project_id` int(5) NULL DEFAULT NULL COMMENT '项目ID',
  `category_id` int(11) NULL DEFAULT NULL COMMENT '资源的分类树Id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '申请人Id',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '资源拥有者部门Id',
  `apply_opinion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '申请描述',
  `apply_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '申请时间',
  `approve_user_id` int(11) NULL DEFAULT NULL COMMENT '审批人Id',
  `approve_opinion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审批意见',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批状态：0、审批中，1、同意，2、拒绝',
  `approve_date` timestamp(0) NULL DEFAULT NULL COMMENT '审批时间',
  `type_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据目录下的：源数据、主数据、主题数据、自定义目录。分析图表：数据模型、分析图、分析表、分析主题',
  `start_time` timestamp(0) NULL DEFAULT NULL COMMENT '资源有效的开始时间',
  `end_time` timestamp(0) NULL DEFAULT NULL COMMENT '资源有效期的截止时间',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_resource_apply_history
-- ----------------------------
DROP TABLE IF EXISTS `op_resource_apply_history`;
CREATE TABLE `op_resource_apply_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_info_id` int(11) NULL DEFAULT NULL COMMENT '资源ID',
  `resource_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `category_id` int(11) NULL DEFAULT NULL COMMENT '资源的分类树Id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '申请人Id',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '资源拥有者部门Id',
  `apply_opinion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '申请描述',
  `apply_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '申请时间',
  `approve_user_id` int(11) NULL DEFAULT NULL COMMENT '审批人Id',
  `approve_opinion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审批意见',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批状态：0、审批中，1、同意，2、拒绝',
  `approve_date` timestamp(0) NULL DEFAULT NULL COMMENT '审批时间',
  `type_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据目录下的：源数据、主数据、主题数据、自定义目录。分析图表：数据模型、分析图、分析表、分析主题',
  `start_time` timestamp(0) NULL DEFAULT NULL COMMENT '资源有效的开始时间',
  `end_time` timestamp(0) NULL DEFAULT NULL COMMENT '资源有效期的截止时间',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_resource_apply_history_old
-- ----------------------------
DROP TABLE IF EXISTS `op_resource_apply_history_old`;
CREATE TABLE `op_resource_apply_history_old`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_info_id` int(11) NULL DEFAULT NULL COMMENT '资源ID',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '申请人Id',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门Id',
  `applyOpinion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '申请描述',
  `applyDate` timestamp(0) NULL DEFAULT NULL COMMENT '申请时间',
  `approve_user_id` int(11) NULL DEFAULT NULL COMMENT '审批人Id',
  `approveOpinion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审批意见',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批状态：1、同意，2、拒绝',
  `approveDate` timestamp(0) NULL DEFAULT NULL COMMENT '审批时间',
  `type_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据目录下的：源数据、主数据、主题数据、自定义目录。分析图表：数据模型、分析图、分析表、分析主题',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_resource_authorize_user
-- ----------------------------
DROP TABLE IF EXISTS `op_resource_authorize_user`;
CREATE TABLE `op_resource_authorize_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_info_id` int(11) NOT NULL COMMENT '资源Id',
  `resource_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源名称，冗余字段',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门Id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户Id',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权资源的类型：数据目录、分析图表',
  `type_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据目录下的：源数据、主数据、主题数据、自定义目录。分析图表：数据模型、分析图、分析表、分析主题',
  `if_authorize_department` int(11) NULL DEFAULT NULL COMMENT '是否授权给部门',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `group_id` int(11) NULL DEFAULT 0 COMMENT '分组ID',
  `if_authorize_group` int(11) NULL DEFAULT 0 COMMENT '是否授权给分组 1-是 0-否',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_resource_catalog
-- ----------------------------
DROP TABLE IF EXISTS `op_resource_catalog`;
CREATE TABLE `op_resource_catalog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '01:数据资源；02：图表；03：API ',
  `p_id` int(11) NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_resource_info
-- ----------------------------
DROP TABLE IF EXISTS `op_resource_info`;
CREATE TABLE `op_resource_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NULL DEFAULT NULL,
  `resource_catalog_id` int(11) NULL DEFAULT NULL,
  `resource_id` int(11) NULL DEFAULT NULL,
  `resource_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '01：原始数据；02：基础数据；03：分析数据；04：分析图表；05：数据接入；06:数据清洗；08:分析报表；09：分析面板',
  `pubdate` datetime(0) NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_service_access
-- ----------------------------
DROP TABLE IF EXISTS `op_service_access`;
CREATE TABLE `op_service_access`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务接口名',
  `directory_id` int(11) NOT NULL COMMENT 'dataCatalogContentId',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态：如果做服务监控',
  `uddi` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'uuid',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_service_param
-- ----------------------------
DROP TABLE IF EXISTS `op_service_param`;
CREATE TABLE `op_service_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `service_id` int(11) NOT NULL COMMENT '对应OP_SERVICE_ACCESS的id',
  `type` int(1) NULL DEFAULT NULL COMMENT '类型（区分单表条件查询，单表分页查询等）',
  `plugin_json` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '条件设置',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_share_report
-- ----------------------------
DROP TABLE IF EXISTS `op_share_report`;
CREATE TABLE `op_share_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `catalog_content_id` int(11) NULL DEFAULT NULL COMMENT '数据项id,关联DM_DATA_CATALOG_CONTENT',
  `service_id` int(11) NULL DEFAULT NULL COMMENT '服务接口id',
  `project_id` int(11) NULL DEFAULT NULL COMMENT '项目id',
  `data_type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '01库02接口',
  `share_target` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '01 中心，02、其他节点',
  `status` tinyint(2) NULL DEFAULT NULL COMMENT '0:上报失败;1:上报成功',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上报描述',
  `create_date` timestamp(0) NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_source_organization
-- ----------------------------
DROP TABLE IF EXISTS `op_source_organization`;
CREATE TABLE `op_source_organization`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `p_id` int(11) NULL DEFAULT NULL COMMENT '父id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织名称',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织编码',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dp_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源中心部门id',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 158 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源中心组织机构' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of op_source_organization
-- ----------------------------
INSERT INTO `op_source_organization` VALUES (156, -1, '本地环境数据中台', '001', '2020-10-29 15:06:47', '242DCDDD62C144D2A5FAE612648429CA', '2020-10-29 15:06:47');
INSERT INTO `op_source_organization` VALUES (157, 156, '公安部', '1', '2020-10-29 15:06:47', 'CE4D83044650471AAF85983BD9663623', '2020-10-29 15:06:47');

-- ----------------------------
-- Table structure for op_standard_category
-- ----------------------------
DROP TABLE IF EXISTS `op_standard_category`;
CREATE TABLE `op_standard_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `p_id` int(1) NULL DEFAULT NULL COMMENT '父节点id',
  `department_id` int(11) NOT NULL COMMENT '部门ID',
  `project_id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型(FIELD,CLASSIFY)',
  `create_date` timestamp(0) NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `code` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '唯一资源标识符',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_subject_accredit
-- ----------------------------
DROP TABLE IF EXISTS `op_subject_accredit`;
CREATE TABLE `op_subject_accredit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_item_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_subject_category
-- ----------------------------
DROP TABLE IF EXISTS `op_subject_category`;
CREATE TABLE `op_subject_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标识id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `parent_id` int(11) NOT NULL COMMENT '父节点id',
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `image_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_subject_item
-- ----------------------------
DROP TABLE IF EXISTS `op_subject_item`;
CREATE TABLE `op_subject_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '面板参数',
  `create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '面板创建时间',
  `creator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面板创建人',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '创建人ID',
  `status` int(10) NULL DEFAULT NULL COMMENT '面板状态',
  `panel_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面板名称',
  `publish_date` timestamp(0) NULL DEFAULT NULL COMMENT '面板发布时间',
  `department_id` int(11) NULL DEFAULT NULL COMMENT '创建人部门ID',
  `panel_cover` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `category_id` int(11) NULL DEFAULT NULL COMMENT '类别id',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_tag
-- ----------------------------
DROP TABLE IF EXISTS `op_tag`;
CREATE TABLE `op_tag`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `catalog_id` int(10) NULL DEFAULT NULL COMMENT '目录id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_tag_catalog
-- ----------------------------
DROP TABLE IF EXISTS `op_tag_catalog`;
CREATE TABLE `op_tag_catalog`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pId` int(10) NULL DEFAULT NULL COMMENT '父节点',
  `project_id` int(10) NULL DEFAULT NULL COMMENT '项目id',
  `department_id` int(10) NULL DEFAULT NULL COMMENT '部门id',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `sort` int(10) NULL DEFAULT NULL COMMENT '排序',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签目录' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for op_user_resource
-- ----------------------------
DROP TABLE IF EXISTS `op_user_resource`;
CREATE TABLE `op_user_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键序号',
  `user_id` int(11) NOT NULL DEFAULT 1 COMMENT '用户id',
  `type` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '标签标记类型(SOURCE:原始数据 MASTER:主数据 THEME:主题数据 DIAGRAM:图资源 FORM:表资源 )',
  `type_code` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '数据目录下的：源数据、主数据、主题数据、自定义目录。分析图表：数据模型、分析图、分析表、分析主题',
  `resource_info_id` int(11) NOT NULL DEFAULT 1 COMMENT '拥有的资源id',
  `resource_source` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '资源来源 APPLY:申请通过资源 AUTHORIZE：授权资源',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '服务平台用户拥有资源' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for repo_jar_catalog
-- ----------------------------
DROP TABLE IF EXISTS `repo_jar_catalog`;
CREATE TABLE `repo_jar_catalog`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(5) NULL DEFAULT NULL COMMENT '项目Id',
  `department_id` int(10) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录名称',
  `p_id` int(10) NULL DEFAULT 0 COMMENT '父id',
  `module_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '02：采集。03：清洗。',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '数据创建时间。',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '函数管理-目录。' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for repo_jar_function
-- ----------------------------
DROP TABLE IF EXISTS `repo_jar_function`;
CREATE TABLE `repo_jar_function`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `main_class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类的名称。',
  `function_jar_id` int(20) NOT NULL COMMENT '方法所属的jar包id',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '方法描述信息。',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for repo_jar_param
-- ----------------------------
DROP TABLE IF EXISTS `repo_jar_param`;
CREATE TABLE `repo_jar_param`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jar_id` int(10) NULL DEFAULT NULL COMMENT 'jar包id',
  `jar_function_id` int(10) NULL DEFAULT NULL COMMENT 'jar包的函数（类）id',
  `json_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '动态参数json',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'repo_jar_param' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of repo_jar_param
-- ----------------------------
INSERT INTO `repo_jar_param` VALUES (1, 226, 233, '[{\"statement\":\"资源标识\",\"key\":\"zybsf\",\"value\":\"X0065A\",\"valueType\":\"string\"}]', NULL, NULL);
INSERT INTO `repo_jar_param` VALUES (2, 1, 1, '[{\"statement\":\"2\",\"key\":\"test\",\"value\":\"test\",\"valueType\":\"string\"}]', NULL, NULL);
INSERT INTO `repo_jar_param` VALUES (3, 9, 10, '[{\"statement\":\"\",\"key\":\"add\",\"value\":\"123\",\"valueType\":\"string\"}]', NULL, NULL);

-- ----------------------------
-- Table structure for repo_jar_upload
-- ----------------------------
DROP TABLE IF EXISTS `repo_jar_upload`;
CREATE TABLE `repo_jar_upload`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'jar包的名称',
  `function_catalog_id` int(20) NOT NULL COMMENT 'jar包所属的目录id',
  `plugin_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'jar包的插件名称。pf4j运行时用来识别不同的jar',
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'jar包版本号',
  `jar_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'jar包所在的路径',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'jar包功能描述',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '函数管理-jar包' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_action_bean
-- ----------------------------
DROP TABLE IF EXISTS `rl_action_bean`;
CREATE TABLE `rl_action_bean`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rule_category_id` int(11) NULL DEFAULT NULL COMMENT '规则目录id',
  `action_library_id` int(11) NULL DEFAULT NULL COMMENT '动作库主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'bean名字',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'bean标签',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'bean路径',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '动作的bean' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_action_library
-- ----------------------------
DROP TABLE IF EXISTS `rl_action_library`;
CREATE TABLE `rl_action_library`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rule_category_id` int(11) NULL DEFAULT NULL COMMENT '规则目录id',
  `jar_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传jar包名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'jar上传路径',
  `version` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'jar包版本号',
  `plugin_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'jar包的插件名称',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '动作库' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_action_method
-- ----------------------------
DROP TABLE IF EXISTS `rl_action_method`;
CREATE TABLE `rl_action_method`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_bean_id` int(11) NULL DEFAULT NULL COMMENT '动作库主键',
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `method_label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法标签',
  `input_params` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '输入的参数',
  `out_params` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '输出的参数',
  `return_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '返回类型',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '动作的方法' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_constant_library
-- ----------------------------
DROP TABLE IF EXISTS `rl_constant_library`;
CREATE TABLE `rl_constant_library`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rule_category_id` int(11) NULL DEFAULT NULL COMMENT '规则目录id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '常量库名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '常量库' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_constant_library_param
-- ----------------------------
DROP TABLE IF EXISTS `rl_constant_library_param`;
CREATE TABLE `rl_constant_library_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `constant_library_id` int(11) NULL DEFAULT NULL COMMENT '常量库主键',
  `label` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '常量标题',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '常量的值',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '常量类型',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '常量库参数' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_data_set
-- ----------------------------
DROP TABLE IF EXISTS `rl_data_set`;
CREATE TABLE `rl_data_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据集名称',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据集类型',
  `database_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库',
  `sql_script` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'sql脚本',
  `category_id` int(11) NULL DEFAULT NULL COMMENT '目录主键',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `project_id` int(11) NULL DEFAULT NULL COMMENT '项目主键',
  `date_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源编目',
  `date_type_category_id` int(11) NULL DEFAULT NULL COMMENT '资源编目目录主键',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据集' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_data_set_category
-- ----------------------------
DROP TABLE IF EXISTS `rl_data_set_category`;
CREATE TABLE `rl_data_set_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '父目录主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `project_id` int(11) NULL DEFAULT NULL COMMENT '项目主键',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据集目录' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_parameter_library
-- ----------------------------
DROP TABLE IF EXISTS `rl_parameter_library`;
CREATE TABLE `rl_parameter_library`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rule_category_id` int(11) NULL DEFAULT NULL COMMENT '规则目录id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数库名称',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数库名称',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数库' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_parameter_library_param
-- ----------------------------
DROP TABLE IF EXISTS `rl_parameter_library_param`;
CREATE TABLE `rl_parameter_library_param`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parameter_library_id` int(11) NULL DEFAULT NULL COMMENT '参数库主键',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数名',
  `label` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数标题',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数类型',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数库参数' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_rule_category
-- ----------------------------
DROP TABLE IF EXISTS `rl_rule_category`;
CREATE TABLE `rl_rule_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '父节点',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `project_id` int(11) NULL DEFAULT NULL COMMENT '项目id',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department_id` int(10) NULL DEFAULT NULL,
  `tag_catalog_id` int(10) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规则目录' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_rule_category_date_set
-- ----------------------------
DROP TABLE IF EXISTS `rl_rule_category_date_set`;
CREATE TABLE `rl_rule_category_date_set`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rule_category_id` int(11) NULL DEFAULT NULL COMMENT '规则目录id',
  `data_set_id` int(11) NULL DEFAULT NULL COMMENT '数据集id',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规则目录与数据集映射关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_rule_script
-- ----------------------------
DROP TABLE IF EXISTS `rl_rule_script`;
CREATE TABLE `rl_rule_script`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rule_category_id` int(11) NULL DEFAULT NULL COMMENT '规则目录id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `rule_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则类型(1决策集)',
  `script` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '脚本内容',
  `enabled` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否启用',
  `remark` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `json_data` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '传参原始json',
  `test_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '测试数据',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '规则脚本' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_tag_rule
-- ----------------------------
DROP TABLE IF EXISTS `rl_tag_rule`;
CREATE TABLE `rl_tag_rule`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `project_id` int(10) NULL DEFAULT NULL COMMENT '项目id',
  `department_id` int(10) NULL DEFAULT NULL COMMENT '部门id',
  `rule_script_id` int(10) NULL DEFAULT NULL COMMENT '规则id',
  `tag_id` int(10) NULL DEFAULT NULL COMMENT '标签id',
  `category_id` int(10) NULL DEFAULT NULL COMMENT '规则目录id',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签规则关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_tag_rule_category
-- ----------------------------
DROP TABLE IF EXISTS `rl_tag_rule_category`;
CREATE TABLE `rl_tag_rule_category`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `category_id` int(10) NULL DEFAULT NULL COMMENT '规则目录id',
  `catalog_content_id` int(10) NULL DEFAULT NULL COMMENT '数据目录内容id',
  `query_sql` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '查询sql',
  `table_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表类型（1源表 2目标表）',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `main_table` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `page_size` int(10) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签规则目录业务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_tag_rule_log
-- ----------------------------
DROP TABLE IF EXISTS `rl_tag_rule_log`;
CREATE TABLE `rl_tag_rule_log`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '流程的运行状态。1：流程启动。2：运行成功。3：运行失败。',
  `rule_category_id` int(10) NULL DEFAULT NULL COMMENT '规则目录id',
  `log_content_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '详细的日志信息',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '流程运行的开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '流程运行的结束时间',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签规则执行日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for rl_tag_source_fields
-- ----------------------------
DROP TABLE IF EXISTS `rl_tag_source_fields`;
CREATE TABLE `rl_tag_source_fields`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `rule_catalog_id` int(10) NULL DEFAULT NULL COMMENT '规则目录业务id',
  `category_id` int(10) NULL DEFAULT NULL COMMENT '规则目录id',
  `catalog_content_field_id` int(10) NULL DEFAULT NULL COMMENT '数据目录内容字段id',
  `field_name_mp` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段映射名',
  `field_name_mp_en` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段映射英文名',
  `field_name_mp_cn` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字段映射中文名',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '标签规则源表字段' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for test_rangetable
-- ----------------------------
DROP TABLE IF EXISTS `test_rangetable`;
CREATE TABLE `test_rangetable`  (
  `id` int(11) NOT NULL,
  `iNAME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` int(11) NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ts_schedule_manager
-- ----------------------------
DROP TABLE IF EXISTS `ts_schedule_manager`;
CREATE TABLE `ts_schedule_manager`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NULL DEFAULT NULL,
  `department_id` int(11) NULL DEFAULT NULL,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `workflow_manager_id` int(11) NULL DEFAULT NULL,
  `frequency_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `frequency` int(11) NULL DEFAULT 1,
  `if_use_rules` tinyint(1) NULL DEFAULT NULL COMMENT '是否使用脚本来处理参数。',
  `rules` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目Id',
  `latest_execute_time` datetime(0) NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_scheduled_time` bigint(20) NULL DEFAULT NULL,
  `next_scheduled_time` bigint(20) NULL DEFAULT NULL,
  `max_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单次任务最长执行时间，小于0是不限制，防止无限等待',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ts_task_log
-- ----------------------------
DROP TABLE IF EXISTS `ts_task_log`;
CREATE TABLE `ts_task_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `task_manage_id` int(11) NULL DEFAULT NULL,
  `start_time` datetime(0) NULL DEFAULT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Procedure structure for insertTable
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertTable`;
delimiter ;;
CREATE DEFINER=`root`@`ip-10-0-1-88` PROCEDURE `insertTable`()
BEGIN
DECLARE var int;
SET var = 0;
WHILE var < 10001 DO
INSERT INTO `iov_data_v2.6`.`DG_TASK_RULES_DETAIL` (`type`, `batch_number`, `data_item_id`, `task_info`, `send_status`, `data_amount`, `send_time`, `receive_status`, `receive_data_amount`, `receive_time`, `create_date`) VALUES ( 'DATABASE', '20191129114203514', '105650156', 'SELECT \nt.create_time,\nt.des,\nt.id,\nt.latest_price,\nt.name,\nt.near_price,\nt.sale_price,\nt.sale_status,\nt.update_time,\nt.uuid\nFROM danTarget t\nWHERE 1=1  limit 0, 2000', '0', '145', NULL, '0', NULL, NULL, '2019-11-29 11:42:10');
SET var = var + 1;
END WHILE;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
