/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : yl_erp

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2022-04-14 16:13:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for configuration
-- ----------------------------
DROP TABLE IF EXISTS `configuration`;
CREATE TABLE `configuration` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '组ID',
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置项名称',
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '配置项字段',
  `val` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置项值',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'input' COMMENT '配置项类型，input输入框，radio单选，select下拉,image单图片',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '配置项类型的内容',
  `tips` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '输入提示',
  `sort` tinyint(4) NOT NULL DEFAULT '10' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='配置项表';

-- ----------------------------
-- Records of configuration
-- ----------------------------
INSERT INTO `configuration` VALUES ('1', '1', '登录日志', 'login_log', '1', 'radio', '0:关闭|1:开启', '开启后将记录后台登录日志', '10', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `configuration` VALUES ('2', '1', '删除登录日志', 'delete_login_log', '0', 'radio', '0:禁止|1:允许', '开启后将允许后台删除登录日志', '10', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `configuration` VALUES ('3', '1', '操作日志', 'operate_log', '1', 'radio', '0:关闭|1:开启', '开启后将记录后台操作日志', '10', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `configuration` VALUES ('4', '1', '删除操作日志', 'delete_operate_log', '0', 'radio', '0:禁止|1:允许', '开启后将允许后台删除操作日志', '10', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `configuration` VALUES ('5', '2', '标题', 'site_title', 'YL ERP', 'input', '', '', '10', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `configuration` VALUES ('6', '2', '关键词', 'site_keywords', 'ERP管理系统', 'input', '', '', '10', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `configuration` VALUES ('7', '2', '描述', 'site_description', 'ERP管理系统', 'textarea', '', '', '10', '2021-11-08 14:35:13', '2021-11-08 14:35:13');

-- ----------------------------
-- Table structure for config_group
-- ----------------------------
DROP TABLE IF EXISTS `config_group`;
CREATE TABLE `config_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `sort` tinyint(4) NOT NULL DEFAULT '10' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='配置组表';

-- ----------------------------
-- Records of config_group
-- ----------------------------
INSERT INTO `config_group` VALUES ('1', '系统配置', '1', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `config_group` VALUES ('2', '站点配置', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');

-- ----------------------------
-- Table structure for login_log
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录用户名',
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录IP地址',
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求方式',
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'UserAgent',
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('1', 'admin', '127.0.0.1', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', '登录成功', '2022-04-14 15:42:12', '2022-04-14 15:42:12');
INSERT INTO `login_log` VALUES ('2', 'admin', '127.0.0.1', 'POST', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.82 Safari/537.36', '登录成功', '2022-04-14 16:04:57', '2022-04-14 16:04:57');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2019_08_19_081257_create_permission_tables', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_20_155900_tags', '1');
INSERT INTO `migrations` VALUES ('4', '2019_08_20_160154_categories', '1');
INSERT INTO `migrations` VALUES ('5', '2019_08_20_160326_articles', '1');
INSERT INTO `migrations` VALUES ('6', '2019_08_20_160552_article_tag', '1');
INSERT INTO `migrations` VALUES ('7', '2019_08_23_085700_config_group', '1');
INSERT INTO `migrations` VALUES ('8', '2019_08_23_102411_configuration', '1');
INSERT INTO `migrations` VALUES ('9', '2019_08_26_101856_login_log', '1');
INSERT INTO `migrations` VALUES ('10', '2019_08_26_101940_operate_log', '1');

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户-权限中间表';

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------
INSERT INTO `model_has_permissions` VALUES ('1', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('2', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('3', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('4', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('5', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('6', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('7', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('8', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('9', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('10', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('11', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('12', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('13', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('14', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('15', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('16', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('17', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('18', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('19', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('20', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('21', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('22', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('23', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('24', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('25', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('26', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('27', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('28', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('29', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('30', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('31', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('32', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('33', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('34', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('35', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('36', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('37', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('38', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('39', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('40', 'App\\Models\\User', '1');
INSERT INTO `model_has_permissions` VALUES ('41', 'App\\Models\\User', '1');

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户-角色中间表';

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES ('1', 'App\\Models\\User', '1');

-- ----------------------------
-- Table structure for operate_log
-- ----------------------------
DROP TABLE IF EXISTS `operate_log`;
CREATE TABLE `operate_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '操作用户ID',
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作地址',
  `parameter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '参数',
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求方式：GET、POST、PUT、DELETE、HEAD',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of operate_log
-- ----------------------------
INSERT INTO `operate_log` VALUES ('1', '1', 'http://rbac.test/admin/category', '', 'GET', '2021-11-08 14:40:40', '2021-11-08 14:40:40');
INSERT INTO `operate_log` VALUES ('2', '1', 'http://rbac.test/admin/category/data', '', 'GET', '2021-11-08 14:40:40', '2021-11-08 14:40:40');
INSERT INTO `operate_log` VALUES ('3', '1', 'http://rbac.test/admin/tag', '', 'GET', '2021-11-08 14:40:41', '2021-11-08 14:40:41');
INSERT INTO `operate_log` VALUES ('4', '1', 'http://rbac.test/admin/tag/data?limit=10&page=1', 'page=1&limit=10', 'GET', '2021-11-08 14:40:41', '2021-11-08 14:40:41');
INSERT INTO `operate_log` VALUES ('5', '1', 'http://rbac.test/admin/article', '', 'GET', '2021-11-08 14:40:42', '2021-11-08 14:40:42');
INSERT INTO `operate_log` VALUES ('6', '1', 'http://rbac.test/admin/article/data?limit=10&page=1', 'page=1&limit=10', 'GET', '2021-11-08 14:40:42', '2021-11-08 14:40:42');
INSERT INTO `operate_log` VALUES ('7', '1', 'http://rbac.test/admin/category', '', 'GET', '2021-11-08 14:50:51', '2021-11-08 14:50:51');
INSERT INTO `operate_log` VALUES ('8', '1', 'http://rbac.test/admin/category/data', '', 'GET', '2021-11-08 14:50:51', '2021-11-08 14:50:51');
INSERT INTO `operate_log` VALUES ('9', '1', 'http://ylerp.local:83/admin/category?s=%2Fadmin%2Fcategory', 's=%2Fadmin%2Fcategory', 'GET', '2022-04-14 15:42:16', '2022-04-14 15:42:16');
INSERT INTO `operate_log` VALUES ('10', '1', 'http://ylerp.local:83/admin/category/data?s=%2Fadmin%2Fcategory%2Fdata', 's=%2Fadmin%2Fcategory%2Fdata', 'GET', '2022-04-14 15:42:16', '2022-04-14 15:42:16');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路由名称',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标class',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '类型：1按钮，2菜单',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='权限表';

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'system', 'web', '系统管理', '', 'layui-icon-set', '0', '0', '1', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('2', 'system.user', 'web', '用户管理', 'admin.user', '1', '1', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('3', 'system.user.create', 'web', '添加用户', 'admin.user.create', '1', '2', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('4', 'system.user.edit', 'web', '编辑用户', 'admin.user.edit', '1', '2', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('5', 'system.user.destroy', 'web', '删除用户', 'admin.user.destroy', '1', '2', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('6', 'system.user.role', 'web', '分配角色', 'admin.user.role', '1', '2', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('7', 'system.user.permission', 'web', '分配权限', 'admin.user.permission', '1', '2', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('8', 'system.role', 'web', '角色管理', 'admin.role', '1', '1', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('9', 'system.role.create', 'web', '添加角色', 'admin.role.create', '1', '8', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('10', 'system.role.edit', 'web', '编辑角色', 'admin.role.edit', '1', '8', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('11', 'system.role.destroy', 'web', '删除角色', 'admin.role.destroy', '1', '8', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('12', 'system.role.permission', 'web', '分配权限', 'admin.role.permission', '1', '8', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('13', 'system.permission', 'web', '权限管理', 'admin.permission', '1', '1', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('14', 'system.permission.create', 'web', '添加权限', 'admin.permission.create', '1', '13', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('15', 'system.permission.edit', 'web', '编辑权限', 'admin.permission.edit', '1', '13', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('16', 'system.permission.destroy', 'web', '删除权限', 'admin.permission.destroy', '1', '13', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('17', 'system.config_group', 'web', '配置组', 'admin.config_group', '1', '1', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('18', 'system.config_group.create', 'web', '添加组', 'admin.config_group.create', '1', '17', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('19', 'system.config_group.edit', 'web', '编辑组', 'admin.config_group.edit', '1', '17', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('20', 'system.config_group.destroy', 'web', '删除组', 'admin.config_group.destroy', '1', '17', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('21', 'system.configuration', 'web', '配置项', 'admin.configuration', '1', '1', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('22', 'system.configuration.create', 'web', '添加组', 'admin.configuration.create', '1', '21', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('23', 'system.configuration.edit', 'web', '编辑组', 'admin.configuration.edit', '1', '21', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('24', 'system.configuration.destroy', 'web', '删除组', 'admin.configuration.destroy', '1', '21', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('25', 'system.login_log', 'web', '登录日志', 'admin.login_log', '1', '1', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('26', 'system.login_log.destroy', 'web', '删除', 'admin.login_log.destroy', '1', '25', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('27', 'system.operate_log', 'web', '操作日志', 'admin.operate_log', '1', '1', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `permissions` VALUES ('28', 'system.operate_log.destroy', 'web', '删除', 'admin.operate_log.destroy', '1', '27', '0', '2', '2021-11-08 14:35:13', '2021-11-08 14:35:13');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色表';

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'root', 'web', '超级管理员', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `roles` VALUES ('2', 'business', 'web', '商务', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `roles` VALUES ('3', 'assessor', 'web', '审核员', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `roles` VALUES ('4', 'channel', 'web', '渠道专员', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `roles` VALUES ('5', 'editor', 'web', '编辑人员', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
INSERT INTO `roles` VALUES ('6', 'admin', 'web', '管理员', '2021-11-08 14:35:13', '2021-11-08 14:35:13');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色-权限中间表';

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES ('1', '1');
INSERT INTO `role_has_permissions` VALUES ('2', '1');
INSERT INTO `role_has_permissions` VALUES ('3', '1');
INSERT INTO `role_has_permissions` VALUES ('4', '1');
INSERT INTO `role_has_permissions` VALUES ('5', '1');
INSERT INTO `role_has_permissions` VALUES ('6', '1');
INSERT INTO `role_has_permissions` VALUES ('7', '1');
INSERT INTO `role_has_permissions` VALUES ('8', '1');
INSERT INTO `role_has_permissions` VALUES ('9', '1');
INSERT INTO `role_has_permissions` VALUES ('10', '1');
INSERT INTO `role_has_permissions` VALUES ('11', '1');
INSERT INTO `role_has_permissions` VALUES ('12', '1');
INSERT INTO `role_has_permissions` VALUES ('13', '1');
INSERT INTO `role_has_permissions` VALUES ('14', '1');
INSERT INTO `role_has_permissions` VALUES ('15', '1');
INSERT INTO `role_has_permissions` VALUES ('16', '1');
INSERT INTO `role_has_permissions` VALUES ('17', '1');
INSERT INTO `role_has_permissions` VALUES ('18', '1');
INSERT INTO `role_has_permissions` VALUES ('19', '1');
INSERT INTO `role_has_permissions` VALUES ('20', '1');
INSERT INTO `role_has_permissions` VALUES ('21', '1');
INSERT INTO `role_has_permissions` VALUES ('22', '1');
INSERT INTO `role_has_permissions` VALUES ('23', '1');
INSERT INTO `role_has_permissions` VALUES ('24', '1');
INSERT INTO `role_has_permissions` VALUES ('25', '1');
INSERT INTO `role_has_permissions` VALUES ('26', '1');
INSERT INTO `role_has_permissions` VALUES ('27', '1');
INSERT INTO `role_has_permissions` VALUES ('28', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '手机号码',
  `nickname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '邮箱',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_api_token_unique` (`api_token`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '18908221080', '超级管理员', 'root@dgg.net', '$2y$10$DkW1QBoRGKEOD8Jiq8BjeeqIBJ04vtvKeFNQnuYFaMZH9UAF6OBum', null, 'f0545807079a42f636b8d4722a94f38d0ad9dfb210ebc5e2fc073e0da16c0aa6', '2021-11-08 14:35:13', '2021-11-08 14:35:13');
