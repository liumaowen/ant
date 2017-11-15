/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : mayi

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-11-15 15:57:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `shijian` varchar(100) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `cate` varchar(20) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '【HTML5开发教程下载】移动应用UI设计模式 ', '2015-11-6 14:58', '蚂蚁HTML5', 'HTML5教程', 'html5kaifajiaocheng.jpg', '移动应用UI设计模式,从简到难系统的讲述了UI设计中的要点，难点！是准备从事UI，和UI设计人员的良好用书！1', '<p><strong style=\"word-wrap: break-word; font-family: Arial, &quot;Microsoft YaHei&quot;, Î¢ÈíÑÅºÚ, SimSun, ËÎÌå; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.8em;\">移动应用UI设计模式,从简到难系统的讲述了UI设计中的要点，难点！是准备从事UI，和UI设计人员的良好用书！112233</strong></p><p><strong style=\"word-wrap: break-word; font-family: Arial, &quot;Microsoft YaHei&quot;, Î¢ÈíÑÅºÚ, SimSun, ËÎÌå; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.8em;\"><br/></strong></p><p><strong style=\"word-wrap: break-word; font-family: Arial, &quot;Microsoft YaHei&quot;, Î¢ÈíÑÅºÚ, SimSun, ËÎÌå; font-size: 14px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); line-height: 1.8em;\"></strong></p>');
INSERT INTO `article` VALUES ('2', '【HTML5视频教程下载】HTML5/css3实例精解共六章、32讲！ ', '2015-4-14 11:21', '蚂蚁HTML5', 'HTML5教程', '111900fi1ngmjqgx4f6qix.jpg', '比较基础的HTML5开发视频教程，对于初学者应该有很大的帮助，应网友的有求，我们会陆续推出更多的程以便于大家下载学习，加入群362664990，和大神一直交流，也或者关注我们的官方微信，我们的团队会为大家竭诚服务', '<p><span style=\"font-family: &quot;Microsoft yahei&quot;, 微软雅黑, Arial, Helvetica, sans-serif, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">　　比较基础的HTML5开发视频教程，对于初学者应该有很大的帮助，应网友的有求，我们会陆续推出更多的程以便于大家下载学习，加入群</span><strong style=\"word-wrap: break-word; font-family: &quot;Microsoft yahei&quot;, 微软雅黑, Arial, Helvetica, sans-serif, 宋体; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color:#f00000;word-wrap: break-word;\">362664990</span></strong><span style=\"font-family: &quot;Microsoft yahei&quot;, 微软雅黑, Arial, Helvetica, sans-serif, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">，和大神一直交流，也或者关注我们的官方微信，我们的团队会为大家竭诚服务</span></p><p><span style=\"font-family: &quot;Microsoft yahei&quot;, 微软雅黑, Arial, Helvetica, sans-serif, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\"><br/></span></p><p><span style=\"font-family: &quot;Microsoft yahei&quot;, 微软雅黑, Arial, Helvetica, sans-serif, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\"></span></p>');
INSERT INTO `article` VALUES ('24', '欢度国庆/中秋：程序员，最重要的就是开心啦！', '2017-9-30 21:48', '蚂蚁HTML5', '蚂蚁资讯', 'zixun1.jpg', '欢度国庆/中秋：程序员，最重要的就是开心啦，送您一本装逼大法！', '<p>就这张图。</p><p><br/></p>');
INSERT INTO `article` VALUES ('25', '微信新升级，准备拳打阿里、脚踢百度、干翻头条！', '2017-5-18 15:22', '蚂蚁HTML5', '蚂蚁资讯', '151914nvqg5ffssgzfcfgd.png.thumb.jpg', '微信准备拳打阿里、脚踢百度了——在昨天微信iOS更新的6.5.8版本中，很多人闻到这样的味道。', '<p><span style=\"font-family: Arial, &quot;Microsoft YaHei&quot;, Î¢ÈíÑÅºÚ, SimSun, ËÎÌå; font-size: 14px; background-color: rgb(255, 255, 255);\">微信准备拳打阿里、脚踢百度了——在昨天微信iOS更新的6.5.8版本中，很多人闻到这样的味道。</span></p>');
INSERT INTO `article` VALUES ('26', '一名合格的前端工程师的知识构成！', '2017-5-7 21:56', '蚂蚁HTML5', '蚂蚁资讯', '215513n1fucgu53ufqrllf.jpg.thumb.jpg', '前端工程师，也叫Web前端开发工程师。他是随着web发展，细分出来的行业。', '何为：前端工程师？');
INSERT INTO `article` VALUES ('27', '多角度深入分析微信小程序与HTML5差异', '2017-3-22 23:46', '蚂蚁HTML5', '蚂蚁资讯', '105810mhiuhsktcfziiisi.jpg.thumb.jpg', '随着H5游戏的兴起，越来越多人对于这个新兴的游戏类别感兴趣，与此同时，微信这个社交媒体则宣布小程序已经上线，小程序是微信基于H5技术的基础上开发的一种公众号类型，颇受业界关注。', '随着H5游戏的兴起，越来越多人对于这个新兴的游戏类别感兴趣，与此同时，微信这个社交媒体则宣布小程序已经上线，小程序是微信基于H5技术的基础上开发的一种公众号类型，颇受业界关注。');
INSERT INTO `article` VALUES ('28', 'HTML5、多边平台，企业将来生存的两个互联网机会', '2017-3-11 21:21', '蚂蚁HTML5', '蚂蚁资讯', '210810rwerw7w7vwwxwgr2.jpeg.thumb.jpg', '对于大部分传统企业而言，所要做的不是盲目地自建平台，而是应该对不同平台进行调研，及时进入。同时，HTML5足够轻便、快捷的特点，也是这些企业把握新型平台的重要市场机会。', '对于大部分传统企业而言，所要做的不是盲目地自建平台，而是应该对不同平台进行调研，及时进入。同时，HTML5足够轻便、快捷的特点，也是这些企业把握新型平台的重要市场机会。');
INSERT INTO `article` VALUES ('29', '我们真的需要“小程序”么？HTML5的未来', '2017-2-22 11:35', '蚂蚁HTML5', '蚂蚁资讯', '113406wu55buahg9t552hq.jpg.thumb.jpg', '作为一名HTML5老兵，在他看来，微信虽然用了HTML5技术来做应用号（小程序），但是它并没有真正用到HTML5的精髓——开放、互联，也就决定了它无法实现“微信OS”的最终野心。', '作为一名HTML5老兵，在他看来，微信虽然用了HTML5技术来做应用号（小程序），但是它并没有真正用到HTML5的精髓——开放、互联，也就决定了它无法实现“微信OS”的最终野心。');
INSERT INTO `article` VALUES ('30', '小程序开发者的焦虑与期待：微信新物种和APP如何差异化定位？', '2017-1-13 11:09', '蚂蚁HTML5', '蚂蚁资讯', '111002ud9mym1s74w1kp5a.jpg.thumb.jpg', '从概念提出到正式上线，微信小程序耗时一年，在这一年里，各路开发者摩拳擦掌，希冀从这个微信新物种身上，获得助益业务的魔法。', '2017年1月9日凌晨，微信小程序正式上线，甫一发布，便引发互联网从业者圈的关注热议。');
INSERT INTO `article` VALUES ('31', '微信小程序或将掀起App使用革命', '2017-1-13 11:01', '蚂蚁HTML5', '蚂蚁资讯', '105810mhiuhsktcfziiisi.jpg.thumb.jpg', '酝酿多时的微信小程序，2017年1月9日正式上线。选择1月9日发布，体现了微信团队的雄心。要知道，2007年1月9日，苹果公司的iPhone手机正式问世。微信团队选择的发布时间，充分表达了对苹果产品的敬意，同时也包含了 ...', '酝酿多时的微信小程序，2017年1月9日正式上线。选择1月9日发布，体现了微信团队的雄心。');
INSERT INTO `article` VALUES ('32', 'Chrome 新版发布：HTML5已经变成默认选项', '2016-12-14 14:29', '蚂蚁HTML5', '蚂蚁资讯', '142725spnk6jx1sluxp0lk.jpg.thumb.jpg', '谷歌曾宣布，从9月份开始，Chrome 53将会对Flash在网页后台中的加载行为进行阻止；而到12月，Chrome将把HTML 5作为Chrome浏览器的默认选项。', '谷歌曾宣布，从9月份开始，Chrome 53将会对Flash在网页后台中的加载行为进行阻止；而到12月，Chrome将把HTML 5作为Chrome浏览器的默认选项。');
INSERT INTO `article` VALUES ('33', '微信小程序开放公测 不接受个人身份申请', '2016-11-4 09:53', '蚂蚁HTML5', '蚂蚁资讯', '095239uyg1ooadalt8satd.jpg.thumb.jpg', '1月4日消息，微信小程序开放公测，开放注册范围包括企业、政府、媒体以及其他组织，个人身份不能注册。接入流程包括注册、小程序信息完善、开发小程序、提交审核和发布。完成开发后，提交代码至微信团队审核，审核通 ...', '据已测试过的媒体透露，现阶段，每个机构账号只允许注册最多50个小程序，每个小程序一年需要缴纳300元，所有小程序帐号都要绑定一个电子邮箱，一个手机号只能绑定5个小程序。');
INSERT INTO `article` VALUES ('34', '今天是个好日子', '2017-3-20 12:00', '我影随行', 'HTML5源码', '105810mhiuhsktcfziiisi.jpg.thumb.jpg', '这个技术很有用', '<p>多看多听多交流</p>');
INSERT INTO `article` VALUES ('35', '标题党', '2018-1-1 8:00', '标题的弟弟', '网站源码', '142725spnk6jx1sluxp0lk.jpg.thumb.jpg', '哈哈备受鼓舞', '<p>敲代码让我快乐</p>');
INSERT INTO `article` VALUES ('36', '标题2', '2015-9-20 7:04', '标题2的哥哥', 'HTML5游戏', '113406wu55buahg9t552hq.jpg.thumb.jpg', '休闲时间玩玩游戏打发时间也很不错', '<p>但是沉迷于网络就不好了</p>');
INSERT INTO `article` VALUES ('37', '标题5', '2017-2-2 5:08', '标题5的大爷', '专题', '111002ud9mym1s74w1kp5a.jpg.thumb.jpg', '我的专题我做主', '<p>你要做主也可以</p>');
INSERT INTO `article` VALUES ('38', '又是标题党', '2017-3-20 12:00', '文哥', '蚂蚁资讯', '234326rnvr24nqt3i1obv2.jpg.thumb.jpg', '真心不知道说什吗了', '<p>你给我说点吧</p>');
INSERT INTO `article` VALUES ('39', 'C2C美甲手机电商网站源码', '2016-8-3 18:04', '蚂蚁HTML5', 'HTML5源码', '03765255d5a146ccd9224885dedcdc85.jpg', 'C2C美甲手机电商网站模板html源码,含整站静态模板文件', 'C2C美甲手机电商网站模板html源码,含整站静态模板文件');
INSERT INTO `article` VALUES ('40', '仿一起惠返利网·触摸版', '2015-10-21 11:54', '蚂蚁HTML5', 'HTML5源码', '85bc83f396539a92be9e97edcf881059.jpg', '仿一起惠返利网·触摸版，很不错的源码全套都有！', '仿一起惠返利网·触摸版，很不错的源码全套都有！');
INSERT INTO `article` VALUES ('41', '欢乐斗地主网页版！', '2016-7-19 22:39', '蚂蚁HTML5', 'HTML5源码', '4efbda8961ef240a6855eb1fb30faf6a.jpg', ' 欢乐斗地主网页版经典小游戏！！！', '欢乐斗地主网页版经典小游戏！！！');
INSERT INTO `article` VALUES ('42', '2015年16个最佳的免费响应式HTML5框架', '2015-4-22 11:04', '蚂蚁HTML5', '论坛', '70e9308d9b024b869951856169bb88c9.jpg', 'HTML5框架是一类有助于快速轻松创建响应式网站的程序包。这些HTML5框架有着能减轻编程任务和重复代码负担的神奇功能。关于免费的HTML5框架，种类繁多，并且大多很受欢迎', '<p>HTML5框架是一类有助于快速轻松创建响应式网站的程序包。这些HTML5框架有着能减轻编程任务和重复代码负担的神奇功能。关于免费的HTML5框架，种类繁多，并且大多很受欢迎，因为它们能够允许我们用更少的时间和精力去创建一个令人惊艳的网站。</p><p>　　</p><p>　　下面这些既是响应式的HTML5框架，又跨浏览器兼容。而且这些免费的HTML5框架非常轻巧，所以不会拖累你网站的速度。感兴趣了吧，那么下面，我将为大家隆重揭晓2015年16个最佳的免费响应式HTML5框架！</p><p><br/></p>');

