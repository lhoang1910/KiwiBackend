CREATE DATABASE  IF NOT EXISTS `kiwidb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `kiwidb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kiwidb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enable` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,_binary '','Hoa quáº£ Ä‘Ã´ng láº¡nh'),(3,_binary '','Hoa quáº£ quáº£ng chÃ¢u');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` longblob DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` bigint(20) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `uploaded_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6q9lwl1j82nmm8n75cxcuxc1p` (`uploaded_by`),
  CONSTRAINT `FK6q9lwl1j82nmm8n75cxcuxc1p` FOREIGN KEY (`uploaded_by`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,_binary 'ÿ\Øÿ\à\0JFIF\0\0H\0H\0\0ÿþ\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 82\nÿ\Û\0C\0				\r\r\n\Z!\'\"#%%%),($+!$%$ÿ\Û\0C				$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ÿÀ\0Lô\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñð$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rðbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ñ»\rjz˜v\Úˆ\×Q¤|2p\ë%óq\Üt\ß\Ù\ê¶66‰\r¥·šø\Ç\Ê*Xô[\ÄnaÁ®*xu\êk‰\Ì(\ÐWœŒ¥·\Ñ<;mûµŒ¸\0æ¹kX\Ö5|Ã§\Ú\Èð01šõk/†ö° i\Æóþ\×5¹c\á\Û<…xö®¥BOM‘ó¸®#­I\\ù±>ø‹[›Í™|°}y5µaû>\Ý5\Ì\ÎGp+\é†\Þ$ù\"Qj]ÁÔ€ ~²£|ý|\ï7¤¬x¦ðMj—#Ö·lþh¶\Ò6\Ñ\ß\"½]\ÈÇž´Ø¢\Þ\á\ÏQG*G\ÆW¨ÿ\0y6\Ì[?†ú=¨R¶\Ñ²+~\Ï\Ã\Ú}ª\0° ÇµXó\n¯\\b™ö\è\×\ï8¡™U\ä\ë©r+h#,j?\nI@#\å\0U5‹x\×ïŠ¥7‰m\ÐpÂ¡Û©\Í,EisP!\ÎjTF\í\Ì\Ç\â\'¾¹X-\ÆKÝ«¸Ò´öH•¤cRš–Ç§”\áeŸ¸­Ô’\ÇO$‚Õ½\nG\í\Ú3P\Û&Î¸¤™\Æá¶µ„,}õ,(Ç–Ž\ám¿jœ˜\'\"­]\ÈO\"©†\Å)$¥cNK\ê8®VªMòš¶]pEg\Ë.ùvTT@¢\ãoZ£rN7-KxþX÷¬\æ»\'+\\u,\ß++“M.x\ç‚*„¨\àdT·wqBÀ2k6÷XHŽÜŒW;T\âµfr‰%Ì›cùd\Íp!OR\ïS’\áˆSÀª\Ü2õ&¹UV\ç\äe8\èO4ÙKÌ¡3É¬\É.¶’sM¶½e¼‰ùs]š½‘Š‚oR{\ëØ­\îšÙ\ÍUfh\Â\îj?iS\Å$zŒ9*@\Î+MQ™’r*ªIZ\Ìu©r=—I\Öc\Óo£–hDð+e\ânÛ§\ã]\Å+\íz\ßA³]­,®\ãS!C‰9\äö\Õ\çñ\În]!‰K\É!ª:’x\í>*\Ó4H/\î¤E,02pó¬¨{×‰ß–ûÍ©lš{—¹µI[H¯ò­>l\Õ{\ëx\×Rs1“Œœ“\ÍKcÖ²¯4¥\ÊašNóHVûÔ›°py1÷¤aÞ°m\ÜòYö\ÑÊ§*j\r\áUÇŒµtD-U‡˜Ã¿µi\é\Ö3j—±Z[©i$8ú{\×\Ñ>ð\äÒ¢…o\Ç\Ìq\É5×…rný\n¤\ä¥xð§…,|/¦\Ãek¢¢À\Åo4‹\Z\â¢ó9É¨d-&{\nônvF7zŽ.óýÎ‚¢¸>JnÝ†©\áaB¸\æ¨Ü«]Jd\nm$´6Š\×\Ð\Æñ\\{£3ž>`{\æ¨øKW·\Öô\æLþö•ó\ØÕ¯h÷—V\Æ+yŠ û\×7\à˜ÿ\0³¾\Ûj\Ã÷¢BIõ®\Z­n\ÏG:\nhÝ½\ÎJ ¬‹œ\Æ9­·#’Esú\Õ\Úg`\â¸iÁBòg‘~…[«µH\È$\×?}qò“š±u\']¤šÊ¹m\êjõ©/B“ \Þ\Ì\Ù&¡¸‘ˆ RI&ÁÁ¨^Bš\í¦’)y•&|pNIª\ì\ä\æ1\Ü\æ bA55Hal5Aw(Ž2sÚ¥cÞ±õ‹ «·=iA]˜Ô••\ÌK\éZY‰\Ò\ÄX/4¨\Îj+\nk½5k|ê­™™8Ìµ2\éU\î2&©Õ°”\Þ\ÇT—¸¬H·\Z\ØÒ®þ`	¬%B\Ç øU\ë5dpp*†?J2ŽûI¼È§<Wci|Ž€\Íy}­\ÛF»§ x¦»1p\r4Ï\Çe®i\Ít=-.ð fŠ\ÈY\ÉPAâŠ«Ÿ=\ì\×Jð­ž“\Z«F¤j\è­\ÌQ  \éIu±ŽN+:mJ_¼ÃŠ\ì´b«¯‰¾³f£\ÊZ iTµ\Í\ê1‚0Uf¹û¯\Z9c†5Œñ4\ã\Ô\â–-mO@¸¿Ž4å€ª\Ñë–±ºAù×š]øž\â\áHEb\Ý^]\ÊIó˜c\\\ïˆ\Ê5\'\'®‡«\Ýøš\Ìg)Ç½f\É\ã[xrkÊ¤{’Ö±üjX‹\r\ÌMc<džÈ§FK^c\Ð.<p_!	¬™üKu#1\æ²\í­C\â´N\\\Ó\Ä\Í\î\Î\Ê~ó¸Ÿ\Úws¾i¹¹”ò\Ìjý­”k÷±Z\ÚMŒWZ„0\0[š˜·7c\Zrö•U8-[±\Ö|;ð°†w:\æG\çž\Õ\è=€¨t\ëe´µH\Ô`R\ÌH\îB’„4?g\Ë0‘\ÃQ41\îÀ;i\Ñ\É\Ü\Öt¡•·c58¸R¾˜©£QÉ¾múKbK¬\ÉÒ«³šSs€j\Äô\ÜSw#±;LH&¨K&I|\àŠq¸\Âýk>\êldg­Eh\Ýcm\Ç\Ý\\ƒ,k\Z\î\çhÜKysû­¹¬+‹²[jšó«\Ô\ÖÂ“²º%žu—,Ç¥dM\\m\ÄóSHÍ»¡¨Z_)N*cITVš9\'.¨¢\ì\ìU\ê”ó!çŠ³¨HCúV[É“ž\Õ\Ç\ìýœ¹\r\Ýj$¥™ˆ\éªû¡­\ÝÁšÏ‰X=¿•mžnfùSð\î\nôM\áF`Kó&¡/}ÿ\0*~\n?­oJ÷0“]7ˆt†¶Š6•\Ð`*Œ“X\Ö<S©1&\Ò+%\'†¹“o\è2k\ß\í­-tÈ„6V°\Û \í¥:K€~]¹\Íu{%-di:¼ñQkc\Ë|ð‚\ëQjZ¥\í¥ß’GA¸“±9¹üq]\'Š<5¨k*M½\å¼J!Á9®“\í\'¶;Sdœ\ì\0«QŒU¢ˆ…iSV‹<:ÿ\0\áoˆ-e–U6— òR&°¯´CJ;olæƒ¶Yx?Jú\n\à«\Ã®wR™eWHŒ0Q†Aü\rr\ÕÃ©¾k˜Ô“¨\ï#Ã†î´(9\'µuº\ç… ºg–ÁE´£¬g\î7ø*¯ð÷Á·ZÆ¾~\Û\Ç«\ÊÃ†?\ÔW/²’vf.\ï~ø;\ìVÿ\0Ú—‘>Q•øEzfN\ÝÇ¥Con±F¸\n1R\Æ†Jï ¹ccª”HŒm#n\Ï\Ê(¶v¯AVc\n¹SQÈ¥Xž\Õ\ÑwcG1Š óŒ\â™#\ín”©*®Fy4’¨\0–\ëSQ\èK‘3™\å\"¸k\âº‰ƒFŽqƒ\éš\ë.\äe\',Myÿ\0Š¼Ci4\è\Öò¦m\Üd\ç“\ë\\sj\ÖG¥J«C¦¸—ÉŒ±\äW+zD³4®p;\n\ßk\èo´´¸F2\×7¨±xö¨\ÅEee\æy{3.\â@d*:VmÌ£8¬M˜ó»©¬Ë©2x\íO\rO–:—{9\É\ë\ÅG3\á:\ÔrËƒÁªò\ÈX\ÖÉ¥¡Hd’œ\æ£gÈ¡øÉŽõI\Z\Û@•\Â!5\Ç\ê÷ŒÓœtº+û ±žµ\Î\\D²\åzÚ‚²»9ª¾„6·9­8‹J»TMR\Ó4\É.®¢’3^›\áŸ)\Ò&O½t­^‡,ð\ÜÚœUƒ\ïu)C\ÈÚ»/\á[\Êš½+M\Ñ ³Œ|Š*ÿ\0ŸLOÒµvŠ\Ô\Ú4¤ÕŽ/‡¶¸VŒÂ´­>Ø—¡ð®\ÄA,ƒ\ÍujH¦ù°yu1µ,ô	ao«\Ô\ä\î>\ØÈ¤*Ÿj\Ì_…qZ9š•º×¦\Ç\"…\Í)–S¸Šô©NÝœ³\ÂE¦š\Üó¡\ß@|½¥±ÞŠ\í\î|¬bP\Ë\Ó8¢ªð\îy\"¢ck\Þ4KrQf¸ûŸ\Ü\ß1\Ú\Ä\\üsÉ©K¹Øœš\èt\Ý%HSŠók\â§6|–\"1¦¯SVC¼óœÆ¥\ZL‡’\rtpZ¤H8Û‹˜-Ô–`+–\ìò\Þ6M\ÚÄI=\Å>M%B\ç\Û\ß\Û\Âp¤\ZÎ—\ÅA”€i\êÎ˜R\Ä\ÏTŠ\×\è¶\ÌzqT’ù±‘Uu=M\îXú\Z\È,\å‰\ÖÐƒkS\ß\Ã\àÜ¡ï•¾ª±\Í[¤I\Ë\nó‹e\í%Ubpjû;\Ý\ÚŒ“‘T\é-\Ç<š:J{3«>.R\ØYk¹øSrÚ¦¸\Ò9$ ¯š.õ»+ü1!s_Cü	œ»4‹\ÉlWU\n*5\"\Ï_\r“\Ò\ÃV§Qks\èRÁTAP;\ç>•\È\Î0\Ã§¦+Û·S\í\ã%b”4…}*)W<Ž)ò®W­W’N\Ä\ÖšY›y¡ŽG#=*	´\â2I¨\ä8£”D2g\Þ0û\ÄÕ‹¹öŒ\nÇ–c#cXN]fÊ·ªÌ¤ƒXû1-\Íh\Þ\\ù\\)\Íf\Ë#9Â©$ú×Ÿ(®{˜\Êj\Ö…#Š§{„\à\n¿}/ú¸\çÚ™u\ámjñ‚\ÇnI=o­´G<ªD\ç¥\rp\â\Ã;1ÂªŒ’}\0¯Fð‡\Â\è\ãH\ïµøƒ¿X\í3\Âû¾:ý+kÀþ‡Ã±‹\ËÝ“\êN>÷U„z/¿©®¹ø™¬\\÷ž\ç<\ç}X\â@‘ªª¨ÀP0\áQ»°±Sœðq\É5Zc€sŸÒ£™ô%h#\ÈpNIªó8]I8Ô’\0 \ç=MQ¹¨Á\éüé©°lc\Üc-Œž”\Æv\à`‘\Ô\ÔN\ÄËµrT\Ì÷¡e\Ã\îfIÚ©;\îKc&b¿)\Æ	¬›\È\Â\ÈqŽ™«\Ó\Ü\ïÚ¤\ã­Pºm\Ä\àcÖ„I‡«\Ä\"2\äŒóªZ~¯y¡Þ‰­Ÿnz‚2z\ZÕ½U•O_–¹\í@”6ySYÏ¹qg­xc\Äö~#¶\ÄDGtƒ÷±\ä{Q[¸	\Æ0k\ç¤\Ô\î4\ë\è¯\ìeh¦C•qý}«\Ú<%\âˆ|[¦•\ÌXY\â\Â}G±\íWJ¢z2Í’¸=\Í2\ãq\0•`¨1\ÕwpŸ)­¸‘\\ª®1Ö™;5$–\ì\\:“Tõd…›p¤\Õ\Æ\Õ\Ì?_›6Yq–#jS^¨\é“$²°2\å;¤\ÏE\ÍzÚÿ\0ˆ5}–\ÚC–\ìØ©5MÏ™\ÑK3ú\n\ç[ò£\ÒÀJ)ò\È\ÆðEûµˆ\Ó\æbZ?^\â¶o‚qŽ+š“M\Õ,o„–vs°<6Õ­‡‚ý­röÒ†#¸¢0³÷‘ËŒQS¼z˜:¤\áX\ã¥bM7\\÷­MB\Ö\è^	@\ìšÀ¼}¼)½b\Äi3\Îx¨Nz\ÔFn1QI!\íXM·±²D\ï(`yªS>\æ—\Ì\Ú9ªW·;’zV2³43uK®vƒÒª\Ú+\Ý\ÊrsT§¹k‰ÊŽy®\Ãvd8rµÔ¡c%N\î\ì\ì<-¢\Ån«$Š3]ÕŽ£8X\Ô+ŸÒ£SŒŠ\éô­ ;«m8­R±¢Š5-|û\Ì3eWÒµ-4ôÝ¸¯\âjå­‚¬@(\éNž\ÚmÁQN;\Ô%w¸\Õ6Å†\Ù\î[k6\"T\Â\Ê[\n3Vm€¬@`Õ†¶=k5J2»Ü©Á\ìQž\É|½\ßtW=¨[\Î\íˆØ„=ë¢¿»F+žü\â¥{(\æ„m\\+7EUmA\ÚÄºVWg)–\Ý<¼g´Uû«wY˜c¥%E¥\Éöq</CeBª\Ø\Ív–\×qA,Àq^v÷\ÊRsW-.õjAoeHÇ‚GAYò9=\Í19|±2º\Ø\èõo¥¸+\×-y¯^_\rw\ZÁû\Í@‰u	\Ï;Ev¶_ô\ËP $z\×D0²jç¡…\É\ãJ7Œuó<%m®f9m\Ç5n5\È¾ƒ\á\î“\n©N=ªi£\î\Æ\ÐV¿T—sªx\Z\íicÁ§ÓŠ¡ r+&X™I\ã¥{–«\àKF\Ë®/[ðö\ê\Ï\Ü1\éP\è\Î>fP\Ã×§ñ+žW¬[	¢,\"­xSP\r¼¸\È\â¬j¶3\Ù;$Ñ•µ…i«©!·\ÎYº\n¥«3Ô„=­Mš(ð\ë\ÞJ¿fB\ÎÇŒ\nõï‚šF¡¡,f\à64ÿ\0øH\ÝG÷I“Á\äW|nlô`ˆ\ÛSÒº)?f“‘¶5ªAA«\ØôÜ²+c¨¡\ÈSI½Ž\î\Í$FOš_Ÿ¥zé¦®}%=µpø@Ê¤œš±t\à©¬óµõ5nöF\é«{¥\0U)\î˜f›3\å¸4\è´É¯1\ÕSÖ²–Úœõ*¨™——$3É¨bÓ¯¯Œ…?\ÄEu¶º%´8f]\î;š½µP\0ª\0®I+»œU1}\"s6þˆá®˜±ô­84[`6B§¢´	ü©‡®$ôªIn¤ž\ãc‰wŽ0	\è\0­KkUˆn \ï\íImn!]\Í÷\Ï_j´ v\àšÊ¥^ˆ¨G«GFY‡N\ÕQZV\ÃH\Ã$tnr<²O\çU\É\n3\éY\Î|±\ÓsKnù²yÇ­V•ñ×’OZšQ…À\æ¨\Ü8SŠó\å9EjHO.\0\0Žj“¿ž©À¥¸,OjhÀ\'\0Ú¦”\Ûz‰Œ”„o8<ÿ\0J¬å˜\Ür>GP\Ç${\Õi¥ÂŒ°Ë¶=…t©_`¹ò\ì\á€\Ïj«sp‘½H9õ$Ÿ½S#d„ U+¹\É©88\ëV¤\ÒÐ–Q½|‘´ü¤ñX:‹\ïf\ç€+bth\×\r\Î9\çµajE£8\ã\rÞ¡´\ÇgJ\ß.\Ó\ïWü\âi|-­\Åx¤›vù.#þò¿ˆ\ê+\ÈL˜=G\â*\á\Ï5„Ÿ+º6Lú|O,\Ñ0t‘C+/ ƒ\È5V\âC…ùy5\Æ|(ñ\'\ÛôwÒ§l\Íd3z˜ÿ\0xú]¤\æ¤b»c4\ÕÁb>z\×-\âˆõ\Ä6\ÖY\åùKvQ\ë](ƒ8\ËS%eŒ|¢²œú\çg¡\Î\è\Þ·Ó¬£†_˜¨\É÷5ª\ÖñF¡UcÚ¤f\Î;TRJ1×š˜\Î\È\ÍÍ2ª©;@ü*´\åH\0Š–G98\éUnd!·¯SZ*é“«!ž(]pÑ¡±\Î\êž\Òoòeµ\nOu\à\ÖÄ“\î P¼ “\ÎElª)!§c…\Ôþ\Z[\ì-ep\ÊÃ³r+Š\Õô\rCHcöˆX§÷”q^Á,¬I\0\Õ+—I£0\Ïu>µ.”$m\n\Í#,¸\Í`\ë—\Û¨<šô\ßø-%q¦ð\ÝJz×k¾r^´£#)Á*vz´\ç\ì?JS,Û5\è\Þ·ò\á\ØÉ®+@µguU\\“^‘¡\é²1PÀ\à•«Wf–:\ÏX-\Ã#1\â½G´]\áBð+\Ð-$…ƒ Wm¡\Ì\ÒKµTñÖ´Š³¬tZ®\ÎX†\0‚\nø\0S•Ánk\ì\Ö\æ±\"hV&,«\Íg\ß^È¿»U\Ëj\\Ê°\ÆXðdù\é3™H\àt¬kr\Æ)-Œ]\îW³\ÓJLf²O8ô­&\Þ\ì0*’\Î\ÓË±T€j\ä6\Â.=h\Ã\Æ/b*k¹\Ä\å-Š*S’H¢º}Š3²>{\Ò<{\â«\áµY-Á\å±Ö½·\Â,|?nb€\ä\ã­t\Z.…m¤[$QF €;V©ÀB+†”U™\Â\áýœ{•R4ˆ`\0\0¨e$·–v+žj¼eˆÉª\æ\åG©=\Õ\Ù+:…ùA,ˆc š.0\ËóUp60ô«Roc9A\"œÑ¶	aY7Rn\Ê2ñ[\Óò9\éY7°’*š{¢ž\ç\â-\Êþ&Š÷\Åq\Ú\'\â´Ö„ŽAB\Ü{W¢\êmœš\ç/«0’2F\Ú\ÂUzÓ‹Z¤[Go*€+Ÿñ\ç‡o5kp\ÖO²A\È5‡|J„7\rƒ\ï]b\ÞG\"nV\Z%i!Qœ¨»\Ä\Îøpu-7K6º“n‘8¶%Ô¥ó\ÈÁÛš†\Äóv’\05}¢ˆ®Fk\ÒÃ¾h¯#Ð¡Y\É]‘½Ïš™¨\"2\ÜI±W5b\ÞÁ\î¨\á}kn\Ò\Æ+UÂ¨Ï­*¨»W¢¬Š6zB¡/&´B\0/¤c€j\"üý+ŽSlógQ\ÍÝ¨Ù°:ñC? U\æ}¹\æ³s²»3¸K0A\Ç$\Õ\í>Ô¢ù\Óœô\Ý_K²27\Ú&\î_z\Ô ¦¹\ÝYn\Í!¬3ó{S\Ç\Ê=\ê!€O9§ƒ\Üòk6Í˜\×?)\Ï5Yº‘R»†\'¥W/³#Šm\Ü\Î\äS1V+\éYs;3\Ø\É9ôxœ—-÷³šÎ–BóFqùT\ÔI¡\\ü¸\ËÁ8È¨òYx=\nŽ\âF\0)=J\ä)\Ãd¬â¬¬‚\åK¹C<¡T` úUv\\(,:t©nWs.€Oj‚\á\Ìx1\Ç\Ó\Å~S`#‘\ÍW˜€„ñŸJ|d©bHÁÎ¢(0W=‰\ëZ&\ì%Ó±r\Ç\'<V¨\Þ`T=Tœ\â¶\î¤Û¸ddVüHm¤drk;R…ùXŒ\Ô\Õ}zU‡až1U\Øq\Çj‰;³dlø3Ym\Ä·eˆ‹w—/¡F\àþ]\n÷\â~•ó2>2+Þ¼%¬W\ÃvÛŸ\Ë\É\ë¹~Sü³ø\Óöœ±±n\Æù~8ª²ò{T€\ç½V•±+6\ï¹R\È^\Õ‡8#¯¥$²rÀþªK6óŒUE\ÝØ›iItõªWR\ÛA\äSšl&\âH\rÒ¨\ÜÌ£\æ\Ï5­•¬&À\í(OBµI\çP	\Í$—J\ã\nHªrH¸ u«‹¶Â¸·\î\0.y3*Ž?\Z|‡9uª\×2+\æµS\Z`zš\ä¼_\à\ÛMmLN9Z\é{\â™,…\â9\ê+tô4Œœ]\Ñ\æ\Z^‹>v#uÁ^þµ\Ý\é\Ñ\È\ZeÝ²\ÎÁ°7õ£¥Y4ˆÞ”)-\Ù\êQš’ó:\í5\ÈŽ\Ø\Ø[\Çb¹,\Õ\Í\èQ2\"*¯J\é\ê\ÆQ\n‚Mo·f²lÔ`±\ëWV5Y¶³;½).u|1† KŸJN¼M)\Ól‹W/+T\à\ÍWòV\nO­,V\×Gt—\r×=*³\ï\ÞW<W™^³s¹\Ú\ÔTlZ[\Û8\Ê*o·C(ù\\V$ºL“ÁsŠÏ»Ž\â×ƒ•§\×jSŠ´GN\ïs°I†ß¾´WöÛ•\à;bŠ_\ÛþFW}\ÏP+Þ‘\Ï\ËR\Z‰¹È®µ#\çV\æu\Ù<m\ëN‰Ñš²`SMp¢I%©\Ó,G»dRrvš£p\æ6V”¡A\Íf\Þ\ÊqÚ”[9e6÷ •™À\ç«´E\äS÷\î\Öq\Z\äž+Dº²nQž\Í$ W+«Z¤ \ru·[P…\ë\\\Õ\î\ë‚wME+X¤s—!¢p\ÊH#¦+_Hñ,±\ÌH¬\ëÈ†ò ‚Ee\É!V#GJ\æ‚\åvf\ê)£¿Med#ku®¯\Ã6×·\ÇÌ›\"\Ù\ï\\¯\Ã\ï^j··\êR\Ê#w¯Z†\Ú;x\ÂD¡TzW]98#.wG\nD6¨\Å9¸¥lcÞ¡bsŠ—-Ho¨Žß¥F\í\íNnþ†«\Ë (\Íg:Š*\â ’oŸjóR\ÚZ5ÌŸ1ý\Ø\åô¨cˆ\È\áPr\Ç¶­\á[x\Ö5\ç“\êk·-d8\Æ\ì”a\0QÀ\éI×§\ã\Æ4ž;\Ô\Í\Ü\èZG>”nö9ô¦1\çœ\ãH\\§”\Ô{\Ø\Æb#,Àd\ÕS•Œ\É5m\Û\ä\nÃœ\ãñª·‚‚x©÷¡\è\"¬\çj¹$þ¾µB\á\ÌLJŒ\äu5z\áŠÅ»·Ö³\ç>a,\ÄmE\Åe&ØŠ²–*\nü\Òü\éªÁ„’9œŸÆžU\Æ	n@¨vb.=sÞ³\çkp *r¡‡N~•\ãÍ‘˜\ãŒ~•`®œp£­6p0G c¯\\\Õ\Ýtf\ÌûF@¨\î$\Ø\ÎN\Üs\ëK;¬j\Ù=+žõJY£V\r÷³žØªO@lËºS$qƒ\×q¬[\ÂÏ¹G sŠÔ»¹A\0‚:šÉ¸=I\È\rÓžÕ›hh\Ïa†!‰ÿ\0\n®[ \â¬;œ¾NIª\Ì2MCh\ÕùƒÀ\ç\ê?	o÷\Ù\ßØ³«u™G³\Ô\nóaN}k¬øi~m|F#\'\åžCøa‡ò¦µ&HöŸi¨\ëUd¹\nI=úUK‹\Å”½\ê”Úˆ8\éD‘	\äŸ%½ª„÷\0\ädp9ªsj\\±~\Z¨½ö\àFpjb¬¸÷%”“Û¥PiË†\ëP=\Ñ%¾`¨¤ð£Œrkdú²\Z%’E…	8ª“\\µÀ\äñŠII+\í\Ô\Õv‘Fsß¥+’=\ÆW¯ZH*C})wƒÚ‚MiMw)1(2;UY™ŽH\èzŠµ\æ+qÐš¦H\ÜT\×bh¤\Èƒ÷kOE¿ƒž†±¤Ü¥½)!•¢pÀò\re\'\ÔÞ”\ÜesÔ´+.\Ø\îÁj¿3\Ê›\0W¥jf\å\"Elv5\ØX”FA&ºm\Ï\Êz\ÐjN\æ\Åè±·-´œŽ1Siû”\\J¿3ò\íQ4±H$\0ŸJº“ù*\0À”#Yi\ÛTY¹\Úñ‚©Gf…·H\Ã\ØSn.€n¢©\Ëk,·pe`£ø\âµú½9J\ïs>fk\".NS½²Ž~A«Vò\åj9e\ÄdVÎô\'cm(;@Š\Øù{‘Eg\ì)ö§DØ¨\æ¥c\Î)ŽHük|\Ñ\ZŽ^”ùA\\S%|.H§bJn\ÙR\rfM8‚*ü\ç\'+YwÞ r*d­«&\å&¸\n\Äö¨&™¥n¼Qr\ÙN5E$l\ãÒ°ö»O<*\Èy\æ°õL@kJY$Ý€xª»¤B\r9W\åe&rs\Ý\ç`\ç5\ÖxÁ\'Yº]Fö2 S”F{Þ›\á_>µ¨‹Ë°E²€Š½~\Ò\Ö+(VP*¯\0\n\ÖsŒ’iji)\'±-´IoŽ4\n `R\Å ri	\'\"¦ý\ÌÆ³~B˜Fzsšs(\Ü9\æ™$Š¹+\×Ò¦\áa%ùb\'ö¬\Ù_\0’sW^Bñ\Ì\ì*;kaq(,2ˆr}Ï¥sÔ‹“\Ð\Z,\éö\ÞZy\Ò;t‚®w\ïH0O¸¥\'\0T\ÒJ\È\Ñ+\nO”\Ò\ß(\ÏzB\Ü`õ¤\Ï\Í\È\éÒ¦ÁpÇ¿&£ó1œ†¥p3¸ryoAUIo,ó‚\Çò¦\×Q1\Ç&2\ìsúš¬\çpÁ\ÉŸj–M\ÞXsÚ –LE\\Žô˜ˆ®\å\Ü\Ø\à~²\çl\ä\î zv«·ŒJ\ä\ç©ôª3\Ø\ç×±¬[\ÔA¶&•\É\É[c1ãƒ‚¥Xtb<¼\ê1L‘³1l“\×ü*X\"¾La‘€.Ns\×ðª÷,V [ø‰\é¥\çkç“ŠÏ»¸2²®\á\Û4\'p*\\HD¥ˆ\Ü@}g\Þ<œ©e\çž8\Å[»•Ve`\Ù@>a\ïX——O5Û±l€J|\Ý‘]œ¶\ìsú\Õ9¾\é;@ç¿¥Y‘±.\Õ•Q¹—’$t¥r‘BNn	bH¨[9\ÜN3R\È\Ù5ýê‹š¡Œ\çV‡‡\ï>Ç­YLId\0Ÿc\Çõ¬É˜”ùzù\Ò\Å.\ÖW\èUªˆ™\ê3\ê\ØL\îü\ÖmÎ°IÚžy5\ÍMª3),Àn<\Ô\'P\nH,*\ÛD¨›ójÀ–&¡\Z€,\Çw½syû\Õ!©E\à\Ø~aÖ£Aò›¢÷1“»­9o@…¾nk\íy\Æ[ƒS\Ãp¤œ\Zv¹\rM3Ž\î3T¼\Ã\æ›$õ\Ú\çŒ`T\ÌC\å¸\â‡+cAe\Ê/8\"£\Þ\Ä\ã<U#¸\ÜI<\äqOó‰ \rmIÝ…‰Z]¤ú\æ vý\æGzBÃ\Í\Îi²¿t\\¤°\Æj®{f§¸¸ªœƒ“Q4\\M\nô[]¦\ãò“Š\ï¡\Õi=+\Ëð\ãšÜ¶\Ö<ˆ†\æ\Éµ\Â\Ôû\'¥„•ôg¢C>‘›&¤¹\ÔK(\Ã\ã¼÷þ%ò„a²\Ä\àbµlõ¤¸\Â\ß37\'«³’\ïS\ÑJ\È\ìÆ¨Œˆ¹\æ®[j)#y\\`W.³(\åz\ÕT½\Êv¶<×™R´©\ÔL\êöjQ\Ð\ï¼Ø•s¸UwŒŸq¬+§ mØ­T»YF\ÑÚ½Jxˆ\ÏXœò§Êµ$%3\Ë~´Ui1»­¾¤\Ã(4\ÂQO\ÍR·sP•VžõÁ\æÌ¬21\ÅR¹rW®˜\Â)½f\Í(I\nš\Ò\è–We\Ø	5™vY‰À\â¯\ÜK¹±Ú¨J[%GCM\Â\ä²Ds\Ïz¥2lr©«÷µ‚ô5Ÿy6\Ä\Ý\ÜV´\ãU1\Ë\ZŸL\ÐdÕ¯Q\0?1õ¨t‹yµ[‘\Zƒ\ÔúW£iº|vP*(k™¥2\Ñ-•œvP,1(\nYsGA‘Þ˜[ô­‘C·ÜŽ)%`£#½0\Ès´\Ô2¹`Iâ¥ˆ$”¨8#&ª™ð¼Œõ§1\ÜK1QL7*\ãYÏ²Æ¶\í\à¯ñÞ¶`ˆCQ×©>¦¨\ØBÌ¸\áxZ\Ð\ÎF*i«n\\WQA9$z\Ò\ç\Ï\éH\Ð\nC–<ñŽM92\ÄO˜ŒsÉ¥B	$¯\Ò`…À\ëHû¶…\àô–\Â3ÀpBöõ5÷nƒ8ô\é3\Èÿ\0\ë\ÓÁPFp½Wˆ;I?*\ÕIN\Ö\Æy\ê}½ªy®A9ª“nÀ\ÆpO½Nû‰²†e\Ú8¨¨È¨·õ\æ§pN]ú¯J¯#“À\Ç5œ˜ iV/™N\ælŒõªrN©\Øð9>õ+ÊŠ˜þ\è\'\'¹\íYWW9ÝƒÀ\êk9\í \Ï;;nQœrEU?º\ÊHF\î\íJf*\ã[?…W¹e¼€–8\êi\'mEr\rMü¨\ÉP™\éŸÿ\0U`;o\Ø\ÃU\Û\éYòX\ä)\â³ò¦\"ý\0\É\Ïô§r‘²\í)8Š¥\"’›s\É<ûÕ™yCžZ«;…QŒ\äôªv)¦ d/nµ÷\Æ)òœ)>µ95	\Z!\î\Ç8¨›¡ö§±\çµD\Ç\ä|ñŒÓˆ„7‚BYN*µ\åþRqYb\ë+\×\0\Ò’\0Uªq5Q4\Ú\ä»\åpi\ëw·#\"²>Ñž2A\ïOI<1¡ q6’\ä\ÈUKpµv¾\\ô¬8f\0ŒŠ¸“\çh\íNý\ät›\å\ëK#\ïc\Û>µR)\Æ\Ò\ïS\Ï|š\Z¹“C–l7V<ÀF{UAƒÛ¥=\\5Q]…a\ë\'9§\Æýrxª\ã$gÖ»=@­”†O3ü˜š¤\çw\áV2N\Õg\Ê\È\Ý0j\ä\îŠCÕ¸úVvµq$’«½\r^^µC]ˆÍ¦ËŽª3X\Â\\²¹Ñ‡—,\Ó¥\ßF\í¸®I\èMu\ZF¥\09s\ßÒ¼¶\×Q˜(\n\Å@®‡I\Ô\È-“\ë]¿X\è{\êö=Djñ¦m;M–U\Ås67û¢vI®ƒK¼URE`©{Y\Ø\ÙI\Ä\étµn	lŽõ£+;”\à\ÖMƒBGsW\áYð\Äq^…*1¦¹L\æ\î\îX ý\ã\Í€Í‘\Í\Ñtgdz[‚G2I.\ÐiI\Â\äT_ihN\å85\çÑš½™ò\á~\ZÝ¶±r¾cd\n±tó6öj®$Sw\n\éöj÷DIjTH=…Tg	\î*\ì\Ä,95’$%˜\ZZ\ìEŠw!¤¹\ÏYK¨H\"U\äÖ€‰¥pª¹É®ŸHÒ£´Œ1\\¹\ë\\u\åg`Q¸š‹™n(\Þzš\ÖSŽ:\n\\^(c‘Ò°„/¹b¨š@>¦•F	¨|\å Vút\ÜÀg=?Z‰Ù‰ô\ïM’|~\ÕŽ2¬\ÄäŠ›uc¤\í\ê	=ª\Ï*Â£“\ÅG4\ÛqŒ\äU\Ý\ZØ÷÷Ÿ…öY	j\Í(£FxŠq8ý(n1\íGk\'¹²qéƒšF óŒóŸ­;‚yéš\ß9a\æÀc,\ášk¾â‹‘\ê\Ç=) $ƒ\ÉÙ˜º	<sM2XÓ‰Ž\0É¤ùU\Ë\í9\ÏÚ›!‘Ö¢’S$Ft¥pW%™\Ï\\\Ô\Â5XÔ’3\ÅN\í…Á<ŽO·¥@Ü…v2}Jwab	Ù‚y\'“\ïQ\Ë	´\ã&¥l	Tù`*®¡:Ä’\Ùa\Æ\n™-c\ÞÞ¢\ÆB1/ž½…g(b\Å_ªžs\ëItU›#9\Æ=ý*µÄ¢#Ág8ù˜zš\ÎW±,O<4\ä\ç>GûGÒ«\\\ÊÎ»[?\Þ8\êiñmH\Þf\èŠO5MÝY”X*l5±^á•·\ãh\ç­P™\Î\Óð’zžF `™$‘\ïP\íW\Ã0\'©%r‘\È|²¿\Âj•\Ë| \î\ÎN\Ð*\Í\ìÀ+FH\0žNk6ñŠ¢²\çžLÞ¥¢	\äÖ¢$\0\Äq“Ò›¸Ÿ~\æ•NIçŽ”_B\Åc˜®*¼\ï²?\ìŸ\åSJ\Ø@k;X”\Åa;g„\åU¨ºœù¸\0sBNH\ÏB+8KÀö©C\çFu8i\Z	.\îýjÂ¸šÎŽ9=*È`\Íf\Ð4\\Ž\ã\rW`˜’\éYHs\ì3šµ»qR\Õ\Ì\æ\èdt«N»{þ•™o)À\Í\\G’zSŠ\ès4XBÀ}jSÀ\Æj|ÚœOZ´„J3ƒƒŠ#\0Ž§$Ð´nù@*’+ž\Ù\éP\Ý|¥Oµ<0;ZŽ\à\î\ç9§q¡¨\Ä\ãŠY\×Ì…×³*58©	\â²{—c\Ï.H†y!C\Z–\Ú\âhNs\ÅV×ƒC«Í´w\Í0J\ÏÁ\É5Ô¢šLú\ZSn7:m+\Ä²ªnœW i—!ö\Ù\Ï5\ãšLm\Ö[]Ï‡õ•\än\rmJ^\Í\Ø\Ý\'8\ÜõH¯–A\êj¸–I.<örÒ¹„\Ô\æ¸p±¾TWG!	\ê+yÉ½P\â\Ò6’órƒœQXi\r\È\'ð¢£\Ú2>Gµ¥\Ær§µQ¹½ŠµN¸\Úð@¬Ë«ˆ\ä¹	Ž~•Ï‡kš\Ìùy$\Ë2F\"OzÈ™bªÇŠ\Ów`öJt·õ®\Ø\Î\æp—BŒ\×-\Z\íäŠ­l^i‚…$“VZ–Q\Z.I­ý3JŽ\Ñ2‚ç©©«YA]•5\Ún–±\0ì žµ¨\0À¢0#8\Å\Ä.2+\ÍW›\æfb†\ÛÀ¨d•ŽOji-’r1Q³’„c8­›\ÉP\\ö¦9c…\0i¡\Ûo^O\éMiT)\\u\ïI²FËµ\0$‚MA$Œ£9ôL\Û\Ø*ŠcE\Ç$\Ô\ÜCD/s B\ßx\âºH#H‘QFFÒ±ôx„“\ÉpF\0TV\Ølzb§›CH.¢‘€Os\Í3\ÛÖžy\àS2rN:þ•›f–˜\àñÖ¢ \äÿ\0x\Ó\ËqŽ¸¦}\ÒW“‘\ÍJ·,\ÃÙ›pc\Æ~f†?.\æ~=*	wcŽ´\îK\ZNA-Q²òq‚¥,\ØG&˜†\ÜI,{Rv\Âwp>óž9\ëMgPŒ\îI\ão®ieP¯N8¨%\Ãu\à=k5¸\Èf˜m	\ÍszÎ¥²\ë\ì˜|\ìó7\ã\å<ž¿\Ån_Ncd|õoA\\¾¦\ZI7¤)ýkx¸¨\ë¹7*‚f?6NÚŽ\á\ÕUb\\€N\æ=\ÍNŠ\Ñ/š½c\ëY\×n\\œš\æ•\Åad‘ö´|\ßÊ„UHÙˆÀô¨\Ñÿ\0x²q\ÔÒ«\Ý<ˆ$ž\Ô^È¤ŠrHe9@s”\Zˆ;\"©q‚½jpQ´„|\Ä\ãR\êa\æ6\Õ¤¤Š·d,ý³œVuÜ›Jç½ªÌ¬Oô¬û²d”ÀTZ\ì´B¬@ú\ÓÑ¸¨e\Ï|qNc±$b­¢˜®\Ø V\'‰g	§0$\å\Ü/õþ•°H$žµ\Ëø²pd‚z\çùmIj8+\Éª\Çó«¹8öª\Ë\ßÚ¦R•\Ô\Î\Â\Êw«	\Ôfª\Ã\×\ëV Ö³be¥S\ÔUˆW5C=ºU¨¹5“fR.FOõ«Q·\Îj´kŸj±\ZŒ€:Ò¹\Î\Ëh\Äñœw©W\ïu<u¨#ùy§—\äsZ)Ø†Yó2üt£†\É\'€:…\\7\0ö\æ¤/kDÁÞµ@ö©_o~¹¨˜\ä‚8¨¾¥!õ 7<\Ògšk\Z†	œŠYc\Õeõ5­\Í\\ñ”u\\\ãµb¬+¶š÷Q\îPŸ¸h\îŠü\Ù\æ¬Z^H·*ÛŽ3X\È\å\È\nkF\Þ2…I=h’²:#Z\ÎÇ¥iš¢\Ç\n0¥i+‰°2‡\ï0X3<¡T£½i\Z’’²4º\êw0ki\åñŒ{\Ñ\\¼sÆ¨\r²\î_4O¨n·\r*·YIŽE>7%Ž\á\Å(•wR+–OmÏr‡Œšc\ÄmU\äÔ›‰`\0\É5va˜rk±\Õ\åFek9aù\Ø\Çô­\äý(kŠC„‚s\\š¤®\Êlq ô¶sŽ†‘\äÂ€AúR&0^CŒikŒ¹$P6Xœqž\Õ3¾C¹?Ê \\¹\É„\Éb•HzSeùÀ\È\0Rn\ç“Mg&0Í’J†\ÄG.Cgv20*	J vI8ÖŸ,˜|;\0O\éM²„M{\Zc…ù\É57\ë(E½º!\'“õ«Hjh\à|£¥;vß»øšm\écu \â799¨ùû½³N\0\ä°<öö¹U<ú\Ölm$\à/=OÖ˜Fzô\'ó¥w*{dSU”cq\ä\nÉ¸Ž\Ã$·_\åQB¯&¤ 1,qQ\ÊÁrÇŒš¤\Ø\\†Y,Pr\ÛÞšHÚ dñ\ÍFó\Ó÷¸÷\"œ\ÃH_˜q×®iI€\Ù\Ä9\ä·$ú\n¡%Àg$s\Î*[™ò¬Ã“Ò¨Lå¶ªŒ\Æ=O­bÞ W¾”§¬‰ˆ\É\Î€?\Ï\ÔÖ…\Öd¸\Ü\ç\n8Ç¥dM6Ar\Ø]˜ˆZA\æ\Û*ª~lõ²\Ð4ó´„\ëÞ­_6\Ò\ãv˜1÷>µ_2m“\ÊQ–G¨\r\ê+gUÀ¹ÁªR\ÊZBAûšœ\æ8ƒ7U^GÂ«’±\ç=ªn¤REw%qŒŒZÎ‘Õ˜•\ÇLõ\ê\å\ÛùHX\Îp}kÉ´\0x9\ïE\îRDwn¡\Æ:/óª2¾\Ü1#=ió\Ê]‹@9Ç­R•\ÎBœ‚x«Œt4B«\îq\ß4ön2zô\ÅGg¸\éK\Ãõi0b·\Êô®W»ûf¥3¯(\Åú?Æº\Ýfó\ìv\Ê.\êx\Â Á\×Uõ6¡¥ˆ\È#\×58Žz\Õt\àTñõ­\ÐXQ€*\Ä]y\éP\Ä7b®\"\n\ÊL–\Ë1\0W®3S\Å\Ãf¢…x¬F€7ZÉ˜É–\ã9\Çj°§U\â\É\\zU„ÀÏ¥1dŠüŒƒ\ÇjQÀ\Îyô¤\Ç$“\Æ3B\ä\r\Äõªk±\Ñ1Rg’}*¸ƒ\Ç\\S\É\äž\Ù\Í4À—#®2EEži	\ã4\ÜúÒ¸\Åcƒõ¦\çÞ‚}j2\Ø\"<ûÆ¿6¬q\Ð-`¢\íl“[>2›:«j\ÂÒ½:K\ÜG«G\áE\è\æ\ÇÊ£“ZlÃ™5Ž’`Š°—,)J\'L,µ:$\Ô^.ùj\Ô!HTŒk˜ûa+‚x¨0p\ÊN)BŸ+¹´«]YC\ë/+\É\çÒŠÅŽ\é\0O4V\Ü\È\Ê\ìûŒK´ö¦ˆƒI¹zš²ø\ÇSZvVûP×‘ó;Žµ¶Û‚Üš²F\r<(\àô\Å6WP¹õ«JûŒil3Q»yn1L•\Û!W½3~\ì°l‘\Å^‹`•\ä~5“\á€Q’)¯09A\Í@\î\Ò.\äÀ\Ç›w\ÜW%2Õ±ƒ“\ïQ;e‰\Ü@þtÖ‘V!œ’95UÜ»\ïf\n§¢Ò¸2Ä²p\å$\Ôqòý\ì\Ð\Õv™\Û$„­@\×^f/È½…;%\Ä\å¤\ã \ê}kk@¼¦¸nKð>‚¹¶c3…Aó1\Æ=+¶³€[[G\èŠ\êh\ÐqÜ¶ƒ\0¥Q¿Ž@\ÐN\0?þºwa\Û<Vm\ên€–\Øzš\Ïl\çR—88\ÆI5g8\ÆAïŠ€cr’Í¹‡aL}\Üp)Û¹f\ÇQ–\ä³c,z\nd\Øs\r«´\ä\×ù\Õ‡3Œ	\çð§\ê7-k\0pŽ\ì\ìG¿Ò«\ÇÂ’q\é\ß\ëW(\Ù\\–‰~tc€œzÓ‹‘—\'i®\ÛO\éýj\å\Ü®@PEc&R+³\0•À\Ïüj¡$—<dsR\ÌÈ­¾RNO\"¨ùò\0waLƒ?JŽd[É€f98*rOô¬I\Épp	 V…ô«\Zªžü\íY2N\ÓNÌ¸0(æ¸¬AvÙ¹¾lœ¶? )RD‰s½¹#\ÓüŠŽ\è\î˜mbBœýMD¾`q÷ŽNk5;h4…º—x*\í=Iâª³yŠ$*ó\íR¹Í«o\Þ;š«w\"¬l9\ç…÷¦¶)®]dw´qY—z\'\î‚zU¹ˆI<\ÖeÜ…PŽx\â­&ŠH«+‚G<\Z§,Ù“>‡ŠY¦Á8Á\Ç`\äõ=j\Ñv%\r·Úž§÷óQdn\Çži/.V\ÖÝ¤€r~”F7b9¿\ßy“Gh§„ù\ß\ë\Ûú\Ö|\ç\\\\=\åÌ“¿Þ‘·}=©\È8â»’²±\Ù\Ù¨\0ö«1Œöª\ë÷†zU¸õ¨‘L³’«‘÷¨¡C\ÅYE\Î1X¶f\Ù4C§U\È1$÷\éPC\Ïj¹\Zðq€fc&J‘€XDdt¨\",H\È\àÕ•\è}hHÉa€i¹\Ü\\ži\ÌqœsÚ›¸ƒZ\"IPq\Í\r\É ¦2G¥+¶1Š–€`u\Í!lcƒ\Í7sÚ—#?J›€„óŠŽV\Å+¦«]I¶6cÀ4.À‘\ç&“\Î\Õfl÷\Åd®sW/\å[‹¹Ÿ=X\ÕL\à×­h¤z\ÐVŠ$Nµ =¨Cbœ¾)Ø´\Ë\n›Zž5Uf\ÍUIqJ\Ò\Òh«—&:\n*žh©\ä´?@¬-6€\î2OJ\Ó89\Å20 ‘\éÒ•\ßn	®Ku>uHb«JFÓ†¬I\'T!•øPs\ëEõ†¥s*¨Ž=\Ù\îE:dŒnÝ9©g•A\É\ÆGZ¯<û\Î\Õ\ÈN¦Ÿ1#’]\Ýó¦NY’“ŠdÚ¤€	\íU¥¸grŸx·Ri=@t³†]±ªÞ½MW’UóB\ã;GsÖ ž\áRA»\ç>…C5À‡2|»›\î¯SQa\\µ\çpÁ°™\ë\íUM›¶ð‡óª\Âv¼Ü™j†iZ8\Â\ç–\ê=)¶\ì+š\ÞƒíšºA1€íŽ•\Ü\ÇÂ“\ÆG\å\\\çƒl\Ñ-%¹\r+m\Ý\ì+¤\Ú:\0:\ÒF°Z\0\ädŽô²žý\0\à\n\\\ás\Ô\Í4úŽI¬Ù¨\ÆRA\äq\ÉôúTNø;F}>¾µ+p6\ä\0\æ¡,Ë·=€÷¥q26vm\àö;Ž;ûRI’€\nþ¦š\\€€wÛ©™fù\0SD62\äyŠ»½\ÏùüjV“Š’nXÀ•T/Pz\â‰M½\0Š`\Ð\à`zóU¥u,ù\É\Ú9’\êb³\r¬2Z¦Ì°D\ÎÄ—vô\íYI\È5	€uˆ\ç8\Ë\n¦òï±\è8¨®Ùžw”\ÅG?\áU\ï.USld$\Ö\n\ïQ”%‘n.\åfrN=T’8\\\Ï×šš%H¤]\Ã;¹#¿z§+”\Ä\àœý+[\0\ØrrKr;óDó˜÷\0A\ËqGš$òò[1÷ª’¾\ç\'Ò¡®…$5e\\’z\n£{3ÛŽz\n´$‚¨\Î3õ&³.\ä\Æ\é;v«¶…\'—$·E(¦³.¥\Ü\nƒ\îjk‰I÷\ç5žÄ¼‡Žõ±IY±’v©¥*ªÜ“ŽõbVT@==º\Õvl\Ò\êS~˜5\Ïx«RÝ¶\ÍO_™ý‡aþ}+f\îñl\ídšC…Q“\êk„–gº™\æ\åÝ²k¢Œ:²\éF\î\ìv«¨Pw©\ãþU³:‰QsÒ¯\ÛÇŽMU·L\ãÚ´¢_”V3d6Xqœô«1¦}µG3õ«±§õ5\Ï&e&Ic¿AV#N¡8¦Ä‡#“Ò§T\é\ÇCB0lxP€zÒ¦Xð)\Ø$\äzbœ–„\ã’*,Ü‰cûg5\æœ\Ä\à^”\Í\Ü\ãJw\ÐB¨Ù§1\Ï#Ši?1\ç8¤\'‚;Š«±Š¤r)™\Ç\ÓI#šE$óšBc‰À¬½f\ãË±™³\ÑMiK‘rþ*ºòt\×\\ò\ÜUS\åb ¯$pr9.\Í\êi¥zNM\ãÖ½„zˆpaÞœ$¨óE¸ó!­øv÷\ÄW\\\nD`ü\Îz\n‹\Ãþ¹\×\ïVP\í\Ï\ÌÝ€¯wðÇ†a\Ñ-¡¶…«Z\×9«\×\äV[™\Ú/\Ã=&\ÞÁX¼\×\êYºš+½K$]\Ûp;\n*9—c\Ïö\Ó\î{+»®)’\ÈAûÇŽµºª“qÖ¢-¿\å\É\Ûüë‘™Žyó†\É5\Ê\ÂM\ÊAC\ÅG3\ìÜ§\'ŒU)%e \É\Ç5M–•Ù˜œ\ÐUG‘bVgm\Ì\ÝSo,\î*\0=‰ª\Ó\Ê\Ã.uúSHLžw\Â%”õè£­g,+\0I\ì)ó\Ü\ï\Ò`–\àÂ«‰\\ª\Ôô¡\è!\ïµY\ÏúµV˜!;)\Ü;zSf¹\Ô(\ÜóY\æ\êCv[q`{z\Ô6&O5Ã´\Å\ÕpJˆM#e‰\Ë9Àª²\Ý7Ì›ŽIû¢®øj·\ë\Ö\Ñ8,·Ÿ@5Ÿ5Ý„zf•iö->1‚‹\Ï×½^UùI\'ŽƒÞ¢BrF;SþPõ9üª\ät$/,\nô\çaKÁVÛžxþuð}q\ÐZp\È^=+&Ê¸\Æ8\Ç|ÿ\0Öª\Î\ë¼¼\Ô\ÎÐŸñ¨\âÁ6û“K©,c£qüU$\ç*¤Ž\æ¤r¿6ONŸ­Fp[a(\Ã6?2X\Ùâ¤œ\01\äC¹”Œ\ÆÏµ6iHhÀ\'?C)\Âô=ñE´XÊ¾pl£×½P½¹ò£vû\ÎÇ \ÍYf&7\Ç‘ŠÎ¿‘UT±ÝŒùÿ\08¬\ÚQr!1»r\ß3zœ\nË¹œ4f00KøVŽ¥*(%G$\í\ëZÃ¹™–Ff<õÇ¥BzŒt³\î\î¨lÿ\0:Íü\×e$„-’jÁqóa˜b†©4™W%‰\é\éZ\r¼™Bûñžp*°ub[°\Å,¬°§\ï’;\Õ)$©nž«5¹hwúµ\å¹j\Ì\Ô_	€A\æ­\ßL;VU\Õ\Â\Îr\ÓÖª)¶RE¥c\Çñv¨ð\"P\Ìy==iˆ»”p=MC<¾cd“j\Ð\Ò\Ö$›œœTa³’{SY\Ãt\à\n¡«jK¦\Û\\y\Äk\ê}\n¨+»	+»#\ÄÚ‘ž\àZ!ù#9vôü?­d \í\ëL»nbK’Oz•>¼\×rVV;#+(\ÅNŠO\ÈPµ]†.¤\Ömƒd\ÐDšÐ·\\}j¬	’i\Û\ÄTf¹\æÌ¤\Ë0\ÂH\Î:U\Èb\ã\'ð¤¶M\Ãš¸©•G^¦±hÁ\È`\\8\Û\ÔTªû\ÓUpA=\rH¾:\Õhd\É\ÅG#\ì\n3špbGJ†C\É’zRz\0\ä\äòEFGLñƒO\Ç\È})‡ZiY\0ƒ\ït¦\ã$\æž\0˜O\\zÐ†F\ì:w¡ri¬\Ù\ãŽ(“\Å;I›\nsÒ¸?\Ý\ït…O\ÍvW³B3^k®Ü››÷9\È\n\è\ÃBò¹¾\Z7•\ÌñE9G^‰\ßqhh\Ú<ú\Å\ÚÁ\n’3óÂ¡\Ó4\éõ;¤‚$±\äúW³øK\Ãhöª»A”ò\Í\ëJ\æª¨/3CÁ¾‹IµPª\'MvZe£4†Y8^Š*;`‘\ÍkÛŒp8\ÅcRW±\å\Éó;²ÀFÀ\ÇŠ¬o‘I]ÃŽ(¨»\ÒY•ñ»\n‡q\ÚwUO­5ˆ-\ÎþuÌ‚$!›\'=arH\ÚE\Ü\ìFOO¥W.ª·\ÍÀ\ÍF\×ƒ\ã;\Ï\éT\Úf\Æ\â\Çw©\ïNú‚4À\Ê7¶0*?´K2²ª*\ã\ÇÒ«Yd\ÞÃ¯L\Õk‹°&#w\É\à\nw$µ=Ê„™À¬\Û\Ë\Ùm—\0Û½Vº˜\ÈL€\äŽÂ¨\Év¥I,3\ÓÉ®z•,\Ítd†+Ö¡k™|°B\ã<\Ü\Õ).U¾\ë\0«J—k€Aü\ë\Î\â±(¸;Žß—û\×ið\Ö\×}\Í\Ý\Ñ\ËQ\'\Ôòk„‘°KÖ½cÀ6b\r\Â\í\ÃN\ÆC\ï\éUGY_°\âµ:@F3\Ó¥” \0d\Ôe¸\Æ)¡¸\0sZJz\Ø\Ù\0’qžôðNó\ÎHüªS·9<\Z{I\Ô\0?\nŽk”†M÷[$sš®P€@nƒ“\ïRK  ¶8\'\n=©Œ\Ë\ÇÍi¦!¬¸\Æ9æ Ê©#¡?ž*G¼Xò{{\Õy¶—B\íÂ© {\Ñb[.\í˜,n=ê¼‡lh§8\\õþ/Z&” \ÞFsÀ\ÍRy\ä1n `SVŸ`\á@vbA\'\Ð\Öm\Ì\å\Ü\í]¿8ÇªW.”Ž5þ›>µ›q#2¶\Üd¶\æ\'Ò±©+F^£8…K6g5•vq>rI\0\'šµvL®\Ò\Ê\ß\ê\Æ\ìU\'˜o/Œ&\íÀž+:{\ÄWRˆ\ä2Ho—Ú«‰@¥$M6]Ó¹fl³Ÿj§t\Ç\ËLò+K»X¤†\\\\rÛ²[¯½5\ßj\íSŽ:ú\Õ}¸û™#©\'©4\×>X\Ûfˆ§±v!½™\î\Ë`Œœ¤V#\Þ7\Ú\Z5\\\à\ã®?\ZÒ½•NÑ€:\ÈvE$\'Nþõ\Õx\Æ65’,\Äp[&«<…Ž\Õ;õ¦ð2k+\ÜM‰q<v°<’6I®.þúMF\é§|\ÑWû£Ò®kú¡¼—È‰¿s\íüF³\0À\×Jª\ìÞ”,®\ÅQŠž5\É\ÏZG@*õ¬9\Æj\Û5n\Ä\Ö\Ð\àdŒb¯D™\è)#Œš¿imóc®yH\ÊR\ÖÜ†\é\ÍkAmÀ\â’p0E_‚1Œ\Î+šR9\å Ž2\0P1\êjtS=Gó¦Ÿ”¦žÑœŠ\ÐÍ±˜\ÆC@?(\ç\'½H\Ã$ƒ\Üv¨\Ôg§4\Ó%#iÀ\Æ¨¶«9<\ãÚ¤r¡NOJ‚3½\Ãn\ÇjW\Ôd²ž\Ëß¥Wl\äT\ÜòÝ‡\éQ\â´j\ìh‘×¥@\íOa´‘\ëQ¾\ä\Ôõ j6“j“Ng\È\â©]M„*\r5¨#3\\½\Û;g+\Ïds$ŒÇ©5\Ðøž÷q©ã©®tu¯GF\ç}\Ú$Š8©\ì\ìe¿¸X!RYŽ>”\Ø!i\ÝcE%›^¡\à¯\n­š,Ò®dnOµl\ØU©È‹žð´:TÌ™•ºµw6V H\àSm-WŒÒµ-;£8¬§4´g™99=I\àf|*Á\ä\Õ\×u_”˜\Ó$K\ÎÒ V/!\ã×Ÿˆ¬\â´Ü”‰\ÄC\äV#‘Eyþ\Ú~f–;G½±·õª—Žw(\çý¢:VS_Æ¹ó$ ¯=j6\Ô\Ò@Xn Œ}k\Ó\æLÄºÎŠ£“Ž¾õZ{£´¶\ì\è*„³\â5\ÚB\ç©\Ï5Ni€%w’¸ÉªK«\Ë×—’Lª\0\Ù\éY¦\ïj»;\ïÁü\rWš\á]N\Æ {š©3‡Œ)|¼w¬\ç\'\ÐV%óJ\ç\æ\ÚI\àvVW~ˆpS\ëM”…ÁÂŒu¨M\È)»o¾k’Kù˜\Å\r–%°H\íNF,w9\0‹U\Ò\ã\ÛHÒ£3ª1lò}{V’O@±£	7P7,B\ß&½\çOµ[->\Ú\ÕQ„•xo\í¿´üWa,‹\'˜\Üv^k\ß\æ\\\0\ï]xo…²¢ˆ˜\á°:ŽÂ¾0A#ò¦¶l\æ€	\ë\Ó8ü+)\ÏSD>Nƒ¿°=\é¾pó0G$p)\ZM¼¨¨ˆŽÞ§ô¨S\è†Ç³(\'q\àv¨,´¤P\í\îOZ\å;Ž@3Úº ´%À\Éoÿ\0Y¬\é¥$S–cù\n·)\ç\æ#!	MÂ’]†\Õ\\g“TÐˆ¦Ug%²p©õ¦NTO\É8\'ž”³\È›‚\î\ïAT®¥\Ëy{x\'Ÿ`i\Þ\Èg˜»³³lú\nÉºŸ\0Å»\ÈqŸj–úWû<›ð0Û€¬»ùŠ\ãfr\0$û\ÖRm±”®&I&uÁ÷\ëY&vù·|¡³·=qV‹lžHSv\à7`k:@¥\nƒƒ\Ï\Ì}©:v\Õ‡B3–$ž	¬ù\åv!A\Ý\Ï\'°©&”\ÆÈ­\Ðò5NiH;zžŸJ½õ)	5\ÎÏ•HÀôª3\Í\æ\É\ÇSžôÆ™Cž¤Uw“;Ž3Úš‘¢C.®	R}k?y\ägÿ\0¯R\Êû‰=Oj€ŽMV¥!\Äñßš\É×µO²\Äm¢o\Þ\È>b?„‰«\Z–§Ÿóƒ!\á\Ôÿ\0…rRH÷´²1gc’MtR¥ÕšS…\ÝØ«\Ï\áN\Î)\0\ÅJˆI\Ð\Ù\ÐKo\â=+N\Ú.p3U­\ã\Ú=\Íniö›™I\éX\ÎFrc\ím°pp9­‹[U`	©­mF\Þ@µz+b#\è=«™\ÈæœŠ\Ð\ÇÀ\ã½ZDû\Ì:÷ö¤†#ÓZµy{õÌ›\"¼ŠkGƒ\å\ç##žõi†uú\ÔR.0\ÝsT™,—ô¤µp3Ÿj|«\É\ç§\ëP¸o¼:=ª\ØvSÓ•\Ç\ëLDM§¨¥“\0Œq\Î{š@\Ø\0\×;~ð\ÉXö*c»<Œô©\\ªö<ŠŸ©=k¥;\r ™\Â÷\ëU˜\\\äS¦e œãšŽj®À%“j“Y7÷!‰=ª\åÄ¼W5®]lŒ¨<šÞ”n\Í)\Â\ì\ç5ƒ=Ë·l\Õe\É`\0É§:“\ë[¾\Ð\Íý\Ê\Ë ;\ç\ë^š´Q\ÞÚ‚:xd¶Û©Ó“\Ó=«\ÓmV\ê±/\Þ\"²4ø<¨–5@·g\n’_#Šã©‰\Ö\Èóg\'7v]‰˜€õ\ëZ\Öym\Ç9\ëYPr\ãŽ+jTŒk‚5T§w\Ð\Ê\Ä\Óep9¢\×—5Ue–Wn\0¥Ia,\ÆyU\n½­(G\ÚÍ·°\ìiF°QH\ã€M¿²ˆ\\Èž\éKÝ–=Nj³jXbBH\íÚ¼CJøªiŒ±\Ýb\æ!\Ç\ÍÖ»-7\âF“©`¼žLŸ\Ýn•­L\'X•*2Ž¶;¡¨‰\Þ\Ç#·LTR_¬Œ«\é\×Ò°\ÓSŠ\è†Uenr¦œ\'U#9Á¬`¦´lÅ£f[€\Ã€\ÅWžbP/\0wõª\Æ3p\0¦€$1ÝŸJ\ÒQ\ÐVqs³\å\0óÖ«‰Ô¶\Ý½\éÍ³99¦7– \íú\×\é\ÊLdr\\¶C/\Ý©’\\>SÖ¤c¦\ÕZtw8Hm¥|ÿ\0u	¨Xv÷\Ð~\n\é¾n¡{¨9\ÊÂ‚%úžO\é^·!\'vx\0Wð§G“Fð\ÑkˆŠO<\Å\È=@\è+®/¸±\íŸÎº\â¹#\ÊRØ†I\ãõ§žT\01ŒMn\ç=EH[\ç¥pµ®¦ˆ†m\ÎÁW ´ª0»3É¥c“ž™\èv\Ôu­)\ÃQ1¬Á\0žj)*\Ã$ÀÏ¥+œ88\Î\Þ@¨˜…,x\éŠ\éD²´\äy¡Ga“Ud\r\æ–<ƒÂ¬HJ‘ºº’‚¨´’¸eNj›&Á<øR½	?—ÿ\0®²\å”$&BH\ÉéŒ“Š’IHX’@\ÈõF\å\×¼\ÎUr©\íX\ÎEn\îcû\ÇÀ9|c“\è+ö\ä\íE\ÞIo™½½ª\Í\ÄÀJ]†X.Ð¾†²o$\ÚÀ;s‘Úˆ5m@a|‚I\É÷ª3Íµ”d\éRK\"¬I¸\áWh\êÞµ,Œ\ê\Ù}ˆGNÕ­\ï±i´¡™œ°\Î3œþJy€R2r\Ý}hy0Y‚ðO±U\æ#j¶zf«¡i\ÈD`\íô\æ¨\ÜK\Ï4\é\ç\ÜN0\0\íU‰\ÜsE—\Ï\êµõ\âXÛ´\Ò\éÞ¦–T…Ý‚¨\'5\Æ\ë:³jSar!O¸?­tR§\Ì\Í!fEuy%ü\í4‡“À€ô¤Ö ˆ\ä\Z³\àWS\ÓC¢\Ö%U\Éõv\Þ\r¸b2MEm\â	­\",@¥a6D™%¬\r$€\ãŠ\é´\ë@1\Æjže’Ž+¡´A\0XJW9§>„¶ðf@=Jµ·\0öÊ¤‚79\âŸ<D—«šZ¶V†09\îjTQI\ÎsùRÀ),7>”²#\åÁ nýg¶¤\ÜE`	Á\'4KD\'ž:\nX\ÛkaW ø\Ñ(ù‚±#5¬@¬A\Ã\îPJ¯\åQ1\Â\ã¿ò©\äk…\'º\Õw\Î	`FNi¸\"Â„$‚OAU•IpŠ½·z”8Àçš¨\à†5œ¡\ï\\bJøS\êx\çmI+€{T/’>S‘D\åq‘?Nj»¾3ÖŸ3Œ\ã<\ÕwaDQIo$Ú¦¸\íR\çÎœ€x\ÐkW^TM\Î	®I˜»\Ü×£††—:\èG©5¥¹¹cPNMzo‡4ƒH¡HÇ¥s>\r\Ñ\Ìó¬Œ:×«\é\Ö\"(\\œR«Q\Éò\Ä\ËW[ ·²Ø¸\î;Öœ`!~´Ó²0ˆ\ïVad»ç¿­pÏ–(\å[¤8#ŒUµ\Ã(<U&røUo©©\Ñ\Ù~R¹¼Ú¸˜\'d5\\P«\Ú9>\Ô\í¿(Àæ¦³¶iW$`N¸Eˆc×¥m\'b¬\"´rcŠ+©X›Ÿ$M\Z’EU(TñOžB¯H$^Òº=&‘b\ßS»³Á†\âDú5k\Ûx\ëYƒ\Ïó\0þõs\äTg9£•=ÁÓŒ·Go\Å\è\Ô·±\ß5:|P•†\r’\ç\ë\\\æ®X\Ú\És2Cw8U^I5¥µDº\ìzŸ\ã‹\ÍJuŽ+,\Ç\0I¯cð/€¯5eK½ZŽ6\äEU¾|]:µ]^53°Ü¨\Ã\î×¶Æ‰EG¥b¨Akc†j7÷LH<%£i\àtø2;•e ‚?–8Q>‹W&› g5\ngE©\æ¯E²´4\âC\n šF%Hb:\Ð\ìqòð\ÒH~¼W™^Z³4~o˜òO_JW<`dš‘Ž\ã¤uÀ\Ç\'\Ðzš\åŒy™w\Zÿ\0*–$ð3ŸzO¸¿78\ÆOô§0\ç-\ß=A \Â\à¶~n+¥+\"X\ÙdfùqÃ’;sU\ÛiM\íœ¨½I;\ÜWƒ€ªó\áG /Â˜¬2\ã¶ò\Ü*ÿ\0,VTò|¨\Êxl‚;ŸSW®I\Ãgh‘X÷7yx\Ñ\0\Þr\r;Ìˆ°\Ê\Ìy\Î0+*\æ\á[\æc—v\0²;\Ô÷`…c¸Nr+&i0¸’\ì@Â¹d\Ûc±Bk…•\ÛøC?\'\ÐVDò¤f9\áW©«’8r\Õ\'QÁ?B\éÚ´„.\î2¤ò„‘Õ²\ÛF:÷ªpe/µN\Åü€¥»™¤we$ŒcŽõe\0ž§«u¥¢µÜ­*¼\í<Â³\îfl»Žþôû‰³\îj¬„õ©yš\"&9\'<\æš\ÎI\àAnÝ…sZÞµç–¶¶oÝŽ\Çñ{jÖœ™q‹“²+kš\Ã^\Èaˆ‘\nž¿\ß?\áX\ìjF\é]\ÑI+#²1IY†¯Û¡cŽÆ¨@2kb\Î>52e¨#\0\ØVÆŸl\\ž:sT­!\Þ\ãŒ\×K§Y\0\ã¯\\\×\ärÔ‘z\Ê\ÝN}+R\ÅŽ\ï\ÅG!T:Ö…¤KS\ëYô9›&ò\Ç\Ýƒ\ß\éQ\Ü.b!z\æ­ÿ\0z\ÛN@sLsò–\Çó¬dÉ¹^5<œ\Æ8\íA÷n\ì\Üô§d2…<\0s‘J\áI\Â\ç¿J”„BU”n\'\å‘\äó\n¼\ã=ªI\Ü3(\0uµZi>R\à\á˜\àbª!‰ó}*»· “žõ)V\Ú²1\ÛÒ£”¯%WÒ´@„wO¥S•¹#¹©^V\ÉaÁ?¥BT™Bõ!kFô±H…¾V#8ú\Õió‘\ÍL\ìA$œž•N\â@N Î–¥$G#\ä\ç¥VšLjRÇ½f\ê7f\' ­£»•\Ù\Ïk\×fIvÀªº]›^Üª‘š­+µ\Ì\åº\î5\Üx;HU\Ä\Ò/=…z-¨@\ë“\ä‰\Ôx~\Ålm‡Ë‚t\Ë*crJ¥-°^I­T€ñƒ\Ðs_1^¼ù›L\á\ßV6M\ì~f$š»E”)bGjª©–$°À5s\æ \Ç5\ÇZ¬ÞŒ§¢±r\ÝW<û\Õ\Ëh–I€b@ª°&\ä+9Á\â®iÐ•ŸIb\0\äñYQ4\Õ\ÄÙ·\Z%½¸\ØÎª\ÌW\ÝÀ\ÓÒµ ´fC\îªW¾TŠ¤\0\í_Tð\Þ\ê\ìE\Ê\é\Ø2O\àqE>Eš\'+\åœv÷V~\Ç\Èn-Á$\ÕCSV&œ¬„\Znõzõ•\ÏBIjGL \Zy\ÃÖ™htQ´ŽA$œ\0:šú7\àgÁ\æO+^\Õ\áÃ‘˜\ãa÷Gø\×+ð\'\áañ\ròk:Œ_\è\ÑÄ¬8c\ë_V\Ú\ÛGinÂ¡QF\02g\"­\ß*‘$(5G@)Ú”¸^µZ{‚ªH‹}Ndˆ/¤TRG¡\Ò÷<û™³€j¥\ä­0-ž•s\Ãó	Œ\ÌG	…¬ù›W4’÷.j¿\ÌB“É§ðA\ãÒ‘UK\î\ë\Å?‡Q¸WŸQ^\æ1\Z¬¸%½4É·§sù\nyŒ(>•+¼°QÁ\Ï\áYÁX¦,»›q\r×œ\n‰ÿ\0½Œ‘\Î}\é\ï :ñÉªó;\äcw8•\Ñ{¢Y±d\Ã±\åGo­Uš]û#CÀµ:Y:\äsôª7\í‹jaI<Ÿj.o.y‡#`x\ïXTò;\Ì\ëÀ\ì¿\äTº\Ä\ìY`²\äŸZÉ¸w·\'hPY»“\\\Õj»\Ú#B\Í+\Ë\"–²\0øsY—“ÿ\0¤´A€e\çôZ±5\×;Žq\å\à{žß…dHÍ½Øœü\êi_v;šEP\Ë\ØgŸR+:w\"#¸õ­Jó*“\ær£Ž;ûVm\í\Ë1\0pAÏ°®´\Ò\Øi\\¸q~µRg(\ÅT\äô“J>¸ª776T“\éWsD„¹`^MRv,x\êh‘Ë±\äš\È\Õõ?!\rµ»fF\á\Ü°÷ª„™¢M\èŠ\ÚÞ­¸5¥³q\ÒGý‡µ`*m´\ÖQÚ»\"’V:\à’VEf\ÓT¬i¤\Z\Ñ\Ã2b·m‡E¬KoõÂº\r9w²\äVUY•GcoI·\ä1õ\Ítö(¸9\ÖN™	\0tñ3^|\Ù\çÔ•\Ù~\Ú1\Ãm\Èz$e\n\Ç/ú\Ô\Ñ`m\Ç\0sVö\0\ÜñŽM\r\Ù\Ü`C´d\Ôn#`9ZžD.\n…Âœd÷¨\ÙH“\0€\0æ±¸ˆ,¾\Ì\ÆiC|Û»-<G\å\ÈË»\'i¬\ÞC+‘\Ùõ¥»RPXŽ\ê9\ëU\æq½v\ç\×\ëWø-œqT¤UDv<Ÿ\çZGA,C1c’y¨g\ä$~U#cqäŒŠ†Wi8\íš\Þ(h«&W¶\0¨|ÖŽBjK·{€MR,6p0hh¤†\Îü&ª;iòIoJ…\Û\éQcD1\Ü(&¹\Þq\å©\ë]\ÜÁœô®&þ´\\3v\Ît\á¡ws¢Œn\î?L‡Ìœ1\ÇA^\Å\à\íÅ°št8++€ð6ö»µ•\×*½¶\Â‚Ø§¦>•\ÑRÛ‘ˆÝŠ\ÑYüÁB\àžzUÙ´ý¶­´\ç¸}UTd/&•„²\r‹òó\É\ï\\QÁÁ\Êò\Ôç§½Œ\Èt©jó`¶1R<eHP1ŠÕ(\Ï8â¡¹·\Ú\à“\\†14\n”¯\"+HŠÈŠ±¨Œ‚x\ëš\ØÓ•\r\Æ\ã&²\ám¹ÁÀ·5\ÔhVQÎª£k*€XŒ;ú\Öf\ÚJÄµcf\ÊB¨<¸†\áò–©\æ\Ó\ãºGûIò\Î:u\ÝV,R9U\ã>3“\Ç\\zÕ™V\Þ8šVgp«ÐšûHQ\\š™jpš“\"]Þ”A$ð=8¢«\ê2)»“¸\ãh\ãW\ÎT¬ùž¦¶g\ÈwPd\äUL2š¿,\ê	SP8V5\ë\'¡\ß	;jE\Î+¡ð/…\åñ_ˆ-\ì•	p2\éXKf\n ’N\0õ¯¦~x\é6#R¹÷\Óò:Q)XÎµNX\èzß…´;oi0Z[\Æ\"À­ƒ#zS\0`f¥	œžk	\Ìó\Û\"bq“T\î%NzÕ›\éü FI¬›¶xö¶s“B\ÔiŒ}ˆ‡q\â­øp+[\Ï\"t2cò¬H|«Áj\Úð¼F=-}Øš†ô°9icX`\í\ä:‘W³‘M\ÎšF—i\Æ8®)-D‚FPR}ýMB[ \îS¸žž‚¤b2\ç ù“U¥,\Ï<œûÒ¶£¸’¾A\É\ÆylzzUi[™‰p\0\ê*G\å	\îyÏ§5ûv¹-\Æ)§\Ø\nwŽ@d\ró\Ïû\"³.§\ÞTc\ÏÖ¬Ý¾„\äc\ïÞ²®n\0“ƒ¶>)i\ÔFn©ssJ “³Žrk9O,\0Œ\n¾û“$\ß*\î-T\Þ\ày{yT\ã\'{\Ö1¤¤ù‚\äs±Û€1‚~µš\ÒùŽY›ÇŸj³v\ä\Ì\Ùaµz\ã¡\ã€+6I6#ó´ð;Z8X¤Ep\áp[”\à\ßZÆ¹3\äÀÖ­]L99\êZÍ¸ŸsH¦*’4H‚is»‘×Œtªr\ÊX})ebs\Ç?Ê³\ï\ïEª\í\\4­\Ðz{Ö±M\èi}§~-P\Å3O÷Gø\×>À’I9&¦r\Îå˜’I\É\'½5–º¢¬Ž¸G•\íõ¦2\Ô\Åi¥q\Æ*\îYX­D\ËV™*&Z¤À†/–U>õ\Ôhñ\î8=s8\Ã\èk¬\Ñ6\Ü\îw¡w¡\Ô\éª@+v\Ú\á»\ÖNž¹\ÚxÀ®Š\ÍŒ\í\çµy\ïFy²e¨\ny\àŽõa8B¤ý\ìd\Óc“\0¥-ò‰\Î\ã‚*\\‰¸\Ör#ž”\ÆB\É˜qO“\04w¿9=¨`2HÇ›·“Ž§Öª\Êy;‡,>_j³#”u\ÆœUyB\")\Î[8¥•n$cŒû\Õb\Ì~™©\îYJ\Î~•ŽŠTd÷­b42FBr3?*«#ùrc\Ôf§¾órj¤\î¨2G\'Š\ÝAu\"²\ß8ªNøN:š’\íö\à†ªHFO­\rš$5\Ø\ä÷¨€\Îi\Ìù$\æª\Ë&ö¥mKH\Ê\×nü¨Jƒ‚\ÜW3eU\îM]\Ö.þ\ÑtW?*ñN\Ð\íMÎ¡\ZžkÑ£X‘\\±¹\êÒ¼¸P…\ë^F(\Ðm\'\'œV‡,E¥¬K´Ž+§·\ÃpÀ÷¥\'º<\æ\î\îHsp\É#!\ÖNC)\ÈÁ\ÅX	·¿&¢º„a\ã9~„uk4¯\"\è\Ú÷%„±%Jü˜\Î\ïzm\Úy›13ƒ\ÅOl•\Ý÷GlÀXðF\ï\\Õ©¹\Þ#œm-û\ÜaÀ\Ø\Ã‘\Åwz>ž¶°œ006ý\ïr+\Î\"¡(ydt®\Úuä´—\n¤#©\0t\"»2œ\"§vLÑ›n©\ä\Éd\ç\ÕI\ï¾G‰›ƒœÿ\0:†\âõ…\á(r\äp+#^¿	(†T3&I\ÎGÿ\0®º±X¨Óƒ}Œ\Ò1n.nL\Îs·\'¢ž(ª,\Ä\å¤\äõ¢¾2x¤\äÞ§Aò•\Úù\n±´\æPs\ÅRt\Î+\ë“:¡;«¿\Â	·‰|CIh!9<qšûF±Ž\Â\Ò8bPªª\0\Åy\ìû¥\ÚÅ¢¬«\Î\Ã$×¶(À\í\\÷¼›<\Ê\Ór›\'ilzT¬ÀUkrw5>N¢±“Ô‚­\Ð,x\ÆMP»ˆ\"®\ã’95~q†¬\ë\Æ$°\Ïj\Ú\ÐW0¯¥f‘˜6Pq]?‡þ%0’y9þu\É\ßp¤v\Íuš\0Û¤[‘\×Ö§šòõ5`ƒÖšÍ¹XcšFù¤\0ô<R\Æ†À÷¬^¬´\Ä\È\í\ç“\ë\éUÙ¸ \ägƒ\ÜòjYœ¬q\ã\'š®9\ÎyÀ\ÍN\ì²X²‚\ìJò\ç\Ëû¤rx8*\Å\ß\Þ\0ŒV]\Óo.\Ìw•ú\n‹\ê&S\Ôeù~foz“Ö²n&H®V&\å,sÒ­_ð\ç\Ô\ÖH&K€ÔŸ¯\Ó\ÔL­©³6\à‚9ö\É\éY÷²–\Þ\ÇA\íV.drA\ÜrN\ï\ÄVUôm§¯Z\Ö\èŽy<\×nËŒ³Ö¨js\0I\è:-Jùkv“¸+*ùˆ•±\ØñU5dR+\ÝJ°—;~µ,\îÄŽz\ÕIý\îõ\Ñ\î\îE´e\Û\Ý_Z\ç\ä-#rK7$Õ«™^g.\ç$š„]VGe8\Ù\\„®)\nÔ¤Sz\n»š\\‹h¦‘“ŒUŒS\0h¸\éPºŸJ¼À\Õy:U¦\'WQ\á\æ\ßj‡ºœW6ý+{\ÂlH™{š*«Å™WøûMqø\×Gl:“\\ö•ó*ç°®†\ÌžN3^l\Ï.L´«œ.Ó‘\ÅŽF{\Ô\Ã\ån8\éP\Ü;²lIŒ\Ü›Št”\n§8¡¸2{\ÔNOÇ¹˜\îBfù·qž1š£u VVIÉ©ð1J«q\È\Éõ¡2‘^\ê\\0~yÇ ª\ÒL\Ø,1€p=\êyA\Ï<Uy\0\ä``Š¥vR šWVa\ë\ÅE;–\å¹\'‘L‹–\É\è)\íE\ÇS\ÅoI¾¥¢ŽH\Ïnj‹¶\\úU¹Z¥!\ëW}M\ÉHv²µK¯\"lòG~F8®k^‘Œª¹âµ¥\ÈÖš¼¬d¶Y‰=MuŸ¬Æ¤\ÇJ\å\rzGÂ¸P³\ÈG\Í\ë^ŠFõÝ z½„R\Ç\ÆqZ\Ê\n€TµX9ò_Aö¨hòbõ%S’}+>\è\Î\àyn´œ¹½¿\Z´†^Ÿ7Z†+‡}Mm›iŒ‚\Ø\ÇB)Ó™\ÑB[šÜ¤iµømÁH\Çz¿`“\Æj®Ñ€¸\àU‹uq\ç®+*´\Ò\Ô\Ò\ÊZ›\Z6bf¸\nŒ]<Z\Ê\ÊV96Fš\æôøùH\È_\å`{Š˜Ÿ,\å@‰\çÒº0õ#tf\ÑZt÷\ï+²†bÇ \ç¡ôõ\Ê\ÎL³3H\É\ëÚº\Ûÿ\0õs¿ñ8\0Ÿ^ú\Õ\É\Ü.\Èü\Å$\Øö\é^6s&\áo2\áÜ…”ƒ—z*®KrIÉ¢¾Z\è\Ú\Çÿ\Ù','file',24152,'jpg',NULL);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sub_total` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrws2q0si6oyd6il8gqe2aennc` (`order_id`),
  CONSTRAINT `FKrws2q0si6oyd6il8gqe2aennc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (1,'XoÃ i tÆ°á»£ng',21000,1,21000,1),(2,'XoÃ i tÆ°á»£ng',21000,1,21000,2);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `districts` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `total_price` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`),
  CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Ha Noi',NULL,'hoang03.it@gmail.com','Hoang','Huy',NULL,'+84916190159',NULL,21000,1),(2,'Ha Noi',NULL,'hoang03.it@gmail.com','Hoang','Huy',NULL,'+84916190159',NULL,21000,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'freeship khi mua tá»« 5kg','XoÃ i tÆ°á»£ng',21000,60,3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image` (
  `product_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  PRIMARY KEY (`product_id`,`image_id`),
  KEY `FKbhddxsl8axd5io2wgkcoealn5` (`image_id`),
  CONSTRAINT `FK6oo0cvcdtb6qmwsga468uuukk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FKbhddxsl8axd5io2wgkcoealn5` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (1,1);
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_MODERATOR'),(3,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `districts` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `verification_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ha Noi',NULL,'admin123@gmail.com',_binary '\0','Huy','Hoang','$2a$10$eaywfhIHxT8M0jWZKhVKKucW6foBKFAK/byXFFcoK.s53SZhRrJOi','91098293',NULL,'admin',NULL),(3,NULL,NULL,'vini.vn@gmail.com',_binary '\0',NULL,NULL,'$2a$10$wY5lujNxUAmKj20urokwzOBHpnJTOEZBmvu.JP7dk3lpRDUzvIZLe',NULL,NULL,'viniJr',NULL),(4,NULL,NULL,'mailyhai@gmail.com',_binary '\0',NULL,NULL,'$2a$10$aNMeHMTRV2yEr4cQSymq0.wdv0Ni.LI6ZE7SmpdzoVZf4XgfIIVX2',NULL,NULL,'hai2003',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKrhfovtciq1l558cw6udg0h0d3` (`role_id`),
  CONSTRAINT `FK55itppkw3i07do3h7qoclqd4k` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKrhfovtciq1l558cw6udg0h0d3` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(1,2),(1,3),(3,3),(4,3);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'kiwidb'
--

--
-- Dumping routines for database 'kiwidb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-02 12:30:44
