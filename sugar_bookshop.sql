/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : sugar_bookshop

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2017-01-12 16:51:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for s_admin
-- ----------------------------
DROP TABLE IF EXISTS `s_admin`;
CREATE TABLE `s_admin` (
  `aid` char(32) NOT NULL,
  `aname` varchar(10) NOT NULL,
  `apass` varchar(30) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_admin
-- ----------------------------
INSERT INTO `s_admin` VALUES ('0D9129082D314E1F80FCF7D0A1C387AF', 'admin', '1234');

-- ----------------------------
-- Table structure for s_book
-- ----------------------------
DROP TABLE IF EXISTS `s_book`;
CREATE TABLE `s_book` (
  `bid` char(32) NOT NULL,
  `bname` varchar(30) NOT NULL,
  `bauthor` varchar(30) DEFAULT NULL,
  `bprice` varchar(10) DEFAULT NULL,
  `bcontent` varchar(500) DEFAULT NULL,
  `bimgs` varchar(30) DEFAULT NULL COMMENT '小图路径',
  `bimgb` varchar(30) DEFAULT NULL COMMENT '大图路径',
  `cid` char(32) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  KEY `cid_bid` (`cid`),
  CONSTRAINT `cid_bid` FOREIGN KEY (`cid`) REFERENCES `s_category` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_book
-- ----------------------------
INSERT INTO `s_book` VALUES ('1279B1B565AC4369964DDFB7A685C752', 'Java网络编程（第四版）', '[美] 哈诺德', '39', '《Java网络编程（第四版）》实用指南全面介绍了如何使用Java开发网络程序。你将学习如何使用Java的网络类库既快速又轻松地完成常见的网络编程任务，如编写多线程服务器、加密通信、广播到本地网络，以及向服务器端程序提交数据。作者提供了真正可实用的程序来讲解他介绍的方法和类。第4版经过全面修订，已经涵盖REST、SPDY、异步I/O和很多其他高级技术。本书主要内容有：研究Internet底层协议，如TCP/IP和UDP/IP；了解Java的核心I/O API如何处理网络输入和输出；发现InetAddress类如何帮助Java程序与DNS交互；用Java的URI和URL类定位、识别和下载网络资源；深入研究HTTP协议，包括REST、HTTP首部和cookie；使用Java的底层Socket类编写服务器和网络客户端；利用非阻塞I/O同时管理多个连接。', '09_img_s.jpg', '09_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('13097CA9150A4F5E836CA2A7D0923E1C', 'C语言从入门到精通', '明日科技', '42.3', '《C语言从入门到精通（第2版）》从初学者的角度出发，以通俗易懂的语言，丰富多彩的实例，详细介绍了使用C语言进行程序开发应该掌握的各方面知识。全书共分17章，包括C语言概述、算法、数据类型、运算符与表达式、常用的数据输入/输出函数、选择结构程序设计、循环控制、数组、函数、指针、结构体和共用体、位运算、预处理、文件、存储管理、网络套接字编程和学生成绩管理系统。书中所有知识都结合具体实例进行介绍，涉及的程序代码给出了详细的注释，可以使读者轻松领会C语言程序开发的精髓，快速提高开发技能。', 'c1.jpg', 'c1.jpg', '6602E4C669BE4989A059DD843EA5F7BC');
INSERT INTO `s_book` VALUES ('18B5473F2A12401C9F726DCFF34EDA97', 'JavaScript高级程序设计(第3版)', '[美]Nicholas C. Zakas', '78.2', '《JavaScript高级程序设计(第3版)》是JavaScript超级畅销书的最新版。ECMAScript 5和HTML5在标准之争中双双胜出，使大量专有实现和客户端扩展正式进入规范，同时也为JavaScript增添了很多适应未来发展的新特性。《JavaScript高级程序设计》这一版除增加5章全新内容外，其他章节也有较大幅度的增补和修订，新内容篇幅约占三分之一。全书从JavaScript语言实现的各个组成部分——语言核心、DOM、BOM、事件模型讲起，深入浅出地探讨了面向对象编程、Ajax与Comet服务器端通信，HTML5表单、媒体、Canvas(包括WebGL)及Web Workers、地理定位、跨文档传递消息、客户端存储(包括IndexedDB)等新API，还介绍了离线应用和与维护、性能、部署相关的最佳开发实践。《JavaScript高级程序设计(第3版)》附录展望了未来的API和ECMAScript Harmony规范。', 'j1.jpg', 'j1.jpg', '6A67FAB3DA6341D0BE9E987A25EBDAE8');
INSERT INTO `s_book` VALUES ('18B950D06FC24AAA974FCD5DF6CF8BAE', 'Python核心编程 第3版', '[美]卫斯理 春', '78.2', '《Python核心编程（第3版）》是经典畅销图书《Python核心编程（第二版）》的全新升级版本，总共分为3部分。第1部分为讲解了Python的一些通用应用，包括正则表达式、网络编程、Internet客户端编程、多线程编程、GUI编程、数据库编程、Microsoft Office编程、扩展Python等内容。第2部分讲解了与Web开发相关的主题，包括Web客户端和服务器、CGI和WSGI相关的Web编程、Django Web框架、云计算、高级Web服务。第3部分则为一个补充/实验章节，包括文本处理以及一些其他内容。 《Python核心编程（第3版）》适合具有一定经验的Python开发人员阅读。', 'p2.jpg', 'p2.jpg', '2DBF33496D5845BFA6BF250CB31D308B');
INSERT INTO `s_book` VALUES ('1A7AA76E73C649F38BB34B3219157F90', '深入理解Java虚拟机', '周志明', '62.4', '本书第1版两年内印刷近10次，4家网上书店的评论近4?000条，98%以上的评论全部为5星级的好评，是整个Java图书领域公认的经典著作和超级畅销书，繁体版在台湾也十分受欢迎。第2版在第1版的基础上做了很大的改进：根据最新的JDK1.7对全书内容进行了全面的升级和补充；增加了大量处理各种常见JVM问题的技巧和最佳实践；增加了若干与生产环境相结合的实战案例；对第1版中的错误和不足之处的修正；等等。第2版不仅技术更新、内容更丰富，而且实战性更强。', '04_img_s.jpg', '04_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('1DD630CC00884F77950DA07BAE137BAF', '零基础学Python', '张志强', '62.8', '《零基础学Python》由浅入深，循序渐进，从零开始学Python语言，一点都不难\n　　⊙ 编程基础、编程进阶\"编程应用\"项目实战\"上机练习\n　　⊙ 300个实例、64个练习题\n　　超值、大容量DVD\n　　⊙ 本书教学视频\n　　⊙ 本书源代码\n　　⊙ 本书教学PPT\n　　本书技术支持\n　　⊙ 论坛：http://www.rzchina.net', 'p8.jpg', 'p8.jpg', '2DBF33496D5845BFA6BF250CB31D308B');
INSERT INTO `s_book` VALUES ('204DF2ADCF154AF79E17FFE5B61BE4E7', 'C语言趣味编程100例', '贾蓓，郭强，刘占敏', '42.3', '本书讲解了100个各种类型的C语言编程趣味题的求解过程，旨在帮助读者培养编程兴趣，拓宽C语言编程思维，提高C语言编程能力，掌握用程序设计解决实际问题的方法与技巧。《C语言趣味编程100例》取材注重趣味性与实用性，内容涵盖了C语言编程的基础知识和常用算法，讲解时给出了实例的详细代码及注释。《C语言趣味编程100例》附带1张DVD光盘，收录了本书实例源文件、50小时C语言教学视频及758个C语言编程实例源文件，以方便读者高效、直观地学习。\n　　本书共分12章。第1章介绍了10个趣味算法入门实例；第2章介绍了11个趣味数学实例；第3章介绍了10个趣味整数实例；第4章介绍了8个趣味分数实例；第5章介绍了7个趣味素数实例；第6章介绍了8个趣味逻辑推理实例；第7章介绍了8个趣味游戏实例；第8章介绍了10个趣味数组实例；第9章介绍了7个趣味函数递归实例；第10章介绍了6个定理与猜想实例；第11章介绍了8个趣味图形实例；第12章介绍了7个综合性较强的其他趣味实例。', 'c4.jpg', 'c4.jpg', '6602E4C669BE4989A059DD843EA5F7BC');
INSERT INTO `s_book` VALUES ('268AB9543CDA4F109D0A139D60DB8A45', 'Java经典实例（第三版）', '[美] Ian F.Darwin', '74', '从lambda表达式、JavaFX 8，到网络编程和支持移动设备等方面，Java 8都有许多更新。本书包含了数百个经过实践验证的技巧，内容涵盖了广泛的Java主题，可帮助你快速进入编程状态。你可以从中学到一切有用的技术，包括调试、数据结构、GUI开发和函数编程。\r\n本书的每个技巧既给出了代码部分，也给出了运行结果，还有对它们的讨论。你可以免费使用这些代码。如果你对Java基础知识比较熟悉，学习本书将使你进一步掌握语言方面的通用知识和Java 8 中主要API方面的特殊知识。', '11_img_s.jpg', '11_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('326B01717DE8470083CA7CAE4B49F054', '实战Java高并发程序设计', '葛一鸣', '58.7', '本书主要介绍基于Java的并行程序设计基础、思路、方法和实战。**，立足于并发程序基础，详细介绍Java中进行并行程序设计的基本方法。第二，进一步详细介绍JDK中对并行程序的强大支持，帮助读者快速、稳健地进行并行程序开发。第三，详细讨论有关“锁”的优化和提高并行程序性能级别的方法和思路。第四，介绍并行的基本设计模式及Java 8对并行程序的支持和改进。第五，介绍高并发框架Akka的使用方法。*后，详细介绍并行程序的调试方法。', '10_img_s.jpg', '10_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('422D0B681A1B41E98440E192BB3DF460', '零基础学C语言', '康莉，李宽', '56.9', '本书主要内容包括数据的存储和获取、屏幕的输入与输出、运算符、表达式、分支语句、循环语句、函数、数组、指针、字符串处理、结构体、共用体、枚举、位运算、文件处理、作用域、预处理、数据结构等知识点。最后一章通过一些常见的C语言面试题的解析，为读者踏入职场提供参考资料。', 'c6.jpg', 'c6.jpg', '6602E4C669BE4989A059DD843EA5F7BC');
INSERT INTO `s_book` VALUES ('446A98336322420DA2B2E3F4A8DC6ECA', 'JavaScript权威指南（第6版）', '[美] 弗兰纳根', '109.8', '本书要讲述的内容涵盖JavaScript语言本身，以及Web浏览器所实现的JavaScript API。本书第6版涵盖了HTML5和ECMAScript 5，很多章节完全重写，增加了当今Web开发的最佳实践的内容，新增的章节包括jQuery、服务器端JavaScript、图形编程以及 JavaScript式的面向对象。本书不仅适合初学者系统学习，也适合有经验的 JavaScript 开发者随手翻阅。', 'j2.jpg', 'j2.jpg', '6A67FAB3DA6341D0BE9E987A25EBDAE8');
INSERT INTO `s_book` VALUES ('4539ECBB67C64BEBA704C99FE7E96DE0', '21天学通C语言', '（美）琼斯', '48.2', '《21天学通C语言(第7版)》是初学者学习C语言的经典教程。本版按最新的C11标准(ISO/IEC9899:2011)，以循序渐进的方式介绍了C语言编程方面的知识，并提供了丰富的实例和大量的练习。通过学习实例，并将所学的知识用于完成练习，读者将逐步了解、熟悉并精通C语言。\n　　《21天学通C语言(第7版)》总共分为4部分，第1部分是C语言基础，介绍了C语言的组成、变量、常量、语句、表达式、运算符、函数和循环、信息读写；第2部分介绍了数组、指针、字符和字符串、结构、联合、TypeDef、变量作用域、高级程序控制、输入/输出等；第3部分介绍了指针、磁盘文件、字符串操纵、函数库、内存管理以及编译器的高级用法等；第4部分是附录，介绍了ASCII表、C/C++中的关键字、常用函数，以及习题答案等内容。', 'c5.jpg', 'c5.jpg', '6602E4C669BE4989A059DD843EA5F7BC');
INSERT INTO `s_book` VALUES ('4DB8FEA1465A4E95BC1893386A2766B9', 'Java特种兵（上册）', '谢宇', '64.6', '《Java特种兵（上册）（含CD光盘1张）》上册共10章，主要内容包括：从简单的角度来验证功底，通过一些简单的例子来说明我们应当如何去掌握Java的基础；关于计算机的工作原理和Java虚拟机的基础知识；Java通信；Java并发；数据库知识；源码基础，说明Java常见的框架基础知识，比如反射、AOP、ORM、Annotation和配置文件的原理；JDBC、Spring的源码讲解，通过几种不同类型的框架源码，希望读者能体会源码之中的思维方式、设计、架构，以及了解到不同源码的区别所在；最后是知识总结。\r\n《Java特种兵（上册）（含CD光盘1张）》既适合有一定Java基础，并希望能在Java技术上有所成长的人阅读，也适合能静心看书的初学者，以及以自我提升为主要目的的读者阅读，还适合工作一段时间，对知识和发展的方向很迷茫，甚至对某些观念也比较迷茫，但是又渴望去解决这些问题，渴望自己成长，渴望自己能找到道路的人阅读。', '12_img_s.jpg', '12_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('52418EAD4B9242F3B287F2B04A3AC75F', 'Java核心技术 卷I：基础知识', '[美] 凯 S.霍斯特曼', '94', '本书共14章。第1章概述Java语言与其他程序设计语言不同的性能；第2章讲解如何下载和安装JDK及本书的程序示例；第3章介绍变量、循 环和简单的函数；第4章讲解类和封装；第5章介绍继承；第6章解释接口和内部类；第7章讨论异常处理，并给出大量实用的调试技巧；第8章概要介绍泛型程序 设计；第9章讨论Java平台的集合框架；第10章介绍GUI程序设计，讨论如何建立窗口、如何在窗口中绘图、如何利用几何图形绘图、如何采用多种字体格 式化文本，以及如何显示图像；第11章详细讨论抽象窗口工具包的事件模型；第12章详细讨论Swing GUI工具包；第13章介绍如何将程序部署为应用或applet；第14章讨论并发。本书最后还有一个附录，其中列出了Java语言的保留字。', '08_img_s.jpg', '08_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('52AFE69650B04BC889B0289F44563568', '你不知道的JavaScript（上卷）', '[美] 辛普森', '38.7', '很多人对JavaScript这门语言的印象都是简单易学，很容易上手。虽然JavaScript语言本身有很多复杂的概念，但语言的使用者不必深入理解这些概念就可以编写出功能全面的应用。殊不知，这些复杂精妙的概念才是语言的精髓，即使是经验丰富的JavaScript开发人员，如果没有认真学习的话也无法真正理解它们。在本书中，我们要直面当前JavaScript开发者“不求甚解”的大趋势，深入理解语言内部的机制。', 'j5.jpg', 'j5.jpg', '6A67FAB3DA6341D0BE9E987A25EBDAE8');
INSERT INTO `s_book` VALUES ('603E78A8DD2340048627DB0F95DDA716', 'JavaScript设计模式', '张容铭', '46.6', '《JavaScript设计模式》共分六篇四十章，首先讨论了几种函数的编写方式，体会JavaScript在编程中的灵活性；然后讲解了面向对象编程的知识，其中讨论了类的创建、数据的封装以及类之间的继承；最后探讨了各种模式的技术，如简单工厂模式，包括工厂方法模式、抽象工厂模式、建造者模式、原型模式、单例模式，以及外观模式，包括适配器模式。本书还讲解了几种适配器、代理模式、装饰者模式和MVC模式，讨论了如何实现对数据、视图、控制器的分离。在讲解MVP模式时，讨论了如何解决数据与视图之间的耦合，并实现了一个模板生成器；讲解MVVM模式时，讨论了双向绑定对MVC的模式演化。本书几乎包含了关于JavaScript设计模式的全部知识，是进行JavaScript高效编程必备的学习手册。\n《JavaScript设计模式》适合JavaScript初学者、前端设计者、JavaScript程序员学习，也可以作为大专院校相关专业师生的学习用书，以及培训学校的教材。', 'j4.jpg', 'j4.jpg', '6A67FAB3DA6341D0BE9E987A25EBDAE8');
INSERT INTO `s_book` VALUES ('61088C4905A5421A9C26FEFCBECE01C1', '21天学通Java(第6版)', '[美] Rogers Cadenhead', '44.4', '《21天学通Java(第6版)》是初学者学习Java编程语言的畅销经典教程。本书以之前的版本为基础，以循序渐进的方式介绍了Java编程语言知识，并提供了丰富的实例和大量的练习。与此同时，《21天学通Java(第6版)》还全面涵盖了Java 7这一新标准以及与Android开发相关的Java编程知识。通过本书的学习，读者将逐步了解、熟悉并精通Java编程语言。　　《21天学通Java(第6版)》包括3周的课程，通过学习，读者将具备使用Java开发应用程序和Android应用的知识和技能。第1周介绍Java语言的基本知识，包括数据类型、变量、表达式、对象、数组、条件语句、循环、类、接口、包、异常、线程等；第2周介绍Java类库，包括链表、栈、散列映射和位组等数据结构以及Swing组件、布局管理器和Java Web Start等；第3周介绍高级主题，包括输入和输出、对象序列化、通过Internet进行通信、使用数据库、XML、Web服务、Android编程等内容。', '18_img_s.jpg', '18_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('624C93FE035F46C98839C5D4A7DEEDC3', 'C语言入门经典（第5版）', '(美) 霍尔顿', '55.1', 'C语言是每一位程序员都应该掌握的基础语言。C语言是微软.NET编程中使用的C#语言的基础；C语言是iPhone、iPad和其他苹果设备编程中使用的Objective-C语言的基础；C语言是在很多环境中(包括GNU项目)被广泛使用的C 语言的基础。C语言也是Linux操作系统及其很多功能的基础。学习C语言可以给编程职业生涯提供牢固的基础，也有助于更好地理解更为现代的语言(如Java)。', 'c2.jpg', 'c2.jpg', '6602E4C669BE4989A059DD843EA5F7BC');
INSERT INTO `s_book` VALUES ('6827F5004B2A475D8C9641648BA35F2F', 'Java Web整合开发王者归来', '刘京华', '78.8', '本书全面介绍了Java Web开发中的各种相关技术及知识。全书分为9篇，内容层次清晰，难度循序渐进。第1篇为入门篇，内容包括Java Web开发概述等；第2篇为基础篇，内容包括Servlet技术、JSP技术、会话跟踪、过滤器Filter、监听器Listener等；第3篇为高级篇，内容包括JSTL标签库的使用、如何自定义标签、资源国际化、数据库概述、JDBC详解、XML概述等；第4篇为Struts框架篇，内容不仅包括Struts 1.x的内容，也包括Struts 2.x中的内容；第5篇为Hibernate框架篇；第6篇为Spring框架篇；第7篇为EJB与Web服务篇，内容包括EJB 3概述、JPA规范Web服务框架XFire等；第8篇为工具篇，内容包括在Java Web项目中常用的开源工具框架、主要有版本管理工具SVN、日志工具commons-logging与Log4J、报表图形引擎JFreeChart、PDF组件iText等；第9篇为实战篇，内容为两个典型的应用系统：论坛系统（Spring Struts Hibernate）、宠物商店（EJB 3 JPA Struts 2）。', '06_img_s.jpg', '06_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('6BA0C8BDED7C4BFB9C89809ED6E20910', 'Java项目开发全程实录（第3版）', '王国辉，宋禹蒙', '34.9', '《Java项目开发全程实录（第3版）》以进销存管理系统、企业内部通信系统、企业人事管理系统、酒店管理系统、图书馆管理系统、企业快信、欣想电子商城、超市管理系统、企业门户网站、棋牌游戏系统之网络五子棋等10个实际项目开发程序为案例，从软件工程的角度出发，按照项目的开发顺序，系统、全面地介绍了J2SE和J2EE项目的开发流程。从开发背景、需求分析、系统功能分析、数据库分析、数据库建模、网站开发和网站发布或者程序打包与运行，每一过程都进行了详细的介绍。', '13_img_s.jpg', '13_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('72628B54153048B2BB8D1E023275307D', '自己动手写Java虚拟机', '张秀宏', '56.9', '本书摒弃了传统的以解读枯燥的Java虚拟机规范文档和分析繁琐的Java虚拟机源代码的方式来讲解Java虚拟机，取而代之的是，以实践的方式，引导读者如何从零开始构建和实现一个Java虚拟机，整个过程不仅能让读者做到对Java虚拟机知其然而且知其所以然，还能屏蔽大量不必要的繁琐细节，体会到实现过程中的成就感，让学习过程更加轻松、愉悦和高效。更重要的是，这种方式能引导读者更深入地认识和掌握Java虚拟机的工作原理。', '15_img_s.jpg', '15_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('81C79467604744358D4FDECA0206E3A7', 'Python算法教程', '[挪威]赫特兰', '54.5', 'Python是一种面向对象、解释型计算机程序设计语言，其应用领域非常广泛，包括数据分析、自然语言处理、机器学习、科学计算以及推荐系统构建等。 本书用Python语言来讲解算法的分析和设计。本书主要关注经典的算法，但同时会为读者理解基本算法问题和解决问题打下很好的基础。全书共11章。分别介绍了树、图、计数问题、归纳递归、遍历、分解合并、贪心算法、复杂依赖、Dijkstra算法、匹配切割问题以及困难问题及其稀释等内容。本书在每一章结束的时候均有练习题和参考资料，这为读者的自我检查以及进一步学习提供了较多的便利。在全书的结尾，给出了练习题的提示，方便读者进行查漏补缺。 本书概念和知识点讲解清晰，语言简洁。本书适合对Python算法感兴趣的初中级用户阅读和自学，也适合高等院校的计算机系学生作为参考教材来阅读。', 'p9.jpg', 'p9.jpg', '2DBF33496D5845BFA6BF250CB31D308B');
INSERT INTO `s_book` VALUES ('821807A631F1489588C05C62CDEFDC9E', 'C语言编程实战宝典', '贾蓓，姜薇，镇明敏 ', '84.2', '本书全面、系统地介绍了C语言的基础知识，以及如何使用C语言进行程序开发。书中的内容涉及面广，从基本操作到进阶技巧和高级技术，再到项目开发，几乎涉及C语言开发过程中的所有重要知识。本书讲解时提供了大量的实例，供读者实战演练。另外，本书附赠15小时高品质同步教学视频，对书中的重点和难点内容做了详细讲解，便于读者更加高效、直观地学习。该视频录音清晰，画面清楚，讲解到位，可以让读者感受身临实际教学课堂，聆听老师讲解的教学效果。', 'c3.jpg', 'c3.jpg', '6602E4C669BE4989A059DD843EA5F7BC');
INSERT INTO `s_book` VALUES ('87A725FE898B48BDBEF23733892884ED', 'Java从入门到精通 第2版', '魔乐科技', '34.9', '《Java从入门到精通（第2版）》以零基础讲解为宗旨，用实例引导读者学习，深入浅出地介绍了Java 8的相关知识和实战技能。\r\n《Java从入门到精通（第2版）》第1篇【基础知识】主要讲解Java的基础知识、开发工具、程序要素、常量与变量、数据类型、运算符、表达式与语句、程序控制结构、数组、类和对象、方法以及枚举等；第2篇【核心技术】主要讲解类的封装、继承与多态、抽象类与接口、类的专题研究、Java常用类库、String类、对象的引用与传递、包及访问权限、异常的捕获与处理、Java类集框架以及Annotation等；第3篇【高级应用】主要讲解多线程、文件I/O操作、Java Applet网页小程序、Java网络程序设计、Java数据库编程以及DAO设计模式等；第4篇【项目实战】通过OA办公系统和电子商务网站平台两个实战案例，介绍了完整的Java开发流程。', '07_img_s.jpg', '07_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('8AB1085011C743E7807F9D17315BEE1B', '写给大忙人看的Java SE 8', 'Cay S. Horstmann', '56.1', 'Java SE 8是Java多年来极重要的一个更新版本，备受万千程序员的期待。lambda表达式（闭包）和流的加入代表了自泛型和注解依赖以来，Java语言发生的极大改变。\r\n通过《写给大忙人看的Java SE 8》这本书，国际知名的Java作者 Cay S. Horstmann向我们介绍了Java 8 中极有价值的新特性（以及一些Java 7中本该引起人们注意的特性）。如果你是一个经验丰富的Java编程人员，Horstmann的实际见解和示例代码会帮助你快速掌握这些Java语言和平台的改进。', '17_img_s.jpg', '17_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('90641EDE8768491A8BAC0F77B7B6CB75', '用Python写网络爬虫', '[澳]理查德 劳森', '35.5', '《用Python写网络爬虫》讲解了如何使用Python来编写网络爬虫程序，内容包括网络爬虫简介，从页面中抓取数据的三种方法，提取缓存中的数据，使用多个线程和进程来进行并发抓取，如何抓取动态页面中的内容，与表单进行交互，处理页面中的验证码问题，以及使用Scarpy和Portia来进行数据抓取，使用本书介绍的数据抓取技术对几个真实的网站进行了抓取，旨在帮助读者活学活用书中介绍的技术。 《用Python写网络爬虫》适合有一定Python编程经验，而且对爬虫技术感兴趣的读者阅读。', 'p4.jpg', 'p4.jpg', '2DBF33496D5845BFA6BF250CB31D308B');
INSERT INTO `s_book` VALUES ('98848D9A3C1A4BD9823EA8E3470888F0', 'Java语言程序设计（进阶篇）', '[美] 梁勇', '75.7', '本书是Java语言的经典教材，中文版分为基础篇和进阶篇，主要介绍程序设计基础、面向对象程序设计、GUI程序设计、数据结构和算法、高级Java程序设计等内容。本书可作为高等院校相关专业程序设计课程的基础教材，也可作为Java语言及编程爱好者的参考资料。', '14_img_s.jpg', '14_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('99D63A5A08184EF2B5CB30A372EEA6E9', '高性能JavaScript', 'Nicholas C. Zakas', '51.3', '如果你使用 JavaScript 构建交互丰富的 Web 应用，那么 JavaScript 代码可能是造成你的Web应用速度变慢的主要原因。本书揭示的技术和策略能帮助你在开发过程中消除性能瓶颈。你将会了解如何提升各方面的性能，包括代码的加载、运行、DOM 交互、页面生存周期等。雅虎的前端工程师 Nicholas C. Zakas 和其他五位 JavaScript 专家介绍了页面代码加载的**方法和编程技巧，来帮助你编写更为高效和快速的代码。你还会了解到构建和部署文件到生产环境的**实践，以及有助于定位线上问题的工具。', 'j6.jpg', 'j6.jpg', '6A67FAB3DA6341D0BE9E987A25EBDAE8');
INSERT INTO `s_book` VALUES ('9BD3D4B6E900493F9E55EBFAF5B0ABFD', 'Java编程思想（第四版）', '[美] Bruce Eckel', '70.2', '《计算机科学丛书：Java编程思想（第4版）》赢得了全球程序员的广泛赞誉，即使是晦涩的概念，在BruceEckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），本书都能逐步指导你轻松掌握。', '01_img_s.jpg', '01_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('A0811AC8B1514670AF511EEEA980388B', '大话Java性能优化', '周明耀', '71.8', '本书主要提供Java性能调优方面的参考建议及经验交流。作者力求做到知识的综合传播，而不是仅仅只针对Java虚拟机调优进行讲解，另外力求每一章节都有实际的案例支撑。具体包括：性能优化策略、程序编写及硬件服务器的基础知识、Java API优化建议、算法类程序的优化建议、并行计算优化建议、Java程序性能监控及检测、JVM原理知识、其他相关优化知识等。', '16_img_s.jpg', '16_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('ADC61098C7D54522BA4CE71DE9B79F61', '利用Python进行数据分析', '[美] 麦金尼', '70.3', '本书讲的是利用Python进行数据控制、处理、整理、分析等方面的具体细节和基本要点。同时，它也是利用Python进行科学计算的实用指南（专门针对数据密集型应用）。本书重点介绍了用于高效解决各种数据分析问题的Python语言和库。《利用Python进行数据分析》没有阐述如何利用Python实现具体的分析方法。', 'p5.jpg', 'p5.jpg', '2DBF33496D5845BFA6BF250CB31D308B');
INSERT INTO `s_book` VALUES ('AE024F76C9F049D787D2422B31CA5EC1', 'Head First Python', '[美] 巴里', '53.7', '《Head First Python(中文版)》，本书是典型操作方法手册，通过图片、游戏、故事、激发学习的小测验，你不只会学习 Python与其他编程语言的异同，并且让您了解如何成为一个好的程序员。本书介绍了Python的动态存储数据的唯一方法、构建基于Python的Web 服务器和Web 应用程序、在Android平台上编写移动的应用程序、使用PyGame和PyKyra来开发复杂的游戏、 生成基于GUI的程序与Python的代码库，以及编写Python脚本以自动执行任务对您常用的应用程序。', 'p6.jpg', 'p6.jpg', '2DBF33496D5845BFA6BF250CB31D308B');
INSERT INTO `s_book` VALUES ('AE581B2A155347BAA5F7DD8A0F09040B', 'Python Web开发实战', '董伟明', '82.9', '本书按照一个Web 产品从无到有、从简单变复杂、从基础到进阶的过程，多角度、全方位讲述了Python Web开发。内容涉及Web框架、测试、数据库、消息队列、服务化、持续集成等，把网站工程的全貌展现在读者的眼前，从其中可以了解Web工程从开发到上线的完整流程。另外，作者对当前现在正在流行的技术或工具，如Flask、Celery、Jupyter、Supervisor、SaltStack、Pandas等都有较为详细的阐述，可作为技术选型时的参考。对于Web 开发者、使用Python 语言的运维工程师和运维开发工程师、想提高Python 技能的开发者、想了解Python Web 开发的其他开发者，本书都适合阅读。', 'p10.jpg', 'p10.jpg', '2DBF33496D5845BFA6BF250CB31D308B');
INSERT INTO `s_book` VALUES ('BBADE21EDA97476CB11E929786AEF047', '疯狂Java讲义（第3版）', '李刚', '86.1', '《疯狂Java讲义（第3版）(含CD光盘1张)》深入介绍了Java编程的相关方面，全书内容覆盖了Java的基本语法结构、Java的面向对象特征、Java集合框架体系、Java泛型、异常处理、Java GUI编程、JDBC数据库编程、Java注释、Java的IO流体系、Java多线程编程、Java网络通信编程和Java反射机制。覆盖了java.lang、java.util、java.text、java.io和java.nio、java.sql、java.awt、javax.swing包下绝大部分类和接口。本书全面介绍了Java 8的新的接口语法、Lambda表达式、方法引用、构造器引用、函数式编程、流式编程、新的日期、时间API、并行支持、改进的类型推断、重复注解、JDBC4.2新特性等新特性。', '05_img_s.jpg', '05_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('C8840C39F8BC40B287D817F61CEEF681', '企业级Java EE架构设计精深实践', '罗果', '78.7', '《企业级Java EE架构设计精深实践》全面、深入介绍了企业级Java EE设计的相关内容，内容涵盖了Java EE架构设计的常见问题。《企业级Java EE架构设计精深实践》每一章讲解一个Java EE领域的具体问题，采用问题背景、需求分析、解决思路、架构设计、实践示例和章节总结的顺序组织内容，旨在通过分析相关领域中的常用框架及存在问题，给出相应的解决方案，提高读者分析和解决问题的能力，并增强其架构设计的能力。\r\n《企业级Java EE架构设计精深实践》共13章。内容主要包括虚拟文件系统实践、缓存实践、文件处理框架实践、模板语言实践、数据库访问层实践、数据库扩展实践、服务层实践、流程引擎实践、元数据实践、展现层开发实践、Web扩展实践、Tiny统一界面框架实践和RESTful实践。附录中给出了相关学习资源和配置运行指南。', '19_img_s.jpg', '19_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('C8D79D376EF74AFEB802F105FCC7B3BC', '数据结构与算法JavaScript描述', '[美] 麦克米伦', '42.7', '在过去几年中，JavaScript凭借Node.js和SpiderMonkey等平台，在服务器端编程中得到了广泛应用。JavaScript程序员因而迫切需要使用传统语言(比如C++和Java)提供的工具，包括传统的数据结构以及传统的排序和查找算法。《数据结构与算法JavaScript描述》讨论在数组即对象、无处不在的全局变量、基于原型的对象模型等JavaScript语言的环境下，如何实现高效的数据结构和算法。', 'j8.jpg', 'j8.jpg', '6A67FAB3DA6341D0BE9E987A25EBDAE8');
INSERT INTO `s_book` VALUES ('CD13FDD888F7450EB9B37EA513774D49', 'Python基础教程', '{挪] Magnus Lie Hetland', '53', '《Python基础教程(第2版．修订版)》包括Python程序设计的方方面面，首先从Python的安装开始，随后介绍了Python的基础知识和基本概念，包括列表、元组、字符串、字典以及各种语句。然后循序渐进地介绍了一些相对高级的主题，包括抽象、异常、魔法方法、属性、迭代器。此后探讨了如何将Python与数据库、网络、C语言等工具结合使用，从而发挥出Python的强大功能，同时介绍了Python程序测试、打包、发布等知识。最后，作者结合前面讲述的内容，按照实际项目开发的步骤向读者介绍了几个具有实际意义的Python项目的开发过程。', 'p1.jpg', 'p1.jpg', '2DBF33496D5845BFA6BF250CB31D308B');
INSERT INTO `s_book` VALUES ('D6DC9AA0C1934B309000E91D11E32632', 'Python编程（第四版）', 'Mark Lutz', '156.4', '当掌握Python的基础知识后，你要如何使用Python？本书为这门语言的主要应用领域提供了深度教程，譬如系统管理、GUI和Web，并探索了其在数据库、网络、前端脚本、文本处理等方面的应用。通过关注常用工具和库，你将深入理解Python在现实世界编程中所扮演的角色。\n你将学到清晰和简洁明了的语法和编程技巧，并伴随大量的示例来展示正确的用法和惯例。本书已完全更新到Python 3.x，也深入探讨了作为一种软件开发工具的语言，并有许多代码示例。', 'p3.jpg', 'p3.jpg', '2DBF33496D5845BFA6BF250CB31D308B');
INSERT INTO `s_book` VALUES ('DF13D5F9CA0143D4A4A5D3AAEE672DB1', 'JavaScript从零开始学', '刘增杰', '55.3', '本书主要包括JavaScript知识、JavaScript编程基础、程序控制结构与语句、函数、对象与数组、日期与字符串对象、数值与数学对象、文档对象模型和事件驱动、处理窗口和文档对象、层叠样式表、表单与表单元素、JavaScript控制样式表、CSS和JavaScript的搭配应用案例、程序调试与错误处理、JavaScript中的XML编程、AJAX技术。', 'j9.jpg', 'j9.jpg', '6A67FAB3DA6341D0BE9E987A25EBDAE8');
INSERT INTO `s_book` VALUES ('E09930E87D6844879697713F373B5039', 'Python学习手册：第4版', '鲁特兹', '94', '学习Python的主要内建对象类型：数字、列表和字典。使用Python语句创建和处理对象，并且学习Python的通用语法模型。使用函数构造和重用代码，函数是Python的基本过程工具。学习Python模块：封装语句、函数以及其他工具，以便构建较大的组件。学习Python的面向对象编程工具，用于组织程序代码。学习异常处理模型，以及用于编写较大程序的开发工具。了解高级Python工具，如装饰器、描述器、元类和Unicode处理等。', 'p7.jpg', 'p7.jpg', '2DBF33496D5845BFA6BF250CB31D308B');
INSERT INTO `s_book` VALUES ('E1AD3BC7FC6F4649B280842551292A91', 'Head First Java（中文版）', '[美] 塞若, [美]贝茨', '39.5', '《HeadFirstJava》是一本完整地面向对象(object-oriented，OO)程序设计和Java的学习指导用书，根据学习理论所设计，你可以从程序语言的基础开始，到线程、网络与分布式程序等项目。重要的是，你可以学会如何像一个面向对象开发者一样去思考，而且不只是读死书。在这里，你可以会玩游戏、拼图、解谜题以及以意想不到的方式与Java交互。\r\n　　在这些活动中，你还会写出一堆真正的Java程序，如一个船舰炮战游戏和一个网络聊天程序等等。', '02_img_s.jpg', '02_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('E249C4801E22406F8026511CEBCCC512', 'JavaScript语言精粹', 'Douglas Crockford', '38.7', 'JavaScript 曾是“世界上最被误解的语言”，因为它担负太多的特性，包括糟糕的交互和失败的设计，但随着Ajax 的到来，JavaScript“从最受误解的编程语言演变为非常流行的语言”，这除了幸运之外，也证明了它其实是一门优秀的语言。Douglas Crockford 在本书中剥开了JavaScript 沾污的外衣，抽离出一个具有更好可靠性、可读性和可维护性的JavaScript 子集，让你看到一门优雅的、轻量级的和非常富有表现力的语言。作者从语法、对象、函数、继承、数组、正则表达式、方法、样式和优美的特性这9 个方面来呈现这门语言真正的精华部分，通过它们完全可以构建出优雅高效的代码。作者还通过附录列出了这门语言的毒瘤和糟粕部分，且告诉你如何避免它们。最后还介绍了JSLint，通过它的检验，能有效地保障我们的代码品质。这是一本介绍JavaScript 语言本质的权威书籍，值得任何正在或准备从事JavaScript 开发的人阅读，并且需要反复阅读。学习、理解、实践大师的思想，我们才可能站在巨人的肩上，才有机会超越大师，这本书就是开始。', 'j3.jpg', 'j3.jpg', '6A67FAB3DA6341D0BE9E987A25EBDAE8');
INSERT INTO `s_book` VALUES ('E7C180D9CA3640BDAD8FBE7FEF2E9156', 'JavaScript框架设计', '司徒正美', '74.5', '《JavaScript框架设计》是一本全面讲解JavaScript框架设计的图书，详细地讲解了设计框架需要具备的知识，主要包括的内容为：框架与库、JavaScript框架分类、JavaScript框架的主要功能、种子模块、模块加载系统、语言模块、浏览器嗅探与特征侦测、样式的支持侦测、类工厂、JavaScript对类的支撑、选择器引擎、浏览器内置的寻找元素的方法、节点模块、一些有趣的元素节点、数据缓存系统、样式模块、个别样式的特殊处理、属性模块、jQuery的属性系统、事件系统、异步处理、JavaScript异步处理的前景、数据交互模块、一个完整的Ajax实现、动画引擎、API的设计、插件化、当前主流MVVM框架介绍、监控数组与子模板等。', 'j7.jpg', 'j7.jpg', '6A67FAB3DA6341D0BE9E987A25EBDAE8');
INSERT INTO `s_book` VALUES ('EF3BFE1430934AD18D2FF3A87E70D71A', 'Effective Java中文版(第2版)', '[美] 布洛克', '41', '本书介绍了在Java编程中78条极具实用价值的经验规则，这些经验规则涵盖了大多数开发人员每天所面临的问题的解决方案。通过对Java平台设计专家所使用的技术的全面描述，揭示了应该做什么，不应该做什么才能产生清晰、健壮和高效的代码。\r\n本书中的每条规则都以简短、独立的小文章形式出现，并通过例子代码加以进一步说明。本书内容全面，结构清晰，讲解详细。可作为技术人员的参考用书。', '03_img_s.jpg', '03_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');
INSERT INTO `s_book` VALUES ('F4111541D1B7486083A880DA30410D1F', 'Java Web程序设计 慕课版', '梁永先 李树强 朱林', '40.2', '本书作为Java Web程序设计的教程，系统全面地介绍了有关Java Web程序开发所涉及的各类知识。全书共分14章，内容包括Web应用开发简介，网页前端开发基础，JavaScript脚本语言，Java EE开发环境，JSP技术，Servlet技术，数据库技术，程序日志组件，Struts 2框架，Hibernate技术，Hibernate高级应用，Spring框架，Spring与Struts 2、Hibernate框架的整合，开发天下淘网络商城。全书每章内容都与实例紧密结合，有助于学生理解知识、应用知识，达到学以致用的目的。 本书是慕课版教材，各章节主要内容配备了以二维码为载体的微课，并在人邮学院（www.ptpedu.com.cn）平台上提供了在线慕课。本书还提供书中所有实例、上机指导、综合案例和课程设计的源代码，制作精良的电子课件PPT，自测试卷等内容，读者也可在人邮学院下载。其中，源代码全部经过精心测试，能够在Windows 7、Windows 8、Windows 10系统下编译和运行。', '20_img_s.jpg', '20_img_b.jpg', '760DA70C4EAC4C6189D4F9457A7913E1');

-- ----------------------------
-- Table structure for s_cart
-- ----------------------------
DROP TABLE IF EXISTS `s_cart`;
CREATE TABLE `s_cart` (
  `cartId` char(32) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `bid` char(32) DEFAULT NULL,
  `uid` char(32) DEFAULT NULL,
  `subtotal` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  KEY `bid_cart` (`bid`),
  KEY `uid_cart` (`uid`),
  CONSTRAINT `bid_cart` FOREIGN KEY (`bid`) REFERENCES `s_book` (`bid`),
  CONSTRAINT `uid_cart` FOREIGN KEY (`uid`) REFERENCES `s_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_cart
-- ----------------------------
INSERT INTO `s_cart` VALUES ('9F93192AABEE41789753EA1C4ADD0E12', '2', 'BBADE21EDA97476CB11E929786AEF047', '32DB3700D2564254982BC58B0E4D95BC', '172.20');
INSERT INTO `s_cart` VALUES ('C8929AF9F331417E9CC6DBC9207AFD97', '1', 'C8840C39F8BC40B287D817F61CEEF681', '32DB3700D2564254982BC58B0E4D95BC', '78.7');

-- ----------------------------
-- Table structure for s_category
-- ----------------------------
DROP TABLE IF EXISTS `s_category`;
CREATE TABLE `s_category` (
  `cid` char(32) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `pid` char(32) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid_cid` (`pid`),
  CONSTRAINT `pid_cid` FOREIGN KEY (`pid`) REFERENCES `s_category` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_category
-- ----------------------------
INSERT INTO `s_category` VALUES ('1', '编程语言', null);
INSERT INTO `s_category` VALUES ('2', '数据库', null);
INSERT INTO `s_category` VALUES ('2DBF33496D5845BFA6BF250CB31D308B', 'Python', '1');
INSERT INTO `s_category` VALUES ('3', '移动开发', null);
INSERT INTO `s_category` VALUES ('4', '操作系统', null);
INSERT INTO `s_category` VALUES ('43DE3D64349B42FAA11C708C17DD3E50', 'MySQL', '2');
INSERT INTO `s_category` VALUES ('4E9F50DE61E54EF4B796A9599748D609', 'Sybase ', '2');
INSERT INTO `s_category` VALUES ('5', '办公软件', null);
INSERT INTO `s_category` VALUES ('554AD9E65F084174A64167403EE78D62', 'PPT', '5');
INSERT INTO `s_category` VALUES ('6602E4C669BE4989A059DD843EA5F7BC', 'C', '1');
INSERT INTO `s_category` VALUES ('6A67FAB3DA6341D0BE9E987A25EBDAE8', 'JavaScript', '1');
INSERT INTO `s_category` VALUES ('7', '测试', null);
INSERT INTO `s_category` VALUES ('71F9E6CF05BD42FC9306D262AB30BA5E', 'Android', '3');
INSERT INTO `s_category` VALUES ('760DA70C4EAC4C6189D4F9457A7913E1', 'Java', '1');
INSERT INTO `s_category` VALUES ('765B3F68AE574786AADEBD55B3E5BC4E', 'Access', '2');
INSERT INTO `s_category` VALUES ('799CBB17483E4FFD93C838D592B991E6', 'Swift', '3');
INSERT INTO `s_category` VALUES ('7A7D179491474C4FBED3280C4127FF4E', 'Oracle', '2');
INSERT INTO `s_category` VALUES ('7BF2FC635B4540CC844D915416135E12', 'SQL Server', '2');
INSERT INTO `s_category` VALUES ('894323E1BD194B2180C2F86669D42443', 'Window', '4');
INSERT INTO `s_category` VALUES ('90BA120983304A6C9B6FD7736CEA981F', 'Word', '5');
INSERT INTO `s_category` VALUES ('94066CF1C2EA49ACB873CE9E426FFC5F', 'Unix', '4');
INSERT INTO `s_category` VALUES ('9E07CC98C8C248D2BAF9A222F6FC4E97', 'Linux', '4');
INSERT INTO `s_category` VALUES ('A2D17E611B844888B1E5AC2918DC31AD', 'Excel', '5');
INSERT INTO `s_category` VALUES ('D2C3EBC3AEC64C53954AA740E6DF58D8', 'PHP', '1');
INSERT INTO `s_category` VALUES ('D4E94432DC404C2B86FEDF30234C8687', 'iOS', '3');

-- ----------------------------
-- Table structure for s_order
-- ----------------------------
DROP TABLE IF EXISTS `s_order`;
CREATE TABLE `s_order` (
  `oid` char(32) NOT NULL,
  `ordertime` datetime NOT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `uid` char(32) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `uid_order` (`uid`),
  CONSTRAINT `uid_order` FOREIGN KEY (`uid`) REFERENCES `s_user` (`uid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_order
-- ----------------------------
INSERT INTO `s_order` VALUES ('6D7E5C6EBEE24BC994FEC410C24DBF2F', '2017-01-11 11:19:29', '250.90', '32DB3700D2564254982BC58B0E4D95BC');

-- ----------------------------
-- Table structure for s_orderitem
-- ----------------------------
DROP TABLE IF EXISTS `s_orderitem`;
CREATE TABLE `s_orderitem` (
  `orderitemid` char(32) NOT NULL,
  `bid` char(32) DEFAULT NULL,
  `bname` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderitemsubtotal` varchar(10) DEFAULT NULL,
  `oid` char(32) DEFAULT NULL,
  PRIMARY KEY (`orderitemid`),
  KEY `oid_orderItem` (`oid`),
  CONSTRAINT `oid_orderItem` FOREIGN KEY (`oid`) REFERENCES `s_order` (`oid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_orderitem
-- ----------------------------
INSERT INTO `s_orderitem` VALUES ('449B31B8B9324FC5BA4462FFCE64EE36', 'BBADE21EDA97476CB11E929786AEF047', '疯狂Java讲义（第3版）', '2', '172.20', '6D7E5C6EBEE24BC994FEC410C24DBF2F');
INSERT INTO `s_orderitem` VALUES ('D2529AD8E88B4F53BE96110D6655E5BE', 'C8840C39F8BC40B287D817F61CEEF681', '企业级Java EE架构设计精深实践', '1', '78.7', '6D7E5C6EBEE24BC994FEC410C24DBF2F');

-- ----------------------------
-- Table structure for s_user
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user` (
  `uid` char(32) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `upass` varchar(20) NOT NULL,
  `uemail` varchar(30) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_user
-- ----------------------------
INSERT INTO `s_user` VALUES ('0035C413233A48C7A308DF82AC0AA5B5', 'wangWu', '1234', '12412415@qq.com', '北京xxx');
INSERT INTO `s_user` VALUES ('32DB3700D2564254982BC58B0E4D95BC', 'zhangsan', '1234', 'zhangsan@qq.com', '青岛xxx');
INSERT INTO `s_user` VALUES ('55790D9C1A1845738E6D33866A148C7E', 'admin', '111', null, '222');
INSERT INTO `s_user` VALUES ('55790D9C1A1845738E6D93866A148C7E', 'liSi', '1234', 'lisi@qq.com', '上海xxx');
INSERT INTO `s_user` VALUES ('8CAE08DF2BC748BBA9FEB94DDE2F0CC3', 'zhangsan2', '123', '123456@qq.com', '广州xxx');
