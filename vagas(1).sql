-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Nov-2022 às 02:30
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
-- Banco de dados: `vagas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `IDaluno` int(13) NOT NULL,
  `nome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sobrenome` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resumo_experiencia` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_perfil` blob DEFAULT NULL,
  `email_inst` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regiao_interesse` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_nascimento` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidade_preferencia` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_curso` int(11) NOT NULL,
  `biografia` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `competencias` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RA` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`IDaluno`, `nome`, `sobrenome`, `resumo_experiencia`, `foto_perfil`, `email_inst`, `regiao_interesse`, `data_nascimento`, `genero`, `modalidade_preferencia`, `id_curso`, `biografia`, `competencias`, `RA`, `senha`, `cpf`) VALUES
(4, 'bb', 'bb', NULL, NULL, 'aluno@a', NULL, 'bb', 'bb', NULL, 0, NULL, NULL, 'bb', 'aa', 'bb'),
(5, 'luan', 'garcia', NULL, NULL, 'aluno@teste', NULL, '21/06/20', 'masculino', NULL, 0, NULL, NULL, '123456', '123', '123456'),
(6, 'gustavo', 'Effgen', NULL, NULL, 'gustavo.pereira63@gmal', NULL, '15/03/20', 'M', NULL, 0, NULL, NULL, '026', '123456', '46061992882');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairros`
--

CREATE TABLE `bairros` (
  `IDbairro` int(11) NOT NULL,
  `nome_bairro` varchar(60) NOT NULL,
  `cidade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bairros`
--

INSERT INTO `bairros` (`IDbairro`, `nome_bairro`, `cidade_id`) VALUES
(5, 'aa', 0),
(6, 'bb', 0),
(7, 'gg', 0),
(8, 'aa', 0),
(9, 'bairro do teste', 0),
(10, 'empresarial', 0),
(11, 'Jd. Itapuã', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `IDcidade` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`IDcidade`, `nome`, `estado`) VALUES
(5, 'aa', 'aa'),
(6, 'bb', 'bb'),
(7, 'gg', 'gg'),
(8, 'aa', 'aa'),
(9, 'itapira', 'sp'),
(10, 'itapira', 'sp'),
(11, 'Itapira', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `IDcurso` int(11) NOT NULL,
  `nome_curso` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `periodo` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`IDcurso`, `nome_curso`, `periodo`) VALUES
(4, 'bb', ''),
(5, 'dsm', ''),
(6, 'DSM', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresas`
--

