/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL_MYSQL
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : sbflux_sample_main

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 12/12/2024 15:15:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for api_crud
-- ----------------------------
DROP TABLE IF EXISTS `api_crud`;
CREATE TABLE `api_crud` (
  `api_crud_code` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `is_load_enabled` char(1) NOT NULL,
  `is_stack_enabled` char(1) NOT NULL,
  `is_use_native` char(1) NOT NULL,
  `manager` varchar(128) NOT NULL,
  `max_limit` int NOT NULL,
  `package_name` varchar(255) NOT NULL,
  PRIMARY KEY (`api_crud_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_crud
-- ----------------------------
BEGIN;
INSERT INTO `api_crud` (`api_crud_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `is_load_enabled`, `is_stack_enabled`, `is_use_native`, `manager`, `max_limit`, `package_name`) VALUES ('Sample-CompositeHardDel', 'ADMIN::admin', 1733385732533, 'ADMIN::admin', 1733385732533, 'CompositeHardDel', 'Y', 'Y', 'N', 'otherTransactionManager', 100, 'net.ideahut.springboot.template.entity.app');
COMMIT;

-- ----------------------------
-- Table structure for api_crud_field
-- ----------------------------
DROP TABLE IF EXISTS `api_crud_field`;
CREATE TABLE `api_crud_field` (
  `field_name` varchar(128) NOT NULL,
  `api_crud_code` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  PRIMARY KEY (`api_crud_code`,`field_name`),
  KEY `idx_api_crud_field__api_crud` (`api_crud_code`),
  CONSTRAINT `fk_api_crud_field__api_crud` FOREIGN KEY (`api_crud_code`) REFERENCES `api_crud` (`api_crud_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_crud_field
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for api_item_crud
-- ----------------------------
DROP TABLE IF EXISTS `api_item_crud`;
CREATE TABLE `api_item_crud` (
  `item_id` varchar(64) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `manager` varchar(128) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_item_crud
-- ----------------------------
BEGIN;
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('0010f9c5-3dcc-4b7b-8e02-8d04b58e9cae', '', 1733991198323, '', 1733991198323, 'IntegerIdWithBytes', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('02b467ed-55c0-41ec-9545-9d9e43339e19', '', 1733991198312, '', 1733991198312, 'AutoGenLongIdHardDel', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('05ce4340-e43e-482e-9878-dfccbcd73a39', '', 1733991198118, '', 1733991198118, 'CompositeHardDel', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('0f311740-34d9-4462-8e45-a889ff592ae1', '', 1733991198368, '', 1733991198368, 'AutoGenStrIdHardDel', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('10bfd5fb-44e6-4796-8f05-d6c54fde5b21', '', 1733991198273, '', 1733991198273, 'UserFavorite', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('36fc246c-d292-4765-ad4b-8a3ed3b694d4', '', 1733991198244, '', 1733991198244, 'EmbeddedWithoutAttribute', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('3986644e-97d2-47dd-8a5a-de223d0fc96d', '', 1733991198072, '', 1733991198072, 'LongIdJoinComposite', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('3cc9ca3d-c530-4763-90e2-6d0fa240a88d', '', 1733991198169, '', 1733991198169, 'Role', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('493124c4-bbf2-4f7a-9b53-ca2cb86bf826', '', 1733991198301, '', 1733991198301, 'Menu', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('5de77075-8d3f-4a44-bb1f-80b1026cc63e', '', 1733991198338, '', 1733991198338, 'LongIdJoinEmbedded', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('5ef3533f-4eee-438d-901e-677116af1792', '', 1733991198096, '', 1733991198096, 'MenuRole', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('686255ca-578c-4cfc-bbab-ea6efa7d9f39', '', 1733991197919, '', 1733991197919, 'CompositeHardDel', 'otherTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('6f5b19d7-2243-40bc-ab44-5245afc3407b', '', 1733991198185, '', 1733991198185, 'CompositeSoftDel', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('75c1577c-ec7f-4d23-8776-b3e3d26d782b', '', 1733991198355, '', 1733991198355, 'EmbeddedSoftDel', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('7780ca95-4f57-41fc-9df2-85adcbdd82c6', '', 1733991198199, '', 1733991198199, 'EmbeddedHardDel', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('8b2c24d9-5f46-4d5c-8f16-58882da5bb2b', '', 1733991198231, '', 1733991198231, 'User', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('93702591-7814-4e71-a1e6-a4148c267330', '', 1733991198221, '', 1733991198221, 'InformationLink', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('b10ad510-a133-4ad5-b27a-c4bdb7d2e887', '', 1733991198028, '', 1733991198028, 'UserDetail', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('c79981b3-c8b1-4493-85f8-952f48b6bd23', '', 1733991198287, '', 1733991198287, 'ManualGenStrIdSoftDel', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('ccb5f6da-8e45-4a67-ae50-1ef6301cf4ab', '', 1733991198146, '', 1733991198146, 'AutoGenStrIdSoftDel', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('d05fa662-0d53-4e2d-acd6-451bc1a43d72', '', 1733991198029, '', 1733991198029, 'Information', 'otherTransactionManager', 'net.ideahut.springboot.template.entity.app');
INSERT INTO `api_item_crud` (`item_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `class_name`, `manager`, `package_name`) VALUES ('fc26eb5d-98aa-4ada-b97a-db513736a1ea', '', 1733991198260, '', 1733991198260, 'Information', 'mainTransactionManager', 'net.ideahut.springboot.template.entity.app');
COMMIT;

-- ----------------------------
-- Table structure for api_item_request
-- ----------------------------
DROP TABLE IF EXISTS `api_item_request`;
CREATE TABLE `api_item_request` (
  `item_id` varchar(64) NOT NULL,
  `class_name` varchar(128) NOT NULL,
  `consumes` varchar(255) DEFAULT NULL,
  `function_name` varchar(128) NOT NULL,
  `methods` varchar(255) DEFAULT NULL,
  `package_name` varchar(255) NOT NULL,
  `parameter_count` int NOT NULL,
  `patterns` varchar(1024) DEFAULT NULL,
  `produces` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_item_request
-- ----------------------------
BEGIN;
INSERT INTO `api_item_request` (`item_id`, `class_name`, `consumes`, `function_name`, `methods`, `package_name`, `parameter_count`, `patterns`, `produces`) VALUES ('094d5354-cf88-4241-af91-602c45fcf7e6', 'DevController', '', 'receive', 'POST', 'net.ideahut.springboot.template.controller', 2, '/dev/multipart', '');
INSERT INTO `api_item_request` (`item_id`, `class_name`, `consumes`, `function_name`, `methods`, `package_name`, `parameter_count`, `patterns`, `produces`) VALUES ('743668fd-9de0-487d-9477-6475760acebe', 'AuthController', '', 'logout', 'GET,POST', 'net.ideahut.springboot.template.controller', 1, '/auth/logout', '');
INSERT INTO `api_item_request` (`item_id`, `class_name`, `consumes`, `function_name`, `methods`, `package_name`, `parameter_count`, `patterns`, `produces`) VALUES ('7ac21d60-356b-4dc5-b80b-d44fb035a4df', 'MenuController', '', 'list', 'GET', 'net.ideahut.springboot.template.controller', 0, '/menu/list', '');
INSERT INTO `api_item_request` (`item_id`, `class_name`, `consumes`, `function_name`, `methods`, `package_name`, `parameter_count`, `patterns`, `produces`) VALUES ('e1a5b566-967e-49b0-8336-9c1de962a856', 'AuthController', '', 'info', 'GET,POST', 'net.ideahut.springboot.template.controller', 1, '/auth/info', '');
COMMIT;

-- ----------------------------
-- Table structure for api_provider
-- ----------------------------
DROP TABLE IF EXISTS `api_provider`;
CREATE TABLE `api_provider` (
  `api_name` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `access_url` varchar(1024) DEFAULT NULL,
  `base_url` varchar(1024) DEFAULT NULL,
  `digest` varchar(16) DEFAULT NULL,
  `is_active` char(1) NOT NULL,
  `is_open` char(1) NOT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `token_url` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`api_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_provider
-- ----------------------------
BEGIN;
INSERT INTO `api_provider` (`api_name`, `created_by`, `created_on`, `updated_by`, `updated_on`, `access_url`, `base_url`, `digest`, `is_active`, `is_open`, `secret`, `token_url`) VALUES ('TEMPLATE-FLUX', 'ADMIN::admin', 1733644827208, 'ADMIN::admin', 1733644827208, '', 'http://localhost:5402', 'SHA-256', 'Y', 'Y', 'password', '');
INSERT INTO `api_provider` (`api_name`, `created_by`, `created_on`, `updated_by`, `updated_on`, `access_url`, `base_url`, `digest`, `is_active`, `is_open`, `secret`, `token_url`) VALUES ('TEMPLATE-MVC', 'ADMIN::admin', 1733153302304, 'ADMIN::admin', 1733310479475, 'http://localhost:5402/api/access', 'http://localhost:5402', 'SHA-256', 'Y', 'Y', 'password', 'http://localhost:5402/api/token');
COMMIT;

-- ----------------------------
-- Table structure for api_provider_config
-- ----------------------------
DROP TABLE IF EXISTS `api_provider_config`;
CREATE TABLE `api_provider_config` (
  `config_name` varchar(128) NOT NULL,
  `api_name` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `config_value` text,
  PRIMARY KEY (`api_name`,`config_name`),
  KEY `idx_api_provider_config__api_provider` (`api_name`),
  CONSTRAINT `fk_api_provider_config__api_provider` FOREIGN KEY (`api_name`) REFERENCES `api_provider` (`api_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_provider_config
-- ----------------------------
BEGIN;
INSERT INTO `api_provider_config` (`config_name`, `api_name`, `created_by`, `created_on`, `updated_by`, `updated_on`, `config_value`) VALUES ('PROCESSOR_JWT_SECRET', 'TEMPLATE-MVC', 'ADMIN::admin', 1733814606771, 'ADMIN::admin', 1733814606771, '77ea06ac-808b-4399-895c-a546b033d533');
COMMIT;

-- ----------------------------
-- Table structure for api_provider_crud
-- ----------------------------
DROP TABLE IF EXISTS `api_provider_crud`;
CREATE TABLE `api_provider_crud` (
  `api_name` varchar(128) NOT NULL,
  `api_crud_code` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  PRIMARY KEY (`api_crud_code`,`api_name`),
  KEY `idx_api_provider_crud__api_provider` (`api_name`),
  KEY `idx_api_provider_crud__api_crud` (`api_crud_code`),
  CONSTRAINT `fk_api_provider_crud__api_crud` FOREIGN KEY (`api_crud_code`) REFERENCES `api_crud` (`api_crud_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_api_provider_crud__api_provider` FOREIGN KEY (`api_name`) REFERENCES `api_provider` (`api_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_provider_crud
-- ----------------------------
BEGIN;
INSERT INTO `api_provider_crud` (`api_name`, `api_crud_code`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('TEMPLATE-MVC', 'Sample-CompositeHardDel', 'ADMIN::admin', 1733385779059, 'ADMIN::admin', 1733385779059);
COMMIT;

-- ----------------------------
-- Table structure for api_provider_crud_action
-- ----------------------------
DROP TABLE IF EXISTS `api_provider_crud_action`;
CREATE TABLE `api_provider_crud_action` (
  `api_name` varchar(128) NOT NULL,
  `api_crud_code` varchar(128) NOT NULL,
  `action` varchar(32) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  PRIMARY KEY (`action`,`api_crud_code`,`api_name`),
  KEY `idx_api_provider_crud_action__api_provider_crud` (`api_name`,`api_crud_code`),
  CONSTRAINT `fk_api_provider_crud_action__api_provider_crud` FOREIGN KEY (`api_name`, `api_crud_code`) REFERENCES `api_provider_crud` (`api_name`, `api_crud_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_provider_crud_action
-- ----------------------------
BEGIN;
INSERT INTO `api_provider_crud_action` (`api_name`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('TEMPLATE-MVC', 'Sample-CompositeHardDel', 'CREATE', 'ADMIN::admin', 1733385786557, 'ADMIN::admin', 1733385786557);
INSERT INTO `api_provider_crud_action` (`api_name`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('TEMPLATE-MVC', 'Sample-CompositeHardDel', 'DELETE', 'ADMIN::admin', 1733385790722, 'ADMIN::admin', 1733385790722);
INSERT INTO `api_provider_crud_action` (`api_name`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('TEMPLATE-MVC', 'Sample-CompositeHardDel', 'DELETES', 'ADMIN::admin', 1733385794952, 'ADMIN::admin', 1733385794952);
INSERT INTO `api_provider_crud_action` (`api_name`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('TEMPLATE-MVC', 'Sample-CompositeHardDel', 'LIST', 'ADMIN::admin', 1733385799490, 'ADMIN::admin', 1733385799490);
INSERT INTO `api_provider_crud_action` (`api_name`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('TEMPLATE-MVC', 'Sample-CompositeHardDel', 'MAP', 'ADMIN::admin', 1733385804042, 'ADMIN::admin', 1733385804042);
INSERT INTO `api_provider_crud_action` (`api_name`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('TEMPLATE-MVC', 'Sample-CompositeHardDel', 'PAGE', 'ADMIN::admin', 1733385809483, 'ADMIN::admin', 1733385809483);
INSERT INTO `api_provider_crud_action` (`api_name`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('TEMPLATE-MVC', 'Sample-CompositeHardDel', 'SAVE', 'ADMIN::admin', 1733385814618, 'ADMIN::admin', 1733385814618);
INSERT INTO `api_provider_crud_action` (`api_name`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('TEMPLATE-MVC', 'Sample-CompositeHardDel', 'SINGLE', 'ADMIN::admin', 1733385820652, 'ADMIN::admin', 1733385820652);
INSERT INTO `api_provider_crud_action` (`api_name`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('TEMPLATE-MVC', 'Sample-CompositeHardDel', 'UNIQUE', 'ADMIN::admin', 1733385828039, 'ADMIN::admin', 1733385828039);
INSERT INTO `api_provider_crud_action` (`api_name`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('TEMPLATE-MVC', 'Sample-CompositeHardDel', 'UPDATE', 'ADMIN::admin', 1733385833711, 'ADMIN::admin', 1733385833711);
COMMIT;

-- ----------------------------
-- Table structure for api_provider_host
-- ----------------------------
DROP TABLE IF EXISTS `api_provider_host`;
CREATE TABLE `api_provider_host` (
  `host` varchar(64) NOT NULL,
  `api_name` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  PRIMARY KEY (`api_name`,`host`),
  KEY `idx_api_provider_host__api_provider` (`api_name`),
  CONSTRAINT `fk_api_provider_host__api_provider` FOREIGN KEY (`api_name`) REFERENCES `api_provider` (`api_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_provider_host
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for api_provider_request
-- ----------------------------
DROP TABLE IF EXISTS `api_provider_request`;
CREATE TABLE `api_provider_request` (
  `parameter_count` int NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `function_name` varchar(128) NOT NULL,
  `class_name` varchar(128) NOT NULL,
  `api_name` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `consumes` varchar(255) DEFAULT NULL,
  `methods` varchar(255) DEFAULT NULL,
  `patterns` varchar(1024) DEFAULT NULL,
  `produces` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`api_name`,`class_name`,`function_name`,`package_name`,`parameter_count`),
  KEY `idx_api_provider_request__api_provider` (`api_name`),
  CONSTRAINT `fk_api_provider_request__api_provider` FOREIGN KEY (`api_name`) REFERENCES `api_provider` (`api_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_provider_request
-- ----------------------------
BEGIN;
INSERT INTO `api_provider_request` (`parameter_count`, `package_name`, `function_name`, `class_name`, `api_name`, `created_by`, `created_on`, `updated_by`, `updated_on`, `consumes`, `methods`, `patterns`, `produces`) VALUES (2, 'net.ideahut.springboot.template.controller', 'receive', 'DevController', 'TEMPLATE-MVC', 'ADMIN::admin', 1733376732809, 'ADMIN::admin', 1733376732809, '', 'POST', '/dev/multipart', '');
COMMIT;

-- ----------------------------
-- Table structure for api_provider_role
-- ----------------------------
DROP TABLE IF EXISTS `api_provider_role`;
CREATE TABLE `api_provider_role` (
  `role_code` varchar(64) NOT NULL,
  `api_name` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `api_role_code` varchar(64) NOT NULL,
  `is_active` char(1) NOT NULL,
  PRIMARY KEY (`api_name`,`role_code`),
  KEY `idx_api_provider_role__api_provider` (`api_name`),
  CONSTRAINT `fk_api_provider_role__api_provider` FOREIGN KEY (`api_name`) REFERENCES `api_provider` (`api_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_provider_role
-- ----------------------------
BEGIN;
INSERT INTO `api_provider_role` (`role_code`, `api_name`, `created_by`, `created_on`, `updated_by`, `updated_on`, `api_role_code`, `is_active`) VALUES ('APP-ADMIN', 'TEMPLATE-FLUX', 'ADMIN::admin', 1733644854170, 'ADMIN::admin', 1733644854170, 'ADMIN-FLUX', 'Y');
INSERT INTO `api_provider_role` (`role_code`, `api_name`, `created_by`, `created_on`, `updated_by`, `updated_on`, `api_role_code`, `is_active`) VALUES ('APP-USER', 'TEMPLATE-FLUX', 'ADMIN::admin', 1733644868881, 'ADMIN::admin', 1733644868881, 'USER-FLUX', 'Y');
INSERT INTO `api_provider_role` (`role_code`, `api_name`, `created_by`, `created_on`, `updated_by`, `updated_on`, `api_role_code`, `is_active`) VALUES ('APP-ADMIN', 'TEMPLATE-MVC', 'ADMIN::admin', 1733644894381, 'ADMIN::admin', 1733644894381, 'ADMIN-MVC', 'Y');
INSERT INTO `api_provider_role` (`role_code`, `api_name`, `created_by`, `created_on`, `updated_by`, `updated_on`, `api_role_code`, `is_active`) VALUES ('APP-USER', 'TEMPLATE-MVC', 'ADMIN::admin', 1733644905978, 'ADMIN::admin', 1733644905978, 'USER-MVC', 'Y');
COMMIT;

-- ----------------------------
-- Table structure for api_role
-- ----------------------------
DROP TABLE IF EXISTS `api_role`;
CREATE TABLE `api_role` (
  `api_role_code` varchar(64) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` char(1) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`api_role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_role
-- ----------------------------
BEGIN;
INSERT INTO `api_role` (`api_role_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `description`, `is_active`, `name`) VALUES ('ADMIN-FLUX', 'ADMIN::admin', 1733644671517, 'ADMIN::admin', 1733644671517, NULL, 'Y', 'Admin');
INSERT INTO `api_role` (`api_role_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `description`, `is_active`, `name`) VALUES ('USER-FLUX', 'ADMIN::admin', 1733644681460, 'ADMIN::admin', 1733644681460, NULL, 'Y', 'Admin');
COMMIT;

-- ----------------------------
-- Table structure for api_role_crud
-- ----------------------------
DROP TABLE IF EXISTS `api_role_crud`;
CREATE TABLE `api_role_crud` (
  `api_role_code` varchar(64) NOT NULL,
  `api_crud_code` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  PRIMARY KEY (`api_crud_code`,`api_role_code`),
  KEY `idx_api_role_crud__api_role` (`api_role_code`),
  KEY `idx_api_role_crud__api_crud` (`api_crud_code`),
  CONSTRAINT `fk_api_role_crud__api_crud` FOREIGN KEY (`api_crud_code`) REFERENCES `api_crud` (`api_crud_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_api_role_crud__api_role` FOREIGN KEY (`api_role_code`) REFERENCES `api_role` (`api_role_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_role_crud
-- ----------------------------
BEGIN;
INSERT INTO `api_role_crud` (`api_role_code`, `api_crud_code`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('ADMIN-FLUX', 'Sample-CompositeHardDel', 'ADMIN::admin', 1733665029273, 'ADMIN::admin', 1733665029273);
COMMIT;

-- ----------------------------
-- Table structure for api_role_crud_action
-- ----------------------------
DROP TABLE IF EXISTS `api_role_crud_action`;
CREATE TABLE `api_role_crud_action` (
  `api_role_code` varchar(64) NOT NULL,
  `api_crud_code` varchar(128) NOT NULL,
  `action` varchar(32) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  PRIMARY KEY (`action`,`api_crud_code`,`api_role_code`),
  KEY `idx_api_role_crud_action__api_crud_role` (`api_role_code`,`api_crud_code`),
  CONSTRAINT `fk_api_role_crud_action__api_crud_role` FOREIGN KEY (`api_role_code`, `api_crud_code`) REFERENCES `api_role_crud` (`api_role_code`, `api_crud_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_role_crud_action
-- ----------------------------
BEGIN;
INSERT INTO `api_role_crud_action` (`api_role_code`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('ADMIN-FLUX', 'Sample-CompositeHardDel', 'CREATE', 'ADMIN::admin', 1733665267575, 'ADMIN::admin', 1733665267575);
INSERT INTO `api_role_crud_action` (`api_role_code`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('ADMIN-FLUX', 'Sample-CompositeHardDel', 'DELETE', 'ADMIN::admin', 1733665272713, 'ADMIN::admin', 1733665272713);
INSERT INTO `api_role_crud_action` (`api_role_code`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('ADMIN-FLUX', 'Sample-CompositeHardDel', 'DELETES', 'ADMIN::admin', 1733665277656, 'ADMIN::admin', 1733665277656);
INSERT INTO `api_role_crud_action` (`api_role_code`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('ADMIN-FLUX', 'Sample-CompositeHardDel', 'LIST', 'ADMIN::admin', 1733665282749, 'ADMIN::admin', 1733665282749);
INSERT INTO `api_role_crud_action` (`api_role_code`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('ADMIN-FLUX', 'Sample-CompositeHardDel', 'MAP', 'ADMIN::admin', 1733665287112, 'ADMIN::admin', 1733665287112);
INSERT INTO `api_role_crud_action` (`api_role_code`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('ADMIN-FLUX', 'Sample-CompositeHardDel', 'PAGE', 'ADMIN::admin', 1733665164068, 'ADMIN::admin', 1733665164068);
INSERT INTO `api_role_crud_action` (`api_role_code`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('ADMIN-FLUX', 'Sample-CompositeHardDel', 'SAVE', 'ADMIN::admin', 1733665293580, 'ADMIN::admin', 1733665293580);
INSERT INTO `api_role_crud_action` (`api_role_code`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('ADMIN-FLUX', 'Sample-CompositeHardDel', 'SINGLE', 'ADMIN::admin', 1733665300191, 'ADMIN::admin', 1733665300191);
INSERT INTO `api_role_crud_action` (`api_role_code`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('ADMIN-FLUX', 'Sample-CompositeHardDel', 'UNIQUE', 'ADMIN::admin', 1733665306354, 'ADMIN::admin', 1733665306354);
INSERT INTO `api_role_crud_action` (`api_role_code`, `api_crud_code`, `action`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES ('ADMIN-FLUX', 'Sample-CompositeHardDel', 'UPDATE', 'ADMIN::admin', 1733665311931, 'ADMIN::admin', 1733665311931);
COMMIT;

-- ----------------------------
-- Table structure for api_role_crud_filter
-- ----------------------------
DROP TABLE IF EXISTS `api_role_crud_filter`;
CREATE TABLE `api_role_crud_filter` (
  `filter_id` varchar(64) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `api_crud_code` varchar(128) NOT NULL,
  `api_role_code` varchar(64) NOT NULL,
  `field_name` varchar(128) NOT NULL,
  `filter_value` varchar(1024) NOT NULL,
  `is_plain_value` char(1) NOT NULL,
  PRIMARY KEY (`filter_id`),
  KEY `idx_api_role_crud_filter__api_crud_role` (`api_role_code`,`api_crud_code`),
  CONSTRAINT `fk_api_role_crud_filter__api_crud_role` FOREIGN KEY (`api_role_code`, `api_crud_code`) REFERENCES `api_role_crud` (`api_role_code`, `api_crud_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_role_crud_filter
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for api_role_request
-- ----------------------------
DROP TABLE IF EXISTS `api_role_request`;
CREATE TABLE `api_role_request` (
  `parameter_count` int NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `function_name` varchar(128) NOT NULL,
  `class_name` varchar(128) NOT NULL,
  `api_role_code` varchar(64) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `consumes` varchar(255) DEFAULT NULL,
  `methods` varchar(255) DEFAULT NULL,
  `patterns` varchar(1024) DEFAULT NULL,
  `produces` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`api_role_code`,`class_name`,`function_name`,`package_name`,`parameter_count`),
  KEY `idx_api_role_request__api_role` (`api_role_code`),
  CONSTRAINT `fk_api_role_request__api_role` FOREIGN KEY (`api_role_code`) REFERENCES `api_role` (`api_role_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of api_role_request
-- ----------------------------
BEGIN;
INSERT INTO `api_role_request` (`parameter_count`, `package_name`, `function_name`, `class_name`, `api_role_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `consumes`, `methods`, `patterns`, `produces`) VALUES (1, 'net.ideahut.springboot.template.controller', 'info', 'AuthController', 'ADMIN-FLUX', 'ADMIN::admin', 1733645335996, 'ADMIN::admin', 1733645335996, '', 'GET,POST', '/auth/info', '');
INSERT INTO `api_role_request` (`parameter_count`, `package_name`, `function_name`, `class_name`, `api_role_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `consumes`, `methods`, `patterns`, `produces`) VALUES (1, 'net.ideahut.springboot.template.controller', 'logout', 'AuthController', 'ADMIN-FLUX', 'ADMIN::admin', 1733663628513, 'ADMIN::admin', 1733663628513, '', 'GET,POST', '/auth/logout', '');
INSERT INTO `api_role_request` (`parameter_count`, `package_name`, `function_name`, `class_name`, `api_role_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `consumes`, `methods`, `patterns`, `produces`) VALUES (2, 'net.ideahut.springboot.template.controller', 'receive', 'DevController', 'ADMIN-FLUX', 'ADMIN::admin', 1733664962306, 'ADMIN::admin', 1733664962306, '', 'POST', '/dev/multipart', '');
COMMIT;

-- ----------------------------
-- Table structure for job_group
-- ----------------------------
DROP TABLE IF EXISTS `job_group`;
CREATE TABLE `job_group` (
  `group_id` varchar(64) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` char(1) NOT NULL,
  `name` varchar(128) NOT NULL,
  `zone_offset_seconds` int NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of job_group
-- ----------------------------
BEGIN;
INSERT INTO `job_group` (`group_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `description`, `is_active`, `name`, `zone_offset_seconds`) VALUES ('98aee2ca-6e64-4a13-b99e-2a35eaef27db', '__SYSTEM__', 1732981433541, '__SYSTEM__', 1732981433541, NULL, 'Y', 'TEST', 25200);
COMMIT;

-- ----------------------------
-- Table structure for job_instance
-- ----------------------------
DROP TABLE IF EXISTS `job_instance`;
CREATE TABLE `job_instance` (
  `instance_id` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `auth_header` varchar(255) DEFAULT NULL,
  `base_url` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of job_instance
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for job_trigger
-- ----------------------------
DROP TABLE IF EXISTS `job_trigger`;
CREATE TABLE `job_trigger` (
  `trigger_id` varchar(64) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `cron_expression` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group_id` varchar(64) NOT NULL,
  `instance_id` varchar(128) DEFAULT NULL,
  `is_active` char(1) NOT NULL,
  `is_run_on_startup` char(1) NOT NULL,
  `is_save_result` char(1) NOT NULL,
  `last_run_data` text,
  `last_run_time` bigint DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `type_id` varchar(64) NOT NULL,
  `zone_offset_seconds` int DEFAULT NULL,
  PRIMARY KEY (`trigger_id`),
  KEY `idx_job_trigger__group` (`group_id`),
  KEY `idx_job_trigger__type` (`type_id`),
  KEY `idx_job_trigger__instance` (`instance_id`),
  CONSTRAINT `fk_job_trigger__group` FOREIGN KEY (`group_id`) REFERENCES `job_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_job_trigger__instance` FOREIGN KEY (`instance_id`) REFERENCES `job_instance` (`instance_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_job_trigger__type` FOREIGN KEY (`type_id`) REFERENCES `job_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of job_trigger
-- ----------------------------
BEGIN;
INSERT INTO `job_trigger` (`trigger_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `cron_expression`, `description`, `group_id`, `instance_id`, `is_active`, `is_run_on_startup`, `is_save_result`, `last_run_data`, `last_run_time`, `name`, `type_id`, `zone_offset_seconds`) VALUES ('1e098b1f-522a-431b-b2fc-0586904f351a', '__SYSTEM__', 1732981518491, 'ADMIN::admin', 1733060868996, '0/8 * * ? * * *', NULL, '98aee2ca-6e64-4a13-b99e-2a35eaef27db', NULL, 'Y', 'Y', 'N', NULL, NULL, 'PageScrapper', '0490ce42-ff12-42d7-bc31-fda8d89cb1a1', NULL);
INSERT INTO `job_trigger` (`trigger_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `cron_expression`, `description`, `group_id`, `instance_id`, `is_active`, `is_run_on_startup`, `is_save_result`, `last_run_data`, `last_run_time`, `name`, `type_id`, `zone_offset_seconds`) VALUES ('2c643d0a-135c-4881-936d-ce885ee9ed3d', '__SYSTEM__', 1732981559354, '__SYSTEM__', 1732981559354, '0/3 * * ? * * *', NULL, '98aee2ca-6e64-4a13-b99e-2a35eaef27db', NULL, 'Y', 'Y', 'N', NULL, NULL, 'PrintSystemNano', '2feeb6f6-7c0c-4e7d-8a3c-71c9564030f8', NULL);
COMMIT;

-- ----------------------------
-- Table structure for job_trigger_config
-- ----------------------------
DROP TABLE IF EXISTS `job_trigger_config`;
CREATE TABLE `job_trigger_config` (
  `type_id` varchar(64) NOT NULL,
  `trigger_id` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `value_` text,
  PRIMARY KEY (`name`,`trigger_id`,`type_id`),
  KEY `idx_job_trigger_config__trigger` (`trigger_id`),
  KEY `idx_job_trigger_config__type_param` (`type_id`,`name`),
  CONSTRAINT `fk_job_trigger_config__trigger` FOREIGN KEY (`trigger_id`) REFERENCES `job_trigger` (`trigger_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_job_trigger_config__type_param` FOREIGN KEY (`type_id`, `name`) REFERENCES `job_type_param` (`type_id`, `name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of job_trigger_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for job_type
-- ----------------------------
DROP TABLE IF EXISTS `job_type`;
CREATE TABLE `job_type` (
  `type_id` varchar(64) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `classname` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_running` char(1) DEFAULT NULL,
  `is_save_result` char(1) NOT NULL,
  `is_single_run` char(1) DEFAULT NULL,
  `last_run_data` text,
  `last_run_time` bigint DEFAULT NULL,
  `last_run_trigger_id` varchar(255) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `uq_job_type__classname` (`classname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of job_type
-- ----------------------------
BEGIN;
INSERT INTO `job_type` (`type_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `classname`, `description`, `is_running`, `is_save_result`, `is_single_run`, `last_run_data`, `last_run_time`, `last_run_trigger_id`, `name`) VALUES ('0490ce42-ff12-42d7-bc31-fda8d89cb1a1', '__SYSTEM__', 1732981259762, '__SYSTEM__', 1732981390173, 'net.ideahut.springboot.template.job.PageScrapperJob', NULL, 'N', 'N', 'N', NULL, NULL, NULL, 'PageScrapper');
INSERT INTO `job_type` (`type_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `classname`, `description`, `is_running`, `is_save_result`, `is_single_run`, `last_run_data`, `last_run_time`, `last_run_trigger_id`, `name`) VALUES ('2feeb6f6-7c0c-4e7d-8a3c-71c9564030f8', '__SYSTEM__', 1732981343939, '__SYSTEM__', 1732981343939, 'net.ideahut.springboot.template.job.PrintSystemNanoJob', NULL, 'N', 'N', 'Y', NULL, NULL, NULL, 'PrintSystemNano');
COMMIT;

-- ----------------------------
-- Table structure for job_type_param
-- ----------------------------
DROP TABLE IF EXISTS `job_type_param`;
CREATE TABLE `job_type_param` (
  `type_id` varchar(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`,`type_id`),
  KEY `fk_job_type_param__type` (`type_id`),
  CONSTRAINT `fk_job_type_param__type` FOREIGN KEY (`type_id`) REFERENCES `job_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of job_type_param
-- ----------------------------
BEGIN;
INSERT INTO `job_type_param` (`type_id`, `name`, `created_by`, `created_on`, `updated_by`, `updated_on`, `description`) VALUES ('2feeb6f6-7c0c-4e7d-8a3c-71c9564030f8', 'PREFIX', '__SYSTEM__', 1732981376286, '__SYSTEM__', 1732981376286, NULL);
INSERT INTO `job_type_param` (`type_id`, `name`, `created_by`, `created_on`, `updated_by`, `updated_on`, `description`) VALUES ('0490ce42-ff12-42d7-bc31-fda8d89cb1a1', 'URL', '__SYSTEM__', 1732981295417, '__SYSTEM__', 1732981295417, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_language
-- ----------------------------
DROP TABLE IF EXISTS `sys_language`;
CREATE TABLE `sys_language` (
  `language_code` varchar(8) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `deleted_on` bigint DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `icon` varchar(1024) DEFAULT NULL,
  `is_active` char(1) NOT NULL,
  `name` varchar(128) NOT NULL,
  `seqno` int DEFAULT NULL,
  PRIMARY KEY (`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_language
-- ----------------------------
BEGIN;
INSERT INTO `sys_language` (`language_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `deleted_on`, `description`, `icon`, `is_active`, `name`, `seqno`) VALUES ('en', NULL, 1637169494251, '__SYSTEM__', 1719635646543, NULL, NULL, NULL, 'Y', 'English', 2);
INSERT INTO `sys_language` (`language_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `deleted_on`, `description`, `icon`, `is_active`, `name`, `seqno`) VALUES ('id', NULL, 1637169494251, NULL, 1637169494251, NULL, NULL, NULL, 'Y', 'Bahasa', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message` (
  `language_code` varchar(8) NOT NULL,
  `message_code` varchar(255) NOT NULL,
  `message_type` char(1) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `content` text,
  PRIMARY KEY (`language_code`,`message_code`,`message_type`),
  KEY `idx_message__language` (`language_code`),
  CONSTRAINT `fk_message__language` FOREIGN KEY (`language_code`) REFERENCES `sys_language` (`language_code`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_message
-- ----------------------------
BEGIN;
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '01', 'E', NULL, 1, NULL, 2, '{0} is required');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '02', 'E', NULL, 3, NULL, 4, '{0} is not found');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '03', 'E', NULL, 5, NULL, 6, '{0} has been exist');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '04', 'E', NULL, 7, NULL, 8, '{0} has been expired');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '05', 'E', NULL, 9, NULL, 10, '{0} is out of range');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '06', 'E', NULL, 11, NULL, 12, '{0} is invalid');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '07', 'E', NULL, 13, NULL, 14, '{0} is not active');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '08', 'E', NULL, 15, NULL, 16, '{0} is greater than {1}');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '09', 'E', NULL, 17, NULL, 18, '{0} is less than {1}');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '10', 'E', NULL, 19, NULL, 20, '{0} is unknown');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '11', 'E', NULL, 21, NULL, 22, '{0} is not complete');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '12', 'E', NULL, 23, NULL, 24, '{0} is not allowed');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '13', 'E', NULL, 25, NULL, 26, 'Invalid signature');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '14', 'E', NULL, 27, 'admin::USR0000-00000-0000-00000-0-0000', 1687414338316, 'Not logged in or session has expired');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '15', 'E', NULL, 29, NULL, 30, '{0} has been registered');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '16', 'E', NULL, 31, NULL, 32, 'Insufficient balance');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '17', 'E', NULL, 33, NULL, 34, '{0} must {1} digits');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '18', 'E', NULL, 35, NULL, 36, '{0} must a number');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '19', 'E', NULL, 37, NULL, 38, '{0} has reached the limit ');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '20', 'E', NULL, 39, NULL, 40, '{0} is not available');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '21', 'E', NULL, 41, NULL, 42, 'The task type \'{0}\' for social media \'{1}\' has exceeded the maximum allowable limit, please try again later.');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '22', 'E', NULL, 43, NULL, 44, 'The execution of the task type \'{0}\' for social media \'{1}\' is too fast than the previous one, please try again in a moment.');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '23', 'E', NULL, 45, NULL, 46, 'It has been rated');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '24', 'E', NULL, 47, NULL, 48, 'Invalid account');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '25', 'E', NULL, 49, NULL, 50, 'Invalid type');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '70', 'E', NULL, 53, NULL, 54, 'Not allowed to login from virtual device ');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '71', 'E', NULL, 55, NULL, 56, 'The device has passed the number of users allowed to login');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '72', 'E', NULL, 57, NULL, 58, 'User has been loggedin on other device');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '73', 'E', NULL, 59, NULL, 60, 'No android device connected with the account');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '80', 'E', NULL, 61, NULL, 62, 'Access Key must sent');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '81', 'E', NULL, 63, NULL, 64, 'Access Key is not valid');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '82', 'E', NULL, 65, NULL, 66, 'Access Key has been expired');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '90', 'E', NULL, 67, NULL, 68, 'Unsupported operation');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '91', 'E', NULL, 69, NULL, 70, 'Unknown Error');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '92', 'E', 'admin::USR0000-00000-0000-00000-0-0000', 1685774067924, 'admin::USR0000-00000-0000-00000-0-0000', 1685774067924, 'Something went wrong, please try again later.');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', '99', 'E', NULL, 71, NULL, 72, 'System Error');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'access', 'L', NULL, 75, NULL, 76, 'Access');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'access_key', 'L', NULL, 79, NULL, 80, 'Access Key');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'account', 'L', NULL, 81, NULL, 82, 'Account');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'action', 'L', NULL, 87, NULL, 88, 'Action');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'active', 'L', NULL, 89, NULL, 90, 'Active');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'actived_on', 'L', NULL, 93, NULL, 94, 'Actived On');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'address', 'L', NULL, 95, NULL, 96, 'Address');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'admin', 'L', NULL, 97, NULL, 98, 'Admin');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'authentication', 'L', NULL, 121, NULL, 122, 'Authentication');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'birth_date', 'L', NULL, 141, NULL, 142, 'Birth Date');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'birth_place', 'L', NULL, 143, NULL, 144, 'Birth Place');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'boolean', 'G', NULL, 155, '__SYSTEM__', 1719668612140, '[{\"value\": \"Y\", \"label\": \"Yes\"}, {\"value\": \"N\", \"label\": \"No\"}]');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'change_username_code', 'M', NULL, 183, NULL, 184, 'Change Email Code');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'channel', 'L', NULL, 185, NULL, 186, 'Channel');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'city', 'L', NULL, 193, NULL, 194, 'City');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'class', 'L', NULL, 195, NULL, 196, 'Class');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'code', 'L', NULL, 203, NULL, 204, 'Code');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'configuration', 'L', NULL, 219, NULL, 220, 'Configuration');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'content', 'L', NULL, 221, NULL, 222, 'Content');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'country', 'L', NULL, 225, NULL, 226, 'Country');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'created', 'L', NULL, 231, NULL, 232, 'Created');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'currency', 'L', NULL, 257, NULL, 258, 'Currency');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'data', 'L', NULL, 263, NULL, 264, 'Data');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'date', 'L', NULL, 267, NULL, 268, 'Date');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'days', 'G', NULL, 269, NULL, 270, '[\"Sunday\", \"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\", \"Sun\", \"Mon\", \"Tue\", \"Wed\", \"Thu\", \"Fri\", \"Sat\"]');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'description', 'L', NULL, 271, NULL, 272, 'Description');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'detail', 'L', NULL, 281, NULL, 282, 'Detail');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'draft', 'L', NULL, 295, NULL, 296, 'Draft');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'email', 'L', NULL, 301, NULL, 302, 'Email');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'end_date', 'L', NULL, 303, NULL, 304, 'Tanggal Akhir');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'entity', 'L', NULL, 305, NULL, 306, 'Entity');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'expired', 'L', NULL, 309, NULL, 310, 'Expired');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'external', 'L', NULL, 311, NULL, 312, 'External');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'failure', 'L', 'admin::USR0000-00000-0000-00000-0-0000', 1685771126236, 'admin::USR0000-00000-0000-00000-0-0000', 1685771126236, 'Failure');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'faq', 'L', NULL, 313, NULL, 314, 'FAQ');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'finance', 'L', NULL, 325, NULL, 326, 'Finance');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'finish', 'L', NULL, 327, NULL, 328, 'Finish');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'forgot_pass_code', 'M', NULL, 329, NULL, 330, 'Forgot Password Code');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'full_name', 'L', NULL, 331, NULL, 332, 'Full Name');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'gender', 'G', NULL, 333, '__SYSTEM__', 1720082240822, '[{\"value\": \"M\", \"label\": \"Male\"}, {\"value\": \"F\", \"label\": \"Female\"}]');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'gender', 'L', NULL, 335, NULL, 336, 'Gender');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'group', 'L', NULL, 339, NULL, 340, 'Group');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'help', 'L', NULL, 343, NULL, 344, 'Help');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'icon', 'L', NULL, 345, NULL, 346, 'Icon');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'id', 'L', NULL, 347, NULL, 348, 'ID');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'image', 'L', NULL, 349, NULL, 350, 'Image');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'index', 'L', NULL, 355, NULL, 356, 'Index');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'information', 'L', NULL, 361, NULL, 362, 'Information');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'input', 'L', NULL, 367, NULL, 368, 'Input');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'instance', 'L', NULL, 369, NULL, 370, 'Instance');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'key', 'L', NULL, 381, NULL, 382, 'Key');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'language', 'L', NULL, 385, NULL, 386, 'Language');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'latitude', 'L', NULL, 393, NULL, 394, 'Latitude');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'level', 'L', NULL, 395, NULL, 396, 'Level');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'levels', 'L', NULL, 397, NULL, 398, 'Levels');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'link', 'L', NULL, 429, NULL, 430, 'Link');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'location', 'L', 'admin::USR0000-00000-0000-00000-0-0000', 1685770800649, 'admin::USR0000-00000-0000-00000-0-0000', 1685770800649, 'Location');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'login', 'L', NULL, 435, NULL, 436, 'Login');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'logo', 'L', NULL, 437, NULL, 438, 'Logo');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'longitude', 'L', NULL, 439, NULL, 440, 'Longitude');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'major', 'L', NULL, 441, NULL, 442, 'Major');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'max', 'L', NULL, 445, NULL, 446, 'Max');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'menu', 'L', NULL, 455, NULL, 456, 'Menu');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'menu_type', 'G', 'admin::USR0000-00000-0000-00000-0-0000', 1688201732083, '__SYSTEM__', 1720081824015, '[{\"value\": \"portal\", \"label\": \"Portal\"}, {\"value\": \"mobile\", \"label\": \"Mobile\"}]');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'message', 'L', NULL, 461, NULL, 462, 'Message');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'message_type', 'G', 'admin::USR0000-00000-0000-00000-0-0000', 1688201491144, '__SYSTEM__', 1720082767723, '[\n    {\n        \"value\": \"E\",\n        \"label\": \"Error\"\n    },\n    {\n        \"value\": \"G\",\n        \"label\": \"Grid\"\n    },\n    {\n        \"value\": \"L\",\n        \"label\": \"Label\"\n    },\n    {\n        \"value\": \"M\",\n        \"label\": \"Message\"\n    },\n    {\n        \"value\": \"N\",\n        \"label\": \"Notification\"\n    },\n    {\n        \"value\": \"Q\",\n        \"label\": \"Question\"\n    },\n    {\n        \"value\": \"R\",\n        \"label\": \"Menu\"\n    },\n    {\n        \"value\": \"W\",\n        \"label\": \"Web\"\n    }\n]\n\n');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'min', 'L', NULL, 463, NULL, 464, 'Min');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'mobile', 'L', NULL, 471, NULL, 472, 'Mobile');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'months', 'G', NULL, 473, NULL, 474, '[\"January\", \"February\", \"March\", \"April\", \"May\", \"June\", \"July\", \"August\", \"September\", \"October\", \"November\", \"December\", \"Jan\", \"Feb\", \"Mar\", \"Apr\", \"May\", \"Jun\", \"Jul\", \"Aug\", \"Sep\", \"Oct\", \"Nov\", \"Dec\"]');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'multimedia', 'L', NULL, 477, NULL, 478, 'Multimedia');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'name', 'L', NULL, 481, NULL, 482, 'Name');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'new_password', 'L', NULL, 483, NULL, 484, 'New Password');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'old_password', 'L', NULL, 503, NULL, 504, 'Old Password');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'operation', 'L', NULL, 507, NULL, 508, 'Operation');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'parameter', 'L', NULL, 521, NULL, 522, 'Parameter');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'password', 'L', NULL, 527, NULL, 528, 'Password');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'phone', 'L', NULL, 543, NULL, 544, 'Phone');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'photo', 'L', NULL, 545, NULL, 546, 'Photo');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'profile', 'L', NULL, 557, NULL, 558, 'Profile');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'promotion', 'L', NULL, 559, NULL, 560, 'Promotion');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'province', 'L', NULL, 563, NULL, 564, 'Province');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'public', 'L', NULL, 565, NULL, 566, 'Public');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'rating', 'L', NULL, 571, NULL, 572, 'Rating');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'reference', 'L', NULL, 573, NULL, 574, 'Reference');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'register', 'L', NULL, 575, NULL, 576, 'Register');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'registration_code', 'M', NULL, 579, NULL, 580, 'Registration Code');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'role', 'L', NULL, 593, NULL, 594, 'Role');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'save', 'L', NULL, 599, NULL, 600, 'Save');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'send_message_code', 'M', NULL, 611, NULL, 612, 'Send Message Code');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'sequence', 'L', NULL, 613, NULL, 614, 'Sequence');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'status', 'L', NULL, 665, NULL, 666, 'Status');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'symbol', 'L', NULL, 667, NULL, 668, 'Symbol');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'system', 'L', NULL, 669, NULL, 670, 'System');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'target', 'L', NULL, 675, NULL, 676, 'Target');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'task', 'L', NULL, 677, NULL, 678, 'Task');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'text', 'L', NULL, 695, NULL, 696, 'Text');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'ticket', 'L', NULL, 697, NULL, 698, 'Ticket');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'title', 'L', NULL, 707, NULL, 708, 'Title');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'transaction', 'L', NULL, 725, NULL, 726, 'Transaction');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'type', 'L', NULL, 729, NULL, 730, 'Type');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'types', 'L', NULL, 733, NULL, 734, 'Types');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'updated', 'L', NULL, 735, NULL, 736, 'Updated');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'url', 'L', NULL, 737, NULL, 738, 'URL');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'user', 'L', NULL, 739, NULL, 740, 'User');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'value', 'L', NULL, 753, NULL, 754, 'Value');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'visible', 'L', NULL, 757, NULL, 758, 'Visible');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'zip_code', 'L', NULL, 765, NULL, 766, 'Zip Code');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('en', 'zone_offset', 'L', NULL, 767, NULL, 768, 'Zone Offset');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '01', 'E', '', 1725109863970, '', 1725109863970, '{0} harus diisi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '02', 'E', '', 1725109863970, '', 1725109863970, '{0} tidak ditemukan');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '03', 'E', '', 1725109863976, '', 1725109863976, '{0} telah tersedia');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '04', 'E', '', 1725109863970, '', 1725109863970, '{0} sudah kadaluarsa');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '05', 'E', '', 1725109863970, '', 1725109863970, '{0} diluar jangkauan');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '06', 'E', '', 1725109863971, '', 1725109863971, '{0} tidak valid');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '07', 'E', '', 1725109864301, '', 1725109864301, '{0} tidak aktif');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '08', 'E', '', 1725109864570, '', 1725109864570, '{0} lebih besar dari {1}');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '09', 'E', '', 1725109864578, '', 1725109864578, '{0} lebih kecil dari {1}');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '10', 'E', '', 1725109864585, '', 1725109864585, '{0} tidak dikenali');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '11', 'E', '', 1725109864443, '', 1725109864443, '{0} tidak lengkap');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '12', 'E', '', 1725109864578, '', 1725109864578, '{0} tidak diijinkan');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '13', 'E', '', 1725109864551, '', 1725109864551, 'Signatura salah');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '14', 'E', '', 1725109864695, '', 1725109864695, 'Belum login atau sesi telah berakhir');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '15', 'E', '', 1725109864813, '', 1725109864813, '{0} sudah pernah didaftar');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '16', 'E', '', 1725109864851, '', 1725109864851, 'Saldo tidak cukup');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '17', 'E', '', 1725109864869, '', 1725109864869, '{0} harus memiliki {1} digit');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '18', 'E', '', 1725109864869, '', 1725109864869, '{0} harus angka');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '19', 'E', '', 1725109864869, '', 1725109864869, '{0} sudah mencapai batas');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '20', 'E', '', 1725109865103, '', 1725109865103, '{0} tidak tersedia');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '21', 'E', '', 1725109865088, '', 1725109865088, 'Tipe tugas \'{0}\' untuk media sosial \'{1}\' sudah melewati batas maksimum yang diijinkan, silahkan coba lagi nanti.');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '22', 'E', '', 1725109865096, '', 1725109865096, 'Pengerjaan tipe tugas \'{0}\' untuk media sosial \'{1}\' terlalu cepat dari yang sebelumnya, silahkan coba beberapa saat lagi.');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '23', 'E', '', 1725109865091, '', 1725109865091, 'Sudah pernah dinilai');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '24', 'E', '', 1725109865131, '', 1725109865131, 'Akun tidak valid');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '25', 'E', '', 1725109865100, '', 1725109865100, 'Tipe tidak valid');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '70', 'E', '', 1725109865366, '', 1725109865366, 'Tidak diijinkan untuk masuk dari perangkat virtual');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '71', 'E', '', 1725109865378, '', 1725109865378, 'Perangkat sudah melewati jumlah pengguna yang dizinkan untuk masuk');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '72', 'E', '', 1725109865519, '', 1725109865519, 'Pengguna sudah masuk menggunakan perangkat lain');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '73', 'E', '', 1725109865413, '', 1725109865413, 'Tidak ada perangkat android yang terhubung dengan akun');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '80', 'E', '', 1725109865379, '', 1725109865379, 'Kunci akses harus dikirim');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '81', 'E', '', 1725109865519, '', 1725109865519, 'Kunci akses tidak valid');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '82', 'E', '', 1725109865604, '', 1725109865604, 'Kunci akses sudah kadaluarsa');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '90', 'E', '', 1725109865664, '', 1725109865664, 'Operasi tidak didukung');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '91', 'E', '', 1725109865658, '', 1725109865658, 'Error tidak dikenal');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '92', 'E', '', 1725109865658, '', 1725109865658, 'Ada yang tidak beres, coba lagi nanti.');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', '99', 'E', '', 1725109865851, '', 1725109865851, 'Kesalahan sistem');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'access', 'L', '', 1725109865763, '', 1725109865763, 'Akses');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'access_key', 'L', '', 1725109865928, '', 1725109865928, 'Kunci Akses');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'account', 'L', '', 1725109865869, '', 1725109865869, 'Akun');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'action', 'L', '', 1725109865949, '', 1725109865949, 'Aksi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'active', 'L', '', 1725109865949, '', 1725109865949, 'Aktif');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'actived_on', 'L', '', 1725109865941, '', 1725109865941, 'Diaktifkan Pada');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'address', 'L', '', 1725109866095, '', 1725109866095, 'Alamat');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'admin', 'L', '', 1725109866101, '', 1725109866101, 'Admin');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'authentication', 'L', '', 1725109866194, '', 1725109866194, 'Autentikasi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'birth_date', 'L', '', 1725109866154, '', 1725109866154, 'Tanggal Lahir');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'birth_place', 'L', '', 1725109866182, '', 1725109866182, 'Tempat Lahir');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'boolean', 'G', '', 1725109866285, '', 1725109866285, '[{\"value\": \"Y\", \"label\": \"Ya\"}, {\"value\": \"N\", \"label\": \"Tidak\"}]');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'change_username_code', 'M', '', 1725109866284, '', 1725109866284, 'Kode Ganti Email');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'channel', 'L', '', 1725109866279, '', 1725109866279, 'Kanal');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'city', 'L', '', 1725109866336, '', 1725109866336, 'Kota');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'class', 'L', '', 1725109866342, '', 1725109866342, 'Kelas');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'code', 'L', '', 1725109866368, '', 1725109866368, 'Kode');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'configuration', 'L', '', 1725109866575, '', 1725109866575, 'Konfigurasi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'content', 'L', '', 1725109866596, '', 1725109866596, 'Konten');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'country', 'L', '', 1725109866575, '', 1725109866575, 'Negara');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'created', 'L', '', 1725109866575, '', 1725109866575, 'Dibuat');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'currency', 'L', '', 1725109866593, '', 1725109866593, 'Mata Uang');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'data', 'L', '', 1725109866674, '', 1725109866674, 'Data');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'date', 'L', '', 1725109866845, '', 1725109866845, 'Tanggal');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'days', 'G', '', 1725109868294, '', 1725109868294, '[\"Minggu\", \"Senin\", \"Selasa\", \"Rabu\", \"Kamis\", \"Jumat\", \"Sabtu\", \"Min\", \"Sen\", \"Sel\", \"Rab\", \"Kam\", \"Jum\", \"Sab\"]');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'description', 'L', '', 1725109866816, '', 1725109866816, 'Deskripsi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'detail', 'L', '', 1725109866816, '', 1725109866816, 'Detail');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'draft', 'L', '', 1725109866816, '', 1725109866816, 'Draft');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'email', 'L', '', 1725109866843, '', 1725109866843, 'Email');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'end_date', 'L', '', 1725109867143, '', 1725109867143, 'Tanggal Akhir');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'entity', 'L', '', 1725109867041, '', 1725109867041, 'Entitas');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'expired', 'L', '', 1725109867014, '', 1725109867014, 'Kadaluarsa');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'external', 'L', '', 1725109867011, '', 1725109867011, 'Eksternal');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'failure', 'L', '', 1725109867077, '', 1725109867077, 'Kegagalan');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'faq', 'L', '', 1725109867186, '', 1725109867186, 'FAQ');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'finance', 'L', '', 1725109867190, '', 1725109867190, 'Finance');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'finish', 'L', '', 1725109867220, '', 1725109867220, 'Selesai');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'forgot_pass_code', 'M', '', 1725109867245, '', 1725109867245, 'Kode Lupa Sandi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'full_name', 'L', '', 1725109867370, '', 1725109867370, 'Nama Lengkap');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'gender', 'G', '', 1725109867512, '', 1725109867512, '[{\"value\": \"M\", \"label\": \"Pria\"}, {\"value\": \"F\", \"label\": \"Wanita\"}]');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'gender', 'L', '', 1725109867383, '', 1725109867383, 'Gender');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'group', 'L', '', 1725109867402, '', 1725109867402, 'Grup');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'help', 'L', '', 1725109867431, '', 1725109867431, 'Bantuan');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'icon', 'L', '', 1725109867542, '', 1725109867542, 'Ikon');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'id', 'L', '', 1725109867568, '', 1725109867568, 'ID');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'image', 'L', '', 1725109867595, '', 1725109867595, 'Gambar');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'index', 'L', '', 1725109867581, '', 1725109867581, 'Indeks');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'information', 'L', '', 1725109867737, '', 1725109867737, 'Informasi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'input', 'L', '', 1725109867735, '', 1725109867735, 'Input');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'instance', 'L', '', 1725109867764, '', 1725109867764, 'Instansi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'key', 'L', '', 1725109867830, '', 1725109867830, 'Kunci');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'language', 'L', '', 1725109867816, '', 1725109867816, 'Bahasa');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'latitude', 'L', '', 1725109867892, '', 1725109867892, 'Latitude');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'level', 'L', '', 1725109867916, '', 1725109867916, 'Level');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'levels', 'L', '', 1725109867934, '', 1725109867934, 'Level');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'link', 'L', '', 1725109868024, '', 1725109868024, 'Tautan');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'location', 'L', '', 1725109867982, '', 1725109867982, 'Lokasi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'login', 'L', '', 1725109868062, '', 1725109868062, 'Login');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'logo', 'L', '', 1725109868104, '', 1725109868104, 'Logo');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'longitude', 'L', '', 1725109868108, '', 1725109868108, 'Longitude');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'major', 'L', '', 1725109868124, '', 1725109868124, 'Mayor');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'max', 'L', '', 1725109868197, '', 1725109868197, 'Max');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'menu', 'L', '', 1725109868199, '', 1725109868199, 'Menu');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'menu_type', 'G', '', 1725109868333, '', 1725109868333, '[{\"value\": \"portal\", \"label\": \"Portal\"}, {\"value\": \"mobile\", \"label\": \"Mobile\"}]');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'message', 'L', '', 1725109868280, '', 1725109868280, 'Pesan');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'message_type', 'G', '', 1725109869008, '', 1725109869008, '[{\"value\": \"E\", \"label\": \"Error\"}, {\"value\": \"G\", \"label\": \"Grid\"}, {\"value\": \"L\", \"label\": \"Label\"}, {\"value\": \"M\", \"label\": \"Pesan\"}, {\"value\": \"N\", \"label\": \"Notifikasi\"}, {\"value\": \"Q\", \"label\": \"Pertanyaan\"}, {\"value\": \"R\", \"label\": \"Menu\"}, {\"value\": \"W\", \"label\": \"Web\"}]');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'min', 'L', '', 1725109868420, '', 1725109868420, 'Min');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'mobile', 'L', '', 1725109868382, '', 1725109868382, 'Mobil');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'months', 'G', '', 1725109870950, '', 1725109870950, '[\"Januari\", \"Februari\", \"Maret\", \"April\", \"Mei\", \"Juni\", \"Juli\", \"Agustus\", \"September\", \"Oktober\", \"Nopember\", \"Desember\", \"Jan\", \"Feb\", \"Mar\", \"Apr\", \"Mei\", \"Jun\", \"Jul\", \"Agu\", \"Sep\", \"Okt\", \"Nop\", \"Des\"]');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'multimedia', 'L', '', 1725109868522, '', 1725109868522, 'Multimedia');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'name', 'L', '', 1725109868504, '', 1725109868504, 'Nama');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'new_password', 'L', '', 1725109868594, '', 1725109868594, 'Kata Sandi Baru');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'old_password', 'L', '', 1725109868610, '', 1725109868610, 'Kata Sandi Lama');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'operation', 'L', '', 1725109868710, '', 1725109868710, 'Operasi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'parameter', 'L', '', 1725109868718, '', 1725109868718, 'Parameter');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'password', 'L', '', 1725109868849, '', 1725109868849, 'Kata Sandi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'phone', 'L', '', 1725109868807, '', 1725109868807, 'Telepon');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'photo', 'L', '', 1725109868938, '', 1725109868938, 'Foto');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'profile', 'L', '', 1725109868938, '', 1725109868938, 'Profil');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'promotion', 'L', '', 1725109868974, '', 1725109868974, 'Promosi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'province', 'L', '', 1725109869097, '', 1725109869097, 'Propinsi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'public', 'L', '', 1725109869121, '', 1725109869121, 'Publik');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'rating', 'L', '', 1725109869141, '', 1725109869141, 'Rating');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'reference', 'L', '', 1725109869252, '', 1725109869252, 'Referensi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'register', 'L', '', 1725109869188, '', 1725109869188, 'Register');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'registration_code', 'M', '', 1725109869312, '', 1725109869312, 'Kode Registrasi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'role', 'L', '', 1725109869345, '', 1725109869345, 'Peran');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'save', 'L', '', 1725109869385, '', 1725109869385, 'Simpan');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'send_message_code', 'M', '', 1725109869379, '', 1725109869379, 'Kode Kirim Pesan');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'sequence', 'L', '', 1725109869477, '', 1725109869477, 'Urutan');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'status', 'L', '', 1725109869561, '', 1725109869561, 'Status');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'symbol', 'L', '', 1725109869583, '', 1725109869583, 'Simbol');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'system', 'L', '', 1725109869592, '', 1725109869592, 'Sistem');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'target', 'L', '', 1725109869583, '', 1725109869583, 'Target');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'task', 'L', '', 1725109869685, '', 1725109869685, 'Tugas');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'text', 'L', '', 1725109869767, '', 1725109869767, 'Teks');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'ticket', 'L', '', 1725109869736, '', 1725109869736, 'Tiket');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'title', 'L', '', 1725109869767, '', 1725109869767, 'Judul');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'transaction', 'L', '', 1725109869830, '', 1725109869830, 'Transaksi');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'type', 'L', '', 1725109869894, '', 1725109869894, 'Tipe');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'types', 'L', '', 1725109869906, '', 1725109869906, 'Type');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'updated', 'L', '', 1725109869928, '', 1725109869928, 'Diubah');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'url', 'L', '', 1725109869941, '', 1725109869941, 'URL');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'user', 'L', '', 1725109869987, '', 1725109869987, 'Pengguna');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'value', 'L', '', 1725109870065, '', 1725109870065, 'Nilai');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'visible', 'L', '', 1725109870119, '', 1725109870119, 'Tampak');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'zip_code', 'L', '', 1725109870107, '', 1725109870107, 'Kode Pos');
INSERT INTO `sys_message` (`language_code`, `message_code`, `message_type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `content`) VALUES ('id', 'zone_offset', 'L', '', 1725109870117, '', 1725109870117, 'Ofset Zona');
COMMIT;

-- ----------------------------
-- Table structure for sys_parameter
-- ----------------------------
DROP TABLE IF EXISTS `sys_parameter`;
CREATE TABLE `sys_parameter` (
  `sys_code` varchar(255) NOT NULL,
  `param_code` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_on` bigint NOT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_on` bigint NOT NULL,
  `bytes` tinyblob,
  `description` varchar(1024) DEFAULT NULL,
  `value_` text,
  PRIMARY KEY (`param_code`,`sys_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_parameter
-- ----------------------------
BEGIN;
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MULTIMEDIA', 'AMAZON_S3_BASE_URL', '__SYSTEM__', 1720092646176, '__SYSTEM__', 1722272513710, NULL, '', NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MOBILE', 'APPLICATION_CACHE_EXPIRY', '__SYSTEM__', 1725345445616, '__SYSTEM__', 1725345445616, NULL, 'Seconds', NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MOBILE', 'IMAGE_CACHE_ENABLE', '__SYSTEM__', 1720092366731, '__SYSTEM__', 1720092366731, NULL, NULL, NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MOBILE', 'IMAGE_CACHE_EXPIRY', '__SYSTEM__', 1720092408327, '__SYSTEM__', 1720092408327, NULL, 'Seconds', NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MOBILE', 'IMAGE_CACHE_LIMIT', '__SYSTEM__', 1720092425347, '__SYSTEM__', 1720092425347, NULL, NULL, NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MOBILE', 'INFORMATION_CACHE_EXPIRY', '__SYSTEM__', 1725345430148, '__SYSTEM__', 1725345430148, NULL, 'Seconds', NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('DEFAULT', 'LANGUAGE', NULL, 1, '__SYSTEM__', 1722600533315, NULL, '', NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MULTIMEDIA', 'LOCAL_BASE_URL', '__SYSTEM__', 1720092768317, '__SYSTEM__', 1727148718204, NULL, NULL, NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MULTIMEDIA', 'MAX_IMAGE_SIZE', '__SYSTEM__', 1720092803800, '__SYSTEM__', 1720092803800, NULL, NULL, NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MULTIMEDIA', 'MAX_VIDEO_SIZE', '__SYSTEM__', 1720093216603, '__SYSTEM__', 1722332712362, NULL, NULL, NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MOBILE', 'NETWORK_CACHE_EXPIRY', '__SYSTEM__', 1720092455928, '__SYSTEM__', 1720115955977, NULL, 'Seconds', NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MOBILE', 'NETWORK_CACHE_LIMIT', '__SYSTEM__', 1720092483777, '__SYSTEM__', 1720114804760, NULL, NULL, NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MOBILE', 'NOTIFICATION_CACHE_EXPIRY', '__SYSTEM__', 1725345458653, '__SYSTEM__', 1725345458653, NULL, 'Seconds', NULL);
INSERT INTO `sys_parameter` (`sys_code`, `param_code`, `created_by`, `created_on`, `updated_by`, `updated_on`, `bytes`, `description`, `value_`) VALUES ('MOBILE', 'PROMOTION_CACHE_EXPIRY', '__SYSTEM__', 1725345418142, '__SYSTEM__', 1725345418142, NULL, 'Seconds', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
