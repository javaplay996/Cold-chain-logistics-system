/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lenglianwuliuxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lenglianwuliuxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lenglianwuliuxitong`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(2,3,'收货人2','17703786902','地址2',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(3,2,'收货人3','17703786903','地址3',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(4,1,'收货人4','17703786904','地址4',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(5,1,'收货人5','17703786905','地址5',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(6,3,'收货人6','17703786906','地址6',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(7,1,'收货人7','17703786907','地址7',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(8,2,'收货人8','17703786908','地址8',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(9,2,'收货人9','17703786909','地址9',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(10,1,'收货人10','17703786910','地址10',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(11,1,'收货人11','17703786911','地址11',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(12,3,'收货人12','17703786912','地址12',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(13,1,'收货人13','17703786913','地址13',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54'),(14,1,'收货人14','17703786914','地址14',1,'2023-04-01 17:11:54','2023-04-01 17:11:54','2023-04-01 17:11:54');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-01 17:11:33'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-01 17:11:33'),(3,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-01 17:11:33'),(4,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-01 17:11:33'),(5,'huowu_types','货物类型',1,'货物类型1',NULL,NULL,'2023-04-01 17:11:33'),(6,'huowu_types','货物类型',2,'货物类型2',NULL,NULL,'2023-04-01 17:11:33'),(7,'huowu_types','货物类型',3,'货物类型3',NULL,NULL,'2023-04-01 17:11:33'),(8,'huowu_types','货物类型',4,'货物类型4',NULL,NULL,'2023-04-01 17:11:33'),(9,'huowu_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-01 17:11:33'),(10,'huowu_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-01 17:11:33'),(11,'huowu_order_types','订单类型',103,'已派送',NULL,NULL,'2023-04-01 17:11:33'),(12,'huowu_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-01 17:11:33'),(13,'huowu_order_types','订单类型',106,'已送至网点',NULL,NULL,'2023-04-01 17:11:33'),(14,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-01 17:11:33'),(15,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-01 17:11:33'),(16,'wangdian_types','网点类型',1,'网点类型1',NULL,NULL,'2023-04-01 17:11:33'),(17,'wangdian_types','网点类型',2,'网点类型2',NULL,NULL,'2023-04-01 17:11:33'),(18,'huowu_order_fenpei_types','订单类型',1,'未派送',NULL,NULL,'2023-04-01 17:11:34'),(19,'huowu_order_fenpei_types','订单类型',2,'已派送',NULL,NULL,'2023-04-01 17:11:34');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-01 17:11:54','公告详情1','2023-04-01 17:11:54'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-01 17:11:54','公告详情2','2023-04-01 17:11:54'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-01 17:11:54','公告详情3','2023-04-01 17:11:54'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-01 17:11:54','公告详情4','2023-04-01 17:11:54'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-04-01 17:11:54','公告详情5','2023-04-01 17:11:54'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-01 17:11:54','公告详情6','2023-04-01 17:11:54'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-01 17:11:54','公告详情7','2023-04-01 17:11:54'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-01 17:11:54','公告详情8','2023-04-01 17:11:54'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-01 17:11:54','公告详情9','2023-04-01 17:11:54'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-01 17:11:54','公告详情10','2023-04-01 17:11:54'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-01 17:11:54','公告详情11','2023-04-01 17:11:54'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-01 17:11:54','公告详情12','2023-04-01 17:11:54'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-01 17:11:54','公告详情13','2023-04-01 17:11:54'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-01 17:11:54','公告详情14','2023-04-01 17:11:54');

/*Table structure for table `huowu` */

DROP TABLE IF EXISTS `huowu`;

CREATE TABLE `huowu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huowu_name` varchar(200) DEFAULT NULL COMMENT '货物名称  Search111 ',
  `huowu_uuid_number` varchar(200) DEFAULT NULL COMMENT '货物编号',
  `huowu_photo` varchar(200) DEFAULT NULL COMMENT '货物照片',
  `huowu_types` int(11) DEFAULT NULL COMMENT '货物类型 Search111',
  `huowu_content` longtext COMMENT '货物介绍 ',
  `huowu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='货物';

