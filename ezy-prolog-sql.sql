-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 02:29 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezy-prolog`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) DEFAULT NULL,
  `account_id` varchar(50) DEFAULT NULL,
  `station_id` varchar(32) DEFAULT NULL,
  `status` varchar(3) DEFAULT NULL,
  `keyid` varchar(50) DEFAULT NULL,
  `logon_time` datetime DEFAULT NULL,
  `logoff_tim` datetime DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_id`, `station_id`, `status`, `keyid`, `logon_time`, `logoff_tim`, `active`) VALUES
(2, 'admin', 'edmgroup', 'off', '82956 83460 83460', '2001-01-05 14:18:00', '2001-01-05 14:18:00', 'N'),
(4, 'editor', 'edmgroup', 'off', '78690 78158 78926', '1999-05-30 01:22:00', '1999-05-30 01:24:00', 'N'),
(5, 'viewer', 'edmgroup', 'off', '80658 81678 82446', '1998-03-11 10:44:47', '1998-03-13 17:19:00', 'N'),
(12, 'spenkov', 'intellego', 'off', '76866 78728 79496', '2001-07-24 09:54:00', '2003-08-03 14:07:00', 'N'),
(16, 'guest', 'edmgroup', 'off', '88572 81374 82910', '1999-05-11 13:33:00', '1999-05-11 13:33:00', 'N');

-- --------------------------------------------------------

--
-- Stand-in structure for view `a_ezy_sources`
-- (See below for the actual view)
--
CREATE TABLE `a_ezy_sources` (
`id_record` int(11)
,`section_id` int(11)
,`section_group` varchar(255)
,`section_description` varchar(255)
,`section_details` varchar(8192)
,`section_title` varchar(255)
,`program_description` varchar(4096)
,`section_program` varchar(2048)
,`section_help` varchar(2048)
);

-- --------------------------------------------------------

--
-- Table structure for table `cme_error_log`
--

CREATE TABLE `cme_error_log` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) DEFAULT '',
  `error` text DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cme_error_log`
--

INSERT INTO `cme_error_log` (`id`, `tag`, `error`) VALUES
(1, 'recordset::new(table): Error 8805', 'Error (-1) in ODBC [SQLExecDirect]: [[MySQL][ODBC 5.3(a) Driver][mysqld-5.5.5-10.3.15-MariaDB]You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'= 3\' at line 1], Stmt select  section_description, section_details from ezy_sections SECTION_ID = 3'),
(2, '', 'Can\'t obtain cursor. Error (-1) in ODBC [SQLGetCursorName]: [[Microsoft][ODBC Driver Manager] No cursor name available]'),
(3, 'table(\"ezy_sections\")', 'Can\'t create Recordset: table(\"ezy_sections\") and Criteria = SECTION_ID = 3'),
(4, 'executeSQL Error 8805', 'Error (-1) in ODBC [SQLExecDirect]: [[MySQL][ODBC 5.3(a) Driver][mysqld-5.5.5-10.3.15-MariaDB]You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near \'= 3\' at line 1], Stmt select section_description,section_details from `ezy_sections` SECTION_ID = 3');

-- --------------------------------------------------------

--
-- Table structure for table `ezy_learning_center`
--

CREATE TABLE `ezy_learning_center` (
  `id_record` int(11) NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `section_id` int(11) NOT NULL DEFAULT 0,
  `section_title` varchar(255) NOT NULL DEFAULT 'none',
  `program_description` varchar(4096) NOT NULL DEFAULT 'none',
  `section_program` varchar(2048) NOT NULL DEFAULT 'none',
  `section_help` varchar(2048) DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezy_learning_center`
--