-- ----------------------------
-- Table structure for `bk`
-- ----------------------------
DROP TABLE IF EXISTS `bk`;
CREATE TABLE `bk` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) DEFAULT NULL,
  `adminname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bk
-- ----------------------------
INSERT INTO `bk` VALUES ('1', 'HTML5/CSS3', '大神神码');
INSERT INTO `bk` VALUES ('2', 'H5-素材资源下载区', '文哥至上');
INSERT INTO `bk` VALUES ('3', '游戏技术引擎/源码', '我是谁');
INSERT INTO `bk` VALUES ('4', 'Javascript！', '大兵小虾');
INSERT INTO `bk` VALUES ('5', '会员交流区', '时期');
INSERT INTO `bk` VALUES ('6', 'VIP用户区', '还是文哥');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cateid` int(100) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `submenu1` varchar(255) DEFAULT NULL,
  `submenu2` varchar(255) DEFAULT NULL,
  `submenu3` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cateid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '首页', 'Portal', null, null, null, null);
INSERT INTO `category` VALUES ('2', '蚂蚁资讯', null, null, null, null, 'news');
INSERT INTO `category` VALUES ('3', 'HTML5教程', null, '在线教程', '正则表达式', null, 'edu');
INSERT INTO `category` VALUES ('4', 'HTML5源码', null, 'HTML5手游', 'HTML5创意', 'HTML5模板', 'xiazai');
INSERT INTO `category` VALUES ('5', '网站源码', null, null, null, null, 'wzym');
INSERT INTO `category` VALUES ('6', 'HTML5游戏', null, 'HTML5创意', null, null, 'h5game');
INSERT INTO `category` VALUES ('7', '论坛', 'BBS', null, null, null, 'bbs');
INSERT INTO `category` VALUES ('8', '专题', null, '淘贴', null, null, 'zhuanti');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL,
  `content` text,
  `author` varchar(255) DEFAULT NULL,
  `articleID` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '2017-9-18 14:05', '<p>在评论一个看看123</p>', 'hexie', '1');