/*Data for the table `huowu` */

insert  into `huowu`(`id`,`huowu_name`,`huowu_uuid_number`,`huowu_photo`,`huowu_types`,`huowu_content`,`huowu_delete`,`insert_time`,`create_time`) values (1,'货物名称1','1680340314057','upload/huowu1.jpg',2,'货物介绍1',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(2,'货物名称2','1680340314049','upload/huowu2.jpg',3,'货物介绍2',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(3,'货物名称3','1680340314117','upload/huowu3.jpg',3,'货物介绍3',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(4,'货物名称4','1680340314057','upload/huowu4.jpg',4,'货物介绍4',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(5,'货物名称5','1680340314053','upload/huowu5.jpg',2,'货物介绍5',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(6,'货物名称6','1680340314060','upload/huowu6.jpg',1,'货物介绍6',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(7,'货物名称7','1680340314054','upload/huowu7.jpg',4,'货物介绍7',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(8,'货物名称8','1680340314075','upload/huowu8.jpg',3,'货物介绍8',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(9,'货物名称9','1680340314098','upload/huowu9.jpg',4,'货物介绍9',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(10,'货物名称10','1680340314070','upload/huowu10.jpg',1,'货物介绍10',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(11,'货物名称11','1680340314071','upload/huowu11.jpg',4,'货物介绍11',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(12,'货物名称12','1680340314082','upload/huowu12.jpg',4,'货物介绍12',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(13,'货物名称13','1680340314130','upload/huowu13.jpg',2,'货物介绍13',1,'2023-04-01 17:11:54','2023-04-01 17:11:54'),(14,'货物名称14','1680340314036','upload/huowu14.jpg',3,'货物介绍14',1,'2023-04-01 17:11:54','2023-04-01 17:11:54');

/*Table structure for table `huowu_fenpei` */

DROP TABLE IF EXISTS `huowu_fenpei`;

CREATE TABLE `huowu_fenpei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huowu_order_id` int(11) DEFAULT NULL COMMENT '订单',
  `kuaidiyuan_id` int(11) DEFAULT NULL COMMENT '快递员',
  `huowu_order_fenpei_types` int(11) DEFAULT NULL COMMENT '订单类型 ',
  `fenpei_wendu` int(11) DEFAULT NULL COMMENT '物流温度',
  `fenpei_time` timestamp NULL DEFAULT NULL COMMENT '分配时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='订单分配';

/*Data for the table `huowu_fenpei` */

insert  into `huowu_fenpei`(`id`,`huowu_order_id`,`kuaidiyuan_id`,`huowu_order_fenpei_types`,`fenpei_wendu`,`fenpei_time`,`create_time`) values (51,1,1,2,15,'2023-04-01 17:23:11','2023-04-01 17:23:20'),(52,4,1,2,20,'2023-04-01 17:58:11','2023-04-01 17:58:16');

/*Table structure for table `huowu_order` */

DROP TABLE IF EXISTS `huowu_order`;

CREATE TABLE `huowu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huowu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `huowu_id` int(11) DEFAULT NULL COMMENT '货物',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `huowu_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='货物订单';

/*Data for the table `huowu_order` */

insert  into `huowu_order`(`id`,`huowu_order_uuid_number`,`address_id`,`huowu_id`,`yonghu_id`,`huowu_order_types`,`insert_time`,`create_time`) values (1,'1680340673509',1,13,1,104,'2023-04-01 17:17:54','2023-04-01 17:17:54'),(2,'1680342199830',4,12,1,102,'2023-04-01 17:43:20','2023-04-01 17:43:20'),(3,'1680342211437',1,12,1,102,'2023-04-01 17:43:31','2023-04-01 17:43:31'),(4,'1680343021186',1,13,1,104,'2023-04-01 17:57:01','2023-04-01 17:57:01');

/*Table structure for table `kuaidiyuan` */

DROP TABLE IF EXISTS `kuaidiyuan`;

CREATE TABLE `kuaidiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wangdian_id` int(11) DEFAULT NULL COMMENT '网点',
  `wangdian_photo` varchar(200) DEFAULT NULL COMMENT '网点照片',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `kuaidiyuan_name` varchar(200) DEFAULT NULL COMMENT '快递员姓名 Search111 ',
  `kuaidiyuan_phone` varchar(200) DEFAULT NULL COMMENT '快递员手机号',
  `kuaidiyuan_id_number` varchar(200) DEFAULT NULL COMMENT '快递员身份证号',
  `kuaidiyuan_photo` varchar(200) DEFAULT NULL COMMENT '快递员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `kuaidiyuan_email` varchar(200) DEFAULT NULL COMMENT '快递员邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='快递员';

/*Data for the table `kuaidiyuan` */

insert  into `kuaidiyuan`(`id`,`wangdian_id`,`wangdian_photo`,`username`,`password`,`kuaidiyuan_name`,`kuaidiyuan_phone`,`kuaidiyuan_id_number`,`kuaidiyuan_photo`,`sex_types`,`kuaidiyuan_email`,`create_time`) values (1,1,NULL,'a1','123456','快递员姓名1','17703786901','410224199010102001','upload/kuaidiyuan1.jpg',1,'1@qq.com','2023-04-01 17:11:54'),(2,2,NULL,'a2','123456','快递员姓名2','17703786902','410224199010102002','upload/kuaidiyuan2.jpg',1,'2@qq.com','2023-04-01 17:11:54'),(3,3,NULL,'a3','123456','快递员姓名3','17703786903','410224199010102003','upload/kuaidiyuan3.jpg',2,'3@qq.com','2023-04-01 17:11:54');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,2,'留言标题1','留言内容1','2023-04-01 17:11:54','回复信息1','2023-04-01 17:11:54','2023-04-01 17:11:54'),(2,3,'留言标题2','留言内容2','2023-04-01 17:11:54','回复信息2','2023-04-01 17:11:54','2023-04-01 17:11:54'),(3,2,'留言标题3','留言内容3','2023-04-01 17:11:54','回复信息3','2023-04-01 17:11:54','2023-04-01 17:11:54'),(4,1,'留言标题4','留言内容4','2023-04-01 17:11:54','回复信息4','2023-04-01 17:11:54','2023-04-01 17:11:54'),(5,1,'留言标题5','留言内容5','2023-04-01 17:11:54','回复信息5','2023-04-01 17:11:54','2023-04-01 17:11:54'),(6,1,'留言标题6','留言内容6','2023-04-01 17:11:54','回复信息6','2023-04-01 17:11:54','2023-04-01 17:11:54'),(7,1,'留言标题7','留言内容7','2023-04-01 17:11:54','回复信息7','2023-04-01 17:11:54','2023-04-01 17:11:54'),(8,1,'留言标题8','留言内容8','2023-04-01 17:11:54','回复信息8','2023-04-01 17:11:54','2023-04-01 17:11:54'),(9,3,'留言标题9','留言内容9','2023-04-01 17:11:54','回复信息9','2023-04-01 17:11:54','2023-04-01 17:11:54'),(10,1,'留言标题10','留言内容10','2023-04-01 17:11:54','回复信息10','2023-04-01 17:11:54','2023-04-01 17:11:54'),(11,3,'留言标题11','留言内容11','2023-04-01 17:11:54','回复信息11','2023-04-01 17:11:54','2023-04-01 17:11:54'),(12,2,'留言标题12','留言内容12','2023-04-01 17:11:54','回复信息12','2023-04-01 17:11:54','2023-04-01 17:11:54'),(13,2,'留言标题13','留言内容13','2023-04-01 17:11:54','回复信息13','2023-04-01 17:11:54','2023-04-01 17:11:54'),(14,1,'留言标题14','留言内容14','2023-04-01 17:11:54','回复信息14','2023-04-01 17:11:54','2023-04-01 17:11:54'),(15,1,'意见','反馈','2023-04-01 17:43:49',NULL,NULL,'2023-04-01 17:43:49'),(16,1,'大撒','161265','2023-04-01 17:57:13','5463546','2023-04-01 17:58:23','2023-04-01 17:57:13');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','ur4puxyvu9ekolyvv0wsk1w58sps9cnn','2023-04-01 17:13:16','2023-04-01 18:56:40'),(2,1,'admin','users','管理员','58fd7nefjlh6tx1mrkf2dnzbzdovavou','2023-04-01 17:15:51','2023-04-01 19:03:53'),(3,1,'a1','kuaidiyuan','快递员','mx77k1qmpjzlet9153nl7p3bnfkcncgj','2023-04-01 17:23:27','2023-04-01 18:58:50');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-01 17:11:33');

/*Table structure for table `wangdian` */

DROP TABLE IF EXISTS `wangdian`;

CREATE TABLE `wangdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wangdian_name` varchar(200) DEFAULT NULL COMMENT '网点名称  Search111 ',
  `wangdain_photo` varchar(200) DEFAULT NULL COMMENT '网点照片',
  `lianxiren_name` varchar(200) DEFAULT NULL COMMENT '联系人姓名 Search111 ',
  `lianxiren_phone` varchar(200) DEFAULT NULL COMMENT '联系人手机号',
  `lianxiren_address` varchar(200) DEFAULT NULL COMMENT '地址',
  `wangdian_types` int(11) DEFAULT NULL COMMENT '网点类型',
  `wangdian_content` longtext COMMENT '网点详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='网点信息';

/*Data for the table `wangdian` */

insert  into `wangdian`(`id`,`wangdian_name`,`wangdain_photo`,`lianxiren_name`,`lianxiren_phone`,`lianxiren_address`,`wangdian_types`,`wangdian_content`,`create_time`) values (1,'网点名称1','upload/huowu1.jpg','联系人姓名1','17703786901','地址1',1,'网点详情1','2023-04-01 17:11:54'),(2,'网点名称2','upload/huowu2.jpg','联系人姓名2','17703786902','地址2',1,'网点详情2','2023-04-01 17:11:54'),(3,'网点名称3','upload/huowu3.jpg','联系人姓名3','17703786903','地址3',1,'网点详情3','2023-04-01 17:11:54'),(4,'网点名称4','upload/huowu4.jpg','联系人姓名4','17703786904','地址4',1,'网点详情4','2023-04-01 17:11:54'),(5,'网点名称5','upload/huowu5.jpg','联系人姓名5','17703786905','地址5',2,'网点详情5','2023-04-01 17:11:54'),(6,'网点名称6','upload/huowu6.jpg','联系人姓名6','17703786906','地址6',1,'网点详情6','2023-04-01 17:11:54'),(7,'网点名称7','upload/huowu7.jpg','联系人姓名7','17703786907','地址7',1,'网点详情7','2023-04-01 17:11:54'),(8,'网点名称8','upload/huowu8.jpg','联系人姓名8','17703786908','地址8',2,'网点详情8','2023-04-01 17:11:54'),(9,'网点名称9','upload/huowu9.jpg','联系人姓名9','17703786909','地址9',1,'网点详情9','2023-04-01 17:11:54'),(10,'网点名称10','upload/huowu10.jpg','联系人姓名10','17703786910','地址10',2,'网点详情10','2023-04-01 17:11:54'),(11,'网点名称11','upload/huowu11.jpg','联系人姓名11','17703786911','地址11',2,'网点详情11','2023-04-01 17:11:54'),(12,'网点名称12','upload/huowu12.jpg','联系人姓名12','17703786912','地址12',2,'网点详情12','2023-04-01 17:11:54'),(13,'网点名称13','upload/huowu13.jpg','联系人姓名13','17703786913','地址13',1,'网点详情13','2023-04-01 17:11:54'),(14,'网点名称14','upload/huowu14.jpg','联系人姓名14','17703786914','地址14',1,'网点详情14','2023-04-01 17:11:54');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-04-01 17:11:54'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-04-01 17:11:54'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-04-01 17:11:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
