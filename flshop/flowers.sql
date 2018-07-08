-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 30 2018 г., 21:12
-- Версия сервера: 5.6.37
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `flowers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(13, 'Букети', 1, 1),
(14, 'Троянди', 2, 1),
(15, 'Тюльпани', 3, 1),
(16, 'Піони', 4, 1),
(17, 'Ромашки', 5, 1),
(18, 'Лілії', 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recommended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(34, 'Ірисове поле', 13, 1839707, 1700, 1, 'Україна', 'Шикарний букет ірисів, це чудові емоції і приємні спогади.', 0, 1, 1),
(36, 'Корзина 101 біло - рожева троянда ', 13, 2028027, 2700, 1, 'Україна', 'Коробка складається з 101бело - рожевої троянди і фурнітури. Колір фурнітури може відрізнятися.', 0, 1, 1),
(37, '101 різнокольорова троянда', 13, 2019487, 2800, 1, 'Україна', 'Шикарний, барвистий букет. Буде чудовим подарунком для Ваших коханих. Складається з 101 різнобарвної троянди.', 1, 1, 1),
(38, '101 рожева троянда', 13, 1953212, 2750, 1, 'Україна', 'Об\'ємний букет рожевих троянд - неймовірно романтичний і красивий подарунок. Букет складається з 101 рожевої троянди сорту \"Аква\" висотою 60 см. Упаковка та декор.', 0, 0, 1),
(39, '51 метрова троянда', 13, 1602042, 2700, 0, 'Україна', 'Шикарний букет з 51 метрової троянди. Широкий жест, який вже точно не залишить байдужим.', 0, 0, 1),
(41, '1001 біла троянда', 14, 1129365, 31000, 1, 'Samsung', 'Шикарна композиція, яка складається з 1001 троянди. Дівчина буде в захваті від Вашого подарунка.', 1, 1, 1),
(42, 'Грація', 14, 1128670, 1000, 1, 'Samsung', 'Шикарно і зі смаком! Складається з еустоми та кущовий троянди', 0, 0, 1),
(43, 'Посмішка', 14, 683364, 800, 1, 'Gazer', '19 жовтих троянд в яскравому і запам\'ятовується букеті. Шматочок літнього сонця в ваших руках.', 1, 0, 1),
(44, 'Біла хмара', 15, 355025, 700, 1, 'Україна', 'Теплий весняний букет з 11 білих тюльпанів, який ідеально буде поєднуватися з нашим флористичним оформленням подарує незабутні враження.', 1, 1, 1),
(45, 'Айсберг', 16, 1563832, 1320, 1, 'Україна', 'Шикраный комплимент,состоит из 15 белых пионов.', 0, 1, 1),
(48, '151 Біла троянда', 14, 1234567, 4000, 1, 'Україна', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(48, 'Діма', '0987655342', '', 6, '2017-12-12 00:05:21', '{\"45\":1,\"43\":1}', 1),
(49, 'Макс', '0986653412', 'Відправити сьогодні', 8, '2017-12-12 10:03:50', '{\"44\":1,\"37\":1}', 1),
(47, 'Гаркуша Олександр', '0965537673', 'Відправити новою поштою', 4, '2017-12-11 23:33:52', '{\"41\":1}', 1),
(50, 'oleg', '0965543412', 'Відправити новою поштою', 9, '2017-12-12 10:25:26', '{\"44\":1}', 4),
(51, 'Гаркуша Олександр', '0965537673', 'Відправити сьогодні', 4, '2017-12-15 15:02:25', '{\"44\":1,\"45\":1}', 2),
(52, 'Dima', '0930491063', 'fast, please', 0, '2017-12-24 19:15:58', '{\"48\":1,\"45\":1}', 4),
(53, 'Гаркуша Олександр', '0965537673', '', 4, '2017-12-25 20:33:46', '{\"45\":1,\"36\":1}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(3, 'Александр', 'alex@mail.com', '111111', ''),
(4, 'Гаркуша Олександр', 'Garkusha-sasha@gmail.com', '222222', 'admin'),
(5, 'Сергей', 'serg@mail.com', '111111', ''),
(6, 'Діма', 'Dima123@gmail.com', '111111', ''),
(7, 'Олександр', 'Garkusha-sasha@mail.com', '111111', ''),
(8, 'Макс', 'maks100500@gmail.com', '111111', ''),
(9, 'oleg', 'oleg@gmail.net', '111111', ''),
(10, 'Dima', 'dimalinyov@gmail.com', '227728dima', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
