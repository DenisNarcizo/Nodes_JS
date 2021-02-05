-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Fev-2021 às 16:52
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fullstack_eletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `mensagem` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `nome`, `mensagem`, `data`) VALUES
(10, 'Patrick Ferreira', 'Estou muito satisfeito', '2020-10-31 10:43:46'),
(12, 'Maria', 'Chegou Muito Rapido!', '2020-11-07 09:21:20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedidos` int(11) NOT NULL,
  `produtos_id` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `nome_cliente` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedidos`, `produtos_id`, `quantidade`, `nome_cliente`) VALUES
(1, 12, 70, 'Denis'),
(2, 5, 60, 'Anna'),
(3, 8, 15, 'Maria'),
(4, 6, 28, 'Carlos'),
(5, 3, 48, 'Jose');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `categoria`, `descricao`, `preco`, `precofinal`, `imagem`) VALUES
(1, 'geladeira', 'Geladeira Frost Free Brastemp Side Inverse 540 litros', '6389.00', '5019.00', './imagens/Geladeira_Brastemp.jpeg'),
(2, 'geladeira', 'Geladeira Frost Free Brastemp Branca 375 litros', '2068.60', '1910.90', './imagens/Refrigerador_brastemp.jpeg'),
(3, 'geladeira', 'Geladeira Frost Free Consul Prata 340 litros', '2199.90', '2069.00', './imagens/Geladeira_Consul.jpeg'),
(4, 'fogao', 'Fogão 4 Bocas Consul Inox com Mesa de Vidro', '1209.90', '1129.00', './imagens/Fogao_consul.jpeg'),
(5, 'fogao', 'Fogão de Piso 4 Bocas Atlas Monaco com Atendimento Automático', '609.90', '519.70', './imagens/fogao_Atlas_monaco.jpeg'),
(6, 'microondas', 'Micro-ondas Consul 32 Litros Inox 220V', '580.90', '409.88', './imagens/microondas_consul.jpeg'),
(7, 'microondas', 'Microondas 25L Espelhado Philco 220V', '508.70', '464.53', './imagens/microondas_Philco.jpeg'),
(8, 'microondas', 'Forno de Microondas Electrolux 20L Branco', '459.90', '436.05', './imagens/Microondas_Eletrolux.jpeg'),
(9, 'lavalouca', 'Lava-Louça Electrolux Inox com 10 Serviços, 06 Programas de Lavagens.', '3599.00', '2799.90', './imagens/lava_louca_eletrolux.jpeg'),
(10, 'lavalouca', 'Lava Louça Compacta 8 Serviços Branca 127V Brastemp', '1970.50', '1730.61', './imagens/lava_louca_compacta.jpeg'),
(11, 'lavadora', 'Lavadora de Roupas Brastemp 11 kg com Turbo Perfomance Branca', '1699.00', '1214.00', './imagens/Lavadora_brastemp.jpeg'),
(12, 'lavadora', 'Lavadora de Roupas Philco Inverter 12KG', '2399.90', '2179.90', './imagens/lavadora_philco.jpeg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
