-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 07-Mar-2021 às 00:11
-- Versão do servidor: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- versão do PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `crawler_covid`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `casos_uniao`
--

CREATE TABLE `casos_uniao` (
  `id` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `confirmados` varchar(255) NOT NULL,
  `suspeitos` varchar(255) NOT NULL,
  `recuperados` varchar(255) NOT NULL,
  `obitos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `casos_uniao`
--

INSERT INTO `casos_uniao` (`id`, `data`, `confirmados`, `suspeitos`, `recuperados`, `obitos`) VALUES
(65, ' 03/03/2021 às 22:00:18', '1418', '120', '5667', '62'),
(66, ' 04/03/2021 às 22:00:18', '1418', '120', '5667', '62');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `casos_uniao`
--
ALTER TABLE `casos_uniao`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `casos_uniao`
--
ALTER TABLE `casos_uniao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
