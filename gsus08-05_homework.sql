-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql3104.db.sakura.ne.jp
-- 生成日時: 2025 年 1 月 02 日 15:54
-- サーバのバージョン： 8.0.40
-- PHP のバージョン: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsus08-05_homework`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `survey1_con_table`
--

CREATE TABLE `survey1_con_table` (
  `id` int NOT NULL,
  `gender` varchar(64) NOT NULL,
  `generation` varchar(64) NOT NULL,
  `area` varchar(64) NOT NULL,
  `agree` varchar(64) NOT NULL,
  `condition1` varchar(128) NOT NULL,
  `condition2` varchar(128) DEFAULT NULL,
  `condition3` varchar(128) DEFAULT NULL,
  `condition4` varchar(128) DEFAULT NULL,
  `condition5` varchar(128) DEFAULT NULL,
  `condition6` varchar(128) DEFAULT NULL,
  `conditions` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- テーブルのデータのダンプ `survey1_con_table`
--

INSERT INTO `survey1_con_table` (`id`, `gender`, `generation`, `area`, `agree`, `condition1`, `condition2`, `condition3`, `condition4`, `condition5`, `condition6`, `conditions`, `date`) VALUES
(1, '女性', '30代', '北海道', 'はい', '生理前に調子が悪い', NULL, NULL, NULL, NULL, NULL, '', '2024-12-20 16:55:32'),
(2, '女性', '50代', '北海道', 'はい', 'ぼーっとする・集中できない', '倦怠感', '動悸・息切れ', '立ちくらみ・めまい・ふらつき', '皮膚や目が乾燥しやすい', '肩こり・腰痛・関節痛', '', '2024-12-20 16:57:26'),
(3, '男性', '10代以下', '東京都', 'はい', 'イライラする・怒りっぽい', '倦怠感', NULL, NULL, NULL, NULL, 'イライラする・怒りっぽい,倦怠感', '2025-01-02 14:10:25'),
(5, '男性', '30代', '北海道', 'はい', '頭痛・頭が重い', '肩こり・腰痛・関節痛', NULL, NULL, NULL, NULL, '', '2024-12-21 10:25:12'),
(6, '男性', '40代', '北海道', 'はい', '倦怠感', NULL, NULL, NULL, NULL, NULL, '', '2024-12-21 13:30:12'),
(7, '女性', '40代', '山形県', 'いいえ', 'この中にはない', NULL, NULL, NULL, NULL, NULL, '', '2024-12-21 13:30:54'),
(8, '男性', '10代以下', '北海道', 'いいえ', '立ちくらみ・めまい・ふらつき', '皮膚や目が乾燥しやすい', '肩こり・腰痛・関節痛', '朝起きられない', '過食', '食欲不振', '', '2024-12-21 13:32:18'),
(9, '男性', '30代', '山梨県', 'いいえ', '立ちくらみ・めまい・ふらつき', NULL, NULL, NULL, NULL, NULL, '', '2024-12-24 09:15:45'),
(10, '女性', '40代', '北海道', 'はい', 'イライラする・怒りっぽい', '頭痛・頭が重い', '倦怠感', '肩こり・腰痛・関節痛', 'むくみ', NULL, 'イライラする・怒りっぽい,頭痛・頭が重い,倦怠感,肩こり・腰痛・関節痛,むくみ', '2025-01-02 14:09:51');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `survey1_con_table`
--
ALTER TABLE `survey1_con_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `survey1_con_table`
--
ALTER TABLE `survey1_con_table`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