INSERT INTO `comments` VALUES ('2', '2017-10-2 12:00', '此贴赞一个', 'jhjh', '1');
INSERT INTO `comments` VALUES ('3', '2017-1-20 8:02', '谢谢楼主，收藏', 'wenwen', '1');
INSERT INTO `comments` VALUES ('4', '2017-2-04 10:38', '技术贴太好了', 'ddfdxv', '2');
INSERT INTO `comments` VALUES ('5', '2016-3-20 20:00', '太给力了', 'kjnkjnk', '2');
INSERT INTO `comments` VALUES ('6', '2017-9-21 21:00', '多好的帖子，你们怎么不顶呢', 'fsdz', '2');
INSERT INTO `comments` VALUES ('50', '2017-10-24 14:0', '此贴必火', null, '1');
INSERT INTO `comments` VALUES ('75', '2017-10-27 12:18', '你是我的小丫小丫小苹果', '\n						jkl\n					', '1');
INSERT INTO `comments` VALUES ('77', '2017-10-27 12:19', '没有比这更好的了', '\n						jkl\n					', '1');
INSERT INTO `comments` VALUES ('78', '2017-10-28 9:52', '难道你觉得这帖子不好吗', '\n						lmw\n					', '2');
INSERT INTO `comments` VALUES ('79', '2017-10-31 9:48', '我是不会说的', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('80', '2017-10-31 9:48', '我真的不会说的', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('81', '2017-10-31 9:51', '真的假的', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('82', '2017-10-31 10:29', '我知道了你呢', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('83', '2017-10-31 10:30', '你肯定不知道吧', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('84', '2017-10-31 10:32', '谁说我不知道', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('85', '2017-10-31 10:59', '你不说也得说', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('86', '2017-10-31 11:1', '说了你也不知道', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('87', '2017-10-31 11:3', '我真的醉了', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('88', '2017-10-31 11:4', '你觉得呢', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('89', '2017-10-31 11:5', '我不觉得', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('90', '2017-10-31 11:6', '这次不会错了吧', '\n						lmw\n					', '27');
INSERT INTO `comments` VALUES ('91', '2017-10-31 11:9', '我  是你的', '\n						lmw\n					', '27');

-- ----------------------------
-- Table structure for `grzx`
-- ----------------------------
DROP TABLE IF EXISTS `grzx`;
CREATE TABLE `grzx` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grzx
-- ----------------------------
INSERT INTO `grzx` VALUES ('1', 'lmw', '419419');
INSERT INTO `grzx` VALUES ('3', 'qwer', '1234');
INSERT INTO `grzx` VALUES ('4', 'qwer', '1234');
INSERT INTO `grzx` VALUES ('5', 'jkl', '7890');
INSERT INTO `grzx` VALUES ('6', '', '');
INSERT INTO `grzx` VALUES ('7', '', '');
INSERT INTO `grzx` VALUES ('8', '', '');

-- ----------------------------
-- Table structure for `tiezi`
-- ----------------------------
DROP TABLE IF EXISTS `tiezi`;
CREATE TABLE `tiezi` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `ptime` varchar(255) DEFAULT NULL,
  `zhutiID` int(100) DEFAULT NULL,
  `cate` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `zcate` varchar(255) DEFAULT NULL,
  `bcate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiezi
-- ----------------------------
INSERT INTO `tiezi` VALUES ('1', 'HTML5+CSS3响应式垂直时间轴', 'HTML5+CSS3响应式垂直时间轴，使用了HTML5标签<section>，时间轴中所有的内容包括标题、简介、时间和图像都放在.cd-timeline-block的DIV中，多个DIV形成一个序列，并把这些DIV放在<section>中。', '2015-9-24', '1', '技术交流', '大兵小虾', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('2', 'HTML5 Canvas 超炫酷烟花绽放动画实现代码', '这是一个很酷的HTML5 canvas动画，它将模拟的是我们现实生活中烟花绽放的动画特效，效果非常逼真，但是毕竟是电脑模拟，元宵节自己做一个美丽的眼花吧！这个HTML5 Canvas动画有一点比较出色，就是其性能，Chrome上基本没有卡的感觉，就算你放出很多烟花也一样。', ' 2017-2-13', '1', 'HTML5游戏教程', '蚂蚁HTML5', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('3', 'HTML5 世界地图源码', 'H5应用世界地图，可显示所有国家名字，妈妈再也不用担心你地里不及格了。', '2017-6-7 ', '1', 'HTML5模板', '蚂蚁HTML5', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('4', 'H5游戏性能能不能跟得上？', '在手机端效果怎么样？', '2017-11-2', '1', '技术交流', 'tyro668', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('5', 'audio标签播放不了音频，使用谷歌浏览器直接打开音频，音频控件显示灰色，不可点击', '音频链接：http://weixin.gzyks.com/park/resource/chahuayuan.mp3\r\n求助，请问有谁知道是什么问题吗？', ' 2017-10-25', '1', '技术交流', '123asd', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('6', '介绍一个简单的HTML5的小游戏——打地鼠', '今天介绍一个打地鼠的小游戏，体验一下HTML5上的游戏开发。本着高精尖的分享精神，特分享出来。没有花时间去找更多的素材，欢迎大家批评指正，也欢迎大家能把这个小游戏做的更完善些。', '2016-11-22', '1', 'HTML5游戏教程', '蚂蚁HTML5', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('7', '双11手机抽奖活动页面模板html5源码下载', '加入html5交流群362664990,技术大拿和你一起交流。', '2015-9-16', '1', '技术交流', '时期', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('8', 'wap手机快递物流管理页面模板源码下载！', '加入html5交流群362664990,技术大拿和你一起交流。', '2015-10-23', '1', '音频视频播放器', '哈哈镜', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('9', 'HTML5投票模板源码下载', 'HTML5投票模板源码下载', '2015-8-17 ', '1', 'HTML5模板', '最近有点累', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('10', 'html5 css3手机网页元宵节活动专题模板下载', 'html5 css3手机网页元宵节活动专题模板下载', '2015-10-11', '1', 'HTML5模板', '我是谁', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('11', 'canvas背景线条粒子动画', '具体也没什么说的，就是一个canvas背景线条粒子动画，比较炫酷的一个背景效果', '2017-9-7', '1', 'HTML5动画', '茗人堂丶小高', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('12', 'HTML5 canvas商品图片360度旋转浏览效果', 'HTML5 canvas商品图片360度旋转浏览效果，全视角查看效果。', '2015-12-31', '1', 'HTML5动画', '苦逼的生活节奏', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('13', 'HTML5手机网页上实现二维码扫描的功能？', 'HTML5手机网页上实现二维码扫描的功能？', '2015-1-19', '1', '答疑解惑', '小可可', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('14', '密码框后面的小眼睛怎样做呀', 'H5小白 在学写手机端，这个不会做了 ，除了插入背景图 ，两个输入框拼凑，能否使用iconfont 如果可以的话怎样写结构？ヾ (o ° ω ° O ) ノ', '2017-9-3', '1', '答疑解惑', '小徒弟哎呦喂', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('15', '浅谈html5建站与传统建站的区别', 'html5建站是这两年才发展起来的，这得益于html5技术的日益成熟。想必很多人应该浏览过html5制作的网站，那种前所未有的前端展示效果肯定会让很多人怦然心动，当然，想要建html5网站的用户中，也不乏没见过html5网站但是人云亦云的人，总而言之，html5网站肯定有其过人之处，下面下边就和大家一起来探讨下html5建站与传统建站的区别。', '2017-3-16', '1', '业内观点', '蚂蚁HTML5', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('16', '他们都说html5会取代flash，是真的吗？', '他们都说html5会取代flash，是真的吗？', '2015-11-26', '1', '业内观点', '哥们儿', 'html5技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('17', ' css3 transition 为移动设备设计的可自由伸缩的搜索框代码', 'css3 transition 为移动设备设计的可自由伸缩的搜索框代码，这是一个为移动设备设计的可自由伸缩的html5搜索框代码，使用css3 transition属性和少量的javascript完成。', ' 2015-10-15', '2', '技术交流', '时期', 'css3技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('18', ' 简单实用的商品购物和添加购物车UI设计', '简要教程\r\n\r\n　　这是一款使用jQuery和CSS3制作的简单实用的商品购物和添加购物车界面设计方案。用户可以在商品购物界面中预览各种型号、颜色、尺寸的商品。然后通过点击添加到购物车按钮就可以将该商品添加到购物车中，操作简单直观。\r\n\r\n　　在传统的购物网站中，用户在商品展示界面看中了一件商品之后，点击这件商品的缩略图，然后可以键入到对应水平的子页面中。在这个子页面中，用户可以选择查看一些商品的属性，然后把商品添加到购物车中。但是在这个购物车界面设计中，用户可以直接在购物界面查看商品的属性，并直接将商品添加到购物车中，简化了用户的操作，大大提升了用户的体验度。\r\n\r\n　　通过在商品预览图界面添加“快速添加到购物车”按钮，可以减少用户的操作步骤，提升用户体验，增加转化率。', '2015-10-7 ', '2', '业内观点', '蚂蚁HTML5', 'css3技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('19', '请教：Table标签的浏览器兼容性问题', '目标\r\n1. 建立3列的Table。Table宽度根据内容自适应。\r\n2. 3列的宽度都是根据内容长度自适应，最后一列宽度由Table总宽度决定\r\n课题\r\n执行如下代码，\r\nChrome以外的浏览器： 满足上述目标\r\nChrome： 第二列，第三列的宽度不符合目标要求（第二第三列的宽度不是自适应，而是看起来像平分了剩余宽度）', '2017-8-31', '2', '答疑解惑', 'tiangej', 'css3技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('20', '新手求助：css中div的宽度和ul的宽度明明设置一样，为什么ul超出了？', '菜鸟上路，用css设置了div的宽度为1300px，ul的宽度为1300px，结果显示出来的ul超出了div的范围，代码和结果如下：\r\n  css文件： \r\n  #Nav-part{width:1300px;height:150px;margin:0px auto;border:solid 1px;background:green;}\r\n    ul{width:1300px;margin:0px;list-style-type:none;background:yellow; }\r\n  jsp文件：\r\n       <div id=\"Maincontainer\">\r\n         <div id=\"Nav-part\">\r\n            <ul>\r\n               <li>Home</li>\r\n               <li>Learning</li>\r\n               <li>Entertainment</li>\r\n               <li>My note</li>\r\n           </ul>\r\n    </div>\r\n\r\n结果如图。在ul中加入padding:0px就不会超出了，这是为什么呀？请各位指教！', ' 2016-1-14 ', '2', '答疑解惑', 'nmdxpc', 'css3技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('21', '53种纯CSS3炫酷loading指示器动画源码', 'load-awesome是一组神奇的纯CSS3 loading指示器动画特效。这组loading动画共有53种不同的效果。它使用简单，每一种loading效果都有单独的CSS文件相对应，使用时仅需引入几K大小的CSS文件即可。', '2015-10-22', '2', 'CSS3动画', '时期', 'css3技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('22', '14种炫酷堆叠卡片切换动画特效源码下载', '这是一组非常有创意的堆叠卡片切换动画特效。这些堆叠卡片切换效果通过点击“确定”或“取消”按钮，以不同的方式将最上面的卡片切换到底部。这14最后卡片切换动画创意十足，效果非常炫酷。', '2015-10-30', '2', 'CSS3动画', '大兵小虾', 'css3技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('23', '仿Twitter“点赞”红心按钮CSS3动画特效', '这是一款效果非常炫酷的仿Twitter“点赞”红心按钮CSS3动画特效。该“点赞”特效使用一颗心形按钮，在用户点击心形按钮的时候，心形按钮由灰色变为红色，同时会在心形按钮的四周产生类似烟花爆炸的效果。', '2015-12-1', '2', 'CSS3动画', '我是谁', 'css3技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('24', '基于Bootstrap的响应式滑动侧边栏布局模板', 'bootstrap-vertical-menu是一款基于Bootstrap的CSS3响应式滑动侧边栏布局模板。该滑动侧边栏布局在大屏幕中以侧边栏的形式存在，在小屏幕设备中，菜单会被移动到屏幕的底部，只显示菜单的图标。', '2015-10-26 ', '2', 'CSS3导航菜单', '蚂蚁HTML5', 'css3技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('25', '7种Material Design风格打开菜单按钮源码下载', '这是一款效果非常炫酷的Material Design风格打开菜单按钮特效。该特效有7种不同的效果，每一种效果中都可以通过点击主菜单按钮来打开一组主菜单按钮，各种打开子菜单的动画效果各不相同。', '2015-10-24', '2', 'CSS3导航菜单', '蚂蚁HTML5', 'css3技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('26', '纯CSS3炫酷手机APP滑动菜单动画特效', '简要教程\r\n\r\n　　这是一款非常时尚的纯CSS3炫酷手机APP滑动菜单动画特效。该特效中当鼠标移动到手机界面上时，菜单图标会逐个滑动显示出来。当鼠标移动到菜单区域会出现一个非常酷的半圆形扩展动画，同时菜单文字将逐一展现出来。\r\n\r\n　　制作方法\r\n\r\n　　HTML结构\r\n\r\n　　该手机滑动菜单动画特效的主要部分是菜单图标和菜单项的展示。这里使用一个嵌套<div>结构，菜单项有超链接<a>元素来制作。', '2015-10-8', '2', 'CSS3导航菜单', '蚂蚁HTML5', 'css3技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('27', '分步式用户注册表单UI界面源码', '这是一款效果非常酷的分步式用户注册表单UI界面设计效果。在这个设计中简单的将用户注册分为3个步骤，用户填写完每一个步骤的信息后可以点击“下一步”按钮跳转到下一个步骤，也可以通过“前一步”按钮来查看前面的填写内容。在切换步骤的时候还带有非常炫酷的过渡动画效果。', '2015-10-23', '2', 'UI界面设计', '大兵小虾', 'css3技术交流', 'HTML5/CSS3');
INSERT INTO `tiezi` VALUES ('28', '简洁的Material Design风格用户登录界面', '这是一款效果非常漂亮的Material Design风格用户登录界面设计。该登录界面采用扁平风格，浮动标签等Material Design元素，使用纯CSS3来完成。', '2015-10-21', '2', 'UI界面设计]', '时期', 'css3技术交流', 'HTML5/CSS3');

-- ----------------------------
-- Table structure for `tiezireply`
-- ----------------------------
DROP TABLE IF EXISTS `tiezireply`;
CREATE TABLE `tiezireply` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `content` text,
  `tID` int(100) DEFAULT NULL,
  `userID` int(100) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiezireply
-- ----------------------------

-- ----------------------------
-- Table structure for `zhuti`
-- ----------------------------
DROP TABLE IF EXISTS `zhuti`;
CREATE TABLE `zhuti` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) DEFAULT NULL,
  `jieshao` varchar(255) DEFAULT NULL,
  `sID` int(100) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhuti
-- ----------------------------
INSERT INTO `zhuti` VALUES ('1', 'html5技术交流', 'HTML5,WEB APP,业内观点等开发交流', '1', 'h5.png', '双11手机抽奖活动页面模板html5 ...', 'snkboos', '2017-11-2');
INSERT INTO `zhuti` VALUES ('2', 'css3技术交流', 'CSS3技术交流，答疑解惑', '1', 'css3.png', '5种纯CSS3鼠标滑过按钮动画特效', 'kcq0514', '2017-10-25');
INSERT INTO `zhuti` VALUES ('3', '微信开发交流', '微信开发者交流，免费下载微信商城、微站模板、微信社交应用和游戏源码以及微信公众号开发教程。', '1', 'wx.png', '运营级仿微信仿陌陌仿快手app源 ...', null, null);
INSERT INTO `zhuti` VALUES ('4', 'html5游戏源码', 'HTML5游戏开发及源码下载！', '1', 'h5game111.png', 'HTML5游戏《欢乐斗地主》源码下 ...', null, null);
INSERT INTO `zhuti` VALUES ('5', '网站源码', '网站源码区，包含各种开源源码，供大家交流，学习！', '1', 'dn.png', '云豹直播全套源码附带安装教程', null, null);
INSERT INTO `zhuti` VALUES ('6', '美术资源', '美术教程，游戏素材资源下载区', '2', 'meishu.png', '经典射击类游戏《雷电》全套资源 ...', null, null);
INSERT INTO `zhuti` VALUES ('7', '2D/3D模型', '2D/3D模型，资源下载区', '2', '3D.png', '赛车类游戏《天天飞车》全套3D模 ...', null, null);
INSERT INTO `zhuti` VALUES ('8', '游戏资源', '游戏特效，UI资源区', '2', 'youxi.png', '游戏UI——节奏大师素材下载', null, null);
INSERT INTO `zhuti` VALUES ('9', 'Cocos2d-x-开源跨平台2D游戏客户端引擎', 'Cocos2d-x教程、Cocos2d-x技术讨论、Cocos2d-x问答、Cocos2d-x源码下载', '3', 'cocos2d.png', '房卡麻将(亲测)+教程+工具，可运 ...', null, null);
INSERT INTO `zhuti` VALUES ('10', '白鹭引擎-Egret Engline', '白鹭教程、白鹭技术讨论、白鹭问答、白鹭源码下载', '3', 'bailu.png', 'egret获取横屏和竖屏切换的方法', null, null);
INSERT INTO `zhuti` VALUES ('11', 'Unity3d-跨平台3D游戏客户端引擎', 'Unity3d源码下载区！', '3', 'common_63_icon.png', 'Unity3D Adventure（冒险）游戏 ...', null, null);
INSERT INTO `zhuti` VALUES ('12', '网游一键端', '网游，android游戏(棋牌，休闲，格斗，策略等)代码一键端！', '3', 'wy.png', '百家手机棋牌游戏源码1.0', null, null);
INSERT INTO `zhuti` VALUES ('13', 'javascript技术交流', 'Javascript技术交流,答疑解惑', '4', 'js.png', 'Swipe JS – 制作微场景滑动页面 ...', null, null);
INSERT INTO `zhuti` VALUES ('14', 'jQuery技术交流', 'jQuery插件,jQuery特效,jQuery ui,jQuery 教程', '4', 'jQ.png', '求大腿指点ajax请求成功后打开新 ...', null, null);
INSERT INTO `zhuti` VALUES ('15', 'jQuery Mobile技术交流', 'jQuery Mobile技术交流,答疑解惑', '4', 'jm.png', 'JQueryMobile从入门到精通配项目 ...', null, null);
INSERT INTO `zhuti` VALUES ('16', '会员交流', '新人报到，会员综合讨论区', '5', 'hy.png', 'VIP在线认证专用贴', null, null);
INSERT INTO `zhuti` VALUES ('17', '面试/招聘交流', '您的面试/招聘经历、感受、心得分享出来，不断的总结我们才能让我们了解不足，让我们走得更远。', '5', 'mianshi.png', '【深圳南山科技园】上市公司 求 ...', null, null);
INSERT INTO `zhuti` VALUES ('18', '交易/宣传', '产品外包，交易，宣传区，不接受灌水广告贴', '5', 'cp.png', '运营级仿微信仿陌陌仿快手app源 ...', null, null);
INSERT INTO `zhuti` VALUES ('19', 'VIP资源区', '蚂蚁社区源码首发区，全网原创HTML5开源资源发布，供大家学习研究，包含HTML5游戏，创意等！', '6', 'vip.jpg', '【蚂蚁社区源码首发】魔法连连看', null, null);
INSERT INTO `zhuti` VALUES ('20', 'VIP提问', 'VIP交流区！网站代码等问题，VIP用户，在此提交（10分钟技术响应），QQ不在进行回复！', '6', 'vipjl.png', '马里奥大狂奔(Super Plumber Run ...', null, null);
