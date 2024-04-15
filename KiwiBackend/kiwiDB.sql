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
INSERT INTO `category` VALUES (2,_binary '','Hoa quả đông lạnh'),(3,_binary '','Hoa quả quảng châu');
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
INSERT INTO `image` VALUES (1,_binary '�\��\�\0JFIF\0\0H\0H\0\0��\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 82\n�\�\0C\0				\r\r\n\Z!\'\"#%%%),($+!$%$�\�\0C				$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$��\0L�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0�\rjz�v\��\�Q�|2p\�%�q\�t\�\�\�66�\r����\�\�*X�[\�n�a��*xu\�k�\�(\�W����\�<;m����\0湍kX\�5|ç\�\��01��k/����i\���\�5�c\�\�<�x���BOM��#��I\\��>��[�͙|�}y5�a�>\�5\�\�Gp+\��\�$�\"Q�j]�Ԁ�~��|�|\�7��x���M�j�#ַl�h�\�6\�\�\"�]\�Ǟ�آ\�\�\�QG*G\�W��\0y6\�[?��=�R�\��+~\�\�\�}�\0� ǵX�\n�\\b��\�\�\�8��U\�\�r+h#,j?\nI@#\�\0U5�x\�7�m\�p¡۩\�,EisP!\�jTF�\�\�\�\�\'��X-\�Kݫ�Ҵ�H��cR��ǧ�\�e����Ԓ\�O$�ս\nG\�\�3P\�&θ��\�ᶵ�,}�,(ǖ�\�m�j��\'\"�]\�O\"��\�)$�cNK\�8�V�M�]pEg\�.�vTT@�\�oZ�rN7-Kx�X��\�\'+\\u,\�++�M.x\�*��\�dT�wqB�2k6�XH�܌W;T\�fr�%̛c��d\�p!OR\�S�\�S��\�2�&�UV\�\�e8\�O4ِ�K̡3ɬ\�.��sM��e����s]������oR{\�ح\�ُ\�Ufh\�\�j?iS\�$z�9*@\�+�MQ��r*�IZ\�u�r=�I\�c\�o��hD�+e\�n�ۧ\�]\�+\�z\�A�]�,�\�S!C�9\��\�\��\�n]!�K\�!�:�x\�>*\�4H/\�E,�02p�{׉ߖ�ͩl��{���I[H��>l\�{\�x\�Rs1����\�Kcֲ�4�\�a�N�HV�ԛ�py1��aްm\��Y�\�ʧ*j\r\�Uǌ�tD-U��ÿ�i\�\�3j��Z[�i$8�{\�\�>�\�Ң�o\�\�q\�5ׅrn�\n�\�x��,|/�\�ek����\�o4�\Z\��9ɨd-&{\n�nvF7z�.��΂��>Jn݆�\�aB�\�ܫ]Jd\nm$�6�\�\�\��\\{�3�>`{\��KW�\��\�L����\�կh��V\�+y� �\�7\���\0��\�j\���BI��\Z�n\�G:\nhݽ\�J����\�9��#�Es�\�\�g`\�i�B�g�~�[��H\�$\�?}q򓚱u\']��ʹm\�j��/B� \�\�\�&���� RI&���^B�\�)y�&|pNI�\�\�\�1\�\�bA55Hal5Aw(�2sڥcޱ�����=iA]�ԕ�\�K\�ZY�\�\�X/4��\�j+\nk�5k|ꭙ�8̵2\�U\�2&�հ�\�\�T���H�\Z\�Ү�`	�%B\� �U\�5dpp*��?J2���I�ȧ<Wci|��\�y}�\�F����x���1p\r4Ϗ\�e�i\�t=-.�f�\�Y\�PA⊫�=\�\�J𭞓\Z�F��j\�\�Q �\�Iu��N+:mJ_�Ê\�b������f�\�Z�iT�\�\�1�0Uf���\Z9c�5��4\�\�\�-mO@���4倪\�떱�A�ך]��\�\�HEb\�^]\�I�c\\\��\�5\'\'���\���\�g)ǽf\�\�[xrkʤ{�ֱ�jX�\r\�Mc<d�ȧFK^c\�.<p_!	���Ku#1\�\�C\�N\\\�\�\�\�\�\�~�\�ws�i����\�j���k��Z\�M�WZ�0\0[���7c\Zr��U8-[�\�|;�w:\�G\�\�\��=��t\�e��H\�`R\�H\�B��4?g\�0�\�Q�41\��;i\�\�\�\�t���c58�R����Qɾm��KbK�\�ҫ��Ss�j�\��\�Sw#�;LH&�K&I|\��q�\��k>\�ldg�Eh\�cm\�\�\\�,k\Z\�\�h܍Kys����+��[j��\�\���%�u�,ǥdM\\m\��SHͻ��Z_)N*cITV�9\'.��\�\�U\��!犳�HC�V[ɓ�\�\�\����\r\�j$���\����\���ωX=���m�nf�S�\�\n�M\�F�`K�&�/}�\0*~\n?�oJ�0�]7�t���6�\�`*��X\�<S�1&\�+%\'���o\�2k\�\�-tȄ6V�\� \��:K�~]�\�u{%-di:��Qkc\�|��\�QjZ�\�ߒGA���9��q]\'�<5�k*M�\�J!�9��\�\'�;Sd�\�\0�Q�U���iSV�<:�\0\�o�-e�U6� �R�&����CJ;ol惶Yx?�J�\n\�\��wR�eW��H�0Q�A�\rr\�é�k�ԓ�\�#Ý�(9\'�u�\� �g��E���g\�7�*�����Zƾ~\�\��\�Æ?\�W/��vf.\�~�;\�V�\0ڗ��>Q��EzfN\�ǥCon�F�\n1R\��Jcc��H�m#n\�\�(��v�AVc\n�SQȥX�\�\�wcG1���\�#\�n��*�Fy4��\0�\�SQ\�K�3�\�\"�k\���F�q�\�\�.\�e\',My�\0��Ci4\�\��m\�d\�\�\\sj\�G�J��C���Ɍ�\�W+zD�4�p;\n\�k\�o���F2\�7��x��\�Eee\�y{3.\�@d*:Vṃ�8�M�󻩬˩2x\�O\rO�:�{�9\�\�\�G3\�:\�r˃���\�X\�ɥ�Hd��\�gȡ�Ɏ��I\Z\�@�\�!5\�\���Ӝt�+�����\�\\D�\�zڂ��9���6�9�8�J�TMR\�4\�.���3^�\�)\�&O�t�^�,�\�ڜU��\�u)C\�ڻ/\�[\���+M\� ��|�*�\0�LOҵv�\�\�4�Վ/���V�´�>ؗ��\�A,�\�ujH���yu1�,�	ao�\�\�\�>\�Ȥ*�j\�_�qZ9���צ\�\"�\�)�S�����Nݜ�\�E��\���\�@|���ފ\�\�|�bP\�\�8���\�y�\"�ck\�4KrQf���\�\�1\�\�\\�sɩK�؜�\�t\�%HS��k\�6|�\"1��SVC��ƥ\ZL��\rtpZ�H8ۋ�-Ԗ`+�\��\�6M\�ďI=\�>M%B\�\�\�\�\�p�\ZΗ\�A��i\�ΘR\�\�T�\�\�\�zqT����Uu=M\�X�\Z\�,\�\�ЃkS\�\�\�ܡ����\�[�I\�\n�e\�%Ubpj�;\�\����T\�-\�<�:J{3�>.R\�Yk��Srڦ�\�9$ ��.��+�1!s_C�	��4�\�lWU\n*5\"\�_\r�\�\�V�Qks\�R�TAP;\�>�\�\�0\���+۷S\�\�%b�4�}*)W<�)�W�W�N\�\��Y�y��G#=*	�\�2I�\�8��D2g\�0�\�Ջ���\nǖc#cXN]fʷ�̤�X�1-\�h\�\\�\\)\�f\�#9©$�ן(�{�\�j\��#��{�\�\n��}/��\�ڙu\�mj�\�nI=o��G<�D\�\rp\�\�;1ª��}\0�F��\�\�\�H\����X\�3\���:�+k���ñ�\�ݓ\�N>�U�z/�������\\��\�<\�}X\�@�����P0\�Q���S��q\�5Zc�s�ң��%h#\�pNI��8]I8Ԓ\0�\�=MQ����\��驰lc\�c-���\�v\�`�\�\�N\�˵rT\���e\�\�fIک;\�Kc&b�)\�	��\�\�\�q���\�\�\�ڤ\��P�m\�\�cքI��\�\"�2\��Z~�y�މ��nz�2z\ZսU�O_��\�@�6ySYϹqg�xc\��~#�\�DGt����\�{�Q[�	\�0k\�\�\�4\�\�\�eh�C�q�}�\�<%\�|[��\�XY\�\�}G�\�WJ�z2͒�=\�2\�q\0�`�1\�wp�)���\\��1֙;5$�\�\\:�T�d��p�\�\�\�\�?_�6Yq�#j�S^�\�$��2\�;�\�E\�zڍ�\0�5}�\�C�\�ة5Mϙ\�K3�\n\�[�\��J)�\�\��E���\�\�bZ?^\�o�q�+��M\�,o��vs�<6խ����r�҆#��0���ˌQS�z�:�\�X\�bM7\\��MB\�\�^	@\���}�)�b\�i3\�x�Nz\�Fn1QI!\�XM���D\�(`y�S>\�\�\�9�W�;�zV��2�43uK�v�Ҫ\�+\�\�rsT��k�ʎy��\�vd8r�ԡc%N\�\�\�<-�\�n�$�3]Վ�8X\�+�ңS��\��� ;�m8�R���5-|�\�3eWҵ-4�ݸ�\�j孂�@(\�N�\�m�QN;\�%w�\�6ņ\�\�[k6\"T\�\�[\n3Vm��@`Ն�=k5J2�ܩ�\�Q�\�|�\�tW=�[\�\�؄=뢿�F+��\�{(\�m\\+7EUmA\�ĺVWg)�\�<�g�U��wY�c��%E�\��q</CeB�\�\�v�\�qA,�q^v�\�RsW-.�jAoeHǂGAY�9=\�19|�2�\�\��o��+\�-y�^_�\rw\Z��\�@�u	\�;Ev�_�\�P $z\�D0�j硅\�\�J7�u�<%m�f9m\�5n5\����\�\�\n�N=��i�\�\�\�V�T�s�x\Z\�ic��ӊ� r+&X�I\�{��\�KF\��/[��\�\�\�1\�P\�\�>fP\�ק�+�W�[	�,\"�xSP\r��\�\�j�3\�;$ѕ��i��!�\�Y�\n��3Ԅ=�M�(�\�\�J�fB\�ǌ\n�F��,f\�64�\0�H\�G�I��\�W|nl�`�\�SҺ)?f���5�AA�\��ܲ+c��\�SI��\�\�$FO�_��z馮}%=�p�@ʤ���t\����5n�F\�{�\0U)\�f�3\�4\�ɯ1\�Sֲ�ڜ�*����$�3ɨbӯ���?\�Eu��%�8f]\�;���P\0�\0�I+��U1}\"s6��ᮘ���84[`6B���	����$��In��\�c�w�0	\�\0�KkU�n \�\�Imn!]\��\�_j��v\��ʥ^��G�GFY�N\�QZV\�H\�$tnr<�O\�U\�\n3\�Y\�|�\�sK�n��yǭV��גOZ�Q��\�\�8S��\�9EjHO.\0\0�j��������,Ojh�\'\0�ڦ�\�z����o8<�\0J�嘐\�r>GP\�${\�i��˶=�t�_`��\�\�\�j�sp���H9�$��S#d� U+��\��88\�V�\�ЖQ�|�����X:�\�f\�+bth\�\r\�9\�ajE�8\�\rޡ�\�gJ\�.\�\�W�\�i|-�\�x��v�.#����\�+\�L�=G\�*\�\�5��+�6L�|O�,\�0t�C+/ �\�5V\�C��y5\�|(�\'\��wҧl\�d3z���\0x�]��\��b�c4\��b>z\�-\��\�6\�Y\��KvQ\�](�8\�S%e�|�����\�g�\�\�\��Ӭ��_��\��5�\��F�Ucڤf\�;TRJ1ך�\�\�\�͐2��;@�*�\�H\0��G98\�Und!��SZ*铫!�(]pѡ�\�\�\�o�e�\nOu\�\�ē\� P���\�El�)!�c�\��\Z[\�-ep\�ór+�\��\rCHc��X���q^�,�I\0\�+�I�0\�u>�.�$m\n\�#,�\�`\�\��<��\��-%q��\�Jz׍k�r^��#)��*vz��\�\�?JS,ۏ5\�\���\�\�ɮ+@�guU\\�^��\�1P�\���Wf�:\�X-\�#1\�G�]\�B�+�\�-$�� Wm�\�\�K�T�ִ���tZ�\�X�\0�\n�\0S��nk\�\�\�\"hV&,�\�g\�^ȿ�U\�j\\ʰ\�X�d�\�3�H\�t�kr\�)-�]\�W�\�JLf��O8��&\�\�0*�\�\�˱T�j\�6\�.=h\�\�/b*k�\�\�-�*S�H��}�3�>{\�<{\�\�Y-�\�ֽ�\�,|?n�b�\�\�t\Z.�m�[$QF��;V��B+��U��\�\���{�R4�`\0\0�e$��v+�j�e�ɪ\�\�G�=\�\�+:���A,�c �.0\��Up60��Roc9A\"�Ѷ	aY7Rn\�2�[\��9\�Y7��*�{��\�\�-\��&��\�q\�\'�\�ք�AB\�{W�\�m��\�/�0�2F\�\�Uz�ӋZ��[Go*�+��\�o5kp\�O�A\�5�|J�7\r�\�]b\�G\"nV\Z%i!Q���\�\��pu-7K6��n�8�%ԥ�\��ۚ�\��v�\05}���Fk\�þh�#СY\�]��Ϛ��\"2\�I�W5b\��\��\�}kn\�\�+U¨ϭ*��W���6zB�/&�B\0/�c�j\"��+�Sl�gQ\�݁�ٰ:�C? U\�}�\�s��3�K0A\�$\�\�>Ԣ�\���\�_K�27\�&\�_z\� ��\�Yn\�!�3�{S\�\�=\�!�O9��\��k6͘\�?)\�5Y��R��\'�W/�#�m\�\�\�S1V+\�Ys;3\�\�9�x��-���ΖB�Fq�T\�I�\\��\��8Ȩ�Yx=\n�\�F\0)=J�\�)\�d�⬬�\�K�C<�T`���Uv\\(,:t�nWs.�Oj�\�\�x1\�\�\�~S`#�\�W����J|d�bH�΢(0W=�\�Z&\�%ӱr\�\'<V�\�`T=T�\�\�۸ddV��Hm�drk;�R��X�\�\��}zU�a�1U\�q\�j�;�dl�3Ym\��e��w�/�F\��]\n�\�~��2>2+޼%�W\�v۟\�\�\�~S���\�����n\��~8���{T�\�V���+6\�R\�^\��8#��$�r���K6�UE\�؛iIt��WR\�A\�S�l&\�H\rҨ\�̣\�\�5���&�\�(OB�I\�P	\�$�J\�\nH�rH� u���¸�\�\0.�y3*�?\Z|�9u�\�2+\�S\Z�`z�\�_\�\�MmL�N9Z\�{\�,�\�9\�+t�4��]\�\�\Z^�>�v#u�^��\�\�\�\�\Zeݲ\���7���Y4�ޔ)-\�\�Q���:\�5\��\�\�[\�b�,\�\�\�Q2\"*�J\�\�\�Q\n�Mo�f�lԁ`�\�WV5�Y��;�).u|1� K�JN�M)\�l�W/+T\�\�W�V\nO�,V\�Gt�\rא=*�\�\�W<W�^�s�\�\�TlZ[\�8\�*o�C(�\\V$�L��s�ϻ�\�׃��\�jS��GN\�s�I�߾�W�ە\�;b�_\��FW}\�P+ޑ\�\�R\Z��Ȯ�#\�V\�u\�<m\�N�њ�`SMp�I%�\�,G�dR�rv��p\�6V��A\�f\�\�qڔ[9e6� ���\���E�\�S�\�\�q\Z\�+D��nQ�\�$ W+�Z� \ru�[P�\�\\\�\�\�wME+X�s�!�p\�H#�+_H�,�\�H�\�Ȇ�Ee\�!V#�GJ\�\�vf\�)��Med#ku��\�6׷\�̛\"\�\�\\�\�\�^j��\�R\�#w�Z�\�;x\�D�TzW]98#.wG\nD6�\�9��lcޡbs��-Ho��ߥF\�\�Nn���\� (\�g:�*\� �o�j�R\�Z5̟1�\�\���c�\�\�Pr\���\�[x\�5\��\�k�-d8\�\�a\0Q�\�Iק\�\�4�;\�\�\�\�ZG>�n�9��1\�\��H\\���\�{�\�\�b#,�d\�S��\�5m\�\�\nÜ\����x���\�\"�\�j��$���B\�\�LJ�\�u5z\�Ż�ֳ\�>a,\�mE\�e&؊��*\n�\��\����9��ƞU\�	n@�vb.=s޳\�kp *r��N~�\�͑�\�~�`��p��6p0G c�\\\�\�tf\��F@�\�$\�\�N\�s\�K;�j\�=+��JY�V\r���تO@l˺S$�q�\�q�[\�ϹG s�Ի�A\0�:�ɸ=I\�\rӞ՛hh\�a�!��\0\n�[ \�;��NI�\�2MCh\����\�\�?	o�\�\�س�u�G�\�\n�aN}k��i~m|F#\'\�C�a��&H��i�\�Ud�\nI=�UK�\���\�ڈ8\�D�	\�%����\0\�dp9�sj\\�~\Z���\�Fpjb���%��ۥPiˆ\�P=\�%�`���rkd��\Z%�E�	8��\\��\��II+\�\�\�v�Fsߥ+�=\�W�Z�H*C})w�ڐ�MiMw)1(2;UY��H\�z��\�+qК�H\�T\�bh�\���kOE������ܥ�)!��p��\re\'\�ޔ\�esԴ+�.\�\��j�3\��\0W�jf\�\"Elv5\�X��FA&�m\�\�z\�jN\�\�豷-���1Si��\\J�3�\�Q4�H$\0�J���*\0��#Y�i\�TY�\����Gf��H\�\�Sn.�n��\�k,�pe`��\���9J\�s>fk\".NS���~A�V�\�j9e\�dVΝ�\'cm(;@�\��{�Eg\�)��Dب\�c\�)�H�k|\�\Z�^��A\\S%|.H�bJn\�R\rfM8�*�\�\'+Ywޠr*d��&\�&�\n\���&��n�Qr\�N5E$l\�Ұ���O<*\�y\��L@�kJY$݀x���B\r9W\�e&rs\�\�`\�5\�x�\'Y�]F�2 S�F{ޛ\�_>���˰E����~\�\�+(VP*�\0\n\�s��iji)\'�-�Io�4\n�`R\� ri	\'\"��\�Ƴ~B�Fzs�s(\�9\�$��+\�Ҧ\�a%�b\'��\�_\0�sW^B�\�\�*;kaq(,2�r}ϥsԋ�\�\Z,\��\�Zy\�;t��w\�H0O��\'\0�T\�J\�\�+\nO�\�\�(\�zB\�`��\�\�\�\�Ҧ�pǿ&��1���p3�ryoAUIo,�\��\�Q1\�&2\�s����\�p�\��j�M\�Xsڠ�LE\\�����\�\�\�\�~�\�l\�\� zv���J\�\���3\�\�ױ�[\�A�&�\�\�[c1ヂ�Xtb<�\�1L��1l�\��*X\"�La��.Ns\���,V [��\�\�k瓊ϻ�2��\�\�4\'p*\\HD��\�@}g\�<��e\�8\�[��Ve`\�@>a\�X��O5۱l�J|\��]��\�s�\�9�\�;@翥Y��.\��Q���$t�r�BNn	bH�[9\�N3R\�\�5�ꋚ��\�V��\�>ǭYLId\0�c\���ɘ��z��\�\�.\�W\�U����\�3\�\�L\��\�mΰIڍ�y5\�M�3),�n<\�\'P\nH,*\�D���j��&�\Z�,\�w�s�y�\�!��E\�\�~a֣A��1���9o@��nk\�y\�[�S\�p��\Zv�\rM3�\�3T�\�\��$�\��\�`T\�C\�\�+cAe\�/8\"�\�\�\�<U#�\�I<\�qO� \rmI݅�Z]��\�v�\�GzBÐ\�\�i����t\\��\�j�{f�������Q4\\M�\n�[]�\��\�\�i=+\��\�ܶ\�<��\�\��\�\��\'����g�C>��&��\�K(\�\����%�a�\�\�b�l���\�\�37\'���\�S\�J\�\�ƨ���\�[j)#y\\`W.�(\�z\�T��\�v�<יR��\�L\��jQ\�\�ؕs�Uw��q�+� mحT�YF\�ڽJx�\�X��ʵ$%3\�~�Ui1����\�(4\�QO\�R�sP�V���\�̬21\�R�rW��\�)�f\�(I\n�\�\�We\�	5�vY��\�\�K��ڨJ[%GCM\�\��Ds\�z�2lr�������5�y6\�\�\�V�\�U1\�\Z�L\�dկQ\0?1��t�y�[�\Z��\��W�i�|vP*(k��2\�-��vP,1(\nYsGA�ޘ[���C�܎)%`�#�0\�s�\�2�`I⥈$��8#&�����1\�K1QL7*\�Yϲƶ\�\��޶`�CQש>��\�B̸\�xZ\�\�F*i�n\\WQA9$z\�\�\�\�H\�\nC�<�M92\�O��sɥB	$�\�`��\�H���\���\�3��pB��5�n�8�\�3\��\0\�\��PFp�W�;I?*\�IN\�\�y\�}��y�A9��n�\�pO�N����e\�8��Ȩ��\�pN]��J�#��\�5�� iV/�N\�l���rN�\��9>�+ʊ��\�\'\'�\�YWW9݃�\�k9\�\�;;nQ�rEU?�\�HF\�\�Jf*\�[?�W�e���8\�i\'mEr\rM��\�P�\��\0U`;o\�\�U\�\�Y�X\�)\��\"�\0\�\���r��\�)8��\"��s\�<�ՙyC�Z�;�Q�\���v)� d/n��\�)�)>�95	\Z!\�\�8������\�D\�\�|�ӈ�7�BY�N*�\��RqYb\�+\�\0\��\0U�q5Q4\�\�\�pi\�w�#\"�>ў2A\�OI�<1� q6�\�\�UKp�v�\\��8f\0����\�h\�N�\�t��\�\�K#\�c\�>�R)\�\�\�S\�|�\Z��C�l7�V<�F{UA�ۥ=\\5Q]�a\�\'9�\��rx�\�$g֝�=@���O3����\�w\�V2N\�g\�\�\�0j\�\�Cո�Vv�q$���\r^^�C]�ͦˎ�3X\�\\��ч�,\��\�F\�I\�Mu\ZF�\09s\�Ҽ�\�Q�(\n\�@��I\�\�-�\�]�X\�{\��=Dj񝦝m;M�U\�s67��vI��K�URE`�{Y\�\�I\�\�t�n	l���+;�\�\�M�BGsW\�Y�\�q^�*1��L\�\�\�X �\�\��͑\�\�tgdz[�G2I.\�iI\�\�T_ihN\�85\�њ���\�~\Zݶ��r�cd\n�t�6�j�$Sw\n\��j�DIjT�H=�Tg	\�*\�\�,95�$%�\ZZ\�E�w!���\�YK�H\"U\�ր��p��ɮ�Hң��1\\�\�\\u\�g`Q����n(\�z�\�S�:\n\\^(c�Ұ�/�b��@>���F	�|\� V�t�\��g=?Z�ى�\�M�|~\��2�\�䊛uc��\�\�	=��\�*£�\�G4\�q�\�U\�\Z؍�����Y	j\�(�Fx�q8�(n1\�Gk\'��q郚F ��;�y隍\�9a\��c,\�k�⋑\�\�=)�$�\�٘�	<sM2XӉ�\0ɤ�U\�\�9\�ڛ!�֢�S$�Ft�pW%�\�\\\�\�5XԒ3\�N\��<�O��@܅v2}Jwab	قy\'�\�Q\�	�\�&�l	T�`�*��:Ē\�a\�\n�-c\�ޢ\�B1/���g(b\�_��s\�ItU�#9\�=�*�Ģ#�g8��z�\�W�,O<4\�\�>G�Gҫ\\\�λ[?\�8\�i�mH\�f\�O5MݝY�X*l5�^ᕷ\�h\�P�\�\���z�F `�$�\�P\�W\�0\'�%r�\�|��\�j�\�|�\�\�N\�*\�\��+FH\0�Nk6񊢲\�Lޥ�	\�֢$\0\�q�қ��~\�NI玔_B\�c���*�\�?\�\�SJ\�@k;X�\�a;g��\�U�����\0s�BNH\�B+8K���C\�Fu8�i\Z	.\��j¸�΍�9=*Ȑ`\�f\�4\\�\�\r�W`��\�YHs\�3���qR\�\�\�\�dt�N�{���o)�\�\\G�zS�\�s4XB�}jS�\�j|ڜOZ��J3���#\0��$дn��@*�+�\�\�P\�|�O�<0;Z�\�\�\�9�q��\�\�Y\�̅׳*58�	\�{�c\�.H�y!C\Z�\�\�hNs\�V׃C�ʹw\�0J\��\�5Ԣ�L�\ZSn7:m+\���n�W�i�!�\�\�5\�Lm\�[�]χ��\�n�\rmJ^\�\�\�\'8\��H��A\�j��I.<�rҹ�\�\�p��TWG�!	\�+yɽP\�\�6��r��QXi\r\�\'�\�2>G��\�r��Q����N�\��@�˫�\�	�~�χk�\��y$\�2F\"Ozșb�Ǌ\�w`�Jt���\�\�\�p�B�\�-\Z\�䊭l^i��$�VZ�Q\Z.I��3J�\�2�穩�YA]�5\�n��\0젞��\0��0#8\�\�.2+\�W�\�fb�\���d��Oji-�r1Q���c8���\�P\\��9c�\0i�\�o^O\�MiT)\\u\�I�F˵\0$�MA$��9�L\�\�*�cE\�$\�\�CD/s B\�x\�H#H�QFFұ�x��\�pF\0TV\�lzb��CH.���Os\�3\�֞y\�S2rN:���f��\��֢ \��\0x\�\�q���}\�W��\�J�,\��ٛpc\�~f�?.\�~=*	wc��\�K\ZNA-Q��q��,\�G&��\�I,{Rv\�wp>�9\�MgP�\�I\�o�ieP�N8�%\�u\�=k5�\�f��m	\�szΥ�\�\�|\��7\�\�<���\�n_Nc�d|�oA\\��\ZI7��)�kx��\�7*�f?6Nڎ\�\�Ub\\�N\�=\�N�\�/��c\�Y\�n\\��\�\�ad���|\�ʄUHو���\��\0x��q\�ҫ\�<�$�\�^Ȥ�rHe9@s��\Z�;\"�q��jpQ��|\�\�R\�a\�6\�����d,���VuܛJ睽�̬O����d���TZ\�B�@�\�Ѹ��e\�|qNc�$b����\� V\'�g	�0$\�\�/����H$��\���pd�z\���mIj8+\��\���8��\�\�ڦR�\�\�\�\�w�	\�f�\�\�\�V �ֳbe�S\�U�W�5C=�U��5�fR.FO��Q�\�j�k�j�\Z��:ҹ\�\�h\��w�W\�u<u�#�y��\�sZ)؆Y�2�t��\�\'�:�\\7\0�\�/kD�޵@��_o~���\�8���!��7<\�g�k\Z�	��Yc\�e�5��\�\\�u\\\�b��+���Q\�P���h\��\�\�Z^H�*ێ3X\�\�\�\nkF\�2�I=h��:#Z\�ǥi��\�\n0�i���+��2�\�0X3<�T��i\Z���4�\�w0ki\��{\�\\�sƨ\r�\�_4O�n��\r�*�YI�E>7%�\�\�(�wR+�Omϐr���c\�mU\�ԛ�`\0\�5va�rk�\�\�Fek9a�\�\���\��(k�C��s\\����\�lq ��s���\�A�R&0^C�ik��$�P6X�q�\�3�C�?ʠ\\�\��\�b�HzSe��\�\0Rn\��Mg&0͒J�\�G.Cgv20*	J�vI8֟,�|;\0O\�M��M{\Zc��\�57�\�(E��!\'���Hjh\�|��;v߻��m\�cu�\�799�����N\0\�<���U<�\�lm�$\�/=O֘Fz�\'�w*{dSU�cq\�\n�ɸ�\�$�_\�QB�&� 1,q�Q\��rǌ��\�\\�Y,Pr\�ޚHڠd�\�F�\����\"�\�H_�q׮iI�\�\�9\�$�\n�%�g$s\�*[��ÓҨL嶪�\�=O�bޠW������\�\��?\�\�օ\�d�\�\�\n8ǥdM6Ar�\��]��ZA\�\�*�~l��\�4���\�ޭ_6\�\�v�1�>�_2m�\�Q�G�\r\�+gU����R\�ZBA���\�8�7U^G«��\�=�n�REw%�q��ZΑ՘�\�L�\�\�\��HX\�p}kɴ\0x9\�E\�RDwn�\�:/�2�\�1#=i�\�]�@9ǭR�\�B��x��t4B�\�q\�4�n2z�\�Gg�\�K\��i0b�\���W��f�3�(\��?ƺ\�f�\�v\�.\�x\� �\�U�6���\�#\�58�z\�t\�T���\�XQ�*\�]y\�P\�7b�\"\n\�L�\�1\0W�3S\�\�f��x�F�7Zɘɖ\�9\�j��U\�\�\\zU��ϥ1d����\�jQ�\�y��\�$�\�3B\�\r\���k�\�1�Rg�}*��\�\\S\�\�\�\�4��#�2EE�i	\�4\��Ҹ\�c���\�ނ}j2\�\"<�ƿ6�q\�-`�\�l�[>2�:��j\�ҽ:K\�G�G\�E\�\�\�ʣ�ZlÙ5��`���,)J\'L,�:$\�^.�j\�!HT�k��a+�x�0p\�N)B�+���]YC\�/+\�\�ҊŎ\�\0O4V\�\�\�\���K�����I�z����\�SZvV�Pם��;���ۂܚ�F\r<(\��\�6WP���J��il3Q�yn1L�\�!W�3~\�l�\�^�`�\�~5�\�Q�)�09A\�@\�\�.\��\��w\�W%2ձ��\�Q;e�\�@�t֑V!��95Uܻ\�f\n��Ҹ2Ĳp\�$\�q��\�\�\�v�\�$��@\�^f/Ƚ�;%\�\�\�\�}kk@����nK�>���c3�A�1\�=+���[[G\�\�h\�qܶ�\0�Q��@\�N\0?��wa\�<Vm\�n��\�z��\�l\��R�88\�I5g8\�Acr�͹�aL}\�p)۹f\�Q�\�c,z\nd\�s\r��\�\��\��3�	\��\�7-k\0p�\�\�G�ҫ\�q�\�\�\�W(\�\\��~tc��zӋ��\'i�\�O\��j\�\��@PEc&R+�\0��\��j�$�<dsR\�ȭ�RNO\"���\0waL�?J�d[ɀf98*rO��I\�pp	 V���\Z����\�Y2N\�N̸0(測Avٹ�l��? )RD�s��#\����\�\�mbB��MD�`q��Nk5;h4���x*\�=I⪳y�$*�\�R�ͫo\�;��w\"�l9\����)�]dw�qY�z\'\�zU��I<\�e܅P�x\�&�H�+�G<\Z�,ٓ>��Y��8�\�`\��=j\�v%\r�ڞ���Qdn\��i/.V\�ݤ��r~�F7b9�\�y�Gh���\�\�\��\�|\�\\\\=\�̓�ޑ�}=�\�8⻒��\�\��\0��1���\���zU����L�������C\�YE\�1X�f\�4C�U\�1$�\�PC\�j�\Z�q�fc&J��XDdt�\",H\�\�Օ\�}hHɍa�i�\�\\�i\�q�sڛ��Z\"IPq\�\r\���2G�+�1���`u\�!lc�\�7sڗ#?J����V\�+��]I�6c�4.��\�&�\�\�fl�\�d�sW/\�[���=X\�L\�׭h�z\�V�$N� =��Cb��)ش\�\n��Z�5Uf\�UIqJ\�\�h��&:\n*��h�\��?@�-6�\�2OJ\�89\�20��\�ҕ\�n	�Ku>uHb�JFӆ�I\'T!��Ps\�E���s*��=\�\�E:d�nݐ9�g�A\�\�GZ�<�\�\�\�N��1#�]\��NY����dڤ�	\�U��gr�x�Ri=@t��]��޽MW�U�B\�;Gs֠�\�RA�\�>��C5��2|��\�SQa\\�\�p���\�\�UM�����\�v�ܙj�iZ8\�\�\�=)�\�+�\��횺A�1�펕\�\�\�G\�\\\�l\�-%�\r+m\�\�+�\�:\0:\�F�Z\0\�d�����\0\�\n\\\�s\�\�4��I�٨\�RA\�q\���TN�;F}>��+p6\�\0\�,˷=���q26vm\��;�;�RI��\n���\\��w۩�f��\0SD62\�y���\���jV���nX��T/Pz\�M�\0�`�\�\�`z�U�u,�\�\�9�\�b�\r�2Z�̰D\�ėv�\�YI\�5	�u�\�8\�\n��\�8��ٞw�\�G?\�U\�.USld�$\�\n\�Q�%�n.\�frN=T�8\\\�ך�%H�]\�;�#�z�+�\�\���+[\0\�rrKr;�D���\0A\�qG�$��[1����\�\'ҡ��$5e\\��z\n�{3ێz\n�$��\�3�&�.\�\�\�;v���\'�$�E(��.�\�\n�\�jk�I�\�5�ļ����IY��v��*�ܓ��bVT@==�\�vl\�\�S~�5\�x�Rݶ\�O_���a�}+f\��l\�d�C�Q�\�k��g��\�\�ݲk��:�\�F\�\�v��Pw�\��U�:�Qsү\�ǎMU�L\�ڴ�_�V3d6X�q���1�}�G3�����5\�&e&Ic�AV#N�8�ć#�ҧT\�\�CB0lxP�zҦX�)\�$\�zb���\�*,܉c�g5\�\�\�^�\�\�\�Jw\�B�٧1\�#�i?1\�8�\'�;�����r)�\�\�I#�E$�Bc����f\�˱��\�MiK�r�*��t\�\\�\�US�\�b��$pr9.\�\�i��zNM\�ֽ�z�paޜ$��E��!��v�\�W\\\nD`�\�z\n�\���\�\�VP\�\�\�݀�w�ǆa\�-����Z\�9�\�\�V[�\�/\�=&\��X�\�\�Y��+�K$]\�p;\n*9�c\��\�\�{+��)�\�A�ǎ�����q֢-�\�\�\��둙�y�\�5\�\�M\�AC\�G3\�ܧ\'�U)%e� \�\�5M��٘�\�UG�bVgm\�\�So,\�*\0=��\�\�\�.u�SHL�w\�%��裭g,�+\0I\�)�\�\�\�`�\�«�\\��\���\�!\�Y\���V�!�;)\�;zSf�\�(\��Y\�\�Cv[q`{z\�6&O5ô\�\�pJ�M#e�\�9���\�7̛�I����j�\�\�\�8,��@5�5݄zf�i�->1��\�׽^U�I\'��ޢBrF;S�P�9��\�t$/,\n�\�aK�V۞x�u�}q\�Zp\�^=+&ʸ\�8\�|�\0֪\�\��\�\��П�\��6��K�,c�q�U$\�*��\�r�6ON��Fp[a(\�6?2X\�⤜\0�1\�C���\�ϵ6iH�h�\'?�C)\��=�E�Xʾpl�׽P���v�\�Ǡ\�Yf&7\���ο�UT�݌��\08�\�Qr!1�r\�3z�\n˹�4f00K�V��*(%G$\�\�Zù��Ff<�ǥBz�t�\�\�l�\0:͝�\�e$�-�j�q�a�b��4�W%�\�\�Z\r���B��p*�ub[�\�,���\��;\�)$�n���5�hw��\�j\�\�_	�A\�\�L;VU\�\�\�r�\�֪)�RE�c\��v��\"P\�y==i���p=MC<�cd��j\�\�\�$���Ta��{SY\�t\�\n��jK�\�\\y�\�k\�}\n�+�	+�#\�ڑ�\�Z!�#9v��?�d \�\�L�nbK�Oz�>�\�rVV;#+(\�N�O\�P�]�.�\�m�d\�D�з\\�}j�	�i\�\�Tf�\�̤\�0\�H\�:U\�b\�\'�M\������G^��h�\�`\\8\�\�T��\�UpA=\rH�:\�hd\���\�G#\�\n3�pbGJ�C\��zRz\0\�\��EFGL�O\�\�})�ZiY\0�\�t�\�$\�\0�O\\zІF\�:w�ri�\�\�(�\�;I�\nsҸ?\�\�t�O\�vW�B3^k�ܛ��9\�\n\�\�B�\Z7�\��E9G^�\�qhh\�<�\�\��\n�3�¡\�4\��;��$�\��W��K\�h���A��\�\�J\���/3C���I�P�\'MvZe�4�Y8^�*;`���\�kیp8\�cRW�\�\��;��F�\���o�I]Î(��\�Y��\n�q\�wUO�5�-\��u̂$!�\'=arH\�E\�\�FOO�W.��\��\�F\��\�;\�\�T\�f\�\�\�w�\�N��4�\�7�0*?�K2��*\�\�ҫYd\�ïL\�k��&#w\�\�\nw$�=ʄ���\�\�\�m�\0۽V��\�L�\�¨\�v�I,3\�ɮz�,\�td�+�֡k�|�B\�<\�\�).U�\�\0�J�k�A�\�\�\�(�;�ߗ�\�i�\�\�}\�\�\�\�Q\'\��k���K�ֽc�6b\r\�\�\�N\�C\�\�UGY_�\�:@F3\��� \0d\�e�\�)��\0sZJz\�\�\0�q���N�\�H��S�9<\Z{I\�\0?\n�k��M��[$s��P�@n��\�RK  �8\'\n=��\�\�͐i�!��\�9栝ʩ#�?�*G�X�{{\�y��B\�© {\�b[.\�,n=꼇lh�8\\��/Z&� \�Fs�\�Ry\�1n�`SV�`\�@vbA\'\�\�m\�\�\�\�]�8Ǫ�W.��5��>��q#2�\�d�\�\'ұ�+F^�8�K6g5�vq>rI\0\'��vL�\�\�\�\�\�\�U\'�o/�&\����+:{\�WR�\�2Ho�ګ�@��$M6]ӹfl��j�t\�\�L�+K�X��\\\\r۲[��5\�j\�S�:�\�}���#�\'�4\�>X\�f���v!���\�\�`���V#\�7\�\Z5\\\�\�?\Zҽ�Nр:\�vE$\'N��\�x\�65��,\�p[&�<��\�;���2k+\�M�q<v�<�6I�.��MF\�|�\�W��Үk����ȉ�s\��F�\0�\�J�\�ޔ,�\�Q��5\�\�Z�G@*��9\�j\�5n\�\�\�\�d�b�D�\�)#����im�c�yH\�R\�܆\�\�kAm�\�p0E_�1�\�+�R9\� �2\0P1\�jtS=G󦟔��ќ�\�ͱ�\�C@?(\�\'�H\�$�\�v�\�g�4\�%�#i�\����9<\�ڤr�NOJ�3�\�n\�jW\�d��\�ߥWl\�T\��݇\�Q\�j\�h�ץ@\�Oa��\�Q�\�\�� j6�j�Ng\�\�]M�*\r5�#3\\�\�;g�+\�ds$�ǩ5\����q�㩮tu�GF\�}\�$�8�\�\�e��X!RY�>�\�!i\�cE%��^�\�\n��,ҮdnO�l\�U�ȋ��:T̙���w6V�H\�Sm-W�ҵ-;�8��4�g�99=I\�f|*�\�\�\�u_��\�$K\�ҠV/!\�ן��\�ܔ�\�C\�V#�Ey�\�~f�;G�������w(\���:VS_ƹ�$ �=j6\�\�@Xn �}k\�\�Lĺ΁������Z{���\�\�*��\�5\�B\�\�5Ni�%w��ɪK�\�ח�L�\0��\�\�Y�\�j�;\���\rW�\�]N\� {��3��)|�w�\�\'\�V%�J\�\�\�I\�vVW~�pS\�M���u�M\�)�o�k�K��\�\r�%�H\�NF,w9\0�U\�\�\�Hң3�1l�}{V�O@��	7P7,B�\�&�\�O�[->\�\�Q��xo�\��Wa,�\'�\�v^k\�\�\\\0\�]xo�����\�:��0A#�l\�	\�\�8�+)\�SD>N���=\�p�0G$p)\ZM�����ާ��S\�ǳ(\'q\�v��,����P\�\�OZ\�;�@3ں �%���\�o�\0Y�\�$S�c�\n�)\�\�#!	M]�\�\\g�TЈ�Ug%�p���NTO\�8\'���\���\�\�AT��\�y{x\'�`i\�\�g����l�\nɺ�\0Ż\�q�j��W�<��0ۀ����\�fr\0$�\�Rm���&I&u���\�Y&v��|���=qV�l�HSv\�7`k:@�\n��\�\�}�:v\��B3�$�	��\�v!A\�\�\'��&�\�ȭ\��5NiH;z��J��)	5\�ϕH���3\�\�\�\�S��ƙC��Uw�;��3ښ��C.�	R}k?y\�g�\0�R\���=Oj���MV�!\��ߚ\�׵O�\�m�o\�\�>b?���\Z����!\�\��\0�rRH���1gc�MtR�՚S�\�ث\�\�N\�)\0\�J�I\�\�\�Ko\�=+N\�.p3U�\�\�=\�ni���I\�X\�Frc\�m�pp9��[U`	��mF\�@�z+b#\�=��\�朊\�\��\�ZD�\�:����#ӏZ�y{��̛\"��kG�\�\�##��i�u��\�R.0\�sT�,�����p3�j|�\�\�\�P�o�:=�\�vSӕ\�\�LDM����\0�q\�{�@\�\0\�;~�\�X�*c�<���\\��<����=k�;\r �\��\�U��\\\�S�e �㚁�j��%�j�Y7�!�=�\�ļW5�]l��<�ޔn\�)\�\�\�5�=˷l\�e\�`\0ɧ:�\�[�\�\��\�\� ;\�\�^��Q\�ڂ:xd�۩ӓ\�=�\�mV\�/\�\"�4�<��5@�g\n�_#�㩉\�\��g\'7v]�����\�Z\�ym\�9\�YPr\�+jT�k�5T�w\�\�\�\�ep9�\���5Ue�Wn\0�Ia,\�yU\n���(G\�ͷ�\�iF��QH\�M���\\Ȟ\�Kݖ=Nj�jXbBH\�ڼCJ���i��\�b\�!\�\�ֻ-7\�F��`��L�\�n��L\'X�*2��;���\�\�#�LTR_���\�\�Ұ\�S�\��Uenr��\'U#9��`��lţf[�\��\�W�bP/\0w��\�3p\0��$1ݟJ\�Q\�Vqs�\�\0�֫�Զ\��\�ͳ99�7��\��\�\�\�Ldr\\�C/\���\\>S֤c�\�Ztw8Hm�|�\0u	�Xv�\�~\n\�n�{�9\�%��O\�^�!\'vx\0W�G�F�\�k��O<\�\�=@\�+�/��\�κ\�#\�R؍�I\����T\01�Mn\�=EH[\�p�����m\��W ��0�3ɥc���\��v�\�u�)\�Q1��\0�j)*\�$�ϥ+�88\�\�@����,x\�\�D��\�y�Ga�Ud\r\�<��¬HJ���������eNj�&�<�R�	?��\0��\�$&BH\�錓��IHX�@\��F\�\��\�Ur�\�X\�En\�c�\��9|c�\�+�\�\�E\�Io����\�\��J]�X.о��o$\��;s�ڈ5m@a|�I\���3͵�d�\�RK\"�I�\�Wh\�޵�,�\�\�}�GNխ\�i�����\�3��Jy�R2r\�}hy0Y��O�U\�#j�zf��i\�D`\��\�\�K\�4\�\�\�N0\0\�U�\�sE��\�\��\�X۴\��\�ަ�T�݂�\'5\�\�:�jSar!O�?�tR�\�\�!fEuy%�\�4�������֠�\�\Z�\�WS\�C�\�%U\��v\�\r�b2MEm\�	�\",@�a6D�%�\r$�\�\�\�@1\�j��e��+���A\0XJW9�>���f@=J��\0�ʤ�79\�<D���Z�V�09\�jTQI\�s�R�),7>��#\�� n�g��\�E`	�\'4KD\'�:\nX\�kaW �\�(���#5�@�A\�\�PJ�\�Q1\�\��\�k�\'�\�w\�	`FNi�\"$�OAU�Ip���z�8�皨\��5��\�\\bJ�S\�x\�mI+�{T/�>S�D\�q�?Nj��3֟3�\�<\�waDQIo$ڦ�\�R\�Μ�x\�kW^TM\�	�I��\�ף���:\�G�5����cPNMzo�4�H�Hǥs>\r\�\��:׫\�\�\"(\\�R�Q\��\�\�W[ ��ظ\�;֍�`!~�Ӳ0�\�Vad�翭pϖ(\�[�8#�U�\�(<U&r�Uo��\�\�~R��ڸ�\'d5\\P�\�9>\�\�(�榳�iW$`N�E�cץm\'b�\"�rc�+�X��$M\Z�EU(T�O�B�H$^Һ=&�b\�S����\�D�5k\�x\�Y�\��\0��s\�Tg9��=�ӌ�Go\�\�\����\�5:|P��\r�\�\�\\\�X\�\�s2Cw8U^I5��D�\�z�\�\�Ju�+,\�\0I�c�/��5eK�Z�6\�EU�|]:�]^53�ܨ\�\�׶ƉEG�b�Akc�j7�LH<%�i\�t�2;�e �?�8Q>�W&���g5\ngE�\�E��4\�C\n��F%Hb:\�\�q��\�H~�W�^Z�4~o��O_JW<`d���\��u�\�\'\�z�\�y�w\Z�\0*�$�3�zO��78\�O��0\�-\�=A \�\�~n+�+\"X\�df�q�Ò;sU\�iM\���I;\�W����\�G /�2\���\�*�\0,VT�|�\�xl�;�SW�I\�gh�X�7yx\�\0\�r\r;�̈�\�\�y\�0+*\�\�[\�c�v\0�;\��`�c�Nr+&i0���\�@¹d\�c�Bk��\��C?\'\�VD��f9\�W���8r\�\'Q�?B\�ڴ�.\�2��ղ\�F:��pe/�N\�������we$�c��e�\0���u���ܭ*�\�<³\�fl�������\�j����y�\"&9\'<\�\�I\�An݅sZ޵疶�oݎ\��{j֜�q���+k�\�^\�a��\n��\�?\�X\�jF\�]\�I+#�1IY��ۡc�ƨ@2kb\�>52e�#\0�\�VƟl\\�:sT�!\�\�\�K�Y\0\�\\\�\�rԑz\�\�N}+R\��\�\�G!T:օ�KS\�Y�9�&�\�\��\�\�Q\�.b!z\��\0z\�N@sLs�\��dɹ^5<�\�8\�A��n\�\���d2�<\0s�J\�I\�\��J��BU�n\'\��\��\n�\�=�I\�3(\0u�Zi>R\�\�\�b�!��}*�� ���)V\��1\�ң��%WҴ@�wO�S��#��^V\�a�?�BT�B�!kF��H��V#8�\�i�\�L\�A$���N\�@N�Ζ�$G#\�\�V�LjRǽf\�7f\'�����\�\�k\�fIv���]�^ܪ����+�\�\�\�5\�x;HU\�\�/=�z-�@\�\�\�x~\�lm�˂t\�*crJ�-�^I�T��\�s_1^���L\�\�V6M\�~f$��E�)bGj���$��5s\� \�5\�Z�ތ���r\�W<�\�\�h�I�b@��&\�+�9�\�iЕ�Ib\0\��YQ�4\�\�ٷ\Z%��\�Ϊ\�W\��\�ҵ��f�C\��W�T��\0\�_T�\�\�\�E\�\�\�2O\�qE>E�\'+\�v�V~\�\��n-�$\�CSV&���\Zn�z��\�BIjGL \Zy\�֙htQ��A$�\0:��7\�g�\�O+^\�\�Ñ�\�a�G�\�+�\'\�a�\r�k:�_\�\�Ĭ8c\�_V\�\�Gin�¡QF\02g\"�\�*�$(5G@)ڔ�^�Z{��H�}Nd�/�TRG�\��<����j�\�0-��s\��	�\�G	����W4��.j�\�B�ɧ�A\�ґUK\�\�\�?�Q�W�Q^\�1\Z��%��4ɷ�s�\ny�(>�+��Q�\�\�Y�X�,��q\rל\n��\0���\�}\�\� :�ɪ�;\�cw8�\�{�Y�d\��\�Go�U�]�#C��:Y:\�s��7\�jaI<�j.o.y�#`x\�XT�;\�\��\�\�T�\�\�Y`��\�Zɸ�w�\'hPY��\\\�j�\�#B\�+\�\"���\0�sY���\0��A�e\��Z�5\�;�q\�\�{�߅dHͽ؜�\�i_v;�EP\�\�g�R+:w\"#���J�*�\�r��;�Vm\�\�1\0pAϰ��\�\�i\\�q�~�Rg(\�T\���J>��776T�\�WsD��`^MRv,x\�h�˱\�\�\��?!\r��fF\�\�������M\�\�ޭ�5��q\�G���`�*m�\�Qڻ\"�V:\��VEf\�T�i�\Z\�\�2b�m�E�Ko�º\r9w�\�VUY�GcoI�\�1�\�t�(�9\�N�	\0t��3^|�\�\�ԕ\�~\�1\�m\�z$e\n\�/�\�\�`m\�\0sV�\0\��M\r\�\�`C��d\�n#`9Z�D.\n�d��\�H�\0�\0汸�,�\�\�iC|ۻ-<G\�\�˻\'i�\�C+��\����RPX�\�9\�U\�q�v\�\�\�W��-��qT�UDv<�\�ZGA�,C1c�y�g\�$~U#�cq䌊�Wi8\�\�(h�&W�\0�|֎BjK�{�MR,6p0hh��\��&�;i�IoJ�\�\�QcD1\�(&�\�q\�\�]\�����&��\\3v\�t\�ws��n\�?L�̜1\�A^\�\�\�Ű�t8+�+��6�����\�*��\��ا�>�\�Rۑ��݊\�Y��B\��zUٴ�����\�}UTd/&���\r���\�\�\\Q��\��\�秽�\�t�j�`�1�R<eHP1�Ձ(\�8⡹�\�\��\\�1�4\n��\"+H�Ȋ����x\�\�ӕ\r\�\�&�\�m����5\�hVQΪ�k*�X��;�\�f\�Jĵcf\�B�<��\��\�\�\�G�I�\�:u\�V,R9U\�>3�\�\\zՙV\�8�Vgp�К�HQ\\��jp��\"]ޔA$�=8��\�2)���\�h\�W\�T�����g\�wPd\�UL2��,\�	SP8V5\�\'�\�	;jE\�+��/�\��_�-\�	�p2\�XKf\n��N\0���~x\�6#R���\��:Q)XεNX\�z߅�;oi0Z[\�\"����#zS\0`f�	��k	\��\�\"bq�T\�%Nz՛\���FI���x��s�B\�i�}��q\��p+[\�\"t2c���H|���j\��F=-}ؚ���9icX`\�\�:�W��M\��F�i\�8�)-D�FPR}�MB[ \�S�����b2\� ���U�,\�<��Ҷ����A\�\�ylzzUi[��p\0\�*G\�	\�yϧ5�v�-\�)�\�\nw�@d\r�\��\"�.�\�Tc\�֬ݾ�\�c\�޲�n\0����>�)i\�Fn�ssJ����rk9O,\0�\n����$\�*\�-T\�\�y{yT\�\'{\�1����\�s�ۀ1�~��\���Y�ǟj�v\�\�\�a�z\�\�+6I6#��;Z8X�Ep\�p[�\�\�Zƹ�3\��֭]L99\�Z͸�sH�*�4H�is��׌t�r\�X})ebs\�?ʳ\�\�E�\�\\4�\�z{ֱM\�i}�~-P\�3O�G�\�>��I9&�r\�嘒I\�\'�5������G�\���2\�\�i�q\�*\�YX�D\�V�*&Z���/�U>�\�h�\�8=s8\�\�k�\�6\�\��w��w�\�\�@+v\�\�\�N��\�x���\��\�\�y\�Fy�e�\ny\���a8B��\�d\�c�\0�-�\�\�*\\��\�r#��\�B\��qO�\04�w�9=�`2HǛ����֪\�y;�,>_j�#�u\��UyB\")\�[8��n$c���\�b\�~��\�YJ\�~���Td��b42FBr3�?*�#�rc\�f����rj�\�2G\'�\�Au\"�\�8�N�N:��\��\���HFO�\r�$5\�\�����\�i\��$\�\�&��mKH\�\�n��J��\�W3eU\�M]\�.�\�tW?*�N\�\�MΡ\Z�kѣX��\\��\�Ҽ�P�\�^�F(\�m\'\'�V�,E��K��+��\�p���\'�<\�\�\�Hsp\�#!\�NC)\��\�X	��&����a\�9~�uk4�\"\�\��%��%J��\�\�zm\�y�1�3�\�Ol��\��Gl�X�F\�\\թ�\�#�m-�\�a�\�\��\�wz>����006�\�r+\�\"�(ydt�\�u䴗\n�#�\0t\"�2�\"�vL�ћn�\�\�d\�\�I\�G�����\0:�\���\�(r\�p+#^�	(�T3&I\�G�\0���X�Ӄ}�\�1n.nL\�s�\'��(��,\�\�\����2x�\�ާA�\��\n��\�Ps\�Rt\�+\�:�;��\�	��|CIh!9<q��F��\�\�8bP��\0\�y\���\�Ţ��\�\�$׶(�\�\\���<\�\�r�\'�ilzT��Ukrw5>N���Ԃ�\�,x\�MP��\"�\�95~q��\�\�$�\�j\�\�W0��f��6Pq]?��%0�y9�u\�\�p�v\�u�\0ۤ[�\�֧���5`�֚͹Xc�F��\0�<R\�����^��\�\�\�\��\�\�Uٸ \�g�\��jY��q\�\'��9\�y�\�N\�X��\�J�\�\���rx8*\�\�\�\0�V]\�o.\�w��\n�\�&S\�e�~foz�ֲn&H�V&\�,sҭ_�\�\�\�H&K�ԟ�\�\�L���6\��9�\�\�Y���\�\�A\�V.drA\�rN\�\�VU�m���Z\�\��y<\�nˌ�֨js\0I\�:-J�kv���+*����\��U5dR+\�J���;~�,\�Ďz\�I�\��\�\�\�E�e\��\�_Z\�\�-#rK7$ի�^g.\�$���]VGe8\�\\��)\nԤSz\n��\\�h����U�S\0h��\�P��J��\�y:U�\'WQ\�\�\�j���W6�+{\�lH�{�*�řW��M�q�\�Gl:��\\���*簮�\��N3^l\�.L���.ӑ\��F{\�\�\�n8\�P\��;�lI���\���t��\n�8��2{\�NO�ǹ�\�Bf��q�1��u VVIɩ�1�J�q\�\���2�^\�\\0~yǠ�\�L\�,1�p=\�yA\�<Uy\0\�``��vR �WVa\�\�E;�\�\'�L���\�\�)\�E\�S\�oI����H\�nj��\\�U��Z�!\�W}M\�Hv��K�\"l�G~F8�k^����ⵥ\�֚��d�Y�=Mu���Ƥ\�J\�\rzG¸P�\�G\�\�^�F�ݠz��R\�\�qZ\�\n�T��X9�_A��h�b�%S�}+>\�\�\�yn�����\Z��^�7Z�+�}Mm�i��\�\�B)Ӎ�\�B[�ܤi��m�H\�z�`�\�j�р�\�U�uq\�+*�\�\�\�\�Z�\Z6bf�\n��]<Z\�\�V96�F�\����H\�_\�`{���,\�@�\�Һ0�#tf\�Zt�\�+��bǠ\���\�\�L�3H\�\�ں\��\0�s��8\0�^�\�\�\�.\��\�$\��\�^6s&\�o2\�܅�����z*�KrIɢ�Z\�\�\��\�','file',24152,'jpg',NULL);
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
INSERT INTO `order_detail` VALUES (1,'Xoài tượng',21000,1,21000,1),(2,'Xoài tượng',21000,1,21000,2);
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
INSERT INTO `product` VALUES (1,'freeship khi mua từ 5kg','Xoài tượng',21000,60,3);
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