CREATE TABLE `empresas` (
  `IDempresa` int(11) NOT NULL,
  `nome_empresa` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `razao_social` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_endereco` int(11) NOT NULL,
  `email_corporativo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_perfil` blob NOT NULL,
  `web` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nome` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Sobrenome` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nascimento` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpf` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empresas`
--

INSERT INTO `empresas` (`IDempresa`, `nome_empresa`, `razao_social`, `cnpj`, `id_endereco`, `email_corporativo`, `foto_perfil`, `web`, `senha`, `Nome`, `Sobrenome`, `data_nascimento`, `cpf`, `telefone`, `email`) VALUES
(2, 'aa', 'aa', 'aa', 0, 'empresa@a', '', '', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa@aa'),
(3, 'gg', 'gg', 'gg', 0, 'gg@gg', '', '', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg', 'gg@tt'),
(4, 'aa', 'aa', 'aaa', 0, 'aa@ttt', '', '', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa', 'aa@rr'),
(5, 'desenvolve', 'desenvolve', '124561', 0, 'empresa@teste', '', '', '123', 'luan', 'garcia', '123', '13142', '123456', 'empresa@teste2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `IDendereco` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `numero` varchar(11) NOT NULL,
  `cep_rua` varchar(9) NOT NULL,
  `bairro_id` int(11) NOT NULL,
  `complemento` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `enderecos`
--

INSERT INTO `enderecos` (`IDendereco`, `nome`, `numero`, `cep_rua`, `bairro_id`, `complemento`) VALUES
(5, 'aa', 'aa', 'aa', 0, 'aa'),
(6, 'bb', 'bb', 'bb', 0, 'bb'),
(7, 'gg', 'gg', 'gg', 0, 'gg'),
(8, 'aa', 'aa', 'aa', 0, 'aa'),
(9, '1234899', 'rua do test', '855', 0, 'casa'),
(10, '123', 'rua empresa', '123', 0, 'casa'),
(11, '46061998228', 'otavio mone', '468', 0, 'sorveteria fernandes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_alunos`
--

CREATE TABLE `endereco_alunos` (
  `Aluno_id` int(11) NOT NULL,
  `endereco_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco_empresa`
--

CREATE TABLE `endereco_empresa` (
  `id_empresa` int(11) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fatec`
--

CREATE TABLE `fatec` (
  `nome` varchar(45) NOT NULL,
  `sobre` varchar(45) NOT NULL,
  `data_nacimento` date NOT NULL,
  `cargo` varchar(60) NOT NULL,
  `email_inst` varchar(80) NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `idiomas`
--

CREATE TABLE `idiomas` (
  `IDidioma` int(11) NOT NULL,
  `idioma` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `aluno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `links`
--

CREATE TABLE `links` (
  `IDlink` int(11) NOT NULL,
  `link` varchar(2048) NOT NULL,
  `id_aluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefones`
--

CREATE TABLE `telefones` (
  `IDtelefone` int(11) NOT NULL,
  `telefone` varchar(20) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `telefones`
--

INSERT INTO `telefones` (`IDtelefone`, `telefone`) VALUES
(5, 'aa'),
(6, 'bb'),
(7, 'gg'),
(8, 'aa'),
(9, '789456'),
(10, '141234'),
(11, '(19) 1555555');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_alunos`
--

CREATE TABLE `telefone_alunos` (
  `id_telefone` int(11) NOT NULL,
  `idAluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `telefone_alunos`
--

INSERT INTO `telefone_alunos` (`id_telefone`, `idAluno`) VALUES
(0, 1),
(0, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_empresas`
--

CREATE TABLE `telefone_empresas` (
  `ID_telefone` int(11) NOT NULL,
  `ID_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `telefone_empresas`
--

INSERT INTO `telefone_empresas` (`ID_telefone`, `ID_empresa`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas`
--

CREATE TABLE `vagas` (
  `IDvaga` int(11) NOT NULL,
  `nome_vaga` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salario` float NOT NULL,
  `nivel_vaga` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_abertura` date NOT NULL,
  `data_fechamento` date NOT NULL,
  `modelo_contrataco` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modalidade_de_trabalho` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade_vaga` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `descricao` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `experiencia` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `links` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`IDaluno`),
  ADD UNIQUE KEY `email_inst` (`email_inst`),
  ADD UNIQUE KEY `RA` (`IDaluno`) USING BTREE;

--
-- Índices para tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`IDbairro`) USING BTREE;

--
-- Índices para tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`IDcidade`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`IDcurso`);

--
-- Índices para tabela `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`IDempresa`),
  ADD UNIQUE KEY `cnpj` (`cnpj`);

--
-- Índices para tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`IDendereco`);

--
-- Índices para tabela `endereco_alunos`
--
ALTER TABLE `endereco_alunos`
  ADD PRIMARY KEY (`Aluno_id`),
  ADD KEY `FK_endereco_id` (`endereco_id`);

--
-- Índices para tabela `endereco_empresa`
--
ALTER TABLE `endereco_empresa`
  ADD KEY `FK_id_empresa` (`id_empresa`),
  ADD KEY `FK_id_endereco` (`id_endereco`);

--
-- Índices para tabela `fatec`
--
ALTER TABLE `fatec`
  ADD UNIQUE KEY `email_inst` (`email_inst`),
  ADD UNIQUE KEY `telefone` (`telefone`);

--
-- Índices para tabela `idiomas`
--
ALTER TABLE `idiomas`
  ADD PRIMARY KEY (`IDidioma`),
  ADD KEY `FK_aluno_id` (`aluno_id`);

--
-- Índices para tabela `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`IDlink`),
  ADD KEY `FK_id_aluno` (`id_aluno`);

--
-- Índices para tabela `telefones`
--
ALTER TABLE `telefones`
  ADD PRIMARY KEY (`IDtelefone`);

--
-- Índices para tabela `telefone_alunos`
--
ALTER TABLE `telefone_alunos`
  ADD KEY `FK_idaluno` (`idAluno`),
  ADD KEY `FK_id_telefone` (`id_telefone`);

--
-- Índices para tabela `telefone_empresas`
--
ALTER TABLE `telefone_empresas`
  ADD KEY `FK_ID_empresa` (`ID_empresa`),
  ADD KEY `FK_ID_telefone` (`ID_telefone`);

--
-- Índices para tabela `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`IDvaga`),
  ADD KEY `FK_id_empresa` (`empresa_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `IDaluno` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `IDbairro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `IDcidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `IDcurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `empresas`
--
ALTER TABLE `empresas`
  MODIFY `IDempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `IDendereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `idiomas`
--
ALTER TABLE `idiomas`
  MODIFY `IDidioma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `links`
--
ALTER TABLE `links`
  MODIFY `IDlink` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `telefones`
--
ALTER TABLE `telefones`
  MODIFY `IDtelefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `IDvaga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
