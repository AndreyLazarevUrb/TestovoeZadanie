-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 28 2020 г., 17:08
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `practika`
--

-- --------------------------------------------------------

--
-- Структура таблицы `objective`
--

CREATE TABLE `objective` (
  `id` int(10) NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `objective`
--

INSERT INTO `objective` (`id`, `username`, `email`, `Text`) VALUES
(1, 'qwe', 'qwe', ''),
(2, 'qwe', 'qwe', ''),
(3, 'qwewqe', 'qwed', 'sfsadfasdf asdf sadg ds'),
(4, 'Andrey', 'p_a.r.lazarev@m', 'asdqw'),
(5, 'Egor', 'p_a.r.dqwgfqv@m', 'QPIWGOWEM GIHWEIUGNO IEUFIWEO GUBWEGOJ NWO');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Andrey', 'p_a.r.lazarev@mpt.ru', 'wqeqweqweqwe'),
(2, 'Vasya', 'p_a.r.Plitka@mpt.ru', 'ermmmmg4h83'),
(3, 'Vasya', 'p_a.r.Vasuta@mpt.ru', 'prikol6346'),
(4, 'wegsdf', 'noirnege@mail.ru', 'gerhwfge'),
(5, 'Vasya', 'p_a.rPoklin@mpt.ru', 'dwieohf73845'),
(6, '', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `objective`
--
ALTER TABLE `objective`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `objective`
--
ALTER TABLE `objective`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
