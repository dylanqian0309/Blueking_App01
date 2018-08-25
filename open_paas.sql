/*
Navicat MySQL Data Transfer

Source Server         : HKBking
Source Server Version : 50524
Source Host           : 119.28.139.116:3306
Source Database       : open_paas

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2018-02-05 21:04:28
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `account_bktoken`
-- ----------------------------
DROP TABLE IF EXISTS `account_bktoken`;
CREATE TABLE `account_bktoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `is_logout` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_bktoken
-- ----------------------------

-- ----------------------------
-- Table structure for `account_bkuser`
-- ----------------------------
DROP TABLE IF EXISTS `account_bkuser`;
CREATE TABLE `account_bkuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(128) NOT NULL,
  `chname` varchar(254) NOT NULL,
  `company` varchar(128) NOT NULL,
  `qq` varchar(32) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_bkuser
-- ----------------------------
INSERT INTO account_bkuser VALUES ('1', 'pbkdf2_sha256$20000$fQ6cOqNBaCsm$p9XKlRQIEzcd7rDNnBgl/6qOCfr4UragovouNuF/8yw=', '2017-08-23 15:37:59', '1', 'admin', '郑鉴', '', '283020742', '15921820811', 'jian.zheng@garena.cn', '1', '2017-08-23 15:37:59');
INSERT INTO account_bkuser VALUES ('2', '!ay28VvntAv32dGIL4eohm0Pbiij9TqfdFsXbawFF', '2017-08-24 14:05:38', '0', 'xiaobo', 'xiaobo', '', '111111111', '11111111111', '1111@qq.com', '0', '2017-08-24 14:05:38');
INSERT INTO account_bkuser VALUES ('3', '!UKyGijquMDJJ6T6CegwvuIorlHgFXYnIubBTMcc7', '2017-08-24 16:05:36', '1', 'zhengjian', 'zhengjian', '', '111111111', '11111111111', '1111111@qq.com', '1', '2017-08-24 16:05:36');
INSERT INTO account_bkuser VALUES ('4', '!dFA4znidBvcli8Om0VW8DElPIGYo4yZEqMXBsd0b', '2017-08-24 16:42:18', '0', 'jack', 'jack', '', '2262669305', '18621673130', 'zouj@garena.cn', '0', '2017-08-24 16:42:18');
INSERT INTO account_bkuser VALUES ('5', '!3TIlHXK9NmU1CyGqNv5CvIQXaVuUHAHVCdxfLrX6', '2017-08-24 17:29:12', '0', 'qianjun', '钱俊', '', '111111111', '11111111111', 'jfeifjei@qq.com', '0', '2017-08-24 17:29:12');
INSERT INTO account_bkuser VALUES ('6', '!fgDJj9rGeTERqGcKr9WK7gZ8RRl5tXvLwCZSggvl', '2017-08-28 10:38:43', '0', 'fuji', 'fuji', '', '1111111111', '11111111111', 'jiye.fu@garena.cn', '0', '2017-08-28 10:38:43');
INSERT INTO account_bkuser VALUES ('7', '!5IJXT5YYhBbF4Df3WQH9wY91fmxL0RozIGnX8HCM', '2017-08-28 10:41:39', '0', 'zangwei', 'zangwei', '', '11111111', '11111111111', 'wei.zang@garena.cn', '0', '2017-08-28 10:41:39');
INSERT INTO account_bkuser VALUES ('8', '!SW6JLdw74z8wYrjhL0Z0ouUM2Yawmn7zt945QgZ1', '2017-09-11 11:14:10', '1', 'bingwei', '丙卫', '', '1111111', '11111111111', 'bingwei.zhang@garena.cn', '1', '2017-09-11 11:14:10');
INSERT INTO account_bkuser VALUES ('9', '!nNWwgh2MgiWn0JXavwT2F8Ojnm8gw0ybufGukvve', '2017-09-15 21:38:15', '0', 'selinaliang', 'selinaliang', '', '1111111', '11111111111', 'selinaliang@tencent.com', '0', '2017-09-15 21:38:15');
INSERT INTO account_bkuser VALUES ('10', '!DAKdPsPz9Dw837ATEodqyL0fKa3CAe5BOBGoLszD', '2017-09-30 11:11:55', '0', 'songyu', 'songyu', '', '415557612', '11111111111', 'songy@garena.com', '0', '2017-09-30 11:11:55');
INSERT INTO account_bkuser VALUES ('11', '!Y37K6Me9Q7M9Y1DrUEOvKHQngFj1JEPoV6LVIvvX', '2017-11-07 14:48:26', '1', 'wangye', '王也', '', '11111111', '11111111111', 'ye.wang@garena.cn', '1', '2017-11-07 14:48:26');

-- ----------------------------
-- Table structure for `account_bkuser_groups`
-- ----------------------------
DROP TABLE IF EXISTS `account_bkuser_groups`;
CREATE TABLE `account_bkuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bkuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bkuser_id` (`bkuser_id`,`group_id`),
  KEY `account_bkuser_groups_group_id_62e6d4600781d550_fk_auth_group_id` (`group_id`),
  CONSTRAINT `account_bkuser_groups_group_id_62e6d4600781d550_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `account_bkuser_g_bkuser_id_2afe1b401266c2ba_fk_account_bkuser_id` FOREIGN KEY (`bkuser_id`) REFERENCES `account_bkuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_bkuser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `account_bkuser_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `account_bkuser_user_permissions`;
CREATE TABLE `account_bkuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bkuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bkuser_id` (`bkuser_id`,`permission_id`),
  KEY `account_bkus_permission_id_d5bec30ce864e6d_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `account_bkuser_u_bkuser_id_726503c76778809c_fk_account_bkuser_id` FOREIGN KEY (`bkuser_id`) REFERENCES `account_bkuser` (`id`),
  CONSTRAINT `account_bkus_permission_id_d5bec30ce864e6d_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_bkuser_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `account_loignlog`
-- ----------------------------
DROP TABLE IF EXISTS `account_loignlog`;
CREATE TABLE `account_loignlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_time` datetime NOT NULL,
  `login_browser` varchar(200) DEFAULT NULL,
  `login_ip` varchar(50) DEFAULT NULL,
  `login_host` varchar(100) DEFAULT NULL,
  `app_id` varchar(30) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_loignlog_user_id_15323b92e87f1680_fk_account_bkuser_id` (`user_id`),
  CONSTRAINT `account_loignlog_user_id_15323b92e87f1680_fk_account_bkuser_id` FOREIGN KEY (`user_id`) REFERENCES `account_bkuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_loignlog
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO auth_permission VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO auth_permission VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO auth_permission VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO auth_permission VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO auth_permission VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO auth_permission VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO auth_permission VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO auth_permission VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO auth_permission VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO auth_permission VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO auth_permission VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO auth_permission VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO auth_permission VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO auth_permission VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO auth_permission VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO auth_permission VALUES ('16', 'Can add user', '6', 'add_bkuser');
INSERT INTO auth_permission VALUES ('17', 'Can change user', '6', 'change_bkuser');
INSERT INTO auth_permission VALUES ('18', 'Can delete user', '6', 'delete_bkuser');
INSERT INTO auth_permission VALUES ('19', 'Can add 用户登录日志', '7', 'add_loignlog');
INSERT INTO auth_permission VALUES ('20', 'Can change 用户登录日志', '7', 'change_loignlog');
INSERT INTO auth_permission VALUES ('21', 'Can delete 用户登录日志', '7', 'delete_loignlog');
INSERT INTO auth_permission VALUES ('22', 'Can add 登录票据', '8', 'add_bktoken');
INSERT INTO auth_permission VALUES ('23', 'Can change 登录票据', '8', 'change_bktoken');
INSERT INTO auth_permission VALUES ('24', 'Can delete 登录票据', '8', 'delete_bktoken');
INSERT INTO auth_permission VALUES ('25', 'Can add 应用分类信息', '9', 'add_apptags');
INSERT INTO auth_permission VALUES ('26', 'Can change 应用分类信息', '9', 'change_apptags');
INSERT INTO auth_permission VALUES ('27', 'Can delete 应用分类信息', '9', 'delete_apptags');
INSERT INTO auth_permission VALUES ('28', 'Can add 应用基本信息', '10', 'add_app');
INSERT INTO auth_permission VALUES ('29', 'Can change 应用基本信息', '10', 'change_app');
INSERT INTO auth_permission VALUES ('30', 'Can delete 应用基本信息', '10', 'delete_app');
INSERT INTO auth_permission VALUES ('31', 'Can add 应用安全相关信息', '11', 'add_secureinfo');
INSERT INTO auth_permission VALUES ('32', 'Can change 应用安全相关信息', '11', 'change_secureinfo');
INSERT INTO auth_permission VALUES ('33', 'Can delete 应用安全相关信息', '11', 'delete_secureinfo');
INSERT INTO auth_permission VALUES ('34', 'Can add 应用部署操作信息', '12', 'add_record');
INSERT INTO auth_permission VALUES ('35', 'Can change 应用部署操作信息', '12', 'change_record');
INSERT INTO auth_permission VALUES ('36', 'Can delete 应用部署操作信息', '12', 'delete_record');
INSERT INTO auth_permission VALUES ('37', 'Can add 应用发布版本信息', '13', 'add_version');
INSERT INTO auth_permission VALUES ('38', 'Can change 应用发布版本信息', '13', 'change_version');
INSERT INTO auth_permission VALUES ('39', 'Can delete 应用发布版本信息', '13', 'delete_version');
INSERT INTO auth_permission VALUES ('40', 'Can add 应用特征信息', '14', 'add_versiondetail');
INSERT INTO auth_permission VALUES ('41', 'Can change 应用特征信息', '14', 'change_versiondetail');
INSERT INTO auth_permission VALUES ('42', 'Can delete 应用特征信息', '14', 'delete_versiondetail');
INSERT INTO auth_permission VALUES ('43', 'Can add 用户操作流水日志', '15', 'add_useroperaterecord');
INSERT INTO auth_permission VALUES ('44', 'Can change 用户操作流水日志', '15', 'change_useroperaterecord');
INSERT INTO auth_permission VALUES ('45', 'Can delete 用户操作流水日志', '15', 'delete_useroperaterecord');
INSERT INTO auth_permission VALUES ('46', 'Can add cluster info', '16', 'add_bkcluster');
INSERT INTO auth_permission VALUES ('47', 'Can change cluster info', '16', 'change_bkcluster');
INSERT INTO auth_permission VALUES ('48', 'Can delete cluster info', '16', 'delete_bkcluster');
INSERT INTO auth_permission VALUES ('49', 'Can add app info', '17', 'add_bkapp');
INSERT INTO auth_permission VALUES ('50', 'Can change app info', '17', 'change_bkapp');
INSERT INTO auth_permission VALUES ('51', 'Can delete app info', '17', 'delete_bkapp');
INSERT INTO auth_permission VALUES ('52', 'Can add app token', '18', 'add_bkapptoken');
INSERT INTO auth_permission VALUES ('53', 'Can change app token', '18', 'change_bkapptoken');
INSERT INTO auth_permission VALUES ('54', 'Can delete app token', '18', 'delete_bkapptoken');
INSERT INTO auth_permission VALUES ('55', 'Can add 服务器信息', '19', 'add_bkserver');
INSERT INTO auth_permission VALUES ('56', 'Can change 服务器信息', '19', 'change_bkserver');
INSERT INTO auth_permission VALUES ('57', 'Can delete 服务器信息', '19', 'delete_bkserver');
INSERT INTO auth_permission VALUES ('58', 'Can add 第三方服务器信息', '20', 'add_thirdserver');
INSERT INTO auth_permission VALUES ('59', 'Can change 第三方服务器信息', '20', 'change_thirdserver');
INSERT INTO auth_permission VALUES ('60', 'Can delete 第三方服务器信息', '20', 'delete_thirdserver');
INSERT INTO auth_permission VALUES ('61', 'Can add router map', '21', 'add_bkhostingship');
INSERT INTO auth_permission VALUES ('62', 'Can change router map', '21', 'change_bkhostingship');
INSERT INTO auth_permission VALUES ('63', 'Can delete router map', '21', 'delete_bkhostingship');
INSERT INTO auth_permission VALUES ('64', 'Can add app env', '22', 'add_bkappenv');
INSERT INTO auth_permission VALUES ('65', 'Can change app env', '22', 'change_bkappenv');
INSERT INTO auth_permission VALUES ('66', 'Can delete app env', '22', 'delete_bkappenv');
INSERT INTO auth_permission VALUES ('67', 'Can add app event', '23', 'add_bkappevent');
INSERT INTO auth_permission VALUES ('68', 'Can change app event', '23', 'change_bkappevent');
INSERT INTO auth_permission VALUES ('69', 'Can delete app event', '23', 'delete_bkappevent');
INSERT INTO auth_permission VALUES ('70', 'Can add app event log', '24', 'add_bkappeventlog');
INSERT INTO auth_permission VALUES ('71', 'Can change app event log', '24', 'change_bkappeventlog');
INSERT INTO auth_permission VALUES ('72', 'Can delete app event log', '24', 'delete_bkappeventlog');
INSERT INTO auth_permission VALUES ('73', 'Can add 用户收藏应用', '25', 'add_userapps');
INSERT INTO auth_permission VALUES ('74', 'Can change 用户收藏应用', '25', 'change_userapps');
INSERT INTO auth_permission VALUES ('75', 'Can delete 用户收藏应用', '25', 'delete_userapps');
INSERT INTO auth_permission VALUES ('76', 'Can add 用户自定义的应用列表', '26', 'add_usersettings');
INSERT INTO auth_permission VALUES ('77', 'Can change 用户自定义的应用列表', '26', 'change_usersettings');
INSERT INTO auth_permission VALUES ('78', 'Can delete 用户自定义的应用列表', '26', 'delete_usersettings');
INSERT INTO auth_permission VALUES ('79', 'Can add 常用链接', '27', 'add_usefullinks');
INSERT INTO auth_permission VALUES ('80', 'Can change 常用链接', '27', 'change_usefullinks');
INSERT INTO auth_permission VALUES ('81', 'Can delete 常用链接', '27', 'delete_usefullinks');
INSERT INTO auth_permission VALUES ('82', 'Can add SaaS 应用', '28', 'add_saasapp');
INSERT INTO auth_permission VALUES ('83', 'Can change SaaS 应用', '28', 'change_saasapp');
INSERT INTO auth_permission VALUES ('84', 'Can delete SaaS 应用', '28', 'delete_saasapp');
INSERT INTO auth_permission VALUES ('85', 'Can add SaaS 应用版本', '29', 'add_saasappversion');
INSERT INTO auth_permission VALUES ('86', 'Can change SaaS 应用版本', '29', 'change_saasappversion');
INSERT INTO auth_permission VALUES ('87', 'Can delete SaaS 应用版本', '29', 'delete_saasappversion');
INSERT INTO auth_permission VALUES ('88', 'Can add SaaS上传安装包', '30', 'add_saasuploadfile');
INSERT INTO auth_permission VALUES ('89', 'Can change SaaS上传安装包', '30', 'change_saasuploadfile');
INSERT INTO auth_permission VALUES ('90', 'Can delete SaaS上传安装包', '30', 'delete_saasuploadfile');
INSERT INTO auth_permission VALUES ('91', 'Can add 资源下载', '31', 'add_resource');
INSERT INTO auth_permission VALUES ('92', 'Can change 资源下载', '31', 'change_resource');
INSERT INTO auth_permission VALUES ('93', 'Can delete 资源下载', '31', 'delete_resource');
INSERT INTO auth_permission VALUES ('94', 'Can add component system', '32', 'add_componentsystem');
INSERT INTO auth_permission VALUES ('95', 'Can change component system', '32', 'change_componentsystem');
INSERT INTO auth_permission VALUES ('96', 'Can delete component system', '32', 'delete_componentsystem');
INSERT INTO auth_permission VALUES ('97', 'Can add esb channel', '33', 'add_esbchannel');
INSERT INTO auth_permission VALUES ('98', 'Can change esb channel', '33', 'change_esbchannel');
INSERT INTO auth_permission VALUES ('99', 'Can delete esb channel', '33', 'delete_esbchannel');
INSERT INTO auth_permission VALUES ('100', 'Can add function controller', '34', 'add_functioncontroller');
INSERT INTO auth_permission VALUES ('101', 'Can change function controller', '34', 'change_functioncontroller');
INSERT INTO auth_permission VALUES ('102', 'Can delete function controller', '34', 'delete_functioncontroller');
INSERT INTO auth_permission VALUES ('103', 'Can add user auth token', '35', 'add_userauthtoken');
INSERT INTO auth_permission VALUES ('104', 'Can change user auth token', '35', 'change_userauthtoken');
INSERT INTO auth_permission VALUES ('105', 'Can delete user auth token', '35', 'delete_userauthtoken');
INSERT INTO auth_permission VALUES ('106', 'Can add esb buffet component', '36', 'add_esbbuffetcomponent');
INSERT INTO auth_permission VALUES ('107', 'Can change esb buffet component', '36', 'change_esbbuffetcomponent');
INSERT INTO auth_permission VALUES ('108', 'Can delete esb buffet component', '36', 'delete_esbbuffetcomponent');
INSERT INTO auth_permission VALUES ('109', 'Can add esb buffet mapping', '37', 'add_esbbuffetmapping');
INSERT INTO auth_permission VALUES ('110', 'Can change esb buffet mapping', '37', 'change_esbbuffetmapping');
INSERT INTO auth_permission VALUES ('111', 'Can delete esb buffet mapping', '37', 'delete_esbbuffetmapping');
INSERT INTO auth_permission VALUES ('112', 'Can add user', '38', 'add_bkuser');
INSERT INTO auth_permission VALUES ('113', 'Can change user', '38', 'change_bkuser');
INSERT INTO auth_permission VALUES ('114', 'Can delete user', '38', 'delete_bkuser');
INSERT INTO auth_permission VALUES ('115', 'Can add 用户登录日志', '39', 'add_loignlog');
INSERT INTO auth_permission VALUES ('116', 'Can change 用户登录日志', '39', 'change_loignlog');
INSERT INTO auth_permission VALUES ('117', 'Can delete 用户登录日志', '39', 'delete_loignlog');
INSERT INTO auth_permission VALUES ('118', 'Can add 登录票据', '40', 'add_bktoken');
INSERT INTO auth_permission VALUES ('119', 'Can change 登录票据', '40', 'change_bktoken');
INSERT INTO auth_permission VALUES ('120', 'Can delete 登录票据', '40', 'delete_bktoken');

-- ----------------------------
-- Table structure for `bkaccount_bkuser`
-- ----------------------------
DROP TABLE IF EXISTS `bkaccount_bkuser`;
CREATE TABLE `bkaccount_bkuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(128) NOT NULL,
  `chname` varchar(254) NOT NULL,
  `qq` varchar(32) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `email` varchar(254) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bkaccount_bkuser
-- ----------------------------
INSERT INTO bkaccount_bkuser VALUES ('1', 'pbkdf2_sha256$20000$gve2my8Mzkl7$2wXl6XIMxGbLVlMhw0KRFVFmsqCcI+r0B7/sGrsEoJ0=', '2018-02-05 21:02:37', '1', 'admin', '郑鉴', '283020742', '15921820811', 'jian.zheng@garena.cn', '2017-08-23 15:39:21');
INSERT INTO bkaccount_bkuser VALUES ('2', 'pbkdf2_sha256$20000$JXhHsU271TQ8$8Lt18yujRou/SyfFpl1tYIabCLuntrTs8IuY4MNA/q0=', '2018-01-31 14:22:21', '0', 'qianjun', '钱俊', '111111111', '11111111111', 'jfeifjei@qq.com', '2017-08-24 12:37:51');
INSERT INTO bkaccount_bkuser VALUES ('3', 'pbkdf2_sha256$20000$FnLjYcR5dsGq$8C1+MhjytvBPfS2GLf6QnBbBRKnfTUuhwU6uPsY12F4=', '2017-10-19 14:19:28', '0', 'xiaobo', 'xiaobo', '111111111', '11111111111', '1111@qq.com', '2017-08-24 13:31:52');
INSERT INTO bkaccount_bkuser VALUES ('4', 'pbkdf2_sha256$20000$qUo4aabcXwMy$vIUj1BJlnmns+9yWB8kuFGTO7mrQX9HqyNLVR5clESI=', '2018-02-05 20:30:25', '1', 'zhengjian', 'zhengjian', '111111111', '11111111111', '1111111@qq.com', '2017-08-24 13:33:11');
INSERT INTO bkaccount_bkuser VALUES ('5', 'pbkdf2_sha256$20000$euznCiitVscH$GUh7rZo4f6KQl0raktX7XWDSexF+OM2dsX0MF2lneZI=', '2017-10-13 15:03:23', '0', 'jack', 'jack', '2262669305', '18621673130', 'zouj@garena.cn', '2017-08-24 13:33:38');
INSERT INTO bkaccount_bkuser VALUES ('6', 'pbkdf2_sha256$20000$pXB3pJy78mhw$8Gk0SGKY9TNIuHUsijVa3/WNYRIrCQexaIs4Y0mrpQU=', '2017-08-28 10:41:48', '0', 'fuji', 'fuji', '1111111111', '11111111111', 'jiye.fu@garena.cn', '2017-08-28 10:32:05');
INSERT INTO bkaccount_bkuser VALUES ('7', 'pbkdf2_sha256$20000$Ac486tvwSR8a$n05D6mNT6FSzwif1dQa/MY345++42P88J8OzNPxRV3s=', '2018-02-05 15:20:13', '0', 'zangwei', 'zangwei', '11111111', '11111111111', 'wei.zang@garena.cn', '2017-08-28 10:32:26');
INSERT INTO bkaccount_bkuser VALUES ('8', 'pbkdf2_sha256$20000$TQ7AtcF18rIX$hgH92QA7enbsYQqHBvjz/AkNQm4Pfng0NiuZhKuBy1Y=', '2018-02-01 01:35:21', '1', 'bingwei', '丙卫', '1111111', '11111111111', 'bingwei.zhang@garena.cn', '2017-09-11 11:13:30');
INSERT INTO bkaccount_bkuser VALUES ('9', 'pbkdf2_sha256$20000$0iR8cTmGN1Gc$G0rdSLQGVirwISkFOh5AcwjbH2jPZKV2zrCtVipEr9c=', '2017-12-05 20:25:07', '0', 'selinaliang', 'selinaliang', '1111111', '11111111111', 'selinaliang@tencent.com', '2017-09-15 15:47:27');
INSERT INTO bkaccount_bkuser VALUES ('10', 'pbkdf2_sha256$20000$fp1pENEivVUL$qo6k+qMvkeW33Q9ejszAMhSFLQijP7kcTg5OgIQ4QVA=', '2018-02-05 16:51:47', '0', 'songyu', 'songyu', '415557612', '11111111111', 'songy@garena.com', '2017-09-30 11:03:49');
INSERT INTO bkaccount_bkuser VALUES ('11', 'pbkdf2_sha256$20000$lqS1w0yeb3o1$SsJFkJa6VNmcHugXzL5tQU5yhuVHrE29Gb4tPb1V9n0=', '2018-02-05 14:13:28', '1', 'wangye', '王也', '11111111', '11111111111', 'ye.wang@garena.cn', '2017-11-07 14:46:27');

-- ----------------------------
-- Table structure for `bkaccount_bkuser_groups`
-- ----------------------------
DROP TABLE IF EXISTS `bkaccount_bkuser_groups`;
CREATE TABLE `bkaccount_bkuser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bkuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bkuser_id` (`bkuser_id`,`group_id`),
  KEY `bkaccount_bkuser_grou_group_id_1caab09198e978c7_fk_auth_group_id` (`group_id`),
  CONSTRAINT `bkaccount_bkuser_grou_group_id_1caab09198e978c7_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `bkaccount_bkuse_bkuser_id_ce247b885c77e5d_fk_bkaccount_bkuser_id` FOREIGN KEY (`bkuser_id`) REFERENCES `bkaccount_bkuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bkaccount_bkuser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `bkaccount_bkuser_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `bkaccount_bkuser_user_permissions`;
CREATE TABLE `bkaccount_bkuser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bkuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bkuser_id` (`bkuser_id`,`permission_id`),
  KEY `bkaccount_b_permission_id_26621dbdf1e436c0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `bkaccount_bkus_bkuser_id_691db91b3ff78dd7_fk_bkaccount_bkuser_id` FOREIGN KEY (`bkuser_id`) REFERENCES `bkaccount_bkuser` (`id`),
  CONSTRAINT `bkaccount_b_permission_id_26621dbdf1e436c0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bkaccount_bkuser_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_account_bkuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_account_bkuser_id` FOREIGN KEY (`user_id`) REFERENCES `account_bkuser` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO django_content_type VALUES ('8', 'account', 'bktoken');
INSERT INTO django_content_type VALUES ('6', 'account', 'bkuser');
INSERT INTO django_content_type VALUES ('7', 'account', 'loignlog');
INSERT INTO django_content_type VALUES ('1', 'admin', 'logentry');
INSERT INTO django_content_type VALUES ('10', 'app', 'app');
INSERT INTO django_content_type VALUES ('9', 'app', 'apptags');
INSERT INTO django_content_type VALUES ('11', 'app', 'secureinfo');
INSERT INTO django_content_type VALUES ('3', 'auth', 'group');
INSERT INTO django_content_type VALUES ('2', 'auth', 'permission');
INSERT INTO django_content_type VALUES ('40', 'bkaccount', 'bktoken');
INSERT INTO django_content_type VALUES ('38', 'bkaccount', 'bkuser');
INSERT INTO django_content_type VALUES ('39', 'bkaccount', 'loignlog');
INSERT INTO django_content_type VALUES ('32', 'bkcore', 'componentsystem');
INSERT INTO django_content_type VALUES ('36', 'bkcore', 'esbbuffetcomponent');
INSERT INTO django_content_type VALUES ('37', 'bkcore', 'esbbuffetmapping');
INSERT INTO django_content_type VALUES ('33', 'bkcore', 'esbchannel');
INSERT INTO django_content_type VALUES ('34', 'bkcore', 'functioncontroller');
INSERT INTO django_content_type VALUES ('35', 'bkcore', 'userauthtoken');
INSERT INTO django_content_type VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO django_content_type VALUES ('17', 'engine', 'bkapp');
INSERT INTO django_content_type VALUES ('22', 'engine', 'bkappenv');
INSERT INTO django_content_type VALUES ('23', 'engine', 'bkappevent');
INSERT INTO django_content_type VALUES ('24', 'engine', 'bkappeventlog');
INSERT INTO django_content_type VALUES ('18', 'engine', 'bkapptoken');
INSERT INTO django_content_type VALUES ('16', 'engine', 'bkcluster');
INSERT INTO django_content_type VALUES ('21', 'engine', 'bkhostingship');
INSERT INTO django_content_type VALUES ('19', 'engine', 'bkserver');
INSERT INTO django_content_type VALUES ('20', 'engine', 'thirdserver');
INSERT INTO django_content_type VALUES ('27', 'home', 'usefullinks');
INSERT INTO django_content_type VALUES ('25', 'home', 'userapps');
INSERT INTO django_content_type VALUES ('26', 'home', 'usersettings');
INSERT INTO django_content_type VALUES ('12', 'release', 'record');
INSERT INTO django_content_type VALUES ('15', 'release', 'useroperaterecord');
INSERT INTO django_content_type VALUES ('13', 'release', 'version');
INSERT INTO django_content_type VALUES ('14', 'release', 'versiondetail');
INSERT INTO django_content_type VALUES ('31', 'resource', 'resource');
INSERT INTO django_content_type VALUES ('28', 'saas', 'saasapp');
INSERT INTO django_content_type VALUES ('29', 'saas', 'saasappversion');
INSERT INTO django_content_type VALUES ('30', 'saas', 'saasuploadfile');
INSERT INTO django_content_type VALUES ('5', 'sessions', 'session');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO django_migrations VALUES ('1', 'contenttypes', '0001_initial', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('3', 'auth', '0001_initial', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('6', 'auth', '0004_alter_user_username_opts', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('9', 'account', '0001_initial', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('10', 'account', '0002_initial_user_data', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('11', 'admin', '0001_initial', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('12', 'app', '0001_initial', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('13', 'app', '0002_auto_20160615_2036', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('14', 'app', '0003_app_deploy_token', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('15', 'app', '0004_auto_20160929_1101', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('16', 'app', '0005_auto_20161017_1038', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('17', 'app', '0006_app_is_saas', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('18', 'app', '0007_auto_20161111_1348', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('19', 'saas', '0001_initial', '2017-08-23 15:37:59');
INSERT INTO django_migrations VALUES ('20', 'saas', '0002_auto_20161025_2016', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('21', 'saas', '0003_saasuploadfile_md5', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('22', 'saas', '0004_saasapp_created_time', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('23', 'saas', '0005_auto_20161101_1025', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('24', 'saas', '0006_auto_20161111_1827', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('25', 'bk_app', '0001_load_bkapps_intial_data', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('26', 'bk_app', 'bk_framework_R00001', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('27', 'bkcore', '0001_initial', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('28', 'bkcore', '0002_auto_20160712_2041', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('29', 'bkcore', '0003_load_intial_data', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('30', 'bkcore', '0004_auto_20170220_2054', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('31', 'engine', '0001_initial', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('32', 'engine', '0002_auto_20160426_0959', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('33', 'engine', '0003_auto_20160629_1545', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('34', 'engine', '0004_auto_20160912_1741', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('35', 'engine', '0005_auto_20160929_1109', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('36', 'home', '0001_initial', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('37', 'home', '0002_usersettings', '2017-08-23 15:38:00');
INSERT INTO django_migrations VALUES ('38', 'release', '0001_initial', '2017-08-23 15:38:01');
INSERT INTO django_migrations VALUES ('39', 'resource', '0001_initial', '2017-08-23 15:38:01');
INSERT INTO django_migrations VALUES ('40', 'resource', '0002_data_insert_framework', '2017-08-23 15:38:01');
INSERT INTO django_migrations VALUES ('41', 'resource', '0003_init_data', '2017-08-23 15:38:01');
INSERT INTO django_migrations VALUES ('42', 'sessions', '0001_initial', '2017-08-23 15:38:01');
INSERT INTO django_migrations VALUES ('43', 'bkaccount', '0001_initial', '2017-08-23 15:39:21');
INSERT INTO django_migrations VALUES ('44', 'bkaccount', '0002_initial_user_data', '2017-08-23 15:39:21');
INSERT INTO django_migrations VALUES ('45', 'bkaccount', '0003_bktoken_inactive_expire_time', '2017-08-23 15:39:21');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO django_session VALUES ('1qf7b915y0sejw9yze2d9xdyncgb0gl5', 'MjY5OTc3YWUzMzAyNTg2OGNkMzYyMDM3MGMyMDZkZDk2NDEzNTVlNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZTJjZDVkM2JjNjJmOTBiM2FiOTgxODg2NjBiODNjY2Q5NDA4NGQiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-10-18 21:00:22');
INSERT INTO django_session VALUES ('211aamhox0vo1tdsoce6t77c94vjtbtr', 'ZjIyNTQ0NzA4MzE5ODZjM2QzZTJkZmJiNDk5Y2JiNmQ0NjUwM2Q1OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjllNjVkODA3NDA1YzcxNjI2ODc2ZDRjODg0NDkzODM0ODIzY2FlOGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=', '2017-09-11 10:41:48');
INSERT INTO django_session VALUES ('22iojw3amxw71ztb4vs0jcf3fhnp47po', 'NGE4NmQxOWZmMzU0ZTU4MWY3YmI3YzQ3Zjc3MjY2NWIzNjA3MDY1ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzODlkZTc0OTI5ZDBkMDJjOWNiYmQ1NTk1ZWQyMzg0ODRjOGRlZTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-12-13 16:17:30');
INSERT INTO django_session VALUES ('2ca4ft7iaufpumcgbwz7g4hbfce9vond', 'ZTAxMmQ1MmNiZjgyNGQxNzljMTkxNzhmYTQ0MDg3YmU1MWZjMDhkMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImVkNmExYTRhODc4ZmEzNjA2ODYyZmY0ZjY2MTE0ZjBjYjZhNTI1ZjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9', '2018-02-19 16:51:47');
INSERT INTO django_session VALUES ('2tjgt53nsyffs5af8wj72d508bqr34mv', 'MGEwZDcxYTAyZTMzZDRiNzk4YjE5NmExODQ0YmJjYTQ2ZWM1ZjY5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjEyOWJmODlhYjg0YTZhYWJkMzg0YzA1ZDIzMDU0MTA4MzRjMTI0MjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2017-09-14 11:35:36');
INSERT INTO django_session VALUES ('74lttqajf92hugb7ific0ptj7wew5r76', 'YjQ3N2E3OWM5ZTZhNmI5NTY2YTc1MGJmZTQ0YWIxN2RlNDI5ZTQwZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZTJjZDVkM2JjNjJmOTBiM2FiOTgxODg2NjBiODNjY2Q5NDA4NGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2018-02-14 14:22:21');
INSERT INTO django_session VALUES ('7ax4hmd1dqc187z57vti5evioiaaaf3b', 'MTNiNWMwNmRjM2RkNWQxMTAxNTYyOTU2YjllODI3YTE4OTRmOWE5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2Y2EwYTQ4MWI2NGRlNzVhNGQ2MmRlZjM3YWFmOWVmNzIwOGYwNTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5In0=', '2017-12-19 20:25:07');
INSERT INTO django_session VALUES ('859xhadetay42wf67frg1j1dcdqqyfq9', 'MzAyOWU1NzEzMGE1ZDQwYWY5MjE3YWVhNTEyOTg3NWI2ODg3NjEyNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1YWU2ODQ1MjVmZDczZDQxM2Q4OGM0MWVjMDhkOGM2NDU5YTE4NDQiLCJfYXV0aF91c2VyX2lkIjoiNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-09-19 10:57:15');
INSERT INTO django_session VALUES ('8jxkrcgccsz7dgbo17w2t7fneywuj32m', 'Y2U3Y2VhM2IzZTRhN2Y0MWNiOGRhZDAyYmNlMTlhYmNmZjY1ODVlMDp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2NGIwNjNmMmY3ODFmYmFmNGUxNzllYThhYjRjZWRhNTI4MGU2ZTQiLCJfYXV0aF91c2VyX2lkIjoiOCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-11-30 18:29:24');
INSERT INTO django_session VALUES ('b7t8nj8qc462pxcx6p9um7b1ncremdlk', 'OGE5OGYxZDZmZTI4NWUwMGRiMTZhNDA3MTMyNTA5MjFhMTdkM2ExODp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzVlZDA1MTE0NjRhNjliY2VkMDBhOThhMWEzMjFlZjlmZWI0ZmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-02-19 14:15:27');
INSERT INTO django_session VALUES ('cqajmyepe551nqw8isnzoeotboh7e1zb', 'YjQ3N2E3OWM5ZTZhNmI5NTY2YTc1MGJmZTQ0YWIxN2RlNDI5ZTQwZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZTJjZDVkM2JjNjJmOTBiM2FiOTgxODg2NjBiODNjY2Q5NDA4NGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2018-01-17 14:00:00');
INSERT INTO django_session VALUES ('didi1ccev8zlsvnhrccmxmlywm3dhxmd', 'ZjIyNTQ0NzA4MzE5ODZjM2QzZTJkZmJiNDk5Y2JiNmQ0NjUwM2Q1OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjllNjVkODA3NDA1YzcxNjI2ODc2ZDRjODg0NDkzODM0ODIzY2FlOGUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI2In0=', '2017-09-11 10:38:43');
INSERT INTO django_session VALUES ('dtw5y1dtm6mo3sukndnhoevwivx32f6d', 'M2U0NzZkMzRmOTQ3MmY5ZjQ1YWRiN2Y5MjYyNmZiODc2N2EyNWRlMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1YWU2ODQ1MjVmZDczZDQxM2Q4OGM0MWVjMDhkOGM2NDU5YTE4NDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=', '2017-10-27 15:03:23');
INSERT INTO django_session VALUES ('efe1glsiu4iise7j6zy1p9pms6a690w7', 'M2U0NzZkMzRmOTQ3MmY5ZjQ1YWRiN2Y5MjYyNmZiODc2N2EyNWRlMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ1YWU2ODQ1MjVmZDczZDQxM2Q4OGM0MWVjMDhkOGM2NDU5YTE4NDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=', '2017-09-19 10:59:59');
INSERT INTO django_session VALUES ('ezn05n12i7r1ib3e9zu4yz4jo85vknav', 'MjllMDViMmU0ZDhlYzY3ZTVlMzFiNzVlNzJlYTZjYTQ3NTkyODQzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzVlZDA1MTE0NjRhNjliY2VkMDBhOThhMWEzMjFlZjlmZWI0ZmQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-02-16 15:33:12');
INSERT INTO django_session VALUES ('fshmwnu5f8f0zulp6nd283cnf14r0rj9', 'MjllMDViMmU0ZDhlYzY3ZTVlMzFiNzVlNzJlYTZjYTQ3NTkyODQzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzVlZDA1MTE0NjRhNjliY2VkMDBhOThhMWEzMjFlZjlmZWI0ZmQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-02-19 21:02:37');
INSERT INTO django_session VALUES ('gxavockujef2rry8hnptw0ozakw9f07t', 'ZTAxMmQ1MmNiZjgyNGQxNzljMTkxNzhmYTQ0MDg3YmU1MWZjMDhkMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImVkNmExYTRhODc4ZmEzNjA2ODYyZmY0ZjY2MTE0ZjBjYjZhNTI1ZjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9', '2017-11-10 17:16:47');
INSERT INTO django_session VALUES ('h94o73s4vudw93kkbyrq1q8ppyarzsqa', 'MTNiNWMwNmRjM2RkNWQxMTAxNTYyOTU2YjllODI3YTE4OTRmOWE5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2Y2EwYTQ4MWI2NGRlNzVhNGQ2MmRlZjM3YWFmOWVmNzIwOGYwNTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI5In0=', '2017-11-01 11:52:57');
INSERT INTO django_session VALUES ('j5o4tac1fhbxwhcwvy042jrsmdl4ow51', 'ZDZhODFjNjAwM2NkYTFlMzJlNzI4YzFjMzhkZjcwMTA4OGQyZDExNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjEyOWJmODlhYjg0YTZhYWJkMzg0YzA1ZDIzMDU0MTA4MzRjMTI0MjgiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-10-09 18:58:09');
INSERT INTO django_session VALUES ('l9d2l8o9z8ybf9mayljwt1g3vnhgaqwm', 'OTkxYWUwN2U4MzRjY2ZkODBjMzIxMTBkOTI2OWZkYzBkNWNlNWE1MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImVkNmExYTRhODc4ZmEzNjA2ODYyZmY0ZjY2MTE0ZjBjYjZhNTI1ZjkiLCJfYXV0aF91c2VyX2lkIjoiMTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2017-12-19 09:18:42');
INSERT INTO django_session VALUES ('lcimqgpvi5h1f64u0umlcky1ngucmd5v', 'ZTEzNTRhMWJmZTBmZDA4YzU0YjM2M2MxOGU0OGQzYWRiOTU4ODQ5MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzZDVmMzViOWM5MjJkYzU2NzJiY2I2MjY1YmViMWE4NTI2MWMxYjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-10-05 19:50:47');
INSERT INTO django_session VALUES ('n3rbysthma9gwdfm1ciqbzdxwgud1wvm', 'NzhkZDRmZWVjZmI3MTM4MjU2ZWU5MTBiZjY2ODJmMDY3NTIxOGM4Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImRjNjEzNTBiYWMzZDk2YWUxNjUxMTY1ZjM4ZmQ1ZjE1MTRjNGNlMDUiLCJfYXV0aF91c2VyX2lkIjoiNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-02-19 15:20:13');
INSERT INTO django_session VALUES ('n8ni17h64arjxa60jv8bnheacsv4j5y8', 'MjllMDViMmU0ZDhlYzY3ZTVlMzFiNzVlNzJlYTZjYTQ3NTkyODQzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzVlZDA1MTE0NjRhNjliY2VkMDBhOThhMWEzMjFlZjlmZWI0ZmQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-01-19 19:55:02');
INSERT INTO django_session VALUES ('nsdu4eda64tpepe9mutdr0w3k95nd87f', 'OGE5OGYxZDZmZTI4NWUwMGRiMTZhNDA3MTMyNTA5MjFhMTdkM2ExODp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzVlZDA1MTE0NjRhNjliY2VkMDBhOThhMWEzMjFlZjlmZWI0ZmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2018-01-03 17:09:42');
INSERT INTO django_session VALUES ('ry5117dleus0xomgb2nsinpq2wx1223j', 'ZTAxMmQ1MmNiZjgyNGQxNzljMTkxNzhmYTQ0MDg3YmU1MWZjMDhkMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImVkNmExYTRhODc4ZmEzNjA2ODYyZmY0ZjY2MTE0ZjBjYjZhNTI1ZjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9', '2017-12-21 12:07:05');
INSERT INTO django_session VALUES ('tm2o2kdmk03smc7g1cwx2wy2lpbr3a0h', 'NGE4NmQxOWZmMzU0ZTU4MWY3YmI3YzQ3Zjc3MjY2NWIzNjA3MDY1ZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAzODlkZTc0OTI5ZDBkMDJjOWNiYmQ1NTk1ZWQyMzg0ODRjOGRlZTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-11-10 21:23:37');
INSERT INTO django_session VALUES ('tvt8hp9mcppbgzcyjd89jwhfre8rmdbl', 'NDEzOTdhMGZmYzY2MzdhZWNiNzQ2N2FiNGNmZTU5YTkyNTUxOTU0Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjJlZTg4NmE0NTdlM2VmOWQxNjVhNGRjZDc3OGUzZDY2MzUzY2I5MDAiLCJfYXV0aF91c2VyX2lkIjoiNCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-02-19 20:15:02');
INSERT INTO django_session VALUES ('vidjfmb4e2kis2eop4ii78uad18n9c1d', 'NDA0NzY5ZWMyMzBkOWJmYTQ5NmQ3YzdmNGQ0YzYzYjI0YzYyOWJhZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImRjNjEzNTBiYWMzZDk2YWUxNjUxMTY1ZjM4ZmQ1ZjE1MTRjNGNlMDUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI3In0=', '2018-01-24 16:18:20');
INSERT INTO django_session VALUES ('vlcqxqnn63pr3nxlovg5tmzjpi3npuqr', 'OGNlMDA0YWE2NmM2OTcxZTY0YmMxMWFjMWU3ZWYxZmNiZGFhMzhhOTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2NGIwNjNmMmY3ODFmYmFmNGUxNzllYThhYjRjZWRhNTI4MGU2ZTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=', '2018-01-17 13:26:05');
INSERT INTO django_session VALUES ('vwyzfgpiz1tz7fj3szoxh511s0na0qle', 'MjllMDViMmU0ZDhlYzY3ZTVlMzFiNzVlNzJlYTZjYTQ3NTkyODQzNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjY4NzVlZDA1MTE0NjRhNjliY2VkMDBhOThhMWEzMjFlZjlmZWI0ZmQiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2018-01-14 12:37:56');
INSERT INTO django_session VALUES ('w3hsiogaij80o7aexmweapubvpu4l6au', 'OGNlMDA0YWE2NmM2OTcxZTY0YmMxMWFjMWU3ZWYxZmNiZGFhMzhhOTp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2NGIwNjNmMmY3ODFmYmFmNGUxNzllYThhYjRjZWRhNTI4MGU2ZTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI4In0=', '2018-02-15 01:35:21');
INSERT INTO django_session VALUES ('wj8pop3t7ikd18w11mygxba1p7lf6cai', 'ODNiZGEzNzAyNzA3OTA2ZmI0OTE0NDQ4N2Q1NDRjMjJlNmI2YWZkZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjMyZGIyYjkyMWRhNmZhYTY2MmJlMWI1ZmMxYzI0N2I0YTdmNjlmNGUiLCJfYXV0aF91c2VyX2lkIjoiMTEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9', '2018-02-19 14:13:28');
INSERT INTO django_session VALUES ('x9r57zumuf22ix55phmuq8xrbnynrr6q', 'MjA1MTA0MzE1ZjY1YmUwMjFlMWNmMGQ1YmE3ZjBmNzVlYzYwNmUwNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2Y2EwYTQ4MWI2NGRlNzVhNGQ2MmRlZjM3YWFmOWVmNzIwOGYwNTUiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-10-11 11:16:07');
INSERT INTO django_session VALUES ('ysbwfj27b7b9x7z589kfl7r8mas80msj', 'MGEwZDcxYTAyZTMzZDRiNzk4YjE5NmExODQ0YmJjYTQ2ZWM1ZjY5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjEyOWJmODlhYjg0YTZhYWJkMzg0YzA1ZDIzMDU0MTA4MzRjMTI0MjgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=', '2017-11-02 14:19:28');
INSERT INTO django_session VALUES ('z7cuvxbkt0x2wao4o8tlvunk6k0eow6b', 'YjQ3N2E3OWM5ZTZhNmI5NTY2YTc1MGJmZTQ0YWIxN2RlNDI5ZTQwZTp7Il9hdXRoX3VzZXJfaGFzaCI6IjgyZTJjZDVkM2JjNjJmOTBiM2FiOTgxODg2NjBiODNjY2Q5NDA4NGQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=', '2017-11-02 15:08:38');

-- ----------------------------
-- Table structure for `engine_apps`
-- ----------------------------
DROP TABLE IF EXISTS `engine_apps`;
CREATE TABLE `engine_apps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `app_code` varchar(100) NOT NULL,
  `app_lang` varchar(100) NOT NULL,
  `app_type` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_code` (`app_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engine_apps
-- ----------------------------
INSERT INTO engine_apps VALUES ('1', 'Agent安装', '', 'bk_agent_setup', 'python', '', '1', '2017-08-23 15:53:21', '2017-08-23 15:53:21');
INSERT INTO engine_apps VALUES ('2', 'SSL证书监控系统', '', 'cer-mgmt', 'python', '', '1', '2017-10-09 11:31:44', '2017-10-09 11:31:44');
INSERT INTO engine_apps VALUES ('3', 'CheckList', '', 'bk_check_list', 'python', '', '1', '2017-10-09 15:45:13', '2017-10-09 15:45:13');
INSERT INTO engine_apps VALUES ('4', 'JJ1001', '', 'jj1001', 'python', '', '1', '2017-12-20 16:24:47', '2017-12-20 16:24:47');
INSERT INTO engine_apps VALUES ('5', '蓝鲸监控', '', 'bk_monitor', 'python', '', '1', '2017-12-20 18:19:22', '2017-12-20 18:19:22');

-- ----------------------------
-- Table structure for `engine_app_envs`
-- ----------------------------
DROP TABLE IF EXISTS `engine_app_envs`;
CREATE TABLE `engine_app_envs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mode` varchar(200) NOT NULL,
  `key` varchar(200) NOT NULL,
  `value` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `bk_app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `engine_app_envs_bk_app_id_79795a49b7dd8d8b_fk_engine_apps_id` (`bk_app_id`),
  CONSTRAINT `engine_app_envs_bk_app_id_79795a49b7dd8d8b_fk_engine_apps_id` FOREIGN KEY (`bk_app_id`) REFERENCES `engine_apps` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engine_app_envs
-- ----------------------------
INSERT INTO engine_app_envs VALUES ('1', 'prod', 'BK_BROKER_URL', 'amqp://bk_agent_setup:305ad34f@172.19.0.93:5672/prod_bk_agent_setup', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('2', 'prod', 'IS_USE_CELERY_BEAT', 'true', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('3', 'prod', 'DB_PASSWORD', 'bk@321', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('4', 'prod', 'DB_TYPE', 'mysql', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('5', 'prod', 'APP_ID', 'bk_agent_setup', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('6', 'prod', 'DB_PORT', '3306', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('7', 'prod', 'IS_USE_CELERY', 'true', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('8', 'prod', 'BK_PAAS_HOST', 'http://paaskghk.jingle.cn:80', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('9', 'prod', 'DB_NAME', 'bk_agent_setup', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('10', 'prod', 'DB_HOST', '172.19.0.93', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('11', 'prod', 'DB_USERNAME', 'root', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('12', 'prod', 'APP_TOKEN', '305ad34f-e038-4ed4-8899-f6ac414ca497', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1');
INSERT INTO engine_app_envs VALUES ('13', 'prod', 'BK_BROKER_URL', 'amqp://cer-mgmt:a03d2a41@172.19.0.118:5672/prod_cer-mgmt', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('14', 'prod', 'IS_USE_CELERY_BEAT', 'true', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('15', 'prod', 'DB_PASSWORD', 'bk@321', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('16', 'prod', 'DB_TYPE', 'mysql', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('17', 'prod', 'APP_ID', 'cer-mgmt', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('18', 'prod', 'DB_PORT', '3306', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('19', 'prod', 'IS_USE_CELERY', 'true', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('20', 'prod', 'BK_PAAS_HOST', 'http://paaskghk.jingle.cn:80', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('21', 'prod', 'DB_NAME', 'cer-mgmt', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('22', 'prod', 'DB_HOST', '172.19.0.93', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('23', 'prod', 'DB_USERNAME', 'root', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('24', 'prod', 'APP_TOKEN', 'a03d2a41-94e7-4caf-a290-ca4cbf6434b0', '2017-10-09 12:08:10', '2017-10-09 14:21:36', '2');
INSERT INTO engine_app_envs VALUES ('25', 'prod', 'DB_PASSWORD', 'bk@321', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '3');
INSERT INTO engine_app_envs VALUES ('26', 'prod', 'DB_TYPE', 'mysql', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '3');
INSERT INTO engine_app_envs VALUES ('27', 'prod', 'APP_ID', 'bk_check_list', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '3');
INSERT INTO engine_app_envs VALUES ('28', 'prod', 'DB_PORT', '3306', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '3');
INSERT INTO engine_app_envs VALUES ('29', 'prod', 'BK_PAAS_HOST', 'http://paaskghk.jingle.cn:80', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '3');
INSERT INTO engine_app_envs VALUES ('30', 'prod', 'DB_NAME', 'bk_check_list', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '3');
INSERT INTO engine_app_envs VALUES ('31', 'prod', 'DB_HOST', '172.19.0.93', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '3');
INSERT INTO engine_app_envs VALUES ('32', 'prod', 'DB_USERNAME', 'root', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '3');
INSERT INTO engine_app_envs VALUES ('33', 'prod', 'APP_TOKEN', '6a959172-1f81-48bb-9e8b-76f0be4d84e7', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '3');
INSERT INTO engine_app_envs VALUES ('34', 'test', 'BK_PAAS_HOST', 'http://paaskghk.jingle.cn:80', '2017-12-20 16:48:50', '2017-12-20 17:40:01', '4');
INSERT INTO engine_app_envs VALUES ('35', 'test', 'APP_TOKEN', 'fd4f6989-3cb2-48f7-94d7-59805b288416', '2017-12-20 16:48:50', '2017-12-20 17:40:01', '4');
INSERT INTO engine_app_envs VALUES ('36', 'test', 'APP_ID', 'jj1001', '2017-12-20 16:48:50', '2017-12-20 17:40:01', '4');
INSERT INTO engine_app_envs VALUES ('37', 'prod', 'BK_PAAS_HOST', 'http://paaskghk.jingle.cn:80', '2017-12-20 17:48:12', '2017-12-20 17:48:12', '4');
INSERT INTO engine_app_envs VALUES ('38', 'prod', 'APP_TOKEN', 'fd4f6989-3cb2-48f7-94d7-59805b288416', '2017-12-20 17:48:12', '2017-12-20 17:48:12', '4');
INSERT INTO engine_app_envs VALUES ('39', 'prod', 'APP_ID', 'jj1001', '2017-12-20 17:48:12', '2017-12-20 17:48:12', '4');
INSERT INTO engine_app_envs VALUES ('40', 'prod', 'DB_PASSWORD', 'bk@321', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '5');
INSERT INTO engine_app_envs VALUES ('41', 'prod', 'DB_TYPE', 'mysql', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '5');
INSERT INTO engine_app_envs VALUES ('42', 'prod', 'APP_ID', 'bk_monitor', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '5');
INSERT INTO engine_app_envs VALUES ('43', 'prod', 'DB_PORT', '3306', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '5');
INSERT INTO engine_app_envs VALUES ('44', 'prod', 'BK_PAAS_HOST', 'http://paaskghk.jingle.cn:80', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '5');
INSERT INTO engine_app_envs VALUES ('45', 'prod', 'DB_NAME', 'bk_monitor', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '5');
INSERT INTO engine_app_envs VALUES ('46', 'prod', 'DB_HOST', '172.19.0.93', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '5');
INSERT INTO engine_app_envs VALUES ('47', 'prod', 'DB_USERNAME', 'root', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '5');
INSERT INTO engine_app_envs VALUES ('48', 'prod', 'APP_TOKEN', '4a898f71-9421-4714-a687-ea5d9c5f8ea6', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '5');

-- ----------------------------
-- Table structure for `engine_app_events`
-- ----------------------------
DROP TABLE IF EXISTS `engine_app_events`;
CREATE TABLE `engine_app_events` (
  `id` char(32) NOT NULL,
  `event_type` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `bk_app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `engine_app_events_bk_app_id_638a5aa6638cf9d6_fk_engine_apps_id` (`bk_app_id`),
  CONSTRAINT `engine_app_events_bk_app_id_638a5aa6638cf9d6_fk_engine_apps_id` FOREIGN KEY (`bk_app_id`) REFERENCES `engine_apps` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engine_app_events
-- ----------------------------
INSERT INTO engine_app_events VALUES ('07382a94755046c1b4ebd0fc89dd2a92', 'app.prod.deploy', 'READY', '2017-10-09 11:31:45', '2017-10-09 11:31:45', '2');
INSERT INTO engine_app_events VALUES ('1bb7764043a84684ad34c0bc48ee98fe', 'app.prod.deploy', 'READY', '2017-10-09 11:31:45', '2017-10-09 11:31:45', '2');
INSERT INTO engine_app_events VALUES ('21cf4db0f0904526bd83bb5577e1b6e1', 'app.test.deploy', 'SUCCESS', '2017-12-20 17:40:01', '2017-12-20 17:40:13', '4');
INSERT INTO engine_app_events VALUES ('28ef0a93598e48fabb2d3402cc10e23d', 'app.prod.deploy', 'FAILURE', '2017-12-20 18:19:22', '2017-12-20 18:19:38', '5');
INSERT INTO engine_app_events VALUES ('45375ae571ee493cbd0a5584167af23c', 'app.prod.deploy', 'FAILURE', '2017-10-09 12:22:28', '2017-10-09 12:22:34', '2');
INSERT INTO engine_app_events VALUES ('49a169f9e2d347dbb50b63dbac8aea7f', 'app.prod.deploy', 'READY', '2017-10-09 11:31:45', '2017-10-09 11:31:45', '2');
INSERT INTO engine_app_events VALUES ('4b239a2bb00142fdb505048cbc25b120', 'app.prod.deploy', 'READY', '2017-10-09 11:31:45', '2017-10-09 11:31:45', '2');
INSERT INTO engine_app_events VALUES ('5d08db4460d541d6b26603e3317b7885', 'app.test.deploy', 'FAILURE', '2017-12-20 16:48:50', '2017-12-20 16:48:56', '4');
INSERT INTO engine_app_events VALUES ('5d172848b6274bc682466c5f16359c2c', 'app.test.deploy', 'FAILURE', '2017-12-20 16:49:30', '2017-12-20 16:49:35', '4');
INSERT INTO engine_app_events VALUES ('6537d2051e76407bbb17876e73f5a954', 'app.prod.deploy', 'READY', '2017-10-09 11:31:44', '2017-10-09 11:31:44', '2');
INSERT INTO engine_app_events VALUES ('713dbaaf8dcc423eab1be3fc535fb10d', 'app.prod.deploy', 'FAILURE', '2017-10-09 14:21:36', '2017-10-09 14:21:43', '2');
INSERT INTO engine_app_events VALUES ('73f1de8e1e8b4d9ba4b9b6fce44a195f', 'app.prod.deploy', 'FAILURE', '2017-08-23 15:53:21', '2017-08-23 15:53:53', '1');
INSERT INTO engine_app_events VALUES ('8e0fa828bc4f4da0a4acdfe1c54ec240', 'app.prod.deploy', 'FAILURE', '2017-10-09 15:45:13', '2017-10-09 15:45:25', '3');
INSERT INTO engine_app_events VALUES ('95e8368c8aa248f1b63cc3111b50861f', 'app.prod.deploy', 'FAILURE', '2017-10-09 12:08:10', '2017-10-09 12:08:48', '2');
INSERT INTO engine_app_events VALUES ('def36a2a43df48b198aa0c76f59bc632', 'app.test.deploy', 'FAILURE', '2017-12-20 17:10:59', '2017-12-20 17:11:07', '4');
INSERT INTO engine_app_events VALUES ('f03f8a85377e46018a84d2f5d580d730', 'app.prod.deploy', 'SUCCESS', '2017-12-20 17:48:12', '2017-12-20 17:48:29', '4');
INSERT INTO engine_app_events VALUES ('f43231eff3744731ad2edb1d49aa2688', 'app.test.deploy', 'FAILURE', '2017-12-20 17:37:27', '2017-12-20 17:37:37', '4');
INSERT INTO engine_app_events VALUES ('f80e34ee08014eab8f3bcd2a6c12acf9', 'app.prod.deploy', 'READY', '2017-10-09 11:31:45', '2017-10-09 11:31:45', '2');

-- ----------------------------
-- Table structure for `engine_app_event_logs`
-- ----------------------------
DROP TABLE IF EXISTS `engine_app_event_logs`;
CREATE TABLE `engine_app_event_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `bk_app_event_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `engine__bk_app_event_id_161ffd18f40a3d04_fk_engine_app_events_id` (`bk_app_event_id`),
  CONSTRAINT `engine__bk_app_event_id_161ffd18f40a3d04_fk_engine_app_events_id` FOREIGN KEY (`bk_app_event_id`) REFERENCES `engine_app_events` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=725 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engine_app_event_logs
-- ----------------------------
INSERT INTO engine_app_event_logs VALUES ('1', '------create virtualenv for bk_agent_setup------\r\n', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('2', 'Copying env as bk_agent_setup...\r\n', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('3', 'virtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/env/bin/predeactivate\r\n', '2017-08-23 15:53:24', '2017-08-23 15:53:24', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('4', 'virtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/env/bin/postdeactivate\r\n', '2017-08-23 15:53:24', '2017-08-23 15:53:24', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('5', 'virtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/env/bin/preactivate\r\n', '2017-08-23 15:53:24', '2017-08-23 15:53:24', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('6', 'virtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/env/bin/postactivate\r\n', '2017-08-23 15:53:24', '2017-08-23 15:53:24', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('7', 'virtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/env/bin/get_env_details\r\n', '2017-08-23 15:53:24', '2017-08-23 15:53:24', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('8', 'virtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/predeactivate\r\n', '2017-08-23 15:53:24', '2017-08-23 15:53:24', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('9', 'virtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/postdeactivate\r\n', '2017-08-23 15:53:24', '2017-08-23 15:53:24', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('10', 'virtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/preactivate\r\n', '2017-08-23 15:53:24', '2017-08-23 15:53:24', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('11', 'virtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/postactivate\r\n', '2017-08-23 15:53:24', '2017-08-23 15:53:24', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('12', 'virtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/get_env_details\r\n', '2017-08-23 15:53:24', '2017-08-23 15:53:24', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('13', '------create virtualenv success------\r\n', '2017-08-23 15:53:26', '2017-08-23 15:53:26', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('14', '------Extract app_code for bk_agent_setup------\r\n', '2017-08-23 15:53:26', '2017-08-23 15:53:26', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('15', '------Extract app_code success------\r\n', '2017-08-23 15:53:26', '2017-08-23 15:53:26', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('16', '------yum install------\r\n', '2017-08-23 15:53:26', '2017-08-23 15:53:26', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('17', 'Loaded plugins: fastestmirror, security\r\n', '2017-08-23 15:53:26', '2017-08-23 15:53:26', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('18', 'Setting up Install Process\r\n', '2017-08-23 15:53:26', '2017-08-23 15:53:26', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('19', 'Loading mirror speeds from cached hostfile\r\n', '2017-08-23 15:53:26', '2017-08-23 15:53:26', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('20', 'Package gcc-4.4.7-18.el6.x86_64 already installed and latest version\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('21', 'Package python-devel-2.6.6-66.el6_8.x86_64 already installed and latest version\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('22', 'Package openssl-devel-1.0.1e-57.el6.x86_64 already installed and latest version\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('23', 'Package libffi-3.0.5-3.2.el6.x86_64 already installed and latest version\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('24', 'Resolving Dependencies\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('25', '--> Running transaction check\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('26', '---> Package libffi-devel.x86_64 0:3.0.5-3.2.el6 will be installed\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('27', '--> Finished Dependency Resolution\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('28', '\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('29', 'Dependencies Resolved\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('30', '\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('31', '================================================================================\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('32', ' Package               Arch            Version                Repository   Size\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('33', '================================================================================\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('34', 'Installing:\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('35', ' libffi-devel          x86_64          3.0.5-3.2.el6          os           18 k\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('36', '\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('37', 'Transaction Summary\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('38', '================================================================================\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('39', 'Install       1 Package(s)\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('40', '\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('41', 'Total download size: 18 k\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('42', 'Installed size: 21 k\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('43', 'Downloading Packages:\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('44', 'Running rpm_check_debug\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('45', 'Running Transaction Test\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('46', 'Transaction Test Succeeded\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('47', 'Running Transaction\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('48', '\r  Installing : libffi-devel-3.0.5-3.2.el6.x86_64                            1/1 \r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('49', '\r  Verifying  : libffi-devel-3.0.5-3.2.el6.x86_64                            1/1 \r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('50', '\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('51', 'Installed:\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('52', '  libffi-devel.x86_64 0:3.0.5-3.2.el6                                           \r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('53', '\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('54', 'Complete!\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('55', '------yum install success------\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('56', '------pip install------\r\n', '2017-08-23 15:53:27', '2017-08-23 15:53:27', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('57', 'Collecting enum34==1.1.6\r\n', '2017-08-23 15:53:28', '2017-08-23 15:53:28', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('58', 'Collecting paramiko==2.0.2\r\n', '2017-08-23 15:53:28', '2017-08-23 15:53:28', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('59', 'Collecting jsonschema==2.5.1\r\n', '2017-08-23 15:53:29', '2017-08-23 15:53:29', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('60', 'Collecting pyasn1>=0.1.7 (from paramiko==2.0.2)\r\n', '2017-08-23 15:53:29', '2017-08-23 15:53:29', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('61', 'Collecting cryptography>=1.1 (from paramiko==2.0.2)\r\n', '2017-08-23 15:53:29', '2017-08-23 15:53:29', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('62', 'Collecting functools32; python_version == \"2.7\" (from jsonschema==2.5.1)\r\n', '2017-08-23 15:53:29', '2017-08-23 15:53:29', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('63', 'Collecting idna>=2.1 (from cryptography>=1.1->paramiko==2.0.2)\r\n', '2017-08-23 15:53:30', '2017-08-23 15:53:30', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('64', 'Collecting asn1crypto>=0.21.0 (from cryptography>=1.1->paramiko==2.0.2)\r\n', '2017-08-23 15:53:30', '2017-08-23 15:53:30', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('65', 'Collecting packaging (from cryptography>=1.1->paramiko==2.0.2)\r\n', '2017-08-23 15:53:30', '2017-08-23 15:53:30', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('66', 'Requirement already satisfied: six>=1.4.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/lib/python2.7/site-packages (from cryptography>=1.1->paramiko==2.0.2)\r\n', '2017-08-23 15:53:30', '2017-08-23 15:53:30', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('67', 'Requirement already satisfied: setuptools>=11.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/lib/python2.7/site-packages/setuptools-30.0.0-py2.7.egg (from cryptography>=1.1->paramiko==2.0.2)\r\n', '2017-08-23 15:53:30', '2017-08-23 15:53:30', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('68', 'Collecting ipaddress (from cryptography>=1.1->paramiko==2.0.2)\r\n', '2017-08-23 15:53:30', '2017-08-23 15:53:30', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('69', 'Collecting cffi>=1.4.1 (from cryptography>=1.1->paramiko==2.0.2)\r\n', '2017-08-23 15:53:30', '2017-08-23 15:53:30', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('70', 'Collecting pyparsing (from packaging->cryptography>=1.1->paramiko==2.0.2)\r\n', '2017-08-23 15:53:30', '2017-08-23 15:53:30', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('71', 'Collecting pycparser (from cffi>=1.4.1->cryptography>=1.1->paramiko==2.0.2)\r\n', '2017-08-23 15:53:30', '2017-08-23 15:53:30', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('72', 'Installing collected packages: enum34, pyasn1, idna, asn1crypto, pyparsing, packaging, ipaddress, pycparser, cffi, cryptography, paramiko, functools32, jsonschema\r\n', '2017-08-23 15:53:31', '2017-08-23 15:53:31', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('73', '  Running setup.py install for pycparser: started\r\n', '2017-08-23 15:53:31', '2017-08-23 15:53:31', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('74', '    Running setup.py install for pycparser: finished with status \'done\'\r\n', '2017-08-23 15:53:31', '2017-08-23 15:53:31', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('75', '  Running setup.py install for cryptography: started\r\n', '2017-08-23 15:53:32', '2017-08-23 15:53:32', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('76', '    Running setup.py install for cryptography: finished with status \'done\'\r\n', '2017-08-23 15:53:45', '2017-08-23 15:53:45', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('77', '  Running setup.py install for functools32: started\r\n', '2017-08-23 15:53:45', '2017-08-23 15:53:45', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('78', '    Running setup.py install for functools32: finished with status \'done\'\r\n', '2017-08-23 15:53:45', '2017-08-23 15:53:45', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('79', 'Successfully installed asn1crypto-0.22.0 cffi-1.10.0 cryptography-1.8.1 enum34-1.1.6 functools32-3.2.3.post2 idna-2.5 ipaddress-1.0.18 jsonschema-2.5.1 packaging-16.8 paramiko-2.0.2 pyasn1-0.2.3 pycparser-2.17 pyparsing-2.2.0\r\n', '2017-08-23 15:53:46', '2017-08-23 15:53:46', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('80', '------pip install success------\r\n', '2017-08-23 15:53:46', '2017-08-23 15:53:46', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('81', '------change db------\r\n', '2017-08-23 15:53:46', '2017-08-23 15:53:46', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('82', 'Operations to perform:\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('83', '  Synchronize unmigrated apps: staticfiles, djcelery, messages, filebrowser\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('84', '  Apply all migrations: app_control, webshell, account, sessions, admin, sites, auth, contenttypes, miya\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('85', 'Synchronizing apps without migrations:\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('86', '  Creating tables...\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('87', '    Creating table celery_taskmeta\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('88', '    Creating table celery_tasksetmeta\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('89', '    Creating table djcelery_intervalschedule\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('90', '    Creating table djcelery_crontabschedule\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('91', '    Creating table djcelery_periodictasks\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('92', '    Creating table djcelery_periodictask\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('93', '    Creating table djcelery_workerstate\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('94', '    Creating table djcelery_taskstate\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('95', '    Running deferred SQL...\r\n', '2017-08-23 15:53:47', '2017-08-23 15:53:47', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('96', '  Installing custom SQL...\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('97', 'Running migrations:\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('98', '  Rendering model states... DONE\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('99', '  Applying contenttypes.0001_initial... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('100', '  Applying contenttypes.0002_remove_content_type_name... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('101', '  Applying auth.0001_initial... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('102', '  Applying auth.0002_alter_permission_name_max_length... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('103', '  Applying auth.0003_alter_user_email_max_length... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('104', '  Applying auth.0004_alter_user_username_opts... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('105', '  Applying auth.0005_alter_user_last_login_null... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('106', '  Applying auth.0006_require_contenttypes_0002... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('107', '  Applying account.0001_initial... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('108', '  Applying account.0002_initial_user_data... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('109', '  Applying account.0003_auto_20160915_0955... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('110', '  Applying admin.0001_initial... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('111', '  Applying app_control.0001_initial... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('112', '  Applying app_control.0002_initial_app_control... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('113', '  Applying miya.0001_initial... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('114', '  Applying sessions.0001_initial... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('115', '  Applying sites.0001_initial... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('116', '  Applying webshell.0001_initial... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('117', '  Applying webshell.0002_auto_20160815_1132... OK\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('118', 'my_callback\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('119', 'init_db\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('120', 'is_super_enable: 0\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('121', 'reset default_platforms\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('122', 'reset direct connect plat_id\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('123', 'init nginx_cfg and zk_cfg\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('124', 'init_db success.\r\n', '2017-08-23 15:53:48', '2017-08-23 15:53:48', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('125', 'Operations to perform:\r\n', '2017-08-23 15:53:49', '2017-08-23 15:53:49', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('126', '  Synchronize unmigrated apps: staticfiles, djcelery, messages, filebrowser\r\n', '2017-08-23 15:53:49', '2017-08-23 15:53:49', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('127', '  Apply all migrations: app_control, webshell, account, sessions, admin, sites, auth, contenttypes, miya\r\n', '2017-08-23 15:53:49', '2017-08-23 15:53:49', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('128', 'Synchronizing apps without migrations:\r\n', '2017-08-23 15:53:49', '2017-08-23 15:53:49', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('129', '  Creating tables...\r\n', '2017-08-23 15:53:49', '2017-08-23 15:53:49', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('130', '    Running deferred SQL...\r\n', '2017-08-23 15:53:49', '2017-08-23 15:53:49', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('131', '  Installing custom SQL...\r\n', '2017-08-23 15:53:49', '2017-08-23 15:53:49', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('132', 'Running migrations:\r\n', '2017-08-23 15:53:49', '2017-08-23 15:53:49', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('133', '  No migrations to apply.\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('134', '  Your models have changes that are not yet reflected in a migration, and so won\'t be applied.\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('135', '  Run \'manage.py makemigrations\' to make new migrations, and then re-run \'manage.py migrate\' to apply them.\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('136', 'my_callback\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('137', 'init_db\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('138', 'is_super_enable: 0\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('139', 'reset default_platforms\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('140', 'reset direct connect plat_id\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('141', 'init nginx_cfg and zk_cfg\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('142', 'init_db success.\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('143', '------change db success------\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('144', '------ start app server ------\r\n', '2017-08-23 15:53:50', '2017-08-23 15:53:50', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('145', 'Error: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\n', '2017-08-23 15:53:51', '2017-08-23 15:53:51', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('146', 'For help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/supervisord -h\r\n', '2017-08-23 15:53:51', '2017-08-23 15:53:51', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('147', 'Job Fail\r\n', '2017-08-23 15:53:53', '2017-08-23 15:53:53', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('148', '', '2017-08-23 15:53:53', '2017-08-23 15:53:53', '73f1de8e1e8b4d9ba4b9b6fce44a195f');
INSERT INTO engine_app_event_logs VALUES ('149', '------create virtualenv for cer-mgmt------\r\n', '2017-10-09 12:08:11', '2017-10-09 12:08:11', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('150', 'Copying env as cer-mgmt...\r\n', '2017-10-09 12:08:11', '2017-10-09 12:08:11', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('151', '------create virtualenv success------\r\n', '2017-10-09 12:08:22', '2017-10-09 12:08:22', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('152', '------Extract app_code for cer-mgmt------\r\n', '2017-10-09 12:08:22', '2017-10-09 12:08:22', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('153', '------Extract app_code success------\r\n', '2017-10-09 12:08:22', '2017-10-09 12:08:22', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('154', '------pip install------\r\n', '2017-10-09 12:08:22', '2017-10-09 12:08:22', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('155', 'Collecting pyOpenSSL==16.2.0\r\n', '2017-10-09 12:08:23', '2017-10-09 12:08:23', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('156', 'Collecting cryptography>=1.3.4 (from pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:08:23', '2017-10-09 12:08:23', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('157', 'Requirement already satisfied: six>=1.5.2 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:08:24', '2017-10-09 12:08:24', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('158', 'Collecting idna>=2.1 (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:08:24', '2017-10-09 12:08:24', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('159', 'Collecting asn1crypto>=0.21.0 (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:08:24', '2017-10-09 12:08:24', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('160', 'Collecting packaging (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:08:24', '2017-10-09 12:08:24', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('161', 'Requirement already satisfied: setuptools>=11.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages/setuptools-30.0.0-py2.7.egg (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:08:24', '2017-10-09 12:08:24', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('162', 'Collecting enum34 (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:08:24', '2017-10-09 12:08:24', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('163', 'Collecting ipaddress (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:08:24', '2017-10-09 12:08:24', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('164', 'Collecting cffi>=1.4.1 (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:08:25', '2017-10-09 12:08:25', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('165', 'Collecting pyparsing (from packaging->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:08:25', '2017-10-09 12:08:25', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('166', 'Collecting pycparser (from cffi>=1.4.1->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:08:25', '2017-10-09 12:08:25', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('167', 'Installing collected packages: idna, asn1crypto, pyparsing, packaging, enum34, ipaddress, pycparser, cffi, cryptography, pyOpenSSL\r\n', '2017-10-09 12:08:25', '2017-10-09 12:08:25', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('168', '  Running setup.py install for pycparser: started\r\n', '2017-10-09 12:08:25', '2017-10-09 12:08:25', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('169', '    Running setup.py install for pycparser: finished with status \'done\'\r\n', '2017-10-09 12:08:26', '2017-10-09 12:08:26', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('170', '  Running setup.py install for cryptography: started\r\n', '2017-10-09 12:08:26', '2017-10-09 12:08:26', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('171', '    Running setup.py install for cryptography: finished with status \'done\'\r\n', '2017-10-09 12:08:41', '2017-10-09 12:08:41', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('172', 'Successfully installed asn1crypto-0.22.0 cffi-1.10.0 cryptography-1.8.1 enum34-1.1.6 idna-2.5 ipaddress-1.0.18 packaging-16.8 pyOpenSSL-16.2.0 pycparser-2.17 pyparsing-2.2.0\r\n', '2017-10-09 12:08:41', '2017-10-09 12:08:41', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('173', '------pip install success------\r\n', '2017-10-09 12:08:41', '2017-10-09 12:08:41', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('174', '------change db------\r\n', '2017-10-09 12:08:41', '2017-10-09 12:08:41', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('175', 'Operations to perform:\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('176', '  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('177', '  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('178', 'Synchronizing apps without migrations:\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('179', '  Creating tables...\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('180', '    Creating table celery_taskmeta\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('181', '    Creating table celery_tasksetmeta\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('182', '    Creating table djcelery_intervalschedule\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('183', '    Creating table djcelery_crontabschedule\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('184', '    Creating table djcelery_periodictasks\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('185', '    Creating table djcelery_periodictask\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('186', '    Creating table djcelery_workerstate\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('187', '    Creating table djcelery_taskstate\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('188', '    Running deferred SQL...\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('189', '  Installing custom SQL...\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('190', 'Running migrations:\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('191', '  Rendering model states... DONE\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('192', '  Applying contenttypes.0001_initial... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('193', '  Applying contenttypes.0002_remove_content_type_name... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('194', '  Applying auth.0001_initial... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('195', '  Applying auth.0002_alter_permission_name_max_length... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('196', '  Applying auth.0003_alter_user_email_max_length... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('197', '  Applying auth.0004_alter_user_username_opts... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('198', '  Applying auth.0005_alter_user_last_login_null... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('199', '  Applying auth.0006_require_contenttypes_0002... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('200', '  Applying account.0001_initial... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('201', '  Applying account.0002_initial_user_data... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('202', '  Applying account.0003_auto_20161208_1043... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('203', '  Applying admin.0001_initial... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('204', '  Applying app_control.0001_initial... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('205', '  Applying app_control.0002_initial_app_control... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('206', '  Applying home_application.0001_initial... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('207', '  Applying sessions.0001_initial... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('208', '  Applying sites.0001_initial... OK\r\n', '2017-10-09 12:08:43', '2017-10-09 12:08:43', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('209', 'Operations to perform:\r\n', '2017-10-09 12:08:44', '2017-10-09 12:08:44', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('210', '  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n', '2017-10-09 12:08:44', '2017-10-09 12:08:44', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('211', '  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\n', '2017-10-09 12:08:44', '2017-10-09 12:08:44', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('212', 'Synchronizing apps without migrations:\r\n', '2017-10-09 12:08:44', '2017-10-09 12:08:44', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('213', '  Creating tables...\r\n', '2017-10-09 12:08:44', '2017-10-09 12:08:44', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('214', '    Running deferred SQL...\r\n', '2017-10-09 12:08:45', '2017-10-09 12:08:45', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('215', '  Installing custom SQL...\r\n', '2017-10-09 12:08:45', '2017-10-09 12:08:45', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('216', 'Running migrations:\r\n', '2017-10-09 12:08:45', '2017-10-09 12:08:45', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('217', '  No migrations to apply.\r\n', '2017-10-09 12:08:45', '2017-10-09 12:08:45', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('218', '------change db success------\r\n', '2017-10-09 12:08:45', '2017-10-09 12:08:45', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('219', '------ start app server ------\r\n', '2017-10-09 12:08:45', '2017-10-09 12:08:45', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('220', 'Error: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\n', '2017-10-09 12:08:46', '2017-10-09 12:08:46', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('221', 'For help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/bin/supervisord -h\r\n', '2017-10-09 12:08:46', '2017-10-09 12:08:46', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('222', 'Job Fail\r\n', '2017-10-09 12:08:48', '2017-10-09 12:08:48', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('223', '', '2017-10-09 12:08:48', '2017-10-09 12:08:48', '95e8368c8aa248f1b63cc3111b50861f');
INSERT INTO engine_app_event_logs VALUES ('224', '------create virtualenv for cer-mgmt------\r\n', '2017-10-09 12:22:28', '2017-10-09 12:22:28', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('225', '------create virtualenv success------\r\n', '2017-10-09 12:22:28', '2017-10-09 12:22:28', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('226', '------Extract app_code for cer-mgmt------\r\n', '2017-10-09 12:22:28', '2017-10-09 12:22:28', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('227', '------Extract app_code success------\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('228', '------pip install------\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('229', 'Requirement already satisfied: pyOpenSSL==16.2.0 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('230', 'Requirement already satisfied: cryptography>=1.3.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('231', 'Requirement already satisfied: six>=1.5.2 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('232', 'Requirement already satisfied: idna>=2.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('233', 'Requirement already satisfied: asn1crypto>=0.21.0 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('234', 'Requirement already satisfied: packaging in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('235', 'Requirement already satisfied: setuptools>=11.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages/setuptools-30.0.0-py2.7.egg (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('236', 'Requirement already satisfied: enum34 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('237', 'Requirement already satisfied: ipaddress in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('238', 'Requirement already satisfied: cffi>=1.4.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('239', 'Requirement already satisfied: pyparsing in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from packaging->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('240', 'Requirement already satisfied: pycparser in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cffi>=1.4.1->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('241', '------pip install success------\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('242', '------change db------\r\n', '2017-10-09 12:22:29', '2017-10-09 12:22:29', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('243', 'Operations to perform:\r\n', '2017-10-09 12:22:30', '2017-10-09 12:22:30', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('244', '  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n', '2017-10-09 12:22:30', '2017-10-09 12:22:30', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('245', '  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\n', '2017-10-09 12:22:30', '2017-10-09 12:22:30', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('246', 'Synchronizing apps without migrations:\r\n', '2017-10-09 12:22:30', '2017-10-09 12:22:30', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('247', '  Creating tables...\r\n', '2017-10-09 12:22:30', '2017-10-09 12:22:30', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('248', '    Running deferred SQL...\r\n', '2017-10-09 12:22:30', '2017-10-09 12:22:30', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('249', '  Installing custom SQL...\r\n', '2017-10-09 12:22:30', '2017-10-09 12:22:30', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('250', 'Running migrations:\r\n', '2017-10-09 12:22:30', '2017-10-09 12:22:30', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('251', '  No migrations to apply.\r\n', '2017-10-09 12:22:30', '2017-10-09 12:22:30', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('252', 'Operations to perform:\r\n', '2017-10-09 12:22:31', '2017-10-09 12:22:31', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('253', '  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n', '2017-10-09 12:22:31', '2017-10-09 12:22:31', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('254', '  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\n', '2017-10-09 12:22:31', '2017-10-09 12:22:31', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('255', 'Synchronizing apps without migrations:\r\n', '2017-10-09 12:22:31', '2017-10-09 12:22:31', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('256', '  Creating tables...\r\n', '2017-10-09 12:22:31', '2017-10-09 12:22:31', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('257', '    Running deferred SQL...\r\n', '2017-10-09 12:22:31', '2017-10-09 12:22:31', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('258', '  Installing custom SQL...\r\n', '2017-10-09 12:22:31', '2017-10-09 12:22:31', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('259', 'Running migrations:\r\n', '2017-10-09 12:22:31', '2017-10-09 12:22:31', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('260', '  No migrations to apply.\r\n', '2017-10-09 12:22:31', '2017-10-09 12:22:31', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('261', '------change db success------\r\n', '2017-10-09 12:22:31', '2017-10-09 12:22:31', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('262', '------ start app server ------\r\n', '2017-10-09 12:22:32', '2017-10-09 12:22:32', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('263', 'Error: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\n', '2017-10-09 12:22:32', '2017-10-09 12:22:32', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('264', 'For help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/bin/supervisord -h\r\n', '2017-10-09 12:22:32', '2017-10-09 12:22:32', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('265', 'Job Fail\r\n', '2017-10-09 12:22:34', '2017-10-09 12:22:34', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('266', '', '2017-10-09 12:22:34', '2017-10-09 12:22:34', '45375ae571ee493cbd0a5584167af23c');
INSERT INTO engine_app_event_logs VALUES ('267', '------create virtualenv for cer-mgmt------\r\n', '2017-10-09 14:21:36', '2017-10-09 14:21:36', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('268', '------create virtualenv success------\r\n', '2017-10-09 14:21:36', '2017-10-09 14:21:36', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('269', '------Extract app_code for cer-mgmt------\r\n', '2017-10-09 14:21:36', '2017-10-09 14:21:36', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('270', '------Extract app_code success------\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('271', '------pip install------\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('272', 'Requirement already satisfied: pyOpenSSL==16.2.0 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('273', 'Requirement already satisfied: cryptography>=1.3.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from pyOpenSSL==16.2.0)\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('274', 'Requirement already satisfied: six>=1.5.2 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from pyOpenSSL==16.2.0)\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('275', 'Requirement already satisfied: idna>=2.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('276', 'Requirement already satisfied: asn1crypto>=0.21.0 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('277', 'Requirement already satisfied: packaging in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('278', 'Requirement already satisfied: setuptools>=11.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages/setuptools-30.0.0-py2.7.egg (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('279', 'Requirement already satisfied: enum34 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('280', 'Requirement already satisfied: ipaddress in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('281', 'Requirement already satisfied: cffi>=1.4.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('282', 'Requirement already satisfied: pyparsing in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from packaging->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('283', 'Requirement already satisfied: pycparser in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cffi>=1.4.1->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('284', '------pip install success------\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('285', '------change db------\r\n', '2017-10-09 14:21:37', '2017-10-09 14:21:37', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('286', 'Operations to perform:\r\n', '2017-10-09 14:21:38', '2017-10-09 14:21:38', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('287', '  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n', '2017-10-09 14:21:38', '2017-10-09 14:21:38', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('288', '  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\n', '2017-10-09 14:21:38', '2017-10-09 14:21:38', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('289', 'Synchronizing apps without migrations:\r\n', '2017-10-09 14:21:38', '2017-10-09 14:21:38', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('290', '  Creating tables...\r\n', '2017-10-09 14:21:38', '2017-10-09 14:21:38', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('291', '    Running deferred SQL...\r\n', '2017-10-09 14:21:38', '2017-10-09 14:21:38', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('292', '  Installing custom SQL...\r\n', '2017-10-09 14:21:38', '2017-10-09 14:21:38', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('293', 'Running migrations:\r\n', '2017-10-09 14:21:38', '2017-10-09 14:21:38', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('294', '  No migrations to apply.\r\n', '2017-10-09 14:21:38', '2017-10-09 14:21:38', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('295', 'Operations to perform:\r\n', '2017-10-09 14:21:39', '2017-10-09 14:21:39', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('296', '  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n', '2017-10-09 14:21:39', '2017-10-09 14:21:39', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('297', '  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\n', '2017-10-09 14:21:39', '2017-10-09 14:21:39', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('298', 'Synchronizing apps without migrations:\r\n', '2017-10-09 14:21:39', '2017-10-09 14:21:39', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('299', '  Creating tables...\r\n', '2017-10-09 14:21:39', '2017-10-09 14:21:39', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('300', '    Running deferred SQL...\r\n', '2017-10-09 14:21:39', '2017-10-09 14:21:39', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('301', '  Installing custom SQL...\r\n', '2017-10-09 14:21:39', '2017-10-09 14:21:39', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('302', 'Running migrations:\r\n', '2017-10-09 14:21:39', '2017-10-09 14:21:39', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('303', '  No migrations to apply.\r\n', '2017-10-09 14:21:39', '2017-10-09 14:21:39', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('304', '------change db success------\r\n', '2017-10-09 14:21:39', '2017-10-09 14:21:39', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('305', '------ start app server ------\r\n', '2017-10-09 14:21:40', '2017-10-09 14:21:40', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('306', 'Error: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\n', '2017-10-09 14:21:40', '2017-10-09 14:21:40', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('307', 'For help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/bin/supervisord -h\r\n', '2017-10-09 14:21:40', '2017-10-09 14:21:40', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('308', 'Job Fail\r\n', '2017-10-09 14:21:43', '2017-10-09 14:21:43', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('309', '', '2017-10-09 14:21:43', '2017-10-09 14:21:43', '713dbaaf8dcc423eab1be3fc535fb10d');
INSERT INTO engine_app_event_logs VALUES ('310', '------create virtualenv for bk_check_list------\r\n', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('311', 'Copying env as bk_check_list...\r\n', '2017-10-09 15:45:14', '2017-10-09 15:45:14', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('312', '------create virtualenv success------\r\n', '2017-10-09 15:45:18', '2017-10-09 15:45:18', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('313', '------Extract app_code for bk_check_list------\r\n', '2017-10-09 15:45:18', '2017-10-09 15:45:18', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('314', '------Extract app_code success------\r\n', '2017-10-09 15:45:18', '2017-10-09 15:45:18', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('315', '------change db------\r\n', '2017-10-09 15:45:18', '2017-10-09 15:45:18', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('316', 'Operations to perform:\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('317', '  Synchronize unmigrated apps: staticfiles, messages\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('318', '  Apply all migrations: app_control, account, sessions, admin, task_center, sites, auth, contenttypes\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('319', 'Synchronizing apps without migrations:\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('320', '  Creating tables...\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('321', '    Running deferred SQL...\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('322', '  Installing custom SQL...\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('323', 'Running migrations:\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('324', '  Rendering model states... DONE\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('325', '  Applying contenttypes.0001_initial... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('326', '  Applying contenttypes.0002_remove_content_type_name... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('327', '  Applying auth.0001_initial... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('328', '  Applying auth.0002_alter_permission_name_max_length... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('329', '  Applying auth.0003_alter_user_email_max_length... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('330', '  Applying auth.0004_alter_user_username_opts... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('331', '  Applying auth.0005_alter_user_last_login_null... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('332', '  Applying auth.0006_require_contenttypes_0002... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('333', '  Applying account.0001_initial... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('334', '  Applying account.0002_initial_user_data... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('335', '  Applying account.0003_auto_20160825_1717... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('336', '  Applying admin.0001_initial... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('337', '  Applying app_control.0001_initial... OK\r\n', '2017-10-09 15:45:20', '2017-10-09 15:45:20', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('338', '  Applying app_control.0002_initial_app_control... OK\r\n', '2017-10-09 15:45:21', '2017-10-09 15:45:21', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('339', '  Applying sessions.0001_initial... OK\r\n', '2017-10-09 15:45:21', '2017-10-09 15:45:21', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('340', '  Applying sites.0001_initial... OK\r\n', '2017-10-09 15:45:21', '2017-10-09 15:45:21', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('341', '  Applying task_center.0001_initial... OK\r\n', '2017-10-09 15:45:21', '2017-10-09 15:45:21', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('342', '  Applying task_center.0002_auto_20170427_1023... OK\r\n', '2017-10-09 15:45:21', '2017-10-09 15:45:21', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('343', 'Operations to perform:\r\n', '2017-10-09 15:45:22', '2017-10-09 15:45:22', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('344', '  Synchronize unmigrated apps: staticfiles, messages\r\n', '2017-10-09 15:45:22', '2017-10-09 15:45:22', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('345', '  Apply all migrations: app_control, account, sessions, admin, task_center, sites, auth, contenttypes\r\n', '2017-10-09 15:45:22', '2017-10-09 15:45:22', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('346', 'Synchronizing apps without migrations:\r\n', '2017-10-09 15:45:22', '2017-10-09 15:45:22', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('347', '  Creating tables...\r\n', '2017-10-09 15:45:22', '2017-10-09 15:45:22', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('348', '    Running deferred SQL...\r\n', '2017-10-09 15:45:22', '2017-10-09 15:45:22', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('349', '  Installing custom SQL...\r\n', '2017-10-09 15:45:22', '2017-10-09 15:45:22', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('350', 'Running migrations:\r\n', '2017-10-09 15:45:22', '2017-10-09 15:45:22', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('351', '  No migrations to apply.\r\n', '2017-10-09 15:45:22', '2017-10-09 15:45:22', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('352', '------change db success------\r\n', '2017-10-09 15:45:22', '2017-10-09 15:45:22', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('353', '------ start app server ------\r\n', '2017-10-09 15:45:23', '2017-10-09 15:45:23', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('354', 'Error: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\n', '2017-10-09 15:45:23', '2017-10-09 15:45:23', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('355', 'For help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_check_list/bin/supervisord -h\r\n', '2017-10-09 15:45:23', '2017-10-09 15:45:23', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('356', 'Job Fail\r\n', '2017-10-09 15:45:25', '2017-10-09 15:45:25', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('357', '', '2017-10-09 15:45:25', '2017-10-09 15:45:25', '8e0fa828bc4f4da0a4acdfe1c54ec240');
INSERT INTO engine_app_event_logs VALUES ('358', '------create virtualenv for jj1001------\r\n', '2017-12-20 16:48:50', '2017-12-20 16:48:50', '5d08db4460d541d6b26603e3317b7885');
INSERT INTO engine_app_event_logs VALUES ('359', 'Copying env as jj1001...\r\n', '2017-12-20 16:48:51', '2017-12-20 16:48:51', '5d08db4460d541d6b26603e3317b7885');
INSERT INTO engine_app_event_logs VALUES ('360', '------create virtualenv success------\r\n', '2017-12-20 16:48:56', '2017-12-20 16:48:56', '5d08db4460d541d6b26603e3317b7885');
INSERT INTO engine_app_event_logs VALUES ('361', '------Get app_code for jj1001------\r\n', '2017-12-20 16:48:56', '2017-12-20 16:48:56', '5d08db4460d541d6b26603e3317b7885');
INSERT INTO engine_app_event_logs VALUES ('362', '/data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/paasagent/etc/build/build: line 74: git: command not found\r\n', '2017-12-20 16:48:56', '2017-12-20 16:48:56', '5d08db4460d541d6b26603e3317b7885');
INSERT INTO engine_app_event_logs VALUES ('363', '------Get app_code fail------\r\n', '2017-12-20 16:48:56', '2017-12-20 16:48:56', '5d08db4460d541d6b26603e3317b7885');
INSERT INTO engine_app_event_logs VALUES ('364', '', '2017-12-20 16:48:56', '2017-12-20 16:48:56', '5d08db4460d541d6b26603e3317b7885');
INSERT INTO engine_app_event_logs VALUES ('365', '------create virtualenv for jj1001------\r\n', '2017-12-20 16:49:30', '2017-12-20 16:49:30', '5d172848b6274bc682466c5f16359c2c');
INSERT INTO engine_app_event_logs VALUES ('366', '------create virtualenv success------\r\n', '2017-12-20 16:49:31', '2017-12-20 16:49:31', '5d172848b6274bc682466c5f16359c2c');
INSERT INTO engine_app_event_logs VALUES ('367', '------Get app_code for jj1001------\r\n', '2017-12-20 16:49:31', '2017-12-20 16:49:31', '5d172848b6274bc682466c5f16359c2c');
INSERT INTO engine_app_event_logs VALUES ('368', 'Initialized empty Git repository in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/projects/jj1001/code/jj1001/.git/\r\n', '2017-12-20 16:49:31', '2017-12-20 16:49:31', '5d172848b6274bc682466c5f16359c2c');
INSERT INTO engine_app_event_logs VALUES ('369', '------Get app_code success------\r\n', '2017-12-20 16:49:33', '2017-12-20 16:49:33', '5d172848b6274bc682466c5f16359c2c');
INSERT INTO engine_app_event_logs VALUES ('370', '------pip install------\r\n', '2017-12-20 16:49:33', '2017-12-20 16:49:33', '5d172848b6274bc682466c5f16359c2c');
INSERT INTO engine_app_event_logs VALUES ('371', 'Could not open requirements file: [Errno 2] No such file or directory: \'requirements.txt\'\r\n', '2017-12-20 16:49:34', '2017-12-20 16:49:34', '5d172848b6274bc682466c5f16359c2c');
INSERT INTO engine_app_event_logs VALUES ('372', '------pip install fail------\r\n', '2017-12-20 16:49:35', '2017-12-20 16:49:35', '5d172848b6274bc682466c5f16359c2c');
INSERT INTO engine_app_event_logs VALUES ('373', '', '2017-12-20 16:49:35', '2017-12-20 16:49:35', '5d172848b6274bc682466c5f16359c2c');
INSERT INTO engine_app_event_logs VALUES ('374', '------create virtualenv for jj1001------\r\n', '2017-12-20 17:10:59', '2017-12-20 17:10:59', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('375', '------create virtualenv success------\r\n', '2017-12-20 17:10:59', '2017-12-20 17:10:59', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('376', '------Get app_code for jj1001------\r\n', '2017-12-20 17:10:59', '2017-12-20 17:10:59', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('377', 'Initialized empty Git repository in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/projects/jj1001/code/jj1001/.git/\r\n', '2017-12-20 17:10:59', '2017-12-20 17:10:59', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('378', '------Get app_code success------\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('379', '------pip install------\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('380', 'Requirement already satisfied: Django==1.8.11 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 6))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('381', 'Requirement already satisfied: pymysql==0.6.7 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 7))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('382', 'Requirement already satisfied: MarkupSafe==0.23 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 8))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('383', 'Requirement already satisfied: Mako==1.0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 9))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('384', 'Requirement already satisfied: httplib2==0.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 10))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('385', 'Requirement already satisfied: suds==0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 11))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('386', 'Requirement already satisfied: celery==3.1.18 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 12))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('387', 'Requirement already satisfied: django-celery==3.1.16 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 13))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('388', 'Requirement already satisfied: supervisor==3.3.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 14))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('389', 'Requirement already satisfied: uWSGI==2.0.13.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 15))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('390', 'Requirement already satisfied: requests==2.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 16))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('391', 'Requirement already satisfied: pytz>dev in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('392', 'Requirement already satisfied: kombu<3.1,>=3.0.25 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('393', 'Requirement already satisfied: billiard<3.4,>=3.3.0.20 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('394', 'Requirement already satisfied: meld3>=0.6.5 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from supervisor==3.3.1->-r requirements.txt (line 14))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('395', 'Requirement already satisfied: amqp<2.0,>=1.4.9 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('396', 'Requirement already satisfied: anyjson>=0.3.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('397', '------pip install success------\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('398', '------change db------\r\n', '2017-12-20 17:11:04', '2017-12-20 17:11:04', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('399', 'Traceback (most recent call last):\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('400', '  File \"manage.py\", line 17, in <module>\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('401', '    execute_from_command_line(sys.argv)\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('402', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/management/__init__.py\", line 354, in execute_from_command_line\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('403', '    utility.execute()\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('404', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/management/__init__.py\", line 346, in execute\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('405', '    self.fetch_command(subcommand).run_from_argv(self.argv)\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('406', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/management/base.py\", line 394, in run_from_argv\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('407', '    self.execute(*args, **cmd_options)\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('408', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/management/base.py\", line 444, in execute\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('409', '    self.check()\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('410', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/management/base.py\", line 482, in check\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('411', '    include_deployment_checks=include_deployment_checks,\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('412', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/checks/registry.py\", line 72, in run_checks\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('413', '    new_errors = check(app_configs=app_configs)\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('414', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/checks/model_checks.py\", line 28, in check_all_models\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('415', '    errors.extend(model.check(**kwargs))\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('416', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/base.py\", line 1205, in check\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('417', '    errors.extend(cls._check_fields(**kwargs))\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('418', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/base.py\", line 1282, in _check_fields\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('419', '    errors.extend(field.check(**kwargs))\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('420', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/fields/__init__.py\", line 934, in check\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('421', '    errors = super(AutoField, self).check(**kwargs)\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('422', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/fields/__init__.py\", line 207, in check\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('423', '    errors.extend(self._check_backend_specific_checks(**kwargs))\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('424', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/fields/__init__.py\", line 306, in _check_backend_specific_checks\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('425', '    return connection.validation.check_field(self, **kwargs)\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('426', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/mysql/validation.py\", line 18, in check_field\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('427', '    field_type = field.db_type(connection)\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('428', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/fields/__init__.py\", line 614, in db_type\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('429', '    return connection.data_types[self.get_internal_type()] % data\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('430', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/__init__.py\", line 36, in __getattr__\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('431', '    return getattr(connections[DEFAULT_DB_ALIAS], item)\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('432', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/utils/functional.py\", line 59, in __get__\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('433', '    res = instance.__dict__[self.name] = self.func(instance)\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('434', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/mysql/base.py\", line 196, in data_types\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('435', '    if self.features.supports_microsecond_precision:\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('436', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/utils/functional.py\", line 59, in __get__\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('437', '    res = instance.__dict__[self.name] = self.func(instance)\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('438', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/mysql/features.py\", line 52, in supports_microsecond_precision\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('439', '    return self.connection.mysql_version >= (5, 6, 4) and Database.version_info >= (1, 2, 5)\r\n', '2017-12-20 17:11:06', '2017-12-20 17:11:06', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('440', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/utils/functional.py\", line 59, in __get__\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('441', '    res = instance.__dict__[self.name] = self.func(instance)\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('442', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/mysql/base.py\", line 371, in mysql_version\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('443', '    with self.temporary_connection():\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('444', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/contextlib.py\", line 17, in __enter__\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('445', '    return self.gen.next()\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('446', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 462, in temporary_connection\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('447', '    cursor = self.cursor()\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('448', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 164, in cursor\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('449', '    cursor = self.make_cursor(self._cursor())\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('450', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 135, in _cursor\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('451', '    self.ensure_connection()\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('452', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 130, in ensure_connection\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('453', '    self.connect()\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('454', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/utils.py\", line 98, in __exit__\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('455', '    six.reraise(dj_exc_type, dj_exc_value, traceback)\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('456', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 130, in ensure_connection\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('457', '    self.connect()\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('458', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 119, in connect\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('459', '    self.connection = self.get_new_connection(conn_params)\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('460', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/mysql/base.py\", line 276, in get_new_connection\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('461', '    conn = Database.connect(**conn_params)\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('462', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/pymysql/__init__.py\", line 88, in Connect\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('463', '    return Connection(*args, **kwargs)\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('464', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/pymysql/connections.py\", line 657, in __init__\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('465', '    self.connect()\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('466', '  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/pymysql/connections.py\", line 882, in connect\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('467', '    raise exc\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('468', 'django.db.utils.OperationalError: (2003, \"Can\'t connect to MySQL server on \'localhost\' ([Errno 97] Address family not supported by protocol)\")\r\n', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('469', '', '2017-12-20 17:11:07', '2017-12-20 17:11:07', 'def36a2a43df48b198aa0c76f59bc632');
INSERT INTO engine_app_event_logs VALUES ('470', '------create virtualenv for jj1001------\r\n', '2017-12-20 17:37:27', '2017-12-20 17:37:27', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('471', '------create virtualenv success------\r\n', '2017-12-20 17:37:27', '2017-12-20 17:37:27', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('472', '------Get app_code for jj1001------\r\n', '2017-12-20 17:37:27', '2017-12-20 17:37:27', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('473', 'Initialized empty Git repository in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/projects/jj1001/code/jj1001/.git/\r\n', '2017-12-20 17:37:27', '2017-12-20 17:37:27', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('474', '------Get app_code success------\r\n', '2017-12-20 17:37:31', '2017-12-20 17:37:31', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('475', '------pip install------\r\n', '2017-12-20 17:37:31', '2017-12-20 17:37:31', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('476', 'Requirement already satisfied: Django==1.8.11 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 6))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('477', 'Requirement already satisfied: pymysql==0.6.7 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 7))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('478', 'Requirement already satisfied: MarkupSafe==0.23 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 8))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('479', 'Requirement already satisfied: Mako==1.0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 9))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('480', 'Requirement already satisfied: httplib2==0.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 10))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('481', 'Requirement already satisfied: suds==0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 11))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('482', 'Requirement already satisfied: celery==3.1.18 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 12))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('483', 'Requirement already satisfied: django-celery==3.1.16 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 13))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('484', 'Requirement already satisfied: supervisor==3.3.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 14))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('485', 'Requirement already satisfied: uWSGI==2.0.13.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 15))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('486', 'Requirement already satisfied: requests==2.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 16))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('487', 'Requirement already satisfied: pytz>dev in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('488', 'Requirement already satisfied: kombu<3.1,>=3.0.25 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('489', 'Requirement already satisfied: billiard<3.4,>=3.3.0.20 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('490', 'Requirement already satisfied: meld3>=0.6.5 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from supervisor==3.3.1->-r requirements.txt (line 14))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('491', 'Requirement already satisfied: amqp<2.0,>=1.4.9 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('492', 'Requirement already satisfied: anyjson>=0.3.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('493', '------pip install success------\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('494', '------change db------\r\n', '2017-12-20 17:37:32', '2017-12-20 17:37:32', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('495', 'Operations to perform:\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('496', '  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('497', '  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('498', 'Synchronizing apps without migrations:\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('499', '  Creating tables...\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('500', '    Running deferred SQL...\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('501', '  Installing custom SQL...\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('502', 'Running migrations:\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('503', '  Rendering model states... DONE\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('504', '  Applying contenttypes.0001_initial... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('505', '  Applying contenttypes.0002_remove_content_type_name... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('506', '  Applying auth.0001_initial... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('507', '  Applying auth.0002_alter_permission_name_max_length... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('508', '  Applying auth.0003_alter_user_email_max_length... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('509', '  Applying auth.0004_alter_user_username_opts... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('510', '  Applying auth.0005_alter_user_last_login_null... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('511', '  Applying auth.0006_require_contenttypes_0002... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('512', '  Applying account.0001_initial... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('513', '  Applying account.0002_initial_user_data... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('514', '  Applying admin.0001_initial... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('515', '  Applying app_control.0001_initial... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('516', '  Applying app_control.0002_initial_app_control... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('517', '  Applying sessions.0001_initial... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('518', '  Applying sites.0001_initial... OK\r\n', '2017-12-20 17:37:33', '2017-12-20 17:37:33', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('519', 'Operations to perform:\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('520', '  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('521', '  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('522', 'Synchronizing apps without migrations:\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('523', '  Creating tables...\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('524', '    Running deferred SQL...\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('525', '  Installing custom SQL...\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('526', 'Running migrations:\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('527', '  No migrations to apply.\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('528', '  Your models have changes that are not yet reflected in a migration, and so won\'t be applied.\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('529', '  Run \'manage.py makemigrations\' to make new migrations, and then re-run \'manage.py migrate\' to apply them.\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('530', '------change db success------\r\n', '2017-12-20 17:37:34', '2017-12-20 17:37:34', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('531', 'chown: invalid user: `apps.apps\'\r\n', '2017-12-20 17:37:35', '2017-12-20 17:37:35', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('532', '------ start app server ------\r\n', '2017-12-20 17:37:35', '2017-12-20 17:37:35', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('533', 'su: user apps does not exist\r\n', '2017-12-20 17:37:35', '2017-12-20 17:37:35', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('534', 'Job Fail\r\n', '2017-12-20 17:37:37', '2017-12-20 17:37:37', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('535', '', '2017-12-20 17:37:37', '2017-12-20 17:37:37', 'f43231eff3744731ad2edb1d49aa2688');
INSERT INTO engine_app_event_logs VALUES ('536', '------create virtualenv for jj1001------\r\n', '2017-12-20 17:40:01', '2017-12-20 17:40:01', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('537', '------create virtualenv success------\r\n', '2017-12-20 17:40:02', '2017-12-20 17:40:02', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('538', '------Get app_code for jj1001------\r\n', '2017-12-20 17:40:02', '2017-12-20 17:40:02', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('539', 'Initialized empty Git repository in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/projects/jj1001/code/jj1001/.git/\r\n', '2017-12-20 17:40:02', '2017-12-20 17:40:02', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('540', '------Get app_code success------\r\n', '2017-12-20 17:40:07', '2017-12-20 17:40:07', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('541', '------pip install------\r\n', '2017-12-20 17:40:07', '2017-12-20 17:40:07', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('542', 'Requirement already satisfied: Django==1.8.11 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 6))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('543', 'Requirement already satisfied: pymysql==0.6.7 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 7))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('544', 'Requirement already satisfied: MarkupSafe==0.23 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 8))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('545', 'Requirement already satisfied: Mako==1.0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 9))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('546', 'Requirement already satisfied: httplib2==0.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 10))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('547', 'Requirement already satisfied: suds==0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 11))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('548', 'Requirement already satisfied: celery==3.1.18 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 12))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('549', 'Requirement already satisfied: django-celery==3.1.16 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 13))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('550', 'Requirement already satisfied: supervisor==3.3.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 14))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('551', 'Requirement already satisfied: uWSGI==2.0.13.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 15))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('552', 'Requirement already satisfied: requests==2.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 16))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('553', 'Requirement already satisfied: pytz>dev in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('554', 'Requirement already satisfied: kombu<3.1,>=3.0.25 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('555', 'Requirement already satisfied: billiard<3.4,>=3.3.0.20 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('556', 'Requirement already satisfied: meld3>=0.6.5 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from supervisor==3.3.1->-r requirements.txt (line 14))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('557', 'Requirement already satisfied: amqp<2.0,>=1.4.9 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('558', 'Requirement already satisfied: anyjson>=0.3.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('559', '------pip install success------\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('560', '------change db------\r\n', '2017-12-20 17:40:08', '2017-12-20 17:40:08', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('561', 'Operations to perform:\r\n', '2017-12-20 17:40:09', '2017-12-20 17:40:09', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('562', '  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n', '2017-12-20 17:40:09', '2017-12-20 17:40:09', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('563', '  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\n', '2017-12-20 17:40:09', '2017-12-20 17:40:09', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('564', 'Synchronizing apps without migrations:\r\n', '2017-12-20 17:40:09', '2017-12-20 17:40:09', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('565', '  Creating tables...\r\n', '2017-12-20 17:40:09', '2017-12-20 17:40:09', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('566', '    Running deferred SQL...\r\n', '2017-12-20 17:40:09', '2017-12-20 17:40:09', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('567', '  Installing custom SQL...\r\n', '2017-12-20 17:40:09', '2017-12-20 17:40:09', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('568', 'Running migrations:\r\n', '2017-12-20 17:40:09', '2017-12-20 17:40:09', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('569', '  No migrations to apply.\r\n', '2017-12-20 17:40:09', '2017-12-20 17:40:09', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('570', '  Your models have changes that are not yet reflected in a migration, and so won\'t be applied.\r\n', '2017-12-20 17:40:09', '2017-12-20 17:40:09', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('571', '  Run \'manage.py makemigrations\' to make new migrations, and then re-run \'manage.py migrate\' to apply them.\r\n', '2017-12-20 17:40:09', '2017-12-20 17:40:09', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('572', 'Operations to perform:\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('573', '  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('574', '  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('575', 'Synchronizing apps without migrations:\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('576', '  Creating tables...\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('577', '    Running deferred SQL...\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('578', '  Installing custom SQL...\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('579', 'Running migrations:\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('580', '  No migrations to apply.\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('581', '  Your models have changes that are not yet reflected in a migration, and so won\'t be applied.\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('582', '  Run \'manage.py makemigrations\' to make new migrations, and then re-run \'manage.py migrate\' to apply them.\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('583', '------change db success------\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('584', '------ start app server ------\r\n', '2017-12-20 17:40:10', '2017-12-20 17:40:10', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('585', 'Job Done\r\n任务执行完成, 任务执行总耗时11秒\r\n', '2017-12-20 17:40:13', '2017-12-20 17:40:13', '21cf4db0f0904526bd83bb5577e1b6e1');
INSERT INTO engine_app_event_logs VALUES ('586', '------create virtualenv for jj1001------\r\n', '2017-12-20 17:48:12', '2017-12-20 17:48:12', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('587', 'Copying env as jj1001...\r\n', '2017-12-20 17:48:13', '2017-12-20 17:48:13', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('588', '------create virtualenv success------\r\n', '2017-12-20 17:48:18', '2017-12-20 17:48:18', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('589', '------Get app_code for jj1001------\r\n', '2017-12-20 17:48:18', '2017-12-20 17:48:18', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('590', 'Initialized empty Git repository in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/projects/jj1001/code/jj1001/.git/\r\n', '2017-12-20 17:48:18', '2017-12-20 17:48:18', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('591', '------Get app_code success------\r\n', '2017-12-20 17:48:22', '2017-12-20 17:48:22', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('592', '------pip install------\r\n', '2017-12-20 17:48:22', '2017-12-20 17:48:22', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('593', 'Requirement already satisfied: Django==1.8.11 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 6))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('594', 'Requirement already satisfied: pymysql==0.6.7 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 7))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('595', 'Requirement already satisfied: MarkupSafe==0.23 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 8))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('596', 'Requirement already satisfied: Mako==1.0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 9))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('597', 'Requirement already satisfied: httplib2==0.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 10))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('598', 'Requirement already satisfied: suds==0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 11))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('599', 'Requirement already satisfied: celery==3.1.18 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 12))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('600', 'Requirement already satisfied: django-celery==3.1.16 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 13))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('601', 'Requirement already satisfied: supervisor==3.3.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 14))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('602', 'Requirement already satisfied: uWSGI==2.0.13.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 15))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('603', 'Requirement already satisfied: requests==2.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 16))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('604', 'Requirement already satisfied: pytz>dev in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('605', 'Requirement already satisfied: kombu<3.1,>=3.0.25 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('606', 'Requirement already satisfied: billiard<3.4,>=3.3.0.20 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('607', 'Requirement already satisfied: meld3>=0.6.5 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from supervisor==3.3.1->-r requirements.txt (line 14))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('608', 'Requirement already satisfied: amqp<2.0,>=1.4.9 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('609', 'Requirement already satisfied: anyjson>=0.3.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('610', '------pip install success------\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('611', '------change db------\r\n', '2017-12-20 17:48:24', '2017-12-20 17:48:24', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('612', 'Operations to perform:\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('613', '  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('614', '  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('615', 'Synchronizing apps without migrations:\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('616', '  Creating tables...\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('617', '    Running deferred SQL...\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('618', '  Installing custom SQL...\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('619', 'Running migrations:\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('620', '  Rendering model states... DONE\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('621', '  Applying contenttypes.0001_initial... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('622', '  Applying contenttypes.0002_remove_content_type_name... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('623', '  Applying auth.0001_initial... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('624', '  Applying auth.0002_alter_permission_name_max_length... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('625', '  Applying auth.0003_alter_user_email_max_length... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('626', '  Applying auth.0004_alter_user_username_opts... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('627', '  Applying auth.0005_alter_user_last_login_null... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('628', '  Applying auth.0006_require_contenttypes_0002... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('629', '  Applying account.0001_initial... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('630', '  Applying account.0002_initial_user_data... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('631', '  Applying admin.0001_initial... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('632', '  Applying app_control.0001_initial... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('633', '  Applying app_control.0002_initial_app_control... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('634', '  Applying sessions.0001_initial... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('635', '  Applying sites.0001_initial... OK\r\n', '2017-12-20 17:48:25', '2017-12-20 17:48:25', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('636', 'Operations to perform:\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('637', '  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('638', '  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('639', 'Synchronizing apps without migrations:\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('640', '  Creating tables...\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('641', '    Running deferred SQL...\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('642', '  Installing custom SQL...\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('643', 'Running migrations:\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('644', '  No migrations to apply.\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('645', '  Your models have changes that are not yet reflected in a migration, and so won\'t be applied.\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('646', '  Run \'manage.py makemigrations\' to make new migrations, and then re-run \'manage.py migrate\' to apply them.\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('647', '------change db success------\r\n', '2017-12-20 17:48:26', '2017-12-20 17:48:26', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('648', '------ start app server ------\r\n', '2017-12-20 17:48:27', '2017-12-20 17:48:27', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('649', 'Job Done\r\n任务执行完成, 任务执行总耗时17秒\r\n', '2017-12-20 17:48:29', '2017-12-20 17:48:29', 'f03f8a85377e46018a84d2f5d580d730');
INSERT INTO engine_app_event_logs VALUES ('650', '------create virtualenv for bk_monitor------\r\n', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('651', 'Copying env as bk_monitor...\r\n', '2017-12-20 18:19:23', '2017-12-20 18:19:23', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('652', '------create virtualenv success------\r\n', '2017-12-20 18:19:27', '2017-12-20 18:19:27', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('653', '------Extract app_code for bk_monitor------\r\n', '2017-12-20 18:19:27', '2017-12-20 18:19:27', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('654', '------Extract app_code success------\r\n', '2017-12-20 18:19:28', '2017-12-20 18:19:28', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('655', '------pip install------\r\n', '2017-12-20 18:19:28', '2017-12-20 18:19:28', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('656', 'Requirement already satisfied: kombu==3.0.35 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_monitor/lib/python2.7/site-packages\r\n', '2017-12-20 18:19:29', '2017-12-20 18:19:29', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('657', 'Collecting arrow==0.5.4\r\n', '2017-12-20 18:19:29', '2017-12-20 18:19:29', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('658', 'Requirement already satisfied: amqp<2.0,>=1.4.9 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_monitor/lib/python2.7/site-packages (from kombu==3.0.35)\r\n', '2017-12-20 18:19:30', '2017-12-20 18:19:30', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('659', 'Requirement already satisfied: anyjson>=0.3.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_monitor/lib/python2.7/site-packages (from kombu==3.0.35)\r\n', '2017-12-20 18:19:30', '2017-12-20 18:19:30', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('660', 'Collecting python-dateutil (from arrow==0.5.4)\r\n', '2017-12-20 18:19:30', '2017-12-20 18:19:30', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('661', 'Requirement already satisfied: six>=1.5 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_monitor/lib/python2.7/site-packages (from python-dateutil->arrow==0.5.4)\r\n', '2017-12-20 18:19:30', '2017-12-20 18:19:30', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('662', 'Installing collected packages: python-dateutil, arrow\r\n', '2017-12-20 18:19:30', '2017-12-20 18:19:30', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('663', '  Running setup.py install for arrow: started\r\n', '2017-12-20 18:19:30', '2017-12-20 18:19:30', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('664', '    Running setup.py install for arrow: finished with status \'done\'\r\n', '2017-12-20 18:19:30', '2017-12-20 18:19:30', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('665', 'Successfully installed arrow-0.5.4 python-dateutil-2.6.1\r\n', '2017-12-20 18:19:31', '2017-12-20 18:19:31', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('666', '------pip install success------\r\n', '2017-12-20 18:19:31', '2017-12-20 18:19:31', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('667', '------change db------\r\n', '2017-12-20 18:19:31', '2017-12-20 18:19:31', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('668', 'Operations to perform:\r\n', '2017-12-20 18:19:32', '2017-12-20 18:19:32', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('669', '  Synchronize unmigrated apps: staticfiles, messages\r\n', '2017-12-20 18:19:32', '2017-12-20 18:19:32', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('670', '  Apply all migrations: app_control, account, monitor, sessions, admin, sites, auth, contenttypes\r\n', '2017-12-20 18:19:32', '2017-12-20 18:19:32', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('671', 'Synchronizing apps without migrations:\r\n', '2017-12-20 18:19:32', '2017-12-20 18:19:32', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('672', '  Creating tables...\r\n', '2017-12-20 18:19:32', '2017-12-20 18:19:32', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('673', '    Running deferred SQL...\r\n', '2017-12-20 18:19:32', '2017-12-20 18:19:32', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('674', '  Installing custom SQL...\r\n', '2017-12-20 18:19:32', '2017-12-20 18:19:32', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('675', 'Running migrations:\r\n', '2017-12-20 18:19:32', '2017-12-20 18:19:32', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('676', '  Rendering model states... DONE\r\n', '2017-12-20 18:19:32', '2017-12-20 18:19:32', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('677', '  Applying contenttypes.0001_initial... OK\r\n', '2017-12-20 18:19:32', '2017-12-20 18:19:32', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('678', '  Applying contenttypes.0002_remove_content_type_name... OK\r\n', '2017-12-20 18:19:32', '2017-12-20 18:19:32', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('679', '  Applying auth.0001_initial... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('680', '  Applying auth.0002_alter_permission_name_max_length... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('681', '  Applying auth.0003_alter_user_email_max_length... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('682', '  Applying auth.0004_alter_user_username_opts... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('683', '  Applying auth.0005_alter_user_last_login_null... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('684', '  Applying auth.0006_require_contenttypes_0002... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('685', '  Applying account.0001_initial... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('686', '  Applying account.0002_initial_user_data... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('687', '  Applying account.0003_auto_20161121_1436... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('688', '  Applying admin.0001_initial... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('689', '  Applying app_control.0001_initial... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('690', '  Applying app_control.0002_initial_app_control... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('691', '  Applying monitor.0001_initial... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('692', '  Applying monitor.0002_auto_20161123_1717... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('693', '  Applying monitor.0003_auto_20161212_1106... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('694', '  Applying monitor.0004_callmethodrecord_datagenerateconfig_dataresulttable_dataresulttablefield_monitorhoststicky... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('695', '  Applying monitor.0005_operaterecord... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('696', '  Applying monitor.0006_alarmstrategy... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('697', '  Applying monitor.0007_callmethodrecord_method... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('698', '  Applying monitor.0008_monitorlocation_scenariomenu... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('699', '  Applying monitor.0009_auto_20161220_1716... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('700', '  Applying monitor.0010_auto_20161220_1716... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('701', '  Applying monitor.0011_datacollector... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('702', '  Applying monitor.0012_shield... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('703', '  Applying monitor.0013_auto_20161227_1651... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('704', '  Applying monitor.0014_auto_20161228_1202... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('705', '  Applying monitor.0015_auto_20161228_1434... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('706', '  Applying monitor.0016_auto_20170114_1852... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('707', '  Applying monitor.0017_auto_20170509_1140... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('708', '  Applying sessions.0001_initial... OK\r\n', '2017-12-20 18:19:33', '2017-12-20 18:19:33', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('709', '  Applying sites.0001_initial... OK\r\n', '2017-12-20 18:19:34', '2017-12-20 18:19:34', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('710', 'Operations to perform:\r\n', '2017-12-20 18:19:34', '2017-12-20 18:19:34', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('711', '  Synchronize unmigrated apps: staticfiles, messages\r\n', '2017-12-20 18:19:34', '2017-12-20 18:19:34', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('712', '  Apply all migrations: app_control, account, monitor, sessions, admin, sites, auth, contenttypes\r\n', '2017-12-20 18:19:34', '2017-12-20 18:19:34', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('713', 'Synchronizing apps without migrations:\r\n', '2017-12-20 18:19:34', '2017-12-20 18:19:34', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('714', '  Creating tables...\r\n', '2017-12-20 18:19:34', '2017-12-20 18:19:34', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('715', '    Running deferred SQL...\r\n', '2017-12-20 18:19:35', '2017-12-20 18:19:35', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('716', '  Installing custom SQL...\r\n', '2017-12-20 18:19:35', '2017-12-20 18:19:35', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('717', 'Running migrations:\r\n', '2017-12-20 18:19:35', '2017-12-20 18:19:35', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('718', '  No migrations to apply.\r\n', '2017-12-20 18:19:35', '2017-12-20 18:19:35', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('719', '------change db success------\r\n', '2017-12-20 18:19:35', '2017-12-20 18:19:35', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('720', '------ start app server ------\r\n', '2017-12-20 18:19:35', '2017-12-20 18:19:35', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('721', 'Error: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\n', '2017-12-20 18:19:35', '2017-12-20 18:19:35', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('722', 'For help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_monitor/bin/supervisord -h\r\n', '2017-12-20 18:19:35', '2017-12-20 18:19:35', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('723', 'Job Fail\r\n', '2017-12-20 18:19:38', '2017-12-20 18:19:38', '28ef0a93598e48fabb2d3402cc10e23d');
INSERT INTO engine_app_event_logs VALUES ('724', '', '2017-12-20 18:19:38', '2017-12-20 18:19:38', '28ef0a93598e48fabb2d3402cc10e23d');

-- ----------------------------
-- Table structure for `engine_app_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `engine_app_tokens`;
CREATE TABLE `engine_app_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(32) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `bk_app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `engine_app_tokens_bk_app_id_35f82d9404d6dd5d_fk_engine_apps_id` (`bk_app_id`),
  CONSTRAINT `engine_app_tokens_bk_app_id_35f82d9404d6dd5d_fk_engine_apps_id` FOREIGN KEY (`bk_app_id`) REFERENCES `engine_apps` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engine_app_tokens
-- ----------------------------
INSERT INTO engine_app_tokens VALUES ('1', '305ad34fe0384ed48899f6ac414ca497', '2017-08-23 15:53:21', '2017-08-23 15:53:21', '1');
INSERT INTO engine_app_tokens VALUES ('2', 'a03d2a4194e74cafa290ca4cbf6434b0', '2017-10-09 11:31:44', '2017-10-09 11:31:44', '2');
INSERT INTO engine_app_tokens VALUES ('3', '6a9591721f8148bb9e8b76f0be4d84e7', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '3');
INSERT INTO engine_app_tokens VALUES ('4', 'fd4f69893cb248f794d759805b288416', '2017-12-20 16:24:47', '2017-12-20 16:24:47', '4');
INSERT INTO engine_app_tokens VALUES ('5', '4a898f7194214714a687ea5d9c5f8ea6', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '5');

-- ----------------------------
-- Table structure for `engine_clusters`
-- ----------------------------
DROP TABLE IF EXISTS `engine_clusters`;
CREATE TABLE `engine_clusters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engine_clusters
-- ----------------------------

-- ----------------------------
-- Table structure for `engine_hosting_ships`
-- ----------------------------
DROP TABLE IF EXISTS `engine_hosting_ships`;
CREATE TABLE `engine_hosting_ships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_active` tinyint(1) NOT NULL,
  `is_master` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `bk_app_id` int(11) NOT NULL,
  `bk_server_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `engine_hosting_ship_bk_app_id_438684a48ab9d1a4_fk_engine_apps_id` (`bk_app_id`),
  KEY `engine_hosting_ships_2a012a10` (`bk_server_id`),
  CONSTRAINT `engine_hosting_ship_bk_app_id_438684a48ab9d1a4_fk_engine_apps_id` FOREIGN KEY (`bk_app_id`) REFERENCES `engine_apps` (`id`),
  CONSTRAINT `engine_hostin_bk_server_id_3be78b50662c9b45_fk_engine_servers_id` FOREIGN KEY (`bk_server_id`) REFERENCES `engine_servers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engine_hosting_ships
-- ----------------------------
INSERT INTO engine_hosting_ships VALUES ('1', '1', '1', '2017-08-23 15:53:22', '2017-08-23 15:53:22', '1', '1');
INSERT INTO engine_hosting_ships VALUES ('2', '1', '1', '2017-10-09 12:08:11', '2017-10-09 12:08:11', '2', '1');
INSERT INTO engine_hosting_ships VALUES ('3', '1', '1', '2017-10-09 15:45:13', '2017-10-09 15:45:13', '3', '1');
INSERT INTO engine_hosting_ships VALUES ('4', '1', '1', '2017-12-20 16:48:50', '2017-12-20 16:48:50', '4', '2');
INSERT INTO engine_hosting_ships VALUES ('5', '1', '1', '2017-12-20 17:48:12', '2017-12-20 17:48:12', '4', '1');
INSERT INTO engine_hosting_ships VALUES ('6', '1', '1', '2017-12-20 18:19:22', '2017-12-20 18:19:22', '5', '1');

-- ----------------------------
-- Table structure for `engine_servers`
-- ----------------------------
DROP TABLE IF EXISTS `engine_servers`;
CREATE TABLE `engine_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `s_id` char(32) NOT NULL,
  `token` char(32) NOT NULL,
  `ip_address` varchar(36) NOT NULL,
  `ip_port` varchar(36) NOT NULL,
  `category` varchar(36) NOT NULL,
  `info` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `app_port` varchar(36) NOT NULL,
  `mac` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engine_servers
-- ----------------------------
INSERT INTO engine_servers VALUES ('1', '', '7f8af262812946c881117a810ed9912d', 'fd4c652f6c93400b96c5acea9eb4dc7f', '172.19.0.93', '4245', 'app', '', '1', '2017-08-23 15:40:00', '2017-12-20 16:19:56', '8085', '52:54:00:96:60:0C');
INSERT INTO engine_servers VALUES ('2', '', 'd1269c53bf8a493196919dc757d5c262', '57d1e86ccf104adfa1cf4b2a43ae45dc', '172.19.0.118', '4245', 'tapp', '', '1', '2017-12-20 16:26:52', '2017-12-24 20:41:32', '8085', '52:54:00:07:99:51');

-- ----------------------------
-- Table structure for `engine_third_servers`
-- ----------------------------
DROP TABLE IF EXISTS `engine_third_servers`;
CREATE TABLE `engine_third_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(36) NOT NULL,
  `server_info` longtext NOT NULL,
  `info` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of engine_third_servers
-- ----------------------------
INSERT INTO engine_third_servers VALUES ('1', 'rabbitmq', '{\"ip_port\": 15672, \"username\": \"root\", \"password\": \"blueking\", \"ip_address\": \"172.19.0.118\"}', '', '1', '2017-08-23 15:45:58', '2017-12-20 16:20:09');

-- ----------------------------
-- Table structure for `esb_buffet_component`
-- ----------------------------
DROP TABLE IF EXISTS `esb_buffet_component`;
CREATE TABLE `esb_buffet_component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `dest_url` varchar(2048) NOT NULL,
  `dest_http_method` varchar(8) NOT NULL,
  `favor_post_ctype` varchar(64) NOT NULL,
  `extra_headers` varchar(2048) NOT NULL,
  `extra_params` varchar(2048) NOT NULL,
  `registed_path` varchar(255) NOT NULL,
  `registed_http_method` varchar(8) NOT NULL,
  `submitter` varchar(256) DEFAULT NULL,
  `approver` varchar(256) DEFAULT NULL,
  `approver_message` varchar(1024) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `mappings_input` varchar(1024) DEFAULT NULL,
  `mappings_output` varchar(1024) DEFAULT NULL,
  `last_modified_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  `timeout_time` int(11),
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `esb_buffet_system_id_5efc5696b2b8f24a_fk_esb_component_system_id` (`system_id`),
  CONSTRAINT `esb_buffet_system_id_5efc5696b2b8f24a_fk_esb_component_system_id` FOREIGN KEY (`system_id`) REFERENCES `esb_component_system` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of esb_buffet_component
-- ----------------------------

-- ----------------------------
-- Table structure for `esb_buffet_component_mapping`
-- ----------------------------
DROP TABLE IF EXISTS `esb_buffet_component_mapping`;
CREATE TABLE `esb_buffet_component_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `source_type` int(11) NOT NULL,
  `source` longtext,
  `owner` varchar(256) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `last_modified_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of esb_buffet_component_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for `esb_channel`
-- ----------------------------
DROP TABLE IF EXISTS `esb_channel`;
CREATE TABLE `esb_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(32) DEFAULT NULL,
  `component_codename` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `last_modified_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  `component_system_id` int(11) DEFAULT NULL,
  `timeout_time` int(11),
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `component_system_id_75db1515b99d21dc_fk_esb_component_system_id` (`component_system_id`),
  CONSTRAINT `component_system_id_75db1515b99d21dc_fk_esb_component_system_id` FOREIGN KEY (`component_system_id`) REFERENCES `esb_component_system` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of esb_channel
-- ----------------------------
INSERT INTO esb_channel VALUES ('1', '[CC] 新增子网ID', '/cc/add_plat_id/', '', 'generic.cc.add_plat_id', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '1');
INSERT INTO esb_channel VALUES ('2', '[CC] 删除子网', '/cc/del_plat/', '', 'generic.cc.del_plat', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '1');
INSERT INTO esb_channel VALUES ('3', '[CC] 查询业务信息', '/cc/get_app_by_id/', '', 'generic.cc.get_app_by_id', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('4', '[CC] 查询用户有权限的业务', '/cc/get_app_by_user/', '', 'generic.cc.get_app_by_user', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('5', '[CC] 根据用户角色查询用户业务', '/cc/get_app_by_user_role/', '', 'generic.cc.get_app_by_user_role', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('6', '[CC] 查询业务主机列表', '/cc/get_app_host_list/', '', 'generic.cc.get_app_host_list', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('7', '[CC] 查询业务列表', '/cc/get_app_list/', '', 'generic.cc.get_app_list', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('8', '[CC] 根据IP查询主机信息', '/cc/get_host_list_by_ip/', '', 'generic.cc.get_host_list_by_ip', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('9', '[CC] 根据 set 属性查询主机', '/cc/get_hosts_by_property/', '', 'generic.cc.get_hosts_by_property', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('10', '[CC] 查询业务下IP及ProxyIP', '/cc/get_ip_and_proxy_by_company/', '', 'generic.cc.get_ip_and_proxy_by_company', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('11', '[CC] 查询模块主机列表', '/cc/get_module_host_list/', '', 'generic.cc.get_module_host_list', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('12', '[CC] 查询业务下的所有模块', '/cc/get_modules/', '', 'generic.cc.get_modules', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('13', '[CC] 根据 set 属性查询模块', '/cc/get_modules_by_property/', '', 'generic.cc.get_modules_by_property', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('14', '[CC] 查询子网列表', '/cc/get_plat_id/', '', 'generic.cc.get_plat_id', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('15', '[CC] 查询Set主机列表', '/cc/get_set_host_list/', '', 'generic.cc.get_set_host_list', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('16', '[CC] 获取所有 set 属性', '/cc/get_set_property/', '', 'generic.cc.get_set_property', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('17', '[CC] 根据 set 属性获取 set', '/cc/get_sets_by_property/', '', 'generic.cc.get_sets_by_property', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('18', '[CC] 查询业务拓扑树', '/cc/get_topo_tree_by_app_id/', '', 'generic.cc.get_topo_tree_by_app_id', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('19', '[CC] 更新主机gse agent proxy 状态', '/cc/update_gse_proxy_status/', '', 'generic.cc.update_gse_proxy_status', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '1');
INSERT INTO esb_channel VALUES ('20', '[CC] 更新主机的gse agent状态', '/cc/update_host_by_app_id/', '', 'generic.cc.update_host_by_app_id', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '1');
INSERT INTO esb_channel VALUES ('21', '[CC] 更新主机云子网', '/cc/update_host_plat/', '', 'generic.cc.update_host_plat', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '1');
INSERT INTO esb_channel VALUES ('22', '[CC] 查询属性列表', '/cc/get_property_list/', '', 'generic.cc.get_property_list', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('23', '[CC] 根据主机属性的值group主机列表', '/cc/get_host_list_by_field/', '', 'generic.cc.get_host_list_by_field', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('24', '[CC] 查询业务下Agent状态', '/cc/get_app_agent_status/', '', 'generic.cc.get_app_agent_status', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('25', '[CC] 获取主机开发商', '/cc/get_host_company_id/', '', 'generic.cc.get_host_company_id', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('26', '[CC] 根据开发商ID、子网ID、主机IP获取主机信息', '/cc/get_host_by_company_id/', '', 'generic.cc.get_host_by_company_id', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '2', null, '2');
INSERT INTO esb_channel VALUES ('27', '[CMSI] 公共语音通知', '/cmsi/noc_notice/', '', 'generic.cmsi.noc_notice', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '5', null, '2');
INSERT INTO esb_channel VALUES ('28', '[CMSI] 发送邮件', '/cmsi/send_mail/', '', 'generic.cmsi.send_mail', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '5', null, '2');
INSERT INTO esb_channel VALUES ('29', '[CMSI] 发送短信', '/cmsi/send_sms/', '', 'generic.cmsi.send_sms', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '5', null, '2');
INSERT INTO esb_channel VALUES ('30', '[CMSI] 发送企业微信', '/cmsi/send_qy_weixin/', '', 'generic.cmsi.send_qy_weixin', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '5', null, '2');
INSERT INTO esb_channel VALUES ('31', '[JOB] 根据作业模板ID启动作业', '/job/execute_task/', '', 'generic.job.execute_task', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '4', null, '1');
INSERT INTO esb_channel VALUES ('32', '[JOB] 快速执行脚本', '/job/fast_execute_script/', '', 'generic.job.fast_execute_script', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '4', null, '1');
INSERT INTO esb_channel VALUES ('33', '[JOB] 快速分发文件', '/job/fast_push_file/', '', 'generic.job.fast_push_file', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '4', null, '1');
INSERT INTO esb_channel VALUES ('34', '[JOB] 查询Agent状态', '/job/get_agent_status/', '', 'generic.job.get_agent_status', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '4', null, '2');
INSERT INTO esb_channel VALUES ('35', '[JOB] 查询作业模板', '/job/get_task/', '', 'generic.job.get_task', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '4', null, '2');
INSERT INTO esb_channel VALUES ('36', '[JOB] 查询作业模板详情', '/job/get_task_detail/', '', 'generic.job.get_task_detail', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '4', null, '2');
INSERT INTO esb_channel VALUES ('37', '[JOB] 根据作业实例ID查询作业执行日志', '/job/get_task_ip_log/', '', 'generic.job.get_task_ip_log', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '4', null, '2');
INSERT INTO esb_channel VALUES ('38', '[JOB] 根据作业实例 ID 查询作业执行状态', '/job/get_task_result/', '', 'generic.job.get_task_result', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '4', null, '2');
INSERT INTO esb_channel VALUES ('39', '[JOB] 新建或保存定时作业', '/job/save_cron/', '', 'generic.job.save_cron', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '4', null, '1');
INSERT INTO esb_channel VALUES ('40', '[JOB] 更新定时作业状态', '/job/change_cron_status/', '', 'generic.job.change_cron_status', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '4', null, '1');
INSERT INTO esb_channel VALUES ('41', '[JOB] 查询业务下定时作业信息', '/job/get_cron/', '', 'generic.job.get_cron', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '4', null, '2');
INSERT INTO esb_channel VALUES ('42', '[BK_LOGIN] 获取所有用户信息', '/bk_login/get_all_user/', '', 'generic.bk_login.get_all_user', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '1', null, '2');
INSERT INTO esb_channel VALUES ('43', '[BK_LOGIN] 获取多个用户信息', '/bk_login/get_batch_user/', '', 'generic.bk_login.get_batch_user', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '1', null, '2');
INSERT INTO esb_channel VALUES ('44', '[BK_LOGIN] 获取用户信息', '/bk_login/get_user/', '', 'generic.bk_login.get_user', '1', '2017-08-23 15:38:53', '2017-08-23 15:38:53', '1', null, '2');

-- ----------------------------
-- Table structure for `esb_component_system`
-- ----------------------------
DROP TABLE IF EXISTS `esb_component_system`;
CREATE TABLE `esb_component_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `label` varchar(128) NOT NULL,
  `component_admin` varchar(128) NOT NULL,
  `interface_admin` varchar(128) NOT NULL,
  `system_link` varchar(1024) NOT NULL,
  `belong_to` varchar(128) NOT NULL,
  `remark` longtext NOT NULL,
  `execute_timeout` int(11),
  `query_timeout` int(11),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of esb_component_system
-- ----------------------------
INSERT INTO esb_component_system VALUES ('1', 'BK_LOGIN', '蓝鲸登录平台', '', '', '', '', '', null, null);
INSERT INTO esb_component_system VALUES ('2', 'CC', '蓝鲸配置平台', '', '', '', '', '', null, null);
INSERT INTO esb_component_system VALUES ('3', 'GSE', '蓝鲸管控平台', '', '', '', '', '', null, null);
INSERT INTO esb_component_system VALUES ('4', 'JOB', '蓝鲸作业平台', '', '', '', '', '', null, null);
INSERT INTO esb_component_system VALUES ('5', 'CMSI', '消息管理', '', '', '', '', '', null, null);

-- ----------------------------
-- Table structure for `esb_function_controller`
-- ----------------------------
DROP TABLE IF EXISTS `esb_function_controller`;
CREATE TABLE `esb_function_controller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `func_code` varchar(64) NOT NULL,
  `func_name` varchar(64) NOT NULL,
  `switch_status` tinyint(1) NOT NULL,
  `wlist` longtext,
  `func_desc` longtext,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `func_code` (`func_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of esb_function_controller
-- ----------------------------
INSERT INTO esb_function_controller VALUES ('1', 'user_auth::skip_user_auth', '是否跳过用户身份验证', '1', 'bk_paas_log_alert,bk_cdman', '', '2017-08-23 15:38:00');

-- ----------------------------
-- Table structure for `esb_user_auth_token`
-- ----------------------------
DROP TABLE IF EXISTS `esb_user_auth_token`;
CREATE TABLE `esb_user_auth_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_code` varchar(128) NOT NULL,
  `username` varchar(64) NOT NULL,
  `auth_token` varchar(255) NOT NULL,
  `expires` datetime NOT NULL,
  `last_accessed_time` datetime NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of esb_user_auth_token
-- ----------------------------

-- ----------------------------
-- Table structure for `login_bklog`
-- ----------------------------
DROP TABLE IF EXISTS `login_bklog`;
CREATE TABLE `login_bklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_time` datetime NOT NULL,
  `login_browser` varchar(200) DEFAULT NULL,
  `login_ip` varchar(50) DEFAULT NULL,
  `login_host` varchar(100) DEFAULT NULL,
  `app_id` varchar(30) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `login_bklog_user_id_44e2a9485d3af7e9_fk_bkaccount_bkuser_id` (`user_id`),
  CONSTRAINT `login_bklog_user_id_44e2a9485d3af7e9_fk_bkaccount_bkuser_id` FOREIGN KEY (`user_id`) REFERENCES `bkaccount_bkuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_bklog
-- ----------------------------
INSERT INTO login_bklog VALUES ('1', '2017-08-23 15:50:33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('2', '2017-08-23 16:57:13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('3', '2017-08-23 16:58:36', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('4', '2017-08-23 18:19:03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('5', '2017-08-24 12:35:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('6', '2017-08-24 14:05:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('7', '2017-08-24 14:07:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', 'cc', '3');
INSERT INTO login_bklog VALUES ('8', '2017-08-24 16:05:29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('9', '2017-08-24 16:05:36', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '4');
INSERT INTO login_bklog VALUES ('10', '2017-08-24 16:07:45', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'cc', '1');
INSERT INTO login_bklog VALUES ('11', '2017-08-24 16:36:28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'cc', '1');
INSERT INTO login_bklog VALUES ('12', '2017-08-24 16:42:18', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '5');
INSERT INTO login_bklog VALUES ('13', '2017-08-24 17:29:12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('14', '2017-08-24 18:54:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('15', '2017-08-25 10:32:43', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('16', '2017-08-25 14:19:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('17', '2017-08-25 14:59:57', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('18', '2017-08-25 15:01:27', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', 'job', '2');
INSERT INTO login_bklog VALUES ('19', '2017-08-25 15:07:10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('20', '2017-08-25 16:07:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('21', '2017-08-25 18:07:08', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.230.11.250', 'paaskghk.jingle.cn', '', '5');
INSERT INTO login_bklog VALUES ('22', '2017-08-28 10:31:38', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('23', '2017-08-28 10:38:43', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '6');
INSERT INTO login_bklog VALUES ('24', '2017-08-28 10:41:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3143.400 QQBrowser/9.6.11678.400', '103.7.29.8', 'paaskghk.jingle.cn', '', '7');
INSERT INTO login_bklog VALUES ('25', '2017-08-28 10:41:48', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '103.7.29.8', 'paaskghk.jingle.cn', '', '6');
INSERT INTO login_bklog VALUES ('26', '2017-08-29 16:48:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('27', '2017-08-29 18:32:16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('28', '2017-08-30 16:28:46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('29', '2017-08-31 11:35:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('30', '2017-08-31 11:35:53', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('31', '2017-09-01 10:25:46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('32', '2017-09-05 10:57:15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '5');
INSERT INTO login_bklog VALUES ('33', '2017-09-05 10:59:59', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '5');
INSERT INTO login_bklog VALUES ('34', '2017-09-05 16:15:21', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3143.400 QQBrowser/9.6.11678.400', '103.7.29.8', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('35', '2017-09-07 14:31:49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('36', '2017-09-11 11:11:47', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('37', '2017-09-11 11:12:08', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('38', '2017-09-11 11:14:10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('39', '2017-09-11 12:13:45', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('40', '2017-09-11 13:47:38', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('41', '2017-09-11 14:19:16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('42', '2017-09-11 14:32:01', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('43', '2017-09-11 14:32:33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('44', '2017-09-11 14:40:54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('45', '2017-09-11 17:32:12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('46', '2017-09-12 10:11:34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('47', '2017-09-12 10:34:03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '1');
INSERT INTO login_bklog VALUES ('48', '2017-09-12 11:29:33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('49', '2017-09-12 15:00:25', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('50', '2017-09-13 16:07:32', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('51', '2017-09-14 14:00:15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('52', '2017-09-15 10:57:26', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('53', '2017-09-15 15:47:02', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('54', '2017-09-15 15:49:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('55', '2017-09-15 15:49:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('56', '2017-09-15 15:50:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('57', '2017-09-15 21:38:15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36', '103.7.29.7', 'paaskghk.jingle.cn', '', '9');
INSERT INTO login_bklog VALUES ('58', '2017-09-18 11:19:11', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('59', '2017-09-18 15:27:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('60', '2017-09-18 15:28:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('61', '2017-09-18 17:07:15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('62', '2017-09-19 10:02:47', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '103.7.29.7', 'paaskghk.jingle.cn', '', '9');
INSERT INTO login_bklog VALUES ('63', '2017-09-19 11:30:46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '9');
INSERT INTO login_bklog VALUES ('64', '2017-09-19 11:34:55', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '9');
INSERT INTO login_bklog VALUES ('65', '2017-09-19 15:39:06', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('66', '2017-09-19 21:47:40', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('67', '2017-09-19 22:02:37', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('68', '2017-09-20 11:39:34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('69', '2017-09-21 19:50:47', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('70', '2017-09-21 23:01:49', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.8', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('71', '2017-09-22 09:56:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('72', '2017-09-22 14:57:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('73', '2017-09-22 15:03:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('74', '2017-09-22 15:04:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('75', '2017-09-22 15:10:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.91 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', 'job', '3');
INSERT INTO login_bklog VALUES ('76', '2017-09-22 15:14:10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '203.117.172.136', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('77', '2017-09-22 15:33:18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '203.117.172.136', 'paaskghk.jingle.cn', 'job', '2');
INSERT INTO login_bklog VALUES ('78', '2017-09-22 20:50:23', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('79', '2017-09-22 21:28:05', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('80', '2017-09-22 23:41:14', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('81', '2017-09-25 09:55:28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '203.117.172.136', 'paaskghk.jingle.cn', 'job', '2');
INSERT INTO login_bklog VALUES ('82', '2017-09-25 14:46:12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('83', '2017-09-25 18:58:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('84', '2017-09-25 22:02:16', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('85', '2017-09-26 15:30:33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('86', '2017-09-26 17:56:50', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('87', '2017-09-26 22:12:40', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('88', '2017-09-27 11:16:07', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '103.7.29.7', 'paaskghk.jingle.cn', '', '9');
INSERT INTO login_bklog VALUES ('89', '2017-09-28 10:01:31', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('90', '2017-09-29 14:26:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.8', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('91', '2017-09-29 14:56:08', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('92', '2017-09-29 14:56:43', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('93', '2017-09-29 15:01:14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('94', '2017-09-30 11:01:33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('95', '2017-09-30 11:11:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('96', '2017-09-30 15:49:22', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('97', '2017-09-30 17:15:20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('98', '2017-09-30 18:37:28', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.8', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('99', '2017-10-04 14:32:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('100', '2017-10-04 21:00:22', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '203.117.172.136', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('101', '2017-10-09 11:14:50', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('102', '2017-10-09 11:15:19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('103', '2017-10-09 11:32:08', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('104', '2017-10-09 14:21:26', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('105', '2017-10-09 14:38:28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('106', '2017-10-09 14:47:27', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('107', '2017-10-09 15:00:36', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('108', '2017-10-09 15:26:32', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('109', '2017-10-09 15:27:37', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('110', '2017-10-09 16:46:57', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('111', '2017-10-09 22:18:12', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('112', '2017-10-10 16:31:15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('113', '2017-10-11 14:16:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.8', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('114', '2017-10-11 16:25:39', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('115', '2017-10-12 16:10:54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('116', '2017-10-12 18:33:05', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('117', '2017-10-13 14:22:16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('118', '2017-10-13 15:03:23', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '5');
INSERT INTO login_bklog VALUES ('119', '2017-10-13 18:23:14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('120', '2017-10-13 18:29:15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('121', '2017-10-13 18:30:18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('122', '2017-10-13 20:22:53', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.6', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('123', '2017-10-14 09:33:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('124', '2017-10-14 21:25:46', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('125', '2017-10-15 15:12:08', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('126', '2017-10-15 18:34:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('127', '2017-10-16 10:55:13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('128', '2017-10-16 11:03:07', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('129', '2017-10-16 11:27:56', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('130', '2017-10-16 11:42:29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('131', '2017-10-16 11:42:39', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('132', '2017-10-16 11:56:40', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('133', '2017-10-16 12:18:29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('134', '2017-10-16 14:49:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('135', '2017-10-16 14:56:37', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('136', '2017-10-16 15:26:49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('137', '2017-10-16 16:01:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('138', '2017-10-16 16:33:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('139', '2017-10-16 17:20:04', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('140', '2017-10-16 21:24:34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('141', '2017-10-17 10:22:39', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('142', '2017-10-17 12:43:44', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('143', '2017-10-17 17:18:03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('144', '2017-10-17 18:55:15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('145', '2017-10-18 11:52:57', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '103.7.29.8', 'paaskghk.jingle.cn', '', '9');
INSERT INTO login_bklog VALUES ('146', '2017-10-18 16:26:43', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.8', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('147', '2017-10-18 16:41:18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('148', '2017-10-18 19:22:25', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('149', '2017-10-18 19:22:58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('150', '2017-10-19 14:10:26', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('151', '2017-10-19 14:14:08', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('152', '2017-10-19 14:19:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '3');
INSERT INTO login_bklog VALUES ('153', '2017-10-19 14:47:36', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('154', '2017-10-19 15:08:38', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '203.117.172.136', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('155', '2017-10-19 15:49:33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('156', '2017-10-19 16:27:52', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('157', '2017-10-19 17:04:53', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '1');
INSERT INTO login_bklog VALUES ('158', '2017-10-19 17:06:07', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('159', '2017-10-19 17:07:02', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('160', '2017-10-19 17:31:49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('161', '2017-10-19 17:33:52', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('162', '2017-10-19 17:34:28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('163', '2017-10-19 20:52:42', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('164', '2017-10-20 04:57:32', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('165', '2017-10-20 05:34:53', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('166', '2017-10-20 12:10:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('167', '2017-10-20 13:47:29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'cc', '8');
INSERT INTO login_bklog VALUES ('168', '2017-10-20 19:22:15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('169', '2017-10-23 15:54:31', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.6', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('170', '2017-10-23 15:58:52', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('171', '2017-10-23 17:59:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('172', '2017-10-23 20:24:31', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('173', '2017-10-24 16:18:21', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3226.400 QQBrowser/9.6.11681.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('174', '2017-10-24 22:52:39', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('175', '2017-10-25 11:50:03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('176', '2017-10-25 12:01:52', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('177', '2017-10-25 12:03:56', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('178', '2017-10-25 12:06:33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('179', '2017-10-25 14:47:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('180', '2017-10-26 10:24:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('181', '2017-10-26 10:43:34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('182', '2017-10-26 11:11:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('183', '2017-10-27 11:01:21', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('184', '2017-10-27 11:03:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('185', '2017-10-27 13:09:30', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('186', '2017-10-27 17:16:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('187', '2017-10-27 21:23:37', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('188', '2017-10-30 11:20:45', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('189', '2017-10-30 18:52:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('190', '2017-10-31 11:20:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('191', '2017-11-01 17:20:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.6', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('192', '2017-11-02 16:11:31', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('193', '2017-11-02 18:14:42', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('194', '2017-11-02 20:27:11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('195', '2017-11-02 21:24:35', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('196', '2017-11-03 11:15:38', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('197', '2017-11-03 14:23:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('198', '2017-11-03 21:14:16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('199', '2017-11-06 14:58:16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('200', '2017-11-06 17:25:53', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('201', '2017-11-07 14:25:24', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('202', '2017-11-07 14:45:28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('203', '2017-11-07 14:48:26', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('204', '2017-11-07 16:01:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('205', '2017-11-08 09:56:33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('206', '2017-11-08 11:38:03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('207', '2017-11-08 15:30:39', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('208', '2017-11-09 10:15:05', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.8', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('209', '2017-11-09 13:58:13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('210', '2017-11-09 15:41:18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('211', '2017-11-09 16:54:10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('212', '2017-11-09 17:11:39', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('213', '2017-11-09 17:13:33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('214', '2017-11-10 00:40:35', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('215', '2017-11-10 11:08:29', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('216', '2017-11-10 11:16:25', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('217', '2017-11-10 17:23:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('218', '2017-11-13 12:17:05', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('219', '2017-11-13 12:18:13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('220', '2017-11-13 14:41:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('221', '2017-11-13 17:20:24', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('222', '2017-11-13 17:59:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('223', '2017-11-14 14:34:58', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('224', '2017-11-14 17:36:48', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('225', '2017-11-15 11:31:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('226', '2017-11-15 14:54:25', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('227', '2017-11-15 18:20:53', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.6', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('228', '2017-11-16 11:26:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('229', '2017-11-16 12:16:54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('230', '2017-11-16 14:58:57', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('231', '2017-11-16 15:39:28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('232', '2017-11-16 16:31:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('233', '2017-11-16 17:08:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('234', '2017-11-16 18:29:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.6', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('235', '2017-11-17 10:27:54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('236', '2017-11-17 16:37:38', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('237', '2017-11-17 19:47:11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('238', '2017-11-17 19:54:40', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('239', '2017-11-17 19:58:27', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('240', '2017-11-20 09:48:06', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('241', '2017-11-20 10:30:14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('242', '2017-11-20 14:28:05', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('243', '2017-11-20 15:28:39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.9', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('244', '2017-11-20 16:29:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('245', '2017-11-20 17:44:11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('246', '2017-11-20 17:46:00', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.9', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('247', '2017-11-20 18:14:24', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('248', '2017-11-20 18:19:51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('249', '2017-11-20 18:28:46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('250', '2017-11-20 18:57:10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('251', '2017-11-21 04:35:29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('252', '2017-11-21 06:36:13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('253', '2017-11-21 06:39:00', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('254', '2017-11-21 11:51:29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('255', '2017-11-22 10:46:31', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.9', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('256', '2017-11-22 11:02:53', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('257', '2017-11-22 12:21:23', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('258', '2017-11-22 12:30:25', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('259', '2017-11-22 19:39:57', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('260', '2017-11-22 19:40:25', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('261', '2017-11-23 16:47:10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('262', '2017-11-23 18:34:04', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('263', '2017-11-23 20:34:37', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('264', '2017-11-24 11:09:50', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.6', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('265', '2017-11-24 11:30:40', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('266', '2017-11-24 15:14:07', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('267', '2017-11-24 16:05:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('268', '2017-11-24 16:16:08', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('269', '2017-11-24 16:35:49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('270', '2017-11-24 17:03:03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('271', '2017-11-26 16:15:08', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('272', '2017-11-26 18:57:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('273', '2017-11-27 10:52:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('274', '2017-11-28 09:56:28', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('275', '2017-11-28 15:18:50', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('276', '2017-11-29 09:50:29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('277', '2017-11-29 10:02:00', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('278', '2017-11-29 14:03:23', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('279', '2017-11-29 16:17:30', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('280', '2017-11-29 19:26:27', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('281', '2017-11-30 15:03:26', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('282', '2017-11-30 16:23:13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('283', '2017-11-30 16:25:30', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('284', '2017-11-30 18:06:01', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('285', '2017-12-01 01:06:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('286', '2017-12-01 01:42:54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('287', '2017-12-01 02:03:18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('288', '2017-12-01 10:48:26', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('289', '2017-12-01 16:47:48', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('290', '2017-12-04 10:12:48', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('291', '2017-12-04 10:40:07', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('292', '2017-12-04 16:07:23', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('293', '2017-12-04 16:26:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('294', '2017-12-05 09:18:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('295', '2017-12-05 13:51:53', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('296', '2017-12-05 13:53:31', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('297', '2017-12-05 16:46:15', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('298', '2017-12-05 19:17:04', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('299', '2017-12-05 19:24:38', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('300', '2017-12-05 19:30:35', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('301', '2017-12-05 20:25:07', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '103.7.29.8', 'paaskghk.jingle.cn', '', '9');
INSERT INTO login_bklog VALUES ('302', '2017-12-06 13:47:20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('303', '2017-12-06 16:08:35', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('304', '2017-12-06 16:50:19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('305', '2017-12-06 16:59:23', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '8');
INSERT INTO login_bklog VALUES ('306', '2017-12-06 17:46:15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('307', '2017-12-06 21:10:27', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.3538.400 QQBrowser/9.6.12501.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('308', '2017-12-07 05:42:30', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('309', '2017-12-07 06:45:31', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('310', '2017-12-07 06:54:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('311', '2017-12-07 07:12:42', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('312', '2017-12-07 07:20:06', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('313', '2017-12-07 10:33:38', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('314', '2017-12-07 11:06:11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('315', '2017-12-07 11:53:29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('316', '2017-12-07 12:07:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('317', '2017-12-07 14:28:27', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('318', '2017-12-07 15:39:35', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('319', '2017-12-07 17:01:40', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('320', '2017-12-07 23:57:31', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.6', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('321', '2017-12-08 09:54:15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('322', '2017-12-08 17:28:19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('323', '2017-12-11 10:23:41', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('324', '2017-12-11 10:46:33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('325', '2017-12-11 11:52:24', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('326', '2017-12-11 12:13:43', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('327', '2017-12-11 17:02:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('328', '2017-12-11 17:27:18', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('329', '2017-12-12 16:20:11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('330', '2017-12-12 16:40:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '221.133.38.162', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('331', '2017-12-12 16:45:08', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('332', '2017-12-12 17:14:28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('333', '2017-12-12 18:28:36', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('334', '2017-12-12 19:11:31', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('335', '2017-12-13 10:13:10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('336', '2017-12-13 10:14:49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('337', '2017-12-13 11:24:23', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('338', '2017-12-13 15:01:25', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('339', '2017-12-13 20:21:10', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('340', '2017-12-13 23:44:48', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('341', '2017-12-14 03:28:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('342', '2017-12-14 04:44:53', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('343', '2017-12-14 05:00:34', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('344', '2017-12-14 14:49:57', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('345', '2017-12-15 11:07:11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('346', '2017-12-15 11:16:52', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('347', '2017-12-15 11:57:06', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('348', '2017-12-15 15:32:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('349', '2017-12-15 20:03:12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('350', '2017-12-18 10:53:58', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('351', '2017-12-18 11:06:04', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('352', '2017-12-18 14:26:23', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('353', '2017-12-18 15:28:07', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('354', '2017-12-18 16:26:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('355', '2017-12-19 13:17:01', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('356', '2017-12-19 14:54:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('357', '2017-12-19 15:39:20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('358', '2017-12-19 16:03:26', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('359', '2017-12-19 16:12:21', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('360', '2017-12-19 16:34:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '221.133.38.162', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('361', '2017-12-19 21:36:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('362', '2017-12-19 21:59:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('363', '2017-12-19 22:26:00', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('364', '2017-12-20 10:54:06', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('365', '2017-12-20 15:29:15', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('366', '2017-12-20 16:18:10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.75 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('367', '2017-12-20 17:09:00', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('368', '2017-12-20 17:09:42', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('369', '2017-12-20 17:31:46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('370', '2017-12-20 17:49:16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('371', '2017-12-20 18:12:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '203.121.31.18', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('372', '2017-12-20 18:25:50', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('373', '2017-12-21 09:40:21', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('374', '2017-12-21 11:20:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '221.133.38.162', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('375', '2017-12-21 11:34:19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('376', '2017-12-21 16:35:07', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('377', '2017-12-22 13:02:05', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('378', '2017-12-24 20:26:58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('379', '2017-12-25 11:05:54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('380', '2017-12-26 10:20:26', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('381', '2017-12-26 15:23:17', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'cc', '1');
INSERT INTO login_bklog VALUES ('382', '2017-12-26 15:35:16', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('383', '2017-12-27 14:17:59', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('384', '2017-12-27 16:37:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '203.121.31.18', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('385', '2017-12-27 17:33:36', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('386', '2017-12-27 17:55:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('387', '2017-12-27 17:56:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('388', '2017-12-27 20:02:51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('389', '2017-12-27 23:06:54', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('390', '2017-12-28 10:31:38', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('391', '2017-12-28 14:45:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '221.133.38.162', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('392', '2017-12-28 16:42:50', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('393', '2017-12-28 17:11:23', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('394', '2017-12-28 20:03:25', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('395', '2017-12-29 11:26:11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('396', '2017-12-29 16:13:20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('397', '2017-12-29 17:39:16', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('398', '2017-12-29 22:56:05', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('399', '2017-12-31 06:00:43', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('400', '2017-12-31 11:30:41', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('401', '2017-12-31 12:08:23', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('402', '2017-12-31 12:37:56', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('403', '2017-12-31 20:44:18', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('404', '2017-12-31 22:56:04', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('405', '2017-12-31 23:06:03', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('406', '2018-01-01 00:37:51', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('407', '2018-01-01 00:50:38', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('408', '2018-01-02 10:54:51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('409', '2018-01-02 19:24:49', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('410', '2018-01-02 19:33:42', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('411', '2018-01-03 11:02:51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('412', '2018-01-03 13:26:05', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('413', '2018-01-03 14:00:00', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('414', '2018-01-03 15:40:47', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('415', '2018-01-03 19:34:05', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('416', '2018-01-04 14:32:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('417', '2018-01-04 20:00:59', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('418', '2018-01-05 16:27:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('419', '2018-01-05 19:55:02', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('420', '2018-01-08 10:55:45', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.8', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('421', '2018-01-08 18:29:34', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('422', '2018-01-08 19:52:58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('423', '2018-01-09 09:53:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('424', '2018-01-09 14:52:18', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.8', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('425', '2018-01-09 16:03:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '203.121.31.18', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('426', '2018-01-10 11:35:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '221.133.38.162', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('427', '2018-01-10 16:18:20', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4033.400 QQBrowser/9.6.12624.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('428', '2018-01-10 17:29:36', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('429', '2018-01-10 18:40:33', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('430', '2018-01-11 11:16:12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('431', '2018-01-11 13:02:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '203.121.31.18', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('432', '2018-01-11 17:17:41', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4295.400 QQBrowser/9.7.12661.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('433', '2018-01-12 09:50:11', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('434', '2018-01-12 10:44:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '221.133.38.162', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('435', '2018-01-15 11:03:02', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4295.400 QQBrowser/9.7.12661.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('436', '2018-01-15 15:35:20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('437', '2018-01-15 17:12:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('438', '2018-01-16 18:49:21', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('439', '2018-01-17 10:58:43', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4295.400 QQBrowser/9.7.12661.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('440', '2018-01-17 15:21:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '221.133.38.162', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('441', '2018-01-17 15:24:42', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('442', '2018-01-17 21:04:09', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('443', '2018-01-17 21:15:04', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('444', '2018-01-18 10:42:48', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('445', '2018-01-18 11:38:15', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4295.400 QQBrowser/9.7.12661.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('446', '2018-01-18 15:19:32', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('447', '2018-01-19 12:58:36', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4295.400 QQBrowser/9.7.12661.400', '103.7.29.9', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('448', '2018-01-22 10:23:31', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4295.400 QQBrowser/9.7.12661.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('449', '2018-01-22 10:57:14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('450', '2018-01-22 16:18:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4295.400 QQBrowser/9.7.12661.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('451', '2018-01-22 17:16:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '221.133.38.162', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('452', '2018-01-23 12:13:04', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('453', '2018-01-23 15:22:28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('454', '2018-01-23 16:59:05', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('455', '2018-01-23 17:08:25', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('456', '2018-01-23 19:57:51', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4295.400 QQBrowser/9.7.12661.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('457', '2018-01-24 12:14:22', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('458', '2018-01-24 15:38:51', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('459', '2018-01-25 10:50:13', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4295.400 QQBrowser/9.7.12661.400', '103.7.29.6', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('460', '2018-01-25 11:33:46', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('461', '2018-01-25 15:14:56', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('462', '2018-01-25 15:17:06', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('463', '2018-01-26 10:09:23', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('464', '2018-01-27 18:20:50', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('465', '2018-01-29 11:13:07', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('466', '2018-01-29 19:11:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4549.400 QQBrowser/9.7.12900.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('467', '2018-01-29 21:14:58', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('468', '2018-01-30 11:01:08', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('469', '2018-01-30 14:54:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('470', '2018-01-30 19:20:17', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4549.400 QQBrowser/9.7.12900.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('471', '2018-01-30 23:00:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', 'job', '10');
INSERT INTO login_bklog VALUES ('472', '2018-01-31 10:11:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('473', '2018-01-31 10:28:26', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('474', '2018-01-31 13:19:15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('475', '2018-01-31 13:22:59', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('476', '2018-01-31 14:21:06', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('477', '2018-01-31 14:22:21', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', '101.127.248.186', 'paaskghk.jingle.cn', '', '2');
INSERT INTO login_bklog VALUES ('478', '2018-01-31 17:25:29', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('479', '2018-01-31 17:40:06', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'job', '11');
INSERT INTO login_bklog VALUES ('480', '2018-01-31 19:35:33', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4549.400 QQBrowser/9.7.12900.400', '103.7.29.6', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('481', '2018-02-01 01:35:21', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '8');
INSERT INTO login_bklog VALUES ('482', '2018-02-01 02:50:22', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('483', '2018-02-01 04:20:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('484', '2018-02-01 04:29:14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('485', '2018-02-01 05:17:22', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('486', '2018-02-01 05:43:38', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('487', '2018-02-02 10:15:05', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4549.400 QQBrowser/9.7.12900.400', '103.7.29.8', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('488', '2018-02-02 10:59:59', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('489', '2018-02-02 14:16:56', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('490', '2018-02-02 15:33:12', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('491', '2018-02-02 18:11:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('492', '2018-02-05 10:35:43', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('493', '2018-02-05 14:13:28', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '11');
INSERT INTO login_bklog VALUES ('494', '2018-02-05 14:15:27', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('495', '2018-02-05 15:20:13', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.4549.400 QQBrowser/9.7.12900.400', '103.7.29.7', 'paaskghk.jingle.cn', 'job', '7');
INSERT INTO login_bklog VALUES ('496', '2018-02-05 16:51:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '116.12.204.157', 'paaskghk.jingle.cn', '', '10');
INSERT INTO login_bklog VALUES ('497', '2018-02-05 17:33:59', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('498', '2018-02-05 18:10:58', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '4');
INSERT INTO login_bklog VALUES ('499', '2018-02-05 20:13:43', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '4');
INSERT INTO login_bklog VALUES ('500', '2018-02-05 20:13:56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '4');
INSERT INTO login_bklog VALUES ('501', '2018-02-05 20:15:02', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '4');
INSERT INTO login_bklog VALUES ('502', '2018-02-05 20:15:20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '4');
INSERT INTO login_bklog VALUES ('503', '2018-02-05 20:16:55', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '4');
INSERT INTO login_bklog VALUES ('504', '2018-02-05 20:20:56', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('505', '2018-02-05 20:21:18', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('506', '2018-02-05 20:24:05', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('507', '2018-02-05 20:25:59', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('508', '2018-02-05 20:29:59', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('509', '2018-02-05 20:30:13', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('510', '2018-02-05 20:30:18', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('511', '2018-02-05 20:30:25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '4');
INSERT INTO login_bklog VALUES ('512', '2018-02-05 20:32:16', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('513', '2018-02-05 20:32:42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('514', '2018-02-05 20:33:28', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('515', '2018-02-05 20:39:45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('516', '2018-02-05 20:42:50', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('517', '2018-02-05 20:43:00', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('518', '2018-02-05 20:45:40', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('519', '2018-02-05 20:45:47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('520', '2018-02-05 20:56:20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('521', '2018-02-05 20:56:36', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');
INSERT INTO login_bklog VALUES ('522', '2018-02-05 20:57:54', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', '', '1');
INSERT INTO login_bklog VALUES ('523', '2018-02-05 21:02:37', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '101.231.115.150', 'paaskghk.jingle.cn', 'jj1001', '1');

-- ----------------------------
-- Table structure for `login_bktoken`
-- ----------------------------
DROP TABLE IF EXISTS `login_bktoken`;
CREATE TABLE `login_bktoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `is_logout` tinyint(1) NOT NULL,
  `inactive_expire_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_bktoken
-- ----------------------------
INSERT INTO login_bktoken VALUES ('1', 'ZhoBAmM3RodOXN7p4bO0HuceJn5JBl2KkyNzmW8bWlU', '0', '0');
INSERT INTO login_bktoken VALUES ('2', 'Mc63MLux_oghE3HkRWLTHM6Fy4SO8MVOw7gxKiOmL2E', '1', '0');
INSERT INTO login_bktoken VALUES ('3', 'CNoNEPXhdI3WcVnatXwA3vwm3tKMeN6K_VLFvxVllPo', '1', '0');
INSERT INTO login_bktoken VALUES ('4', 'qdqTZ-isbqyf1OvBjVoyTOr3nbcQNZu7XrU_qFd_gog', '1', '0');
INSERT INTO login_bktoken VALUES ('5', 'asl6GTe0fsnH78vNxrqO0Slf5qaOY5fgpvj44bVPFEM', '1', '0');
INSERT INTO login_bktoken VALUES ('6', 'ZP49R_B6VGD_7RBaiac9p6HIVpLJBn2uJOwoaNJKd2s', '1', '0');
INSERT INTO login_bktoken VALUES ('7', 'estVaNz6XKfa3Uvjr2eM60I9cBC4H9ONBXKxXYDvW2o', '0', '0');
INSERT INTO login_bktoken VALUES ('8', 'F2LROsjQbb8-KaQQ2X_Y8-bvweNnHMVcKC3nTikv15o', '1', '0');
INSERT INTO login_bktoken VALUES ('9', 'WHgYUsChx9r18VL43u9K31rlZaQslDTTu6i_6v250cM', '0', '0');
INSERT INTO login_bktoken VALUES ('10', 'kNf7lOTuZzEV20yTWrX7H5EO1l7xDuUGTyqz1pjEpFM', '0', '0');
INSERT INTO login_bktoken VALUES ('11', 'eyE4BlA9SdoeAx2Rkkj05KP4fWMOnTXMalYZpTvlaEM', '0', '0');
INSERT INTO login_bktoken VALUES ('12', 'XxlvrrcBhd5IeDUK5kkN9BYnWmcJMp2iX2SkHXlHiak', '1', '0');
INSERT INTO login_bktoken VALUES ('13', 'eGasc4dVIXs-84GnsgNwoNOqX1locn6FOfPo5acyx7U', '0', '0');
INSERT INTO login_bktoken VALUES ('14', 'XcmFc_O6L_Ac3C3fKVPwCq7zly-l7jUMT74n9Rw0e5Y', '0', '0');
INSERT INTO login_bktoken VALUES ('15', 'yIuh41V5tdKrvQmV6mPxetzAt7iyYExl_FcCixbnK7o', '1', '0');
INSERT INTO login_bktoken VALUES ('16', 'ijShEQRCSIRwj3XjMAAODMzoeeX4Tk9MjN_dr2rgN7Q', '0', '0');
INSERT INTO login_bktoken VALUES ('17', 'AZORZ5nkvhZSUiAfg_CSDt4KRM_wqdTbL_sVQhQOKsQ', '0', '0');
INSERT INTO login_bktoken VALUES ('18', 'dWhXbVZfQcVsULLLLPX5O_o4jE5q0fWknzsuDfr986w', '0', '0');
INSERT INTO login_bktoken VALUES ('19', 'xawiUsObeUCEYcY-p5WyvGNsfdhyerWuCYrFARUb1fA', '0', '0');
INSERT INTO login_bktoken VALUES ('20', 'gjHtWf_4sFwwykQ3SvJxX8lYAgt9QEywB7jZTsgpyug', '0', '0');
INSERT INTO login_bktoken VALUES ('21', 'g4wGv09D94ZaAknCpo-rNOI0RILC6r159iMNiHw4sI8', '1', '0');
INSERT INTO login_bktoken VALUES ('22', 'eAx9d0S2TU1CLSfxs_WibsoZpBrEcuiqf_w0Z1wY2vs', '1', '0');
INSERT INTO login_bktoken VALUES ('23', 'e0kmHLS6SXXhJNSvOPpynQHc52ghh7ZEgXUl2d7vZ-A', '0', '0');
INSERT INTO login_bktoken VALUES ('24', 'PapY_efQJDwf3m65DzZmxRmVhS5Cs4ckHw1bMAv09kY', '1', '0');
INSERT INTO login_bktoken VALUES ('25', 'rysOvTQ7zaN0-DTu9ylgDJ6LKdu7eVeKtMvjRKzblcs', '0', '0');
INSERT INTO login_bktoken VALUES ('26', 'LYI8JyCUhf7cZJAsMlIHwx3GCd6dOr6nVrDPdVgcHO4', '0', '0');
INSERT INTO login_bktoken VALUES ('27', 'HyBm6-LnZC2_oAX7VzkJfSDJ_n-uF9nYPc9u0QyIzt4', '0', '0');
INSERT INTO login_bktoken VALUES ('28', '8gvYo3aMEo1ghSPioZ6-Rf3r6yojmjHzLOwDE26ik9U', '0', '0');
INSERT INTO login_bktoken VALUES ('29', '7EZDbBdY5ER6ow4c2BX83sZeAZupSTy73oX2oMIzj0k', '0', '0');
INSERT INTO login_bktoken VALUES ('30', '14afcje4LMOKQ3uZY9avb6nZQvMuPFThUvbvz-fqUv4', '0', '0');
INSERT INTO login_bktoken VALUES ('31', 'aFbAZFyAJ70ZHwJcANRS4G8PjPB_beYvY6eNjBKevo4', '0', '0');
INSERT INTO login_bktoken VALUES ('32', 'L-9qN81wLKFXstCiKXBnmllrBU1oVO4cnY_paY9L480', '1', '0');
INSERT INTO login_bktoken VALUES ('33', '5PzVbLNUqMt0yZ0u8KQFx8z7U4qbBE-uPnd7L3ewqFU', '0', '0');
INSERT INTO login_bktoken VALUES ('34', 'JrP_aNe5WYO0MGTf2ZcqSW04St8wZlX4IbR51qTtVFQ', '0', '0');
INSERT INTO login_bktoken VALUES ('35', 'H72Pnvo1qWsigP22rAA-Gjmijb_WcEhLc2YRhGQLRys', '0', '0');
INSERT INTO login_bktoken VALUES ('36', 'AXUX5c4AvFKcKCkp4OvEP2fkxo1-2FnhS3aXY3WJ9Yw', '0', '0');
INSERT INTO login_bktoken VALUES ('37', 'GYIDVsLM6r-hxippI0h1EsKvAQ0zCd6FqTtbmsWyf04', '1', '0');
INSERT INTO login_bktoken VALUES ('38', 'XeN6yWClCQHEOmDvUx6vv2_zcVjmzCxRe7roWZD0Y_0', '0', '0');
INSERT INTO login_bktoken VALUES ('39', 'Z3W9nlY2L1jaP84tlPs9wFOY0gRSozF7jDHS_EIYncs', '1', '0');
INSERT INTO login_bktoken VALUES ('40', 'JravyP0K5yHvILhCjhm0mSfq6LNwSMxHt4l0oWyQYh0', '1', '0');
INSERT INTO login_bktoken VALUES ('41', 'hvy32EQGAuYJpmCePpYAXApQET9msYJrqaPklW_pHw4', '0', '0');
INSERT INTO login_bktoken VALUES ('42', 'ZBDlJO9W-Lxd6bAUHOcP1YAhBZ9Q1Oq9Ux6nt0ClXNI', '0', '0');
INSERT INTO login_bktoken VALUES ('43', 'xggHh8hySkyw-R_lWnmAQN-3RDQzQQoUkzrb98BJgZk', '1', '0');
INSERT INTO login_bktoken VALUES ('44', 'QaeYo6vECBcpvdTOzJk45mUCx8-CgbFE9f0lqX3qajQ', '0', '0');
INSERT INTO login_bktoken VALUES ('45', 'Wb2BQ8_-bKFs67yS61A39KLKls-JmhjduWZl5DVGn7w', '1', '0');
INSERT INTO login_bktoken VALUES ('46', 'EZmMOxJaVBbgk3w0FV6wZmNSIEQslKorZM7Byzyuu5c', '0', '0');
INSERT INTO login_bktoken VALUES ('47', 'JjLO0Ndz7D_ZZEzSlGw02zTbkG4S9t7rHn6IBFwKIKY', '1', '0');
INSERT INTO login_bktoken VALUES ('48', 'jf6pDTYMR8HziWv2FexjOsY8dVnw3-2TJ4anxbeYbuE', '0', '0');
INSERT INTO login_bktoken VALUES ('49', '2eHt4GMdTrvRqSmpB9RVoGHSlhubFqoyFxmCnNme2TA', '0', '0');
INSERT INTO login_bktoken VALUES ('50', 'kS2IC0FcooJmmjEKJlxKqO7KILpmDAstH_27wkl3oAQ', '0', '0');
INSERT INTO login_bktoken VALUES ('51', 'RaIwAcQLAseuVs6MY1O4slW_Gv4170eFOIw1RMx2728', '1', '0');
INSERT INTO login_bktoken VALUES ('52', '_GZNpO8lD43OY3y3YMK_mJXr4givhDgyrNBUM7yJ-xE', '1', '0');
INSERT INTO login_bktoken VALUES ('53', 'iKJCBS_cQbvRNlCXrr9mafw3EU7nWkRAQDGYkNp6X0c', '0', '0');
INSERT INTO login_bktoken VALUES ('54', 'I227lau1oLUPPCiLc5QLQTd7Y7WNGcY-RTrLz-fFm_k', '1', '0');
INSERT INTO login_bktoken VALUES ('55', 'IzYtB4QU7VEbqjLxd8nmmoum8QoOkLO0jilTL4bLT0E', '1', '0');
INSERT INTO login_bktoken VALUES ('56', 'oz57XTRyetndmlH6Zhabw23lX4xnfP-PkLB0uGZhYwg', '1', '0');
INSERT INTO login_bktoken VALUES ('57', 'DbkEOxsUkw1dZZlbsgTU8yJidsQDs4_HI3oecJakOv0', '0', '0');
INSERT INTO login_bktoken VALUES ('58', 'tWgwKZcN15AVd1bDS9FggphEJP8PGT6i6MJCN8ycofQ', '1', '0');
INSERT INTO login_bktoken VALUES ('59', 'lORW6sN63tu7WVmHOBwDFds8C1gZ5MEj3KKqJQ0DYKE', '0', '0');
INSERT INTO login_bktoken VALUES ('60', 'DEsz1ZhIqhThsHnXCJcscKM5zBcTz_2L4JX_bYUWJ3A', '0', '0');
INSERT INTO login_bktoken VALUES ('61', 'i1jXgkoiWvUPXVs5HW0-_NxtqFcRWkPkiA8I1Zbc2pE', '0', '0');
INSERT INTO login_bktoken VALUES ('62', '1G99t0r2HnqhLne6tOemNNUNP6XMUHOX-DNQO8pmP_Y', '0', '0');
INSERT INTO login_bktoken VALUES ('63', 'kMEIb7Q4aNzLaDnpkeKl8cJqxdfRctzXPNJwtWpFoZ8', '0', '0');
INSERT INTO login_bktoken VALUES ('64', 'TRT9bukjm3IO8Xhp63aac3oDXev3NqforVo-PhyzilE', '1', '0');
INSERT INTO login_bktoken VALUES ('65', 'nxywD87R5nU_WUeBV3mV8XF4jThy7DA5hWPQmxbK03E', '1', '0');
INSERT INTO login_bktoken VALUES ('66', 'IbkG8EpegEA1lOrSXWQDCq8qU_1tWJJdvJiAXcntLUw', '1', '0');
INSERT INTO login_bktoken VALUES ('67', 'UqhkFE-Tho3mY3s4jiSG8QudU0ctDoEZhalc4BY5N4o', '1', '0');
INSERT INTO login_bktoken VALUES ('68', 'fJRhwajEBmn4UCHMxPHWoh1D-jGjjbbzshPMbnA0GqA', '0', '0');
INSERT INTO login_bktoken VALUES ('69', '-NzpzG3WxZiWvhzFk2L0whZBcaVHEjIDweW1T9N7IIA', '0', '0');
INSERT INTO login_bktoken VALUES ('70', 'Ihi1p5jS8VadMAwi-hTfdZF0ZrtYZPQehYtXXV7mSQs', '1', '0');
INSERT INTO login_bktoken VALUES ('71', 'TJuCz-XgZViO74mNxC-v_kq8wJk-hIMYwqirA3ryxas', '0', '0');
INSERT INTO login_bktoken VALUES ('72', '-fXIL9HYsFQRd5_zyomYaBUazKBxa-zq2ovIJIZRIic', '0', '0');
INSERT INTO login_bktoken VALUES ('73', 'hS3K8wZQjh71JCpEP4c1vw-l89V9kOYkzQTiACHkAAk', '1', '0');
INSERT INTO login_bktoken VALUES ('74', 'h199bDHQNZpJRxrnmfXaly4JLzBTBQ7wqVlieDEDW1o', '0', '0');
INSERT INTO login_bktoken VALUES ('75', 'ggLThzHNxWmX_sLZJEd8tkrz9fxmranjtIFdcFWC4wI', '0', '0');
INSERT INTO login_bktoken VALUES ('76', 'Udq51S2xmuYC0RjqVzv904o17BJsYwcy1odIfU__kOg', '0', '0');
INSERT INTO login_bktoken VALUES ('77', 'ZtFavJNxjMGj4SGQNfzgEspeiJq3YttG6oA7f_D1A4A', '1', '0');
INSERT INTO login_bktoken VALUES ('78', 'jBsUOhaM52MT7LURGOdpVuzJMGmDdox5541nr4ngo48', '1', '0');
INSERT INTO login_bktoken VALUES ('79', '4fU7sX8t4sQjoc0MBTVBXJPvMM0r7RzrtsyOoelgtd4', '0', '0');
INSERT INTO login_bktoken VALUES ('80', 'vbI1reENXJ1ZeUF77VzSsdTuNSR37R0cSJo2eXwKiSA', '1', '0');
INSERT INTO login_bktoken VALUES ('81', 'MzHVVvHdd93O64N2cp4dNGPYthdMrY08sP-6jamVAbY', '0', '0');
INSERT INTO login_bktoken VALUES ('82', 'chN8duEwV4x3i4o1ye_JIosbbMR_TLsTwCkDeRdX6MI', '0', '0');
INSERT INTO login_bktoken VALUES ('83', '_lBmkq3hfPwoQs3ho35Xf3bx6ySoX58NsXlyymTrbNg', '0', '0');
INSERT INTO login_bktoken VALUES ('84', 'I7jsGggbLMOmAkcXG_t5Je2mDNMPKSqA1oU7bToTv7Y', '1', '0');
INSERT INTO login_bktoken VALUES ('85', '9_IFJo-LiQKYK9uN5lKahGVf-ZV8X4IHupn-YZGyC7I', '0', '0');
INSERT INTO login_bktoken VALUES ('86', 'Sl5M5CMu_0aNoNRxOd-5jqH8KoCXEel3Gc9oHQ_h5Qk', '0', '0');
INSERT INTO login_bktoken VALUES ('87', 'F0N8awi6cjq7kGsmlfdLQdjg7Q5Rdr2RG-fOlVInLfs', '1', '0');
INSERT INTO login_bktoken VALUES ('88', 'dj29UPbN75iCI1amfxkop5ik073cW5XmxkD62a5nCpg', '0', '0');
INSERT INTO login_bktoken VALUES ('89', 'CSa8hg71ev6hKDeg008-BN2XXkusVTSUuRPJsNVqH3c', '1', '0');
INSERT INTO login_bktoken VALUES ('90', '7sGIBfRpQrTi9JlbizL-EYSCPoRxa7fAqCDitW2TDBA', '1', '0');
INSERT INTO login_bktoken VALUES ('91', 'E0Xo9cCsC0s7Eq9t6qwc9lI-VPo6xoJgRLytS-q7_Mo', '0', '0');
INSERT INTO login_bktoken VALUES ('92', '2ZFH3S3PmNQ_-2XAGWM4ZOZ5PhiH8Ge5yOcaesOl89Y', '0', '0');
INSERT INTO login_bktoken VALUES ('93', 'Sthcbk2jPFtaF7peKmn-6nBb7JfkQwJnjUGeVMohz60', '0', '0');
INSERT INTO login_bktoken VALUES ('94', 'UDzFeLhCiPJ6zY0Tvm81YaF0WMTHeCmXwPb-68l78GM', '0', '0');
INSERT INTO login_bktoken VALUES ('95', 'qpirxjjoOwHyBU1jE2g25-x9DWuK-Y4IiKD2UfuEl9M', '0', '0');
INSERT INTO login_bktoken VALUES ('96', 'RnjJKA1wnQRMYT6DIgIIMFWY_kFSg-25IMVqQVD3xco', '0', '0');
INSERT INTO login_bktoken VALUES ('97', 'gZ-mRirDxSOoephtFoFCcKjoIURj0tBTuxulbR90oPg', '0', '0');
INSERT INTO login_bktoken VALUES ('98', 'Y-LuFy027W1OmlWnOjoXgneMIZK6bGlDlzEvv6JlG9E', '1', '0');
INSERT INTO login_bktoken VALUES ('99', '_CHN8xrUtWT30h_vCZrTzqp2SakBcfLN4KmpLKFQROI', '0', '0');
INSERT INTO login_bktoken VALUES ('100', 'kkZQ0jaeIKuP1YFCeM883EBiOwLD4QN_uVwcOdNbXr4', '0', '0');
INSERT INTO login_bktoken VALUES ('101', 'pJlnP_dPYo2Md7tFdchLG8yhcNjcTpVqTscx_qwcZAo', '1', '0');
INSERT INTO login_bktoken VALUES ('102', 'cU-LEcGw9A_Z8o-YcHHj891LqT334UIRU_3weje3BNo', '1', '0');
INSERT INTO login_bktoken VALUES ('103', 'KDlsL8dx8p9LOoddf0LdVjCKcXNXDDCyoUEkN6WOw-c', '0', '0');
INSERT INTO login_bktoken VALUES ('104', 'GATgOYaZI20j0vNOE9n9IzYuDcYBqgTWeIluQGmVncY', '0', '0');
INSERT INTO login_bktoken VALUES ('105', 'xTsUH12BcfTr0RZBA3VgCvxjhnOnmD2OJb65YGybi4A', '0', '0');
INSERT INTO login_bktoken VALUES ('106', 'MTESPfDSe_zYlaOC1m1SFKropiVfVwM_x-LyNnNcCw8', '0', '0');
INSERT INTO login_bktoken VALUES ('107', '5UxPPfF8YKUM1mp324IFIpvj4BenEher0XDdXYnaaE0', '0', '0');
INSERT INTO login_bktoken VALUES ('108', '7T4SqeAD9Pjib-g9xVqa1nlrj7ZDq6pjPLM8aCSeRG0', '0', '0');
INSERT INTO login_bktoken VALUES ('109', '88ksXbjxJZySwO3EGgAhUZU7XKUG_v-wADyekN91WI8', '0', '0');
INSERT INTO login_bktoken VALUES ('110', 'akGB0PY5AOMfOIEFi9-bPeW1JnEXeVVx77rJ7rZvHyM', '0', '0');
INSERT INTO login_bktoken VALUES ('111', 'PO3hX9T1XT7BVWgFo_xlb9QMztwmBso-dS6YU0kKrn4', '1', '0');
INSERT INTO login_bktoken VALUES ('112', 'RIuY0Z17mBNyec7Mz5wyznwvdmXi7S6LUqAY1ywigAw', '0', '0');
INSERT INTO login_bktoken VALUES ('113', '-gTKv9o6H1Ct2d8eV2qzUKUnT39u2VMVBIW_Nt8A5a0', '1', '0');
INSERT INTO login_bktoken VALUES ('114', 'pw-IFEDAhr3dYX6AFVf-nCIAESARKQ7LSA57mIDg3WU', '0', '0');
INSERT INTO login_bktoken VALUES ('115', 'uG_TwhSv-gaEU1Qy4C__qdgW751JODIMQ4bGFCSBOhU', '0', '0');
INSERT INTO login_bktoken VALUES ('116', 'xdH8UB_Ktq3ys0imyhi6WbJZmsvEQ5orw4ZrvPRnn1Q', '1', '0');
INSERT INTO login_bktoken VALUES ('117', 'cFVO_u5drqelNpm_zz_3RI3YPUswzuZNwollzV0pPyQ', '0', '0');
INSERT INTO login_bktoken VALUES ('118', 'v4CZVQ8oqcEtOFx48qwQRYk0c6-Qp1UagPzw7tXXbmw', '0', '0');
INSERT INTO login_bktoken VALUES ('119', 'EvFtNOYVjXHPkC5ogjJNS6CBnbhD16D5uXiMRWnI5uE', '0', '0');
INSERT INTO login_bktoken VALUES ('120', 'EVoivBQ3BVVL_FlC5XNbdATgYw42zSs7grBNctmdTjU', '0', '0');
INSERT INTO login_bktoken VALUES ('121', 'J_qMN2g7Hq1BVJ_xPonFVQNKeUL1nwixANvdInHYUV0', '0', '0');
INSERT INTO login_bktoken VALUES ('122', 'Z7cwRolq5gdFLhyuA5kZenAv3SeoM8zDONDgaYkOBgU', '1', '0');
INSERT INTO login_bktoken VALUES ('123', '6x5kycRkQ3Uz92eKmYNFzhtV92DCq4XyxqbJgwIR_jA', '0', '0');
INSERT INTO login_bktoken VALUES ('124', '8CAdPCoVH-N8QBuIIhKLQw2YAbgDhJPQA2Xq43Ejomc', '1', '0');
INSERT INTO login_bktoken VALUES ('125', 'nYh0YuBXcH2PwhPmVNp2dhsbQ2ZF4isc707aep7EHVk', '1', '0');
INSERT INTO login_bktoken VALUES ('126', 'zx6i2j6v8TVf045xFDXk298bYvXkEVZ6G-L3hEVkUqc', '0', '0');
INSERT INTO login_bktoken VALUES ('127', 'rFr_ebUvduw6BhbEf0yzHJA_3-CKH478li-oEttyXIc', '0', '0');
INSERT INTO login_bktoken VALUES ('128', 'z0IZ6J56DJ4n4akEORySrAm-0NBDIKIXxD6UObqmBHg', '0', '0');
INSERT INTO login_bktoken VALUES ('129', 'v2WEkG3bRBaVXpUTAprWzvuSwJlaps-odtctqI7832U', '0', '0');
INSERT INTO login_bktoken VALUES ('130', 'FDsmPDFjvSQbKcvF4P0y8qvZ5WvrqSvO6QaH_u1XLCM', '1', '0');
INSERT INTO login_bktoken VALUES ('131', 'onXAX3QzmUtlDWksxPgyV80oGCbUBJpHAe8tVkJvMuo', '0', '0');
INSERT INTO login_bktoken VALUES ('132', 'ZlCda_6TTttt5te7Xkqj0cW6TnzjXuxklTAXwJ522qQ', '0', '0');
INSERT INTO login_bktoken VALUES ('133', 'ZeHyPAMQJDiD4y0ECs265jApfY5mkS9ylymWjKby9v0', '0', '0');
INSERT INTO login_bktoken VALUES ('134', 'tDbOA-tNp0FOlrd8i9y7-1fYqcgPrFvVuhI4HQ_TcQw', '1', '0');
INSERT INTO login_bktoken VALUES ('135', 'kGY2pOv-ZM_dq8h55_v1zBsXY4-E904CsJ0l9PHOHBg', '1', '0');
INSERT INTO login_bktoken VALUES ('136', 'g3Ffck7qlnVNooC5ZkJTyq-Ahd8ei8zkNLfa9I50A1Y', '1', '0');
INSERT INTO login_bktoken VALUES ('137', 'oGFmbDwgboJrbUaxd1R4EXJ8IDSeop1_53xQzxqZ6w0', '0', '0');
INSERT INTO login_bktoken VALUES ('138', 'dVxjfr3Bem_IXzx_uaHGkbHYt77S2t_Y409m9NHlcOA', '1', '0');
INSERT INTO login_bktoken VALUES ('139', 'ObAbPO74ClvmOwefvgLZAc5vybhBndhf4UGagoR7Sr8', '0', '0');
INSERT INTO login_bktoken VALUES ('140', 'D-nn_71JewhyYPgMoCWmNuVvTkLMfUmPLax2azN-JQo', '0', '0');
INSERT INTO login_bktoken VALUES ('141', 'ZQBkLpIpjz3Lsfg87XLK7S4j7CpVvdBfD4uf7oty6PM', '0', '0');
INSERT INTO login_bktoken VALUES ('142', 'fMRN4hYRrV6emgycJe6NpoKyXFPPuoD0PagEc7S4PgU', '1', '0');
INSERT INTO login_bktoken VALUES ('143', 'QlipBguVIjhPcQmTDwO5r-fakRcyouUy3pppGN39apQ', '1', '0');
INSERT INTO login_bktoken VALUES ('144', 'zQobw5Q7G05bk2j3ncAYj2FBzWlmrqxyNOvqqfSstwo', '0', '0');
INSERT INTO login_bktoken VALUES ('145', 'ScRSOuvSqw72Zj4SbvH4g1gl4eO2ZWC97lAn_xNPwMI', '0', '0');
INSERT INTO login_bktoken VALUES ('146', 't98535iei8NC5VorAcN4H_5z0IBVe2mWQsd1ZhFdxY0', '0', '0');
INSERT INTO login_bktoken VALUES ('147', '4W5O43PuPr1gX49DJpq7YhRBGyswGNxcoL79G8BLQwQ', '0', '0');
INSERT INTO login_bktoken VALUES ('148', '2ijqJ787eh9O4cfsujNsElz5k4eLl2jKK2tog0jmhtA', '0', '0');
INSERT INTO login_bktoken VALUES ('149', '_Re8tgBvOCmf65SinuIaJS4L9hFlxmLq0HdCzK9RfVw', '0', '0');
INSERT INTO login_bktoken VALUES ('150', 'BmJCGBtVP_mD21_99x9ynCBdkyfFf3QIIJIjynLzujQ', '0', '0');
INSERT INTO login_bktoken VALUES ('151', 'H_z-gRmbkiqUKuMifoEl4EWK9_eZZFgDtkpQiMzYh28', '1', '0');
INSERT INTO login_bktoken VALUES ('152', 'l9vvrF-yRSSWPZSIaW9hV0KzpYF12nqXEEGIcu3xO1c', '0', '0');
INSERT INTO login_bktoken VALUES ('153', 'Cobd6vAN0TNCoHPThX_rDSjc0Hlfb97yHwbVBalZAmA', '0', '0');
INSERT INTO login_bktoken VALUES ('154', 'oCc6OHQ6zGx0pv2R1zaUcBx4KOM3yF7Tphu2VexGf0w', '0', '0');
INSERT INTO login_bktoken VALUES ('155', 'TEiiSSKtvNqC8VUqctmo0ev097KVNBa-_M-5srcMywY', '0', '0');
INSERT INTO login_bktoken VALUES ('156', 'LKPSHtufCaDtWxB-0BUhxAAygarzWNeSGnFwNKK91-k', '0', '0');
INSERT INTO login_bktoken VALUES ('157', 'JDr4lLJ1m-mk0rnpwxMwN-mK8Zw3qWFTRVPc7gjnc-Q', '1', '0');
INSERT INTO login_bktoken VALUES ('158', '2Am--rMnrVSrkgPlI4PzfFuc7JmNaUdMzJjkEb7NpXQ', '0', '0');
INSERT INTO login_bktoken VALUES ('159', 'zoMzopxGCBiygqOq_jZv8-D0QT_xFh8TdX9IcHchqT8', '0', '0');
INSERT INTO login_bktoken VALUES ('160', 'RBZh5WcvdKmpt9HVUSP-BQFyTOLwCUvEF1GNjOLLsj4', '0', '0');
INSERT INTO login_bktoken VALUES ('161', 'dhYqxr95Uyk3InBjbf1EytfCkyL4IAEME4TWWEL4aoE', '0', '0');
INSERT INTO login_bktoken VALUES ('162', 'BJ_3oVdlmZvDnpFEAdElZ-OWnq9414TnPI3gfPOoBtI', '0', '0');
INSERT INTO login_bktoken VALUES ('163', 'aqTrl9F1Dss8qwreC9W-YgyaEHN_6lAvhGkQbI3gtp0', '0', '0');
INSERT INTO login_bktoken VALUES ('164', '6Ftrf7xKmfXkuNz0bBNA6tiNa2vwhfNNHdJu7H2GRQY', '1', '0');
INSERT INTO login_bktoken VALUES ('165', 'qEQDd24gSa_vw5SWLaldVKMXluugO2kHGLZdVNz62MA', '0', '0');
INSERT INTO login_bktoken VALUES ('166', 'NSDutCIB57brnv0-01tS4uqQCktCms3i9uCNa0s-L6Y', '0', '0');
INSERT INTO login_bktoken VALUES ('167', '0lNPpquU1ZM8xBICl3rpuVIeSmkAXILnM2Lp55_qgQc', '0', '0');
INSERT INTO login_bktoken VALUES ('168', 'vsL5BnMmIUbom-qdH7lyPRXYz-DOOfFXxz7n6Ig3p08', '0', '0');
INSERT INTO login_bktoken VALUES ('169', '_kN5BqHFBodFIqyBqFqcduRqXe_FY5TRayT5qOo49LY', '1', '0');
INSERT INTO login_bktoken VALUES ('170', 'y83ci2PrUfYAY60OuS4xOo6UA5qJlFO9JsoppKIVySs', '0', '0');
INSERT INTO login_bktoken VALUES ('171', 'RVP3WSa613wiUw-kKptzMz7pbytZlWpgLSrQXHLGXOE', '0', '0');
INSERT INTO login_bktoken VALUES ('172', 'm0INKUR-bdbDCzdCAiDgFSvn1bOVOxmz5R969n3Vock', '0', '0');
INSERT INTO login_bktoken VALUES ('173', 'e3VilTLuL3YuU0tzu6vwE80y4GYNfbMuVF1rHdkl4I8', '0', '0');
INSERT INTO login_bktoken VALUES ('174', 'IP3qrSpxUZcfxlyJA_1VAC5AG1EUB-31-ESndSNC0Zs', '0', '0');
INSERT INTO login_bktoken VALUES ('175', 'U1RGUO9ZHgxsz42D2SHWyypzAWkVfZhMv7b8PKHIc8Y', '0', '0');
INSERT INTO login_bktoken VALUES ('176', 'aMuvbJjfARBHWl0TVLl5RtqJSoTN-Rcw0UoaYfkuRXc', '0', '0');
INSERT INTO login_bktoken VALUES ('177', '-UlNFKsnPAhW_kYCYH0kjzx3HU6h0y7poOWmvr1mhGo', '0', '0');
INSERT INTO login_bktoken VALUES ('178', 'KpaKY6EENpWdG6PLhJrETCUNGNHlLJBu6zp59qvFl8Y', '0', '0');
INSERT INTO login_bktoken VALUES ('179', 'VzSoi7EA-N9eccGyGE6-ftBMCu683eTYtaDTyEhsJ3o', '0', '0');
INSERT INTO login_bktoken VALUES ('180', 'dz93Orzk2V27LMOq1NHgn8ZjoSAvCnlPepbb-wxdFoA', '0', '0');
INSERT INTO login_bktoken VALUES ('181', 'FJDTUGnCtOTJZKWHxAQei7sGxtVcNvALl_zXiKeHGcU', '0', '0');
INSERT INTO login_bktoken VALUES ('182', 'iVlPEuHSZ9UO4a467r9BkmzIG6I_s5g7hv7fPuCRZr0', '0', '0');
INSERT INTO login_bktoken VALUES ('183', 'Ibi-I8JdQHyLkfbaZQGEbhFPhWFSwwOgHl0URloebLM', '0', '0');
INSERT INTO login_bktoken VALUES ('184', 'zpy48EhWHs8BTvxMqmi4KZRGHvaw6OFW0K4kM0ijaYU', '0', '0');
INSERT INTO login_bktoken VALUES ('185', 'jACf9gkJlbQJX1xg3gDA-H4Pee20yHkbxIj-W4z2mOs', '1', '0');
INSERT INTO login_bktoken VALUES ('186', 'lz1P-xmZiaXcdH6OBqRrZCP9QuVyXswje4rICoa0zvI', '0', '0');
INSERT INTO login_bktoken VALUES ('187', 'a8Y45XMPqxMAOYvqUR98JjSO8Ei2FtC4Srak8KSp8jU', '0', '0');
INSERT INTO login_bktoken VALUES ('188', 'LD9gkdioL7TsF28mr87-idnY-65GlMkZ6xZYbXAsZrw', '0', '0');
INSERT INTO login_bktoken VALUES ('189', 'B2i_-QeS1LPzHx3s1xvHoZj7Y8LG5l1iHoEmaQ1Zzn4', '1', '0');
INSERT INTO login_bktoken VALUES ('190', 'JPMq_Zu4LLZTWxiZ-snUfK551PuaL--I6zJtKAsTY4g', '0', '0');
INSERT INTO login_bktoken VALUES ('191', '1UQWVTcxe67TRaB0jn_gNv3Hf8gUK55Paatdu49aNXY', '1', '0');
INSERT INTO login_bktoken VALUES ('192', 'Pzyjg5RJgMSX1khxrwWaPOCWB6pmwQyzYiksnYlDOoc', '0', '0');
INSERT INTO login_bktoken VALUES ('193', 'UIlI2FZTwHsu0UXgqFHBQFcjMaX70vfxoDaae98SXr8', '0', '0');
INSERT INTO login_bktoken VALUES ('194', 'IxIaKgABbUK_XBcU6mjwJCBivN5YfvjX7bEufxQGdkk', '0', '0');
INSERT INTO login_bktoken VALUES ('195', 'EXonvfWHCre7yrYl0JZ6DsugeSe7dbe1efcJR9BRMh0', '0', '0');
INSERT INTO login_bktoken VALUES ('196', 'pSsGl1UYrEFK-WJ-QFvFTLsKnFFzJVq_bMzrnLS8kuI', '1', '0');
INSERT INTO login_bktoken VALUES ('197', 'idKqkJWKV5TKe_2y5lk7P-NMxYcnDvy79PnUv_yjp1o', '0', '0');
INSERT INTO login_bktoken VALUES ('198', 'rrgOPIYGWlgadvPFMgLHC8lOYXH_IuBXLCrqoCc6Mzg', '0', '0');
INSERT INTO login_bktoken VALUES ('199', 'xQpXm41vkH_ECsS5I3X305SaOqfqw--xzc79uU06XNc', '0', '0');
INSERT INTO login_bktoken VALUES ('200', 'xsuKw2FmWrRFvKsMDiToZc19SUIiPPFuvCTUBumwxAs', '0', '0');
INSERT INTO login_bktoken VALUES ('201', 't1QiivKwtgXbsyicUhxp30mR874QEoj_rE0bawnQwnw', '0', '0');
INSERT INTO login_bktoken VALUES ('202', 'HD7bcJ2Sl7STWNR0AQGimSYBJLCrqgNjT2rPTHPFpfw', '0', '0');
INSERT INTO login_bktoken VALUES ('203', 'br4fPs2lRDNlvr3mskFa9xvhZmJudefcxq0HBthHMcA', '0', '0');
INSERT INTO login_bktoken VALUES ('204', '9VlkAu8EWUQQASOlsBjKoMovZeY-fBVhBj_IZcj0ERQ', '1', '0');
INSERT INTO login_bktoken VALUES ('205', 'Lkypox36xXg11xePfXmyemBgReprI8JyUvj8kUH-Hy4', '0', '0');
INSERT INTO login_bktoken VALUES ('206', '9SsH-egYDBwEI-VQzgM8khPLHaGwnUZbXinpgyvmWVA', '0', '0');
INSERT INTO login_bktoken VALUES ('207', 'QM2kwoqByZRzKp5vWK-0cwqasKVF7HrzEqHbLm8tnQE', '0', '0');
INSERT INTO login_bktoken VALUES ('208', '8mEJ3IxggFIlQ2cdoQojwFtK_X6Qqv7OZQ_nRDGGMfo', '1', '0');
INSERT INTO login_bktoken VALUES ('209', 'MG6usMPmfcwIymWhXp65khq7y8Kx3aQ9yKc4yyvozNY', '0', '0');
INSERT INTO login_bktoken VALUES ('210', 'Lno6Kue2vbs6I1cbC49sQVqWUI-tCatO1FiP-bO5HHg', '0', '0');
INSERT INTO login_bktoken VALUES ('211', 'gIAjrLrwv3US7uFLg1yj1_6VtyxhWCP0M8xjW8UlZ_U', '0', '0');
INSERT INTO login_bktoken VALUES ('212', '9vqojvot5pXNqmeTnxhEiDYEXZwLGndvHzu0dCuPIJ4', '1', '0');
INSERT INTO login_bktoken VALUES ('213', 'VZh8EukNWCzzel4jTbZBku5qkiMNQuWLyxSw19dHUnI', '0', '0');
INSERT INTO login_bktoken VALUES ('214', 'yjCjHio1tNc3Rd17I72nZmK5w5KNNKaa-uD-fMGrq3Y', '0', '0');
INSERT INTO login_bktoken VALUES ('215', 'PewaGPxLafBwPK9V05oEKUD5fJycsTWS5_q1Ujh1lfM', '1', '0');
INSERT INTO login_bktoken VALUES ('216', '80iTlxL73npe8LTb2VNRso-LsFeg1B0Da8LGDgBr2W0', '0', '0');
INSERT INTO login_bktoken VALUES ('217', 'bBnIXM1SulnUbqb9ECqafo2v774cqxdAzwuZGm0igY4', '0', '0');
INSERT INTO login_bktoken VALUES ('218', 'wDrk5ULTux3HAGNlky3FLhWaTBpfjnvTGsQHnPnAUSE', '1', '0');
INSERT INTO login_bktoken VALUES ('219', 'Sbh2nL5dV1QLHXDktOViyxzl1upcZ8qqqXaAsyWxN-o', '0', '0');
INSERT INTO login_bktoken VALUES ('220', 'hQj-HqSVrDxRqe8GLvTS6J7KV9T_ymwxbR60OxpjoyQ', '0', '0');
INSERT INTO login_bktoken VALUES ('221', 'nzgIDvUdhZxYlYXQChGVQlwQjmXwCboh6iMi9g-EJ7g', '0', '0');
INSERT INTO login_bktoken VALUES ('222', 'CNbr_V88j2iM0XCX_vjF3h_i-0HS4vgrb4MFe1Sc6Lw', '0', '0');
INSERT INTO login_bktoken VALUES ('223', 'y8GxZc7Y_Ck9rHnPbH6Vfk6zDLVK9VWLphhLbRVLx-0', '1', '0');
INSERT INTO login_bktoken VALUES ('224', 'S6oT4bbM2k0HsB7BySeWKIfFunjleG-8O5dZMw1K-dw', '0', '0');
INSERT INTO login_bktoken VALUES ('225', 'MbPpjm8EuTglaxz1d35ca53BE0liV2BbPXGb8LQFlUU', '0', '0');
INSERT INTO login_bktoken VALUES ('226', 'oB-Y1SToswLAEu6uwzP-GewfW1NURWKDY2CbaZilweE', '0', '0');
INSERT INTO login_bktoken VALUES ('227', 'xaW7-HspbeApezO8feb99lHQRxpdXYaqHQvj7R58V7Y', '1', '0');
INSERT INTO login_bktoken VALUES ('228', 'yaGG15AqH6G0mEy5CcBlBxfrymkG-e66RKoWkqy2R0M', '0', '0');
INSERT INTO login_bktoken VALUES ('229', '8_KTOFVYbJTDa9sK17Z_-3k1YKlmN5BHVu1lZS6khNA', '0', '0');
INSERT INTO login_bktoken VALUES ('230', '9o-pIO8hz9hthmNL88hpqPidG7ownNuE4wV_bk_2Dck', '0', '0');
INSERT INTO login_bktoken VALUES ('231', 'yv9hOxChLUcr4Eu6gd-aD88tvCROphuA_WSsrtCwkm0', '0', '0');
INSERT INTO login_bktoken VALUES ('232', 'uKB7m8Nzv4pDYJuUNboHdf2bR5L-8YZJeQmDMheDj0Y', '0', '0');
INSERT INTO login_bktoken VALUES ('233', 'v5LjPjArz0NyqolRxA1fATmneWw95UJJigpplIUA0C8', '0', '0');
INSERT INTO login_bktoken VALUES ('234', '0QzineXhwBBpBBB7aCaTtpm6DOudTlMnXABgzfiuuOc', '1', '0');
INSERT INTO login_bktoken VALUES ('235', 'cyDltXAoj5igtumz2GMym8yFTEV8dDTIwAE3Y6dvSug', '0', '0');
INSERT INTO login_bktoken VALUES ('236', 'ixM2cFv-wvnOvMbzbsnKSpY2_O8pqSloSOpT4QGEzWI', '0', '0');
INSERT INTO login_bktoken VALUES ('237', 'XVEV7mh3vExLfSsqdqs_QnGKJ24bytOgbB0K6qTFCQM', '0', '0');
INSERT INTO login_bktoken VALUES ('238', 'MUABv7QfS5sUDqzmrlWvLrgOt6hb7LfYbnUBtdFfTgs', '0', '0');
INSERT INTO login_bktoken VALUES ('239', 'cP-Y8UDzmzQLQQ1KTlfUi9sB5MhA4Xp6tOn2OquPGJY', '0', '0');
INSERT INTO login_bktoken VALUES ('240', 'XQHdOcGXRgghRFKvsflICeRbVvA-gXa6VNFzkqBm-zU', '0', '0');
INSERT INTO login_bktoken VALUES ('241', 'F9oP7S6LLEFg6_ZnDUruLfeqYozb-0ojmV4GqILTJvA', '0', '0');
INSERT INTO login_bktoken VALUES ('242', 'A9e8JFucBuJy72UsnRs4ZmN-EGt7zG5b2joo7SIOrZY', '0', '0');
INSERT INTO login_bktoken VALUES ('243', 'rgclVJkD-fe8VowA0SQdAelINVwIw246-nokePApQWY', '1', '0');
INSERT INTO login_bktoken VALUES ('244', 'OcNtF3ku59WA9zp8gIbxed_QR8rGScw55jHRitmuF7E', '0', '0');
INSERT INTO login_bktoken VALUES ('245', 'Zh5iGBmJQkecLkC5ciUYpKS70lLpbf0ggKcOh-QCRFM', '1', '0');
INSERT INTO login_bktoken VALUES ('246', 'd4TFkcSI9WHlL6KHoIdlhjveqeuEIvbbGUBacS4C3b4', '1', '0');
INSERT INTO login_bktoken VALUES ('247', '29G7ugjDKrrvaPo8cPi4K-74BiThwFiUYrIr0T_2P3k', '0', '0');
INSERT INTO login_bktoken VALUES ('248', 'E9DaokCQQzcJqJhaQw5hLPXOeH_Te3BxpAIwsQzByk4', '0', '0');
INSERT INTO login_bktoken VALUES ('249', 'SkJuwUGQp-ziP_dZhFihlwJkUNL0dHSjghy_C_PV7Nw', '0', '0');
INSERT INTO login_bktoken VALUES ('250', 'RlPfPSX-yaeqrm13dAxdrcWtrvRzyKKRRF7afasbkvk', '0', '0');
INSERT INTO login_bktoken VALUES ('251', 'HMqPlDQnTQAfyyS2JcSjJ0tk-_Oo4TDXVmy3CjACRk0', '0', '0');
INSERT INTO login_bktoken VALUES ('252', 'nVR5Lhe-PRrfhcCiGfOh1cgnQ6NAY7377NWw8uSIqcc', '0', '0');
INSERT INTO login_bktoken VALUES ('253', 'FA7ZYzWo3fmaMfljqfAVOcMFQAacvjUarOInrqwiylQ', '0', '0');
INSERT INTO login_bktoken VALUES ('254', 'TPINDY3kYNMso9PxI-Qo8ijjwBKe8KAoSZQyjEh5RPQ', '0', '0');
INSERT INTO login_bktoken VALUES ('255', 'EnrYFldyTD3G5VfOIL3bmS1VE6gD0XvT1LmxoluJRN4', '1', '0');
INSERT INTO login_bktoken VALUES ('256', 'kVdthagOvz0yiDU378kct5Ebf5SSnhmYPKOtMdPOoTs', '0', '0');
INSERT INTO login_bktoken VALUES ('257', 'PC0R7aQHQLSngpWIKeOhV3xliBk381Rdsnoe6lk4bCg', '0', '0');
INSERT INTO login_bktoken VALUES ('258', 'gVLpi2YRU6gnWroIS1XoWzKdOjisIkU8_9mFTln7JG4', '0', '0');
INSERT INTO login_bktoken VALUES ('259', 'cyxR0d08U3eoqFAu0es8mmyArd7HCPg9vJ4UV-Pn8Z4', '0', '0');
INSERT INTO login_bktoken VALUES ('260', 'Qcv7t9AiZGdZYcZwqAIy2qgq2kbFsXhSwXk68x56yeI', '0', '0');
INSERT INTO login_bktoken VALUES ('261', 'irMtZ5bVxkPgnOupGx3NoRFhscT0tqWE9XbkW35w2Ek', '0', '0');
INSERT INTO login_bktoken VALUES ('262', '6GeEhUvN8z2Mxlbdt_IqtVy-JfJc7k0iMvU2KgSevPY', '0', '0');
INSERT INTO login_bktoken VALUES ('263', 'xtHclKB4n4R1QdNVhLnk6dzdVQvd1onqFeNvJSpH9QM', '0', '0');
INSERT INTO login_bktoken VALUES ('264', 'I4ta6FYtBx6SdaA6iyjwEOwjlpMYU0hBWKBvBcY1qrk', '1', '0');
INSERT INTO login_bktoken VALUES ('265', 'BP_qSYa-rSZWO2nerRgz9EV4QcbS-a_J6OQo-jo2wAs', '0', '0');
INSERT INTO login_bktoken VALUES ('266', '4dp3xPkrLK28Mc8fEpaSJfd-FkVlsb96hkkvdRftP-k', '1', '0');
INSERT INTO login_bktoken VALUES ('267', 'tGo8fKbpchn0MTuijrmZnhy-4THS6wmlOWYNXX7vTiI', '0', '0');
INSERT INTO login_bktoken VALUES ('268', '_8pYmDb48ICQDDrCAWKJWOTa0n-xg6Klk-GVGPXtJKE', '0', '0');
INSERT INTO login_bktoken VALUES ('269', 'LgtM0Db4lWTLJPzKiN1xOtgp8HgNfc-RnLz-cdTgIR0', '0', '0');
INSERT INTO login_bktoken VALUES ('270', 'hp_tQ_oELggJyziQqQKeyRlQwW3nNi329_MvQkf0oco', '1', '0');
INSERT INTO login_bktoken VALUES ('271', '5JMj8SxvirfPAYQ-SBHhgTbLv-_7OjlWIHq9Q19csMk', '1', '0');
INSERT INTO login_bktoken VALUES ('272', 'cYNZHDd7hoSpJV65WcvSyrSeGlbbhZOBIeJOcHxWWfE', '0', '0');
INSERT INTO login_bktoken VALUES ('273', 'GqtHSpmhtmlwKLIBHsf-81BLwe0oKOiDzf2CnIiv0V0', '0', '0');
INSERT INTO login_bktoken VALUES ('274', 'prBLoos5DfvtZl65Dg9t0017fnoG51ZyAxOqHSZOC-8', '1', '0');
INSERT INTO login_bktoken VALUES ('275', 'wUz4uVYEefqy-N3bMiHlX0BE9ysLLBvamvCL-luemQw', '0', '0');
INSERT INTO login_bktoken VALUES ('276', 'qHMgMoqfhG33A3wnpG9oeYaZuxQcOLuYAp_83MUzFOA', '0', '0');
INSERT INTO login_bktoken VALUES ('277', 'ijNnhCPxGL8SS98cb0Twr35wi0iWeyNWfMmc-MI1Bq4', '0', '0');
INSERT INTO login_bktoken VALUES ('278', 'MqHQ8XfqANXRcXDSoucX3qnT_UU0UOB0OG2I78XjZlQ', '1', '0');
INSERT INTO login_bktoken VALUES ('279', 'fWFrKcevrf18K_jX5RLNtBcscLLjN9BSip56cWktvPk', '0', '0');
INSERT INTO login_bktoken VALUES ('280', '69-Jl2vuywT_6mzt8ZzjrwpOWdI09B8UFR1xiGy2fZE', '0', '0');
INSERT INTO login_bktoken VALUES ('281', 'drMe_Ul9B5ogY1lkQacW9kUCoux0s9_hIKvnJwS6yE0', '1', '0');
INSERT INTO login_bktoken VALUES ('282', 'o9VzAIMdCLanlk06NFVcW8Pcnm119emG11lIPtBgG0w', '0', '0');
INSERT INTO login_bktoken VALUES ('283', 'k6vDhS8k2lgk15yhf2RlkNR5l94u1eJ-om5zgcC_utk', '0', '0');
INSERT INTO login_bktoken VALUES ('284', 'uli5xIW00VBFQ5wJ_9h2XJoYf7-7RScKiAGQp04LUGk', '0', '0');
INSERT INTO login_bktoken VALUES ('285', 'HvU25HgyJ10SqXadon2g01r_RjmCYva_AGyCw1UnoZ4', '0', '0');
INSERT INTO login_bktoken VALUES ('286', 'cIPkqTc2cTftjhA4y-r-UBsXatHG4m30P_gS5pCwHbM', '0', '0');
INSERT INTO login_bktoken VALUES ('287', 'Ln3mZ1v51sDHYiX2T7mJh49eGKv-dZ4Nt8l_f5e-jgY', '0', '0');
INSERT INTO login_bktoken VALUES ('288', 'ZnHeI-o_49_5ZPa2voebBAXH_cKlCHbtPfAIyJEGWko', '0', '0');
INSERT INTO login_bktoken VALUES ('289', 'oARyYwLjdU8FZNvj0S0Q2kpP6jnitR0cEaTOCvI47no', '0', '0');
INSERT INTO login_bktoken VALUES ('290', 'ij2bNGZEcvwhBfjC7rp2t6GHfv_onYSxfKuyTMgDdmI', '0', '0');
INSERT INTO login_bktoken VALUES ('291', 'fVcXQgAV3gQ0u0kMqq7Ze8QutMK_nJEsxQ_bQ_U1QfI', '1', '0');
INSERT INTO login_bktoken VALUES ('292', '4qI9kYflj5JXqwmYlBWWg1a5gzHYI_Rb2yOmo63Qqo4', '0', '0');
INSERT INTO login_bktoken VALUES ('293', 'lvkzmus2uBRKxjqLuavnLOf7lYwCNNHfCxvEv5tMjL0', '0', '0');
INSERT INTO login_bktoken VALUES ('294', '6JlOegkjTl74aZY46UPZYYYm9g9aYTQtOg91ohYNALU', '0', '0');
INSERT INTO login_bktoken VALUES ('295', '9sELTrJvFjxFDUkLizpLNJjjgBsGUlSum9FgfQ5o_Vk', '0', '0');
INSERT INTO login_bktoken VALUES ('296', 'm91CtkId4Yb3QvyRxzPeWxx35OJyHkLL0xkRANofgP8', '0', '0');
INSERT INTO login_bktoken VALUES ('297', 'NUZSJDd7l9p-udHgK830wSrtOoFdOfVwV2SUgjc8rmw', '1', '0');
INSERT INTO login_bktoken VALUES ('298', '1W1wvZYegW5TeZLT-9D1dtuMb0PY0fE1dOeDBrHgspI', '0', '0');
INSERT INTO login_bktoken VALUES ('299', 'Y9xR2dC1_vbDXFhoRQ-32DUiM5tfuYz0kAOF7viT00Y', '0', '0');
INSERT INTO login_bktoken VALUES ('300', 'kXFZMMECY2NKsmw7epeuK90LmvN7DXViEVHme4GYSBk', '0', '0');
INSERT INTO login_bktoken VALUES ('301', 'AesKebha-0ulBqx5XF1LSsl28TxqEkC3MUc7irj3DXs', '0', '0');
INSERT INTO login_bktoken VALUES ('302', 'kOep1-BaO8ejHP0J6DoxmS_G0z913XfzyWFZDMrrUCM', '0', '0');
INSERT INTO login_bktoken VALUES ('303', 'HTuZJ-UT8scTXLHKw0ZQCXlZLJk5EfgJyYZ9aSO7MTU', '0', '0');
INSERT INTO login_bktoken VALUES ('304', 'wMXhPK1E2Axk67qb6LRrCibcadvaT7pOFQwhCa9caIk', '0', '0');
INSERT INTO login_bktoken VALUES ('305', 'TjkTTcXSAMa0nr-K3jcTBD41vJdwwfE8-299lqQTu0g', '0', '0');
INSERT INTO login_bktoken VALUES ('306', 'wBI5LnFaU_m3hW4gyCT9kUN8biT0ihY9kTaWP_ETpsQ', '0', '0');
INSERT INTO login_bktoken VALUES ('307', 'R4A02D0BtmYv5uexO1mKqIgSm0MHO52qVQ1dLWr4QO0', '1', '0');
INSERT INTO login_bktoken VALUES ('308', 'ml5Scq53XbkAXWJXruPJ_X44UP0wx3AMDfZthwtveWQ', '0', '0');
INSERT INTO login_bktoken VALUES ('309', 'zr0kA_lVXTHvxfJ4Rem5OlGq1h1IFqL4j-eU5JZUJco', '0', '0');
INSERT INTO login_bktoken VALUES ('310', 'Yb8kVAGR3wLAdG3Od_C30w47SRa9DC4kabiQlO_kUo0', '0', '0');
INSERT INTO login_bktoken VALUES ('311', 'Mylp-JFcLMf7VmUFubeguowGVLY2Zp-67uTQVcwpZDA', '0', '0');
INSERT INTO login_bktoken VALUES ('312', '7GJATNGXQz76UYW38FpByoYuwF7vzyFVEP1tY647xmY', '0', '0');
INSERT INTO login_bktoken VALUES ('313', 'a0t1bX0lkxrVbZsFyZ2FUrPcq7T0fNg9RUNyK78X8yE', '0', '0');
INSERT INTO login_bktoken VALUES ('314', 'G-2-Ul56tP5KEhJhi6oyvOMTRjiHwRfW2FyuNJ5Ah5o', '0', '0');
INSERT INTO login_bktoken VALUES ('315', 'euxcdn_CbNXsaiYUVzdH5SjNDtv3qa_Kai-AvONO1Xc', '1', '0');
INSERT INTO login_bktoken VALUES ('316', 'kFSKXqaSKwI3C4KOUsmAy3OXXiGGiAmP-SP1DMi_7YM', '0', '0');
INSERT INTO login_bktoken VALUES ('317', 'hUGBai5MDB9vqAFQ39kDc9_BheabBhHMimRZ9X_Epxk', '0', '0');
INSERT INTO login_bktoken VALUES ('318', '1AR5JPBSNrx6v-LowrwAIACHbZUMtXMC7rzoT8WqpW8', '0', '0');
INSERT INTO login_bktoken VALUES ('319', 'qqQDvrV6ZniJ4drWLr5Q3iYY5sF7RfO7fMO-7XSRutc', '0', '0');
INSERT INTO login_bktoken VALUES ('320', 'vqH95J8vEuOjN7zpbEF_QNf1ZHmsM_GStATmbwcsNRo', '1', '0');
INSERT INTO login_bktoken VALUES ('321', '7xunQeicLOomCHb163U8HGjTpr0r3xpLonXAelOI9Yw', '0', '0');
INSERT INTO login_bktoken VALUES ('322', 'n-Ee_O-mLdMChc_FMvpjJBv-dTDoIMKYUB1rKgp1sOA', '0', '0');
INSERT INTO login_bktoken VALUES ('323', '23NmbX76QFec01eUDk43S4Jx5YmBEQzQGTyRx7OZ9Wc', '0', '0');
INSERT INTO login_bktoken VALUES ('324', 'cXhgvtTegUXcx1x-eg6PzQ5ZzRrKHxya7HkAb82gIzo', '0', '0');
INSERT INTO login_bktoken VALUES ('325', 'C-DYM4TAtrQbMitv1x7SPv8V3YfAXltsQpiJSiP3A9k', '0', '0');
INSERT INTO login_bktoken VALUES ('326', 'hZqKtIvrch43nku823DhE48-DAm1gAPSDz5IWBwBZUA', '0', '0');
INSERT INTO login_bktoken VALUES ('327', 'Cp-SujKyNHrT321cxPe6tCJPAMMYSVmaDk9LMfNmKDs', '1', '0');
INSERT INTO login_bktoken VALUES ('328', 'ID4XxTUzxaXZ-U0nLORcZnjZFKXu2K4F877yHkz_n9U', '1', '0');
INSERT INTO login_bktoken VALUES ('329', 'mYmR-YQFgea63sFKvKO2cOggCZnyKxrpu5558_VbHsU', '0', '0');
INSERT INTO login_bktoken VALUES ('330', 'PJKtNKvy3RuuxPWyQYcBCEZe0Ln1WlRsyUEZA0Gs3gI', '0', '0');
INSERT INTO login_bktoken VALUES ('331', '6EzuxtP_H4SNydUS4l1QQvqKd6xSKwDuDHIG6XscDW4', '0', '0');
INSERT INTO login_bktoken VALUES ('332', '7-arqvYoV-NLz3w234t_hdqeEVpcIKD3TzzUy08T9YI', '0', '0');
INSERT INTO login_bktoken VALUES ('333', 'uszJqUtpuCw2ubA7QhlLjKmDmGzomn80SPmqbSbUiPg', '1', '0');
INSERT INTO login_bktoken VALUES ('334', 'n3EaKAVCh_gFcfa1TY-5jJwmH0LTlE6dJ5FmjmNzum4', '0', '0');
INSERT INTO login_bktoken VALUES ('335', 'hzavOUS4Xa_zBjvXSbP3p4ieznQlupDrtVMPztXm35o', '0', '0');
INSERT INTO login_bktoken VALUES ('336', '072kLoLVaI5XM4IEVnryX2oNspNN2u4m90IuJdwQJGs', '0', '0');
INSERT INTO login_bktoken VALUES ('337', '5XbrIC2k7KcnyJ03LHGy4dC0E8iHpCbFFlNfUTu18IE', '0', '0');
INSERT INTO login_bktoken VALUES ('338', 'pygF3e9p7vmoPIoipz631o2yt3A5cLSRp4SRfvkVQFQ', '0', '0');
INSERT INTO login_bktoken VALUES ('339', 'DUCEf8x9exrjC56nyZhGtmpMt1NMDSv8hJTC1mYMoTw', '1', '0');
INSERT INTO login_bktoken VALUES ('340', 'QUafMmma9tWA961pfwLQcgOw4PpN_sz-fLWkZrSi9gc', '0', '0');
INSERT INTO login_bktoken VALUES ('341', '-rOUZNSt9Y0MCvLaDcW0F0jg0Q89fBkmKrXlZ-ahEj4', '0', '0');
INSERT INTO login_bktoken VALUES ('342', 'kI-Ritu6BZpBjYCBLRIFljuC9anTnzOoOmWDHfT4aO8', '0', '0');
INSERT INTO login_bktoken VALUES ('343', 'Fgj4cCykjYlCwhVgdVJvELRYGWjeVHwbby_Pp7sICLY', '0', '0');
INSERT INTO login_bktoken VALUES ('344', 'xoHCxvd6IUEhL_CZHBY8G-M87ZKUwmOKHRmF0WF0F0U', '0', '0');
INSERT INTO login_bktoken VALUES ('345', '1Xygzl0I5Hlka2NcEaqCF1vqA4VZihBWptVllyr4Cx4', '0', '0');
INSERT INTO login_bktoken VALUES ('346', 'LqMAFK73ols6SEc5gXIlF7uKU59uZG_REcOwZiJPwt8', '1', '0');
INSERT INTO login_bktoken VALUES ('347', '2vkDxoPiftFb0ue9_qNW-4Nv12cEj6JoR_dQ85gsC2Q', '0', '0');
INSERT INTO login_bktoken VALUES ('348', 'QuKnRX1DJXEL1P9UDnKJS-kNo61xRRcfW77IF-35f5M', '0', '0');
INSERT INTO login_bktoken VALUES ('349', 'vhFu0klAxSYDsA4fxYT9XU5HBuTNZ7UJTvqiZiUgw90', '0', '0');
INSERT INTO login_bktoken VALUES ('350', 'gco1EBWNbPwMPRT0U6l73gYxj3MA3UG1L9sMlu-xppA', '1', '0');
INSERT INTO login_bktoken VALUES ('351', 'AfQJKLTnz3RwK9PYxmu9Ld69m-ajYCYF57wZwd0htG0', '0', '0');
INSERT INTO login_bktoken VALUES ('352', '0CMqvXniBsc7trPpcnoXKkxeaVuBie5GMtcLxxpR3zs', '0', '0');
INSERT INTO login_bktoken VALUES ('353', 'T9a9lLqDO1iucaZIv8w4YlkZWOkQ31mDXoHp6nF1KBM', '0', '0');
INSERT INTO login_bktoken VALUES ('354', 'SOVRhqXWmtxiwAGAZ6Yas4PDtpSYTUzO-bWEa7GGe3E', '0', '0');
INSERT INTO login_bktoken VALUES ('355', 'SpUIhEG7kJKfFW3yE0BI4xXd_nxU0IfTjinFbSeg4No', '1', '0');
INSERT INTO login_bktoken VALUES ('356', 'WBBS1X04hnwi8lXauLyhcmSrH4mNCJ51ayaFVsQNF5g', '1', '0');
INSERT INTO login_bktoken VALUES ('357', 'Yy6RArKLT8XMSRxe1fIdqg0iCYPUuy-iN7G_WMq7ZEA', '0', '0');
INSERT INTO login_bktoken VALUES ('358', 'E5RmYTird8UX2rda1v8kBhIfbaq0i2DfjvnA3XNNM-Q', '0', '0');
INSERT INTO login_bktoken VALUES ('359', 'jsDY6OwEnsYbiCW3Pv-cL9O8WaJ3DVYdUD5Hty43mdQ', '0', '0');
INSERT INTO login_bktoken VALUES ('360', 'qMRMa-_cLUBrDFFepxz8yud69OWpWoMrfQQPwPW0CUc', '0', '0');
INSERT INTO login_bktoken VALUES ('361', 'X75qdpciWVRktdrz7juHLd403SzPuMtNBMEawpK_DJ8', '0', '0');
INSERT INTO login_bktoken VALUES ('362', '_HEx9ZuG19xw37JEfe8vkdv7BqaycOcgzO5hx9JKO-g', '0', '0');
INSERT INTO login_bktoken VALUES ('363', 'BdwdeytTvmR-iehgTmKjatkTHQafkfhB2m6CgZ8BKPM', '0', '0');
INSERT INTO login_bktoken VALUES ('364', 'SqXgd_WOLbXDW7kvYePewh2puwvAXYdldUZC45LA6mM', '0', '0');
INSERT INTO login_bktoken VALUES ('365', '-uLsc2wlqXmhYXkga0HlOPBoagbtky2qhfUcOybxks4', '1', '0');
INSERT INTO login_bktoken VALUES ('366', 'eiaD0FqJJgOORSioh8teFYVRUFnuMv3VjC9F631KpE4', '1', '0');
INSERT INTO login_bktoken VALUES ('367', 'vKjQ3s9pS_MCFQUMTSZvQIc-bbhb4oRiqZEjtlQPMwY', '1', '0');
INSERT INTO login_bktoken VALUES ('368', 'UNnwlkv8_WgBNmE3lTGsKSXLB1jMooOATYaRJBiYVcU', '1', '0');
INSERT INTO login_bktoken VALUES ('369', 'dK3WrSFZz4psgq2Bm81yaJAb-9ZQsJHu2cRgny2goaY', '1', '0');
INSERT INTO login_bktoken VALUES ('370', 'EgiXWsrQk1hUvLouxKXUi2-EdCB8H2N5nwy1sapA4To', '0', '0');
INSERT INTO login_bktoken VALUES ('371', 'JSpFpd6rQDX2tNX1-QDbyQtz76Q2XqcLm5Uw5VaRPIQ', '0', '0');
INSERT INTO login_bktoken VALUES ('372', 'cVGOhvNyO0XLl0SXOg91Ja41DXkV4Vfo32cXVxIU5Zo', '0', '0');
INSERT INTO login_bktoken VALUES ('373', 'ldvauImeVMW4-5Mq0drm_sOuNvzXvyFsO0ijkpn2YYQ', '0', '0');
INSERT INTO login_bktoken VALUES ('374', 'Vg0oGadGWefnPUJRC8Z3ct_vFmQa45v3Uq4oAH-Zxk8', '0', '0');
INSERT INTO login_bktoken VALUES ('375', '-v5HUKZbiAGNkupMqsBEPj_koZkcm3pWDaDXJLx4zbU', '0', '0');
INSERT INTO login_bktoken VALUES ('376', 'TnDbbkhyumvdWr9cjILjXZe4bHDacM9f__6l88WAZZg', '1', '0');
INSERT INTO login_bktoken VALUES ('377', 'lJuXkmvGppxew0AvQGzQ-pPp9B_O2TW8OjXtjZ6d7fo', '0', '0');
INSERT INTO login_bktoken VALUES ('378', '4RCFbCZIU3BREfzv1O3wex8Esy86r_CtgmW25Wzzi1o', '0', '0');
INSERT INTO login_bktoken VALUES ('379', 'rYOAxp2XPzzYCk8Z1m3O9CQdUc4wHhqa50Idxt_miro', '1', '0');
INSERT INTO login_bktoken VALUES ('380', 'TjnCtuP2j9K4BKJ023hBQg-v1gOw0kPxlGwY0tq8RTo', '0', '0');
INSERT INTO login_bktoken VALUES ('381', 'pwPNC9-42xXP-QCXDApKIB-1WR3H9ZdNe4382GlPtW0', '1', '0');
INSERT INTO login_bktoken VALUES ('382', '-wXAwIEQPaAUfCFSAcsybaUs_oTknDcZOuG34JwH_TM', '0', '0');
INSERT INTO login_bktoken VALUES ('383', '857dEUUzo9zf6gh6mo_fcES9IPZAfggAiV0Dbh6tIPY', '1', '0');
INSERT INTO login_bktoken VALUES ('384', '-lRKP7yjJKJU3Qn6oLfUJAjIn3mA5lXAwpM0GiKMw30', '0', '0');
INSERT INTO login_bktoken VALUES ('385', 'winEI1DsUP3-WUVkI4yFEUM2d8A-zHIvcZd-dyI89Y4', '0', '0');
INSERT INTO login_bktoken VALUES ('386', 'P-0fdjb1iZCTR__FpPtLcGkzl1PvdGE70KBAT3mXMHM', '0', '0');
INSERT INTO login_bktoken VALUES ('387', 'Tn9hrlGY8f5PMpsPzqlc4YOMCKWyHsdEcKa18TUykdQ', '0', '0');
INSERT INTO login_bktoken VALUES ('388', 'iQsa4zqaAFyvTKLHiEuePvhF66gK8iK5V5vnmZl6Atw', '0', '0');
INSERT INTO login_bktoken VALUES ('389', 'SkkDfQYCa-fTkfDNdKq-DwfwqZ2OLY6KY40x8tSCLsQ', '0', '0');
INSERT INTO login_bktoken VALUES ('390', '3I95xrxpaHE3NFEYef-Lqw5KKNbyttQFWL3C_esKa0g', '0', '0');
INSERT INTO login_bktoken VALUES ('391', 'oROewrgy3WaCzvYgJ7r2wji2aVkzhHwZJekCfR6vku8', '0', '0');
INSERT INTO login_bktoken VALUES ('392', 'BgTrrN1yKY2NfoVCuPQAX1DDdwmVbUfdVoWYdDt7mUw', '1', '0');
INSERT INTO login_bktoken VALUES ('393', 'qpd8Q2TOG677J55B_9bLCb2-G-LKzebhAADsq1OXuPc', '1', '0');
INSERT INTO login_bktoken VALUES ('394', 'DPAuWjYHk2M5CkPrITDAlE92W_9j10qMfEXTQU2gMm4', '0', '0');
INSERT INTO login_bktoken VALUES ('395', 'zDkDPtqY3ylSsZY9EDAwYxmagd6mB9KviP-5eUYxpq0', '0', '0');
INSERT INTO login_bktoken VALUES ('396', 'ee3QIVVrA6itYnWWN6JG0zE8BUWb9QNE2iPsyohFM8w', '0', '0');
INSERT INTO login_bktoken VALUES ('397', 'B3vF37GxiMgKK-wKoPA1nq1P3-JveEguNPd6jjyZUf8', '1', '0');
INSERT INTO login_bktoken VALUES ('398', 'kET0L1eD7eAktxfKFEuwV7VV1qUxTHrL2-I3TvXmfeE', '0', '0');
INSERT INTO login_bktoken VALUES ('399', 'uQ7MD1m87Hx_bs4ZMRgld-tceKHN8faDqWz_RcneCl0', '0', '0');
INSERT INTO login_bktoken VALUES ('400', '0IXvXb-ou04KZQtB7wCpeSLH53obdWZ2Q5DzuMrg0zE', '0', '0');
INSERT INTO login_bktoken VALUES ('401', 'CCCEcsLkcVV1o5HlxSm3Uf34Vq7JQ2lKigXZJlboFuM', '1', '0');
INSERT INTO login_bktoken VALUES ('402', 'grM_xocCmIU3pna4HRLjx1SIu9k3iMPrPoRqIWXN1jM', '0', '0');
INSERT INTO login_bktoken VALUES ('403', 'kRTAf6cmNrhVpvGsPaA9mA5NecTjEt2ZCoMRh_TXleM', '0', '0');
INSERT INTO login_bktoken VALUES ('404', 'XIOtbLFAzEPzk1LZJ69BUdcPVI0EBmeq7z-hJkdQtqA', '0', '0');
INSERT INTO login_bktoken VALUES ('405', 'FS7CkSeni3g6qS8fkOF8lYfzpr9WEeRksAxb0i4UiFE', '0', '0');
INSERT INTO login_bktoken VALUES ('406', 'XjjrXa_TqjF4743GVfUDAxmNaV8X47gBRSnACMJggqo', '1', '0');
INSERT INTO login_bktoken VALUES ('407', 'faaA7N6p5CSZq1Lh2HI6oqAI2Q7Jl7MSUbVZc9Sz3Ac', '1', '0');
INSERT INTO login_bktoken VALUES ('408', 'z761NVqh4Yy-rAeoMqc8wf2DZgem8zv3MwfvbuN1fDs', '0', '0');
INSERT INTO login_bktoken VALUES ('409', 'CjLlc3GGNiFtc3-wpzKxBAkbPrpdcystDXffFRu1thg', '0', '0');
INSERT INTO login_bktoken VALUES ('410', 'VbZ1qM_hVnosvVHAbCrvL3c76dAvKTf9hdQKmbUZkIw', '1', '0');
INSERT INTO login_bktoken VALUES ('411', 'tCPeSxSVj_DC6br8g9B9JUL2zOeVBNZ5biOSG10dx7U', '0', '0');
INSERT INTO login_bktoken VALUES ('412', 'MT7wfYXKNRUFNY5Iin6lzXPHJ4HaWPGwlFeDPLlXxmQ', '0', '0');
INSERT INTO login_bktoken VALUES ('413', 'IQRuJ7YZNQM-_4_kaJgGYXDuQLoLrsBUD156BNPANNI', '0', '0');
INSERT INTO login_bktoken VALUES ('414', 'RRqRqz-rae-agZdFIe_kip3Abi_WdUnWWDB0ejRfims', '0', '0');
INSERT INTO login_bktoken VALUES ('415', '6TYQROmdE0A8QoVRkDvviQWeNkGM37T4aSwxYDxqGmc', '1', '0');
INSERT INTO login_bktoken VALUES ('416', 'DGA3GAqCFVi4e93zzKKTBRY69fKpxZzMSUOHhX3Srtc', '1', '0');
INSERT INTO login_bktoken VALUES ('417', 'ySz3JYTZsOzQkpQUPXDTDPUqy4D8xRYrEW-84fXCEpY', '1', '0');
INSERT INTO login_bktoken VALUES ('418', 'QLup-puNo3LplBXqUgMPAI1_KKeBkoqFn2-TfFvAs94', '0', '0');
INSERT INTO login_bktoken VALUES ('419', '0fpjpbCJLDBlZr0oe35IUAlO_rMHUzDfe5okIYWlkUY', '0', '0');
INSERT INTO login_bktoken VALUES ('420', '-InDI_LB2xhSpdujghpoX-bjSdf6Ae4sMayTErVniAU', '1', '0');
INSERT INTO login_bktoken VALUES ('421', 'w5Jl3xUjenvmGmCsrzXezSn957xZfyMyOlAyb1HbfI8', '0', '0');
INSERT INTO login_bktoken VALUES ('422', 'bYPcVF_cRyg_s2ffYvt26bL6uign58X1zAP6bUPYtgI', '0', '0');
INSERT INTO login_bktoken VALUES ('423', 'mqy6touNTAZdTjOeHawc3X_J1IeLxj4XO-0GkqFG580', '0', '0');
INSERT INTO login_bktoken VALUES ('424', 'w8Xr_znZhq6Fa-iRmVmnXnGqTiFrh4FzS4hj_7QoY-I', '1', '0');
INSERT INTO login_bktoken VALUES ('425', '4yUD1OQzhHkllLdr65IPo4StdZGBBbKG5tT3lXOmI2g', '0', '0');
INSERT INTO login_bktoken VALUES ('426', 'c5yagu_tTF-GYuXvBIYsADMO7JqUSNQdXpM-Wz5KyV0', '0', '0');
INSERT INTO login_bktoken VALUES ('427', 'AOERj654PUNXTNyo5HO33NQA-dnzdYJAuZvC9VQqbx8', '0', '0');
INSERT INTO login_bktoken VALUES ('428', 'WnKP6cX8j10hYRwdvAPn33MaxinjOG9IA9Mva2NcjAM', '0', '0');
INSERT INTO login_bktoken VALUES ('429', 'MvTfPcF94FPZe1QMGkWW5C6-BCor0v0I3NDVMEIIMYc', '0', '0');
INSERT INTO login_bktoken VALUES ('430', 'JqWMoNn43sCW0X5RFeZvGJP-sW8d9k0C5tAtk2XZQeU', '0', '0');
INSERT INTO login_bktoken VALUES ('431', '3LV6baNlYpp6PIbZbMCUWupADWcu5BW5YOMx_ch-dkQ', '0', '0');
INSERT INTO login_bktoken VALUES ('432', '-NZfACYB1CL-8WaPZYgsWEe3gFo8zuoIQDjvA75nFr0', '1', '0');
INSERT INTO login_bktoken VALUES ('433', 'DUCh5YoIqAxYzOBXex7pbMU9L6SmA09aqtQCbQms5fw', '0', '0');
INSERT INTO login_bktoken VALUES ('434', 'jxm6EIP5Tk-S0jrBYiiv1F4gqGPq1RW2zNWu49tIXqs', '0', '0');
INSERT INTO login_bktoken VALUES ('435', 'H85cjdy_Sv0QfDAkvMmRKzD1TnPCKwHLHeZoDYOl9VQ', '1', '0');
INSERT INTO login_bktoken VALUES ('436', '5sjQO1plhbHWpltp5pGyrsYwj3qA8CXpqV5c2hy1-sA', '0', '0');
INSERT INTO login_bktoken VALUES ('437', 'NQhjICgoEZh82I-NxXKG-TBN83000bH6PXPRHFWihKg', '0', '0');
INSERT INTO login_bktoken VALUES ('438', 'eUj3WVYhCSA-Rl_-nEVhWsfqiD4uUfKsF8JZwkSqOfo', '0', '0');
INSERT INTO login_bktoken VALUES ('439', 'H2adnpomIN1t7BI0NlzLB4oa3gF8ZqKqPCnXRO6ZgOY', '1', '0');
INSERT INTO login_bktoken VALUES ('440', '_1emxGv14jilduNM4Qi0eNFFA8dh3bvLW5MXAopVNr8', '0', '0');
INSERT INTO login_bktoken VALUES ('441', 'EAB6phDpnAy3ayLqpy1Xghnf-CSWOtFV9KwAhQh052A', '0', '0');
INSERT INTO login_bktoken VALUES ('442', 'vpOwxh438PkrldrFYAfcR-pd2Taqen6BDGZM0CkC8EU', '0', '0');
INSERT INTO login_bktoken VALUES ('443', '7RmluEYNy5g5t72HSAY0D7KPrKae4qcodgiG1OyjyHk', '0', '0');
INSERT INTO login_bktoken VALUES ('444', '2HwIVtQsD0MBvvXGPj8orkJ0dg4R-MmFRgExV5u_xz4', '0', '0');
INSERT INTO login_bktoken VALUES ('445', 'TXj4PBi63yaEyGXYhQl2Ooa_QNStnRwV6Q4-_DCvits', '1', '0');
INSERT INTO login_bktoken VALUES ('446', 'LQErMgbBijFrddUtJ-Tb7mV_tu1d-TEd-S_9nCOvTWg', '0', '0');
INSERT INTO login_bktoken VALUES ('447', 'dCfchD1oRjAhAxGpdZqyz8LZSC2os4q9buWUUMKvQOs', '1', '0');
INSERT INTO login_bktoken VALUES ('448', 'ne4OJYaKWlmZix_CXpT23K1-mts-EUTiU3sVaiSDJMQ', '0', '0');
INSERT INTO login_bktoken VALUES ('449', 'hV-2ARhP1vPOCWr6EclbQVJ9djjU5EM76C6oNqEh8f0', '0', '0');
INSERT INTO login_bktoken VALUES ('450', '47UrkEUA9f0xSpWmI48Aru-N4snIrHqD2L2UQUr5Ew0', '1', '0');
INSERT INTO login_bktoken VALUES ('451', 'YxHSEMcSpjue250b-s3UmQix4rTeds7MKRT0lGpAu6I', '0', '0');
INSERT INTO login_bktoken VALUES ('452', 'uPsBObyqN7vGzHWj-rNNDRps7PH5QY5VdpvIwlB2L2c', '0', '0');
INSERT INTO login_bktoken VALUES ('453', 'KMHvRPqnPqzy4F4Dm_0Kv-eebYceVbrWuu7dGywx2pU', '0', '0');
INSERT INTO login_bktoken VALUES ('454', 'CoWhUW417yWeKz1F1YgetW_eTKToJN8Bkmyl8nZU9d4', '0', '0');
INSERT INTO login_bktoken VALUES ('455', 'Vpu8lE8M72a2RAy5k29aLS3C2pEHoi3jTlX5TIPMHno', '0', '0');
INSERT INTO login_bktoken VALUES ('456', 'NvD0bGepgLGzeHLQagct5evVaaDzMcK-7rOqL7wqWIc', '1', '0');
INSERT INTO login_bktoken VALUES ('457', 'aUHIn2C0wt_RBtX0CSBchGW3MWU_kLMkn56Fhyg3NLI', '0', '0');
INSERT INTO login_bktoken VALUES ('458', 'YtmFIysO01nEnkKRyvNDtSrzfw96-JVNmPrQj9K1qmg', '0', '0');
INSERT INTO login_bktoken VALUES ('459', 'TPiLLhLb_NxxVEwgIzMbI8V3VE9dtRUntDNWy6hCo7o', '1', '0');
INSERT INTO login_bktoken VALUES ('460', 'eRtkybWNKlLMFZKKLWyLxc0uPKhkI6x5Ub1poj6VrlY', '0', '0');
INSERT INTO login_bktoken VALUES ('461', '-fQs97FMC9niLgdCt67bGLhcQMYtFp7fw0QfI-HyfxQ', '0', '0');
INSERT INTO login_bktoken VALUES ('462', 'lUBaIPN95JUPKaS8qBpCesJwGmr8bkmBYM1yZ0F58ho', '0', '0');
INSERT INTO login_bktoken VALUES ('463', '_rwNG33CozzWmi5lp3a0PSqs_JO7czuD9p80dbTgkj0', '0', '0');
INSERT INTO login_bktoken VALUES ('464', 'wuKeouuJ43XHyHbA30IgrbkB9QD5qTSueO4D-lSrQ8A', '0', '0');
INSERT INTO login_bktoken VALUES ('465', 'YyNaUWeesNB_QBYTuBpihi7Hn49LNONxLs6liFJvunA', '0', '0');
INSERT INTO login_bktoken VALUES ('466', '2-HCjX25qoA8zKX17lBrwWardUVm1IOu6EXNu1gHjqI', '1', '0');
INSERT INTO login_bktoken VALUES ('467', 'BKilN3CiknzWRNn25Uhw2MZk3dJ3c3Q_JSBUSLCLwks', '0', '0');
INSERT INTO login_bktoken VALUES ('468', 'lPgyyXSajJlQxooAni1olbR2gEtSEpt7ZgMupF7QVeM', '0', '0');
INSERT INTO login_bktoken VALUES ('469', 'LnX_MVFVtx3jCzS044uKKbkKjjjq2BRqJt7GHMQbGo8', '1', '0');
INSERT INTO login_bktoken VALUES ('470', 'AmIIQgE_u7vDq1R3TMVagdPQOPXtVKeKURDD1UrMQKg', '1', '0');
INSERT INTO login_bktoken VALUES ('471', 'OD-eVF4dEHBjTaZSjC2g7tGgKJ27hadGiE2H8ZGPaIw', '0', '0');
INSERT INTO login_bktoken VALUES ('472', 't23Q3uieFPTts639qE6jbeAxOLNEetnxjfAxsrjqUT0', '0', '0');
INSERT INTO login_bktoken VALUES ('473', 'Mk0975mmPDwstYzpbYzcbF4V280axzDWV2SAZcZYVyw', '0', '0');
INSERT INTO login_bktoken VALUES ('474', '715mH5TOlh6j7_G4DGNnjcIaGjuqF-VkIbvEKXMoK9U', '0', '0');
INSERT INTO login_bktoken VALUES ('475', 'rOrJ2JIPdq2uE6x-N_rg-FJd4a0k5BbRFyoQ5CrEXWA', '0', '0');
INSERT INTO login_bktoken VALUES ('476', '7JjCnTZPIWJ9W6G6NJVUD7jc8GrM3JgouEEzJU5f2y0', '0', '0');
INSERT INTO login_bktoken VALUES ('477', 'nX_KaYBlAVEgBwaZlAAxAaXB8NN8UF5cQbluiW4BkdY', '0', '0');
INSERT INTO login_bktoken VALUES ('478', 'JkDlEw2CbMWL0PijB7vZiOeAld3PXj3yvYElSpQuUmo', '0', '0');
INSERT INTO login_bktoken VALUES ('479', 'fAcdj0JmfOqSz_UL1V6r2eph2i7ymcmj5nmqUEF-8gw', '0', '0');
INSERT INTO login_bktoken VALUES ('480', '6xlwa_dTFhq8M_NQYUeBUXBgnC8XZj9mGrsJQmrX_xc', '1', '0');
INSERT INTO login_bktoken VALUES ('481', 'agZNLG1e7LyThMhk2JGHuPBsO05Zc_lGmmNpU7-4Y9A', '0', '0');
INSERT INTO login_bktoken VALUES ('482', 'nRAWNo3HH9zAPYfmZ7Go3qUqUUkUuRcGnLP8qlm_6pA', '0', '0');
INSERT INTO login_bktoken VALUES ('483', '9bZ3YAGbD_PcAkU7Vw8vvdaRPy0fvglBB-X9bzA7pVo', '0', '0');
INSERT INTO login_bktoken VALUES ('484', 'SE62jDQZR8wQyd8enJyU6Tgj9DnO3iHY2UrxnQiQVeM', '0', '0');
INSERT INTO login_bktoken VALUES ('485', 'nblmYyzekTn0YY8qznFWgHE4kgjX4trotjejJbP3Ko8', '0', '0');
INSERT INTO login_bktoken VALUES ('486', 'rsu7iWAmclltiVp7mq4aJnhkX3kBB_-E_AHk6Af--wY', '0', '0');
INSERT INTO login_bktoken VALUES ('487', 'qIo9R28-FXJv8XS3Cx38rQqBv34Fys7uf6tjXPKxhEw', '1', '0');
INSERT INTO login_bktoken VALUES ('488', '4NYmvRS_BVpL6LcZd65UnGPLBdtAXYWKa2X5SkDiC5o', '0', '0');
INSERT INTO login_bktoken VALUES ('489', 'iJ2W9Nqzyg5whSMdPJnDPPwWRPBH-Rh2-uW5Of5Cfgk', '0', '0');
INSERT INTO login_bktoken VALUES ('490', 'yIYBsHJmSO-Gzugl0_Z_vcGumaQm2dzEQClMWTNovQQ', '0', '0');
INSERT INTO login_bktoken VALUES ('491', '7gBDdQuU7OtQ2mJ935V4EEw5gc7NT2eX8fJW5lFkt34', '1', '0');
INSERT INTO login_bktoken VALUES ('492', 'J68R3oRVGMvRDEYBLy4EYNHjaim1oPPXrE0JeY2kJmg', '0', '0');
INSERT INTO login_bktoken VALUES ('493', 'aw2XU3EtieOF24jJLAaeDPVbHYwV1B8v5pk7r69tFfk', '0', '0');
INSERT INTO login_bktoken VALUES ('494', '7c1t8XQHgEl2Tv-BJijcsFe5uduhn-thaY9IdQupeuk', '1', '0');
INSERT INTO login_bktoken VALUES ('495', 'Rhfm7Zbmmw3vhn74yfQ9plx61OYXQYYoxWzUC9ADu8c', '0', '0');
INSERT INTO login_bktoken VALUES ('496', 'uwdGYTzhswh3UfQyacTN-RrXTG4dyLBO1kyZLMKzW84', '0', '0');
INSERT INTO login_bktoken VALUES ('497', 'qy_VNPvjwfo6DptYCIjzQn8pXXGEPpLEZODT9kV_grc', '1', '0');
INSERT INTO login_bktoken VALUES ('498', 'JU5CH2M2X4PABj4rJHWrCq5OMJf2Sd9AUcYZ9a8VvbU', '1', '0');
INSERT INTO login_bktoken VALUES ('499', 'eTWgek2mnP22PzioCfX7n_dX2Ic88Ywx8rsnJ6YvU6g', '1', '0');
INSERT INTO login_bktoken VALUES ('500', 'o-ftLDAqdQ9V5WbeUOsfWxglOS-rPSnlxWkWATrfPBU', '1', '0');
INSERT INTO login_bktoken VALUES ('501', '2QBCOR39f7bJUT6zyKsm_pCWGWbUbX3Po2jymGODfRQ', '1', '0');
INSERT INTO login_bktoken VALUES ('502', '_89nUb3qEn1ZhpdY0zUDftfRT3rtGD3qYW348XIx064', '1', '0');
INSERT INTO login_bktoken VALUES ('503', 'j3_McYlUDGMZpn8UoiyPSHVbMzot82izN4Zi4AYqnHM', '1', '0');
INSERT INTO login_bktoken VALUES ('504', 'oEj70Sqd8IXAZjZfaThQHfAeJhfSeJ8081uWsqId5yw', '1', '0');
INSERT INTO login_bktoken VALUES ('505', 'yhqAF9ZXp3vqU_Wq6hmSdow9mC8tIayl8QYR81lfqss', '1', '0');
INSERT INTO login_bktoken VALUES ('506', 'iH76Bpv8K3UPJ8q-F9o_z4W4iwXuK8sHiMNDDjdZ6tI', '1', '0');
INSERT INTO login_bktoken VALUES ('507', 'ppeHTTNJOvu22SwpFAW9jFaWLIQvgNem6YtgnuFSvIo', '1', '0');
INSERT INTO login_bktoken VALUES ('508', 'CXWR94N8SYeLuBGU7at9VTabqey432p40L0L8yaDAy0', '1', '0');
INSERT INTO login_bktoken VALUES ('509', 'V2rb506SzBR2nwGqEz7Zq8JP-Lch5BXLBxRyAJ7x-qQ', '1', '0');
INSERT INTO login_bktoken VALUES ('510', 'Txuk4NmxuxmyeUy9Lnp2Wg1BNrM0nNeicC_i_l4u1Oc', '1', '0');
INSERT INTO login_bktoken VALUES ('511', 'cWLdlAfx9JYsSJuhkpGbXOJaU_roHkdGOoKkOUMiirw', '1', '0');
INSERT INTO login_bktoken VALUES ('512', 'mj61RCpjQ6NDcKKjjTFw2bEDJPNjUpU6nO-6OEwgcY0', '1', '0');
INSERT INTO login_bktoken VALUES ('513', '7gKgF3WmzhDFuhfEZBpRLxX7YaN_0ONuug4WBd3RNa8', '1', '0');
INSERT INTO login_bktoken VALUES ('514', 'bVa4S-7cffMtbZZyil15CQKIt0lM6UqKLSLSNuN_jzM', '0', '0');
INSERT INTO login_bktoken VALUES ('515', '7qv6xwpD1KiPV-wwqgO8OP_kLHdlxZZ28Km7NFyF6uQ', '1', '0');
INSERT INTO login_bktoken VALUES ('516', 'C0V8hc_MEdqopi8ZJZFh7yTaQRg_o65c5hML4LKO_oU', '1', '0');
INSERT INTO login_bktoken VALUES ('517', 'dKm2G0Yy8OGhl26zv_v_wnjHZkUzuBP4puHKvhP0dv8', '1', '0');
INSERT INTO login_bktoken VALUES ('518', 'buXjdq_beV-Z6pAMIstU0vawLN_930sjTR-az0V6RJI', '1', '0');
INSERT INTO login_bktoken VALUES ('519', '96Osn-jzwC7YVz032E1TjF_KIqXRI-dYabZ7e9sGSNE', '1', '0');
INSERT INTO login_bktoken VALUES ('520', 'lH52A43nqNnGQ468E8hxF-nvWf4CZjUsu0JzpRMkRQU', '1', '0');
INSERT INTO login_bktoken VALUES ('521', 'QoIWcyrtBqAbAl21svLkVZpZ1Ak1WEFEw9KfZmg7hdA', '1', '0');
INSERT INTO login_bktoken VALUES ('522', 'VneL6m75hjaMoiQ5o-BvBlHs-b9Z0svkHgSVIl8gFnA', '0', '0');
INSERT INTO login_bktoken VALUES ('523', '_ESCRWX8fd6OONuEe5eauWXYQbmj0-uA_dP6bdZ6Zms', '1', '0');

-- ----------------------------
-- Table structure for `paas_app`
-- ----------------------------
DROP TABLE IF EXISTS `paas_app`;
CREATE TABLE `paas_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `code` varchar(30) NOT NULL,
  `introduction` longtext NOT NULL,
  `creater` varchar(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `state` smallint(6) NOT NULL,
  `is_already_test` tinyint(1) NOT NULL,
  `is_already_online` tinyint(1) NOT NULL,
  `first_test_time` datetime DEFAULT NULL,
  `first_online_time` datetime DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `auth_token` varchar(36) DEFAULT NULL,
  `tags_id` int(11),
  `deploy_token` longtext,
  `is_use_celery` tinyint(1) NOT NULL,
  `is_use_celery_beat` tinyint(1) NOT NULL,
  `is_saas` tinyint(1) NOT NULL,
  `logo` varchar(100),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `code` (`code`),
  KEY `paas_app_d5240003` (`created_date`),
  KEY `paas_app_3b388eec` (`first_test_time`),
  KEY `paas_app_8d005fb8` (`first_online_time`),
  KEY `paas_app_8f9ab750` (`tags_id`),
  CONSTRAINT `paas_app_tags_id_7b8a224dc349ebd0_fk_paas_apptags_id` FOREIGN KEY (`tags_id`) REFERENCES `paas_apptags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_app
-- ----------------------------
INSERT INTO paas_app VALUES ('1', 'Agent安装', 'bk_agent_setup', '蓝鲸Agent部署工具', '', '2017-08-23 15:53:21', '1', '0', '0', null, null, 'python', '305ad34f-e038-4ed4-8899-f6ac414ca497', null, null, '1', '1', '1', '');
INSERT INTO paas_app VALUES ('2', 'SSL证书监控系统', 'cer-mgmt', 'SSL证书监控APP是一款自动获取WEB业务系统的SSL证书信息并对即将过期的SSL证书进行告警的工具', '', '2017-10-09 11:31:44', '1', '0', '0', null, null, 'python', 'a03d2a41-94e7-4caf-a290-ca4cbf6434b0', null, null, '1', '1', '1', '');
INSERT INTO paas_app VALUES ('3', 'CheckList', 'bk_check_list', '运维在处理某一具体场景时（如对外版本发布），经常遇到操作步骤较多且各步骤需要不同人员协作确认方可完成的情况。该应用具有操作流程细项划分、各细项对应责任人审核确认的功能，确保操作流程按既定顺序准确无遗漏的执行完成。', '', '2017-10-09 15:45:13', '1', '0', '0', null, null, 'python', '6a959172-1f81-48bb-9e8b-76f0be4d84e7', null, null, '0', '0', '1', '');
INSERT INTO paas_app VALUES ('4', 'JJ1001', 'jj1001', 'JJ1001', 'admin', '2017-12-20 16:24:47', '4', '1', '1', '2017-12-20 17:40:14', '2017-12-20 17:48:30', 'python', 'fd4f6989-3cb2-48f7-94d7-59805b288416', null, '', '0', '0', '0', 'applogo/jj1001.png');
INSERT INTO paas_app VALUES ('5', '蓝鲸监控', 'bk_monitor', '蓝鲸监控是一款针对主机和互联网应用进行监控的产品，监控服务可用于收集主机资源（系统性能、组件服务、数据库、日志等）的监控指标，探测互联网应用服务的可用性，并对指标进行告警设置。', '', '2017-12-20 18:19:22', '1', '0', '0', null, null, 'python', '4a898f71-9421-4714-a687-ea5d9c5f8ea6', null, null, '0', '0', '1', '');

-- ----------------------------
-- Table structure for `paas_apptags`
-- ----------------------------
DROP TABLE IF EXISTS `paas_apptags`;
CREATE TABLE `paas_apptags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `code` varchar(30) NOT NULL,
  `index` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_apptags
-- ----------------------------
INSERT INTO paas_apptags VALUES ('1', '基础服务', 'Service', '0');
INSERT INTO paas_apptags VALUES ('2', '管理类', 'MGT', '0');
INSERT INTO paas_apptags VALUES ('3', '数据类', 'Data', '0');
INSERT INTO paas_apptags VALUES ('4', '行政和HR', 'Hr', '0');
INSERT INTO paas_apptags VALUES ('5', '运维工具', 'Tools', '0');
INSERT INTO paas_apptags VALUES ('6', '流程管理', 'BPM', '0');
INSERT INTO paas_apptags VALUES ('7', '运营支持', 'Supports', '0');
INSERT INTO paas_apptags VALUES ('8', '其它', 'Other', '0');

-- ----------------------------
-- Table structure for `paas_app_developer`
-- ----------------------------
DROP TABLE IF EXISTS `paas_app_developer`;
CREATE TABLE `paas_app_developer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `bkuser_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_id` (`app_id`,`bkuser_id`),
  KEY `paas_app_develop_bkuser_id_7e5f21499b3adc5c_fk_account_bkuser_id` (`bkuser_id`),
  CONSTRAINT `paas_app_developer_app_id_fa0e25f90793edc_fk_paas_app_id` FOREIGN KEY (`app_id`) REFERENCES `paas_app` (`id`),
  CONSTRAINT `paas_app_develop_bkuser_id_7e5f21499b3adc5c_fk_account_bkuser_id` FOREIGN KEY (`bkuser_id`) REFERENCES `account_bkuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_app_developer
-- ----------------------------
INSERT INTO paas_app_developer VALUES ('1', '4', '1');

-- ----------------------------
-- Table structure for `paas_app_secureinfo`
-- ----------------------------
DROP TABLE IF EXISTS `paas_app_secureinfo`;
CREATE TABLE `paas_app_secureinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_code` varchar(30) NOT NULL,
  `vcs_type` smallint(6) NOT NULL,
  `vcs_url` varchar(1024) DEFAULT NULL,
  `vcs_username` varchar(50) DEFAULT NULL,
  `vcs_password` varchar(50) DEFAULT NULL,
  `db_type` varchar(20) DEFAULT NULL,
  `db_host` varchar(1024) DEFAULT NULL,
  `db_port` int(11) DEFAULT NULL,
  `db_name` varchar(30) DEFAULT NULL,
  `db_username` varchar(50) DEFAULT NULL,
  `db_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_code` (`app_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_app_secureinfo
-- ----------------------------
INSERT INTO paas_app_secureinfo VALUES ('1', 'bk_agent_setup', '1', null, null, null, 'mysql', '172.19.0.93', '3306', 'bk_agent_setup', 'root', 'bk@321');
INSERT INTO paas_app_secureinfo VALUES ('2', 'cer-mgmt', '1', null, null, null, 'mysql', '172.19.0.93', '3306', 'cer-mgmt', 'root', 'bk@321');
INSERT INTO paas_app_secureinfo VALUES ('3', 'bk_check_list', '1', null, null, null, 'mysql', '172.19.0.93', '3306', 'bk_check_list', 'root', 'bk@321');
INSERT INTO paas_app_secureinfo VALUES ('4', 'jj1001', '0', 'https://github.com/tingyuxuan1999/Blueking_test01.git', 'zhengjian.jky@snda.com', '21111111', 'mysql', null, '3306', null, null, null);
INSERT INTO paas_app_secureinfo VALUES ('5', 'bk_monitor', '1', null, null, null, 'mysql', '172.19.0.93', '3306', 'bk_monitor', 'root', 'bk@321');

-- ----------------------------
-- Table structure for `paas_release_record`
-- ----------------------------
DROP TABLE IF EXISTS `paas_release_record`;
CREATE TABLE `paas_release_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_code` varchar(30) NOT NULL,
  `operate_id` int(11) NOT NULL,
  `operate_user` varchar(50) DEFAULT NULL,
  `app_old_state` smallint(6) NOT NULL,
  `operate_time` datetime DEFAULT NULL,
  `is_success` tinyint(1) NOT NULL,
  `is_tips` tinyint(1) NOT NULL,
  `is_version` tinyint(1) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `message` longtext,
  `event_id` varchar(36) DEFAULT NULL,
  `extra_data` longtext,
  PRIMARY KEY (`id`),
  KEY `paas_release_record_19c21056` (`app_code`),
  KEY `paas_release_record_8da5b998` (`operate_id`),
  KEY `paas_release_record_648f8b5f` (`operate_time`),
  KEY `paas_release_record_1a4bfda4` (`is_success`),
  KEY `paas_release_record_4437cfac` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_release_record
-- ----------------------------
INSERT INTO paas_release_record VALUES ('1', 'bk_agent_setup', '1', 'admin', '1', '2017-08-23 15:53:21', '0', '1', '0', null, '操作失败! \n------create virtualenv for bk_agent_setup------\r\nCopying env as bk_agent_setup...\r\nvirtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/env/bin/predeactivate\r\nvirtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/env/bin/postdeactivate\r\nvirtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/env/bin/preactivate\r\nvirtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/env/bin/postactivate\r\nvirtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/env/bin/get_env_details\r\nvirtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/predeactivate\r\nvirtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/postdeactivate\r\nvirtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/preactivate\r\nvirtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/postactivate\r\nvirtualenvwrapper.user_scripts creating //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/get_env_details\r\n------create virtualenv success------\r\n------Extract app_code for bk_agent_setup------\r\n------Extract app_code success------\r\n------yum install------\r\nLoaded plugins: fastestmirror, security\r\nSetting up Install Process\r\nLoading mirror speeds from cached hostfile\r\nPackage gcc-4.4.7-18.el6.x86_64 already installed and latest version\r\nPackage python-devel-2.6.6-66.el6_8.x86_64 already installed and latest version\r\nPackage openssl-devel-1.0.1e-57.el6.x86_64 already installed and latest version\r\nPackage libffi-3.0.5-3.2.el6.x86_64 already installed and latest version\r\nResolving Dependencies\r\n--> Running transaction check\r\n---> Package libffi-devel.x86_64 0:3.0.5-3.2.el6 will be installed\r\n--> Finished Dependency Resolution\r\n\r\nDependencies Resolved\r\n\r\n================================================================================\r\n Package               Arch            Version                Repository   Size\r\n================================================================================\r\nInstalling:\r\n libffi-devel          x86_64          3.0.5-3.2.el6          os           18 k\r\n\r\nTransaction Summary\r\n================================================================================\r\nInstall       1 Package(s)\r\n\r\nTotal download size: 18 k\r\nInstalled size: 21 k\r\nDownloading Packages:\r\nRunning rpm_check_debug\r\nRunning Transaction Test\r\nTransaction Test Succeeded\r\nRunning Transaction\r\n\r  Installing : libffi-devel-3.0.5-3.2.el6.x86_64                            1/1 \r\n\r  Verifying  : libffi-devel-3.0.5-3.2.el6.x86_64                            1/1 \r\n\r\nInstalled:\r\n  libffi-devel.x86_64 0:3.0.5-3.2.el6                                           \r\n\r\nComplete!\r\n------yum install success------\r\n------pip install------\r\nCollecting enum34==1.1.6\r\nCollecting paramiko==2.0.2\r\nCollecting jsonschema==2.5.1\r\nCollecting pyasn1>=0.1.7 (from paramiko==2.0.2)\r\nCollecting cryptography>=1.1 (from paramiko==2.0.2)\r\nCollecting functools32; python_version == \"2.7\" (from jsonschema==2.5.1)\r\nCollecting idna>=2.1 (from cryptography>=1.1->paramiko==2.0.2)\r\nCollecting asn1crypto>=0.21.0 (from cryptography>=1.1->paramiko==2.0.2)\r\nCollecting packaging (from cryptography>=1.1->paramiko==2.0.2)\r\nRequirement already satisfied: six>=1.4.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/lib/python2.7/site-packages (from cryptography>=1.1->paramiko==2.0.2)\r\nRequirement already satisfied: setuptools>=11.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/lib/python2.7/site-packages/setuptools-30.0.0-py2.7.egg (from cryptography>=1.1->paramiko==2.0.2)\r\nCollecting ipaddress (from cryptography>=1.1->paramiko==2.0.2)\r\nCollecting cffi>=1.4.1 (from cryptography>=1.1->paramiko==2.0.2)\r\nCollecting pyparsing (from packaging->cryptography>=1.1->paramiko==2.0.2)\r\nCollecting pycparser (from cffi>=1.4.1->cryptography>=1.1->paramiko==2.0.2)\r\nInstalling collected packages: enum34, pyasn1, idna, asn1crypto, pyparsing, packaging, ipaddress, pycparser, cffi, cryptography, paramiko, functools32, jsonschema\r\n  Running setup.py install for pycparser: started\r\n    Running setup.py install for pycparser: finished with status \'done\'\r\n  Running setup.py install for cryptography: started\r\n    Running setup.py install for cryptography: finished with status \'done\'\r\n  Running setup.py install for functools32: started\r\n    Running setup.py install for functools32: finished with status \'done\'\r\nSuccessfully installed asn1crypto-0.22.0 cffi-1.10.0 cryptography-1.8.1 enum34-1.1.6 functools32-3.2.3.post2 idna-2.5 ipaddress-1.0.18 jsonschema-2.5.1 packaging-16.8 paramiko-2.0.2 pyasn1-0.2.3 pycparser-2.17 pyparsing-2.2.0\r\n------pip install success------\r\n------change db------\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, djcelery, messages, filebrowser\r\n  Apply all migrations: app_control, webshell, account, sessions, admin, sites, auth, contenttypes, miya\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Creating table celery_taskmeta\r\n    Creating table celery_tasksetmeta\r\n    Creating table djcelery_intervalschedule\r\n    Creating table djcelery_crontabschedule\r\n    Creating table djcelery_periodictasks\r\n    Creating table djcelery_periodictask\r\n    Creating table djcelery_workerstate\r\n    Creating table djcelery_taskstate\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  Rendering model states... DONE\r\n  Applying contenttypes.0001_initial... OK\r\n  Applying contenttypes.0002_remove_content_type_name... OK\r\n  Applying auth.0001_initial... OK\r\n  Applying auth.0002_alter_permission_name_max_length... OK\r\n  Applying auth.0003_alter_user_email_max_length... OK\r\n  Applying auth.0004_alter_user_username_opts... OK\r\n  Applying auth.0005_alter_user_last_login_null... OK\r\n  Applying auth.0006_require_contenttypes_0002... OK\r\n  Applying account.0001_initial... OK\r\n  Applying account.0002_initial_user_data... OK\r\n  Applying account.0003_auto_20160915_0955... OK\r\n  Applying admin.0001_initial... OK\r\n  Applying app_control.0001_initial... OK\r\n  Applying app_control.0002_initial_app_control... OK\r\n  Applying miya.0001_initial... OK\r\n  Applying sessions.0001_initial... OK\r\n  Applying sites.0001_initial... OK\r\n  Applying webshell.0001_initial... OK\r\n  Applying webshell.0002_auto_20160815_1132... OK\r\nmy_callback\r\ninit_db\r\nis_super_enable: 0\r\nreset default_platforms\r\nreset direct connect plat_id\r\ninit nginx_cfg and zk_cfg\r\ninit_db success.\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, djcelery, messages, filebrowser\r\n  Apply all migrations: app_control, webshell, account, sessions, admin, sites, auth, contenttypes, miya\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\n  Your models have changes that are not yet reflected in a migration, and so won\'t be applied.\r\n  Run \'manage.py makemigrations\' to make new migrations, and then re-run \'manage.py migrate\' to apply them.\r\nmy_callback\r\ninit_db\r\nis_super_enable: 0\r\nreset default_platforms\r\nreset direct connect plat_id\r\ninit nginx_cfg and zk_cfg\r\ninit_db success.\r\n------change db success------\r\n------ start app server ------\r\nError: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\nFor help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_agent_setup/bin/supervisord -h\r\nJob Fail\r\n', '73f1de8e-1e8b-4d9b-a4b9-b6fce44a195f', '{\"event_id\": \"73f1de8e-1e8b-4d9b-a4b9-b6fce44a195f\", \"task_detail\": \"\"}');
INSERT INTO paas_release_record VALUES ('2', 'cer-mgmt', '1', 'admin', '1', '2017-10-09 11:31:44', '0', '0', '0', null, 'Saas App [app:cer-mgmt] Saas App 上线部署事件提交失败, error_code: 20300, error_msg: 第三方服务 RabbitMQ 申请资源失败, 请确认 RabbitMQ 可用', null, null);
INSERT INTO paas_release_record VALUES ('3', 'cer-mgmt', '1', 'admin', '1', '2017-10-09 12:08:10', '0', '1', '0', null, '操作失败! \n------create virtualenv for cer-mgmt------\r\nCopying env as cer-mgmt...\r\n------create virtualenv success------\r\n------Extract app_code for cer-mgmt------\r\n------Extract app_code success------\r\n------pip install------\r\nCollecting pyOpenSSL==16.2.0\r\nCollecting cryptography>=1.3.4 (from pyOpenSSL==16.2.0)\r\nRequirement already satisfied: six>=1.5.2 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from pyOpenSSL==16.2.0)\r\nCollecting idna>=2.1 (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nCollecting asn1crypto>=0.21.0 (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nCollecting packaging (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: setuptools>=11.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages/setuptools-30.0.0-py2.7.egg (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nCollecting enum34 (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nCollecting ipaddress (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nCollecting cffi>=1.4.1 (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nCollecting pyparsing (from packaging->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nCollecting pycparser (from cffi>=1.4.1->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nInstalling collected packages: idna, asn1crypto, pyparsing, packaging, enum34, ipaddress, pycparser, cffi, cryptography, pyOpenSSL\r\n  Running setup.py install for pycparser: started\r\n    Running setup.py install for pycparser: finished with status \'done\'\r\n  Running setup.py install for cryptography: started\r\n    Running setup.py install for cryptography: finished with status \'done\'\r\nSuccessfully installed asn1crypto-0.22.0 cffi-1.10.0 cryptography-1.8.1 enum34-1.1.6 idna-2.5 ipaddress-1.0.18 packaging-16.8 pyOpenSSL-16.2.0 pycparser-2.17 pyparsing-2.2.0\r\n------pip install success------\r\n------change db------\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Creating table celery_taskmeta\r\n    Creating table celery_tasksetmeta\r\n    Creating table djcelery_intervalschedule\r\n    Creating table djcelery_crontabschedule\r\n    Creating table djcelery_periodictasks\r\n    Creating table djcelery_periodictask\r\n    Creating table djcelery_workerstate\r\n    Creating table djcelery_taskstate\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  Rendering model states... DONE\r\n  Applying contenttypes.0001_initial... OK\r\n  Applying contenttypes.0002_remove_content_type_name... OK\r\n  Applying auth.0001_initial... OK\r\n  Applying auth.0002_alter_permission_name_max_length... OK\r\n  Applying auth.0003_alter_user_email_max_length... OK\r\n  Applying auth.0004_alter_user_username_opts... OK\r\n  Applying auth.0005_alter_user_last_login_null... OK\r\n  Applying auth.0006_require_contenttypes_0002... OK\r\n  Applying account.0001_initial... OK\r\n  Applying account.0002_initial_user_data... OK\r\n  Applying account.0003_auto_20161208_1043... OK\r\n  Applying admin.0001_initial... OK\r\n  Applying app_control.0001_initial... OK\r\n  Applying app_control.0002_initial_app_control... OK\r\n  Applying home_application.0001_initial... OK\r\n  Applying sessions.0001_initial... OK\r\n  Applying sites.0001_initial... OK\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\n------change db success------\r\n------ start app server ------\r\nError: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\nFor help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/bin/supervisord -h\r\nJob Fail\r\n', '95e8368c-8aa2-48f1-b63c-c3111b50861f', '{\"event_id\": \"95e8368c-8aa2-48f1-b63c-c3111b50861f\", \"task_detail\": \"\"}');
INSERT INTO paas_release_record VALUES ('4', 'cer-mgmt', '1', 'admin', '1', '2017-10-09 12:22:28', '0', '1', '0', null, '操作失败! \n------create virtualenv for cer-mgmt------\r\n------create virtualenv success------\r\n------Extract app_code for cer-mgmt------\r\n------Extract app_code success------\r\n------pip install------\r\nRequirement already satisfied: pyOpenSSL==16.2.0 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages\r\nRequirement already satisfied: cryptography>=1.3.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from pyOpenSSL==16.2.0)\r\nRequirement already satisfied: six>=1.5.2 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from pyOpenSSL==16.2.0)\r\nRequirement already satisfied: idna>=2.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: asn1crypto>=0.21.0 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: packaging in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: setuptools>=11.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages/setuptools-30.0.0-py2.7.egg (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: enum34 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: ipaddress in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: cffi>=1.4.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: pyparsing in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from packaging->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: pycparser in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cffi>=1.4.1->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n------pip install success------\r\n------change db------\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\n------change db success------\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\nSynchronizing apps without migrations:\r\n------ start app server ------\r\nError: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\nFor help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/bin/supervisord -h\r\nJob Fail\r\n', '45375ae5-71ee-493c-bd0a-5584167af23c', '{\"event_id\": \"45375ae5-71ee-493c-bd0a-5584167af23c\", \"task_detail\": \"\"}');
INSERT INTO paas_release_record VALUES ('5', 'cer-mgmt', '1', 'admin', '1', '2017-10-09 14:21:36', '0', '1', '0', null, '操作失败! \n------create virtualenv for cer-mgmt------\r\n------create virtualenv success------\r\n------Extract app_code for cer-mgmt------\r\n------Extract app_code success------\r\n------pip install------\r\nRequirement already satisfied: pyOpenSSL==16.2.0 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages\r\nRequirement already satisfied: cryptography>=1.3.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from pyOpenSSL==16.2.0)\r\nRequirement already satisfied: six>=1.5.2 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from pyOpenSSL==16.2.0)\r\nRequirement already satisfied: idna>=2.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: asn1crypto>=0.21.0 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: packaging in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: setuptools>=11.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages/setuptools-30.0.0-py2.7.egg (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: enum34 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: ipaddress in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: cffi>=1.4.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: pyparsing in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from packaging->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\nRequirement already satisfied: pycparser in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/lib/python2.7/site-packages (from cffi>=1.4.1->cryptography>=1.3.4->pyOpenSSL==16.2.0)\r\n------pip install success------\r\n------change db------\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, djcelery, messages\r\n  Apply all migrations: app_control, account, sessions, admin, contenttypes, auth, sites, home_application\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\n------change db success------\r\n------ start app server ------\r\nError: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\nFor help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/cer-mgmt/bin/supervisord -h\r\nJob Fail\r\n', '713dbaaf-8dcc-423e-ab1b-e3fc535fb10d', '{\"event_id\": \"713dbaaf-8dcc-423e-ab1b-e3fc535fb10d\", \"task_detail\": \"\"}');
INSERT INTO paas_release_record VALUES ('6', 'bk_check_list', '1', 'admin', '1', '2017-10-09 15:45:13', '0', '1', '0', null, '操作失败! \n------create virtualenv for bk_check_list------\r\nCopying env as bk_check_list...\r\n------create virtualenv success------\r\n------Extract app_code for bk_check_list------\r\n------Extract app_code success------\r\n------change db------\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, messages\r\n  Apply all migrations: app_control, account, sessions, admin, task_center, sites, auth, contenttypes\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  Rendering model states... DONE\r\n  Applying contenttypes.0001_initial... OK\r\n  Applying contenttypes.0002_remove_content_type_name... OK\r\n  Applying auth.0001_initial... OK\r\n  Applying auth.0002_alter_permission_name_max_length... OK\r\n  Applying auth.0003_alter_user_email_max_length... OK\r\n  Applying auth.0004_alter_user_username_opts... OK\r\n  Applying auth.0005_alter_user_last_login_null... OK\r\n  Applying auth.0006_require_contenttypes_0002... OK\r\n  Applying account.0001_initial... OK\r\n  Applying account.0002_initial_user_data... OK\r\n  Applying account.0003_auto_20160825_1717... OK\r\n  Applying admin.0001_initial... OK\r\n  Applying app_control.0001_initial... OK\r\n  Applying app_control.0002_initial_app_control... OK\r\n  Applying sessions.0001_initial... OK\r\n  Applying sites.0001_initial... OK\r\n  Applying task_center.0001_initial... OK\r\n  Applying task_center.0002_auto_20170427_1023... OK\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, messages\r\n  Apply all migrations: app_control, account, sessions, admin, task_center, sites, auth, contenttypes\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\n------change db success------\r\n------ start app server ------\r\nError: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\nFor help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_check_list/bin/supervisord -h\r\nJob Fail\r\n', '8e0fa828-bc4f-4da0-a4ac-dfe1c54ec240', '{\"event_id\": \"8e0fa828-bc4f-4da0-a4ac-dfe1c54ec240\", \"task_detail\": \"\"}');
INSERT INTO paas_release_record VALUES ('7', 'jj1001', '0', 'admin', '1', '2017-12-20 16:48:50', '0', '0', '0', null, '操作失败! \n------create virtualenv for jj1001------\r\nCopying env as jj1001...\r\n------create virtualenv success------\r\n------Get app_code for jj1001------\r\n/data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/paasagent/etc/build/build: line 74: git: command not found\r\n------Get app_code fail------\r\n', '5d08db44-60d5-41d6-b266-03e3317b7885', '{\"event_id\": \"5d08db44-60d5-41d6-b266-03e3317b7885\", \"task_detail\": \"\"}');
INSERT INTO paas_release_record VALUES ('8', 'jj1001', '0', 'admin', '1', '2017-12-20 16:49:30', '0', '0', '0', null, '操作失败! \n------create virtualenv for jj1001------\r\n------create virtualenv success------\r\n------Get app_code for jj1001------\r\nInitialized empty Git repository in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/projects/jj1001/code/jj1001/.git/\r\n------Get app_code success------\r\n------pip install------\r\nCould not open requirements file: [Errno 2] No such file or directory: \'requirements.txt\'\r\n------pip install fail------\r\n', '5d172848-b627-4bc6-8246-6c5f16359c2c', '{\"event_id\": \"5d172848-b627-4bc6-8246-6c5f16359c2c\", \"task_detail\": \"\"}');
INSERT INTO paas_release_record VALUES ('9', 'jj1001', '0', 'admin', '1', '2017-12-20 17:10:59', '0', '0', '0', null, '操作失败! \n------create virtualenv for jj1001------\r\n------create virtualenv success------\r\n------Get app_code for jj1001------\r\nInitialized empty Git repository in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/projects/jj1001/code/jj1001/.git/\r\n------Get app_code success------\r\n------pip install------\r\nRequirement already satisfied: Django==1.8.11 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 6))\r\nRequirement already satisfied: pymysql==0.6.7 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 7))\r\nRequirement already satisfied: MarkupSafe==0.23 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 8))\r\nRequirement already satisfied: Mako==1.0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 9))\r\nRequirement already satisfied: httplib2==0.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 10))\r\nRequirement already satisfied: suds==0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 11))\r\nRequirement already satisfied: celery==3.1.18 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 12))\r\nRequirement already satisfied: django-celery==3.1.16 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 13))\r\nRequirement already satisfied: supervisor==3.3.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 14))\r\nRequirement already satisfied: uWSGI==2.0.13.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 15))\r\nRequirement already satisfied: requests==2.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 16))\r\nRequirement already satisfied: pytz>dev in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: kombu<3.1,>=3.0.25 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: billiard<3.4,>=3.3.0.20 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: meld3>=0.6.5 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from supervisor==3.3.1->-r requirements.txt (line 14))\r\nRequirement already satisfied: amqp<2.0,>=1.4.9 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: anyjson>=0.3.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n------pip install success------\r\n------change db------\r\nTraceback (most recent call last):\r\n  File \"manage.py\", line 17, in <module>\r\n    execute_from_command_line(sys.argv)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/management/__init__.py\", line 354, in execute_from_command_line\r\n    utility.execute()\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/management/__init__.py\", line 346, in execute\r\n    self.fetch_command(subcommand).run_from_argv(self.argv)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/management/base.py\", line 394, in run_from_argv\r\n    self.execute(*args, **cmd_options)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/management/base.py\", line 444, in execute\r\n    self.check()\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/management/base.py\", line 482, in check\r\n    include_deployment_checks=include_deployment_checks,\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/checks/registry.py\", line 72, in run_checks\r\n    new_errors = check(app_configs=app_configs)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/core/checks/model_checks.py\", line 28, in check_all_models\r\n    errors.extend(model.check(**kwargs))\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/base.py\", line 1205, in check\r\n    errors.extend(cls._check_fields(**kwargs))\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/base.py\", line 1282, in _check_fields\r\n    errors.extend(field.check(**kwargs))\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/fields/__init__.py\", line 934, in check\r\n    errors = super(AutoField, self).check(**kwargs)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/fields/__init__.py\", line 207, in check\r\n    errors.extend(self._check_backend_specific_checks(**kwargs))\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/fields/__init__.py\", line 306, in _check_backend_specific_checks\r\n    return connection.validation.check_field(self, **kwargs)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/mysql/validation.py\", line 18, in check_field\r\n    field_type = field.db_type(connection)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/models/fields/__init__.py\", line 614, in db_type\r\n    return connection.data_types[self.get_internal_type()] % data\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/__init__.py\", line 36, in __getattr__\r\n    return getattr(connections[DEFAULT_DB_ALIAS], item)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/utils/functional.py\", line 59, in __get__\r\n    res = instance.__dict__[self.name] = self.func(instance)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/mysql/base.py\", line 196, in data_types\r\n    if self.features.supports_microsecond_precision:\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/utils/functional.py\", line 59, in __get__\r\n    res = instance.__dict__[self.name] = self.func(instance)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/mysql/features.py\", line 52, in supports_microsecond_precision\r\n    return self.connection.mysql_version >= (5, 6, 4) and Database.version_info >= (1, 2, 5)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/utils/functional.py\", line 59, in __get__\r\n    res = instance.__dict__[self.name] = self.func(instance)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/mysql/base.py\", line 371, in mysql_version\r\n    with self.temporary_connection():\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/contextlib.py\", line 17, in __enter__\r\n    return self.gen.next()\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 462, in temporary_connection\r\n    cursor = self.cursor()\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 164, in cursor\r\n    cursor = self.make_cursor(self._cursor())\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 135, in _cursor\r\n    self.ensure_connection()\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 130, in ensure_connection\r\n    self.connect()\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/utils.py\", line 98, in __exit__\r\n    six.reraise(dj_exc_type, dj_exc_value, traceback)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 130, in ensure_connection\r\n    self.connect()\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/base/base.py\", line 119, in connect\r\n    self.connection = self.get_new_connection(conn_params)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/django/db/backends/mysql/base.py\", line 276, in get_new_connection\r\n    conn = Database.connect(**conn_params)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/pymysql/__init__.py\", line 88, in Connect\r\n    return Connection(*args, **kwargs)\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/pymysql/connections.py\", line 657, in __init__\r\n    self.connect()\r\n  File \"//data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages/pymysql/connections.py\", line 882, in connect\r\n    raise exc\r\ndjango.db.utils.OperationalError: (2003, \"Can\'t connect to MySQL server on \'localhost\' ([Errno 97] Address family not supported by protocol)\")\r\n', 'def36a2a-43df-48b1-98aa-0c76f59bc632', '{\"event_id\": \"def36a2a-43df-48b1-98aa-0c76f59bc632\", \"task_detail\": \"\"}');
INSERT INTO paas_release_record VALUES ('10', 'jj1001', '0', 'admin', '1', '2017-12-20 17:37:27', '0', '0', '0', null, '操作失败! \n------create virtualenv for jj1001------\r\n------create virtualenv success------\r\n------Get app_code for jj1001------\r\nInitialized empty Git repository in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/projects/jj1001/code/jj1001/.git/\r\n------Get app_code success------\r\n------pip install------\r\nRequirement already satisfied: Django==1.8.11 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 6))\r\nRequirement already satisfied: pymysql==0.6.7 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 7))\r\nRequirement already satisfied: MarkupSafe==0.23 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 8))\r\nRequirement already satisfied: Mako==1.0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 9))\r\nRequirement already satisfied: httplib2==0.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 10))\r\nRequirement already satisfied: suds==0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 11))\r\nRequirement already satisfied: celery==3.1.18 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 12))\r\nRequirement already satisfied: django-celery==3.1.16 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 13))\r\nRequirement already satisfied: supervisor==3.3.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 14))\r\nRequirement already satisfied: uWSGI==2.0.13.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 15))\r\nRequirement already satisfied: requests==2.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 16))\r\nRequirement already satisfied: pytz>dev in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: kombu<3.1,>=3.0.25 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: billiard<3.4,>=3.3.0.20 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: meld3>=0.6.5 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from supervisor==3.3.1->-r requirements.txt (line 14))\r\nRequirement already satisfied: amqp<2.0,>=1.4.9 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: anyjson>=0.3.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n------pip install success------\r\n------change db------\r\n  Applying account.0001_initial... OK\r\n  Applying account.0002_initial_user_data... OK\r\n  Applying admin.0001_initial... OK\r\n  Applying app_control.0001_initial... OK\r\n  Applying app_control.0002_initial_app_control... OK\r\n  Applying sessions.0001_initial... OK\r\n  Applying sites.0001_initial... OK\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  Rendering model states... DONE\r\n  Applying contenttypes.0001_initial... OK\r\n  Applying contenttypes.0002_remove_content_type_name... OK\r\n  Applying auth.0001_initial... OK\r\n  Applying auth.0002_alter_permission_name_max_length... OK\r\n  Applying auth.0003_alter_user_email_max_length... OK\r\n  Applying auth.0004_alter_user_username_opts... OK\r\n  Applying auth.0005_alter_user_last_login_null... OK\r\n  Applying auth.0006_require_contenttypes_0002... OK\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\n  Your models have changes that are not yet reflected in a migration, and so won\'t be applied.\r\n  Run \'manage.py makemigrations\' to make new migrations, and then re-run \'manage.py migrate\' to apply them.\r\n------change db success------\r\nchown: invalid user: `apps.apps\'\r\n------ start app server ------\r\nsu: user apps does not exist\r\nJob Fail\r\n', 'f43231ef-f374-4731-ad2e-db1d49aa2688', '{\"event_id\": \"f43231ef-f374-4731-ad2e-db1d49aa2688\", \"task_detail\": \"\"}');
INSERT INTO paas_release_record VALUES ('11', 'jj1001', '0', 'admin', '1', '2017-12-20 17:40:01', '1', '0', '0', null, '操作成功! \n------create virtualenv for jj1001------\r\n------create virtualenv success------\r\n------Get app_code for jj1001------\r\nInitialized empty Git repository in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/projects/jj1001/code/jj1001/.git/\r\n------Get app_code success------\r\n------pip install------\r\nRequirement already satisfied: Django==1.8.11 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 6))\r\nRequirement already satisfied: pymysql==0.6.7 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 7))\r\nRequirement already satisfied: MarkupSafe==0.23 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 8))\r\nRequirement already satisfied: Mako==1.0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 9))\r\nRequirement already satisfied: httplib2==0.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 10))\r\nRequirement already satisfied: suds==0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 11))\r\nRequirement already satisfied: celery==3.1.18 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 12))\r\nRequirement already satisfied: django-celery==3.1.16 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 13))\r\nRequirement already satisfied: supervisor==3.3.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 14))\r\nRequirement already satisfied: uWSGI==2.0.13.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 15))\r\nRequirement already satisfied: requests==2.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 16))\r\nRequirement already satisfied: pytz>dev in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: kombu<3.1,>=3.0.25 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: billiard<3.4,>=3.3.0.20 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: meld3>=0.6.5 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from supervisor==3.3.1->-r requirements.txt (line 14))\r\nRequirement already satisfied: amqp<2.0,>=1.4.9 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: anyjson>=0.3.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n------pip install success------\r\n------change db------\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\n  Your models have changes that are not yet reflected in a migration, and so won\'t be applied.\r\n  Run \'manage.py makemigrations\' to make new migrations, and then re-run \'manage.py migrate\' to apply them.\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\n  Your models have changes that are not yet reflected in a migration, and so won\'t be applied.\r\n  Run \'manage.py makemigrations\' to make new migrations, and then re-run \'manage.py migrate\' to apply them.\r\n------change db success------\r\n------ start app server ------\r\nJob Done\r\n任务执行完成, 任务执行总耗时11秒\r\n', '21cf4db0-f090-4526-bd83-bb5577e1b6e1', '{\"event_id\": \"21cf4db0-f090-4526-bd83-bb5577e1b6e1\", \"task_detail\": \"\"}');
INSERT INTO paas_release_record VALUES ('12', 'jj1001', '1', 'admin', '3', '2017-12-20 17:48:12', '1', '0', '0', null, '操作成功! \n------create virtualenv for jj1001------\r\nCopying env as jj1001...\r\n------create virtualenv success------\r\n------Get app_code for jj1001------\r\nInitialized empty Git repository in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/projects/jj1001/code/jj1001/.git/\r\n------Get app_code success------\r\n------pip install------\r\nRequirement already satisfied: Django==1.8.11 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 6))\r\nRequirement already satisfied: pymysql==0.6.7 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 7))\r\nRequirement already satisfied: MarkupSafe==0.23 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 8))\r\nRequirement already satisfied: Mako==1.0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 9))\r\nRequirement already satisfied: httplib2==0.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 10))\r\nRequirement already satisfied: suds==0.4 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 11))\r\nRequirement already satisfied: celery==3.1.18 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 12))\r\nRequirement already satisfied: django-celery==3.1.16 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 13))\r\nRequirement already satisfied: supervisor==3.3.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 14))\r\nRequirement already satisfied: uWSGI==2.0.13.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 15))\r\nRequirement already satisfied: requests==2.9.1 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from -r requirements.txt (line 16))\r\nRequirement already satisfied: pytz>dev in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: kombu<3.1,>=3.0.25 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: billiard<3.4,>=3.3.0.20 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: meld3>=0.6.5 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from supervisor==3.3.1->-r requirements.txt (line 14))\r\nRequirement already satisfied: amqp<2.0,>=1.4.9 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\nRequirement already satisfied: anyjson>=0.3.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/jj1001/lib/python2.7/site-packages (from kombu<3.1,>=3.0.25->celery==3.1.18->-r requirements.txt (line 12))\r\n------pip install success------\r\n------change db------\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  Rendering model states... DONE\r\n  Applying contenttypes.0001_initial... OK\r\n  Applying contenttypes.0002_remove_content_type_name... OK\r\n  Applying auth.0001_initial... OK\r\n  Applying auth.0002_alter_permission_name_max_length... OK\r\n  Applying auth.0003_alter_user_email_max_length... OK\r\n  Applying auth.0004_alter_user_username_opts... OK\r\n  Applying auth.0005_alter_user_last_login_null... OK\r\n  Applying auth.0006_require_contenttypes_0002... OK\r\n  Applying account.0001_initial... OK\r\n  Applying account.0002_initial_user_data... OK\r\n  Applying admin.0001_initial... OK\r\n  Applying app_control.0001_initial... OK\r\n  Applying app_control.0002_initial_app_control... OK\r\n  Applying sessions.0001_initial... OK\r\n  Applying sites.0001_initial... OK\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, home_application, messages\r\n  Apply all migrations: app_control, account, sessions, admin, sites, auth, contenttypes\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\n  Your models have changes that are not yet reflected in a migration, and so won\'t be applied.\r\n  Run \'manage.py makemigrations\' to make new migrations, and then re-run \'manage.py migrate\' to apply them.\r\n------change db success------\r\n------ start app server ------\r\nJob Done\r\n任务执行完成, 任务执行总耗时17秒\r\n', 'f03f8a85-377e-4601-8a84-d2f5d580d730', '{\"event_id\": \"f03f8a85-377e-4601-8a84-d2f5d580d730\", \"task_detail\": \"\"}');
INSERT INTO paas_release_record VALUES ('13', 'bk_monitor', '1', 'admin', '1', '2017-12-20 18:19:22', '0', '1', '0', null, '操作失败! \n------create virtualenv for bk_monitor------\r\nCopying env as bk_monitor...\r\n------create virtualenv success------\r\n------Extract app_code for bk_monitor------\r\n------Extract app_code success------\r\n------pip install------\r\nRequirement already satisfied: kombu==3.0.35 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_monitor/lib/python2.7/site-packages\r\nCollecting arrow==0.5.4\r\nRequirement already satisfied: amqp<2.0,>=1.4.9 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_monitor/lib/python2.7/site-packages (from kombu==3.0.35)\r\nRequirement already satisfied: anyjson>=0.3.3 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_monitor/lib/python2.7/site-packages (from kombu==3.0.35)\r\nCollecting python-dateutil (from arrow==0.5.4)\r\nRequirement already satisfied: six>=1.5 in /data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_monitor/lib/python2.7/site-packages (from python-dateutil->arrow==0.5.4)\r\nInstalling collected packages: python-dateutil, arrow\r\n  Running setup.py install for arrow: started\r\n    Running setup.py install for arrow: finished with status \'done\'\r\nSuccessfully installed arrow-0.5.4 python-dateutil-2.6.1\r\n------pip install success------\r\n------change db------\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, messages\r\n  Apply all migrations: app_control, account, monitor, sessions, admin, sites, auth, contenttypes\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  Rendering model states... DONE\r\n  Applying contenttypes.0001_initial... OK\r\n  Applying contenttypes.0002_remove_content_type_name... OK\r\n  Applying auth.0001_initial... OK\r\n  Applying auth.0002_alter_permission_name_max_length... OK\r\n  Applying auth.0003_alter_user_email_max_length... OK\r\n  Applying auth.0004_alter_user_username_opts... OK\r\n  Applying auth.0005_alter_user_last_login_null... OK\r\n  Applying auth.0006_require_contenttypes_0002... OK\r\n  Applying account.0001_initial... OK\r\n  Applying account.0002_initial_user_data... OK\r\n  Applying account.0003_auto_20161121_1436... OK\r\n  Applying admin.0001_initial... OK\r\n  Applying app_control.0001_initial... OK\r\n  Applying app_control.0002_initial_app_control... OK\r\n  Applying monitor.0001_initial... OK\r\n  Applying monitor.0002_auto_20161123_1717... OK\r\n  Applying monitor.0003_auto_20161212_1106... OK\r\n  Applying monitor.0004_callmethodrecord_datagenerateconfig_dataresulttable_dataresulttablefield_monitorhoststicky... OK\r\n  Applying monitor.0005_operaterecord... OK\r\n  Applying monitor.0006_alarmstrategy... OK\r\n  Applying monitor.0007_callmethodrecord_method... OK\r\n  Applying monitor.0008_monitorlocation_scenariomenu... OK\r\n  Applying monitor.0009_auto_20161220_1716... OK\r\n  Applying monitor.0010_auto_20161220_1716... OK\r\n  Applying monitor.0011_datacollector... OK\r\n  Applying monitor.0012_shield... OK\r\n  Applying monitor.0013_auto_20161227_1651... OK\r\n  Applying monitor.0014_auto_20161228_1202... OK\r\n  Applying monitor.0015_auto_20161228_1434... OK\r\n  Applying monitor.0016_auto_20170114_1852... OK\r\n  Applying monitor.0017_auto_20170509_1140... OK\r\n  Applying sessions.0001_initial... OK\r\n  Applying sites.0001_initial... OK\r\nOperations to perform:\r\n  Synchronize unmigrated apps: staticfiles, messages\r\n  Apply all migrations: app_control, account, monitor, sessions, admin, sites, auth, contenttypes\r\nSynchronizing apps without migrations:\r\n  Creating tables...\r\n    Running deferred SQL...\r\n  Installing custom SQL...\r\nRunning migrations:\r\n  No migrations to apply.\r\n------change db success------\r\n------ start app server ------\r\nError: Cannot open an HTTP server: socket.error reported AF_UNIX path too long\r\nFor help, use //data/bking_install/bksuite_ce-3.0.25-beta/paas/paas_agent/apps/Envs/bk_monitor/bin/supervisord -h\r\nJob Fail\r\n', '28ef0a93-598e-48fa-bb2d-3402cc10e23d', '{\"event_id\": \"28ef0a93-598e-48fa-bb2d-3402cc10e23d\", \"task_detail\": \"\"}');

-- ----------------------------
-- Table structure for `paas_release_useroperaterecord`
-- ----------------------------
DROP TABLE IF EXISTS `paas_release_useroperaterecord`;
CREATE TABLE `paas_release_useroperaterecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_code` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `before_data` longtext,
  `arfter_data` longtext,
  `operate_time` datetime NOT NULL,
  `operate_type` int(11) NOT NULL,
  `extra_data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_release_useroperaterecord
-- ----------------------------
INSERT INTO paas_release_useroperaterecord VALUES ('1', 'bk_agent_setup', 'admin', '', '', '2017-08-23 15:53:22', '4', '{\"username\": \"admin\"}');
INSERT INTO paas_release_useroperaterecord VALUES ('2', 'cer-mgmt', 'admin', '', '', '2017-10-09 11:31:45', '4', '{\"username\": \"admin\"}');
INSERT INTO paas_release_useroperaterecord VALUES ('3', 'cer-mgmt', 'admin', '', '', '2017-10-09 12:08:11', '4', '{\"username\": \"admin\"}');
INSERT INTO paas_release_useroperaterecord VALUES ('4', 'cer-mgmt', 'admin', '', '', '2017-10-09 12:22:28', '4', '{\"username\": \"admin\"}');
INSERT INTO paas_release_useroperaterecord VALUES ('5', 'cer-mgmt', 'admin', '', '', '2017-10-09 14:21:36', '4', '{\"username\": \"admin\"}');
INSERT INTO paas_release_useroperaterecord VALUES ('6', 'bk_check_list', 'admin', '', '', '2017-10-09 15:45:13', '4', '{\"username\": \"admin\"}');
INSERT INTO paas_release_useroperaterecord VALUES ('7', 'jj1001', 'admin', '', '', '2017-12-20 16:48:50', '3', '{\"username\": \"admin\", \"event_id\": \"5d08db44-60d5-41d6-b266-03e3317b7885\", \"is_success\": true}');
INSERT INTO paas_release_useroperaterecord VALUES ('8', 'jj1001', 'admin', '', '', '2017-12-20 16:49:30', '3', '{\"username\": \"admin\", \"event_id\": \"5d172848-b627-4bc6-8246-6c5f16359c2c\", \"is_success\": true}');
INSERT INTO paas_release_useroperaterecord VALUES ('9', 'jj1001', 'admin', '', '', '2017-12-20 17:10:59', '3', '{\"username\": \"admin\", \"event_id\": \"def36a2a-43df-48b1-98aa-0c76f59bc632\", \"is_success\": true}');
INSERT INTO paas_release_useroperaterecord VALUES ('10', 'jj1001', 'admin', '', '', '2017-12-20 17:37:27', '3', '{\"username\": \"admin\", \"event_id\": \"f43231ef-f374-4731-ad2e-db1d49aa2688\", \"is_success\": true}');
INSERT INTO paas_release_useroperaterecord VALUES ('11', 'jj1001', 'admin', '', '', '2017-12-20 17:40:01', '3', '{\"username\": \"admin\", \"event_id\": \"21cf4db0-f090-4526-bd83-bb5577e1b6e1\", \"is_success\": true}');
INSERT INTO paas_release_useroperaterecord VALUES ('12', 'jj1001', 'admin', '', '', '2017-12-20 17:48:12', '4', '{\"username\": \"admin\", \"form_data\": {\"features\": \"\", \"is_tips\": \"0\", \"bugs\": \"\"}}');
INSERT INTO paas_release_useroperaterecord VALUES ('13', 'bk_monitor', 'admin', '', '', '2017-12-20 18:19:22', '4', '{\"username\": \"admin\"}');

-- ----------------------------
-- Table structure for `paas_release_version`
-- ----------------------------
DROP TABLE IF EXISTS `paas_release_version`;
CREATE TABLE `paas_release_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(30) NOT NULL,
  `code_addr` varchar(200) DEFAULT NULL,
  `publisher` varchar(30) NOT NULL,
  `pubdate` datetime DEFAULT NULL,
  `desc` longtext,
  `app_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paas_release_version_app_id_4b30a61b1b14c5fa_fk_paas_app_id` (`app_id`),
  KEY `paas_release_version_588e069d` (`pubdate`),
  CONSTRAINT `paas_release_version_app_id_4b30a61b1b14c5fa_fk_paas_app_id` FOREIGN KEY (`app_id`) REFERENCES `paas_app` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_release_version
-- ----------------------------

-- ----------------------------
-- Table structure for `paas_release_versiondetail`
-- ----------------------------
DROP TABLE IF EXISTS `paas_release_versiondetail`;
CREATE TABLE `paas_release_versiondetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `features` longtext,
  `bug` longtext,
  `app_version_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paas__app_version_id_1d8c22ce431e44da_fk_paas_release_version_id` (`app_version_id`),
  CONSTRAINT `paas__app_version_id_1d8c22ce431e44da_fk_paas_release_version_id` FOREIGN KEY (`app_version_id`) REFERENCES `paas_release_version` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_release_versiondetail
-- ----------------------------

-- ----------------------------
-- Table structure for `paas_resources`
-- ----------------------------
DROP TABLE IF EXISTS `paas_resources`;
CREATE TABLE `paas_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `version` varchar(36) DEFAULT NULL,
  `size` varchar(36) DEFAULT NULL,
  `display` tinyint(1) NOT NULL,
  `icon_url` varchar(256) DEFAULT NULL,
  `doc_url` varchar(256) DEFAULT NULL,
  `download_url` varchar(256) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_resources
-- ----------------------------
INSERT INTO paas_resources VALUES ('1', '开发框架', '--', '740KB', '1', '/static/img/resource/framework.png', null, '/media/framework.tar.gz', '2017-08-23 15:38:01');
INSERT INTO paas_resources VALUES ('2', 'Python', '2.7.11', '17.7MB', '1', '/static/img/resource/python.png', 'http://bbs.bk.tencent.com/forum.php?mod=viewthread&tid=163&extra=page%3D1', 'http://paas-10032816.cos.myqcloud.com/python-2.7.11.msi', '2017-08-23 15:38:01');
INSERT INTO paas_resources VALUES ('3', 'Python资源包', '1.0', '19.8MB', '1', '/static/img/resource/python-sdk.png', null, 'http://paas-10032816.cos.myqcloud.com/python-sdk-1.0.zip', '2017-08-23 15:38:01');
INSERT INTO paas_resources VALUES ('4', 'Eclipse（含PyDev）', '4.5.2', '476MB', '1', '/static/img/resource/eclipse-4.5.png', null, 'http://paas-10032816.cos.myqcloud.com/eclipse-4.5.2.zip', '2017-08-23 15:38:01');
INSERT INTO paas_resources VALUES ('5', 'PyCharm', '2016.3', '170+M', '1', '/static/img/resource/pycharm.jpeg', null, 'https://www.jetbrains.com/pycharm/download/', '2017-08-23 15:38:01');
INSERT INTO paas_resources VALUES ('6', '统一开发环境', '1.0', '781MB', '1', '/static/img/resource/vagrant.jpg', 'http://bbs.bk.tencent.com/forum.php?mod=viewthread&tid=162&extra=page%3D1', 'http://paas-10032816.cos.myqcloud.com/bk-qcloud-django1.8-u1.box', '2017-08-23 15:38:01');
INSERT INTO paas_resources VALUES ('7', 'MySQL', '5.6.28.0', '263MB', '1', '/static/img/resource/mysql.png', null, 'http://paas-10032816.cos.myqcloud.com/mysql-installer-community-5.6.28.0.msi', '2017-08-23 15:38:01');
INSERT INTO paas_resources VALUES ('8', 'Rabbitmq', '3.6.2', '95.9MB', '1', '/static/img/resource/rabbitmq.png', null, 'http://paas-10032816.cos.myqcloud.com/rabbitmq-server-3.6.2.zip', '2017-08-23 15:38:01');

-- ----------------------------
-- Table structure for `paas_saas_app`
-- ----------------------------
DROP TABLE IF EXISTS `paas_saas_app`;
CREATE TABLE `paas_saas_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `app_id` int(11) DEFAULT NULL,
  `current_version_id` int(11),
  `created_time` datetime,
  `online_version_id` int(11),
  `logo` varchar(100),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `paas_saas_app_app_id_2f622d9c81ffee7f_fk_paas_app_id` (`app_id`),
  KEY `paas_saas_app_42d04c48` (`current_version_id`),
  KEY `paas_saas_app_53c4ba2c` (`online_version_id`),
  CONSTRAINT `current_version_id_5aa0bc77e34af762_fk_paas_saas_app_version_id` FOREIGN KEY (`current_version_id`) REFERENCES `paas_saas_app_version` (`id`),
  CONSTRAINT `paas_saas_app_app_id_2f622d9c81ffee7f_fk_paas_app_id` FOREIGN KEY (`app_id`) REFERENCES `paas_app` (`id`),
  CONSTRAINT `p_online_version_id_2758312b250dd995_fk_paas_saas_app_version_id` FOREIGN KEY (`online_version_id`) REFERENCES `paas_saas_app_version` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_saas_app
-- ----------------------------
INSERT INTO paas_saas_app VALUES ('1', 'bk_agent_setup', 'Agent安装', '1', '1', '2017-08-23 15:38:00', null, 'applogo/bk_agent_setup.png');
INSERT INTO paas_saas_app VALUES ('2', 'bk_check_list', 'CheckList', '3', '2', '2017-08-23 15:38:00', null, 'applogo/bk_check_list.png');
INSERT INTO paas_saas_app VALUES ('3', 'bk_framework', '开发框架', null, '3', '2017-08-23 15:38:00', null, 'applogo/bk_framework.png');
INSERT INTO paas_saas_app VALUES ('4', 'bk_funds_manage', '经费管理', null, '4', '2017-08-23 15:38:00', null, 'applogo/bk_funds_manage.png');
INSERT INTO paas_saas_app VALUES ('5', 'bk_work_manage', '会议管理', null, '5', '2017-08-23 15:38:00', null, 'applogo/bk_work_manage.png');
INSERT INTO paas_saas_app VALUES ('6', 'cer-mgmt', 'SSL证书监控系统', '2', '6', '2017-10-09 11:31:40', null, '');
INSERT INTO paas_saas_app VALUES ('7', 'bk_monitor', '蓝鲸监控', '5', '7', '2017-12-20 18:19:10', null, '');

-- ----------------------------
-- Table structure for `paas_saas_app_version`
-- ----------------------------
DROP TABLE IF EXISTS `paas_saas_app_version`;
CREATE TABLE `paas_saas_app_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(20) NOT NULL,
  `settings` longtext,
  `saas_app_id` int(11) NOT NULL,
  `upload_file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paas_saas_app_v_saas_app_id_45a46ea9a549dc5a_fk_paas_saas_app_id` (`saas_app_id`),
  KEY `paas_upload_file_id_323abcfd9578f831_fk_paas_saas_upload_file_id` (`upload_file_id`),
  CONSTRAINT `paas_saas_app_v_saas_app_id_45a46ea9a549dc5a_fk_paas_saas_app_id` FOREIGN KEY (`saas_app_id`) REFERENCES `paas_saas_app` (`id`),
  CONSTRAINT `paas_upload_file_id_323abcfd9578f831_fk_paas_saas_upload_file_id` FOREIGN KEY (`upload_file_id`) REFERENCES `paas_saas_upload_file` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_saas_app_version
-- ----------------------------
INSERT INTO paas_saas_app_version VALUES ('1', '1.0.0', '{\"language\": \"python\", \"author\": \"hongsonggao\", \"introduction\": \"\\u84dd\\u9cb8Agent\\u90e8\\u7f72\\u5de5\\u5177\", \"is_use_celery\": true, \"date\": \"2016-12-12 13:59:30\", \"yum\": \"gcc python-devel openssl-devel libffi libffi-devel\", \"pip\": \"enum34==1.1.6 paramiko==2.0.2 jsonschema==2.5.1\"}', '1', '1');
INSERT INTO paas_saas_app_version VALUES ('2', '1.0.0', '{\"language\": \"python\", \"author\": \"paas\", \"introduction\": \"\\u8fd0\\u7ef4\\u5728\\u5904\\u7406\\u67d0\\u4e00\\u5177\\u4f53\\u573a\\u666f\\u65f6\\uff08\\u5982\\u5bf9\\u5916\\u7248\\u672c\\u53d1\\u5e03\\uff09\\uff0c\\u7ecf\\u5e38\\u9047\\u5230\\u64cd\\u4f5c\\u6b65\\u9aa4\\u8f83\\u591a\\u4e14\\u5404\\u6b65\\u9aa4\\u9700\\u8981\\u4e0d\\u540c\\u4eba\\u5458\\u534f\\u4f5c\\u786e\\u8ba4\\u65b9\\u53ef\\u5b8c\\u6210\\u7684\\u60c5\\u51b5\\u3002\\u8be5\\u5e94\\u7528\\u5177\\u6709\\u64cd\\u4f5c\\u6d41\\u7a0b\\u7ec6\\u9879\\u5212\\u5206\\u3001\\u5404\\u7ec6\\u9879\\u5bf9\\u5e94\\u8d23\\u4efb\\u4eba\\u5ba1\\u6838\\u786e\\u8ba4\\u7684\\u529f\\u80fd\\uff0c\\u786e\\u4fdd\\u64cd\\u4f5c\\u6d41\\u7a0b\\u6309\\u65e2\\u5b9a\\u987a\\u5e8f\\u51c6\\u786e\\u65e0\\u9057\\u6f0f\\u7684\\u6267\\u884c\\u5b8c\\u6210\\u3002\", \"is_use_celery\": false, \"date\": \"2016-12-12 14:01:20\", \"yum\": \"\", \"pip\": \"\"}', '2', '2');
INSERT INTO paas_saas_app_version VALUES ('3', '1.0.0', '{\"language\": \"python\", \"author\": \"\\u84dd\\u9cb8\\u667a\\u4e91\", \"introduction\": \"\\u201c\\u5f00\\u53d1\\u6846\\u67b6\\u201d\\u662f\\u84dd\\u9cb8\\u667a\\u4e91\\u56e2\\u961f\\u4e3a\\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u7684\\u793a\\u4f8b\\u4ee3\\u7801\\uff0c\\u57fa\\u4e8e\\u6b64\\u6846\\u67b6\\uff0c\\u5f00\\u53d1\\u8005\\u53ef\\u4ee5\\u5feb\\u901f\\u4e0a\\u624b\\uff0c\\u5229\\u7528\\u84dd\\u9cb8\\u667a\\u4e91\\u96c6\\u6210\\u5e73\\u53f0\\uff08PaaS\\uff09\\u63d0\\u4f9b\\u7684\\u8c03\\u5ea6\\u5f15\\u64ce\\u3001\\u516c\\u5171\\u7ec4\\u4ef6\\u7b49\\u6a21\\u5757\\uff0c\\u6784\\u5efa\\u4f4e\\u6210\\u672c\\u3001\\u514d\\u8fd0\\u7ef4\\u7684\\u652f\\u6491\\u5de5\\u5177\\u548c\\u8fd0\\u8425\\u7cfb\\u7edf\\u3002\", \"is_use_celery\": true, \"date\": \"2017-05-03 15:39:08\", \"yum\": \"\", \"pip\": \"\"}', '3', '6');
INSERT INTO paas_saas_app_version VALUES ('4', '1.0.0', '{\"language\": \"python\", \"author\": \"paas\", \"introduction\": \"\\u5c0f\\u7ec4\\u7ecf\\u8d39\\u7ba1\\u7406\", \"is_use_celery\": false, \"date\": \"2016-12-12 14:01:27\", \"yum\": \"\", \"pip\": \"\"}', '4', '4');
INSERT INTO paas_saas_app_version VALUES ('5', '1.0.0', '{\"language\": \"python\", \"author\": \"wesleylin\", \"introduction\": \"\\u4f1a\\u8bae\\u7ba1\\u7406\", \"is_use_celery\": false, \"date\": \"2016-12-12 14:01:32\", \"yum\": \"\", \"pip\": \"\"}', '5', '5');
INSERT INTO paas_saas_app_version VALUES ('6', '1.0.0', '{\"language\": \"python\", \"author\": \"canway\", \"introduction\": \"SSL\\u8bc1\\u4e66\\u76d1\\u63a7APP\\u662f\\u4e00\\u6b3e\\u81ea\\u52a8\\u83b7\\u53d6WEB\\u4e1a\\u52a1\\u7cfb\\u7edf\\u7684SSL\\u8bc1\\u4e66\\u4fe1\\u606f\\u5e76\\u5bf9\\u5373\\u5c06\\u8fc7\\u671f\\u7684SSL\\u8bc1\\u4e66\\u8fdb\\u884c\\u544a\\u8b66\\u7684\\u5de5\\u5177\", \"is_use_celery\": true, \"date\": \"2017-05-02 16:24:04\", \"yum\": \"\", \"pip\": \"pyOpenSSL==16.2.0\"}', '6', '7');
INSERT INTO paas_saas_app_version VALUES ('7', '1.0.31', '{\"language\": \"python\", \"author\": \"\\u84dd\\u9cb8\\u667a\\u4e91\", \"introduction\": \"\\u84dd\\u9cb8\\u76d1\\u63a7\\u662f\\u4e00\\u6b3e\\u9488\\u5bf9\\u4e3b\\u673a\\u548c\\u4e92\\u8054\\u7f51\\u5e94\\u7528\\u8fdb\\u884c\\u76d1\\u63a7\\u7684\\u4ea7\\u54c1\\uff0c\\u76d1\\u63a7\\u670d\\u52a1\\u53ef\\u7528\\u4e8e\\u6536\\u96c6\\u4e3b\\u673a\\u8d44\\u6e90\\uff08\\u7cfb\\u7edf\\u6027\\u80fd\\u3001\\u7ec4\\u4ef6\\u670d\\u52a1\\u3001\\u6570\\u636e\\u5e93\\u3001\\u65e5\\u5fd7\\u7b49\\uff09\\u7684\\u76d1\\u63a7\\u6307\\u6807\\uff0c\\u63a2\\u6d4b\\u4e92\\u8054\\u7f51\\u5e94\\u7528\\u670d\\u52a1\\u7684\\u53ef\\u7528\\u6027\\uff0c\\u5e76\\u5bf9\\u6307\\u6807\\u8fdb\\u884c\\u544a\\u8b66\\u8bbe\\u7f6e\\u3002\", \"is_use_celery\": false, \"date\": \"2017-12-18 15:43:26\", \"yum\": \"\", \"pip\": \"kombu==3.0.35 arrow==0.5.4\"}', '7', '8');

-- ----------------------------
-- Table structure for `paas_saas_upload_file`
-- ----------------------------
DROP TABLE IF EXISTS `paas_saas_upload_file`;
CREATE TABLE `paas_saas_upload_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime NOT NULL,
  `md5` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paas_saas_upload_file_49131a57` (`uploaded_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_saas_upload_file
-- ----------------------------
INSERT INTO paas_saas_upload_file VALUES ('1', 'bk_agent_setup.tar.gz', '5473536', 'saas_files/bk_agent_setup.tar.gz', '2017-08-23 15:38:00', 'ea7972a3b50ccd2465b9025ceb9d300c');
INSERT INTO paas_saas_upload_file VALUES ('2', 'bk_check_list.tar.gz', '2583992', 'saas_files/bk_check_list.tar.gz', '2017-08-23 15:38:00', 'ee4a8d1e6db8b6fb57123ea3abe8d580');
INSERT INTO paas_saas_upload_file VALUES ('3', 'bk_framework.tar.gz', '745914', 'saas_files/bk_framework.tar.gz', '2017-08-23 15:38:00', '58ab8afc3359c60b37a0078ad6e1e03e');
INSERT INTO paas_saas_upload_file VALUES ('4', 'bk_funds_manage.tar.gz', '2367974', 'saas_files/bk_funds_manage.tar.gz', '2017-08-23 15:38:00', 'b6ab488261fcd3db8a5ae9df4e5a1018');
INSERT INTO paas_saas_upload_file VALUES ('5', 'bk_work_manage.tar.gz', '3069728', 'saas_files/bk_work_manage.tar.gz', '2017-08-23 15:38:00', 'e3afc56688b6312e97e2b250a38c3642');
INSERT INTO paas_saas_upload_file VALUES ('6', 'bk_framework_R00001.tar.gz', '874555', 'saas_files/bk_framework_R00001.tar.gz', '2017-08-23 15:38:00', '67e002e82e0dca7e0ca61e8c804a1958');
INSERT INTO paas_saas_upload_file VALUES ('7', 'cer-mgmt_V1.0.0.tar.gz', '5084334', 'saas_files/cer-mgmt_V1.0.0.tar.gz', '2017-10-09 11:31:40', 'fe98ba0523651f7cb6df80d8a126d04d');
INSERT INTO paas_saas_upload_file VALUES ('8', 'bk_monitor_V1.0.31.tar.gz', '5783504', 'saas_files/bk_monitor_V1.0.31.tar.gz', '2017-12-20 18:19:10', '73a91496ea16603e15afd0efb6017902');

-- ----------------------------
-- Table structure for `paas_usefullinks`
-- ----------------------------
DROP TABLE IF EXISTS `paas_usefullinks`;
CREATE TABLE `paas_usefullinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_usefullinks
-- ----------------------------

-- ----------------------------
-- Table structure for `paas_userapps`
-- ----------------------------
DROP TABLE IF EXISTS `paas_userapps`;
CREATE TABLE `paas_userapps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `apps` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_userapps
-- ----------------------------

-- ----------------------------
-- Table structure for `paas_usersettings`
-- ----------------------------
DROP TABLE IF EXISTS `paas_usersettings`;
CREATE TABLE `paas_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `apps` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paas_usersettings
-- ----------------------------
INSERT INTO paas_usersettings VALUES ('1', 'admin', '[\"bk_cc\", \"bk_job\", \"jj1001\"]');
INSERT INTO paas_usersettings VALUES ('2', 'xiaobo', '[\"bk_cc\", \"bk_job\"]');
INSERT INTO paas_usersettings VALUES ('3', 'zhengjian', '[\"bk_cc\", \"bk_job\", \"jj1001\"]');
INSERT INTO paas_usersettings VALUES ('4', 'jack', '[\"bk_cc\", \"bk_job\"]');
INSERT INTO paas_usersettings VALUES ('5', 'qianjun', '[\"bk_cc\", \"bk_job\", \"jj1001\"]');
INSERT INTO paas_usersettings VALUES ('6', 'fuji', '[\"bk_cc\", \"bk_job\"]');
INSERT INTO paas_usersettings VALUES ('7', 'zangwei', '[\"bk_cc\", \"bk_job\"]');
INSERT INTO paas_usersettings VALUES ('8', 'bingwei', '[\"bk_cc\", \"bk_job\", \"jj1001\"]');
INSERT INTO paas_usersettings VALUES ('9', 'selinaliang', '[\"bk_cc\", \"bk_job\"]');
INSERT INTO paas_usersettings VALUES ('10', 'songyu', '[\"bk_cc\", \"bk_job\", \"jj1001\"]');
INSERT INTO paas_usersettings VALUES ('11', 'wangye', '[\"bk_cc\", \"bk_job\", \"jj1001\"]');
