-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: coders
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

--LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'GNU C++11','https://hackerearth.0x10.info/dump/jda/language_icons/cpp.png'),(2,'GNU C++','https://hackerearth.0x10.info/dump/jda/language_icons/cpp.png'),(3,'MS C++','https://hackerearth.0x10.info/dump/jda/language_icons/cpp.png'),(4,'Java 7','https://hackerearth.0x10.info/dump/jda/language_icons/java.png'),(5,'Python 3','https://hackerearth.0x10.info/dump/jda/language_icons/python.svg'),(6,'Java 8','https://hackerearth.0x10.info/dump/jda/language_icons/java.png'),(7,'MS C#','https://hackerearth.0x10.info/dump/jda/language_icons/cs.png'),(8,'FPC','https://hackerearth.0x10.info/dump/jda/language_icons/pascal.png'),(9,'Mono C#','https://hackerearth.0x10.info/dump/jda/language_icons/cs.png'),(10,'GNU C','https://hackerearth.0x10.info/dump/jda/language_icons/c.png'),(11,'Python 2','https://hackerearth.0x10.info/dump/jda/language_icons/python.svg'),(12,'GNU C11','https://hackerearth.0x10.info/dump/jda/language_icons/c.png'),(13,'Delphi','https://hackerearth.0x10.info/dump/jda/language_icons/delphi.png'),(14,'Ruby','https://hackerearth.0x10.info/dump/jda/language_icons/ruby.png'),(15,'PHP','https://hackerearth.0x10.info/dump/jda/language_icons/php.png'),(16,'PyPy 3','https://hackerearth.0x10.info/dump/jda/language_icons/python.svg'),(17,'JavaScript','https://hackerearth.0x10.info/dump/jda/language_icons/javascript.png'),(18,'D','https://hackerearth.0x10.info/dump/jda/language_icons/d.png'),(19,'PyPy 2','https://hackerearth.0x10.info/dump/jda/language_icons/python.svg'),(20,'Haskell','https://hackerearth.0x10.info/dump/jda/language_icons/haskell.png'),(21,'Scala','https://hackerearth.0x10.info/dump/jda/language_icons/scala.png'),(22,'Ocaml','https://hackerearth.0x10.info/dump/jda/language_icons/ocaml.png'),(23,'Perl','https://hackerearth.0x10.info/dump/jda/language_icons/perl.png'),(24,'Go','https://hackerearth.0x10.info/dump/jda/language_icons/go_lang.png');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
--UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submissions` (
  `submission_id` int(11) NOT NULL,
  `title` varchar(45)  NOT NULL,
  `metadata` text  NOT NULL,
  `source` varchar(20000)  NOT NULL,
  `status` varchar(45)  NOT NULL,
  `language` varchar(45)  NOT NULL,
  PRIMARY KEY (`submission_id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

--LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT INTO `submissions` VALUES (12746065,'573E - Bear and Bowling','{\"level\":\"Hard\",\"rating\":0,\"users_attempted\":11869}',' BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

       StringTokenizer st = new StringTokenizer("2 3 4 5"," ");  
      // printing next token  
       int k =2;
      System.out.println("Next token is : " + st.nextToken()); 
      Double a = k+ Integer.valueOf(st.nextToken())*Math.pow(Integer.valueOf(st.nextToken()),3);
      System.out.println(a.intValue()); 
      while(st.hasMoreTokens())
      {
      	int query = Integer.parseInt(br.readLine().trim());

      }
      Integer[] a1 = new Integer[5];
      a1[0] = 22;
      System.out.println(a1[0]);','Wrong answer on pretest 6','GNU C++');
  INSERT INTO `submissions` VALUES (12752133,'574B - Bear and Three Musketeers','{\"level\":\"Easy\",\"rating\":3,\"users_attempted\":7611}',' BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

   StringTokenizer st = new StringTokenizer("2 3 4 5"," ");  
  // printing next token  
   int k =2;
  System.out.println("Next token is : " + st.nextToken()); 
  Double a = k+ Integer.valueOf(st.nextToken())*Math.pow(Integer.valueOf(st.nextToken()),3);
  System.out.println(a.intValue()); 
  while(st.hasMoreTokens())
  {
  	int query = Integer.parseInt(br.readLine().trim());

  }
  Integer[] a1 = new Integer[5];
  a1[0] = 22;
  System.out.println(a1[0]);','Wrong answer on pretest 6','GNU C++');
    INSERT INTO `submissions` VALUES (12753768,'574B - Bear and Three Musketeers','{\"level\":\"Medium\",\"rating\":4,\"users_attempted\":12867}',' BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

   StringTokenizer st = new StringTokenizer("2 3 4 5"," ");  
  // printing next token  
   int k =2;
  System.out.println("Next token is : " + st.nextToken()); 
  Double a = k+ Integer.valueOf(st.nextToken())*Math.pow(Integer.valueOf(st.nextToken()),3);
  System.out.println(a.intValue()); 
  while(st.hasMoreTokens())
  {
  	int query = Integer.parseInt(br.readLine().trim());

  }
  Integer[] a1 = new Integer[5];
  a1[0] = 22;
  System.out.println(a1[0]);','Wrong answer on pretest 6','Java');
    INSERT INTO `submissions` VALUES (12755636,'574B - Bear and Three Musketeers','{\"level\":\"Medium\",\"rating\":4,\"users_attempted\":9588}',' BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

   StringTokenizer st = new StringTokenizer("2 3 4 5"," ");  
  // printing next token  
   int k =2;
  System.out.println("Next token is : " + st.nextToken()); 
  Double a = k+ Integer.valueOf(st.nextToken())*Math.pow(Integer.valueOf(st.nextToken()),3);
  System.out.println(a.intValue()); 
  while(st.hasMoreTokens())
  {
  	int query = Integer.parseInt(br.readLine().trim());

  }
  Integer[] a1 = new Integer[5];
  a1[0] = 22;
  System.out.println(a1[0]);','Wrong answer on pretest 6','Ruby');
    INSERT INTO `submissions` VALUES (12757565,'574B - Bear and Three Musketeers','{\"level\":\"Hard\",\"rating\":3,\"users_attempted\":16188}',' BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

   StringTokenizer st = new StringTokenizer("2 3 4 5"," ");  
  // printing next token  
   int k =2;
  System.out.println("Next token is : " + st.nextToken()); 
  Double a = k+ Integer.valueOf(st.nextToken())*Math.pow(Integer.valueOf(st.nextToken()),3);
  System.out.println(a.intValue()); 
  while(st.hasMoreTokens())
  {
  	int query = Integer.parseInt(br.readLine().trim());

  }
  Integer[] a1 = new Integer[5];
  a1[0] = 22;
  System.out.println(a1[0]);','Wrong answer on pretest 6','Scala');
    INSERT INTO `submissions` VALUES (12759093,'574A - Bear and Elections','{\"level\":\"Hard\",\"rating\":5,\"users_attempted\":3750}',' BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

   StringTokenizer st = new StringTokenizer("2 3 4 5"," ");  
  // printing next token  
   int k =2;
  System.out.println("Next token is : " + st.nextToken()); 
  Double a = k+ Integer.valueOf(st.nextToken())*Math.pow(Integer.valueOf(st.nextToken()),3);
  System.out.println(a.intValue()); 
  while(st.hasMoreTokens())
  {
  	int query = Integer.parseInt(br.readLine().trim());

  }
  Integer[] a1 = new Integer[5];
  a1[0] = 22;
  System.out.println(a1[0]);','Wrong answer on pretest 6','Python');
INSERT INTO `submissions` VALUES (12760128,'573C - Bear and Drawing','{\"level\":\"Medium\",\"rating\":0,\"users_attempted\":1103}',' Path filePath = Paths.get("C://1.txt".toString());

	try {
		boolean flagMatchFound = Files.lines(filePath).skip(1).filter(s -> {String s1 = "ayush";System.out.println("s : "+s);return true;})
				.anyMatch(s -> {System.out.println("ss : ["+s);if(s.contains(("Hello").toString())){return true;}return false;});
		System.out.println("Hello :["+flagMatchFound);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}','Wrong answer on pretest 6','Java');
   INSERT INTO `submissions` VALUES (12760971,'574D - Bear and Blocks','{\"level\":\"Easy\",\"rating\":5,\"users_attempted\":19612}',' Path filePath = Paths.get("C://1.txt".toString());

	try {
		boolean flagMatchFound = Files.lines(filePath).skip(1).filter(s -> {String s1 = "ayush";System.out.println("s : "+s);return true;})
				.anyMatch(s -> {System.out.println("ss : ["+s);if(s.contains(("Hello").toString())){return true;}return false;});
		System.out.println("Hello :["+flagMatchFound);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}','Wrong answer on pretest 6','Ruby');
   INSERT INTO `submissions` VALUES (12761705,'573D - Bear and Cavalry','{\"level\":\"Medium\",\"rating\":3,\"users_attempted\":3136}',' Path filePath = Paths.get("C://1.txt".toString());

	try {
		boolean flagMatchFound = Files.lines(filePath).skip(1).filter(s -> {String s1 = "ayush";System.out.println("s : "+s);return true;})
				.anyMatch(s -> {System.out.println("ss : ["+s);if(s.contains(("Hello").toString())){return true;}return false;});
		System.out.println("Hello :["+flagMatchFound);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}','Wrong answer on pretest 6','Java');
   INSERT INTO `submissions` VALUES (12762493,'574B - Bear and Three Musketeers','{\"level\":\"Hard\",\"rating\":4,\"users_attempted\":5323}',' Path filePath = Paths.get("C://1.txt".toString());

	try {
		boolean flagMatchFound = Files.lines(filePath).skip(1).filter(s -> {String s1 = "ayush";System.out.println("s : "+s);return true;})
				.anyMatch(s -> {System.out.println("ss : ["+s);if(s.contains(("Hello").toString())){return true;}return false;});
		System.out.println("Hello :["+flagMatchFound);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}','Wrong answer on pretest 6','Ruby');
   INSERT INTO `submissions` VALUES (12765249,'573C - Bear and Drawing','{\"level\":\"Easy\",\"rating\":0,\"users_attempted\":5288}',' Path filePath = Paths.get("C://1.txt".toString());

	try {
		boolean flagMatchFound = Files.lines(filePath).skip(1).filter(s -> {String s1 = "ayush";System.out.println("s : "+s);return true;})
				.anyMatch(s -> {System.out.println("ss : ["+s);if(s.contains(("Hello").toString())){return true;}return false;});
		System.out.println("Hello :["+flagMatchFound);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}','Wrong answer on pretest 6','Java');
   INSERT INTO `submissions` VALUES (12768021,'574B - Bear and Three Musketeers','{\"level\":\"Medium\",\"rating\":2,\"users_attempted\":1431}',' Path filePath = Paths.get("C://1.txt".toString());

	try {
		boolean flagMatchFound = Files.lines(filePath).skip(1).filter(s -> {String s1 = "ayush";System.out.println("s : "+s);return true;})
				.anyMatch(s -> {System.out.println("ss : ["+s);if(s.contains(("Hello").toString())){return true;}return false;});
		System.out.println("Hello :["+flagMatchFound);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	}','Wrong answer on pretest 6','GNU C++');
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
--UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-02 17:23:18
