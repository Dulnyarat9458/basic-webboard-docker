-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 24, 2022 at 09:19 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(64) NOT NULL,
  `comment_text` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_writer_id` int(64) NOT NULL,
  `comment_content_id` int(64) NOT NULL,
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_text`, `comment_writer_id`, `comment_content_id`, `comment_date`) VALUES
(46, 'มีประโยชน์มากครับ', 31, 24, '2022-07-24 08:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `content_id` int(64) NOT NULL,
  `content_topic` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content_story` text COLLATE utf8_unicode_ci NOT NULL,
  `content_author_id` int(64) NOT NULL,
  `content_post_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`content_id`, `content_topic`, `content_story`, `content_author_id`, `content_post_time`) VALUES
(1, 'how to make friend rice ', 'pad pad', 4, '2022-07-13 14:26:03'),
(2, 'how to make mama ', 'boil some water and pour to mama bow', 4, '2022-07-19 14:26:06'),
(3, 'how to make kraphao ', 'pad mu pad mu sai kraphao', 4, '2022-07-04 14:26:09'),
(5, 'how to make khao mun kai', 'tum mai pen', 4, '2022-07-20 14:26:13'),
(6, 'how to make spagetthi', 'tum mai pen', 4, '2022-07-14 14:26:14'),
(7, 'how to make tomyum', 'tum mai pen', 4, '2022-07-06 14:26:16'),
(9, 'how to make ice cream', 'tum mai pen', 4, '2022-07-12 14:26:20'),
(10, 'ไข่เจียวฟู', 'อร่อยมากครับ', 4, '2022-07-06 14:26:25'),
(11, 'ผัดหมีโคราช', 'อร่อยๆๆๆๆ', 4, '2022-07-12 14:26:23'),
(12, 'หมดไฟในการทำงาน', 'เครียดมากเลยครับ เจอแต่ปัญหา', 4, '2022-07-09 14:26:27'),
(14, 'ตัดผมทรงอะไรดีครับ', 'ผมเป็นคนผมบางและหน้ายาว ตัดทรงอะไรถึงจะดีครับ', 36, '2022-07-09 14:26:31'),
(15, 'ง่วงมากเลย', 'นอนไม่หลับแต่ง่วงมากๆ \n', 36, '2022-07-09 14:26:32'),
(24, 'วิธีทำข้าวมันไก่', 'วิธีทำข้าวมันไก่\nSTEP 1 : ต้มไก่ + น้ำซุปฟัก\nต้มน้ำซุปต้มไก่ โดยใส่ รากผักชี กระเทียม พริกไทย ขิง น้ำตาลกรวด ซีอิ๊วขาว เกลือ เคี่ยวประมาณ 15 นาที นำไก่ลงไปต้มต่อจนไก่สุก ใช้เวลาประมาณ 30 นาที\nนำไก่ที่สุกแล้วไปน็อกในน้ำผสมน้ำแข็ง จนไก่เย็น ใช้เวลาประมาณ 5 – 10 นาที แล้วนำไก่ขึ้นพักให้สะเด็ดน้ำ ทาด้วยน้ำมันพืชบาง ๆ ให้ทั่วชิ้นไก่ พักไว้\nน้ำซุปที่ต้มไก่ให้ช้อนมันออกจากน้ำซุป เอาออกจนน้ำซุปใส ใส่ฟักที่หั่นแล้วลงไปต้ม ปรุงรสด้วยซีอิ๊ว และเกลือ ต้มจนฟักสุก\nTIPS : การต้มไก่ควรใช้ไฟค่อนข้างอ่อน ต้มไปเรื่อย ๆ จะได้น้ำซุปใสเนื้อไก่สวยชวนกินเลยค่า\nSTEP 2 : ทำข้าวมันไก่\n\nหุงข้าวมันไก่ โดยเจียวกระเทียมกับขิงแก่บุบจนหอม ใส่ข้าวสารดิบลงไป ผัดพอเข้ากัน ปรุงรสด้วยเกลือ น้ำมันไก่ที่ช้อนไว้ ผัดอีกรอบแล้วเทใส่หม้อหุงข้าว ใส่น้ำซุปต้มไก่ลงไป หุงจนข้าวสุก อ่านต่อได้ที่ https://www.wongnai.com/recipes/hainanese-chicken-rice?ref=ct', 7, '2022-07-18 09:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(32) NOT NULL,
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` text COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_gender` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_role` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_name`, `user_gender`, `user_role`) VALUES
(3, 'fuang.1111@gmail.com', '$2b$10$qIAdkfxQNx8QdBN1g3V6WuM.tqN4JEwsI4I8q4EzwPhlGyrK38zg.', 'bang fuang', 'olo', 'm'),
(4, 'ole.1111@gmail.com', '$2b$10$Q3ul3m4TkSz4H7CCeRy/ue8BrTxyAdLKpIIr4jVt9usYdhsTGFNV2', 'ole', 'm', 'm'),
(5, 'zan.1111@gmail.com', '$2b$10$hJg26umYws68t1w46NostuUuDKqkovcA0gFV38lFn9okSKfNm2uqy', 'zan', 'm', 'm'),
(6, 'kong.1111@gmail.com', '$2b$10$ChNjPLjYhj6xvxFVlFTYyOVX4aatrPPluEDBzkCAZxKPM.6q4Xsae', 'kong', 'm', 'm'),
(7, 'dulnyarat.9458@gmail.com', '$2b$10$pgqCxslSHR7TcQV8yQ.YxewwR5f0bGE7p7eo4xMJFq8J6W4ezJjIa', 'คุณโอเล่', 'Male', 'm'),
(31, 'o@o.com', '$2b$10$.WEFFz1QKMWBbZ6TgI7ySOyJ7iIfJ6SzHx3e7H.RnDMeNf3TU4byO', 'OLEELEL', 'Men', 'm'),
(34, 'non.1111@gmail.com', '$2b$10$M.Gt3f70RBT8YD5yB.ioDedlsvk4zMSFlxGYWwjcJJhKlMNRE9WsC', 'non', 'm', 'm'),
(36, 's6103051613124@email.kmutnb.ac.th', '$2b$10$FLnn24FHikgoBYRM0L7hVOl/QocJVdoJBUiPW58N8YXaiDauIbS4i', 'j', 'm', 'm'),
(37, 'pongsathorn4542@gmail.com', '$2b$10$wUSreKvdnc95Kckh4.upIefAPKb.g8kU4zaUu9Anru5UaVFJIKRUa', 'ff', 'm', 'm'),
(39, 'admin@admin.com', '$2b$10$8MUMlUCjBfsCbgTd7rOvJew/tKAZpztVK5S4AznvxUb6dKLHCyDdq', 'Admin_krub', 'none', 'a'),
(40, 'koko@gmail.com', '$2b$10$8G921DT6V9RL53ekTol.neYqJQlBceiAcCwdF8G5wPLd6An54u4ji', 'koko', 'male', 'm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `commentwriter` (`comment_writer_id`),
  ADD KEY `commentcontent` (`comment_content_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `writer` (`content_author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `content_id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `commentcontent` FOREIGN KEY (`comment_content_id`) REFERENCES `contents` (`content_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `commentwriter` FOREIGN KEY (`comment_writer_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `writer` FOREIGN KEY (`content_author_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
