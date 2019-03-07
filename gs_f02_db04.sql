-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019 年 3 朁E07 日 15:19
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_f02_db04`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(18, 'アミカス図書室aaa', '福岡市', '', '2019-02-07 22:31:45'),
(19, '中央図書館', '福岡県福岡市中央区赤坂', '', '2019-02-07 23:25:31'),
(20, 'アミカス図書室', '福岡市', '', '2019-02-14 15:20:42'),
(21, 'アミカス図書室', '福岡市', 'asdfghjkl;', '2019-02-16 14:04:34');

-- --------------------------------------------------------

--
-- テーブルの構造 `php02_table`
--

CREATE TABLE IF NOT EXISTS `php02_table` (
`id` int(12) NOT NULL,
  `task` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `image`, `indate`) VALUES
(3, '課題3aaaaaaaｄｄｄｄ', '2019-02-28', '楽しいaaaaaaｓｓｓｓｓ', NULL, '2019-02-02 15:28:15'),
(6, '課題5', '2019-02-10', '普通', NULL, '2019-02-02 15:29:22'),
(7, '課題6', '2019-02-11', '普通', NULL, '2019-02-02 15:29:41'),
(8, '課題7', '2019-02-14', '普通', NULL, '2019-02-02 15:30:00'),
(9, '課題8', '2019-02-15', '普通', NULL, '2019-02-02 15:30:18'),
(10, '課題9', '2019-02-16', '普通', NULL, '2019-02-02 15:30:33'),
(11, '課題10', '2019-02-19', '普通', NULL, '2019-02-02 15:30:53'),
(23, 'hhh', '2019-02-10', 'ooooooo', NULL, '2019-02-09 20:49:16'),
(24, '', '0000-00-00', NULL, NULL, '0000-00-00 00:00:00'),
(26, 'kadai2', '2019-12-31', 'kadai2 image ', 'uploads/20190302080648d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 16:06:48'),
(27, 'kadai3', '2019-12-31', 'kadai3 image', 'uploads/20190302081311d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-02 16:13:11'),
(28, 'ふふ', '2019-12-31', NULL, NULL, '2019-03-02 17:53:37'),
(29, 'en', '2019-12-31', NULL, NULL, '2019-03-02 17:54:01'),
(30, 'えん', '2019-12-31', NULL, NULL, '2019-03-02 17:58:35'),
(31, 'ウラド3世', '2019-12-31', NULL, NULL, '2019-03-02 17:59:50'),
(32, 'geek', '2019-12-31', NULL, NULL, '2019-03-02 18:01:01'),
(33, 'kukuku', '2019-12-31', NULL, NULL, '2019-03-02 18:03:21'),
(34, 'wertyuiopdfghjklsdfghjk', '2019-12-31', 'qwertyuiopasdfghjklsdfghjkwertyuio', NULL, '2019-03-02 18:07:06'),
(35, 'asdfghj', '2018-11-30', 'ｓｄｆｇｈｊｋうぇｒちゅいｄｆｇｈｊ', NULL, '2019-03-06 21:20:18'),
(36, 'asdfgh', '2017-12-31', 'xcvbnm,ertyuiopsdfghjkl;', NULL, '2019-03-06 22:54:44'),
(37, 'lkjhgfoiuyt', '2019-12-31', 'wertyuiofghjkcvbnm,', NULL, '2019-03-06 22:56:13'),
(38, 'うぇｒちゅいｃｖｂんｍ', '2019-12-31', 'えｒちゅいかｖｂんｍ、', NULL, '2019-03-06 23:25:01'),
(39, 'wqertyuiodfghjk', '2019-12-31', 'errtyuiop@cvbnm,.', NULL, '2019-03-06 23:26:38'),
(40, 'あｓｄｆｇｈ', '2019-12-31', 'あｓｄふぇｒｔ', 'uploads/20190306171222d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-07 01:12:22'),
(41, 'asdfgh', '2019-12-31', 'sdfghwertyu', NULL, '2019-03-07 02:00:58'),
(42, 'wertyuio', '2019-12-31', 'sdfghjkl;xcvbnm,cvbnm,', 'uploads/20190307104722d41d8cd98f00b204e9800998ecf8427e.png', '2019-03-07 18:47:22');

-- --------------------------------------------------------

--
-- テーブルの構造 `php05_charenger`
--

CREATE TABLE IF NOT EXISTS `php05_charenger` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php05_charenger`
--

INSERT INTO `php05_charenger` (`id`, `name`, `image`, `comment`, `indate`) VALUES
(2, 'メジェド様', NULL, '', '2019-03-07 18:16:20'),
(3, 'mejedo ', NULL, '', '2019-03-07 18:22:59'),
(4, 'ころ', NULL, '', '2019-03-07 18:30:00'),
(5, 'ここ', NULL, NULL, '2019-03-07 18:35:01'),
(6, 'ここっこ', NULL, NULL, '2019-03-07 18:35:40'),
(7, 'wertyu', NULL, NULL, '2019-03-07 18:40:13'),
(8, 'oiuytrew', NULL, NULL, '2019-03-07 18:46:41'),
(9, 'ertyuiodfghjk', 'uploads/20190307110237d41d8cd98f00b204e9800998ecf8427e.png', NULL, '2019-03-07 19:02:37'),
(10, 'oiuytrekjhgfmnbvc', 'uploads/20190307110245d41d8cd98f00b204e9800998ecf8427e.png', NULL, '2019-03-07 19:02:45'),
(11, 'wertyudfghjk', 'uploads/20190307110748d41d8cd98f00b204e9800998ecf8427e.png', NULL, '2019-03-07 19:07:48'),
(12, 'poiuytkjhgf,mnb', 'uploads/20190307111010d41d8cd98f00b204e9800998ecf8427e.png', NULL, '2019-03-07 19:10:10'),
(13, 'sotokoto', 'uploads/20190307121314d41d8cd98f00b204e9800998ecf8427e.png', NULL, '2019-03-07 20:13:14'),
(14, 'wareawre', 'uploads/20190307145642d41d8cd98f00b204e9800998ecf8427e.png', NULL, '2019-03-07 22:56:42');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE IF NOT EXISTS `user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`, `indate`) VALUES
(4, 'toudou', 'ttt', 'ttt', 0, 0, '2019-02-14 13:51:28'),
(5, 'ruru', 'ruru', 'rrr', 1, 0, '2019-02-14 14:45:10'),
(6, 'turu', 'turu', 'ttt', 0, 0, '2019-02-14 14:46:12'),
(7, 'qaqa', 'qaqa', 'qq', 1, 0, '2019-02-14 14:47:11'),
(8, 'saga', 'saga', 'saga', 0, 0, '2019-02-14 14:48:22'),
(9, 'ソトコト', 'aaaa', 'aaa', 0, 0, '2019-02-14 14:50:23'),
(10, 'ソトコト', 'aaa', '1111', 1, 0, '2019-02-14 14:54:27'),
(11, 'www', 'www', 'www', 0, 1, '2019-02-28 17:48:09'),
(12, 'www', 'www', 'www', 1, 0, '2019-02-28 17:49:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `php02_table`
--
ALTER TABLE `php02_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `php05_charenger`
--
ALTER TABLE `php05_charenger`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `php02_table`
--
ALTER TABLE `php02_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `php05_charenger`
--
ALTER TABLE `php05_charenger`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
