-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Out-2021 às 03:15
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `nome_form` varchar(50) DEFAULT NULL,
  `email_form` varchar(40) DEFAULT NULL,
  `telefone_form` char(11) DEFAULT NULL,
  `data` varchar(25) NOT NULL,
  `hora` varchar(25) NOT NULL,
  `servicos` varchar(25) NOT NULL,
  `tratamento` varchar(10) NOT NULL,
  `quimica` varchar(10) NOT NULL,
  `observacoes` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`nome_form`, `email_form`, `telefone_form`, `data`, `hora`, `servicos`, `tratamento`, `quimica`, `observacoes`) VALUES
('Yan', 'yanaraujo1031@gmail.com', '11977376417', '', '', '', '0', '0', ''),
('Yan', 'yanaraujo1031@gmail.com', '11977376417', '', '', '', '0', '0', ''),
('Yan', 'yanaraujo1031@gmail.com', '11977376417', '2021-05-10', '12:12', '', '0', '0', ''),
('Yan', 'yanaraujo1031@gmail.com', '11977376417', '2021-05-10', '12:12', '', '0', '0', ''),
('joao', 'joao@3daap.com', '1199668855', '2021-04-12', '12:05', '1', '0', '0', ''),
('joao', 'joao@3daap.com', '1199668855', '2021-04-12', '12:05', '1', '0', '0', ''),
('joao', 'joao@3daap.com', '1199668855', '2021-04-12', '12:05', '5', '0', '0', ''),
('Yan', 'yanaraujo1031@gmail.com', '11977376417', '2021-05-19', '16:06', '5', ' 11', ' null', ''),
('Yan', 'yanaraujo1031@gmail.com', '11977376417', '2021-05-19', '16:06', '5', ' 11', ' null', ''),
('Yan', 'yanaraujo1031@gmail.com', '11977376417', '2021-05-19', '16:06', '6', ' null', ' 16', ''),
('aaa', 'joao@3daap.com', '11977376417', '2021-05-19', '11:00', '6', '0null', '0null', 'llllll'),
('aaa', 'joao@3daap.com', '11977376417', '2021-05-19', '11:00', '6', ' null', ' null', 'llllll'),
('aaa', 'joao@3daap.com', '11977376417', '2021-05-26', '11:11', '6', ' null', ' 16', 'llllllllllllllllll'),
('Yan', 'yanaraujo1031@gmail.com', '11977376417', '2021-05-19', '11:08', '5', ' null', ' null', ''),
('lsl', 'joao@3daap.com', '1199668855', '2021-05-20', '12:00', '1', ' null', ' null', ''),
('lsl', 'joao@3daap.com', '1199668855', '2021-05-20', '12:00', '1', ' null', ' null', ''),
('dddd', 'yanaraujo1031@gmail.com', '1199668855', '2021-05-20', '18:25', '2', ' null', ' null', ''),
('Antonio', 'antoy.12@gmail.com', '11977376417', '2021-05-26', '11:29', '6', ' null', ' 16', ''),
('yan', 'uan@gamsko.cp', '87446464684', '2021-10-13', '13:21', '3', ' null', ' null', ''),
('yan', 'uan@gamsko.cp', '87446464684', '2021-10-14', '16:29', '2', ' null', ' null', ''),
('yan', 'uan@gamsko.cp', '8448979', '2021-10-15', '18:30', '1', ' null', ' null', ''),
('yan', 'uan@gamsko.cp', '8448979', '2021-10-15', '18:30', '1', ' null', ' null', ''),
('yasbhash', 'kasja@teste.com', '15161651651', '2021-10-14', '15:20', '1', ' null', ' null', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