INSERT INTO `ezy_learning_center` (`id_record`, `section_name`, `section_id`, `section_title`, `program_description`, `section_program`, `section_help`) VALUES
(1, 'bootstrap_list', 2, 'HTML lists and Grid layout', 'Grid layout and Declarative style List constructio', 'prolog_programs/bootstrap/bootstrap_lists.pro', 'none'),
(2, 'bootstrap_panels', 2, 'Panels', 'Bootstrap Panels in declarative form', 'prolog_programs/bootstrap/bootstrap_panels.pro', 'none'),
(3, 'bootstrap_table', 2, 'HTML table', 'HTML table in declarative form', 'prolog_programs/bootstrap/bootstrap_tables.pro', 'none'),
(4, 'bootstrap_datatables', 2, 'Datatables', 'Datatables in declarative form', 'prolog_programs/bootstrap/bootstrap_datatables.pro', 'none'),
(5, 'bootstrap_forms', 2, 'Forms', 'Form: form elements, submit button, form callback', 'prolog_programs/bootstrap/bootstrap_forms.pro', 'none'),
(6, 'bootstrap_tabs', 2, 'Tabs', 'Bootstrap tabs system', 'prolog_programs/bootstrap/bootstrap_tabs.pro', 'none'),
(7, 'bootstrap_editable', 2, 'Editable text', 'Bootstrap editable field with callback', 'prolog_programs/bootstrap/bootstrap_editable.pro', 'none'),
(8, 'bootstrap_drop_down', 2, 'Drop down list', 'Bootstrap drop down with feedback', 'prolog_programs/bootstrap/bootstrap_dropdown.pro', 'none'),
(9, 'sort_permutations', 7, 'Permutations', '<div>Test permutations test saved</div><div>line 2</div><div>line 3</div><div>line 4<br></div>', 'prolog_programs/sorting/permutations.pro', 'none'),
(10, 'sort_heap', 7, 'Sorting Heap', '<div>Sorting Heap <br></div><div>Line 2</div><div>line 3</div><div>line 4<br></div>', 'prolog_programs/sorting/sorting_heap.pro', 'none'),
(13, 'sorting', 7, 'Sorting Insertion', 'Test Insertion Sorting', 'prolog_programs/sorting/sorting_insertion.pro', 'none'),
(14, 'sorting', 7, 'Sorting Merge', 'Test Merge Sorting', 'prolog_programs/sorting/sorting_merge.pro', 'none'),
(16, 'sorting', 7, 'Sorting Tree', 'Test Tree Sorting', 'prolog_programs/sorting/sorting_tree.pro', 'none'),
(17, 'puzzles', 9, 'Suspect', 'Test Suspect', 'prolog_programs/samples/suspect.pro', 'none'),
(18, 'functional', 4, 'CGI parameters', 'Test for EZY Prolog CGI subsystem', 'prolog_programs/functional/parameters_test.pro', 'none'),
(19, 'functional', 4, 'Date subsystem', 'This is a test for EZY Prolog date subsystem', 'prolog_programs/functional/test_dat.pro', 'none'),
(20, 'functional', 4, 'Facts subsystem', 'Test for EZY Prolog facts handling subsystem', 'prolog_programs/functional/test_db.pro', 'none'),
(21, 'functional', 4, 'File subsystem', 'This is a test for EZY Prolog file subsystem', 'prolog_programs/functional/test_fs.pro', 'none'),
(22, 'functional', 4, 'HTML Document construction', 'Construct HTML document using Prolog Domains', 'prolog_programs/functional/Html_forms_test.pro', 'none'),
(23, 'functional', 4, 'JSON Subsystem', 'Test for EZY Prolog JSON Subsystem', 'prolog_programs/functional/test_json.pro', 'none'),
(24, 'functional', 4, 'Regular Expressions Test', 'This is a test for Pattern Search via Regular Expr', 'prolog_programs/functional/regexpressions_test.pro', 'none'),
(25, 'functional', 4, 'Statistics test', 'Test for statistics (colin.barker.pagesperso-orang', 'prolog_programs/functional/statistics.pro', 'none'),
(26, 'functional', 4, 'String Subsystem', 'This is a test for EZY Prolog string subsystem', 'prolog_programs/functional/test_str.pro', 'none'),
(27, 'functional', 4, 'UNICODE Subsystem', 'Test for EZY Prolog UNICODE Subsystem', 'prolog_programs/functional/unicode_subsystem_test.pro', 'none'),
(28, 'turbo_prolog', 8, 'Turbo Prolog flow patterns', 'Test for incorrect flow patterns.', 'prolog_programs/turbo_prolog/turbo_test_flow.pro', 'none'),
(29, 'turbo_prolog', 8, 'Turbo Prolog types', 'Using clause with incorrect types (STRING instead ', 'prolog_programs/turbo_prolog/turbo_test_types.pro', 'none'),
(30, 'turbo_prolog', 8, 'Turbo Prolog nondeterm', 'Clause is non deterministic but declared as determ', 'prolog_programs/turbo_prolog/turbo_test_nondeterm.pro', 'none'),
(31, 'turbo_prolog', 8, 'Unused and free variables', 'Test for Unused and free variables.', 'prolog_programs/turbo_prolog/turbo_test_unused.pro', 'none'),
(32, 'turbo_prolog', 8, 'Bound and free variables', 'Test for Bound and free variables', 'prolog_programs/turbo_prolog/turbo_test_unused.pro', 'none'),
(33, 'arithmetics', 1, 'Arithmetics', 'how to use Arithmetics', 'prolog_programs/Arithmetics.pro', 'none'),
(34, 'arithmetics', 1, 'Built-in Functions', 'SQRT, EXP, LN, LOG, SIN, COS, TAN, ARCTAN, DIV, MO', 'prolog_programs/arithmetics_functions.pro', 'none'),
(35, 'list', 5, 'P01 (*) Find the last element of a list.', 'my_last(X,[a,b,c,d]).X = d', 'prolog_programs/samples/p01.pro', 'none'),
(36, 'list', 5, 'P02 (*) Find the last but one element of a list..', 'last_but_one(X,[a,b,c,d]). X = c', 'prolog_programs/samples/p02.pro', 'none'),
(37, 'list', 5, 'P03 (*) Find the K\'th element of a list.', 'The first element in the list is number 1. element', 'prolog_programs/samples/p03.pro', 'none'),
(38, 'list', 5, 'P04 (*) Count number of elements in the list.', 'The first element in the list - my_length( [a,b,c,', 'prolog_programs/samples/p04.pro', 'none'),
(39, 'list', 5, 'P05 (*) Reverse a list.', 'The first element in the list - my_reverse( [a,b,c', 'prolog_programs/samples/p05.pro', 'none'),
(40, 'list', 5, 'P06 (*) Find out whether a list is a palindrome..', 'A palindrome can be read forward or backward; e.g.', 'prolog_programs/samples/p06.pro', 'none'),
(41, 'list', 5, 'P07 (**) Flatten a nested list structure.', 'Transform a list, possibly holding lists as elemen', 'prolog_programs/samples/p07.pro', 'none'),
(42, 'list', 5, 'P08 (**) Eliminate consecutive duplicates of list elements..', 'If a list contains repeated elements they should b', 'prolog_programs/samples/p08.pro', 'none'),
(43, 'list', 5, 'P09 (**) Pack consecutive duplicates of list elements into sublists.', 'If a list contains repeated elements they should b', 'prolog_programs/samples/p09.pro', 'none'),
(44, 'list', 5, 'P10 (*) Run-length encoding of a list.', 'Use the result of problem P09 to implement the so-', 'prolog_programs/samples/p10.pro', 'none'),
(45, 'list', 5, 'P11 (*) Modified run-length encoding', 'Modify the result of problem P10 in such a way tha', 'prolog_programs/samples/p11.pro', 'none'),
(46, 'list', 5, 'P12 (**) Decode a run-length encoded list', 'Given a run-length code list generated as specifie', 'prolog_programs/samples/p12.pro', 'none'),
(47, 'list', 5, 'P13 (**) Run-length encoding of a list (direct solution)', 'Implement the so-called run-length encoding data c', 'prolog_programs/samples/p13.pro', 'none'),
(48, 'list', 5, 'P14 (*) Duplicate the elements of a list', 'dupli([a,b,c,c,d],X). X = [a,a,b,b,c,c,c,c,d,d]', 'prolog_programs/samples/p14.pro', 'none'),
(49, 'list', 5, 'P15 (**) Duplicate the elements of a list a given number of times.', 'dupli([a,b,c],3,X). X = [a,a,a,b,b,b,c,c,c] What a', 'prolog_programs/samples/p15.pro', 'none'),
(50, 'list', 5, 'P16 (**) Drop every N\'th element from a list.', 'drop([a,b,c,d,e,f,g,h,i,k],3,X). X = [a,b,d,e,g,h,', 'prolog_programs/samples/p16.pro', 'none'),
(51, 'list', 5, 'P17 (*) Split a list into two parts; the length of the first part is given.', 'Do not use any predefined predicates. split([a,b,c', 'prolog_programs/samples/p17.pro', 'none'),
(52, 'list', 5, 'P18 (**) Extract a slice from a list.', 'Given two indices, I and K, the slice is the list ', 'prolog_programs/samples/p18.pro', 'none'),
(53, 'list', 5, 'P19 (**) Rotate a list N places to the left.', 'Hint: Use the predefined predicates length/2 and a', 'prolog_programs/samples/p19.pro', 'none'),
(54, 'list', 5, 'P20 (*) Remove the K\'th element from a list.', 'remove_at(X,[a,b,c,d],2,R). X = b, R = [a,c,d]', 'prolog_programs/samples/p20.pro', 'none'),
(55, 'database', 3, 'Database table list.', 'get list of tables for ODBC source', 'prolog_programs/databases/database_tables.pro', 'none'),
(56, 'database', 3, ' 	SQL datatables', 'SQL data into datatable directly via cusom predicate', 'prolog_programs/databases/database_sqltable_custom.pro', 'none'),
(57, 'database', 3, ' 	SQL datatable', ' 	SQL data into datatable via BUILT-in call', 'prolog_programs/databases/database_sqltable.pro', 'none'),
(58, 'database', 3, 'SQL datatable CALLBACK', 'SQL data into datatable via built-in call and ROW callback', 'prolog_programs/databases/database_sqltable_callback.pro', 'none'),
(59, 'puzzles', 9, 'Crypta - Adams', 'ADAMS+GRANT=TRUMAN ', 'prolog_programs/puzzles/crypta_01.pro', 'none'),
(60, 'puzzles', 9, 'Crypta - Money', 'SEND+MORE=MONEY ', 'prolog_programs/puzzles/money.pro', 'none'),
(61, 'puzzles', 9, 'Family', 'Who is the sister ', 'prolog_programs/puzzles/who_is_the_sister.pro', 'none'),
(62, 'puzzles', 9, 'Farmer, Wolf, Goat and Cabbage', 'Find solution - How to move safely using boat with one seat ', 'prolog_programs/puzzles/fwgc.pro', 'none'),
(63, 'puzzles', 9, 'Houses', 'Enstain puzzle (5 houses, where does ZEBRA live) ', 'prolog_programs/puzzles/houses.pro', 'none'),
(64, 'puzzles', 9, 'Library', 'Books in library', 'prolog_programs/puzzles/library.pro', 'none'),
(65, 'puzzles', 9, 'No Border', 'Find countries which do not have border between them in Europe', 'prolog_programs/puzzles/no_border.pro', 'none'),
(66, 'puzzles', 9, 'Ownership', 'Who owns what', 'prolog_programs/puzzles/Ownership.pro', 'none'),
(67, 'puzzles', 9, 'Relatives in family', 'Who is the sister and who is the brother ', 'prolog_programs/puzzles/who_is_the_relative.pro', 'none'),
(68, 'about', 10, 'About EZY PROLOG - born to be EASY...', '<div class=\'container-fluid\'>\r\n<div class=\'row\'>EZY Prolog is the  simple prolog to learn due to full compatibility with Turbo Prolog and built-in learning center.</div>\r\n<div class=\'row\'>EZY Prolog learning center provides quick access to predicate declaration and samples, including puzzles demonstrating AI programming using EZY Prolog.</div>\r\n<div class=\'row\'>EZY Prolog is prolog interpeter written completely in Visual Prolog (5.2).</div>\r\n<div class=\'row\'>Original source was ported from Tubro Prolop PIE project (Prolog inference engine) into Windows environment.</div>\r\n<div class=\'row\'>This site runs CGI version of EZY Prolog on Apache Web server.</div>\r\n<div class=\'row\'>Source codes of EZY Prolog is available on \r\n<a style=\"cursor:pointer\" title=\"EZY PROLOG on GITHUB\" \r\nhref=\'https://github.com/spenkov/ezy-prolog\'\r\nclass=\"btn btn-primary btn-outline btn-xs\" data-original-title=\"EZY PROLOG on GITHUB\" \r\ndata-placement=\"bottom\" data-toggle=\"tooltip\" data-trigger=\"hover\" data-play=\"pulse\" data-animate=\"\">\r\n<img class=\"media-box-object img-circle thumb16\" src=\"/Changemate/Components/Img/change-mate-logo-new.png\" height=\"16px\" width=\"16px\">\r\nEZY PROLOG on GITHUB\r\n</a>\r\n</div>\r\n<div class=\'row\'>You need Visual Prolog 5.2 to compile executable Prolog is good for educational and research purposes.</div>\r\n</div>\r\n', 'about_1', 'none'),
(69, 'about', 10, 'Turbo prolog compatibility', '<div>EZY Prolog is an interpreter and supports Tubro Prolog syntax.</div><div><br></div>As an interpreter EZY Prolog is not typed programming language.<br><div><br></div><div>System includes Visual Prolog compiler to verify code syntax and logic according to Visual Prolog rules and detect logical errors before programm execution.</div><div><br></div><div>Visual Prolog compiler checks type of domains and predicates, flow patters, unused variables (same as Turbo Prolog, Visual Prolog)</div><div><br></div><div>Built-in compiler reduces the time programmers need to make working programm.</div><div><br></div><div>EZY Prologs combines power of domains and predicates types with the flexibility of interpreter.</div><div><br></div><div>System can modify programm at runtime by reconsulting clauses or loading clauses from external file <br></div>', 'about_2', 'none'),
(70, 'about', 10, 'Functional extensions', '<ul><lh></lh><li>Regular expressions</li><li>Dates subsystem</li><li>CGI parameters</li><li>Facts subsystem: assert, save</li><li>File system extensions (disabled for this WEB)</li><li>HTML Document construction</li><li>JSON Subsystem</li><li>String Subsystem</li><li>UNICODE Subsystem</li></ul>', 'about_3', 'none'),
(71, 'about', 10, 'Ezy Prolog licensing -  Copyright (c) 1997-2021 by Sergei Penkov', '<h5>\r\nPermission is hereby granted, free of charge, to any person obtaining a copy\r\nof this software and associated documentation files (the \"Software\"), to deal\r\nin the Software without restriction, including without limitation the rights\r\nto use, copy, modify, merge, publish, distribute, sublicense, and/or sell\r\ncopies of the Software, and to permit persons to whom the Software is\r\nfurnished to do so, subject to the following conditions:\r\n</h5>\r\n<h5>\r\nThe above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\r\n</h5>\r\n<h5>\r\nExcept as contained in this notice, the name(s) of the above copyright holders shall not be used in advertising or otherwise to promote the sale, use or other dealings in this Software without prior written authorization.\r\n</h5>\r\n<h5>\r\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\r\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\r\nFITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\r\nAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\r\nLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\r\nOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\r\nSOFTWARE.\r\n</h5>\r\n\r\n\r\n\r\n', 'about_4', 'none'),
(72, 'Faq', 11, '1. Program structure', '<div>How to write \'Hello world\'</div>\r\n<div>line 1</div>\r\n<div>line 2</div>\r\n<div>line 3</div>', 'Faq text1', 'none'),
(73, 'Faq', 11, '2. Using built in HELP system', '<div>Help system description</div>\r\n<ul>\r\n<li>Syntax coloring</li>\r\n<li>Link to built-in predicate</li>\r\n<li>Link to domain declaration</li>\r\n<li>Search for predicate templates</li>\r\n</ul>', 'Faq text2', 'none'),
(74, 'Faq', 11, '3. WEB programming using bootstrap', 'Faq3 description', 'Faq text3', 'none'),
(75, 'Faq', 11, '4. Using Visual Prolog compiler', 'Faq4 description', 'Faq text4', 'none'),
(76, 'Faq', 11, '5. Interactive forms (callback)', 'Faq5 description', 'Faq text5', 'none'),
(77, 'Faq', 11, '6. Databases', 'Faq6 description', 'Faq text6', 'none'),
(78, 'Faq', 11, '7. How to install on your computer', 'Faq7 description', 'Faq text7', 'none'),
(79, 'Faq', 11, '8. Working with mixed lists', 'Faq8 description', 'Faq text8', 'none'),
(80, 'Faq', 11, '9. Turbo Prolog compatibility', 'Faq9 description', 'Faq text9', 'none'),
(81, 'Faq', 11, '10. EZY Prolog source codes', 'EZY PROLOG is an open source project', 'see https://github.com/spenkov/ezy_prolog', 'none'),
(82, 'bootstrap', 2, 'Collapsable text<br>', 'Collapsable text panel<br>', 'prolog_programs/bootstrap/bootstrap_collapsable.pro', 'none'),
(83, 'Website', 12, 'Site main program', 'EZY Prolog program which runs WEB site', 'prolog_programs/main/ezy_prolog_main.pro ', 'Help'),
(84, 'Website', 12, 'Search for double letters', 'В файле задан текст, в котором встречаются слова с повторяющимися буквами (как в словах програММа, коММуна). Надо сформировать список из таких слов. Результаты записать в файл.', 'prolog_programs/main/ezy_prolog_main.pro', 'Sample1');

