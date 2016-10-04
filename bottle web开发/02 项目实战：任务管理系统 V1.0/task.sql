-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: task
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Current Database: `task`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `task` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `task`;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0' COMMENT '部门名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100006 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (100002,'è¿ç»´éƒ¨'),(100003,'æµ‹è¯•éƒ¨'),(100004,'åŸºç¡€ç ”å‘éƒ¨'),(100005,'äº§å“ç ”å‘éƒ¨');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目ID',
  `name` varchar(50) NOT NULL DEFAULT '0' COMMENT '项目名',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '项目创建人ID',
  `itype` varchar(50) NOT NULL DEFAULT '0' COMMENT '项目类型',
  `adddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '项目创建时间',
  `startdate` date DEFAULT NULL COMMENT '项目开始执行时间',
  `enddate` date DEFAULT NULL COMMENT '项目完成结束时间',
  `content` text COMMENT '项目描述',
  `status` tinyint(4) DEFAULT '0' COMMENT '项目状态（等待、开始，完成）',
  `del_userid` int(11) NOT NULL COMMENT '删除项目的用户ID',
  `del_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '项目删除状态（0=删除，1=正常）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='项目名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (2,'4234234',18,'åŸºç¡€ç ”å‘','2015-06-02 12:30:47','2015-06-11','2015-06-25','<p>\r\n	é¡¹ç›®æè¿°ï¼š\r\n</p>\r\n<p>\r\n	<h2 style=\"margin-left:36.0000pt;text-indent:-36.0000pt;\">\r\n		1.1.1&nbsp;ä¸ªäººä¿¡æ¯\r\n	</h2>\r\n	<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n		â€œ<span>æ•™å¸ˆ</span><span>â€</span><span>æ˜¯ç³»ç»Ÿå†…ç½®çš„ç”¨æˆ·ï¼Œåœ¨ç³»ç»Ÿéƒ¨ç½²æ—¶äº§ç”Ÿã€‚å…¶ä»–ç”¨æˆ·éƒ½éœ€è¦åœ¨å¡«å†™æ³¨å†Œä¿¡æ¯åŽï¼Œç”±ç³»ç»Ÿç®¡ç†å‘˜å®¡æ‰¹è¿‡æ‰æ˜¯çœŸæ­£çš„ç”¨æˆ·ï¼ˆæ³¨å†Œç”¨æˆ·ï¼‰ã€‚</span>\r\n	</p>\r\n	<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n		ç³»ç»Ÿéœ€è¦ä¸ºæ‰€æœ‰çš„æ³¨å†Œç”¨æˆ·ï¼ˆåŒ…æ‹¬<span>â€œ</span><span>æ•™å¸ˆ</span><span>â€</span><span>è®°å½•ä»¥ä¸‹ä¿¡æ¯ï¼šç”¨æˆ·</span><span>ID</span><span>ï¼Œå¯†ç ï¼Œå§“åï¼ˆéœ€è¦åŒé‡è¾“å…¥éªŒè¯ï¼‰ï¼Œç”µå­é‚®ä»¶åœ°å€ï¼ˆéœ€è¦åˆæ³•æ€§éªŒè¯ï¼‰ï¼Œå…´è¶£çˆ±å¥½ï¼Œå¤´åƒï¼Œç­¾åæ¡£ã€‚ä»¥ä¸Šä¿¡æ¯é™¤ç”¨æˆ·</span><span>ID</span><span>å¤–ï¼Œæ³¨å†ŒåŽå¯¹å…¶ä»–ç”¨æˆ·ä¸å¯è§ã€‚ä»¥ä¸Šä¿¡æ¯é™¤å…´è¶£çˆ±å¥½ï¼Œå¤´åƒï¼Œç­¾åæ¡£ä¹‹å¤–ï¼Œéƒ½ä¸ºå¿…å¡«ä¿¡æ¯ã€‚</span>\r\n	</p>\r\n	<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n		ç”¨æˆ·ç™»å½•åŽå¯ä»¥æŸ¥æ‰¾å…¶ä»–ç”¨æˆ·çš„åŸºæœ¬ä¿¡æ¯ï¼ˆå³é™¤å¯†ç å¤–çš„å…¨éƒ¨ä¿¡æ¯ï¼ŒåŒ…æ‹¬ç”¨æˆ·çš„èº«ä»½ï¼‰ã€‚\r\n	</p>\r\n	<h2 style=\"margin-left:36.0000pt;text-indent:-36.0000pt;\">\r\n		1.1.2&nbsp;æƒé™éªŒè¯\r\n	</h2>\r\n	<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n		ä½¿ç”¨<span>â€œ</span><span>ç”¨æˆ·åï¼å¯†ç </span><span>â€</span><span>çš„æ–¹å¼å¯¹æ‰€æœ‰ç”¨æˆ·è¿›è¡ŒéªŒè¯ã€‚å‡ºäºŽç³»ç»Ÿå®‰å…¨çš„è€ƒè™‘ï¼Œå¯†ç ä¸å¯ä»¥æ˜Žæ–‡å­˜æ”¾ï¼Œä¸€å¾‹éœ€è¦æ•£åˆ—å¤„ç†ã€‚åªæœ‰å½“ç”¨æˆ·ä½¿ç”¨ç”¨æˆ·åå’Œå¯†ç ç™»å½•ä»¥åŽï¼Œæ‰èƒ½è¿›è¡Œç›¸å…³çš„æƒé™æ“ä½œã€‚</span>\r\n	</p>\r\n	<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n		â€œ<span>å­¦ç”Ÿ</span><span>â€</span><span>æ³¨å†ŒåŽï¼Œ</span><span>â€œ</span><span>æ•™å¸ˆ</span><span>â€</span><span>å’Œ</span><span>â€œ</span><span>åŠ©æ•™</span><span>â€</span><span>å¯ä»¥æŸ¥çœ‹å¾…æ‰¹å‡†å­¦ç”Ÿåˆ—è¡¨ï¼Œå¹¶å¯¹ç¬¦åˆæ¡ä»¶çš„å­¦ç”Ÿè¿›è¡Œå®¡æ‰¹ï¼›</span><span>â€œ</span><span>æ•™å¸ˆ</span><span>â€</span><span>è¿˜å¯ä»¥çœ‹åˆ°å¾…å®¡æ‰¹çš„</span><span>â€œ</span><span>åŠ©æ•™</span><span>â€</span><span>åˆ—è¡¨ã€‚</span><span>â€œ</span><span>å­¦ç”Ÿ</span><span>â€</span><span>æˆ–</span><span>â€œ</span><span>åŠ©æ•™</span><span>â€</span><span>è¢«å®¡æ‰¹é€šè¿‡åŽï¼Œç³»ç»Ÿå°†å‘å…¶æ³¨å†Œ</span><span>email</span><span>ä¸­å‘é€ä¸€å°æ¬¢è¿Žé‚®ä»¶ã€‚</span>\r\n	</p>\r\n	<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n		â€œ<span>åŠ©æ•™</span><span>â€</span><span>å¯ä»¥å°ç¦å’Œè§£å°å­¦ç”Ÿçš„ä½¿ç”¨æƒé™ï¼Œ</span><span>â€œ</span><span>æ•™å¸ˆ</span><span>â€</span><span>å¯ä»¥å°ç¦å’Œè§£å°</span><span>â€œ</span><span>åŠ©æ•™</span><span>â€</span><span>å’Œ</span><span>â€œ</span><span>å­¦ç”Ÿ</span><span>â€</span><span>çš„ä½¿ç”¨æƒé™ã€‚è¢«å°ç¦çŠ¶æ€ä¸‹çš„ç”¨æˆ·åœ¨ç™»å½•åŽï¼Œå°†å¾—åˆ°ä¸€ä¸ªè¢«å°ç¦çš„æç¤ºï¼Œä¸èƒ½è¿›è¡Œä»»ä½•æ“ä½œã€‚</span>\r\n	</p>\r\n	<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n		åœ¨æ³¨å†Œå’Œç™»å½•è¿‡ç¨‹ä¸­ï¼Œé‡‡ç”¨<span>Ajax</span><span>ï¼Œæç¤ºè¯¥ç”¨æˆ·åæ˜¯å¦å¯ç”¨ã€‚</span>\r\n	</p>\r\n</p>',0,18,0),(3,'4234234',18,'åŸºç¡€ç ”å‘','2015-06-02 12:31:39','2015-06-11','2015-06-25','é¡¹ç›®æè¿°ï¼š234234234234234234234',0,18,1),(4,'åŠ³è€Œæ— åŠŸåŠ³è€Œæ— åŠŸ ',7,'äº§å“ç ”å‘','2015-06-02 12:32:19','2015-06-02','2015-06-19','<h2 style=\"margin-left:36.0000pt;text-indent:-36.0000pt;\">\r\n	1.1.1&nbsp;ä¸ªäººä¿¡æ¯\r\n</h2>\r\n<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n	â€œ<span>æ•™å¸ˆ</span><span>â€</span><span>æ˜¯ç³»ç»Ÿå†…ç½®çš„ç”¨æˆ·ï¼Œåœ¨ç³»ç»Ÿéƒ¨ç½²æ—¶äº§ç”Ÿã€‚å…¶ä»–ç”¨æˆ·éƒ½éœ€è¦åœ¨å¡«å†™æ³¨å†Œä¿¡æ¯åŽï¼Œç”±ç³»ç»Ÿç®¡ç†å‘˜å®¡æ‰¹è¿‡æ‰æ˜¯çœŸæ­£çš„ç”¨æˆ·ï¼ˆæ³¨å†Œç”¨æˆ·ï¼‰ã€‚</span>\r\n</p>\r\n<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n	ç³»ç»Ÿéœ€è¦ä¸ºæ‰€æœ‰çš„æ³¨å†Œç”¨æˆ·ï¼ˆåŒ…æ‹¬<span>â€œ</span><span>æ•™å¸ˆ</span><span>â€</span><span>è®°å½•ä»¥ä¸‹ä¿¡æ¯ï¼šç”¨æˆ·</span><span>ID</span><span>ï¼Œå¯†ç ï¼Œå§“åï¼ˆéœ€è¦åŒé‡è¾“å…¥éªŒè¯ï¼‰ï¼Œç”µå­é‚®ä»¶åœ°å€ï¼ˆéœ€è¦åˆæ³•æ€§éªŒè¯ï¼‰ï¼Œå…´è¶£çˆ±å¥½ï¼Œå¤´åƒï¼Œç­¾åæ¡£ã€‚ä»¥ä¸Šä¿¡æ¯é™¤ç”¨æˆ·</span><span>ID</span><span>å¤–ï¼Œæ³¨å†ŒåŽå¯¹å…¶ä»–ç”¨æˆ·ä¸å¯è§ã€‚ä»¥ä¸Šä¿¡æ¯é™¤å…´è¶£çˆ±å¥½ï¼Œå¤´åƒï¼Œç­¾åæ¡£ä¹‹å¤–ï¼Œéƒ½ä¸ºå¿…å¡«ä¿¡æ¯ã€‚</span>\r\n</p>\r\n<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n	ç”¨æˆ·ç™»å½•åŽå¯ä»¥æŸ¥æ‰¾å…¶ä»–ç”¨æˆ·çš„åŸºæœ¬ä¿¡æ¯ï¼ˆå³é™¤å¯†ç å¤–çš„å…¨éƒ¨ä¿¡æ¯ï¼ŒåŒ…æ‹¬ç”¨æˆ·çš„èº«ä»½ï¼‰ã€‚\r\n</p>\r\n<h2 style=\"margin-left:36.0000pt;text-indent:-36.0000pt;\">\r\n	1.1.2&nbsp;æƒé™éªŒè¯\r\n</h2>\r\n<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n	ä½¿ç”¨<span>â€œ</span><span>ç”¨æˆ·åï¼å¯†ç </span><span>â€</span><span>çš„æ–¹å¼å¯¹æ‰€æœ‰ç”¨æˆ·è¿›è¡ŒéªŒè¯ã€‚å‡ºäºŽç³»ç»Ÿå®‰å…¨çš„è€ƒè™‘ï¼Œå¯†ç ä¸å¯ä»¥æ˜Žæ–‡å­˜æ”¾ï¼Œä¸€å¾‹éœ€è¦æ•£åˆ—å¤„ç†ã€‚åªæœ‰å½“ç”¨æˆ·ä½¿ç”¨ç”¨æˆ·åå’Œå¯†ç ç™»å½•ä»¥åŽï¼Œæ‰èƒ½è¿›è¡Œç›¸å…³çš„æƒé™æ“ä½œã€‚</span>\r\n</p>\r\n<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n	â€œ<span>å­¦ç”Ÿ</span><span>â€</span><span>æ³¨å†ŒåŽï¼Œ</span><span>â€œ</span><span>æ•™å¸ˆ</span><span>â€</span><span>å’Œ</span><span>â€œ</span><span>åŠ©æ•™</span><span>â€</span><span>å¯ä»¥æŸ¥çœ‹å¾…æ‰¹å‡†å­¦ç”Ÿåˆ—è¡¨ï¼Œå¹¶å¯¹ç¬¦åˆæ¡ä»¶çš„å­¦ç”Ÿè¿›è¡Œå®¡æ‰¹ï¼›</span><span>â€œ</span><span>æ•™å¸ˆ</span><span>â€</span><span>è¿˜å¯ä»¥çœ‹åˆ°å¾…å®¡æ‰¹çš„</span><span>â€œ</span><span>åŠ©æ•™</span><span>â€</span><span>åˆ—è¡¨ã€‚</span><span>â€œ</span><span>å­¦ç”Ÿ</span><span>â€</span><span>æˆ–</span><span>â€œ</span><span>åŠ©æ•™</span><span>â€</span><span>è¢«å®¡æ‰¹é€šè¿‡åŽï¼Œç³»ç»Ÿå°†å‘å…¶æ³¨å†Œ</span><span>email</span><span>ä¸­å‘é€ä¸€å°æ¬¢è¿Žé‚®ä»¶ã€‚</span>\r\n</p>\r\n<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n	â€œ<span>åŠ©æ•™</span><span>â€</span><span>å¯ä»¥å°ç¦å’Œè§£å°å­¦ç”Ÿçš„ä½¿ç”¨æƒé™ï¼Œ</span><span>â€œ</span><span>æ•™å¸ˆ</span><span>â€</span><span>å¯ä»¥å°ç¦å’Œè§£å°</span><span>â€œ</span><span>åŠ©æ•™</span><span>â€</span><span>å’Œ</span><span>â€œ</span><span>å­¦ç”Ÿ</span><span>â€</span><span>çš„ä½¿ç”¨æƒé™ã€‚è¢«å°ç¦çŠ¶æ€ä¸‹çš„ç”¨æˆ·åœ¨ç™»å½•åŽï¼Œå°†å¾—åˆ°ä¸€ä¸ªè¢«å°ç¦çš„æç¤ºï¼Œä¸èƒ½è¿›è¡Œä»»ä½•æ“ä½œã€‚</span>\r\n</p>\r\n<p class=\"MsoBodyTextFirstIndent\" style=\"margin-left:21.0000pt;text-indent:21.0000pt;\">\r\n	åœ¨æ³¨å†Œå’Œç™»å½•è¿‡ç¨‹ä¸­ï¼Œé‡‡ç”¨<span>Ajax</span><span>ï¼Œæç¤ºè¯¥ç”¨æˆ·åæ˜¯å¦å¯ç”¨ã€‚</span>\r\n</p>',0,18,1),(5,'è¿ç»´å¼€å‘ç³»ç»Ÿ',7,'è¿ç»´','2015-06-03 02:54:38','2015-06-04','2015-06-12','<p>\r\n	é¡¹ç›®æè¿°ï¼šå¼€å‘ä¸€å¥—è·Ÿè¿ç»´ç›¸å…³çš„ç³»ç»Ÿï¼ŒåŒ…æ‹¬çŽ¯å¢ƒå¸ƒç½®ï¼Œä»»åŠ¡ç®¡ç†ï¼Œæ‰¹é‡æ‰§è¡Œï¼ŒCMDBï¼Œç›‘æŽ§ç³»ç»Ÿï¼Œç­‰ç­‰\r\n</p>\r\n<p>\r\n	å¾ˆå¥½çš„ä¸œè¥¿\r\n</p>\r\n<p>\r\n	è¦å¥½å¥½ç”¨\r\n</p>',0,18,1),(6,'åŸŽç ç åŸŽåŸŽéœ‡',18,'åŸºç¡€ç ”å‘','2015-06-12 09:38:25','2015-06-17','2015-06-19','é¡¹ç›®æè¿°ï¼šè½½å¥”éœ‡å¤ºå¤ºåœ¨åœ¨',0,0,1),(7,'52345435',18,'è¿ç»´','2015-06-12 09:43:15','2015-06-12','2015-06-12','é¡¹ç›®æè¿°ï¼š',0,0,1),(8,'3464356',18,'è¿ç»´','2015-06-12 09:43:41','2015-06-12','2015-06-13','é¡¹ç›®æè¿°ï¼š45643564564563456',0,0,1),(9,'12313123',18,'äº§å“ç ”å‘','2015-06-12 10:05:13','2015-06-09','2015-06-19','é¡¹ç›®æè¿°ï¼š123123123123123',0,0,1);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_reply`
--

DROP TABLE IF EXISTS `item_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复id',
  `userid` int(11) NOT NULL COMMENT '回复人id',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '回复内容',
  `editdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回复时间',
  `taskid` int(11) NOT NULL COMMENT '所属任务表id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='任务回复表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_reply`
