-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 01 月 10 日 15:43
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `shopping`
--

-- --------------------------------------------------------

--
-- 表的结构 `drops`
--

CREATE TABLE IF NOT EXISTS `drops` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `drops`
--

INSERT INTO `drops` (`id`, `url`, `title`) VALUES
(2, 'products.html', 'Android(4)'),
(3, 'products.html', 'Sony(2)'),
(4, 'products.html', 'Android(4)'),
(5, 'products.html', 'Apple(7)'),
(6, 'products.html', 'Acer(53)'),
(7, 'products.html', 'HP(78)'),
(8, 'products.html', 'Intel(5)');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `stock` int(100) NOT NULL,
  `Color` varchar(10) NOT NULL,
  `Size` int(5) NOT NULL,
  `introduce` varchar(100) NOT NULL,
  `isSlider` int(10) NOT NULL COMMENT '0,不活动，1代表活动',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `stock`, `Color`, `Size`, `introduce`, `isSlider`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '32.8', 100, '0', 0, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore', 0);

-- --------------------------------------------------------

--
-- 表的结构 `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `productId` int(100) NOT NULL,
  `imageUrl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `product_images`
--

INSERT INTO `product_images` (`id`, `productId`, `imageUrl`) VALUES
(1, 0, 'file:///F:/02%E5%9F%B9%E8%AE%AD/%E5%9F%B9%E8%AE%AD%20-%20%E8%AF%BE%E4%BB%B6/02%20html5/03%20%E9%AB%9'),
(2, 0, 'file:///F:/02%E5%9F%B9%E8%AE%AD/%E5%9F%B9%E8%AE%AD%20-%20%E8%AF%BE%E4%BB%B6/02%20html5/03%20%E9%AB%9'),
(3, 0, 'file:///F:/02%E5%9F%B9%E8%AE%AD/%E5%9F%B9%E8%AE%AD%20-%20%E8%AF%BE%E4%BB%B6/02%20html5/03%20%E9%AB%9'),
(4, 0, 'file:///F:/02%E5%9F%B9%E8%AE%AD/%E5%9F%B9%E8%AE%AD%20-%20%E8%AF%BE%E4%BB%B6/02%20html5/03%20%E9%AB%9');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
