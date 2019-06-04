-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 04 2019 г., 05:04
-- Версия сервера: 5.6.41
-- Версия PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `marsel_pn_10`
--
CREATE DATABASE IF NOT EXISTS `marsel_pn_10` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `marsel_pn_10`;

-- --------------------------------------------------------

--
-- Структура таблицы `family`
--

CREATE TABLE `family` (
  `mama` varchar(355) NOT NULL,
  `papa` varchar(355) NOT NULL,
  `sister` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `friends`
--

CREATE TABLE `friends` (
  `name` varchar(355) NOT NULL,
  `phone` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `friends`
--

INSERT INTO `friends` (`name`, `phone`, `id`) VALUES
('саша', '79142814123', 1),
('айтал', '79142814183', 2),
('саша яка', '79142814113', 3),
('саша скрябин', '79142814153', 4),
('саша', '79142814123', 5),
('айтал', '79142814183', 6),
('саша яка', '79142814113', 7),
('саша скрябин', '79142814153', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `insta`
--

CREATE TABLE `insta` (
  `email` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `username` varchar(355) NOT NULL,
  `password` int(11) NOT NULL,
  `avatar` varchar(355) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `insta`
--

INSERT INTO `insta` (`email`, `name`, `username`, `password`, `avatar`, `id`) VALUES
('marsellonick97@mail.ru', 'Марсель', 'Mars', 123, 'img/4.jpg', 1),
('marsellonick97@gmail.com', 'Артем', 'Artem', 12345, 'img/3.jpg', 2),
('marsellonick97@mail.ru', 'Артур', 'Artur', 1234, 'img/3.jpg', 4),
('marsellonick97@mail.ru', 'Алексей', 'Alex', 123456, 'img/4.jpg', 6),
('marsellonick97@mail.ru', 'Ivan', 'Ivan', 1234567, '', 7),
('marsellonick97@mail.ru', 'Марсель', 'Marsel', 123, '', 8),
('marsellonick97@mail.ru', 'Марсель николаев', 'Mars', 0, '', 9),
('marsellonick97@mail.ru', 'Руслан Петров', 'Ruslan', 123456789, '', 10),
('marsellonick97@mail.ru', 'Ivan', 'Mars', 123, '', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `img` varchar(355) NOT NULL,
  `text_post` varchar(355) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`img`, `text_post`, `id`) VALUES
('img/2.jpg', 'хром', 3),
('img/1.png', 'qwertyui', 8),
('img/2.jpg', 'kartinka', 9),
('img/1.png', 'qwertyui', 10),
('img/2.jpg', 'kartinka', 11),
('img/1.png', 'qwertyui', 12),
('img/2.jpg', 'kartinka', 13),
('img/1.png', 'qwertyui', 14),
('img/1.png', 'qwertyui', 15),
('img/2.jpg', 'kartinka', 16),
('img/1.png', 'qwertyui', 17),
('img/3.jpg', 'lol', 18),
('img/elka.jpg', 'qwertyui', 19),
('img/elka.jpg', 'kartinka', 20),
('img/elka.jpg', 'qwertyui', 21),
('img/20180510_110920.jpg', 'mawsadas', 22),
('img/depositphotos_35742147-stock-photo-young-man-in-leather-jacket.jpg', 'ivan', 23),
('img/good.png', 'qwertyui', 24),
('img/good.png', 'qwertyui', 25),
('img/good.png', 'qwertyui', 26),
('img/unity.jpg', 'qwertyui', 27),
('img/thelast.jpg', 'ivan', 28);

-- --------------------------------------------------------

--
-- Структура таблицы `post_vk`
--

CREATE TABLE `post_vk` (
  `img` varchar(355) NOT NULL,
  `text_post` varchar(355) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post_vk`
--

INSERT INTO `post_vk` (`img`, `text_post`, `id`) VALUES
('img/dog.jpg', 'здарава ', 39),
('img/vk.png', 'оч смешной мем хаха', 40),
('img/mini_1.jpg', 'khjk', 42);

-- --------------------------------------------------------

--
-- Структура таблицы `shop`
--

CREATE TABLE `shop` (
  `img` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `price` int(10) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop`
--

INSERT INTO `shop` (`img`, `name`, `price`, `id`) VALUES
('img/1.jpg', 'Just Cause 4', 3500, 1),
('img/2.jpg', 'eqe', 2500, 24),
('img/gta5.jpg', 'MAINCRAFT', 2990, 46);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `name` varchar(355) NOT NULL,
  `surname` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`name`, `surname`, `id`) VALUES
('Нил', 'Армстронг', 1),
('Майкл ', 'Джексон', 2),
('илон', 'маск', 3),
('илон', 'маск', 4),
('Нил', 'Армстронг', 5),
('Нил', 'Армстронг', 6),
('Селена', 'Гомес', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `twitter`
--

CREATE TABLE `twitter` (
  `logo` varchar(355) NOT NULL,
  `title` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `twitter`
--

INSERT INTO `twitter` (`logo`, `title`, `text`, `img`, `id`) VALUES
('post2.png', 'Вести.Hi-tech@vestihittech 45 мин.', 'Ио́сиф Виссарио́нович Ста́лин — российский революционер, советский политический, государственный, военный и партийный деятель. С 21 января 1924 по 5 марта 1953 года — руководитель Советского государства. Генералиссимус Советского Союза. Маршал Советского Союза.', 'vesti_hi_tech.jpg', 2),
('post3.jpg', 'TJ @tjournal 1ч.', '«Используя последнюю версию Wolfram Language, любой способен сгенерировать это доказательство не более чем за минуту. И каждый его шаг легко проверить. Но почему результат будет верным? Как его объяснить?»', 'roscosmos.jpg', 3),
('logo', 'Kek', 'Marsell', 'img', 7),
('avatar.jpg', 'kek', '', 'background.jpg', 11),
('avatar.jpg', 'kek', '', 'background.jpg', 12),
('avatar.jpg', 'kek', '', 'background.jpg', 13),
('avatar.jpg', 'kek', '', 'background.jpg', 19),
('avatar.jpg', 'kek', '', 'background.jpg', 21),
('avatar.jpg', 'kek', '', 'background.jpg', 22);

-- --------------------------------------------------------

--
-- Структура таблицы `vk`
--

CREATE TABLE `vk` (
  `email` varchar(355) NOT NULL,
  `password` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `Birthday` varchar(355) NOT NULL,
  `day` varchar(355) NOT NULL,
  `month` varchar(355) NOT NULL,
  `City` varchar(355) NOT NULL,
  `Cit` varchar(355) NOT NULL,
  `year` varchar(355) NOT NULL,
  `id` int(10) NOT NULL,
  `avatar` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vk`
--

INSERT INTO `vk` (`email`, `password`, `name`, `Birthday`, `day`, `month`, `City`, `Cit`, `year`, `id`, `avatar`) VALUES
('marsellonick97@mail.ru', '123', 'Марсель Рейховцев', 'День рождение:', '21', 'октябрь', 'Якутск', 'Город:', '2005', 1, 'img/2.jpg'),
('marsellonick97@mail.ru', '1234', 'Анна', '', '', '', '', '', '', 2, 'img/3.png'),
('marsellonick97@mail.ru', '12345', 'Артур', '', '', '', '', '', '', 3, 'img/4.jpg'),
('marsellonick97@mail.ru', '1234567', 'Александр', '', '13', 'октябрь', '', '', '2005', 8, 'img/3.png'),
('marsellonick97@mail.ru', '12345678', 'вывыа', '', '27', 'ноябрь', '', '', '2001', 9, ''),
('marsellonick97@mail.ru', '321', 'hdfgfgd', '', '11', 'ноябрь', '', '', '2001', 10, ''),
('marsellonick97@mail.ru', '1234', 'MAINCRAFT', '', '21', 'октябрь', '', '', '2001', 11, '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `insta`
--
ALTER TABLE `insta`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_vk`
--
ALTER TABLE `post_vk`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `twitter`
--
ALTER TABLE `twitter`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vk`
--
ALTER TABLE `vk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `insta`
--
ALTER TABLE `insta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `post_vk`
--
ALTER TABLE `post_vk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `twitter`
--
ALTER TABLE `twitter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `vk`
--
ALTER TABLE `vk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
