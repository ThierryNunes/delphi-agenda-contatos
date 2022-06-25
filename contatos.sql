-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Jun-2022 às 21:41
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agenda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `celular` varchar(16) DEFAULT NULL,
  `bloqueado` tinyint(1) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `celular`, `bloqueado`, `data`, `observacoes`) VALUES
(1, 'Alisson', '41547489745', 0, '2022-06-25 11:30:29', 'Celular'),
(2, 'Daniela', '12184487796', 0, '2022-06-25 11:32:04', 'Celular'),
(3, 'Rodrigo', '11557798856', NULL, '2022-06-25 11:33:14', NULL),
(4, 'Sabrina', '66448884123', 1, '2022-06-25 11:33:35', 'Celular'),
(5, 'Danilo', '66445412121', 0, '2022-06-25 11:34:43', 'Celular'),
(16, 'Giovana', '56489412349', 0, '2022-06-25 14:43:35', 'teste'),
(17, 'Matheus', '11778894123', 0, '2022-06-25 14:49:45', 'Celular');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
