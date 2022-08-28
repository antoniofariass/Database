-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Ago-2022 às 20:01
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
-- Banco de dados: `escolamusical`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `instrumento`
--

CREATE TABLE `instrumento` (
  `Codigo` int(5) NOT NULL,
  `NomeInstrumento` varchar(20) NOT NULL,
  `Classificacao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `instrumento`
--

INSERT INTO `instrumento` (`Codigo`, `NomeInstrumento`, `Classificacao`) VALUES
(11221, 'Batuta', 'compasso'),
(12333, 'Violino', 'cordas'),
(12345, 'Violao', 'cordas'),
(23333, 'Piano', 'cordas'),
(34222, 'Bateria', 'percussao'),
(45532, 'Trompete', 'sopro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musico`
--

CREATE TABLE `musico` (
  `RG` int(10) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Nacionalidade` varchar(15) NOT NULL,
  `DataNasc` date NOT NULL,
  `Funcao` varchar(30) NOT NULL,
  `NomeOrquestra` varchar(50) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `musico`
--

INSERT INTO `musico` (`RG`, `Nome`, `Nacionalidade`, `DataNasc`, `Funcao`, `NomeOrquestra`, `data`) VALUES
(3347872, 'Marcelo Costa', 'Brasil', '1984-05-02', 'Maestro', 'Orquestra Sinfonica de Esperança', '2022-08-26'),
(8839927, 'Lucas Bezerra da Silva', 'Brasil', '2001-05-15', 'Violonista', 'Orquestra Sinfonica de Esperança', '2022-08-26'),
(33445567, 'José Lopes de Oliveira', 'Brasil', '1991-03-01', 'Maestro', 'Banda da Felicidade', '2022-08-26'),
(67787412, 'Marta Maria Menezes', 'Brasil', '1996-11-10', 'Violinista', 'Orquestra Sinfonica de Esperança', '2022-08-26'),
(67787665, 'Cassia Weber', 'Brasil', '1988-10-03', 'Baterista', 'Orquestra Sinfonica de Esperança', '2022-08-26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `musico_instrumento`
--

CREATE TABLE `musico_instrumento` (
  `Identidade_musico` int(10) NOT NULL,
  `codigo_instrumento` int(10) NOT NULL,
  `experiencia_anos` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `musico_instrumento`
--

INSERT INTO `musico_instrumento` (`Identidade_musico`, `codigo_instrumento`, `experiencia_anos`) VALUES
(67787665, 34222, 3),
(67787412, 12333, 1),
(8839927, 12345, 1),
(33445567, 11221, 2),
(3347872, 11221, 2),
(33445567, 23333, 6),
(33445567, 12345, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orquestra`
--

CREATE TABLE `orquestra` (
  `Nome` varchar(50) NOT NULL,
  `Cidade` varchar(30) NOT NULL,
  `Pais` varchar(30) NOT NULL,
  `DataCriacao` date DEFAULT NULL,
  `Maestro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `orquestra`
--

INSERT INTO `orquestra` (`Nome`, `Cidade`, `Pais`, `DataCriacao`, `Maestro`) VALUES
('Banda da Felicidade', 'Campina Grande', 'Brasil', '2015-08-01', 'Marcelo Costa '),
('Orquestra Sinfonica de Esperança', 'Esperança ', 'Brasil', '2017-09-07', 'José Lopes de Oliveira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sinfonia`
--

CREATE TABLE `sinfonia` (
  `Nome` varchar(50) NOT NULL,
  `DataCriacao` date DEFAULT NULL,
  `Compositor` varchar(50) NOT NULL,
  `NomeOrquestra` varchar(50) NOT NULL,
  `Data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sinfonia`
--

INSERT INTO `sinfonia` (`Nome`, `DataCriacao`, `Compositor`, `NomeOrquestra`, `Data`) VALUES
('Sinfonia da Esperanca', '2018-07-07', 'José Lopes de Oliveira', 'Orquestra Sinfonica de Esperança', '2022-08-26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sinfoniamusico`
--

CREATE TABLE `sinfoniamusico` (
  `NomeSinfonia` varchar(50) NOT NULL,
  `IdentidadeMusico` int(10) NOT NULL,
  `Data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `sinfoniamusico`
--

INSERT INTO `sinfoniamusico` (`NomeSinfonia`, `IdentidadeMusico`, `Data`) VALUES
('Sinfonia da Esperanca', 33445567, '2022-08-26');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `instrumento`
--
ALTER TABLE `instrumento`
  ADD PRIMARY KEY (`Codigo`);

--
-- Índices para tabela `musico`
--
ALTER TABLE `musico`
  ADD PRIMARY KEY (`RG`),
  ADD KEY `fk_musico_orquestra` (`NomeOrquestra`);

--
-- Índices para tabela `musico_instrumento`
--
ALTER TABLE `musico_instrumento`
  ADD KEY `fk_id_musico` (`Identidade_musico`),
  ADD KEY `fk_cod_instrumento` (`codigo_instrumento`);

--
-- Índices para tabela `orquestra`
--
ALTER TABLE `orquestra`
  ADD PRIMARY KEY (`Nome`);

--
-- Índices para tabela `sinfonia`
--
ALTER TABLE `sinfonia`
  ADD PRIMARY KEY (`Nome`),
  ADD KEY `fk_sinfonia_orquestra` (`NomeOrquestra`);

--
-- Índices para tabela `sinfoniamusico`
--
ALTER TABLE `sinfoniamusico`
  ADD KEY `fk_nome_sinfonia` (`NomeSinfonia`),
  ADD KEY `fk_identidade_musico` (`IdentidadeMusico`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `musico`
--
ALTER TABLE `musico`
  ADD CONSTRAINT `fk_musico_orquestra` FOREIGN KEY (`NomeOrquestra`) REFERENCES `orquestra` (`Nome`);

--
-- Limitadores para a tabela `musico_instrumento`
--
ALTER TABLE `musico_instrumento`
  ADD CONSTRAINT `fk_cod_instrumento` FOREIGN KEY (`codigo_instrumento`) REFERENCES `instrumento` (`Codigo`),
  ADD CONSTRAINT `fk_id_musico` FOREIGN KEY (`Identidade_musico`) REFERENCES `musico` (`RG`);

--
-- Limitadores para a tabela `sinfonia`
--
ALTER TABLE `sinfonia`
  ADD CONSTRAINT `fk_sinfonia_orquestra` FOREIGN KEY (`NomeOrquestra`) REFERENCES `orquestra` (`Nome`);

--
-- Limitadores para a tabela `sinfoniamusico`
--
ALTER TABLE `sinfoniamusico`
  ADD CONSTRAINT `fk_identidade_musico` FOREIGN KEY (`IdentidadeMusico`) REFERENCES `musico` (`RG`),
  ADD CONSTRAINT `fk_nome_sinfonia` FOREIGN KEY (`NomeSinfonia`) REFERENCES `sinfonia` (`Nome`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
