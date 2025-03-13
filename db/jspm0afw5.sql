-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm0afw5
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm0afw5/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm0afw5/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm0afw5/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dudao`
--

DROP TABLE IF EXISTS `dudao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dudao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dudaozhanghao` varchar(200) NOT NULL COMMENT '督导账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dudaoxingming` varchar(200) NOT NULL COMMENT '督导姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dudaozhanghao` (`dudaozhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614415891335 DEFAULT CHARSET=utf8 COMMENT='督导';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dudao`
--

LOCK TABLES `dudao` WRITE;
/*!40000 ALTER TABLE `dudao` DISABLE KEYS */;
INSERT INTO `dudao` VALUES (51,'2021-02-27 08:45:45','督导1','123456','督导姓名1','男','http://localhost:8080/jspm0afw5/upload/dudao_touxiang1.jpg','学院1','13823888881'),(52,'2021-02-27 08:45:45','督导2','123456','督导姓名2','男','http://localhost:8080/jspm0afw5/upload/dudao_touxiang2.jpg','学院2','13823888882'),(53,'2021-02-27 08:45:45','督导3','123456','督导姓名3','男','http://localhost:8080/jspm0afw5/upload/dudao_touxiang3.jpg','学院3','13823888883'),(54,'2021-02-27 08:45:45','督导4','123456','督导姓名4','男','http://localhost:8080/jspm0afw5/upload/dudao_touxiang4.jpg','学院4','13823888884'),(55,'2021-02-27 08:45:45','督导5','123456','督导姓名5','男','http://localhost:8080/jspm0afw5/upload/dudao_touxiang5.jpg','学院5','13823888885'),(56,'2021-02-27 08:45:45','督导6','123456','督导姓名6','男','http://localhost:8080/jspm0afw5/upload/dudao_touxiang6.jpg','学院6','13823888886'),(1614415891334,'2021-02-27 08:51:31','2','2','张悦','女','http://localhost:8080/jspm0afw5/upload/1614415885266.jpg','计算机学院','12345645645');
/*!40000 ALTER TABLE `dudao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dudaopingjiao`
--

DROP TABLE IF EXISTS `dudaopingjiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dudaopingjiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `renjiaokemu` varchar(200) DEFAULT NULL COMMENT '任教科目',
  `pingfen` varchar(200) DEFAULT NULL COMMENT '评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `dudaozhanghao` varchar(200) DEFAULT NULL COMMENT '督导账号',
  `dudaoxingming` varchar(200) DEFAULT NULL COMMENT '督导姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614416084897 DEFAULT CHARSET=utf8 COMMENT='督导评教';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dudaopingjiao`
--

LOCK TABLES `dudaopingjiao` WRITE;
/*!40000 ALTER TABLE `dudaopingjiao` DISABLE KEYS */;
INSERT INTO `dudaopingjiao` VALUES (81,'2021-02-27 08:45:45','教师工号1','教师姓名1','学院1','职称1','任教科目1','1','评价内容1','2021-02-27','督导账号1','督导姓名1'),(82,'2021-02-27 08:45:45','教师工号2','教师姓名2','学院2','职称2','任教科目2','1','评价内容2','2021-02-27','督导账号2','督导姓名2'),(83,'2021-02-27 08:45:45','教师工号3','教师姓名3','学院3','职称3','任教科目3','1','评价内容3','2021-02-27','督导账号3','督导姓名3'),(84,'2021-02-27 08:45:45','教师工号4','教师姓名4','学院4','职称4','任教科目4','1','评价内容4','2021-02-27','督导账号4','督导姓名4'),(85,'2021-02-27 08:45:45','教师工号5','教师姓名5','学院5','职称5','任教科目5','1','评价内容5','2021-02-27','督导账号5','督导姓名5'),(86,'2021-02-27 08:45:45','教师工号6','教师姓名6','学院6','职称6','任教科目6','1','评价内容6','2021-02-27','督导账号6','督导姓名6'),(1614416084896,'2021-02-27 08:54:44','1','陈一','计算机学院','中级教师','','9','是一位优秀的教师，深得学生的喜爱','2021-02-27','2','张悦');
/*!40000 ALTER TABLE `dudaopingjiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614415817113 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (11,'2021-02-27 08:45:45','公告标题1','http://localhost:8080/jspm0afw5/upload/1614415660865.jpg','内容1\r\n','2021-02-27'),(12,'2021-02-27 08:45:45','公告标题2','http://localhost:8080/jspm0afw5/upload/1614415667351.jpg','内容2\r\n','2021-02-27'),(13,'2021-02-27 08:45:45','公告标题3','http://localhost:8080/jspm0afw5/upload/1614415675388.jpg','内容3\r\n','2021-02-27'),(14,'2021-02-27 08:45:45','公告标题4','http://localhost:8080/jspm0afw5/upload/1614415681627.jpg','内容4\r\n','2021-02-27'),(15,'2021-02-27 08:45:45','公告标题5','http://localhost:8080/jspm0afw5/upload/1614415689429.jpg','内容5\r\n','2021-02-27'),(16,'2021-02-27 08:45:45','公告标题6','http://localhost:8080/jspm0afw5/upload/1614415705299.png','内容6\r\n','2021-02-27'),(1614415817112,'2021-02-27 08:50:16','关于评教通知','http://localhost:8080/jspm0afw5/upload/1614415748777.jpg','关于每个学院评教开展\r\n<img src=\"http://localhost:8080/jspm0afw5/upload/1614415815246.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm0afw5/upload/1614415815246.jpg\">\r\n','2021-02-27');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiaoshiyouxiang` varchar(200) DEFAULT NULL COMMENT '教师邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614415866367 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (41,'2021-02-27 08:45:45','教师1','123456','教师姓名1','男','http://localhost:8080/jspm0afw5/upload/jiaoshi_zhaopian1.jpg','职称1','学院1','13823888881','773890001@qq.com'),(42,'2021-02-27 08:45:45','教师2','123456','教师姓名2','男','http://localhost:8080/jspm0afw5/upload/jiaoshi_zhaopian2.jpg','职称2','学院2','13823888882','773890002@qq.com'),(43,'2021-02-27 08:45:45','教师3','123456','教师姓名3','男','http://localhost:8080/jspm0afw5/upload/jiaoshi_zhaopian3.jpg','职称3','学院3','13823888883','773890003@qq.com'),(44,'2021-02-27 08:45:45','教师4','123456','教师姓名4','男','http://localhost:8080/jspm0afw5/upload/jiaoshi_zhaopian4.jpg','职称4','学院4','13823888884','773890004@qq.com'),(45,'2021-02-27 08:45:45','教师5','123456','教师姓名5','男','http://localhost:8080/jspm0afw5/upload/jiaoshi_zhaopian5.jpg','职称5','学院5','13823888885','773890005@qq.com'),(46,'2021-02-27 08:45:45','教师6','123456','教师姓名6','男','http://localhost:8080/jspm0afw5/upload/jiaoshi_zhaopian6.jpg','职称6','学院6','13823888886','773890006@qq.com'),(1614415866366,'2021-02-27 08:51:06','1','1','陈一','女','http://localhost:8080/jspm0afw5/upload/1614415852477.jpg','中级教师','计算机学院','12345678978','123@qq.com');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshixinxi`
--

DROP TABLE IF EXISTS `jiaoshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `renjiaokecheng` varchar(200) DEFAULT NULL COMMENT '任教课程',
  `gerenjianjie` longtext COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614415946711 DEFAULT CHARSET=utf8 COMMENT='教师信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshixinxi`
--

LOCK TABLES `jiaoshixinxi` WRITE;
/*!40000 ALTER TABLE `jiaoshixinxi` DISABLE KEYS */;
INSERT INTO `jiaoshixinxi` VALUES (61,'2021-02-27 08:45:45','教师工号1','教师姓名1','学院1','http://localhost:8080/jspm0afw5/upload/jiaoshixinxi_zhaopian1.jpg','职称1','任教课程1','个人简介1'),(62,'2021-02-27 08:45:45','教师工号2','教师姓名2','学院2','http://localhost:8080/jspm0afw5/upload/jiaoshixinxi_zhaopian2.jpg','职称2','任教课程2','个人简介2'),(63,'2021-02-27 08:45:45','教师工号3','教师姓名3','学院3','http://localhost:8080/jspm0afw5/upload/jiaoshixinxi_zhaopian3.jpg','职称3','任教课程3','个人简介3'),(64,'2021-02-27 08:45:45','教师工号4','教师姓名4','学院4','http://localhost:8080/jspm0afw5/upload/jiaoshixinxi_zhaopian4.jpg','职称4','任教课程4','个人简介4'),(65,'2021-02-27 08:45:45','教师工号5','教师姓名5','学院5','http://localhost:8080/jspm0afw5/upload/jiaoshixinxi_zhaopian5.jpg','职称5','任教课程5','个人简介5'),(66,'2021-02-27 08:45:45','教师工号6','教师姓名6','学院6','http://localhost:8080/jspm0afw5/upload/jiaoshixinxi_zhaopian6.jpg','职称6','任教课程6','个人简介6'),(1614415946710,'2021-02-27 08:52:25','1','陈一','计算机学院','http://localhost:8080/jspm0afw5/upload/1614415922344.jpg','中级教师','高数','从事教育工作十余年，有丰富的教学经验');
/*!40000 ALTER TABLE `jiaoshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,41,'教师1','jiaoshi','教师','l6c82dreaz3qol5zkh5acz3aqcu7lgwv','2021-02-27 08:46:56','2021-02-27 09:46:56'),(2,1,'abo','users','管理员','n95u1aeahiykcivy57qih0opi5pvwkq9','2021-02-27 08:47:28','2021-02-27 09:55:11'),(3,1614415866366,'1','jiaoshi','教师','cwzw366vgytm5zfw2bqetp3ie8joe6iw','2021-02-27 08:51:44','2021-02-27 09:54:58'),(4,1614415979638,'4','xuesheng','学生','p12hatw03lqf6xkiutc3hx0cmvt2efnk','2021-02-27 08:53:08','2021-02-27 09:53:09'),(5,1614415891334,'2','dudao','督导','x6pxx2nu4txd3gghbtag2c17chmyfn2k','2021-02-27 08:54:06','2021-02-27 09:54:07');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-27 08:45:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614415979639 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (31,'2021-02-27 08:45:45','学生1','123456','学生姓名1','男','http://localhost:8080/jspm0afw5/upload/xuesheng_touxiang1.jpg','院系1','13823888881','773890001@qq.com'),(32,'2021-02-27 08:45:45','学生2','123456','学生姓名2','男','http://localhost:8080/jspm0afw5/upload/xuesheng_touxiang2.jpg','院系2','13823888882','773890002@qq.com'),(33,'2021-02-27 08:45:45','学生3','123456','学生姓名3','男','http://localhost:8080/jspm0afw5/upload/xuesheng_touxiang3.jpg','院系3','13823888883','773890003@qq.com'),(34,'2021-02-27 08:45:45','学生4','123456','学生姓名4','男','http://localhost:8080/jspm0afw5/upload/xuesheng_touxiang4.jpg','院系4','13823888884','773890004@qq.com'),(35,'2021-02-27 08:45:45','学生5','123456','学生姓名5','男','http://localhost:8080/jspm0afw5/upload/xuesheng_touxiang5.jpg','院系5','13823888885','773890005@qq.com'),(36,'2021-02-27 08:45:45','学生6','123456','学生姓名6','男','http://localhost:8080/jspm0afw5/upload/xuesheng_touxiang6.jpg','院系6','13823888886','773890006@qq.com'),(1614415979638,'2021-02-27 08:52:59','4','4','王明','男','http://localhost:8080/jspm0afw5/upload/1614415998022.jpg','计算机学院','13812312312','789@qq.com');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueshengpingjiao`
--

DROP TABLE IF EXISTS `xueshengpingjiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueshengpingjiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `renjiaokecheng` varchar(200) DEFAULT NULL COMMENT '任教课程',
  `pingfen` varchar(200) NOT NULL COMMENT '评分',
  `pingjianeirong` longtext NOT NULL COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614416035254 DEFAULT CHARSET=utf8 COMMENT='学生评教';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueshengpingjiao`
--

LOCK TABLES `xueshengpingjiao` WRITE;
/*!40000 ALTER TABLE `xueshengpingjiao` DISABLE KEYS */;
INSERT INTO `xueshengpingjiao` VALUES (71,'2021-02-27 08:45:45','教师工号1','教师姓名1','学院1','职称1','任教课程1','1','评价内容1','2021-02-27','学号1','学生姓名1'),(72,'2021-02-27 08:45:45','教师工号2','教师姓名2','学院2','职称2','任教课程2','1','评价内容2','2021-02-27','学号2','学生姓名2'),(73,'2021-02-27 08:45:45','教师工号3','教师姓名3','学院3','职称3','任教课程3','1','评价内容3','2021-02-27','学号3','学生姓名3'),(74,'2021-02-27 08:45:45','教师工号4','教师姓名4','学院4','职称4','任教课程4','1','评价内容4','2021-02-27','学号4','学生姓名4'),(75,'2021-02-27 08:45:45','教师工号5','教师姓名5','学院5','职称5','任教课程5','1','评价内容5','2021-02-27','学号5','学生姓名5'),(76,'2021-02-27 08:45:45','教师工号6','教师姓名6','学院6','职称6','任教课程6','1','评价内容6','2021-02-27','学号6','学生姓名6'),(1614416035253,'2021-02-27 08:53:54','1','陈一','计算机学院','中级教师','高数','9','态度认真，教学方法新颖','2021-02-27','4','王明');
/*!40000 ALTER TABLE `xueshengpingjiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xueyuan`
--

DROP TABLE IF EXISTS `xueyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xueyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuan` varchar(200) NOT NULL COMMENT '学院',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueyuan` (`xueyuan`)
) ENGINE=InnoDB AUTO_INCREMENT=1614415827360 DEFAULT CHARSET=utf8 COMMENT='学院';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xueyuan`
--

LOCK TABLES `xueyuan` WRITE;
/*!40000 ALTER TABLE `xueyuan` DISABLE KEYS */;
INSERT INTO `xueyuan` VALUES (21,'2021-02-27 08:45:45','学院1'),(22,'2021-02-27 08:45:45','学院2'),(23,'2021-02-27 08:45:45','学院3'),(24,'2021-02-27 08:45:45','学院4'),(25,'2021-02-27 08:45:45','学院5'),(26,'2021-02-27 08:45:45','学院6'),(1614415827359,'2021-02-27 08:50:27','计算机学院');
/*!40000 ALTER TABLE `xueyuan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-27 21:54:39