--

LOCK TABLES `item_reply` WRITE;
/*!40000 ALTER TABLE `item_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `inputid` int(11) DEFAULT NULL COMMENT '任务发起人id',
  `inputdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '任务发起时间',
  `userid` int(11) NOT NULL COMMENT '任务责任人用户（user）表id',
  `depid` int(11) NOT NULL COMMENT '任务责任人部门（department）表id',
  `assistid` int(11) NOT NULL COMMENT '任务协助人id',
  `assdepid` int(11) NOT NULL COMMENT '任务协助人部门（department）表id',
  `subject` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务主题',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '任务内容',
  `status` tinyint(3) unsigned zerofill DEFAULT '000' COMMENT '任务接收状态（0=末接、1=开始、2=结束）',
  `startdate` datetime NOT NULL COMMENT '任务开始时间（发单人规定任务开始时间）',
  `enddate` datetime NOT NULL COMMENT '任务结束时间（发单人规定任务结束时间）',
  `begindate` datetime DEFAULT NULL COMMENT '任务接单时间（责任人任务接单时间）',
  `finishdate` datetime DEFAULT NULL COMMENT '任务完成时间（责任人提交任务时间）',
  `evaluate` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '发起人对任务评估',
  `priority` tinyint(4) NOT NULL COMMENT '优先级 1-最低 2-普通 3-紧急',
  `itemid` int(11) unsigned zerofill DEFAULT NULL COMMENT '关联项目的ID',
  `departmentid` int(11) NOT NULL COMMENT '关联的部门ID,即任务所属的部门',
  `del_userid` int(11) DEFAULT NULL COMMENT '删除任务人的用户ID',
  `del_status` int(11) NOT NULL DEFAULT '1' COMMENT '任务删除状态（0=删除，1=正常）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,6,'2015-05-25 12:11:14',18,-2,6,-2,'å¥½çš„','v b b&nbsp;',002,'2015-05-27 00:00:00','2015-05-30 00:00:00','2015-06-05 00:00:00','2015-06-10 21:06:56','很好',1,00000000002,100004,18,1),(2,8,'2015-06-08 08:17:29',6,0,7,0,'adfadf','sdfadfadfadfadfadf',000,'2014-06-05 00:00:00','2014-06-15 00:00:00','2015-06-05 00:00:00','2015-06-11 00:00:00',NULL,1,00000000003,100004,18,1),(3,7,'2015-06-08 08:34:53',18,-2,5,-2,'adfadf','ä»»åŠ¡æè¿°ï¼šadfadfadfa',000,'2015-06-05 00:00:00','2015-06-20 00:00:00','2015-06-05 00:00:00','2015-06-11 00:00:00',NULL,1,00000000002,100002,18,1),(4,6,'2015-06-08 08:59:34',18,-2,-2,100003,'æœåŠ¡å™¨éƒ¨ç½²LAMPçŽ¯å¢ƒ','ä»»åŠ¡æè¿°ï¼š',002,'2015-06-05 00:00:00','2015-06-12 00:00:00','2015-06-05 00:00:00','2015-06-10 21:09:38',NULL,3,00000000002,100002,18,0),(5,6,'2015-06-08 09:04:00',7,-2,18,-2,'adfadfadfafd','ä»»åŠ¡æè¿°ï¼š',002,'2015-06-09 00:00:00','2015-06-11 00:00:00','2015-06-05 00:00:00','2015-06-11 00:00:00',NULL,4,00000000002,100002,18,0),(6,6,'2015-06-08 09:05:42',18,-2,-2,100003,'ä»»åŠ¡ç®¡ç†ç³»ç»Ÿ â€” ç”¨æˆ·é¡µé¢å¼€å‘','ä»»åŠ¡æè¿°ï¼š',002,'2015-06-09 00:00:00','2015-06-11 00:00:00','2015-06-05 00:00:00','2015-06-12 15:57:23',NULL,3,00000000005,100004,18,1),(7,6,'2015-06-08 09:08:44',18,-2,9,-2,'ä»»åŠ¡ç®¡ç†ç³»ç»Ÿ â€” é¡¹ç›®é¡µé¢å¼€å‘','ä»»åŠ¡æè¿°ï¼š<span style=\"color:#444444;font-family:\'Open Sans\', \'Segoe UI\';font-size:13px;line-height:18.5714282989502px;background-color:#F5F5F5;\">ä»»åŠ¡ç®¡ç†ç³»ç»Ÿ â€” ç”¨æˆ·é¡µé¢å¼€å‘</span>',002,'2015-06-09 00:00:00','2015-06-05 00:00:00','2015-06-05 00:00:00','2015-06-13 14:09:18',NULL,2,00000000005,100004,18,0),(8,18,'2015-06-08 09:09:51',-2,100003,-2,100002,'ä»»åŠ¡ç®¡ç†ç³»ç»Ÿ â€” é¡¹ç›®é¡µé¢å¼€å‘','ä»»åŠ¡æè¿°ï¼š<span style=\"color:#444444;font-family:\'Open Sans\', \'Segoe UI\';font-size:13px;line-height:18.5714282989502px;background-color:#F5F5F5;\">ä»»åŠ¡ç®¡ç†ç³»ç»Ÿ â€” ç”¨æˆ·é¡µé¢å¼€å‘</span>',002,'2015-06-09 00:00:00','2015-06-05 00:00:00','2015-06-05 00:00:00','2015-06-11 00:00:00',NULL,2,00000000004,100004,18,1),(9,18,'2015-06-09 02:36:00',7,-2,-2,100002,'å®‰è£…é‚®ä»¶æœåŠ¡å™¨ï¼ˆpostfixï¼‰','ä»»åŠ¡æè¿°ï¼šå®‰è£…é‚®ä»¶æœåŠ¡å™¨ï¼ˆpostfixï¼‰',000,'2015-06-11 00:00:00','2015-06-24 00:00:00','2015-06-05 00:00:00','2015-06-11 00:00:00',NULL,4,00000000005,100002,18,1),(10,18,'2015-06-09 02:41:48',18,-2,-2,100005,'å¼€å‘åŽå°ç®¡ç†ç³»ç»Ÿï¼ŒæŠ¥è¡¨','&nbsp;&nbsp;&nbsp;&nbsp;å”å®—å®‹ç¥–ï¼Œç¨é€Šé£Žéªšï¼›ä¸€ä»£å¤©éª„ï¼Œæˆå‰æ€æ±—ï¼Œåªè¯†å¼¯å¼“å°„å¤§é›•ã€‚â€è¿™æ˜¯ä¸€ä»£ä¼Ÿäººæ¯›æ³½ä¸œå¯¹åŽ†ä»£è‘—åå¸çŽ‹æ–‡æ²»æ­¦åŠŸçš„é«˜çž»è¿œçž©è€Œå«ä¹‰æ·±åˆ»çš„è¯„ç‚¹ã€‚ç„¶è€Œä½œä¸ºä»¥å¼¯å¼“å°„å¤§é›•è€Œèµ·å®¶çš„ä¸€ä»£å¤©éª„æˆå‰æ€æ±—ï¼Œä¸ºä½•ä¼šçªç„¶æš´ç—…èº«äº¡å‘¢ï¼Ÿæ ¹æ®æ˜Žå¤ªç¥–æœ±å…ƒç’‹ç§°å¸å½“å¹´ï¼Œä¹Ÿå°±æ˜¯å…¬å…ƒ1368å¹´çš„å¹´åº•ä¸‹è¯ç¼–ä¿®çš„ã€Šå…ƒå²ã€‹è®°è½½ï¼Œå…¬å…ƒ1227å¹´ï¼Œå³å®‹ç†å®—å®åº†ä¸‰å¹´ï¼Œæˆå‰æ€æ±—ä¹‹æ­»å¾ˆæ˜Žäº†ï¼Œç—…é‡ä¸æ²»ï¼šâ€œç§‹ä¸ƒæœˆå£¬åˆï¼Œä¸è±«ã€‚å·±ä¸‘ï¼Œå´©äºŽè¨é‡Œå·å•¥è€å¾’ä¹‹è¡Œå®«ã€‚â€<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;æ˜Žæœä¸€ä»£åè‡£å®‹æ¿‚åœ¨ã€Šå…ƒå²ã€‹ä¸­ï¼Œä»…ä»…ç”¨äº†äºŒåä¸ªå­—ï¼Œå°±äº¤ä»£æ¸…äº†ä¸€ä»£å¤©éª„é©¾å´©çš„è¿‡ç¨‹ã€‚ä½†æ˜¯æ–‡å­—çœ‹ä¼¼è¨€ç®€æ„èµ…ï¼Œè€Œå®žåˆ™è¯­ç„‰ä¸è¯¦ï¼Œå› æ­¤åŽä¸–ä¸€ç›´æƒ³å¼„ä¸ªæ˜Žç™½ï¼Œæˆå‰æ€æ±—åˆ°åº•æ˜¯æ€Žä¹ˆæ­»çš„å‘¢ï¼Ÿå…³äºŽæˆå‰æ€æ±—çš„æ­»å› ï¼Œè™½ç„¶å¤šæœ‰äº”ç§ï¼Œä½†å¤§éƒ½ä¸Žè¥¿å¤æœ‰ç›´æŽ¥çš„å…³ç³»ã€‚å…¶ä¸­æœ€æ­£ç»Ÿçš„ï¼Œä¹Ÿä¸ºæ›´å¤šäººçš„çŸ¥é“çš„ï¼Œå°±æ˜¯ã€Šå…ƒå²ã€‹ä¸­é‡‡ä¿¡çš„â€œå é©¬è¯´â€ã€‚<br />',002,'2015-06-11 00:00:00','2015-06-23 00:00:00','2015-06-05 00:00:00','2015-06-11 00:00:00',NULL,2,00000000005,100004,18,1),(11,18,'2015-06-10 03:58:29',-1,-2,-1,-2,'111','ä»»åŠ¡æè¿°ï¼šfgfgffd',002,'0000-00-00 00:00:00','0000-00-00 00:00:00','2015-06-05 00:00:00','2015-06-11 00:00:00',NULL,-1,00000000000,100004,18,1),(12,18,'2015-06-10 03:59:25',-2,100003,-2,100003,'1221','ä»»åŠ¡æè¿°ï¼šjjjjklklkl;kl;kl;',002,'2015-06-10 00:00:00','2015-06-11 00:00:00','2015-06-05 00:00:00','2015-06-11 00:00:00',NULL,2,00000000005,100003,18,1),(13,18,'2015-06-12 09:38:40',-2,100003,8,-2,'qweqweqweqweq','ä»»åŠ¡æè¿°ï¼š',000,'2015-06-23 00:00:00','2015-06-02 00:00:00',NULL,NULL,NULL,-1,00000000002,100002,NULL,1),(14,18,'2015-06-12 09:45:02',-2,100003,-2,100002,'23423432423423','ä»»åŠ¡æè¿°ï¼š2342343242342343432423432423423432423432432423423432',000,'2015-06-13 00:00:00','2015-06-12 00:00:00',NULL,NULL,NULL,3,00000000003,100004,NULL,1),(15,18,'2015-06-12 09:45:29',-2,100003,-2,100004,'234234324324234324','ä»»åŠ¡æè¿°ï¼š234234324324324234234324324324244342',000,'2015-06-17 00:00:00','2015-06-25 00:00:00',NULL,NULL,NULL,2,00000000004,100004,NULL,1),(16,18,'2015-06-12 09:46:01',-2,100003,-2,100003,'23423423','ä»»åŠ¡æè¿°ï¼šå¼ƒæˆ‘è€ŒåŽ»æ¸©çƒ­æˆ‘åŽ»æ¶è¶£å‘³çŠ¬ç˜Ÿçƒ­å‰å¾€å§”å±ˆå§”å±ˆ',000,'2015-06-17 00:00:00','2015-06-10 00:00:00',NULL,NULL,NULL,2,00000000003,100004,NULL,1),(17,18,'2015-06-13 06:01:06',-2,100002,-2,100003,'','ä»»åŠ¡æè¿°ï¼š66666',000,'2015-06-18 00:00:00','2015-06-26 00:00:00',NULL,NULL,NULL,2,00000000003,-1,NULL,1);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_reply`
--

DROP TABLE IF EXISTS `task_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回复id',
  `userid` int(11) NOT NULL COMMENT '回复人id',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '回复内容',
  `editdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回复时间',
  `taskid` int(11) NOT NULL COMMENT '所属任务表id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='任务回复表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_reply`
--

LOCK TABLES `task_reply` WRITE;
/*!40000 ALTER TABLE `task_reply` DISABLE KEYS */;
INSERT INTO `task_reply` VALUES (5,6,'æˆ‘ä¹Ÿæƒ³çœ‹çœ‹','2015-06-09 10:27:00',10),(6,6,'ä½ è¯´ä»€ä¹ˆ','2015-06-09 10:27:12',10),(7,6,'æˆ‘ä¸çŸ¥é“','2015-06-09 10:27:17',10),(8,6,'åŠ³è€Œæ— åŠŸå¤º','2015-06-09 10:29:34',10),(9,6,'åŠ³è€Œæ— åŠŸå¤ºè½½è£å¤º è‹¦','2015-06-09 10:29:49',10),(10,6,'åŠ³è€Œæ— åŠŸå¡”é¡¶ è£å¤ºå·¥å¥”df','2015-06-09 10:29:52',10),(11,6,'åœ¾åŸ’åœ¾åŸ’æ— å¯å¥ˆä½•èŠ±è½åŽ»å·¥','2015-06-09 10:32:35',10),(12,6,'åœ¾åŸ’feåœ¾åŸ’ç›®çš„ç‚¹&nbsp;','2015-06-09 10:36:59',10),(13,6,'111111111111111111111111111111111','2015-06-09 10:37:18',10),(14,6,'<img src=\"http://192.168.1.240:8080/assets/kindeditor/plugins/emoticons/images/10.gif\" border=\"0\" alt=\"\" />','2015-06-09 11:39:50',10),(15,6,'<p class=\"MsoNormal\">\r\n	<span style=\"font-family:Calibri;font-size:10.5000pt;\">yum&nbsp;install&nbsp;lrzsz&nbsp;lsof&nbsp;vim</span><span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">&nbsp;cmake</span><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:Calibri;font-size:10.5000pt;\">service&nbsp;iptables&nbsp;stop</span><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:å®‹ä½“;font-weight:bold;font-size:10.5000pt;\">å®‰è£…<span>apache</span></span><span style=\"font-family:Calibri;font-weight:bold;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">ä¸‹è½½è½¯ä»¶ï¼š</span><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">å½“å‰ç¨³å®šç‰ˆï¼š</span><span style=\"font-family:Arial;font-size:10.5pt;\">httpd-2.2.2</span><span style=\"font-family:å®‹ä½“;font-size:10.5pt;\">9</span><span style=\"font-family:Arial;font-size:10.5pt;\">.tar.gz</span><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">ä¸‹è½½åœ°å€ï¼š</span><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<a href=\"http://httpd.apache.org/download.cgi\"><span class=\"15\" style=\"font-family:\'Times New Roman\';color:#0000FF;\">http://httpd.apache.org/download.cgi</span></a><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<a href=\"http://mirrors.tuna.tsinghua.edu.cn/apache/httpd/httpd-2.2.29.tar.gz\"><span class=\"15\" style=\"font-family:\'Times New Roman\';color:#0000FF;\">http://mirrors.tuna.tsinghua.edu.cn/apache//httpd/httpd-2.2.2</span><span class=\"15\" style=\"font-family:å®‹ä½“;color:#0000FF;\">9</span><span class=\"15\" style=\"font-family:\'Times New Roman\';color:#0000FF;\">.tar.gz</span></a><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"background:#E6E6E6;\">\r\n	<span style=\"font-family:Calibri;font-size:10.5000pt;\">yum&nbsp;install&nbsp;-y&nbsp;&nbsp;gcc&nbsp;zlib-devel&nbsp;openssl-deve</span><span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">l&nbsp;</span><span style=\"font-family:Calibri;font-size:10.5000pt;\">ncurses-devel</span><span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">&nbsp;cmake</span><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"background:#E6E6E6;\">\r\n	<span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">cd&nbsp;/usr/local/src</span><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"background:#E6E6E6;\">\r\n	<span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">tar&nbsp;xf&nbsp;</span><span style=\"font-family:Calibri;font-size:10.5000pt;\">httpd-2.2.2</span><span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">9</span><span style=\"font-family:Calibri;font-size:10.5000pt;\">.tar.gz</span><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"background:#E6E6E6;\">\r\n	<span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">cd&nbsp;</span><span style=\"font-family:Calibri;font-size:10.5000pt;\">httpd-2.2.2</span><span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">9</span><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"background:#E6E6E6;\">\r\n	<span style=\"font-family:Calibri;font-size:10.5000pt;\">./configure&nbsp;--prefix=/</span><span style=\"font-family:å®‹ä½“;font-size:10.5000pt;\">usr/local/</span><span style=\"font-family:Calibri;font-size:10.5000pt;\">apache-2.2.29&nbsp;--enable-rewrite&nbsp;--enable-deflate&nbsp;--enable-expires&nbsp;--enable-headers&nbsp;--enable-modules=most&nbsp;--with-mpm=worker&nbsp;--enable-so</span><span style=\"font-family:Calibri;font-size:10.5000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"background:#D9D9D9;\">\r\n	<span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\">make&nbsp;</span><span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\">-</span><span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\">j&nbsp;4</span><span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"background:#D9D9D9;\">\r\n	<span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\">make&nbsp;install</span><span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"background:#D9D9D9;\">\r\n	<span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\">cd&nbsp;../..</span><span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"background:#D9D9D9;\">\r\n	<span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\">ln&nbsp;-sf&nbsp;apache-2.2.29&nbsp;apache</span><span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"background:#D9D9D9;\">\r\n	<span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\">mkdir&nbsp;</span><span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\">-</span><span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\">p&nbsp;</span><span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\">&nbsp;/home/logs/apache</span><span style=\"font-family:å®‹ä½“;font-size:11.0000pt;\"></span>\r\n</p>','2015-06-10 07:38:22',10),(4,6,'<span style=\"color:#444444;font-family:\'Open Sans\', \'Segoe UI\';font-size:13px;line-height:22px;background-color:#F5F5F5;\">ä½†å¤§éƒ½ä¸Žè¥¿å¤æœ‰ç›´æŽ¥çš„å…³ç³»ã€‚å…¶ä¸­æœ€æ­£ç»Ÿçš„ï¼Œä¹Ÿä¸ºæ›´å¤šäººçš„çŸ¥é“çš„ï¼Œå°±æ˜¯ã€Šå…ƒå²ã€‹ä¸­é‡‡ä¿¡çš„â€œå é©¬è¯´â€ã€‚</span>','2015-06-09 10:26:48',10),(16,6,'<pre class=\"prettyprint lang-html\">%for reply in reply_data:\r\n							&lt;div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\" style=\"border-bottom:#dddeee dashed 1px;margin-bottom:10px;\"&gt;\r\n								&lt;div class=\"col-lg-1 col-md-1 col-sm-1 col-xs-1\"&gt;\r\n									{{reply.get(\'userid\')}}\r\n								&lt;/div&gt;\r\n								&lt;div style=\"\" class=\"col-lg-11 col-md-11 col-sm-11 col-xs-11\"&gt;\r\n									&lt;div style=\"float:left;width:100%\"&gt;{{!reply.get(\'content\')}}&lt;/div&gt;\r\n									&lt;div style=\"height:20px;float:left;text-align:right;width:100%;color:#cfcfcf;\"&gt;å›žå¤æ—¶é—´ï¼š{{reply.get(\'editdate\')}}&lt;/div&gt;\r\n								&lt;/div&gt;\r\n							&lt;/div&gt;\r\n						%end</pre>','2015-06-10 07:39:13',10),(17,6,'<span style=\"color:#444444;font-family:\'Open Sans\', \'Segoe UI\';font-size:13px;line-height:22px;background-color:#E53333;\">æŽ¥çš„å…³ç³»ã€‚å…¶ä¸­æœ€æ­£ç»Ÿçš„ï¼Œä¹Ÿä¸ºæ›´å¤šäººçš„çŸ¥é“çš„ï¼Œå°±</span>','2015-06-10 07:41:53',10),(18,6,'<pre class=\"prettyprint lang-py\">\r\n@route(\'/api/getdepartment\',method=[\'POST\',\'GET\'])\r\ndef getdepartment():\r\n    sql = \"select * from department;\"\r\n    result = readDb(sql,)\r\n    return json.dumps(result)\r\n\r\n@route(\'/department\')\r\ndef department():\r\n    return template(\'department\')</pre>','2015-06-10 07:42:44',10),(19,6,'<div class=\"dp-highlighter\"><div class=\"bar\"></div><ol start=\"1\" class=\"dp-py\"><li class=\"alt\"><span><span>@route(\'/api/getdepartment\',method=[\'POST\',\'GET\'])&nbsp;&nbsp;</span></span></li><li class=\"\"><span><span class=\"keyword\">def</span><span>&nbsp;getdepartment():&nbsp;&nbsp;</span></span></li><li class=\"alt\"><span>&nbsp;&nbsp;&nbsp;&nbsp;sql&nbsp;=&nbsp;\"<span class=\"commonlibs\">select</span><span>&nbsp;*&nbsp;</span><span class=\"keyword\">from</span><span>&nbsp;department;\"&nbsp;&nbsp;</span></span></li><li class=\"\"><span>&nbsp;&nbsp;&nbsp;&nbsp;result&nbsp;=&nbsp;readDb(sql,)&nbsp;&nbsp;</span></li><li class=\"alt\"><span>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"keyword\">return</span><span>&nbsp;json.dumps(result)&nbsp;&nbsp;</span></span></li><li class=\"\"><span>&nbsp;&nbsp;</span></li><li class=\"alt\"><span>@route(\'/department\')&nbsp;&nbsp;</span></li><li class=\"\"><span><span class=\"keyword\">def</span><span>&nbsp;department():&nbsp;&nbsp;</span></span></li><li class=\"alt\"><span>&nbsp;&nbsp;&nbsp;&nbsp;<span class=\"keyword\">return</span><span>&nbsp;template(\'department\')&nbsp;&nbsp;</span></span></li></ol></div>','2015-06-10 07:43:13',10),(20,6,'1231231231','2015-06-10 09:53:33',5),(21,6,'123','2015-06-11 08:45:05',4),(22,6,'wqeqweqweqeqwe','2015-06-11 09:28:43',8),(23,6,'2313123','2015-06-11 09:37:42',6),(24,6,'adfadfadf','2015-06-12 07:03:40',8),(25,18,'è½½','2015-06-12 07:57:14',6),(26,18,'åŠ³è€Œæ— åŠŸå¥”','2015-06-12 07:57:18',6),(27,18,'å’–å•¡å¦&nbsp;','2015-06-12 09:37:53',12),(28,18,'å','2015-06-12 09:37:56',12),(29,18,'','2015-06-12 09:38:42',4),(30,18,'','2015-06-12 09:38:44',4),(31,18,'opkm[pjkopi','2015-06-12 09:39:01',10),(32,18,'p..[p;[pl..;p','2015-06-12 09:39:20',10),(33,18,'453543534543','2015-06-12 09:41:35',4),(34,18,'yttt','2015-06-13 06:12:50',7);
/*!40000 ALTER TABLE `task_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(20) NOT NULL DEFAULT '0' COMMENT '姓名',
  `username` varchar(50) NOT NULL DEFAULT '0' COMMENT '帐号',
  `passwd` varchar(50) NOT NULL DEFAULT '0' COMMENT '密码',
  `phone` int(11) DEFAULT '0' COMMENT '电话',
  `birthday` varchar(20) DEFAULT '0' COMMENT '生日',
  `sex` varchar(4) DEFAULT '0' COMMENT '性别，女-0，男-1',
  `qq` int(11) DEFAULT '0' COMMENT 'qq',
  `email` varchar(50) DEFAULT '0' COMMENT '邮箱',
  `department` int(11) DEFAULT '0' COMMENT '所属部门ID',
  `access` tinyint(4) DEFAULT '0' COMMENT '权限',
  `image` varchar(50) DEFAULT NULL COMMENT '头像地址',
  `adddate` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '用户加入时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '用户状态（0=删除，1=正常）',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (5,'é©¬å¤©æµ·','0','0',2147483647,'10æœˆ14æ—¥','ç”·',54657546,'65465465@qq.com',100005,0,'/assets/images/1.png','2015-06-08 06:30:19',1),(6,'æµ‹è¯•å‘˜','0','0',2147483647,'5æœˆ21æ—¥','å¥³',123456,'test@qq.com',100004,0,'/assets/images/1.png','2015-06-08 06:30:14',1),(7,'å¤§æµ·','0','0',2147483647,'8æœˆ1æ—¥','å¥³',18754578,'321346876@qq.com',100003,0,'/assets/images/1.png','2015-06-08 06:30:09',1),(8,'è€è™Ž','0','0',2147483647,'1æœˆ1æ—¥','ç”·',13246798,'798465312@qq.com',100005,0,'/assets/images/1.png','2015-06-08 06:30:01',1),(9,'12312','3123','4297f44b13955235245b2497399d7a93',123123,'12312312','å¥³',123123,'123123',100003,1,'/assets/images/1.png','2015-06-08 06:29:54',1),(10,'123','123','101193d7181cc88340ae5b2b17bba8a1',123,'123','å¥³',123,'123',100002,0,'/assets/images/1.png','2015-06-08 06:29:48',1),(11,'3','23','202cb962ac59075b964b07152d234b70',123,'123','å¥³',123123,'123123',100004,1,'/assets/images/1.png','2015-06-08 06:10:04',1),(12,'123','123','202cb962ac59075b964b07152d234b70',123,'123','å¥³',123,'63787@å¤šé©',100002,0,'/assets/images/1.png','2015-06-08 06:10:18',1),(13,'2313','123','202cb962ac59075b964b07152d234b70',123,'123','å¥³',123,'123',100002,0,'/assets/images/1.png','2015-06-08 06:09:57',1),(15,'123123','123123','4297f44b13955235245b2497399d7a93',2147483647,'123123123','å¥³',123123,'12312312',100003,0,'/assets/images/1.png','2015-06-08 06:09:23',1),(16,'4444','4444','dbc4d84bfcfe2284ba11beffb853a8c4',4444,'4444','å¥³',4444,'4444',100004,0,'/assets/images/1.png','2015-06-08 06:08:56',1),(17,'666','666','3295c76acbf4caaed33c36b1b5fc2cb1',666,'666','å¥³',666,'666',100002,0,'/assets/images/1.png','2015-06-08 06:08:19',1),(18,'æˆ´å„’é”‹','drfdai','96e79218965eb72c92a549dd5a330112',123123,'123123','å¥³',123123123,'123123',100003,1,'/assets/images/1.png','2015-06-10 08:20:59',1),(19,'å•å®åº†','å•å®åº†','d8eeea5346914667f9d0e0cb5fce9cd5',4444,'5011','ç”·',4444,'hhhghg',100005,0,NULL,'2015-06-13 05:59:22',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-13 15:36:22
