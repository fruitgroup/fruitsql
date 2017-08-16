-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-08-16 10:44:32
-- 服务器版本： 5.7.18-log
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phalapi`
--

-- --------------------------------------------------------

--
-- 表的结构 `Administrators`
--

CREATE TABLE IF NOT EXISTS `Administrators` (
  `id` int(11) NOT NULL COMMENT ' Primary key ',
  `uid` int(11) NOT NULL COMMENT 'User ID ',
  `user_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'login user name,like phone number,and wechat/QQ login tag ',
  `nick_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT ' user nick name,display on the app and admin dashboard ',
  `login_type` int(11) NOT NULL COMMENT '1:phone number 2:email 3:wechat 4:QQ 5:more and more ',
  `password` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT ' login password,encrypt by md5 or aes-256-cfb ',
  `token` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT ' every time login automatic generate as login only dentiﬁer ',
  `verify_code` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'when user change the password use it as Security code',
  `phone` int(11) NOT NULL COMMENT 'phone number',
  `sex` tinyint(3) NOT NULL COMMENT 'sex 1: man 2: woman',
  `admin_type` int(11) NOT NULL COMMENT 'Administrator''s level 1: root 2: super admin 3: admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `Commodity`
--

CREATE TABLE IF NOT EXISTS `Commodity` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `commodity_id` int(11) NOT NULL COMMENT 'Commodity ID',
  `name` char(50) CHARACTER SET utf8 NOT NULL COMMENT 'Commodity name ',
  `type_id` int(11) NOT NULL COMMENT 'type id',
  `remarks` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'brief introduction'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `Commodity_type`
--

CREATE TABLE IF NOT EXISTS `Commodity_type` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `type_id` int(11) NOT NULL COMMENT 'Commodity type alias'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `Price`
--

CREATE TABLE IF NOT EXISTS `Price` (
  `id` int(11) NOT NULL COMMENT 'Primary key ',
  `commodity_id` int(11) NOT NULL COMMENT 'Commodity ID ',
  `price` decimal(12,2) NOT NULL COMMENT 'price',
  `discount` double(5,2) NOT NULL COMMENT 'Commodity discount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `Property`
--

CREATE TABLE IF NOT EXISTS `Property` (
  `id` int(11) NOT NULL COMMENT 'Primary key ',
  `uid` int(11) NOT NULL COMMENT 'User ID ',
  `money` int(11) NOT NULL COMMENT 'Money'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `id` int(11) NOT NULL COMMENT 'Primary key',
  `uid` int(11) NOT NULL COMMENT 'User ID ',
  `user_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'login user name,like phone number,and wechat/QQ login tag ',
  `nick_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'user nick name,display on the app and admin dashboard ',
  `login_type` int(11) NOT NULL COMMENT '1:phone number 2:email 3:wechat 4:QQ 5:more and more ',
  `password` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'login password,encrypt by md5 or aes-256-cfb ',
  `token` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'every time login automatic generate as login only dentiﬁer ',
  `verify_code` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'when user change the password use it as Security code ',
  `phone` int(11) NOT NULL COMMENT 'phone number ',
  `sex` tinyint(3) NOT NULL COMMENT 'sex 1: man 2: woman'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 表的结构 `User_Address`
--

CREATE TABLE IF NOT EXISTS `User_Address` (
  `id` int(11) NOT NULL COMMENT 'Primary key ',
  `uid` int(11) NOT NULL COMMENT 'User ID ',
  `address` varchar(500) CHARACTER SET utf8 NOT NULL COMMENT 'user''s address'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Administrators`
--
ALTER TABLE `Administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Commodity`
--
ALTER TABLE `Commodity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Commodity_type`
--
ALTER TABLE `Commodity_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Price`
--
ALTER TABLE `Price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Property`
--
ALTER TABLE `Property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User_Address`
--
ALTER TABLE `User_Address`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Administrators`
--
ALTER TABLE `Administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' Primary key ';
--
-- AUTO_INCREMENT for table `Commodity`
--
ALTER TABLE `Commodity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT for table `Commodity_type`
--
ALTER TABLE `Commodity_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT for table `Price`
--
ALTER TABLE `Price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key ';
--
-- AUTO_INCREMENT for table `Property`
--
ALTER TABLE `Property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key ';
--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key';
--
-- AUTO_INCREMENT for table `User_Address`
--
ALTER TABLE `User_Address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key ';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
