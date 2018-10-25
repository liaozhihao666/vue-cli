-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-09-28 08:50:45
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue`
--

-- --------------------------------------------------------

--
-- 表的结构 `imagelist`
--

CREATE TABLE `imagelist` (
  `id` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `imagelist`
--

INSERT INTO `imagelist` (`id`, `img_url`, `title`) VALUES
(1, 'http://127.0.0.1:3000/img/index/banner1.jpg', '轮播一'),
(2, 'http://127.0.0.1:3000/img/index/banner2.jpg', '轮播二'),
(3, 'http://127.0.0.1:3000/img/index/banner3.jpg', '轮播三'),
(4, 'http://127.0.0.1:3000/img/index/banner4.jpg', '轮播四');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `nid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`nid`, `title`, `add_time`, `click`, `img_url`, `content`) VALUES
(1, '我爱罗', '2018-08-29 16:16:46', 3, 'http://127.0.0.1:3000/img/avatar/touxiang1.jpg', 'oooo'),
(2, '卡卡西', '2018-08-29 16:16:46', 0, 'http://127.0.0.1:3000/img/avatar/touxiang2.jpg', '222'),
(3, '雏田', '2018-08-29 16:16:46', 0, 'http://127.0.0.1:3000/img/avatar/touxiang3.jpg', 'ddd'),
(4, '...', '2018-08-29 16:16:46', 0, 'http://127.0.0.1:3000/img/avatar/touxiang3.jpg', 'aaa'),
(5, 'biaoti', '2018-08-30 14:27:37', 4, 'http://127.0.0.1:3000/img/avatar/touxiang1.jpg', '4444'),
(6, 'biaoti', '2018-08-30 14:27:40', 4, 'http://127.0.0.1:3000/img/avatar/touxiang2.jpg', '4444');
-- --------------------------------------------------------

--
-- 表的结构 `t_cart`
--

CREATE TABLE `t_cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_cart`
--

INSERT INTO `t_cart` (`id`, `uid`, `title`, `price`, `count`) VALUES
(1, 1, '华为p9', '9999.00', 2),
(2, 1, '华为p9pp', '6999.00', 12);

-- --------------------------------------------------------

--
-- 表的结构 `t_comment`
--

CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL,
  `use_name` varchar(25) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_comment`
--

INSERT INTO `t_comment` (`id`, `use_name`, `add_time`, `content`, `nid`) VALUES
(1, 'wp', '2018-08-29 16:17:40', 'hi', 1),
(2, 'wp', '2018-08-29 16:17:40', 'hi', 1),
(3, '', '2018-08-29 16:17:40', 'hi', 1),
(4, 'wp', '2018-08-29 16:17:40', 'hi', 1),
(5, 'wp', '2018-08-29 16:17:40', 'hi', 1),
(6, 'wp', '2018-08-29 16:17:40', 'hi', 1),
(7, 'wp', '2018-08-29 16:17:40', 'hi', 1),
(8, '', '2018-08-29 16:17:40', 'hi', 1),
(9, '', '2018-08-29 16:17:40', 'hi', 1),
(10, 'wp', '2018-08-29 16:17:40', 'hi', 1),
(11, 'wp', '2018-08-30 10:52:26', 'hi', 1),
(12, 'wp', '2018-08-30 11:29:37', 'hi', 1),
(13, 'wp', '2018-08-30 11:29:58', 'hi', 1),
(14, 'wpe', '2018-08-30 11:45:52', 'hirrrrrrrr', 2),
(15, 'wp', '2018-08-30 11:48:10', 'hi', 2),
(16, 'wp', '2018-08-30 14:09:08', 'hi', 1),
(17, 'wp', '2018-08-30 14:14:53', 'hi', 1),
(18, NULL, '2018-08-30 14:14:55', 'hi', 1),
(19, 'wp', '2018-08-30 14:43:50', 'hopln', 1),
(20, 'wp', '2018-08-30 14:44:17', 'ceshiyong', 1),
(21, NULL, '2018-09-25 16:36:51', 'zz', 1),
(22, 'wp', '2018-09-25 16:37:24', 'z', 1),
(23, 'wp', '2018-09-25 16:40:58', 'z', NULL),
(24, 'wp', '2018-09-25 16:41:48', 'dsad', 1),
(25, NULL, '2018-09-25 16:42:21', 'd', 1),
(26, NULL, '2018-09-25 16:42:25', 'd', 1),
(27, NULL, '2018-09-28 14:18:52', '111', 2),
(28, NULL, '2018-09-28 14:20:53', 'zzzzzz', 1),
(29, NULL, '2018-09-28 14:20:54', 'zzzzzz', 1),
(30, NULL, '2018-09-28 14:20:54', 'zzzzzz', 1),
(31, NULL, '2018-09-28 14:23:53', 'zz', 1),
(32, NULL, '2018-09-28 14:23:53', 'zz', 1),
(33, NULL, '2018-09-28 14:23:54', 'zz', 1),
(34, NULL, '2018-09-28 14:23:54', 'zz', 1),
(35, NULL, '2018-09-28 14:23:54', 'zz', 1),
(36, NULL, '2018-09-28 14:23:56', 'zz', 1),
(37, NULL, '2018-09-28 14:23:56', 'zz', 1),
(38, NULL, '2018-09-28 14:24:56', '痛快\n!!!', 3),
(39, NULL, '2018-09-28 14:24:57', '痛快\n!!!', 3),
(40, NULL, '2018-09-28 14:24:57', '痛快\n!!!', 3),
(41, NULL, '2018-09-28 14:24:57', '痛快\n!!!', 3);

-- --------------------------------------------------------

--
-- 表的结构 `t_photo`
--

CREATE TABLE `t_photo` (
  `pid` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_photo`