-- --------------------------------------------------------

--
-- Table structure for table `ezy_sections`
--

CREATE TABLE `ezy_sections` (
  `section_id` int(11) NOT NULL,
  `section_group` varchar(255) DEFAULT NULL,
  `section_description` varchar(255) DEFAULT NULL,
  `section_details` varchar(8192) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ezy_sections`
--

INSERT INTO `ezy_sections` (`section_id`, `section_group`, `section_description`, `section_details`) VALUES
(1, 'Arithmetics', 'arithmetic and math functions', 'text about arithmetics in EZY PROLOG<br>'),
(2, 'Bootstrap', 'bootstrap support - panels, tables, tabs, lists', '<div class=\'container-fluid\'>\r\n	<div class=\'row\'>\r\n		<b>BOOTSTRAP</b> gives flexibility to render Web pages in the browsers.\r\n	</div>\r\n	<div class=\'row\'>\r\n		<div class=\'col-xs-6\'>\r\n		EZY Prolog has built-in support for <b>BOOTSTRAP</b> elements\r\n		</div>\r\n		<div class=\'col-xs-6\'>\r\n			<ul>\r\n				<li>Panels</li>\r\n				<li>Datatables</li>\r\n				<li>Dropdown list with feedback</li>\r\n				<li>Editable text fields</li>\r\n				<li>Forms</li>\r\n				<li>HTML Lists</li>\r\n				<li>GRID layout</li>\r\n				<li>Tabs</li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n	<div class=\'row\'>\r\n		As an example - EZY PROLOG runs this web site (see section Website for details)\r\n	</div>\r\n</div>\r\n\r\n'),
(3, 'Database', 'database query and tables', '<div class=\'container-fluid\'>\r\n	<div class=\'row\'>\r\n		EZY PROLOG uses <b>ODBC connectivity</b> to access SQL databases.\r\n	</div>\r\n	<div class=\'row\'>\r\n		This site uses My SQL database to store site section details.\r\n	</div>\r\n	<div class=\'row\'>\r\n		See section <b>Website</b> for more information how to use databases.\r\n	</div>\r\n</div>\r\n\r\n'),
(4, 'Functional', 'functional samples', '<div class=\'container-fluid\'>\r\n	<div class=\'row\'>\r\n		<b>Functional componets</b> support various information technologies.\r\n	</div>\r\n	<div class=\'row\'>\r\n		<div class=\'col-xs-6\'>\r\n		EZY PROLOG <b>functional componets</b>\r\n		</div>\r\n		<div class=\'col-xs-6\'>\r\n			<ul>\r\n				<li>CGI - read CGI parameters and pass them to EZY PROLOG program</li>\r\n				<li>Dates - convert dates INTEGER - STRING</li>\r\n				<li>Facts - assert, retract facts</li>\r\n				<li>Files - read and write into files</li>\r\n				<li>HTML - construct HTML pages using Prolog domains</li>\r\n				<li>JSON - read and write JSON strings</li>\r\n				<li>Regular expressions - pattern search in texts</li>\r\n				<li>Statistics calculations</li>\r\n				<li>String subsystem - term_str implemetation (convert domains into strings)</li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n'),
(5, 'List', 'list working with lists', '<div class=\'container-fluid\'>\r\n	<div class=\'row\'>\r\n		<b>Lists</b> processing examples.\r\n	</div>\r\n	<div class=\'row\'>\r\n		Simply try each example - most of the classical examples how to deal with the lists.\r\n	</div>\r\n</div>\r\n\r\n	<div class=\'row\'>\r\n		Examples of acceptable use of the lists\r\n	</div>\r\n	<div class=\'row\'>\r\n		<ul>\r\n			<li>LIST = [1,2,3,4] - consists of same type of variables. Compatible with Turbo Prolog</li>\r\n			<li>LIST = [1,\"January\",3,\"February\"] - consists of different types of variables. Acceptable in EZY PROLOG but incompatible with Turbo Prolog</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\'row\'>\r\n		Both types of lists are acceptable in EZY PROLOG because of it\'s interpreter nature. The use of Visual Prolog compiler helps at programm design stage even in cases of mixed variables use in lists and objects.\r\n	</div>\r\n\r\n'),
(7, 'Sorting', 'sorting samples using EZY PROLOG', '<div class=\'container-fluid\'>\r\n	<div class=\'row\'>\r\n		Built in <b>SORTING</b> of the elements saves time and memory at execution time.\r\n	</div>\r\n	<div class=\'row\'>\r\n		Simply try each example - the classical examples for logical programming.\r\n	</div>\r\n</div>\r\n\r\n'),
(8, 'Turbo', 'Turbo Prolog compatibility', '<div class=\'container-fluid\'>\r\n	<div class=\'row\'>\r\n		EZY PROLOG is an interpreter and fully compatible with <b>TURBO PROLOG</b>.\r\n	</div>\r\n	<div class=\'row\'>\r\n		EZY PROLOG uses Visual Prolog compiler to check and verify:\r\n	</div>\r\n	<div class=\'row\'>\r\n		<ul>\r\n			<li>syntax errors</li>\r\n			<li>types of variables and predicates</li>\r\n			<li>use of flow patterns in predicates</li>\r\n			<li>unused variables and predicates</li>\r\n			<li>free and bound variables</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\'row\'>\r\n		As prolog interpreter EZY PROLOG can use variables and lists of any types. In this case Visual Prolog compiler (which supports typed paradigm) will generate an error.\r\n	</div>\r\n	<div class=\'row\'>\r\n		Examples of acceptable use of the lists\r\n	</div>\r\n	<div class=\'row\'>\r\n		<ul>\r\n			<li>LIST = [1,2,3,4] - consists of same type of variables. Compatible with Turbo Prolog</li>\r\n			<li>LIST = [1,\"January\",3,\"February\"] - consists of different types of variables. Acceptable in EZY PROLOG but incompatible with Turbo Prolog</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\'row\'>\r\n		Both types of lists are acceptable in EZY PROLOG because of it\'s interpreter nature. The use of Visual Prolog compiler helps at programm design stage even in cases of mixed variables use in lists and objects.\r\n	</div>\r\n</div>\r\n\r\n'),
(9, 'Puzzles', 'Logical puzzles', '<div class=\'container-fluid\'>\r\n	<div class=\'row\'>\r\n		<b>PUZZLES</b> section demonstrates how EZY PROLOG can be used to solve logical PUZZLES\r\n	</div>\r\n	<div class=\'row\'>\r\n		Simply try each example - the classical examples for logical programming.\r\n	</div>\r\n</div>\r\n\r\n'),
(10, 'About', 'about EZY PROLOG', 'none'),
(11, 'Faq', 'Faq about EZY Prolog<br>', '<div class=\'container-fluid\'>\r\n	<div class=\'row\'>\r\n		<ul>EZY PROLOG facts:\r\n		<li>is written in Visual Prolog 5.2. To build your own version of EZY PROLOG you need Visual Prolog 5.2.</li>\r\n		<li>is available in sources. You can build your own version of the interpreter.</li>\r\n		<li>is fully compatible with Turbo Prolog syntax.</li>\r\n		<li>uses Visual Prolog compiler to check prolog programm for syntax and other errors.</li>\r\n		<li>is different from Turbo Prolog. As interpreter it can use mixed lists and can modify program at run stage.</li>\r\n		<li>has built-in functionality to work with databases, file system, convert dates, BOOTSTRAP support and many others.</li>\r\n	</div>\r\n\r\n	<div class=\'row\' style=\'margin-top:10px\'>\r\n		Source formatter converts PROLOG text into HTML code with tags.<br>You can use this functionality for documenting your code and publishing on web site.\r\n	</div>\r\n	<div class=\'row\'>\r\n		<div class=\'col-xs-6\'>\r\n			Click to view formatted text of main programm.\r\n		</div>\r\n		<div class=\'col-xs-6\'>\r\n			<a href=\"javascript:ezy_run_selected(\'id_view_text\',\'83\',\'id-Editor_Website\',\'view_formatted&amp;group=Website&amp;group=Website&amp;ID_RECORD=83&amp;ID_TAB=id-Editor_Website&amp;PROGRAM=prolog_programs/main/ezy_prolog_main.pro\')\" data-toggle=\"tooltip\" data-placement=\"right\" data-original-title=\"View  prolog_programs/main/ezy_prolog_main.pro\" \r\n			 title=\"EZY PROLOG web site main programm\"\r\n			 class=\"btn btn-primary btn-sm\"\r\n			 data-target=\"#id_editor_Website\">\r\n				<em class=\"fa fa-eye zoom\"></em>\r\n			</a>\r\n		</div>\r\n\r\n	</div>\r\n	<div class=\'row\'>\r\n		<div id=\'id_view_text\' class=\'col-xs-10 col-xs-offset-1\' style=\'height:350px;overflow-y:auto\'></div>\r\n	</div>	\r\n</div>\r\n'),
(12, 'Website', 'EZY PROLOG program which runs website', '<div class=\'container-fluid\'>\r\n	<div class=\'row\'>\r\n		This is EZY PROLOG programm which runs EZY PROLOG Web site.\r\n	</div>\r\n	<div class=\'row\'>\r\n		<div class=\'col-xs-6\'>	\r\n		SQL Database has tables:\r\n		</div>\r\n	</div>\r\n	<div class=\'row\'>\r\n		<div class=\'col-xs-6\'>\r\n			<ul>\r\n				<li>ezy_sections - sections descriptions</li>\r\n				<li>ezy_learning_center - programm for each section</li>\r\n			</ul>\r\n		</div>\r\n	</div>\r\n	<div class=\'row\'>\r\n		Programm reads list of sections and creates <b>BOOTSTRAP</b> tabs, tables, href from data in database.\r\n	</div>\r\n	<div class=\'row\'>\r\n		Callback realised via HREF to call java script function <b>ezy_run_selected</b>, which reads CGI parameters and passes them to EZY PROLOG.\r\n	</div>\r\n	<div class=\'row\'>\r\n		EZY PROLOG reads source code of the programm, runds and returns output to the specified target.\r\n	</div>\r\n	<div class=\'row\'>\r\n		See <b>create_href</b> for details how to create callback element\r\n	</div>\r\n	<div class=\'row\'>\r\n		Use built-in call <b>bs_panel</b> to create <span class=\'text text-primary\'>bootstrap panels</span>\r\n	</div>\r\n	<div class=\'row\'>\r\n		Use built-in call <b>bs_sql_table</b> to read data from <span class=\'text text-primary\'>ODBC Database</span>\r\n	</div>\r\n	<div class=\'row\'>\r\n		EZY PROLOG has source code formatter which can be used for source code publications.\r\n	</div>\r\n	<div class=\'row\'>\r\n		Source formatter converts PROLOG text into HTML code with tags.\r\n	</div>\r\n	<div class=\'row\'>\r\n		<div class=\'col-xs-6\'>\r\n			Click to view formatted text of main programm.\r\n		</div>\r\n		<div class=\'col-xs-6\'>\r\n			<a href=\"javascript:ezy_run_selected(\'id_view_text\',\'83\',\'id-Editor_Website\',\'view_formatted&amp;group=Website&amp;group=Website&amp;ID_RECORD=83&amp;ID_TAB=id-Editor_Website&amp;PROGRAM=prolog_programs/main/ezy_prolog_main.pro\')\" data-toggle=\"tooltip\" data-placement=\"right\" data-original-title=\"View  prolog_programs/main/ezy_prolog_main.pro\" \r\n			 title=\"EZY PROLOG web site main programm\"\r\n			 class=\"btn btn-default btn-sm\"\r\n			 data-target=\"#id_editor_Website\">\r\n				<em class=\"fa fa-eye text-primary zoom\"></em>\r\n			</a>\r\n		</div>\r\n\r\n	</div>\r\n	<div class=\'row\'>\r\n		<div id=\'id_view_text\' class=\'col-xs-10 col-xs-offset-1\' style=\'height:400px;overflow-y:auto\'></div>\r\n	</div>	\r\n</div>\r\n');

-- --------------------------------------------------------

--
-- Structure for view `a_ezy_sources`
--
DROP TABLE IF EXISTS `a_ezy_sources`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `a_ezy_sources`  AS  select `ezy_learning_center`.`id_record` AS `id_record`,`ezy_learning_center`.`section_id` AS `section_id`,`ezy_sections`.`section_group` AS `section_group`,`ezy_sections`.`section_description` AS `section_description`,`ezy_sections`.`section_details` AS `section_details`,`ezy_learning_center`.`section_title` AS `section_title`,`ezy_learning_center`.`program_description` AS `program_description`,`ezy_learning_center`.`section_program` AS `section_program`,`ezy_learning_center`.`section_help` AS `section_help` from (`ezy_learning_center` join `ezy_sections` on(`ezy_sections`.`section_id` = `ezy_learning_center`.`section_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cme_error_log`
--
ALTER TABLE `cme_error_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ezy_learning_center`
--
ALTER TABLE `ezy_learning_center`
  ADD PRIMARY KEY (`id_record`);

--
-- Indexes for table `ezy_sections`
--
ALTER TABLE `ezy_sections`
  ADD PRIMARY KEY (`section_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cme_error_log`
--
ALTER TABLE `cme_error_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ezy_learning_center`
--
ALTER TABLE `ezy_learning_center`
  MODIFY `id_record` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `ezy_sections`
--
ALTER TABLE `ezy_sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
