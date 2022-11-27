-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Nov-2022 às 21:54
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
-- Banco de dados: `moveis`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `IDcliente` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sobre` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_telefone` int(11) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL,
  `regiao` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_pedido` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`IDcliente`, `nome`, `sobre`, `id_telefone`, `id_endereco`, `regiao`, `data_pedido`) VALUES
(1, 'Flavio', 'Oliveira', 1, 1, 'Itapira', '2022-11-09'),
(2, 'Luiz', 'Galvão', 2, 2, 'Itapira', '2022-09-29'),
(3, 'Bernado', 'Vastem', 3, 3, 'Mogi guaçu', '2022-11-23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `IDendereco` int(11) NOT NULL,
  `rua` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cidade` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bairro` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cep` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `enderecos`
--

INSERT INTO `enderecos` (`IDendereco`, `rua`, `numero`, `cidade`, `bairro`, `cep`) VALUES
(1, 'Rua Quinze de Novembro ', 394, 'Itapira', 'Jd. Flavio', '69089-05'),
(2, 'Rua São João', 455, 'Itapira', 'Vila Nogueira', '41515-23'),
(3, 'Avenida Nove de Abril', 150, 'Mogi Guaçu', 'Centro', '13840-05'),
(4, 'Rua Paraná', 561, 'Mogi Guaçu', 'Vila Vasconcelos', '13844-10'),
(5, 'Rua Pontal', 64, 'Mogi Guaçu', 'Jardim Soares', '13840-09'),
(6, 'Rua Pontal', 64, 'Mogi-Guaçu', 'Jardim Soares', '13840-09'),
(7, 'Rua Otavio Monezzi', 468, 'Itapira', 'Jd. Itapuã', '13976-18'),
(8, 'Rua Prof. Antônio Lima Horta ', 11, 'itapira', 'Conj. Hab. Juscelino Kubitschek de Oliveira', '13976-26'),
(9, 'Rua Dr. Luís Guilherme Rocha', 385, 'Itapira', 'Vila Penha do Rio do Peixe', '13971-08');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoques`
--

CREATE TABLE `estoques` (
  `IDestoque` int(11) NOT NULL,
  `nome_item` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `data_chegada` date DEFAULT NULL,
  `data_torca` date DEFAULT NULL,
  `data_saida` date DEFAULT NULL,
  `id_fonecedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `estoques`
--

INSERT INTO `estoques` (`IDestoque`, `nome_item`, `quantidade`, `data_chegada`, `data_torca`, `data_saida`, `id_fonecedor`) VALUES
(1, 'Chapa MDF jequitibá', 2, '2022-11-15', NULL, '2022-11-24', 1),
(2, 'Corrediça invisível', 20, '2022-11-07', NULL, '2022-11-09', 2),
(3, 'Disco de Corte MDF', 1, '2022-09-21', '2022-11-22', NULL, 3),
(4, 'Tapa Furos', 15, '2022-10-19', '2022-11-23', '2022-11-29', 1),
(5, 'Chapa MDF Ranover', 5, '2022-11-23', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `IDfonecedor` int(11) NOT NULL,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sobre` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnpj` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ID_endereco` int(11) DEFAULT NULL,
  `ID_telefone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`IDfonecedor`, `nome`, `sobre`, `cnpj`, `ID_endereco`, `ID_telefone`) VALUES
(1, 'Gmad', NULL, '74.544.297/0001-92', 4, 4),
(2, 'Soluções Moveis', NULL, '17.726.482/0001-64', 5, 5),
(3, 'Discos MDF', NULL, '38.738.268/0001-06', 6, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sobre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `endereco_id` int(11) DEFAULT NULL,
  `setor_id` int(11) DEFAULT NULL,
  `IDfuncionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`nome`, `sobre`, `cargo`, `endereco_id`, `setor_id`, `IDfuncionario`) VALUES
('Gustavo', 'Effgen Padiar', 'Ajudante Geral', 7, 3, 1),
('Matheus', 'Oliveira', 'Montador de Moveis', 8, 2, 2),
('Jonatas', 'Oliveira Dortta', 'Gerente Produção', 9, 1, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `setores`
--

CREATE TABLE `setores` (
  `IDsetor` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `setores`
--

INSERT INTO `setores` (`IDsetor`, `numero`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefones`
--

CREATE TABLE `telefones` (
  `IDtelefone` int(11) NOT NULL,
  `numero` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `telefones`
--

INSERT INTO `telefones` (`IDtelefone`, `numero`) VALUES
(1, '(19) 3131-7861'),
(2, '(19) 3638-5754'),
(3, '(19) 2822-4454'),
(4, '(19) 3782-8261'),
(5, '(19) 2047-3743'),
(6, '(19) 3848-5152');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IDcliente`),
  ADD KEY `FK_id_endereco` (`id_endereco`),
  ADD KEY `FK_idtelefone` (`id_telefone`);

--
-- Índices para tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`IDendereco`);

--
-- Índices para tabela `estoques`
--
ALTER TABLE `estoques`
  ADD PRIMARY KEY (`IDestoque`),
  ADD KEY `FK_id_fonecedor` (`id_fonecedor`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`IDfonecedor`),
  ADD KEY `FK_IDendereco` (`ID_endereco`),
  ADD KEY `FK_ID_telefone` (`ID_telefone`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`IDfuncionario`),
  ADD KEY `FK_endereco_id` (`endereco_id`),
  ADD KEY `FK_setor_id` (`setor_id`);

--
-- Índices para tabela `setores`
--
ALTER TABLE `setores`
  ADD PRIMARY KEY (`IDsetor`);

--
-- Índices para tabela `telefones`
--
ALTER TABLE `telefones`
  ADD PRIMARY KEY (`IDtelefone`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `FK_id_endereco` FOREIGN KEY (`id_endereco`) REFERENCES `enderecos` (`IDendereco`),
  ADD CONSTRAINT `FK_idtelefone` FOREIGN KEY (`id_telefone`) REFERENCES `telefones` (`IDtelefone`);

--
-- Limitadores para a tabela `estoques`
--
ALTER TABLE `estoques`
  ADD CONSTRAINT `FK_id_fonecedor` FOREIGN KEY (`id_fonecedor`) REFERENCES `fornecedores` (`IDfonecedor`);

--
-- Limitadores para a tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD CONSTRAINT `FK_ID_telefone` FOREIGN KEY (`ID_telefone`) REFERENCES `telefones` (`IDtelefone`),
  ADD CONSTRAINT `FK_IDendereco` FOREIGN KEY (`ID_endereco`) REFERENCES `enderecos` (`IDendereco`);

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `FK_endereco_id` FOREIGN KEY (`endereco_id`) REFERENCES `enderecos` (`IDendereco`),
  ADD CONSTRAINT `FK_setor_id` FOREIGN KEY (`setor_id`) REFERENCES `setores` (`IDsetor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
