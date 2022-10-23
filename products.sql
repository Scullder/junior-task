-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 24 2022 г., 01:38
-- Версия сервера: 8.0.24
-- Версия PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `products`
--

-- --------------------------------------------------------

--
-- Структура таблицы `armrests`
--

CREATE TABLE `armrests` (
  `id` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `armrests`
--

INSERT INTO `armrests` (`id`, `description`) VALUES
(6015, '2D'),
(6009, '3D-регулировка'),
(6011, '4D'),
(6024, 'алюминий'),
(6023, 'алюминий полированный с накладками из мягкого пластика'),
(6019, 'дерево'),
(6030, 'металл (хром) с накладками'),
(6017, 'мягкие накладки'),
(6031, 'мягкий пластик'),
(6020, 'натуральная кожа'),
(6018, 'нерегулируемые'),
(6035, 'нерегулируемые + пюпитр'),
(6008, 'пластик'),
(6010, 'пластик мягкий'),
(6032, 'пластик/металл (хром)'),
(6029, 'пластиковые с накладками'),
(6036, 'пластиковые с пюпитром'),
(6026, 'подушки из экокожи'),
(6012, 'регулировка по высоте'),
(6033, 'с возможностью регулировки'),
(6013, 'с накладками'),
(6022, 'с пластиковыми накладками'),
(6034, 'труба квадратного сечения'),
(6025, 'функция подъема'),
(6016, 'хром'),
(6014, 'хромированные'),
(6028, 'хромированные с накладками'),
(6027, 'эко кожа'),
(6021, 'экокожа');

-- --------------------------------------------------------

--
-- Структура таблицы `chairs`
--

CREATE TABLE `chairs` (
  `id` int NOT NULL,
  `feature_id` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  `producer_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `user_manual` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `creating_manual` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `yandex_image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `print_image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `chairs`
--

INSERT INTO `chairs` (`id`, `feature_id`, `section_id`, `producer_id`, `name`, `user_manual`, `creating_manual`, `yandex_image`, `print_image`, `image`) VALUES
(3803, NULL, 1210, 588, 'Кресло Riva Chair 8085', NULL, 'https://riva.ru/upload/iblock/617/Riva-Chair-8085.jpg', 'https://riva.ru/upload/iblock/19a/Яндекс.Директ-Riva-Chair-8085.zip', 'https://riva.ru/upload/iblock/e48/Riva-Chair-8085.zip', 'https://riva.ru/upload/iblock/d56/d56eac1bf590c818e26788a7d5ff1b2a.jpg'),
(3806, NULL, 1210, 588, 'Кресло Riva Chair 8063', NULL, 'https://riva.ru/upload/iblock/7af/Riva-Chair-8063.jpg', 'https://riva.ru/upload/iblock/e03/Яндекс.Директ-Riva-Chair-8063.zip', 'https://riva.ru/upload/iblock/01f/Riva-Chair-8063.zip', 'https://riva.ru/upload/iblock/bf9/bf99c3ebaa356381fe7a67561ee4c3ac.jpg'),
(3809, NULL, 1210, 588, 'Кресло Riva Chair 8005', NULL, 'https://riva.ru/upload/iblock/04d/8005.pdf', 'https://riva.ru/upload/iblock/ec1/Яндекс.Директ-Riva-Chair-8005.zip', 'https://riva.ru/upload/iblock/5bb/Riva-Chair-8005.zip', 'https://riva.ru/upload/iblock/3dc/3dcc289069ece66cd80838732c9c035c.jpg'),
(3811, NULL, 1210, 588, 'Кресло Riva Chair 8075', NULL, 'https://riva.ru/upload/iblock/f13/Riva-Chair-8075-J.jpg', 'https://riva.ru/upload/iblock/ccc/Яндекс.Директ-Riva-Chair-8075.zip', 'https://riva.ru/upload/iblock/bd4/Riva-Chair-8075.zip', 'https://riva.ru/upload/iblock/fd0/fd066585b9c37e830b8e558cdd6ed77f.jpg'),
(3815, NULL, 1210, 588, 'Кресло Riva Chair 8074 F (подголовник - ткань)', NULL, 'https://riva.ru/upload/iblock/224/Riva-Chair-8074.jpg', 'https://riva.ru/upload/iblock/3cb/Яндекс.Директ-Riva-Chair-8074-F.zip', 'https://riva.ru/upload/iblock/a88/Riva-Chair-8074-F.zip', 'https://riva.ru/upload/iblock/0b5/kreslo-riva-chair-8074-f-podgolovnik-tkan.jpg'),
(3818, NULL, 1210, 588, 'Кресло Riva Chair 8074 (подголовник - экокожа)', NULL, 'https://riva.ru/upload/iblock/e9f/Riva-Chair-8074.jpg', 'https://riva.ru/upload/iblock/795/Яндекс.Директ-Riva-Chair-8074.zip', 'https://riva.ru/upload/iblock/540/Riva-Chair-8074.zip', 'https://riva.ru/upload/iblock/0c6/0c672ea7621f18e1d04ae874ba732980.jpg'),
(3822, NULL, 1210, 588, 'Кресло Riva Chair 8099', NULL, 'https://riva.ru/upload/iblock/444/Riva-Chair-8099.jpg', 'https://riva.ru/upload/iblock/d76/Яндекс.Директ-Riva-Chair-8099.zip', 'https://riva.ru/upload/iblock/4ba/Riva-Chair-8099.zip', 'https://riva.ru/upload/iblock/5bf/5bf21779202f85598c671541ff12eda6.jpg'),
(3826, NULL, 1210, 588, 'Кресло Riva Chair 8104', NULL, 'https://riva.ru/upload/iblock/168/Riva-Chair-8104.jpg', 'https://riva.ru/upload/iblock/10a/Яндекс.Директ-Riva-Chair-8104.zip', 'https://riva.ru/upload/iblock/5e8/Riva-Chair-8104.zip', 'https://riva.ru/upload/iblock/1d3/1d399d76b1b9f4495888b0bfc631499a.jpg'),
(3829, NULL, 1210, 588, 'Кресло Riva Chair 8081', NULL, 'https://riva.ru/upload/iblock/6b6/Riva-Chair-8081.jpg', 'https://riva.ru/upload/iblock/7a6/Яндекс.Директ-Riva-Chair-8081.zip', 'https://riva.ru/upload/iblock/c02/Riva-Chair-8081.zip', 'https://riva.ru/upload/iblock/90b/90b2d844077b5af2030d20130a952725.jpg'),
(3832, NULL, 1209, 588, 'Кресло Riva Chair 6001-3', NULL, 'https://riva.ru/upload/iblock/0ff/Riva-Chair-6001-3.jpg', 'https://riva.ru/upload/iblock/026/Яндекс.Директ-Riva-Chair-6001-3.zip', 'https://riva.ru/upload/iblock/057/Riva-Chair-6001-3.zip', 'https://riva.ru/upload/iblock/70b/70b7b932086239447ca75a3ec4e42ebd.jpg'),
(3835, NULL, 1209, 588, 'Кресло Riva Chair 6002-3', NULL, 'https://riva.ru/upload/iblock/8ec/6002-3.pdf', 'https://riva.ru/upload/iblock/4c6/Яндекс.Директ-Riva-Chair-6002-3.zip', 'https://riva.ru/upload/iblock/62c/Riva-Chair-6002-3.zip', 'https://riva.ru/upload/iblock/d14/kreslo-riva-chair-6002-3-.jpg'),
(3838, NULL, 1209, 588, 'Кресло Riva Chair 9249-4', NULL, 'https://riva.ru/upload/iblock/0cf/Riva-Chair-9249-4.jpg', 'https://riva.ru/upload/iblock/125/Яндекс.Директ-Riva-Chair-9249-4.zip', 'https://riva.ru/upload/iblock/8b6/Riva-Chair-9249-4.zip', 'https://riva.ru/upload/iblock/862/862b2dea2911bfbeac68d5eaf0a98370.jpg'),
(3841, NULL, 1209, 588, 'Кресло Riva Chair  6003-3', NULL, 'https://riva.ru/upload/iblock/bbb/Riva-Chair-6003-3.jpg', 'https://riva.ru/upload/iblock/597/Яндекс.Директ-Riva-Chair-6003-3.zip', 'https://riva.ru/upload/iblock/31b/Riva-Chair-6003-3.zip', 'https://riva.ru/upload/iblock/4e8/4e82dffee9a9e5c6e68e5eb1af10faa8.jpg'),
(4070, NULL, 1208, 588, 'Кресло Riva Chair 9309-1J', NULL, 'https://riva.ru/upload/iblock/af0/9309-1J.pdf', 'https://riva.ru/upload/iblock/e4e/Яндекс.Директ-Riva-Chair-9309-1.zip', 'https://riva.ru/upload/iblock/d26/Riva-Chair-9309-1.zip', 'https://riva.ru/upload/iblock/45e/45e696ef38edfea0273ceeae2dfeb05f.jpg'),
(4595, NULL, 1208, 588, 'Кресло Riva Chair 9154', NULL, 'https://riva.ru/upload/iblock/110/Riva-Chair-9154.jpg', 'https://riva.ru/upload/iblock/d9c/Яндекс.Директ-Riva-Chair-9154.zip', 'https://riva.ru/upload/iblock/8ad/Riva-Chair-9154.zip', 'https://riva.ru/upload/iblock/877/kreslo-riva-chair-9154.jpg'),
(4597, NULL, 1208, 588, 'Кресло Riva Chair 9082-2', NULL, 'https://riva.ru/upload/iblock/12d/Riva-Chair-9082-2.jpg', 'https://riva.ru/upload/iblock/74d/Яндекс.Директ-Riva-Chair-9082-2.zip', 'https://riva.ru/upload/iblock/bc1/Riva-Chair-9082-2.zip', 'https://riva.ru/upload/iblock/623/623c85aa859b8f63ae83b93a985a5531.jpg'),
(4599, NULL, 1208, 588, 'Кресло Riva Chair 9092', NULL, 'https://riva.ru/upload/iblock/bd3/9082-2.pdf', 'https://riva.ru/upload/iblock/451/Яндекс.Директ-Riva-Chair-9092.zip', 'https://riva.ru/upload/iblock/a26/Riva-Chair-9092.zip', 'https://riva.ru/upload/iblock/cda/kreslo-riva-chair-9092.jpg'),
(4601, NULL, 1208, 588, 'Кресло Riva Chair 8234', NULL, NULL, 'https://riva.ru/upload/iblock/a95/Яндекс.Директ-Riva-Chair-8234.zip', 'https://riva.ru/upload/iblock/128/Riva-Chair-8234.zip', 'https://riva.ru/upload/iblock/189/1893390f4376564b1d9b2bfa5777f127.jpg'),
(4603, NULL, 1208, 588, 'Кресло Riva Chair 6002-2', NULL, 'https://riva.ru/upload/iblock/c00/6002-2S.pdf', 'https://riva.ru/upload/iblock/6de/Яндекс.Директ-Riva-Chair-6002-2.zip', 'https://riva.ru/upload/iblock/9bb/Riva-Chair-6002-2.zip', 'https://riva.ru/upload/iblock/7cf/7cf6a6f907c6e9528221541bd9d01486.jpg'),
(4606, NULL, 1208, 588, 'Кресло Riva Chair 9263 (Рипли)', NULL, 'https://riva.ru/upload/iblock/408/Riva-Chair-9263.jpg', 'https://riva.ru/upload/iblock/4e1/Яндекс.Директ-Riva-Chair-9263-Рипли.zip', 'https://riva.ru/upload/iblock/493/Riva-Chair-9263-Рипли.zip', 'https://riva.ru/upload/iblock/b7b/b7b76148455bc215d1f2a14b25e9ae03.jpg'),
(4609, NULL, 1208, 588, 'Кресло Riva Chair 9249-1', NULL, 'https://riva.ru/upload/iblock/fad/Riva-Chair-9249-4.jpg', 'https://riva.ru/upload/iblock/d2b/Яндекс.Директ-Riva-Chair-9249-1.zip', 'https://riva.ru/upload/iblock/6a0/Riva-Chair-9249-1.zip', 'https://riva.ru/upload/iblock/dce/dce731326dd796359f8f69e89915f730.jpg'),
(4612, NULL, 1208, 588, 'Кресло Riva Chair 6002-1', NULL, NULL, 'https://riva.ru/upload/iblock/be8/Яндекс.Директ-Riva-Chair-6002-1.zip', 'https://riva.ru/upload/iblock/c27/Riva-Chair-6002-1.zip', 'https://riva.ru/upload/iblock/0d8/0d8dd124393ff2136d1be9da1dd9cc29.jpg'),
(4615, NULL, 1208, 588, 'Кресло Riva Chair 9036 (Лотос)', NULL, 'https://riva.ru/upload/iblock/b4d/Riva-Chair-9036.jpg', 'https://riva.ru/upload/iblock/c64/Яндекс.Директ-Riva-Chair-9036-Лотос.zip', 'https://riva.ru/upload/iblock/524/Riva-Chair-9036-Лотос.zip', 'https://riva.ru/upload/iblock/817/817c7ec1b57a72d6b2e6b5182c9e2efa.jpg'),
(4618, NULL, 1208, 588, 'Кресло Riva Chair 6001-1', NULL, 'https://riva.ru/upload/iblock/a23/Riva-Chair-6001-1.jpg', 'https://riva.ru/upload/iblock/53c/Яндекс.Директ-Riva-Chair-6001-1.zip', 'https://riva.ru/upload/iblock/bad/Riva-Chair-6001-1.zip', 'https://riva.ru/upload/iblock/13e/13ef6527de382675ef6de27a0ccb9e01.jpg'),
(4621, NULL, 1208, 588, 'Кресло Riva Chair 9211', NULL, 'https://riva.ru/upload/iblock/85c/Riva-Chair-9211.jpg', 'https://riva.ru/upload/iblock/63a/Яндекс.Директ-Riva-Chair-9211.zip', 'https://riva.ru/upload/iblock/d90/Riva-Chair-9211.zip', 'https://riva.ru/upload/iblock/41d/41d74a1aa36451b82200bb898ae88e36.jpg'),
(4625, NULL, 1208, 588, 'Кресло Riva Chair 9112 (Стелс)', NULL, 'https://riva.ru/upload/iblock/2bb/Riva-Chair-9112-.jpg', 'https://riva.ru/upload/iblock/bd1/Яндекс.Директ-Riva-Chair-9112-Стелс.zip', 'https://riva.ru/upload/iblock/5e9/Riva-Chair-9112-Стелс.zip', 'https://riva.ru/upload/iblock/924/kreslo-riva-chair-9112-stels.jpg'),
(4627, NULL, 1208, 588, 'Кресло Riva Chair 9110', NULL, 'https://riva.ru/upload/iblock/eb2/Riva-Chair-9110.jpg', 'https://riva.ru/upload/iblock/ea8/Яндекс.Директ-Riva-Chair-9110.zip', 'https://riva.ru/upload/iblock/e98/Riva-Chair-9110.zip', 'https://riva.ru/upload/iblock/a69/a69fb1bc3c330dcaacfd3994679a0552.jpg'),
(4631, NULL, 1208, 588, 'Кресло Riva Chair  6003-1', NULL, 'https://riva.ru/upload/iblock/ab9/Riva-Chair-6003-1.jpg', 'https://riva.ru/upload/iblock/16a/Яндекс.Директ-Riva-Chair-6003-1.zip', 'https://riva.ru/upload/iblock/a4c/Riva-Chair-6003-1.zip', 'https://riva.ru/upload/iblock/fdc/kreslo-riva-chair-6003-1-.jpg'),
(4635, NULL, 1208, 588, 'Кресло Riva Chair 9127 (Оптика топган)', NULL, 'https://riva.ru/upload/iblock/d5a/Riva-Chair-9127.jpg', 'https://riva.ru/upload/iblock/15e/Яндекс.Директ-Riva-Chair-9127.zip', 'https://riva.ru/upload/iblock/773/Riva-Chair-9127.zip', 'https://riva.ru/upload/iblock/d21/d2107fa4a51e54fb8f37b2a61bd0b069.jpg'),
(4639, NULL, 1208, 588, 'Кресло Riva Chair 9227 (Бумер топган)', NULL, 'https://riva.ru/upload/iblock/1e2/Riva-Chair-9227.jpg', 'https://riva.ru/upload/iblock/6c8/Яндекс.Директ-Riva-Chair-9227-Бумер-топган.zip', 'https://riva.ru/upload/iblock/b60/Riva-Chair-9227-Бумер-топган.zip', 'https://riva.ru/upload/iblock/72e/72eb75fef9442640e59c8e7fea023337.jpg'),
(4643, NULL, 1208, 588, 'Кресло Riva Chair 9131', NULL, 'https://riva.ru/upload/iblock/f5d/Riva-Chair-9131.jpg', 'https://riva.ru/upload/iblock/dde/Яндекс.Директ-Riva-Chair-9131.zip', 'https://riva.ru/upload/iblock/0f1/Riva-Chair-9131.zip', 'https://riva.ru/upload/iblock/cd6/cd6ac819d99a9483870013c3cf82bf14.jpg'),
(4646, NULL, 1208, 588, 'Кресло Riva Chair 9127 (Оптика мультиблок)', NULL, 'https://riva.ru/upload/iblock/0ef/Riva-Chair-9127.jpg', 'https://riva.ru/upload/iblock/245/Яндекс.Директ-Riva-Chair-9127.zip', 'https://riva.ru/upload/iblock/183/Riva-Chair-9127.zip', 'https://riva.ru/upload/iblock/0e1/kreslo-riva-chair-9127-optika-multiblok.jpg'),
(4648, NULL, 1208, 588, 'Кресло Riva Chair 9227 (Бумер мультиблок)', NULL, 'https://riva.ru/upload/iblock/3fb/Riva-Chair-9227.jpg', 'https://riva.ru/upload/iblock/70b/Яндекс.Директ-Riva-Chair-9227-Бумер-мультиблок.zip', 'https://riva.ru/upload/iblock/298/Riva-Chair-9227-Бумер-мультиблок.zip', 'https://riva.ru/upload/iblock/1e5/1e510f593b867e5c06d891428753fd13.jpg'),
(6613, NULL, 1208, 588, 'Кресло Riva Chair 9373', NULL, 'https://riva.ru/upload/iblock/6ce/Riva-Chair-9373.jpg', 'https://riva.ru/upload/iblock/c4f/Яндекс.Директ-Riva-Chair-9373.zip', 'https://riva.ru/upload/iblock/e6f/Riva-Chair-9373.zip', 'https://riva.ru/upload/iblock/7ce/kreslo-riva-chair-9373.jpg'),
(6775, NULL, 1208, 588, 'Кресло Riva Chair 9024', NULL, 'https://riva.ru/upload/iblock/244/Riva-Chair-9024.jpg', 'https://riva.ru/upload/iblock/caf/Яндекс.Директ-Riva-Chair-9024.zip', 'https://riva.ru/upload/iblock/f84/Riva-Chair-9024.zip', NULL),
(6778, NULL, 1209, 588, 'Кресло Riva Chair 9024-4', NULL, 'https://riva.ru/upload/iblock/344/Riva-Chair-9024-4.jpg', 'https://riva.ru/upload/iblock/9c6/Яндекс.Директ-Riva-Chair-9024-4.zip', 'https://riva.ru/upload/iblock/94d/Riva-Chair-9024-4.zip', 'https://riva.ru/upload/iblock/309/kreslo-riva-chair-9024-4.jpg'),
(7267, NULL, 1210, 588, 'Кресло Riva Chair RCH 797', NULL, NULL, 'https://riva.ru/upload/iblock/053/Яндекс.Директ-Riva-Chair-RCH-797.zip', 'https://riva.ru/upload/iblock/e86/Riva-Chair-RCH-797.zip', 'https://riva.ru/upload/iblock/83a/kreslo-riva-chair-rch-797.jpg'),
(7270, NULL, 1210, 588, 'Кресло Riva Chair RCH 626', NULL, NULL, 'https://riva.ru/upload/iblock/ed0/Яндекс.Директ-Riva-Chair-RCH-626.zip', 'https://riva.ru/upload/iblock/077/Riva-Chair-RCH-626.zip', 'https://riva.ru/upload/iblock/561/kreslo-riva-chair-rch-626.JPG'),
(7273, NULL, 1210, 588, 'Кресло Riva Chair RCH 513', NULL, NULL, 'https://riva.ru/upload/iblock/5b9/Яндекс.Директ-Riva-Chair-RCH-513.zip', 'https://riva.ru/upload/iblock/66f/Riva-Chair-RCH-513.zip', NULL),
(7276, NULL, 1210, 588, 'Кресло Riva Chair RCH 687', NULL, NULL, 'https://riva.ru/upload/iblock/225/Яндекс.Директ-Riva-Chair-RCH-687.zip', 'https://riva.ru/upload/iblock/dd7/Riva-Chair-RCH-687.zip', 'https://riva.ru/upload/iblock/4db/kreslo-riva-chair-rch-687.JPG'),
(7279, NULL, 1210, 588, 'Кресло Riva Chair RCH 008', NULL, NULL, 'https://riva.ru/upload/iblock/6e1/Яндекс.Директ-Riva-Chair-RCH-008.zip', 'https://riva.ru/upload/iblock/874/Riva-Chair-RCH-008.zip', 'https://riva.ru/upload/iblock/bdc/kreslo-riva-chair-rch-008.jpg'),
(7282, NULL, 1210, 588, 'Кресло Riva Chair RCH 540', NULL, NULL, 'https://riva.ru/upload/iblock/d3b/Яндекс.Директ-Riva-Chair-RCH-540.zip', 'https://riva.ru/upload/iblock/fba/Riva-Chair-RCH-540.zip', NULL),
(7308, NULL, 1210, 588, 'Кресло Riva Chair 668 B-9', NULL, NULL, 'https://riva.ru/upload/iblock/d2e/Яндекс.Директ-Riva-Chair-668.zip', 'https://riva.ru/upload/iblock/677/Riva-Chair-668.zip', NULL),
(7312, NULL, 1210, 588, 'Кресло Riva Chair 789 B', NULL, NULL, 'https://riva.ru/upload/iblock/039/Яндекс.Директ-Riva-Chair-789.zip', 'https://riva.ru/upload/iblock/af5/Riva-Chair-789.zip', NULL),
(7780, NULL, 1210, 588, 'Кресло Riva Chair 698', NULL, NULL, 'https://riva.ru/upload/iblock/cd0/Яндекс.Директ-Riva-Chair-698.zip', 'https://riva.ru/upload/iblock/496/Riva-Chair-698.zip', NULL),
(7783, NULL, 1210, 588, 'Кресло Riva Chair 768 A', NULL, NULL, 'https://riva.ru/upload/iblock/c4e/Яндекс.Директ-Riva-Chair-768.zip', 'https://riva.ru/upload/iblock/228/Riva-Chair-768.zip', NULL),
(7786, NULL, 1210, 588, 'Кресло Riva Chair 328', NULL, NULL, 'https://riva.ru/upload/iblock/c8f/Яндекс.Директ-Riva-Chair-328.zip', 'https://riva.ru/upload/iblock/0b7/Riva-Chair-328.zip', NULL),
(7870, NULL, 1208, 588, 'Кресло Riva Chair А1511', NULL, 'https://riva.ru/upload/iblock/75a/A1511.pdf', 'https://riva.ru/upload/iblock/f89/Яндекс.Директ-Riva-Chair-A1511.zip', 'https://riva.ru/upload/iblock/2ca/Riva-Chair-A1511.zip', NULL),
(7873, NULL, 1208, 588, 'Кресло Riva Chair F185', NULL, 'https://riva.ru/upload/iblock/d92/F185.pdf', 'https://riva.ru/upload/iblock/031/Яндекс.Директ-Riva-Chair-F185.zip', 'https://riva.ru/upload/iblock/956/Riva-Chair-F185.zip', NULL),
(7878, NULL, 1208, 588, 'Кресло Riva Chair A1815', NULL, 'https://riva.ru/upload/iblock/8fd/A1815.pdf', 'https://riva.ru/upload/iblock/e50/Яндекс.Директ-Riva-Chair-A1815.zip', 'https://riva.ru/upload/iblock/e42/Riva-Chair-A1815.zip', NULL),
(7881, NULL, 1208, 588, 'Кресло Riva Chair A1811', NULL, 'https://riva.ru/upload/iblock/dbb/A1811.pdf', 'https://riva.ru/upload/iblock/5fa/Яндекс.Директ-Riva-Chair-A1811.zip', 'https://riva.ru/upload/iblock/8d1/Riva-Chair-A1811.zip', NULL),
(7884, NULL, 1209, 588, 'Кресло Riva Chair F385', NULL, 'https://riva.ru/upload/iblock/ca5/F385.pdf', 'https://riva.ru/upload/iblock/e77/Яндекс.Директ-Riva-Chair-F385.zip', 'https://riva.ru/upload/iblock/561/Riva-Chair-F385.zip', NULL),
(7887, NULL, 1209, 588, 'Кресло Riva Chair C1511', NULL, NULL, 'https://riva.ru/upload/iblock/a52/Яндекс.Директ-Riva-Chair-C1511.zip', 'https://riva.ru/upload/iblock/9df/Riva-Chair-C1511.zip', NULL),
(7890, NULL, 1209, 588, 'Кресло Riva Chair C1815', NULL, NULL, 'https://riva.ru/upload/iblock/43f/Яндекс.Директ-Riva-Chair-C1815.zip', 'https://riva.ru/upload/iblock/d47/Riva-Chair-C1815.zip', NULL),
(7898, NULL, 1210, 588, 'Кресло Riva Chair 706E', NULL, 'https://riva.ru/upload/iblock/cc3/706.pdf', 'https://riva.ru/upload/iblock/07f/706E.rar', 'https://riva.ru/upload/iblock/02a/706E.rar', NULL),
(7899, NULL, 1210, 588, 'Кресло Riva Chair 851', NULL, NULL, 'https://riva.ru/upload/iblock/9ee/Яндекс.Директ-Riva-Chair-851.zip', 'https://riva.ru/upload/iblock/604/Riva-Chair-851.zip', 'https://riva.ru/upload/iblock/b51/kreslo-riva-chair-851.jpg'),
(7903, NULL, 1210, 588, 'Кресло Riva Chair 831', NULL, NULL, 'https://riva.ru/upload/iblock/356/Яндекс.Директ-Riva-Chair-831.zip', 'https://riva.ru/upload/iblock/a04/Riva-Chair-831.zip', NULL),
(7906, NULL, 1210, 588, 'Кресло Riva Chair 871', NULL, NULL, 'https://riva.ru/upload/iblock/067/Яндекс.Директ-Riva-Chair-871.zip', 'https://riva.ru/upload/iblock/e92/Riva-Chair-871.zip', NULL),
(7909, NULL, 1210, 588, 'Кресло Riva Chair А8 (чёрный пластик)', NULL, 'https://riva.ru/upload/iblock/e4f/а8.pdf', 'https://riva.ru/upload/iblock/948/Яндекс.Директ-Riva-Chair-A8-Черный-пластик.zip', 'https://riva.ru/upload/iblock/8c3/Riva-Chair-A8-Черный-пластик.zip', NULL),
(7914, NULL, 1210, 588, 'Кресло Riva Chair А8 (белый пластик)', NULL, 'https://riva.ru/upload/iblock/6e8/а8.pdf', 'https://riva.ru/upload/iblock/eaa/Яндекс.Директ-Riva-Chair-A8-Белый-пластик.zip', 'https://riva.ru/upload/iblock/c9a/Riva-Chair-A8-Белый-пластик.zip', NULL),
(7918, NULL, 1208, 588, 'Кресло Riva Chair 9208', NULL, NULL, 'https://riva.ru/upload/iblock/755/Яндекс.Директ-Riva-Chair-9208-1.zip', 'https://riva.ru/upload/iblock/081/Riva-Chair-9208-1.zip', NULL),
(7922, NULL, 1209, 588, 'Кресло Riva Chair D801', NULL, NULL, 'https://riva.ru/upload/iblock/2f2/Яндекс.Директ-Riva-Chair-D801.zip', 'https://riva.ru/upload/iblock/19c/Riva-Chair-D801.zip', NULL),
(7924, NULL, 1209, 588, 'Кресло Riva Chair 462E', NULL, 'https://riva.ru/upload/iblock/09c/462.pdf', 'https://riva.ru/upload/iblock/70b/462е.rar', 'https://riva.ru/upload/iblock/ec0/462е.rar', NULL),
(7926, NULL, 1209, 588, 'Кресло Riva Chair 462TE', NULL, 'https://riva.ru/upload/iblock/e0d/462.pdf', 'https://riva.ru/upload/iblock/9ee/462те.rar', 'https://riva.ru/upload/iblock/eed/462те.rar', NULL),
(7928, NULL, 1210, 588, 'Кресло Riva Chair А9', NULL, 'https://riva.ru/upload/iblock/607/а9.pdf', 'https://riva.ru/upload/iblock/ef3/Яндекс.Директ-Riva-Chair-A9.zip', 'https://riva.ru/upload/iblock/693/Riva-Chair-A9.zip', NULL),
(10325, NULL, 1210, 588, 'Кресло Riva Chair 8085 J', NULL, NULL, 'https://riva.ru/upload/iblock/ef5/8085 J.rar', 'https://riva.ru/upload/iblock/61a/8085 J.rar', NULL),
(11866, NULL, 1208, 588, 'Кресло Riva Chair 6002-1 S', NULL, 'https://riva.ru/upload/iblock/ece/6002-1S.pdf', 'https://riva.ru/upload/iblock/c41/6002-1s.rar', 'https://riva.ru/upload/iblock/840/6002-1s.rar', NULL),
(11869, NULL, 1208, 588, 'Кресло Riva Chair 6002-2 S', NULL, 'https://riva.ru/upload/iblock/126/6002-2S.pdf', 'https://riva.ru/upload/iblock/ad9/6002-2s.rar', 'https://riva.ru/upload/iblock/a60/6002-2s.rar', NULL),
(11882, NULL, 1208, 588, 'Кресло Riva Chair 6001-2 S', NULL, 'https://riva.ru/upload/iblock/e30/6001-2S.pdf', 'https://riva.ru/upload/iblock/9d7/6001-2s.rar', 'https://riva.ru/upload/iblock/cf4/6001-2s.rar', NULL),
(11935, NULL, 1208, 588, 'Кресло Riva Chair 6001-1 S', NULL, NULL, 'https://riva.ru/upload/iblock/cf1/6001-1s.zip', 'https://riva.ru/upload/iblock/9ea/6001-1s.zip', 'https://riva.ru/upload/iblock/4e2/kreslo-riva-chair-6001-1-s.jpg'),
(11954, NULL, 1210, 588, 'Кресло Riva Chair 8989 (черный пластик)', NULL, NULL, 'https://riva.ru/upload/iblock/f0d/8989 черный.rar', 'https://riva.ru/upload/iblock/a1e/8989 черный.rar', 'https://riva.ru/upload/iblock/b8e/kreslo-riva-chair-8989-chernyy-plastik.jpg'),
(11960, NULL, 1210, 588, 'Кресло Riva Chair 8989 (серый пластик)', NULL, NULL, 'https://riva.ru/upload/iblock/b9f/8989 серый.rar', 'https://riva.ru/upload/iblock/22f/8989 серый.rar', NULL),
(11968, NULL, 1210, 588, 'Кресло Riva Chair SAKURA (черный пластик)', NULL, 'https://riva.ru/upload/iblock/30c/Sakura.pdf', 'https://riva.ru/upload/iblock/8dc/sakura черный.rar', 'https://riva.ru/upload/iblock/1fa/sakura черный.rar', NULL),
(11972, NULL, 1210, 588, 'Кресло Riva Chair SAKURA (серый пластик)', NULL, 'https://riva.ru/upload/iblock/959/Sakura.pdf', 'https://riva.ru/upload/iblock/3de/sakura серый.rar', 'https://riva.ru/upload/iblock/9d4/sakura серый.rar', NULL),
(11975, NULL, 1210, 588, 'Кресло Riva Chair SAKURA (белый пластик)', NULL, 'https://riva.ru/upload/iblock/51e/Sakura.pdf', 'https://riva.ru/upload/iblock/585/sakura белый.rar', 'https://riva.ru/upload/iblock/5fb/sakura белый.rar', NULL),
(11981, NULL, 1210, 588, 'Кресло Riva Chair SHARK', NULL, 'https://riva.ru/upload/iblock/893/SHARK instruction.pdf', 'https://riva.ru/upload/iblock/e38/shark.rar', 'https://riva.ru/upload/iblock/766/shark.rar', NULL),
(12061, NULL, 1210, 588, 'Кресло Riva Chair 928', NULL, 'https://riva.ru/upload/iblock/ece/928.pdf', 'https://riva.ru/upload/iblock/384/928.rar', 'https://riva.ru/upload/iblock/905/928.rar', NULL),
(12064, NULL, 1209, 588, 'Кресло Riva Chair 801E', NULL, NULL, 'https://riva.ru/upload/iblock/b26/801E.rar', 'https://riva.ru/upload/iblock/ae8/801E.rar', 'https://riva.ru/upload/iblock/69b/kreslo-riva-chair-d801e.jpg'),
(12071, NULL, 1208, 588, 'Кресло Riva Chair  6003-1 S', NULL, 'https://riva.ru/upload/iblock/f9b/6003-1S.pdf', 'https://riva.ru/upload/iblock/2e6/6003-1 S.rar', 'https://riva.ru/upload/iblock/98d/6003-1 S.rar', 'https://riva.ru/upload/iblock/2f7/kreslo-riva-chair-6003-1-s.jpg'),
(12098, NULL, 1210, 588, 'Кресло Riva Chair 8206HX', NULL, 'https://riva.ru/upload/iblock/907/8206HX.pdf', 'https://riva.ru/upload/iblock/131/8206HX.rar', 'https://riva.ru/upload/iblock/3ba/8206HX.rar', NULL),
(12138, NULL, 1210, 588, 'Кресло Riva Chair 923', NULL, NULL, 'https://riva.ru/upload/iblock/956/RCH 923.rar', 'https://riva.ru/upload/iblock/83e/RCH 923.rar', NULL),
(12141, NULL, 1210, 588, 'Кресло Riva Chair 833 H', NULL, 'https://riva.ru/upload/iblock/9bf/833.pdf', 'https://riva.ru/upload/iblock/322/RCH 833H.rar', 'https://riva.ru/upload/iblock/d44/RCH 833H.rar', NULL),
(12151, NULL, 1208, 588, 'Кресло Riva Chair 6016-1 S', NULL, 'https://riva.ru/upload/iblock/ce5/6016-1S.pdf', 'https://riva.ru/upload/iblock/917/6016-1 S.rar', 'https://riva.ru/upload/iblock/2cc/6016-1 S.rar', NULL),
(12155, NULL, 1209, 588, 'Кресло Riva Chair 6016-3', NULL, 'https://riva.ru/upload/iblock/a3b/6016-3.pdf', 'https://riva.ru/upload/iblock/a3a/6016-3.rar', 'https://riva.ru/upload/iblock/c5d/6016-3.rar', 'https://riva.ru/upload/iblock/333/kreslo-riva-chair-6016-3.jpg'),
(12180, NULL, 1210, 588, 'Кресло Riva Chair 8085 JE', NULL, 'https://riva.ru/upload/iblock/dfc/8085.pdf', 'https://riva.ru/upload/iblock/21b/8085 JE.zip', 'https://riva.ru/upload/iblock/930/8085 JE.zip', 'https://riva.ru/upload/iblock/2f2/kreslo-riva-chair-8085-je.jpg'),
(12352, NULL, 1210, 588, 'Кресло Riva Chair Т27H', NULL, 'https://riva.ru/upload/iblock/c21/T27H.pdf', 'https://riva.ru/upload/iblock/254/Т27H.rar', 'https://riva.ru/upload/iblock/aa8/Т27H.rar', NULL),
(13556, NULL, 1210, 588, 'Кресло Riva Chair B818', NULL, NULL, 'https://riva.ru/upload/iblock/24b/B818.zip', 'https://riva.ru/upload/iblock/f8a/B818.zip', NULL),
(13559, NULL, 1210, 588, 'Кресло Riva Chair A818', NULL, NULL, 'https://riva.ru/upload/iblock/c58/A818.zip', 'https://riva.ru/upload/iblock/c7f/A818.zip', NULL),
(13562, NULL, 1210, 588, 'Кресло Riva Chair А663', NULL, NULL, 'https://riva.ru/upload/iblock/258/А663.zip', 'https://riva.ru/upload/iblock/661/А663.zip', NULL),
(13565, NULL, 1209, 588, 'Кресло Riva Chair D918', NULL, NULL, 'https://riva.ru/upload/iblock/7a6/D918.zip', 'https://riva.ru/upload/iblock/7ac/D918.zip', 'https://riva.ru/upload/iblock/8a6/kreslo-riva-chair-d918.jpg'),
(13571, NULL, 1209, 588, 'Кресло Riva Chair D818', NULL, NULL, 'https://riva.ru/upload/iblock/18c/D818.zip', 'https://riva.ru/upload/iblock/761/D818.zip', 'https://riva.ru/upload/iblock/4b1/kreslo-riva-chair-d818.jpg'),
(13574, NULL, 1209, 588, 'Кресло Riva Chair G818', NULL, NULL, 'https://riva.ru/upload/iblock/69c/G818.zip', 'https://riva.ru/upload/iblock/56e/G818.zip', 'https://riva.ru/upload/iblock/7a4/kreslo-riva-chair-g818.jpg'),
(15048, NULL, 1210, 588, 'Кресло Riva Chair 851E', NULL, NULL, 'https://riva.ru/upload/iblock/9c4/851е.zip', 'https://riva.ru/upload/iblock/b4e/851е.zip', 'https://riva.ru/upload/iblock/696/kreslo-riva-chair-851e.jpg'),
(15050, NULL, 1210, 588, 'Кресло Riva Chair 831E', NULL, NULL, 'https://riva.ru/upload/iblock/a67/831е.zip', 'https://riva.ru/upload/iblock/861/831е.zip', 'https://riva.ru/upload/iblock/93e/kreslo-riva-chair-831e.jpg'),
(15052, NULL, 1210, 588, 'Кресло Riva Chair 871Е', NULL, NULL, 'https://riva.ru/upload/iblock/1bc/871E.zip', 'https://riva.ru/upload/iblock/96c/871E.zip', 'https://riva.ru/upload/iblock/ecb/kreslo-riva-chair-871e.jpg'),
(15058, NULL, 1210, 588, 'Кресло Riva Chair A819', NULL, 'https://riva.ru/upload/iblock/95d/A819.pdf', 'https://riva.ru/upload/iblock/9e6/а819.zip', 'https://riva.ru/upload/iblock/45d/а819.zip', 'https://riva.ru/upload/iblock/2a6/kreslo-riva-chair-a819.jpg'),
(15060, NULL, 1210, 588, 'Кресло Riva Chair B819', NULL, 'https://riva.ru/upload/iblock/f90/B819.pdf', 'https://riva.ru/upload/iblock/2ea/в819.zip', 'https://riva.ru/upload/iblock/e21/в819.zip', 'https://riva.ru/upload/iblock/c5d/kreslo-riva-chair-b819.jpg'),
(15062, NULL, 1209, 588, 'Кресло Riva Chair D819', NULL, 'https://riva.ru/upload/iblock/d4e/D819.pdf', 'https://riva.ru/upload/iblock/dcc/d819.zip', 'https://riva.ru/upload/iblock/aee/d819.zip', 'https://riva.ru/upload/iblock/0cd/kreslo-riva-chair-d819.jpg'),
(15064, NULL, 1209, 588, 'Кресло Riva Chair D918В', NULL, NULL, NULL, 'https://riva.ru/upload/iblock/9c9/d918b.zip', 'https://riva.ru/upload/iblock/70c/kreslo-riva-chair-d918v.jpg'),
(15098, NULL, 1208, 588, 'Кресло Riva Chair  M 155 A', NULL, NULL, 'https://riva.ru/upload/iblock/d37/M155A.rar', 'https://riva.ru/upload/iblock/39f/M155A.rar', NULL),
(15101, NULL, 1208, 588, 'Кресло Riva Chair  M 165 A', NULL, NULL, 'https://riva.ru/upload/iblock/0df/M165A.rar', 'https://riva.ru/upload/iblock/f45/M165A.rar', NULL),
(15104, NULL, 1208, 588, 'Кресло Riva Chair  M 175 A', NULL, NULL, 'https://riva.ru/upload/iblock/cbb/М175А.rar', 'https://riva.ru/upload/iblock/b3a/М175А.rar', NULL),
(15107, NULL, 1209, 588, 'Кресло Riva Chair M 155 D/B', NULL, NULL, 'https://riva.ru/upload/iblock/27b/М155DB.rar', 'https://riva.ru/upload/iblock/bc4/М155DB.rar', 'https://riva.ru/upload/iblock/11d/kreslo-riva-chair-m-155-d-b.jpg'),
(15110, NULL, 1209, 588, 'Кресло Riva Chair M 165 D/B', NULL, NULL, 'https://riva.ru/upload/iblock/276/M165DB.rar', 'https://riva.ru/upload/iblock/2d2/M165DB.rar', 'https://riva.ru/upload/iblock/b3e/kreslo-riva-chair-m-165-d-b.jpg'),
(15113, NULL, 1209, 588, 'Кресло Riva Chair M 175 D', NULL, NULL, 'https://riva.ru/upload/iblock/4e3/M175D.rar', 'https://riva.ru/upload/iblock/a4f/M175D.rar', 'https://riva.ru/upload/iblock/c5d/kreslo-riva-chair-m-175-d.jpg'),
(16069, NULL, 1210, 588, 'Кресло Riva Chair A926', NULL, 'https://riva.ru/upload/iblock/b48/A926.pdf', 'https://riva.ru/upload/iblock/7fa/A926.zip', 'https://riva.ru/upload/iblock/5be/A926.zip', NULL),
(16072, NULL, 1209, 588, 'Кресло Riva Chair M2001', NULL, 'https://riva.ru/upload/iblock/5b1/M2001.pdf', 'https://riva.ru/upload/iblock/da0/M2001.zip', 'https://riva.ru/upload/iblock/63b/M2001.zip', 'https://riva.ru/upload/iblock/326/kreslo-riva-chair-m2001.jpg'),
(16075, NULL, 1209, 588, 'Кресло Riva Chair 462TEС', NULL, 'https://riva.ru/upload/iblock/1fb/462TEC.pdf', 'https://riva.ru/upload/iblock/973/462TEC.zip', 'https://riva.ru/upload/iblock/111/462TEC.zip', 'https://riva.ru/upload/iblock/1e9/kreslo-riva-chair-462tes.jpg'),
(16534, NULL, 1210, 588, 'Кресло Riva Chair 7272', NULL, NULL, 'https://riva.ru/upload/iblock/c00/7272.zip', 'https://riva.ru/upload/iblock/7d8/7272.zip', 'https://riva.ru/upload/iblock/db0/kreslo-riva-chair-7272.jpg'),
(16617, NULL, 1210, 588, 'Кресло Riva Chair 8081 Е', NULL, 'https://riva.ru/upload/iblock/352/8081.pdf', 'https://riva.ru/upload/iblock/484/8081 E.zip', 'https://riva.ru/upload/iblock/322/8081 E.zip', 'https://riva.ru/upload/iblock/328/kreslo-riva-chair-8081-e.jpg'),
(17393, NULL, 1208, 588, 'Кресло Riva Chair A9184', NULL, 'https://riva.ru/upload/iblock/dbf/9184.pdf', 'https://riva.ru/upload/iblock/c2b/A9184.rar', 'https://riva.ru/upload/iblock/617/A9184.rar', 'https://riva.ru/upload/iblock/a0a/kreslo-riva-chair-a9184.jpg'),
(17396, NULL, 1209, 588, 'Кресло Riva Chair C9384', NULL, 'https://riva.ru/upload/iblock/94c/9384.pdf', 'https://riva.ru/upload/iblock/4d7/C9384.rar', 'https://riva.ru/upload/iblock/82d/C9384.rar', 'https://riva.ru/upload/iblock/879/kreslo-riva-chair-c9384.jpg'),
(23714, NULL, 1210, 588, 'Кресло Riva Chair 8099Е', NULL, NULL, 'https://riva.ru/upload/iblock/b08/8099E.rar', 'https://riva.ru/upload/iblock/fcd/8099E.rar', 'https://riva.ru/upload/iblock/49f/kreslo-riva-chair-8099e.jpg'),
(23718, NULL, 1210, 588, 'Кресло Riva Chair А755', NULL, NULL, 'https://riva.ru/upload/iblock/38a/A755.rar', 'https://riva.ru/upload/iblock/c78/A755.rar', 'https://riva.ru/upload/iblock/f5d/kreslo-riva-chair-a755.jpg'),
(23724, NULL, 1211, 588, 'Кресло Riva Chair 9505H', NULL, NULL, 'https://riva.ru/upload/iblock/485/9505H.rar', 'https://riva.ru/upload/iblock/851/9505H.rar', 'https://riva.ru/upload/iblock/796/kreslo-riva-chair-9505h.jpg'),
(23727, NULL, 1211, 588, 'Кресло Riva Chair 9167H', NULL, NULL, 'https://riva.ru/upload/iblock/42d/9167H.rar', 'https://riva.ru/upload/iblock/e82/9167H.rar', 'https://riva.ru/upload/iblock/c22/kreslo-riva-chair-9167h.jpg'),
(23730, NULL, 1211, 588, 'Кресло Riva Chair 9381H', NULL, NULL, 'https://riva.ru/upload/iblock/19b/9381H.rar', 'https://riva.ru/upload/iblock/d4c/9381H.rar', 'https://riva.ru/upload/iblock/91a/kreslo-riva-chair-9381h.jpg'),
(23733, NULL, 1211, 588, 'Кресло Riva Chair 9292H', NULL, NULL, 'https://riva.ru/upload/iblock/6d6/9292H.rar', 'https://riva.ru/upload/iblock/5ed/9292H.rar', 'https://riva.ru/upload/iblock/756/kreslo-riva-chair-9292h.jpg'),
(23736, NULL, 1210, 588, 'Кресло Riva Chair 840', NULL, NULL, 'https://riva.ru/upload/iblock/45e/RCH_840.rar', 'https://riva.ru/upload/iblock/d73/RCH_840.rar', 'https://riva.ru/upload/iblock/29a/kreslo-riva-chair-840.jpg'),
(25406, NULL, 1209, 588, 'Кресло-трансформер Riva Chair 1821', NULL, NULL, 'https://riva.ru/upload/iblock/33a/1821.zip', 'https://riva.ru/upload/iblock/999/1821.zip', 'https://riva.ru/upload/iblock/63b/kreslo-riva-chair-1821.jpg'),
(26425, NULL, 1209, 588, 'Кресло Riva Chair D201', NULL, NULL, 'https://riva.ru/upload/iblock/005/D201.rar', 'https://riva.ru/upload/iblock/1f0/D201.rar', 'https://riva.ru/upload/iblock/6a2/kreslo-riva-chair-d201.jpg'),
(26655, NULL, 1208, 588, 'Кресло Riva Chair 9501 (эко кожа)', NULL, NULL, 'https://riva.ru/upload/iblock/2d4/9501.rar', 'https://riva.ru/upload/iblock/bd9/9501.rar', 'https://riva.ru/upload/iblock/dd9/kreslo-riva-chair-9501-eko-kozha.jpg'),
(26658, NULL, 1208, 588, 'Кресло Riva Chair 9501 (натур. кожа)', NULL, NULL, 'https://riva.ru/upload/iblock/d31/9501.rar', 'https://riva.ru/upload/iblock/085/9501.rar', 'https://riva.ru/upload/iblock/297/kreslo-riva-chair-9501-natur-kozha.jpg'),
(26661, NULL, 1208, 588, 'Кресло Riva Chair 9502', NULL, NULL, 'https://riva.ru/upload/iblock/b75/9502.zip', 'https://riva.ru/upload/iblock/96c/9502.zip', NULL),
(26665, NULL, 1208, 588, 'Кресло Riva Chair 9502 (эко кожа)', NULL, NULL, 'https://riva.ru/upload/iblock/24b/9502.zip', 'https://riva.ru/upload/iblock/ab7/9502.zip', 'https://riva.ru/upload/iblock/169/kreslo-riva-chair-9502-eko-kozha.jpg'),
(27112, NULL, 1208, 588, 'Кресло Riva Chair 6001-2SE', NULL, NULL, 'https://riva.ru/upload/iblock/6ad/6001-2SE.rar', 'https://riva.ru/upload/iblock/0f3/6001-2SE.rar', 'https://riva.ru/upload/iblock/40b/kreslo-riva-chair-6001-2se.jpg'),
(27116, NULL, 1208, 588, 'Кресло Riva Chair 6002-2SЕ', NULL, NULL, 'https://riva.ru/upload/iblock/ffa/6002-2SE.rar', 'https://riva.ru/upload/iblock/cdf/6002-2SE.rar', 'https://riva.ru/upload/iblock/f1d/kreslo-riva-chair-6002-2se.jpg'),
(27120, NULL, 1208, 588, 'Кресло Riva Chair 6001-1SЕ', NULL, NULL, 'https://riva.ru/upload/iblock/a41/6001-1SE.rar', 'https://riva.ru/upload/iblock/dc5/6001-1SE.rar', 'https://riva.ru/upload/iblock/a8b/kreslo-riva-chair-6001-1se.jpg'),
(27124, NULL, 1208, 588, 'Кресло Riva Chair 6002-1SE', NULL, NULL, 'https://riva.ru/upload/iblock/f44/6002-1SE.rar', 'https://riva.ru/upload/iblock/1ab/6002-1SE.rar', 'https://riva.ru/upload/iblock/f8a/kreslo-riva-chair-6002-1se.jpg'),
(27128, NULL, 1209, 588, 'Кресло Riva Chair 6001-3E', NULL, NULL, 'https://riva.ru/upload/iblock/dee/6001-3E.rar', 'https://riva.ru/upload/iblock/45d/6001-3E.rar', 'https://riva.ru/upload/iblock/dd9/kreslo-riva-chair-6001-3e.jpg'),
(27132, NULL, 1209, 588, 'Кресло Riva Chair 6002-3E', NULL, NULL, 'https://riva.ru/upload/iblock/a90/6002-3E.rar', 'https://riva.ru/upload/iblock/8ee/6002-3E.rar', 'https://riva.ru/upload/iblock/2bd/kreslo-riva-chair-6002-3e.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `chairs_armrests`
--

CREATE TABLE `chairs_armrests` (
  `chair_id` int DEFAULT NULL,
  `armrest_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `chairs_colors`
--

CREATE TABLE `chairs_colors` (
  `chair_id` int DEFAULT NULL,
  `color_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `chairs_colors`
--

INSERT INTO `chairs_colors` (`chair_id`, `color_id`) VALUES
(4631, 11353),
(12071, 11329),
(12071, 11353),
(12071, 11312),
(3841, 11329),
(3841, 11353),
(3841, 11312),
(25406, 11316),
(25406, 11310),
(25406, 11311),
(25406, 11312),
(7786, 11310),
(7786, 11312),
(7924, 11312),
(7926, 11312),
(16075, 11312),
(4618, 11352),
(4618, 11315),
(11935, 11352),
(11935, 11315),
(27120, 11316),
(27120, 11310),
(27120, 11312),
(11882, 11316),
(11882, 11312),
(27112, 11316),
(27112, 11310),
(27112, 11312),
(3832, 11316),
(3832, 11310),
(3832, 11312),
(27128, 11316),
(27128, 11310),
(27128, 11312),
(4612, 11329),
(4612, 11312),
(11866, 11329),
(11866, 11310),
(11866, 11312),
(27124, 11351),
(27124, 11310),
(27124, 11312),
(4603, 11329),
(4603, 11312),
(11869, 11329),
(11869, 11312),
(27116, 11351),
(27116, 11310),
(27116, 11312),
(3835, 11329),
(3835, 11310),
(3835, 11312),
(27132, 11351),
(27132, 11310),
(27132, 11312),
(12151, 11329),
(12151, 11310),
(12151, 11312),
(12155, 11329),
(12155, 11310),
(12155, 11312),
(7308, 11310),
(7308, 11311),
(7308, 11312),
(7780, 11310),
(7780, 11312),
(7898, 11312),
(16534, 11341),
(16534, 11340),
(7783, 11310),
(7783, 11312),
(7312, 11310),
(7312, 11312),
(3809, 11314),
(12064, 11312),
(3806, 11314),
(3806, 11315),
(3818, 11328),
(3818, 11310),
(3818, 11311),
(3818, 11312),
(3815, 11350),
(3811, 11346),
(3811, 11314),
(3811, 11349),
(3811, 11315),
(3829, 11348),
(16617, 11347),
(3803, 11310),
(3803, 11312),
(10325, 11310),
(10325, 11312),
(12180, 11313),
(12180, 11328),
(12180, 11310),
(12180, 11311),
(12180, 11312),
(3822, 11346),
(3822, 11314),
(3822, 11315),
(23714, 11346),
(23714, 11314),
(23714, 11315),
(3826, 11314),
(3826, 11315),
(4601, 11312),
(7903, 11310),
(7903, 11312),
(15050, 11310),
(15050, 11312),
(12141, 11310),
(12141, 11312),
(23736, 11328),
(23736, 11310),
(23736, 11311),
(23736, 11312),
(7899, 11310),
(7899, 11312),
(15048, 11310),
(15048, 11312),
(7906, 11310),
(7906, 11312),
(15052, 11310),
(15052, 11312),
(11960, 11345),
(11960, 11308),
(11960, 11317),
(11954, 11344),
(11954, 11341),
(11954, 11336),
(6775, 11329),
(6775, 11312),
(6778, 11329),
(6778, 11312),
(4615, 11329),
(4615, 11312),
(4597, 11312),
(4599, 11312),
(4627, 11329),
(4627, 11339),
(4627, 11312),
(4625, 11312),
(4646, 11329),
(4646, 11343),
(4646, 11312),
(4635, 11329),
(4635, 11343),
(4635, 11312),
(4643, 11339),
(4643, 11342),
(4643, 11312),
(4595, 11312),
(23727, 11338),
(23727, 11336),
(7918, 11329),
(7918, 11339),
(7918, 11312),
(4621, 11329),
(4621, 11310),
(4621, 11312),
(4648, 11329),
(4648, 11312),
(4639, 11329),
(4639, 11339),
(4639, 11312),
(12138, 11341),
(12138, 11340),
(4609, 11329),
(4609, 11312),
(3838, 11329),
(3838, 11312),
(4606, 11339),
(4606, 11312),
(12061, 11310),
(12061, 11312),
(23733, 11338),
(23733, 11335),
(4070, 11310),
(4070, 11312),
(6613, 11329),
(6613, 11339),
(6613, 11312),
(23730, 11338),
(23730, 11336),
(26658, 11337),
(26658, 11312),
(26655, 11337),
(26655, 11312),
(26661, 11337),
(26661, 11312),
(26665, 11337),
(26665, 11312),
(23724, 11335),
(23724, 11336),
(7881, 11316),
(7881, 11312),
(7878, 11316),
(7878, 11312),
(13559, 11314),
(13559, 11315),
(15058, 11333),
(15058, 11334),
(17393, 11316),
(17393, 11312),
(16069, 11314),
(16069, 11315),
(13556, 11314),
(13556, 11315),
(15060, 11333),
(15060, 11334),
(7887, 11316),
(7887, 11312),
(7890, 11316),
(7890, 11312),
(17396, 11316),
(17396, 11312),
(26425, 11312),
(7922, 11312),
(13571, 11310),
(13571, 11312),
(15062, 11333),
(15062, 11334),
(13565, 11313),
(13565, 11328),
(13565, 11332),
(13565, 11311),
(13565, 11312),
(15064, 11330),
(15064, 11331),
(7873, 11316),
(7873, 11312),
(7884, 11316),
(7884, 11312),
(13574, 11310),
(13574, 11312),
(15098, 11329),
(15098, 11312),
(15107, 11329),
(15107, 11312),
(15101, 11329),
(15101, 11312),
(15110, 11329),
(15110, 11312),
(15104, 11313),
(15104, 11312),
(15113, 11313),
(15113, 11312),
(16072, 11313),
(16072, 11328),
(16072, 11310),
(16072, 11311),
(16072, 11312),
(7279, 11310),
(7279, 11312),
(7273, 11310),
(7273, 11312),
(7282, 11310),
(7282, 11312),
(7270, 11327),
(7270, 11312),
(7276, 11310),
(7276, 11312),
(7267, 11310),
(7267, 11312),
(12098, 11310),
(12098, 11312),
(11975, 11326),
(11975, 11325),
(11975, 11324),
(11972, 11326),
(11972, 11325),
(11972, 11324),
(11968, 11320),
(11968, 11322),
(11968, 11321),
(11968, 11323),
(11981, 11318),
(11981, 11319),
(11981, 11308),
(11981, 11317),
(11981, 11309),
(7870, 11316),
(7870, 11312),
(13562, 11314),
(13562, 11315),
(23718, 11314),
(23718, 11315),
(7909, 11313),
(7909, 11310),
(7909, 11311),
(7909, 11312),
(7914, 11310),
(7914, 11311),
(7928, 11310),
(12352, 11308),
(12352, 11309);

-- --------------------------------------------------------

--
-- Структура таблицы `colors`
--

CREATE TABLE `colors` (
  `id` int NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `colors`
--

INSERT INTO `colors` (`id`, `color`) VALUES
(11329, 'бежевый'),
(11352, 'белая'),
(11316, 'белый'),
(11333, 'белый пластик'),
(11313, 'зеленый'),
(11339, 'коричневый'),
(11337, 'кремовый'),
(11353, 'кэмел'),
(11346, 'оранжевая'),
(11328, 'оранжевый'),
(11330, 'пластик - черный'),
(11345, 'пластик/ткань: серый/черный'),
(11320, 'пластик/ткань: черный/фьюжн терракота'),
(11344, 'пластик/ткань: черный/черный'),
(11332, 'светло-серый'),
(11351, 'светлый беж'),
(11314, 'серая'),
(11334, 'серая сетка'),
(11342, 'серо-бежевый'),
(11310, 'серый'),
(11327, 'серый ромбик бежевый'),
(11318, 'серый/лазурный'),
(11319, 'серый/оранжевый'),
(11308, 'серый/серый'),
(11317, 'серый/синий'),
(11326, 'серый/фьюжн альпийское озеро'),
(11325, 'серый/фьюжн пепельный'),
(11324, 'серый/фьюжн черный'),
(11309, 'серый/черный'),
(11350, 'серый/черный/серый'),
(11311, 'синий'),
(11349, 'синяя'),
(11343, 'темно-серый'),
(11331, 'ткань - черная'),
(11348, 'ткань-серая / пластик-черный'),
(11347, 'ткань-черная / пластик-черный'),
(11315, 'черная'),
(11312, 'черный'),
(11338, 'черный/красный'),
(11335, 'черный/оранжевый'),
(11341, 'черный/серый'),
(11336, 'черный/синий'),
(11322, 'черный/фьюжн альпийское озеро'),
(11321, 'черный/фьюжн пустыня сахара'),
(11323, 'черный/фьюжн черный'),
(11340, 'черный/черный');

-- --------------------------------------------------------

--
-- Структура таблицы `features`
--

CREATE TABLE `features` (
  `id` int NOT NULL,
  `chair_id` int DEFAULT NULL,
  `article` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `leather` tinyint(1) DEFAULT '0',
  `width` smallint DEFAULT NULL,
  `control_range` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `height` smallint DEFAULT NULL,
  `height_back` smallint DEFAULT NULL,
  `depth` smallint DEFAULT NULL,
  `max_weight` int DEFAULT NULL,
  `rollers` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `five_pointed` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `size_chair` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size_package` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `place_width` smallint DEFAULT NULL,
  `place_depth` smallint DEFAULT NULL,
  `guarantee` float DEFAULT NULL,
  `mechanism` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price_first` double DEFAULT NULL,
  `price_second` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `features`
--

INSERT INTO `features` (`id`, `chair_id`, `article`, `material`, `leather`, `width`, `control_range`, `height`, `height_back`, `depth`, `max_weight`, `rollers`, `five_pointed`, `weight`, `volume`, `size_chair`, `size_package`, `place_width`, `place_depth`, `guarantee`, `mechanism`, `price_first`, `price_second`) VALUES
(2021, 4631, '6003-1', 'эко-кожа', NULL, 55, '48-58см', 122, 65, 61, 120, 'Ø50/РР', '640мм, металл (хром)', 13.2, 0.12, '55х61х122 см', '84х58х53 см', 46, 48, 1, 'топ-ган 17', NULL, NULL),
(2022, 12071, '6003-1 S', 'эко-кожа', NULL, 55, '48-58 см', 122, 65, 61, 120, 'Ø50/РР', '640 мм, металл (хром)', 13.2, 0.12, '55х61х122 см', '84х58х53 см', 46, 48, 1, 'топ-ган 17', NULL, NULL),
(2023, 3841, '6003-3', 'эко-кожа', NULL, 55, NULL, 91, 48, 61, 120, NULL, NULL, 12.7, 0.1, '55х61х91 см', '78х65х51 см', 46, 48, 1, NULL, NULL, NULL),
(2024, 25406, '1821', 'пластик', NULL, 61, '---', 90, 47, 68, 120, NULL, NULL, 13, 0.09, '61х68х90 см', '104х61х15 см', 49, 42, 1, NULL, NULL, NULL),
(2025, 7786, '328', 'сетка', NULL, 62, '46-56см', 132, 78, 57, 120, 'Ø50/РР', '650мм, пластик', 21, 0.13, '62х57х132 см', NULL, 51, 47, 1, 'синхромеханизм', NULL, NULL),
(2026, 7924, '462E', 'ткань/сетка', NULL, 60, '---', 84, 40, 60, 120, NULL, NULL, 7.4, 0.05, '60х60х84 см', NULL, 44, 45, 1, NULL, NULL, NULL),
(2027, 7926, '462TE', 'ткань/сетка', NULL, 63, '---', 84, 40, 60, 120, NULL, NULL, 8.4, 0.05, '63х60х84 см', NULL, 44, 45, 1, NULL, NULL, NULL),
(2028, 16075, '462TEС', 'ткань/сетка', NULL, 63, NULL, 84, 40, 60, 120, NULL, NULL, 8.4, 0.05, '63х60х84 см', '83×58×20 см', 44, 46, 1, NULL, NULL, NULL),
(2029, 4618, '6001-1', 'сетка', NULL, 53, '46-56см', 108, 64, 61, 120, 'Ø50/РР', '640мм, металл (хром)', 12.5, 0.12, '53х61х108 см', '80х58х52 см', 46, 46, 1, 'топ-ган 17', NULL, NULL),
(2030, 11935, '6001-1 S', 'сетка', NULL, 53, '46-56см', 118, 64, 61, 120, 'Ø50/РР', '640мм, металл (хром)', 16, 0.18, '53х61х108 см', '83х58х52 см', 46, 46, 1, 'топ-ган 17', NULL, NULL),
(2031, 27120, '6001-1SЕ', 'сетка', NULL, 64, '45-55 см', 100, 65, 64, 120, 'Ø50 / PU', '640 мм, хром', 12.2, 0.11, '64х64х119 см', '84х51х52 см', 48, 47, 1, 'топган 19', NULL, NULL),
(2032, 11882, '6001-2 S', 'сетка', NULL, 55, '46-56см', 101, 47, 61, 120, 'Ø50/РР', '640мм, металл (хром)', 10.6, 0.1, '55х61х101 см', '65х57х52 см', 46, 46, 1, 'топ-ган 17', NULL, NULL),
(2033, 27112, '6001-2SE', 'сетка', NULL, 64, '45-55 см', 100, 48, 64, 120, 'Ø50/РU', '640мм, металл (хром)', 10.8, 0.1, '64х64х100 см', '64х55х58 см', 49, 47, 1, 'топ-ган 19', NULL, NULL),
(2034, 3832, '6001-3', 'сетка', NULL, 55, NULL, 90, 47, 61, 120, NULL, NULL, 10.6, 0.1, '55*61*90 см', '74*57*50 см', 46, 46, 1, NULL, NULL, NULL),
(2035, 27128, '6001-3E', 'сетка', NULL, 57, NULL, 89, 48, 60, 120, NULL, NULL, 10.1, 0.1, '57х60х89 см', '65х60х51 см', 49, 47, 1, NULL, NULL, NULL),
(2036, 4612, '6002-1', 'эко-кожа', NULL, 53, '46-56см', 118, 63, 61, 120, 'Ø50/РР', '640мм, металл (хром)', 12.6, 0.12, '53х61х118 см', NULL, 47, 44, 1, 'топ-ган 17', NULL, NULL),
(2037, 11866, '6002-1 S', 'эко-кожа', NULL, 53, '46-56см', 118, 63, 61, 120, 'Ø50/РР', '640мм, металл (хром)', 12.6, 0.12, '53х61х118 см', '83х58х52 см', 47, 44, 1, 'топ-ган 17', NULL, NULL),
(2038, 27124, '6002-1SE', 'сетка', NULL, 64, '45-55 см', 119, 65, 64, 120, 'Ø50 / PU', '640 мм, хром', 13, 0.11, '64х64х119 см', '84х51х52 см', 48, 47, 1, 'топган 19', NULL, NULL),
(2039, 4603, '6002-2', 'эко-кожа', NULL, 60, '46-56см', 102, 49, 61, 120, 'Ø50/РР', '640мм, металл (хром)', 12, 0.1, '60х61х102 см', NULL, 47, 46, 1, 'топ-ган 17', NULL, NULL),
(2040, 11869, '6002-2 S', 'эко-кожа', NULL, 60, '46-56см', 102, 49, 61, 120, 'Ø50/РР', '640мм, металл (хром)', 12, 0.1, '60х61х102 см', '65х57х52 см', 47, 46, 1, 'топ-ган 17', NULL, NULL),
(2041, 27116, '6002-2SЕ', 'эко кожа', NULL, 64, '45-55 см', 100, 48, 64, 120, 'Ø50/РU', '640мм, металл (хром)', 11.6, 0.1, '64х64х100 см', '64х55х58 см', 49, 47, 1, 'топ-ган 19', NULL, NULL),
(2042, 3835, '6002-3', 'эко-кожа', NULL, 55, NULL, 90, 47, 61, 120, NULL, NULL, 12.5, 0.1, '55х61х90 см', '73х58х50 см', 46, 46, 1, NULL, NULL, NULL),
(2043, 27132, '6002-3E', 'эко кожа', NULL, 57, NULL, 89, 48, 60, 120, NULL, NULL, 10.1, 0.1, '57х60х89 см', '65х60х51 см', 49, 47, 1, NULL, NULL, NULL),
(2044, 12151, '6016-1 S', 'экокожа', NULL, 61, '46-56см', 118, 63, 53, 120, 'Ø50/РР', '640мм, металл (хром)', 12.6, 0.12, '53х61х118 см', '83х58х52 см', 47, 44, 1, 'топ-ган 17', NULL, NULL),
(2045, 12155, '6016-3', 'экокожа', NULL, 61, NULL, 90, 47, 55, 120, NULL, NULL, 12.5, 0.1, '55х61х90 см', '73х58х50см', 46, 46, 1, NULL, NULL, NULL),
(2046, 7308, '668 B-9', 'ткань/сетка', NULL, 60, '44-52см', 103, 57, 55, 120, 'Ø50/РР', '720 мм, пластик', 12.1, 0.13, '60х55х103 см', NULL, 50, 49, 1, 'топ-ган 17', NULL, NULL),
(2047, 7780, '698', 'ткань/сетка', NULL, 62, '45-53см', 104, 57, 52, 120, 'Ø50/РР', '720 мм, пластик', 12.6, 0.13, '62х52х104 см', NULL, 50, 50, 1, 'топган 17', NULL, NULL),
(2048, 7898, '706E', 'сетка', NULL, 55, '40-48 см', 94, 48, 68, 120, 'Ø50/РР', '600 мм, хром', 10.7, 0.11, '55х68х94 см', '66x55x58 см', 49, 51, 1, 'топ-ган', NULL, NULL),
(2049, 16534, '7272', 'ткань', NULL, 64, '46-56 см', 127, 75, 63, 120, 'Ø50/РР', '650мм, пластик', 14.3, 0.11, '64х63х127 см', '68х58х29 см', 51, 48, 1, 'топ-ган', NULL, NULL),
(2050, 7783, '768 A', 'сетка', NULL, 62, '46-56см', 104, 82, 52, 120, 'Ø50/РР', '650мм, хром', 21, 0.13, '65х55х134 см', NULL, 51, 46, 1, 'топган 17', NULL, NULL),
(2051, 7312, '789 B', 'ткань/сетка', NULL, 61, '46-54см', 110, 60, 59, 120, 'Ø50/РР', '720 мм, пластик', 14.3, 0.15, '61х59х110 см', NULL, 50, 52, 1, 'топган 17', NULL, NULL),
(2052, 3809, '8005', 'ткань/сетка', NULL, 60, '48-58см', 100, 46, 64, 120, 'Ø50/РР', '640мм, металл (хром)', 11.5, 0.08, '60х64х100 см', '60х64х100 см', 48, 46, 1, 'топ-ган 17', NULL, NULL),
(2053, 12064, '801E', 'сетка', NULL, 57, NULL, 92, 50, 63, 120, NULL, NULL, 9, 0.08, '57х63х92 см', '62х46х67 см', 49, 50, 1, NULL, NULL, NULL),
(2054, 3806, '8063', 'ткань/сетка', NULL, 60, '46-56см', 98, 43, 59, 120, 'Ø50/РР', 'пластик', 11.5, 0.08, '60х59х98 см', '60х59х98 см', 48, 45, 1, NULL, NULL, NULL),
(2055, 3818, '8074', 'ткань/сетка/эко-кожа', NULL, 60, '46-56см', 119, 67, 50, 120, 'Ø50/РР', '640мм, металл (хром)', 11.7, 0.09, '60х50х119 см', '60х50х119 см', 49, 50, 1, 'топ-ган 19', NULL, NULL),
(2056, 3815, '8074 F', 'ткань/сетка/ткань', NULL, 60, '46-56см', 119, 67, 50, 120, 'Ø50/РР', '640мм, металл (хром)', 11.7, 0.09, '60х50х119 см', '60х50х119 см', 49, 50, 1, 'топ-ган 19', NULL, NULL),
(2057, 3811, '8075', 'ткань/сетка', NULL, 60, '46-56см', 102, 49, 58, 120, 'Ø50/РР', '640мм, металл (хром)', 11.4, 0.08, '60х58х102 см', '60х58х102 см', 49, 50, 1, 'топ-ган 17', NULL, NULL),
(2058, 3829, '8081', 'ткань', NULL, 61, '40-50см', 110, 57, 52, 120, 'Ø50/РР', '640мм, металл (хром)', 11.8, 0.1, '61х52х110 см', '61х52х110 см', 50, 47, 1, 'топ-ган 17', NULL, NULL),
(2059, 16617, '8081Е', 'сиденье - ткань / спинка - пластик', NULL, 58, '44-54 см', 100, 57, 59, 120, 'Ø50/РР', '640мм, металл (хром)', 11.8, 0.14, '58х59х100 см', '75×30×60 см', 48, 49, 1, 'топ-ган 19', NULL, NULL),
(2060, 3803, '8085', 'ткань/сетка', NULL, 58, '45-55см', 97, 46, 47, 120, 'Ø50/РР', 'пластик', 10.2, 0.14, '58х55х97см', '58х55х97 см', 48, 47, 1, 'топ-ган 19', NULL, NULL),
(2061, 10325, '8085 J', 'ткань/сетка', NULL, 58, '45-55см', 97, 46, 47, 120, 'Ø50/РР', '640мм, хром', 10.2, 0.14, '58х55х97 см', '58х55х97 см', 48, 47, 1, 'топ-ган 19', NULL, NULL),
(2062, 12180, '8085 JE', 'ткань/сетка', NULL, 58, '45-55см', 97, 46, 47, 120, 'Ø50/РР', '640мм, хром', 10.2, 0.14, '58х55х97 см', '58х55х97 см', 48, 47, 1, 'топ-ган 19', NULL, NULL),
(2063, 3822, '8099', 'ткань/сетка', NULL, 60, '46-56см', 104, 50, 51, 120, 'Ø50/РР', '640мм, металл (хром)', 10.4, 0.09, '60х51х104 см', '60х51х104 см', 48, 47, 1, 'топ-ган 17', NULL, NULL),
(2064, 23714, '8099Е', 'ткань/сетка', NULL, 64, '45-55 см', 102, 51, 64, 100, 'Ø50 / PU', '640 мм, металл, хром', 10.45, 0.09, '64х64х102 см', '58х27х55 см', 47, 47, 1, 'топган', NULL, NULL),
(2065, 3826, '8104', 'ткань/сетка', NULL, 60, '41-51см', 100, 49, 51, 120, 'Ø50/РР', '640мм, металл (хром)', 11.7, 0.1, '60х51х100 см', '60х51х100 см', 47, 48, 1, 'топ-ган 17', NULL, NULL),
(2066, 4601, '8234', 'эко-кожа', NULL, 66, '44-54см', 119, 66, 62, 120, 'Ø50/РР', '640мм, металл (хром)', 13.9, 0.13, '66х62х119 см', '75х28х60 см', 50, 50, 1, 'топ-ган 19', NULL, NULL),
(2067, 7903, '831', 'ткань/сетка', NULL, 64, '43-53см', 109, 59, 60, 120, 'Ø50/РР', '700 мм, хром', 14.5, 0.15, '64х60х109 см', NULL, 47, 49, 1, 'синхромеханизм', NULL, NULL),
(2068, 15050, '831E', 'ткань/сетка', NULL, 57, '42-52 см', 109, 59, 64, 120, 'Ø50/РР', '640 мм, хром', 12.6, 0.14, '64х57х109 см', '75х30х60 см', 47, 49, 1, 'синхромеханизм', NULL, NULL),
(2069, 12141, '833 H', 'ткань/сетка', NULL, 61, '45-55 см', 127, 72, 58, 120, '50 /PP', '640мм, хром', 15, 0.12, '61х58х127 см', '73х55х60 см', 48, 50, 1, 'синхромеханизм', NULL, NULL),
(2070, 23736, '840', 'сетка/ткань', NULL, 68, '46-56 см', 128, 72, 68, 120, 'Ø50 / PU', '680 мм, металл', 17.5, 0.16, '68х68х128 см', '75,5х32,5х65 см', 50, 52, 1, 'топган люкс', NULL, NULL),
(2071, 7899, '851', 'ткань/сетка', NULL, 68, '46-56см', 107, 56, 59, 120, 'Ø60/РР', '700 мм, пластик', 14.5, 0.15, '68х59х107', NULL, 48, 47, 1, 'синхромеханизм', NULL, NULL),
(2072, 15048, '851E', 'ткань/сетка', NULL, 57, '44-54 см', 108, 57, 64, 120, 'Ø60/РР', '640 мм, хром', 12, 0.14, '64х57х108 см', '75х30х60 см', 48, 48, 1, 'синхромеханизм', NULL, NULL),
(2073, 7906, '871', 'ткань/сетка', NULL, 61, '45-55см', 110, 57, 59, 120, 'Ø50/РР', '700 мм, хром', 14.2, 0.15, '61х59х110 см', NULL, 47, 50, 1, 'синхромеханизм', NULL, NULL),
(2074, 15052, '871Е', 'ткань/сетка', NULL, 57, '44-54 см', 109, 58, 64, 120, 'Ø50/РР', '640 мм, хром', 12.1, 0.14, '64х57х109 см', '75х30х60 см', 48, 50, 1, 'синхромеханизм', NULL, NULL),
(2075, 11960, '8989 (серый пластик)', 'ткань', NULL, 64, '47-57 см', 126, 74, 60, 120, 'Ø50/РР', '650 мм, пластик', 14.3, 0.12, '64х60х126 см', '68х28х59 см', 50, 48, 1, 'топган 17', NULL, NULL),
(2076, 11954, '8989 (черный пластик)', 'ткань', NULL, 64, '47-57 см', 126, 74, 60, 120, 'Ø50/РР', '650 мм, пластик', 14.3, 0.12, '64х60х126 см', '68х28х59 см', 50, 48, 1, 'топган 17', NULL, NULL),
(2077, 6775, '9024', 'эко-кожа', NULL, 63, '52-58см', 123, 70, 73, 120, 'Ø50/РР', '640мм, металл (хром)', 20.3, 0.18, '63х73х123 см', '83х32,5х65 см', 51, 50, 1, 'мультиблок', NULL, NULL),
(2078, 6778, '9024-4', 'эко-кожа', NULL, 61, NULL, 102, 58, 64, 16, NULL, NULL, 16, 0.12, '61х64х102 см', '85х53х53 см', 49, 47, 1, NULL, NULL, NULL),
(2079, 4615, '9036 (Лотос)', 'эко-кожа', NULL, 69, '46-56см', 118, 68, 66, 120, 'Ø50/РР', '700 мм,полиамид, окрашенная', 16, 0.18, '69х66х118 см', '77х32х65 см', 54, 52, 1, 'топ-ган 19', NULL, NULL),
(2080, 4597, '9082-2', 'эко-кожа', NULL, 66, '47-57см', 121, 68, 55, 120, 'Ø50/РР', '640мм, металл (хром)', 16.5, 0.13, '66х55х121 см', '72х28х58 см', 51, 50, 1, 'топ-ган 19', NULL, NULL),
(2081, 4599, '9092', 'эко-кожа', NULL, 64, '42-52см', 124, 69, 60, 120, 'Ø50/РР', '640мм, металл (хром)', 17, 0.14, '64х60х124 см', '73х29х58 см', 52, 50, 1, 'топ-ган 19', NULL, NULL),
(2082, 4627, '9110', 'эко-кожа', NULL, 63, '50-60см', 117, 64, 68, 120, 'Ø50/РР', '700 мм, полиамид,окрашенная', 17, 0.16, '63х68х117 см', '78х32х65 см', 48, 48, 1, 'топ-ган 19', NULL, NULL),
(2083, 4625, '9112 (Стелс)', 'эко-кожа', NULL, 62, '42-52см', 119, 69, 64, 120, 'Ø50/РР', '700 мм, полиамид,окрашенная', 18, 0.17, '62х64х119 см', '80х32х65 см', 48, 52, 1, 'топ-ган 19', NULL, NULL),
(2084, 4646, '9127 (Оптика мультиблок)', 'эко-кожа', NULL, 67, '53-59см', 121, 69, 69, 120, 'Ø50/РР', '700мм, пластик крашеный', 18.7, 0.17, '67х69х121 см', '67х69х121 см', 52, 54, 1, 'мультиблок', NULL, NULL),
(2085, 4635, '9127 (Оптика топган)', 'эко-кожа', NULL, 67, '49-59см', 121, 69, 69, 120, 'Ø50/РР', '700мм, пластик крашеный', 18.7, 0.17, '67х69х121 см', '67х69х121 см', 52, 54, 1, 'топ-ган 19', NULL, NULL),
(2086, 4643, '9131', 'эко-кожа', NULL, 63, '53-63см', 117, 66, 70, 120, 'Ø50/РР', '700мм, металл (хром)', 18.2, 0.19, '63х70х117 см', '85х33х64 см', 51, 48, 1, 'топ-ган 19', NULL, NULL),
(2087, 4595, '9154', 'эко-кожа', NULL, 66, '51-61см', 119, 65, 63, 120, 'Ø50/РР', '640мм, металл (хром)', 15.5, 0.13, '66х63х119 см', '72х28х59 см', 51, 47, 1, 'топ-ган 19', NULL, NULL),
(2088, 23727, '9167H', 'экокожа', NULL, 70, '45-55 см', 121, 68, 70, 120, 'Ø50 / PU', '700 мм, пластик', 16.8, 0.15, '70х70х121 см', '72,5х32х65 см', NULL, NULL, 1, 'синхромеханизм', NULL, NULL),
(2089, 7918, '9208', 'эко-кожа', NULL, 63, '44-54см', 129, 74, 63, 120, 'Ø60/РР', '700мм, алюминий', 21.6, 0.18, '63х63х129 см', '63х63х129 см', 52, 49, 1, 'синхромеханизм', NULL, NULL),
(2090, 4621, '9211', 'эко-кожа', NULL, 63, '49-59см', 117, 68, 68, 120, 'Ø50/РР', '700 мм, полиамид,окрашенная', 17, 0.16, '63х68х117 см', '73х33х65 см', 49, 46, 1, 'топ-ган 19', NULL, NULL),
(2091, 4648, '9227 (Бумер мультиблок)', 'эко-кожа', NULL, 65, '53-59см', 125, 70, 58, 120, 'Ø50/РР', '700 мм, полиамид,окрашенная', 18, 0.18, '65х58х125 см', '74х36х65 см', 50, 49, 1, 'мультиблок', NULL, NULL),
(2092, 4639, '9227 (Бумер топган)', 'эко-кожа', NULL, 65, '49-59см', 125, 70, 58, 120, 'Ø50/РР', '700 мм, полиамид,окрашенная', 18, 0.18, '65х58х125 см', '74х36х65 см', 50, 49, 1, 'топ-ган 19', NULL, NULL),
(2093, 12138, '923', 'ткань/сетка', NULL, 62, '41-51 см', 99, 52, 61, 120, 'Ø50/PP', '640 мм, пластик', 10, 0.08, '62х61х99 см', '62х46х58 см', 47, 48, 1, 'наклонный механизм спинки', NULL, NULL),
(2094, 4609, '9249-1', 'эко-кожа', NULL, 61, '50-60см', 116, 62, 59, 120, 'Ø50/РР', '640мм, металл (хром)', 17, 0.13, '61х59х116 см', '71х33х64 см', 52, 50, 1, 'топ-ган 19', NULL, NULL),
(2095, 3838, '9249-4', 'эко-кожа', NULL, 61, NULL, 98, 56, 59, 120, NULL, NULL, 15, 0.11, '61х59х98 см', '77х54х53 см', 52, 50, 1, NULL, NULL, NULL),
(2096, 4606, '9263 (Рипли)', 'эко-кожа', NULL, 63, '46-56см', 116, 66, 69, 120, 'Ø50/РР', '700 мм, полиамид,окрашенная', 16, 0.19, '63х69х116 см', '69х33х62 см', 48, 50, 1, 'топ-ган 19', NULL, NULL),
(2097, 12061, '928', 'ткань кашемир', NULL, 59, '41-51 см', 99, 52, 57, 120, 'Ø50/РР', '640мм, пластик', 10.2, 0.11, '58х55х97 см', '58х55х97 см', 48, 48, 1, 'топ-ган', NULL, NULL),
(2098, 23733, '9292H', 'сетка/экокожа', NULL, 70, '47-57 см', 124, 72, 5970, 120, 'Ø50 / PU', '700 мм, пластик', 17.5, 0.16, '59-70х70х124 см', '75,5х32,5х65 см', 50, 47, 1, 'топган', NULL, NULL),
(2099, 4070, '9309-1J', 'ткань', NULL, 63, '45-55см', 116, 67, 60, 120, 'Ø50/РР', '660мм, металл (хром)', 15, 0.12, '63х60х116 см', NULL, 51, 50, 1, 'топ-ган 19', NULL, NULL),
(2100, 6613, '9373', 'эко-кожа', NULL, 71, '49-59см', 130, 76, 84, 250, 'Ø50 усиленные', '700мм, металл (хром), усиленное', 18, 0.32, '65х58х125 см', '98х46х69 см', 58, 52, 1, 'топ-ган усиленный', NULL, NULL),
(2101, 23730, '9381H', 'сетка/экокожа', NULL, 64, '46-56 см', 117, 66, 66, 120, 'Ø50 / PU', '640 мм, пластик', 15.6, 0.13, '64х66х117 см', '76х28х58 см', 48, 47, 1, 'топган', NULL, NULL),
(2102, 26658, '9501 (натур. кожа)', 'натуральная кожа', 1, 72, '46-56 см', 128, 76, 74, 150, 'Ø50', '700 мм, хромированное', 23, 0.22, '72х74х128 см', '88х66х38 см', 52, 52, 1, 'топ-ган с фиксацией в любом положении', NULL, NULL),
(2103, 26655, '9501 (эко кожа)', 'эко кожа', NULL, 72, '46-56 см', 128, 76, 74, 150, 'Ø50', '700 мм, хромированное', 23, 0.22, '72х74х128 см', '88х66х38 см', 52, 52, 1, 'топ-ган с фиксацией в любом положении', NULL, NULL),
(2104, 26661, '9502', 'натуральная кожа', 1, 73, '48-58 см', 130, 77, 74, 150, 'Ø50', '700 мм, хромированное', 24, 0.23, '73х74х130 см', '94х66х38 см', 52, 54, 1, 'топ-ган с фиксацией в любом положении', NULL, NULL),
(2105, 26665, '9502 (эко кожа)', 'эко кожа', NULL, 73, '48-58 см', 130, 77, 74, 150, 'Ø50', '700 мм, хромированное', 24, 0.23, '73х74х130 см', '94х66х38 см', 52, 54, 1, 'топ-ган с фиксацией в любом положении', NULL, NULL),
(2106, 23724, '9505H', 'экокожа', NULL, 69, '46-56 см', 123, 73, 68, 120, 'Ø50 / PU', '680 мм, пластик', 16.5, 0.16, '69х68х123 см', '77х32х65 см', NULL, NULL, 1, 'топган 17', NULL, NULL),
(2107, 7881, 'A1811', 'натуральная кожа', 1, 60, '44-52см', 126, 76, 57, 120, 'Ø60/РР', '720 мм, хромированное', 24, 0.21, '60х57х126 см', NULL, 48, 49, 1, 'синхромеханизм', NULL, NULL),
(2108, 7878, 'A1815', 'натуральная кожа', 1, 66, '45-53см', 128, 76, 51, 120, 'Ø60/РР', '720 мм, хромированное', 24, 0.21, '66х59х128 см', NULL, 50, 51, 1, 'мультиблок', NULL, NULL),
(2109, 13559, 'A818', 'сетка', NULL, 57, '44-54см', 128, 7177, 64, 120, 'Ø50/РР', '640мм, пластик', 13.1, 0.12, '57х64х128 см', '64х33х58 см', 48, 49, 1, 'топ-ган', NULL, NULL),
(2110, 15058, 'A819', 'сетка', NULL, 57, '44-54 см', 128, 7177, 64, 120, 'Ø50/РР', '640 мм, пластик', 13.1, 0.13, '57х64х128 см', '64х33х58 см', 48, 49, 1, 'топган', NULL, NULL),
(2111, 17393, 'A9184', 'эко-кожа', NULL, 69, '45-53 см', 127, 76, 69, 120, 'Ø50 PU, накладки хром', '720 мм, алюминий полированный, усиленное', 22.2, 0.19, '69х69х127 см', '87х34х64 см', 52, 50, 1, 'синхромеханизм', NULL, NULL),
(2112, 16069, 'A926', 'ткань/сетка', NULL, 63, '43-53 см', 126, 7076, 68, 120, 'Ø50/РР', '680 мм, пластик', 13, 0.13, '63х68х126 см', '75х30х60 см', 47, 48, 1, 'топ-ган', NULL, NULL),
(2113, 13556, 'B818', 'сетка', NULL, 57, '44-54см', 104, 54, 64, 120, 'Ø50/РР', '640мм, пластик', 12.5, 0.12, '57х64х104 см', '64х33х58 см', 48, 49, 1, 'топ-ган', NULL, NULL),
(2114, 15060, 'B819', 'сетка', NULL, 57, '44-54 см', 104, 54, 64, 120, 'Ø50/РР', '640 мм, пластик', 12.5, 0.13, '57х64х104 см', '64х33х58 см', 48, 49, 1, 'топган', NULL, NULL),
(2115, 7887, 'C1511', 'натуральная кожа', 1, 58, NULL, 101, 60, 65, 120, NULL, NULL, 27, 0.23, '58х65х101 см', NULL, 50, 51, 1, NULL, NULL, NULL),
(2116, 7890, 'C1815', 'натуральная кожа', 1, 59, NULL, 102, 56, 66, 120, NULL, NULL, 24, 0.21, '59х66х102 см', NULL, 50, 51, 1, NULL, NULL, NULL),
(2117, 17396, 'C9384', 'эко кожа', NULL, 58, NULL, 98, 62, 63, 120, NULL, NULL, 21, 0.27, '58х63х98 см', NULL, 49, 49, 1, NULL, NULL, NULL),
(2118, 26425, 'D201', 'ткань/сетка', NULL, 58, NULL, 103, 61, 62, 120, 'нет', 'нет', 95, 11, '58х62х103 см', '66х56х58,5 см', NULL, NULL, 1, 'нет', NULL, NULL),
(2119, 7922, 'D801E', 'сетка', NULL, 57, NULL, 92, 50, 61, 120, NULL, NULL, 9, 0.06, '57х63х92 см', NULL, 49, 50, 1, NULL, NULL, NULL),
(2120, 13571, 'D818', 'сетка', NULL, 57, NULL, 97, 54, 63, 120, NULL, NULL, 10.3, 0.11, '57х63х97 см', '66х55х58 см', 48, 52, 1, NULL, NULL, NULL),
(2121, 15062, 'D819', 'сетка', NULL, 63, NULL, 97, 54, 57, 120, NULL, NULL, 10.3, 0.11, '57х63х97 см', '66х55х58 см ( 2шт.)', 48, 52, 1, NULL, NULL, NULL),
(2122, 13565, 'D918', 'пластик', NULL, 48, NULL, 80, 39, 56, 120, NULL, NULL, 6.2, 0.05, '48х56х80 см', '57х57х49 см', 43, 47, 1, NULL, NULL, NULL),
(2123, 15064, 'D918В', 'пластик', NULL, 56, NULL, 80, 39, 48, 120, NULL, NULL, 6.5, 0.05, '48х56х80 см', '57х57х49 см (3 шт.)', 43, 47, 1, NULL, NULL, NULL),
(2124, 7873, 'F185', 'натуральная кожа', 1, 69, '48-56см', 129, 78, 56, 120, 'Ø50/РР', '700 мм, хромированное', 245, 0.2, '69х56х129 см', NULL, 51, 50, 1, 'синхромеханизм', NULL, NULL),
(2125, 7884, 'F385', 'натуральная кожа', 1, 58, NULL, 104, 60, 60, 120, NULL, NULL, 16.5, 0.2, '58х60х104 см', NULL, 51, 50, 1, NULL, NULL, NULL),
(2126, 13574, 'G818', 'сетка', NULL, 57, NULL, 95, 54, 60, 120, NULL, NULL, 11.8, 0.11, '57х60х95 см', '66х55х58 см', 47, 49, 1, NULL, NULL, NULL),
(2127, 15098, 'M 155 A', 'эко-кожа', NULL, 76, '40-50 см', 108, 75, 61, 120, 'Ø50/РР', '680мм, дерево', 25, 0.5, '76х61х108 см', '70х61х108 см', 50, 48, 1, 'топ-ган с фиксацией в нескольких положениях', NULL, NULL),
(2128, 15107, 'M 155 D/B', 'экокожа', NULL, 77, NULL, 108, 52, 61, 120, NULL, NULL, 18.5, 0.51, '77х61х108 см', '77х61х108 см', 54, 46, 1, NULL, NULL, NULL),
(2129, 15101, 'M 165 A', 'натуральная кожа', NULL, 76, '40-50 см', 108, 75, 61, 120, 'Ø50/РР', '680 мм, дерево', 25, 0.46, '76х61х108 см', '70х61х108 см', 54, 53, 1, 'топ-ган с фиксацией в нескольких положениях', NULL, NULL),
(2130, 15110, 'M 165 D/B', 'натуральная кожа', NULL, 77, NULL, 98, 57, 52, 120, NULL, NULL, 18.5, 0.36, '70х52х98 см', '70х52х98 см', 57, 54, 1, NULL, NULL, NULL),
(2131, 15104, 'M 175 A', 'натуральная кожа', NULL, 76, '40-50 см', 108, 75, 61, 120, 'Ø50/РР', '680 мм, дерево', 26, 0.5, '76х61х108 см', '70х61х108 см', 55, 48, 1, 'топ-ган с фиксацией в нескольких положениях', NULL, NULL),
(2132, 15113, 'M 175 D', 'натуральная кожа', NULL, 70, NULL, 107, 54, 61, 120, NULL, NULL, 17.5, 0.47, '70х61х107 см', '71х61х108 см', 49, 44, 1, NULL, NULL, NULL),
(2133, 16072, 'M2001', 'ткань/сетка', NULL, 61, NULL, 87, 47, 56, 100, NULL, NULL, 8, 0.05, '61х56х87 см', '83×58×20 см', 46, 46, 1, NULL, NULL, NULL),
(2134, 7279, 'RCH 008', 'сетчатая ткань / экокожа (подголовник)', NULL, 53, '46-56 см', NULL, NULL, 48, 120, NULL, 'пластик', 13.9, 0.14, NULL, NULL, 53, 48, 1, 'пружинно-винтовой', NULL, NULL),
(2135, 7273, 'RCH 513', 'ткань', NULL, 48, '45-58 см', NULL, NULL, 44, 120, NULL, 'пластик', 12, 0.11, NULL, NULL, 48, 44, 1, 'пружинно-винтовой', NULL, NULL),
(2136, 7282, 'RCH 540', 'ткань', NULL, 48, '46-59 см', NULL, NULL, 40, 120, NULL, 'пластик', 13, 0.13, NULL, NULL, 48, 40, 1, 'пружинно-винтовой', NULL, NULL),
(2137, 7270, 'RCH 626', 'ткань', NULL, 48, '48-61 см', NULL, NULL, 39, 120, NULL, 'пластик', 11.6, 0.1, NULL, NULL, 48, 39, 1, 'пружинно-винтовой', NULL, NULL),
(2138, 7276, 'RCH 687', 'ткань', NULL, 48, '46-59 см', NULL, NULL, 41, 120, NULL, 'пластик', 12.5, 0.11, NULL, NULL, 48, 41, 1, 'пружинно-винтовой', NULL, NULL),
(2139, 7267, 'RCH 797', 'ткань/сетка', NULL, 47, '46-59 см', NULL, NULL, 40, 120, NULL, 'пластик', 10.4, 0.1, NULL, NULL, 47, 40, 1, 'пружинно-винтовой', NULL, NULL),
(2140, 12098, 'RCH 8206HX', 'ткань/сетка', NULL, 66, '47-57см', 136, 81, 70, 120, 'Ø50/РР', '700мм, металл (хром)', 13.8, 0.14, '66х70х136 см', '92x22,5x64 см', 50, 49, 1, 'топ-ган', NULL, NULL),
(2141, 11975, 'SAKURA (белый пластик)', 'ткань, ткань фьюжн', NULL, 61, '47-57 см', 127, 73, 64, 120, 'Ø50 / PP', '650 мм, пластик', 14.5, 0.13, '61х64х127 см', '65х32х59 см', 50, 51, 1, 'топ-ган', NULL, NULL),
(2142, 11972, 'SAKURA (серый пластик)', 'ткань, ткань фьюжн', NULL, 61, '47-57 см', 127, 73, 64, 120, 'Ø50 / PP', '650 мм, пластик', 14.5, 0.13, '61х64х127 см', '65х32х59 см', 50, 51, 1, 'топ-ган', NULL, NULL),
(2143, 11968, 'SAKURA (черный пластик)', 'ткань, ткань фьюжн', NULL, 61, '47-57 см', 127, 73, 64, 120, 'Ø50 / PP', '650 мм, пластик', 14.5, 0.13, '61х64х127 см', '65х32х59 см', 50, 51, 1, 'топ-ган', NULL, NULL),
(2144, 11981, 'SHARK', 'ткань', NULL, 64, '47-55 см', 130, 7378, 66, 120, 'Ø50 / PP', '700 мм, двухцветный алюминий', 21, 0.21, '64х66х130 см', '89х37х62 см', 52, 4450, 1, 'синхромеханизм со слайдером', NULL, NULL),
(2145, 7870, 'А1511', 'натуральная кожа', 1, 67, '45-53см', 115, 74, 65, 120, 'Ø60/РР', '720 мм, алюминий', 27, 0.23, '67х65х115 см', NULL, 50, 51, 1, 'синхромеханизм', NULL, NULL),
(2146, 13562, 'А663', 'ткань/сетка', NULL, 60, '44-54см', 130, 78, 64, 120, 'Ø50/РР', '640 мм, хром', 14.6, 0.14, '60х64х130 см', '75х30х60 см', 47, 50, 1, 'топ-ган', NULL, NULL),
(2147, 23718, 'А755', 'ткань/сетка', NULL, 68, '46-56 см', 132, 76, 68, 120, 'Ø50 / PU', '680 мм, пластик', 15.2, 0.13, '68х68х132 см', '72х31х60 см', 48, 48, 1, 'топган люкс', NULL, NULL),
(2148, 7909, 'А8', 'сетка', NULL, 5963, '46-56см', 131, 7279, 62, 120, 'Ø60/РР', '700 мм, алюминий', 23, 0.17, '59-63х62х131 см', NULL, 49, 45, 1, 'синхромеханизм', NULL, NULL),
(2149, 7914, 'А8', 'сетка', NULL, 5963, '46-56см', 131, 7279, 62, 120, 'Ø60/РР', '700 мм, алюминий', 23, 0.17, '59-63х62х131 см', NULL, 49, 45, 1, 'синхромеханизм', NULL, NULL),
(2150, 7928, 'А9', 'сетка', NULL, 5963, '46-52см', 133, 7588, 6672, 120, 'Ø60/РР', '700 мм, алюминий', 25.5, 0.23, '59-63х66-72х133 см', NULL, 49, 4954, 1, 'синхромеханизм / слайдер', NULL, NULL),
(2151, 12352, 'Т27H', 'ткань/сетка', NULL, 67, '47-57 см', 135, 6878, 62, 120, 'Ø60 / PP', '720 мм, пластик', 21.5, 0.19, '67х62-67х116-135 см', '79х36х66 см', 48, 4752, 1, 'синхромеханизм со слайдером', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `producers`
--

CREATE TABLE `producers` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `producers`
--

INSERT INTO `producers` (`id`, `name`) VALUES
(588, 'Рива Чейр');

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`id`, `name`) VALUES
(1209, 'Kонференц-кресла'),
(1208, 'Kресла руководителя'),
(1210, 'Oператорские кресла'),
(1211, 'Кресла для геймеров');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `armrests`
--
ALTER TABLE `armrests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `description` (`description`);

--
-- Индексы таблицы `chairs`
--
ALTER TABLE `chairs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_chairs_sections` (`section_id`),
  ADD KEY `FK_chairs_producers` (`producer_id`);

--
-- Индексы таблицы `chairs_armrests`
--
ALTER TABLE `chairs_armrests`
  ADD KEY `FK_chairs_armrest` (`chair_id`),
  ADD KEY `FK_armrest_chair` (`armrest_id`);

--
-- Индексы таблицы `chairs_colors`
--
ALTER TABLE `chairs_colors`
  ADD KEY `FK_chairs` (`chair_id`),
  ADD KEY `FK_colors` (`color_id`);

--
-- Индексы таблицы `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `color` (`color`);

--
-- Индексы таблицы `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chair_id` (`chair_id`);

--
-- Индексы таблицы `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `armrests`
--
ALTER TABLE `armrests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6095;

--
-- AUTO_INCREMENT для таблицы `chairs`
--
ALTER TABLE `chairs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27133;

--
-- AUTO_INCREMENT для таблицы `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11446;

--
-- AUTO_INCREMENT для таблицы `features`
--
ALTER TABLE `features`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2152;

--
-- AUTO_INCREMENT для таблицы `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=591;

--
-- AUTO_INCREMENT для таблицы `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1220;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `chairs`
--
ALTER TABLE `chairs`
  ADD CONSTRAINT `FK_chairs_producers` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_chairs_sections` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `chairs_armrests`
--
ALTER TABLE `chairs_armrests`
  ADD CONSTRAINT `FK_armrest_chair` FOREIGN KEY (`armrest_id`) REFERENCES `armrests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_chairs_armrest` FOREIGN KEY (`chair_id`) REFERENCES `chairs` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `chairs_colors`
--
ALTER TABLE `chairs_colors`
  ADD CONSTRAINT `FK_chairs` FOREIGN KEY (`chair_id`) REFERENCES `chairs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_colors` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `FK_features_chairs` FOREIGN KEY (`chair_id`) REFERENCES `chairs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
