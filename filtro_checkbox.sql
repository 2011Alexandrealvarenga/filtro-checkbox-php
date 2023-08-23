-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Ago-2023 às 18:55
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `filtro_checkbox`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `a_brands`
--

CREATE TABLE `a_brands` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `a_brands`
--

INSERT INTO `a_brands` (`id`, `name`) VALUES
(1, 'açucar'),
(2, 'feijao'),
(3, 'sabao'),
(4, 'queijo'),
(5, 'iorgute'),
(6, 'suco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `a_products`
--

CREATE TABLE `a_products` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `a_products`
--

INSERT INTO `a_products` (`id`, `brand_id`, `name`, `price`, `created_at`) VALUES
(1, 1, 'produto 1', '12', '2023-08-23 15:09:19'),
(2, 2, 'produto 2', '', '2023-08-23 15:09:19'),
(3, 3, 'produto 3', '13', '2023-08-23 15:09:19'),
(4, 1, 'produto 4', '14', '2023-08-23 15:09:19'),
(5, 4, 'produto 5', '132', '2023-08-23 15:09:19'),
(6, 3, 'produto 6', '33', '2023-08-23 15:09:19'),
(7, 4, 'produto 7', '11', '2023-08-23 15:09:19'),
(8, 1, 'produto 8', '12', '2023-08-23 15:09:19'),
(9, 5, 'produto 9', '32', '2023-08-23 15:09:19'),
(10, 2, 'produto 10', '32', '2023-08-23 15:09:19'),
(11, 1, 'produto 11', '321', '2023-08-23 15:09:19'),
(12, 2, 'produto 12', '212', '2023-08-23 15:09:19'),
(13, 3, 'produto 13', '25', '2023-08-23 15:09:19'),
(14, 4, 'produto 14', '20', '2023-08-23 15:09:19'),
(15, 5, 'produto 15', '70', '2023-08-23 15:09:19'),
(16, 4, 'produto 16', '60', '2023-08-23 15:09:19'),
(17, 5, 'produto 17', '50', '2023-08-23 15:09:19'),
(18, 5, 'produto 18', '40', '2023-08-23 15:09:19'),
(19, 5, 'produto 19', '30', '2023-08-23 15:09:19'),
(20, 1, 'produto 20', '20', '2023-08-23 15:09:19');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `a_brands`
--
ALTER TABLE `a_brands`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `a_products`
--
ALTER TABLE `a_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `a_brands`
--
ALTER TABLE `a_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `a_products`
--
ALTER TABLE `a_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
