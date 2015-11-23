-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 23-Nov-2015 às 18:11
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `anais`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anais`
--

CREATE TABLE IF NOT EXISTS `anais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) CHARACTER SET utf8 NOT NULL,
  `titulo_trabalho` varchar(600) COLLATE utf8_general_mysql500_ci NOT NULL,
  `diretorio_arquivo` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `area` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci AUTO_INCREMENT=83 ;

--
-- Extraindo dados da tabela `anais`
--

INSERT INTO `anais` (`id`, `nome`, `titulo_trabalho`, `diretorio_arquivo`, `area`) VALUES
(1, 'Gustavo Souza', 'UM NOVO LÓCUS ESPAÇOTEMPORAL: CONSIDERAÇÕES SOBRE A DINÂMICA ESPACIAL E TEMPORAL DO CIBERESPAÇO', 'GustavoSouza', '1'),
(2, 'Marina De Fátima Brandão Carneiro', 'DESIGUALDADE SOCIAL E POBREZA: O CASO DA MICRORREGIÃO DE BOCAIÚVA, MG', 'MarinaDeFátimaBrandão', '1'),
(3, 'Raquel Quintino Maciel Martins Iara Maria Soares Costa Da Silveira', 'TERRITÓRIO DA SAÚDE DO BAIRRO JARDIM BRASIL - MONTES CLAROS - MG.', '\r\nRaquelQuintino\r\n', '1'),
(4, 'Olga Cardoso Da Silva Marcelo Ramos Ferreira Mariângela Rodrigues Lima', 'BREVES CONSIDERAÇÕES SOBRE O ESPAÇO E SUAS DIVERSAS ABORDAGENS', '\r\nOlgaCardosoDaSilva\r\n', '1'),
(5, 'Dayane Stephanie Maia Costa Rahyan De Carvalho Alves', 'PATRIMÔNIO, CULTURA & TURISMO: REFLEXÕES SOBRE O PATRIMÔNIO HISTÓRICO DA CIDADE DE SÃO FRANCISCO NO NORTE DE MINAS GERAIS', 'DayaneStephanie', '1'),
(6, 'Angélica Rocha\r\n', 'GEOTECNOLOGIAS APLICADAS AO ESTUDO DOS TERRITÓRIOS DOS CRAS NO MUNICÍPIO DE MONTES CLAROS – MG', 'AngélicaRocha\r\n', '1'),
(7, 'Éder de Souza Beirão Renan Zorzy dos Santos Cardoso Roberto César Faria e Silva Kelly Jaciara Fernandes da Silva Nunes', 'ESCOLARIDADE X GÊNERO: ESTUDO DO PERFIL DA POPULAÇÃO ECONOMICAMENTE ATIVA DOS MUNICÍPIOS DA MICRORREGIÃO DO NORTE DE MINAS GERAIS', 'ÉderdeSouzaBeirão', '1'),
(8, 'Juliana De Jesus Alves Silva Santos; Andréa Maria Narciso Rocha De Paula', 'SUJEITO AGENTE-PESSOA SERTÃO: CULTURA POPULAR E PATRIMÔNIO CULTURAL NO ALTO MÉDIO SÃO FRANCISCO', 'JulianaDeJesus', '1'),
(17, 'Vanessa Teles De Oliveira Greiciele Soares Da Silva', 'O GERENCIAMENTO DOS RECURSOS HÍDRICOS NO BRASIL', 'VanessaTeles', '2'),
(18, 'Denivilson Fiúza Da Silva Antônio Carlos Dos Santos Camargo Amanda Soares Santos Antônio Das Graças José Dos Santos Júnior', '\r\nVOÇOROCAMENTO: ESTUDO EXPLORATÓRIO NO PERÍMETRO URBANO DE MIRABELA/MG\r\n', 'Denivilsonfiuza', '2'),
(19, 'Adinei Almeida Crisóstomo Mônica Oliveira Alves Rômulo Soares Barbosa', 'O USO E A OCUPAÇÃO DO SOLO NA BACIA DO RIO RIACHÃO COMO PROCESSO DE CONFLITOS AMBIENTAIS', 'AdineiAlmeida', '2'),
(20, 'Amanda Maria Soares Silva', 'DIAGNÓSTICO DA PERCEPÇÃO AMBIENTAL DOS MORADORES SOBRE A DISPOSIÇÃO INADEQUADO DO LIXO DOMÉSTICO NO DISTRITO DE RIACHO CRUZ- JANUÁRIA-MG', '\r\nAmandaMariaSoares\r\n', '2'),
(21, 'Vanessa Tamires Ramos Souza Nayara Ferreira Elias Iara Maria Soares Costa Silveira', 'PROJETO NOVOS TALENTOS/REPLANTIO DE MUDAS: REFLORESTAMENTO NA MATA CILIAR DO RIO SÃO LOURENZO NO MUNICIPIO DE BRASÍLIA DE MINAS – MG', 'VanessaTamiresRamos', '2'),
(22, 'Hérick Lyncon Antunes Rodrigues Rodrigo Veloso Fagundes', 'ÁREA RURAL DE LAGOINHA: LOCAL DE EXPLORAÇÃO E DEGRADAÇÃO AMBIENTAL', 'HerickLyncon', '2'),
(23, 'Aureliane Aparecida Araújo Francielle Gonçalves Silva', 'ANÁLISE DOS PROCESSOS DE EXPANSÃO URBANA E DAS SITUAÇÕES DE VULNERABILIDADE SOCIOAMBIENTAL: EM MONTES CLAROS E DIAMANTINA', '\r\nAurelianeAparecidaAraújo\r\n', '2'),
(24, 'Lucimar Sales Dias Dayane Stephanie Maia Costa', 'IMPACTOS SOCIOAMBIENTAIS PROVOCADOS PELAS OCUPAÇOES IRREGULARES, E A PERCEPÇÃO DA POPULAÇÃO A MARGEM DO RIO GORUTUBA NO MUNICÍPIO DE NOVA PORTEIRINHA – MG', '\r\nLucimarSalesDias\r\n', '2'),
(25, 'João Victor Souto De Oliveira Aline Fernanda Cardoso Sandra Célia Muniz Magalhães', 'AS IMPLICAÇÕES DA INEFICIÊNCIA DO SANEAMENTO BÁSICO NA OCORRÊNCIA DA LEISHMANIOSE TEGUMENTAR EM MONTES CLAROS-MG', 'JoãoVictorSouto', '2'),
(26, 'Aline Fernanda Cardoso João Victor Souto De Oliveira Sandra Celia Muniz Magalhaes', 'ALGUMAS CONSIDERAÇÕES SOBRE O USO E GESTÃO DAS ÁGUAS NO HIDROTERRITÓRIO DO VALE DO GORUTUBA EM JANAÚBA/MG', 'AlineFernanda', '2'),
(27, 'Bruna Thamires Souza Rocha Lucimara Lima Monção Iara Maria Soares Costa Silveira', 'PROMOÇÃO DA SAÚDE NA PREVENÇÃO E COMBATE À DENGUE NO BAIRRO MAJOR PRATES/ MONTES CLAROS/MG: parceria entre o PIBID e comunidade escolar Antônio Canela', 'BrunaThamires', '2'),
(28, 'Nathália Gomes Vieira', 'A GEOMORFOLOGIA CÁRSTICA E O TURISMO NO NORTE DE MINAS GERAIS', 'NatháliaGomes', '2'),
(29, 'Daniel Amaral De Souza                               Ana Carolina Dos Santos Pereira Maria Das Graças Campolina Cunha', 'MARIAS DE BEIRA RIO: UM ESTUDO DE GÊNERO NA COMUNIDADE SÃO BENTO, EM BURITIZEIRO, NORTE DE MINAS GERAIS', 'DanielAmaral', '3'),
(30, 'Ana Carolina', 'O SABER E O “PRA QUÊ”: ENTRE O MÍTICO E OS CONHECIMENTOS MEDICINAIS DE USO DA FLORA CERRADEIRA NA COMUNIDADE RURAL SÃO BENTO, EM BURITIZEIRO, NORTE DE MINAS GERAIS', 'AnaCarolina', '3'),
(31, 'Rodrigo Veloso Fagundes Mariley Gonçalves Borges Ana Ivânia Alves Fonseca', 'BREVE ANALISE ESPACIAL DO PROJETO JAÍBA NO NORTE DE MINAS GERAIS', 'RodrigoVeloso', '3'),
(32, 'Cleta Gonçalves de Oliveira Sena         Ana Ivania Alves Fonseca', 'HISTÓRIA E CARACTERIZAÇÃO DA AGRICULTURA FAMILIAR NO NORTE DE MINAS GERAIS', 'CletaGonçalves', '3'),
(33, 'Laís Pereira Costa Andréa Maria Narciso Rocha De Paula', 'SUJEITO AGENTE: O SER-TÃO QUILOMBOLA EM BURITI DO MEIO- SÃO FRANCISCO-MG', 'LaísPereira', '3'),
(34, 'Renan Zorzy Dos Santos Cardoso Éder De Souza Beirão Roney Versiani Sindeaux Simone Viana Duarte ', 'AVALIAÇÃO DAS CARACTERISTICAS DOS TRABALHADORES NÍVEL OPERACIONAL DO SUBSETOR ADMINISTRAÇÃO PUBLICA EM MONTES CLAROS/MG', 'RenanZorzy', '4'),
(35, 'Regís Lima Da Silva Angela Fagna Gomes De Souza ', 'DESENVOLVIMENTO TERRITORIAL: APONTAMENTOS E PERSPECTIVAS PARA O MUNICÍPIO DE DELMIRO GOUVEIA/AL', 'RegísLimaDaSilva', '4'),
(36, 'Yasmim Assunção De Aquino Lucas Tibo Saraiva Romária Rodrigues Rocha Antônio Dimas Cardoso', 'AS CONTRIBUIÇÕES SOCIOLÓGICAS DE HENRI LEFEBVRE PARA A COMPREENSÃO DA DINÂMICA DOS CONJUNTOS HABITACIONAIS: NOVA SUÍÇA E SANTOS DUMONT', 'YasmimAssunção', '4'),
(37, 'Romária Rodrigues Rocha Lucas Tibo Saraiva Yasmim Assunção De Aquino Antônio Dimas Cardoso', 'DAS ÁREAS DE RISCO AO “NOVA SUÍÇA” E “SANTOS DUMONT”: REASSENTAMENTOS DO MINHA CASA MINHA VIDA EM MONTES CLAROS - MG', 'RomáriaRodrigues', '4'),
(38, 'Mônica Oliveira Alves Sandra Célia Muniz Magalhães', 'PREVENÇÃO DO CÂNCER DE MAMA E PROMOÇÃO DA SAÚDE EM MONTES CLAROS/MG', 'MônicaOliveira', '4'),
(39, 'Thaís Muniz Melo Filipe Gusmão Ribeiro Iara Soares De França Maria Ivete Soares Almeida', 'EXPANSÃO URBANA E O SEGMENTO IMOBILIÁRIO NA CIDADE MÉDIA DE MONTES CLAROS – MG ', 'ThaísMunizMelo', '4'),
(40, 'Benvindo Zuba De Souza Junior', 'O ESPAÇO INTRA-URBANO DE MONTES CLAROS/MG E A QUESTÃO DA MOBILIDADE URBANA EM UMA CIDADE MÉDIA.', 'BenvindoZuba', '4'),
(41, 'Francielle Gonçalves Silva; Sara Cristiny Ramos Meireles Valéria Aparecida Moreira Costa Iara Soares De França Maria Ivete Soares Almeida', 'EXPANSÃO URBANA E NÍVEIS DE RENDA NA CIDADE MÉDIA DE MONTES CLAROS/MG', 'FrancielleGonçalves', '4'),
(42, 'Mariley Gonçalves Borges Hérick Lyncon Antunes Rodrigues Marcos Esdras Leite', 'A IMPORTÂNCIA DAS TÉCNICAS DE GEOPROCESSAMENTO PARA OS ESTUDOS URBANOS: O CASO DAS FORMAS E PROCESSOS NA CIDADE DE MONTES CLAROS / MG', 'MarileyBorges', '4'),
(43, 'Isabella Cristina Cordeiro Da Silva Anete Marília Pereira', 'INFLUÊNCIA DA LOCALIZAÇÃO GEOGRÁFICA DA CIDADE DE MONTES CLAROS/MG EM SEU PAPEL DE CENTRALIDADE DO NORTE DE MINAS', 'IsabellaCristina', '4'),
(45, 'Roméria Soares Barbosa ', 'CONJUNTOS HABITACIONAIS POPULARES E SEGREGAÇÃO RESIDENCIAL: UMA ANÁLISE DO CONJUNTO MONTE SIÃO I /PROGRAMA MINHA CASA MINHA VIDA EM MONTES CLAROS-MG', 'RomériaSoares', '4'),
(46, 'Lucas Tibo Saraiva Yasmim Assunção De Aquino Maria Luiza Sapori Toledo Roquette Antônio Dimas Cardoso ', 'ENTRE VINDAS E IDAS: A SOCIABILIDADE EM TRÂNSITO NO NORTE DE MINAS', 'LucasTiboSaraiva', '4'),
(47, 'Maria Cecília Cordeiro Pires Andréa Maria Narciso Rocha De Paula ', 'SAIR, VIVER E VOLTAR: O PROCESSO MIGRATÓRIO EM PORTEIRINHA-MG', 'MariaCecíliaCordeiro', '5'),
(48, 'Carla Nadinne Souza Andréa Maria Narciso Rocha De Paula', 'ENTRE PARTIDAS E CHEGADAS: OS MODOS E CONDIÇÕES DE VIDA DOS QUE FICAM A ESPERAR PELOS MIGRANTES', 'CarlaNadine', '5'),
(49, 'Maria Cecília Cordeiro Pires Andréa Maria Narciso Rocha De Paula ', 'ESTAR LÁ, SAIR, FICAR E VOLTAR: AS MIGRAÇÕES TEMPORÁRIAS EM PORTERINHA- MG', 'MariaCecília', '5');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