--

INSERT INTO `t_photo` (`pid`, `img_url`, `title`) VALUES
(1, 'http://127.0.0.1:3000/img/product/md/1.jpg', '第1'),
(2, 'http://127.0.0.1:3000/img/product/md/2.jpg', '第2'),
(3, 'http://127.0.0.1:3000/img/product/md/3.jpg', '3'),
(4, 'http://127.0.0.1:3000/img/product/md/4.jpg', '4'),
(5, 'http://127.0.0.1:3000/img/product/md/5.jpg', '5'),
(6, 'http://127.0.0.1:3000/img/product/md/6.jpg', '6'),
(7, 'http://127.0.0.1:3000/img/product/md/7.jpg', '7'),
(8, 'http://127.0.0.1:3000/img/product/md/8.jpg', '8');

-- --------------------------------------------------------

--
-- 表的结构 `t_product`
--

CREATE TABLE `t_product` (
  `lid` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price_old` decimal(10,2) DEFAULT NULL,
  `price_new` decimal(10,2) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_product`
--

INSERT INTO `t_product` (`lid`, `title`, `price_old`, `price_new`, `lname`, `stock`, `img_url`) VALUES
(1, 'iPhone Xs 手机 金色', '8888.00', '8188.00', '苹果', 999, 'http://127.0.0.1:3000/img/product/md/1.jpg'),
(2, '三星 Galaxy Note9（SM-N9600）6GB+128GB', '6999.00', '6999.00', '三星', 888, 'http://127.0.0.1:3000/img/product/md/2.jpg'),
(3, '华为 HUAWEI P20 AI智慧全面屏 6GB +64GB', '4900.00', '5000.00', '华为', 1000, 'http://127.0.0.1:3000/img/product/md/3.jpg'),
(4, 'OPPO Find X曲面全景屏 波尔多红', '4988.00', '4988.00', 'oppo', 333, 'http://127.0.0.1:3000/img/product/md/4.jpg'),
(5, 'vivo NEX星迹版 零界全面屏AI双摄游戏手机', '4298.00', '4298.00', 'vivo', 555, 'http://127.0.0.1:3000/img/product/md/5.jpg'),
(6, '魅族（MEIZU）Pro 7 plus', '2899.00', '2999.00', '魅族', 1000, 'http://127.0.0.1:3000/img/product/md/6.jpg'),
(7, '魅族（MEIZU） 魅族 16th Plus 游戏手机', '4498.00', '4498.00', '魅族', 777, 'http://127.0.0.1:3000/img/product/md/7.jpg'),
(8, '小米8 全面屏游戏智能手机 6GB+64GB', '2599.00', '2699.00', '小米', 999, 'http://127.0.0.1:3000/img/product/md/8.jpg'),
(9, '三星', '3599.00', '3333.00', '三星', 666, 'http://127.0.0.1:3000/img/product/md/2.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(25) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `uname`, `upwd`) VALUES
(1, 'kate', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'tom', '25f9e794323b453885f5181f1b624d0b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `imagelist`
--
ALTER TABLE `imagelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `t_cart`
--
ALTER TABLE `t_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_comment`
--
ALTER TABLE `t_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_photo`
--
ALTER TABLE `t_photo`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `t_product`
--
ALTER TABLE `t_product`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `imagelist`
--
ALTER TABLE `imagelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `t_cart`
--
ALTER TABLE `t_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `t_comment`
--
ALTER TABLE `t_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- 使用表AUTO_INCREMENT `t_photo`
--
ALTER TABLE `t_photo`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `t_product`
--
ALTER TABLE `t_product`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
