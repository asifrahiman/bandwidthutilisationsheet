-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2018 at 08:59 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bandwidth`
--

-- --------------------------------------------------------

--
-- Table structure for table `bandwidth`
--
CREATE DATABASE `bandwidth`;
CREATE TABLE `bandwidth` (
  `id` int(11) NOT NULL,
  `user` varchar(50) COLLATE utf8_bin NOT NULL,
  `prodarea` varchar(10) COLLATE utf8_bin NOT NULL,
  `task` varchar(70) COLLATE utf8_bin NOT NULL,
  `subtask` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `rel` varchar(5) COLLATE utf8_bin NOT NULL,
  `time` decimal(10,2) NOT NULL,
  `date` varchar(20) COLLATE utf8_bin NOT NULL,
  `ticket` varchar(20) COLLATE utf8_bin NOT NULL,
  `comment` varchar(100) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `bandwidth`
--

INSERT INTO `bandwidth` (`id`, `user`, `prodarea`, `task`, `subtask`, `rel`, `time`, `date`, `ticket`, `comment`, `status`) VALUES
(1, 'Priya', 'RMS', 'Requirment Understanding/Test Case Creation', '', '7.10', '3.00', '2018-07-30', 'GI-5482', 'undefined', 0),
(2, 'Bandana', 'RMS', 'Requirment Understanding/Test Case Creation', '', '7.10', '3.00', '2018-07-31', 'GI-5014', 'undefined', 0),
(4, 'Rajnish', 'MALL', 'Revamp', '', '7.10', '4.00', '2018-07-31', 'undefined', 'Payment page', 0),
(5, 'Oshin', 'MALL', 'Requirment Understanding/Test Case Creation', '', '7.10', '2.00', '2018-07-30', 'GI-4788', '', 0),
(7, 'Oshin', 'MALL', 'KT/Training Sessions', '', '7.10', '1.00', '2018-07-31', 'undefined', 'undefined', 0),
(9, 'Oshin', 'MALL', 'Requirment Understanding/Test Case Creation', '', '7.10', '3.00', '2018-07-31', 'GI-4788', '', 0),
(11, 'Oshin', 'MALL', 'Communication', '', '7.10', '1.00', '2018-07-30', 'GI-4788', '', 0),
(13, 'Priya', 'RMS', 'Requirment Understanding/Test Case Creation', '', '7.10', '1.00', '2018-07-31', 'GI-4004', 'undefined', 0),
(14, 'Priya', 'RMS', 'Test case Review', '', '7.10', '0.50', '2018-07-31', 'GI-5715', '', 0),
(15, 'Priya', 'RMS', 'Parallel Tasks', '', '7.10', '1.00', '2018-07-31', '', 'Dockerize testing on Release Test', 0),
(19, 'Rajnish', 'MALL', 'Meetings ', '', '7.10', '2.00', '2018-07-31', '', 'Cross KT ,Dry Run Review', 0),
(21, 'Asif', 'RMS', 'Requirment Understanding/Test Case Creation', '', '7.10', '1.00', '2018-07-27', 'GI-5715', '', 0),
(22, 'Asif', 'RMS', 'KT/Training Sessions', '', '7.10', '1.00', '2018-07-27', '', 'Automation KT', 0),
(23, 'Asif', 'RMS', 'Others', '', '7.10', '4.00', '2018-07-27', '', 'self study', 0),
(24, 'Asif', 'RMS', 'Regression Testing', '', '7.10', '2.00', '2018-07-30', '', 'Tcat Regression', 0),
(26, 'Asif', 'RMS', 'Requirment Understanding/Test Case Creation', '', '7.10', '2.00', '2018-07-30', 'GI-5715', '', 0),
(27, 'Asif', 'RMS', 'Others', '', '7.10', '3.00', '2018-07-30', '', 'Self study', 0),
(28, 'Asif', 'RMS', 'Parallel Tasks', '', '7.10', '2.00', '2018-07-31', 'GI-5860', 'Dockerize testing on Release test', 0),
(29, 'Asif', 'RMS', 'RMS Manual Document Testing', '', '7.10', '3.00', '2018-07-31', 'GI-5412', '', 0),
(30, 'Asif', 'RMS', 'Regression Testing', '', '7.10', '2.00', '2018-07-31', '', 'Tcat Regression', 0),
(31, 'Asif', 'RMS', 'Parallel Tasks', '', '7.10', '2.00', '2018-08-01', 'GI-5860', 'Dockerize testing on Release test', 0),
(32, 'Asif', 'RMS', 'Regression Testing', '', '7.10', '4.00', '2018-08-01', '', 'Tcat Regression', 0),
(33, 'Asif', 'RMS', 'KT/Training Sessions', '', '7.10', '1.00', '2018-08-01', '', 'Automation KT', 0),
(34, 'Asif', 'RMS', 'Feature Testing', '', '7.10', '4.00', '2018-08-02', 'GI-5715', '', 0),
(35, 'Asif', 'RMS', 'KT/Training Sessions', '', '7.10', '1.00', '2018-08-02', '', 'Tcat KT', 0),
(36, 'Asif', 'RMS', 'Regression Testing', '', '7.10', '2.00', '2018-08-02', '', 'Tcat Regression', 0),
(37, 'Bandana', 'RMS', 'Requirment Understanding/Test Case Creation', '', '7.10', '3.00', '2018-08-01', 'GI-3790', 'undefined', 0),
(40, 'Bandana', 'RMS', 'Sync Up', '', '7.10', '0.50', '2018-08-01', '', '', 0),
(41, 'Bandana', 'RMS', 'Sync Up', '', '7.10', '0.50', '2018-07-31', '', '', 0),
(42, 'Bandana', 'RMS', 'Revamp', '', '7.10', '2.50', '2018-07-31', '', '', 0),
(44, 'Bandana', 'RMS', 'Production Testing (Release ', '', '7.9', '4.00', '2018-08-01', '', '', 0),
(45, 'Oshin', 'MALL', 'Requirment Understanding/Test Case Creation', '', '7.10', '4.00', '2018-08-01', 'GI-4788', 'undefined', 0),
(46, 'Bandana', 'RMS', 'Revamp', '', '7.9', '2.50', '2018-07-27', '', '', 0),
(47, 'Oshin', 'MALL', 'Meetings ', '', '7.10', '1.00', '2018-08-01', '', 'External Audit Checkpints', 0),
(48, 'Oshin', 'MALL', 'KT/Training Sessions', '', '7.10', '1.00', '2018-08-01', '', '', 0),
(49, 'Oshin', 'MALL', 'Regression Testing', '', '7.10', '1.00', '2018-08-02', '', '', 0),
(50, 'Oshin', 'MALL', 'KT/Training Sessions', '', '7.10', '1.00', '2018-08-02', '', '', 0),
(51, 'Oshin', 'MALL', 'Sync Up', '', '7.10', '0.50', '2018-08-02', '', '', 0),
(52, 'Priya', 'RMS', 'KT/Training Sessions', '', '7.10', '1.00', '2018-08-02', 'undefined', 'undefined', 0),
(53, 'Oshin', 'MALL', 'Production Testing (Release ', '', '7.9', '0.50', '2018-08-02', '', '', 0),
(54, 'Priya', 'RMS', 'Feature Testing', '', '7.10', '1.00', '2018-08-02', 'GI-5482', '', 0),
(55, 'Neha', 'MALL', 'Revamp', '', '7.10', '5.00', '2018-07-27', 'undefined', 'undefined', 0),
(56, 'Neha', 'MALL', 'Others', '', '7.10', '2.50', '2018-07-27', '', 'PRM prep', 0),
(57, 'Neha', 'MALL', 'Sync Up', '', '7.10', '0.50', '2018-07-27', '', '', 0),
(58, 'Neha', 'MALL', 'Communication', '', '7.10', '1.00', '2018-07-30', '', '', 0),
(60, 'Neha', 'MALL', 'Requirment Understanding/Test Case Creation', '', '7.10', '1.00', '2018-07-30', 'GI-5775', '', 0),
(61, 'Neha', 'MALL', 'Revamp', '', '7.10', '5.00', '2018-07-30', '', '', 0),
(62, 'Neha', 'MALL', 'KT/Training Sessions', '', '7.10', '1.50', '2018-07-31', '', 'Cross kt', 0),
(63, 'Neha', 'MALL', 'RDC Test Case Creation', '', '7.10', '2.00', '2018-07-31', '', '', 0),
(64, 'Neha', 'MALL', 'Requirment Understanding/Test Case Creation', '', '7.10', '4.00', '2018-07-31', 'GI-5775', '', 0),
(65, 'Neha', 'MALL', 'Production Testing (Release ', '', '7.9', '2.00', '2018-08-01', '', '', 0),
(66, 'Neha', 'MALL', 'Meetings ', '', '7.10', '1.00', '2018-08-01', '', 'Audit related', 0),
(67, 'Neha', 'MALL', 'Communication', '', '7.10', '1.00', '2018-08-01', '', '', 0),
(68, 'Neha', 'MALL', 'KT/Training Sessions', '', '7.10', '1.50', '2018-08-01', '', 'Checkout', 0),
(69, 'Neha', 'MALL', 'Requirment Understanding/Test Case Creation', '', '7.10', '2.00', '2018-08-01', 'GI-5775', '', 0),
(70, 'Neha', 'MALL', 'Sync Up', '', '7.10', '0.50', '2018-08-02', '', '', 0),
(71, 'Neha', 'MALL', 'Production Testing (Release ', '', '7.9', '0.50', '2018-08-02', '', '', 0),
(72, 'Neha', 'MALL', 'Communication', '', '7.10', '2.00', '2018-08-02', '', '', 0),
(73, 'Neha', 'MALL', 'Revamp', '', '7.10', '2.00', '2018-08-02', '', '', 0),
(74, 'Neha', 'MALL', 'Requirment Understanding/Test Case Creation', '', '7.10', '2.50', '2018-08-02', 'GI-5775', '', 0),
(79, 'Neha', 'MALL', 'Communication', '', '7.10', '1.00', '2018-08-03', 'undefined', 'undefined', 0),
(81, 'Neha', 'MALL', 'KT/Training Sessions', '', '7.10', '1.00', '2018-08-03', '', 'e-invoice', 0),
(82, 'Neha', 'MALL', 'Revamp', '', '7.10', '4.50', '2018-08-03', '', '', 0),
(83, 'Neha', 'MALL', 'Regression Testing', '', '7.10', '1.50', '2018-08-03', '', '', 0),
(84, 'Sajila', 'MALL', 'Scope Acceptance', '', '7.10', '2.00', '2018-07-27', 'undefined', '7.10 Scope Acceptance, Assignment', 0),
(85, 'Sajila', 'MALL', 'Communication', '', '7.10', '3.00', '2018-07-27', '', '', 0),
(86, 'Sajila', 'MALL', 'Meetings ', '', '7.10', '1.00', '2018-07-27', '', '', 0),
(87, 'Sajila', 'MALL', 'On Leave', '', '7.10', '4.00', '2018-07-30', '', '', 0),
(88, 'Sajila', 'MALL', 'Meetings ', '', '7.10', '2.00', '2018-07-30', '', '', 0),
(89, 'Sajila', 'MALL', 'Communication', '', '7.10', '2.00', '2018-07-30', '', '', 0),
(90, 'Sajila', 'MALL', 'Communication', '', '7.10', '2.00', '2018-07-31', '', '', 0),
(91, 'Sajila', 'MALL', 'Meetings ', '', '7.10', '2.00', '2018-07-31', '', '', 0),
(93, 'Sajila', 'MALL', 'Revamp', '', '7.10', '2.00', '2018-07-31', '', '', 0),
(94, 'Sajila', 'MALL', 'CC Audit', '', '7.10', '1.00', '2018-08-01', '', 'External Audit', 0),
(95, 'Sajila', 'MALL', 'QA Matrix Data', '', '7.10', '0.50', '2018-08-03', '', '', 0),
(96, 'Sajila', 'MALL', 'Production Testing (Release ', '', '7.10', '3.00', '2018-08-01', '', 'US Mall Deployment', 0),
(97, 'Sajila', 'MALL', 'Task Allocation', '', '7.10', '0.50', '2018-08-01', '', 'RT Assignment', 0),
(98, 'Sajila', 'MALL', 'Communication', '', '7.10', '2.00', '2018-08-01', '', '', 0),
(99, 'Sajila', 'MALL', 'Meetings ', '', '7.10', '1.00', '2018-08-01', '', 'For External Audit Preparation', 0),
(100, 'Sajila', 'MALL', 'Production Testing (Release ', '', '7.10', '2.00', '2018-08-02', '', 'US Mall deployment', 0),
(101, 'Sajila', 'MALL', 'Task Allocation', '', '7.10', '0.50', '2018-08-02', '', 'Prod Assigment', 0),
(102, 'Sajila', 'MALL', 'Communication', '', '7.10', '2.00', '2018-08-02', '', '', 0),
(103, 'Sajila', 'MALL', 'Meetings ', '', '7.10', '2.00', '2018-08-02', '', '', 0),
(104, 'Asif', 'RMS', 'Regression Testing', '', '7.10', '5.00', '2018-08-03', 'undefined', 'Tcat Regression', 0),
(105, 'Bandana', 'RMS', 'Sync Up', '', '7.10', '0.50', '2018-08-08', 'undefined', 'undefined', 0),
(106, 'Bandana', 'RMS', 'Feature Testing', '', '7.10', '4.00', '2018-08-08', '', '', 0),
(107, 'Bandana', 'RMS', 'Feature Testing', '', '7.10', '4.00', '2018-08-07', '', '', 0),
(108, 'Bandana', 'RMS', 'Meetings ', '', '7.10', '0.50', '2018-08-07', '', '', 0),
(109, 'Bandana', 'RMS', 'Others', '', '7.10', '2.00', '2018-08-06', '', '', 0),
(110, 'Bandana', 'RMS', 'Others', '', '7.10', '2.00', '2018-08-07', '', '', 0),
(111, 'Sajila', 'MALL', 'Meetings ', '', '7.10', '2.00', '2018-08-03', '', '', 0),
(113, 'Sajila', 'MALL', 'Communication', '', '7.10', '3.00', '2018-08-03', '', '', 0),
(114, 'Asif', 'RMS', 'Others', '', '7.10', '2.00', '2018-08-03', '', 'self study', 0),
(115, 'Asif', 'RMS', 'On Leave', '', '7.10', '8.00', '2018-08-06', 'undefined', 'undefined', 0),
(116, 'Asif', 'RMS', 'On Leave', '', '7.10', '8.00', '2018-08-07', '', '', 0),
(117, 'Bhairavi', 'RMS', 'Automation Assignment', '', '7.9', '0.30', '2018-08-01', 'undefined', 'Monitoring and discussion', 0),
(118, 'Bhairavi', 'RMS', 'Task Allocation', '', '7.9', '2.00', '2018-07-04', '', '7.9 assignment, estimation, allocation, updating labels and QA start dates', 0),
(119, 'Bhairavi', 'RMS', 'Requirment Understanding/Test Case Creation', '', '7.9', '2.00', '2018-07-05', 'GI-4952', 'Test case writing', 0),
(120, 'Bhairavi', 'RMS', 'Communication', '', '7.9', '2.50', '2018-07-05', '', 'Internal communications, discussions', 0),
(121, 'Bhairavi', 'RMS', 'Test case Review', '', '7.9', '2.00', '2018-07-09', 'GI-3675, GI-4802, GI', 'Test case review', 0),
(122, 'Bhairavi', 'RMS', 'Revamp', '', '7.9', '2.00', '2018-07-05', '', 'Product CSV revamp', 0),
(123, 'Bhairavi', 'RMS', 'Revamp', '', '7.9', '2.00', '2018-07-06', '', 'Revamp', 0),
(124, 'Bhairavi', 'RMS', 'Test case Review', '', '7.9', '0.30', '2018-07-10', 'GI-367, GI-949', 'Test case review', 0),
(125, 'Bhairavi', 'RMS', 'Requirment Understanding/Test Case Creation', '', '7.9', '2.00', '2018-07-10', 'GI-3666', 'TC writing', 0),
(126, 'Bhairavi', 'RMS', 'Requirment Understanding/Test Case Creation', '', '7.9', '1.00', '2018-07-11', 'GI-3666', 'TC writing', 0),
(127, 'Bhairavi', 'RMS', 'Test case Review', '', '7.9', '1.00', '2018-07-12', 'GI-3513', 'TC review', 0),
(128, 'Bhairavi', 'RMS', 'Requirment Understanding/Test Case Creation', '', '7.9', '2.00', '2018-07-12', 'GI-3287', 'TC writing', 0),
(129, 'Bhairavi', 'RMS', 'QFE Testing (Day 1 ', '', '7.9', '6.00', '2018-07-20', '', 'Dry run day 1', 0),
(130, 'Bhairavi', 'RMS', 'QFE Testing (Day 1 ', '', '7.9', '6.00', '2018-07-23', '', 'Dry run day 2', 0),
(131, 'Bhairavi', 'RMS', 'Production Testing (Release ', '', '7.9', '4.00', '2018-07-25', '', 'RT testing', 0),
(132, 'Bhairavi', 'RMS', 'Production Testing (Release ', '', '7.9', '3.00', '2018-07-26', '', 'Production testing', 0),
(133, 'Bhairavi', 'RMS', 'Others', '', '7.10', '3.00', '2018-08-01', '', 'Analysis of Mall and RMS dependency for TW refund features', 0),
(135, 'Bandana', 'RMS', 'Feature Testing', '', '7.10', '3.00', '2018-08-09', 'undefined', 'undefined', 0),
(136, 'Neha', 'MALL', 'RDC Test Case Creation', '', '7.10', '2.00', '2018-08-06', 'undefined', 'undefined', 0),
(137, 'Neha', 'MALL', 'Regression Testing', '', '7.10', '3.00', '2018-08-06', '', '', 0),
(138, 'Neha', 'MALL', 'Communication', '', '7.10', '2.00', '2018-08-06', '', '', 0),
(139, 'Neha', 'MALL', 'Others', '', '7.10', '1.00', '2018-08-06', '', 'Device issue', 0),
(140, 'Neha', 'MALL', 'RDC Testing', '', '7.10', '4.50', '2018-08-07', '', '', 0),
(141, 'Neha', 'MALL', 'Defect Verifciation', '', '7.10', '2.00', '2018-08-07', '', '', 0),
(142, 'Neha', 'MALL', 'Communication', '', '7.10', '1.00', '2018-08-07', '', '', 0),
(143, 'Neha', 'MALL', 'Regression Testing', '', '7.10', '3.00', '2018-08-08', '', '', 0),
(144, 'Neha', 'MALL', 'Revamp', '', '7.10', '3.50', '2018-08-08', '', '', 0),
(145, 'Neha', 'MALL', 'Sync Up', '', '7.10', '0.50', '2018-08-08', '', '', 0),
(146, 'Neha', 'MALL', 'RDC Test Case Creation', '', '7.10', '2.50', '2018-08-09', '', '', 0),
(147, 'Neha', 'MALL', 'Regression Testing', '', '7.10', '4.00', '2018-08-09', '', '', 0),
(148, 'Neha', 'MALL', 'Meetings ', '', '7.10', '1.00', '2018-08-09', '', '', 0),
(149, 'Neha', 'MALL', 'Regression Testing', '', '7.10', '3.00', '2018-08-10', '', '', 0),
(150, 'Neha', 'MALL', 'RDC Test Case Creation', '', '7.10', '2.50', '2018-08-10', '', '', 0),
(151, 'Neha', 'MALL', 'RDC Testing', '', '7.10', '3.00', '2018-08-10', '', '', 0),
(152, 'Asif', 'RMS', 'KT/Training Sessions', '', '7.10', '1.00', '2018-08-08', 'undefined', 'GS KT', 0),
(153, 'Asif', 'RMS', 'Regression Testing', '', '7.10', '5.00', '2018-08-08', '', 'Tcat Regression', 0),
(154, 'Asif', 'RMS', 'Meetings ', '', '7.10', '1.00', '2018-08-08', '', '', 0),
(155, 'Asif', 'RMS', 'Automation Assignment', '', '7.10', '4.00', '2018-08-09', '', '', 0),
(156, 'Asif', 'RMS', 'Feature Testing', '', '7.10', '2.00', '2018-08-09', '', '', 0),
(157, 'Asif', 'RMS', 'Regression Testing', '', '7.10', '1.00', '2018-08-09', '', 'Tcat Regression', 0),
(158, 'Asif', 'RMS', 'Regression Testing', '', '7.10', '5.00', '2018-08-10', '', 'Tcat Regression', 0),
(159, 'Asif', 'RMS', 'Regression Testing', '', '7.10', '4.00', '2018-08-13', '', 'FMT regression', 0),
(160, 'Asif', 'RMS', 'Automation Assignment', '', '7.10', '2.00', '2018-08-13', '', '', 0),
(161, 'Asif', 'RMS', 'Communication', '', '7.10', '0.50', '2018-08-13', '', '', 0),
(162, 'Asif', 'RMS', 'Sync Up', '', '7.10', '0.50', '2018-08-13', '', '', 0),
(163, 'Asif', 'RMS', 'KT/Training Sessions', '', '7.10', '4.00', '2018-08-14', 'undefined', 'R-Mail/Page design/ Customer Message/ Rakuten Gold, API training , Org training', 0),
(164, 'Asif', 'RMS', 'Parallel Tasks', '', '7.10', '2.00', '2018-08-14', '', 'Revamp refine test cases', 0),
(165, 'Asif', 'RMS', 'Automation Assignment', '', '7.10', '1.00', '2018-08-14', '', '', 0),
(166, 'Asif', 'RMS', 'KT/Training Sessions', '', '7.10', '2.00', '2018-08-16', 'undefined', 'api ramp up', 0),
(167, 'Asif', 'RMS', 'Meetings ', '', '7.10', '1.00', '2018-08-16', '', 'prm', 0),
(168, 'Asif', 'RMS', 'Automation Assignment', '', '7.10', '2.00', '2018-08-16', '', '', 0),
(169, 'Asif', 'RMS', 'Parallel Tasks', '', '7.10', '2.00', '2018-08-16', '', 'revamp refine test cases', 0),
(170, 'Asif', 'RMS', 'KT/Training Sessions', '', '7.10', '1.00', '2018-08-17', '', 'Api ramp up', 0),
(171, 'Asif', 'RMS', 'Automation Assignment', '', '7.10', '2.00', '2018-08-17', '', '', 0),
(172, 'Asif', 'RMS', 'Parallel Tasks', '', '7.10', '2.00', '2018-08-17', '', 'revamp refine test cases', 0),
(173, 'Asif', 'RMS', 'Regression Testing', '', '7.10', '2.00', '2018-08-17', '', 'Tcat regression', 0),
(175, 'Bandana', 'RMS', 'On Leave', '', '7.10', '8.00', '2018-08-16', '', '', 0),
(176, 'Bandana', 'RMS', 'On Leave', '', '7.10', '8.00', '2018-08-17', '', 'On leave', 0),
(177, 'Bandana', 'RMS', 'KT/Training Sessions', '', '7.10', '1.00', '2018-08-14', '', '', 0),
(178, 'Bandana', 'RMS', 'Parallel Tasks', '', '7.10', '2.00', '2018-08-14', '2', '', 0),
(179, 'Bandana', 'RMS', 'Parallel Tasks', '', '7.10', '2.00', '2018-08-20', '', '', 0),
(180, 'Neha', 'MALL', 'Presentation Preparation', '', '7.10', '1.50', '2018-08-13', 'undefined', 'undefined', 0),
(181, 'Neha', 'MALL', 'Regression Testing', '', '7.10', '6.50', '2018-08-13', '', 'Coupon related', 0),
(182, 'Neha', 'MALL', 'RDC Testing', '', '7.10', '2.00', '2018-08-14', '', '', 0),
(183, 'Neha', 'MALL', 'Regression Testing', '', '7.10', '5.00', '2018-08-14', '', '', 0),
(184, 'Neha', 'MALL', 'Presentation Preparation', '', '7.10', '1.00', '2018-08-14', '', '', 0),
(185, 'Neha', 'MALL', 'Meetings ', '', '7.10', '1.00', '2018-08-16', '', 'PRM', 0),
(186, 'Neha', 'MALL', 'Regression Testing', '', '7.10', '4.00', '2018-08-16', '', '', 0),
(187, 'Neha', 'MALL', 'Feature Testing', '', '7.10', '2.00', '2018-08-16', '', '', 0),
(188, 'Neha', 'MALL', 'Regression Testing', '', '7.10', '4.00', '2018-08-17', '', '', 0),
(189, 'Neha', 'MALL', 'Revamp', '', '7.10', '4.00', '2018-08-17', '', '', 0),
(190, 'Neha', 'MALL', 'Defect Verifciation', '', '7.10', '1.50', '2018-08-20', '', '', 0),
(191, 'Neha', 'MALL', 'Feature Testing', '', '7.10', '4.50', '2018-08-20', '', '', 0),
(192, 'Neha', 'MALL', 'Regression Testing', '', '7.10', '2.00', '2018-08-20', '', '', 0),
(194, 'Neha', 'MALL', 'Defect Verifciation', '', '7.10', '1.00', '2018-08-21', '', '', 0),
(195, 'Neha', 'MALL', 'Feature Testing', '', '7.10', '3.00', '2018-08-21', '', '', 0),
(196, 'Neha', 'MALL', 'Requirment Understanding/Test Case Creation', '', '7.10', '0.50', '2018-08-21', '', '', 0),
(197, 'Neha', 'MALL', 'Revamp', '', '7.10', '3.00', '2018-08-21', '', '', 0),
(200, 'Neha', 'MALL', 'Feature Testing', '', '7.10', '3.50', '2018-08-22', '', '', 0),
(201, 'Neha', 'MALL', 'Revamp', '', '7.10', '3.50', '2018-08-22', '', '', 0),
(202, 'Neha', 'MALL', 'Meetings ', '', '7.10', '1.00', '2018-08-23', '', '', 0),
(203, 'Neha', 'MALL', 'QFE Testing (Day 1 ', '', '7.10', '5.00', '2018-08-23', '', '', 0),
(204, 'Neha', 'MALL', 'Revamp', '', '7.10', '2.00', '2018-08-23', '', '', 0),
(205, 'Neha', 'MALL', 'QFE Testing (Day 1 ', '', '7.10', '6.00', '2018-08-24', '', '', 0),
(206, 'Neha', 'MALL', 'Revamp', '', '7.10', '2.50', '2018-08-24', '', '', 0),
(207, 'Asif', 'RMS', 'On Leave', 'undefined', '7.10', '8.00', '2018-08-20', 'undefined', 'undefined', 0),
(208, 'Asif', 'RMS', 'On Leave', '', '7.10', '8.00', '2018-08-21', '', '', 0),
(209, 'Asif', 'RMS', 'On Leave', '', '7.10', '8.00', '2018-08-22', '', '', 0),
(210, 'Asif', 'RMS', 'On Leave', '', '7.10', '8.00', '2018-08-23', '', '', 0),
(211, 'Asif', 'RMS', 'On Leave', '', '7.10', '8.00', '2018-08-24', '', '', 0),
(212, 'Asif', 'RMS', 'Production Testing (Release and Production Environment)', 'Execution', '7.10', '3.00', '2018-08-28', '', '', 0),
(213, 'Asif', 'RMS', 'KT/Training Sessions', 'Execution', '7.10', '1.00', '2018-08-28', '', 'Api ramp up', 0),
(214, 'Asif', 'RMS', 'Status Reporting', 'Meeting', '7.10', '1.00', '2018-08-28', '', '', 0),
(215, 'Asif', 'RMS', 'Automation Assignment', 'Execution', '7.10', '2.00', '2018-08-28', '', 'Api Assignment', 0),
(217, 'Asif', 'RMS', 'Status Reporting', 'Meeting', '7.10', '1.00', '2018-08-27', '', 'Api meeting', 0),
(218, 'Asif', 'RMS', 'KT/Training Sessions', 'Execution', '7.10', '1.00', '2018-08-27', '', 'Api ramp up', 0),
(221, 'Asif', 'RMS', 'Automation Assignment', 'Execution', '7.10', '3.00', '2018-08-27', '', 'Api Assignment', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rel`
--

CREATE TABLE `rel` (
  `id` int(11) NOT NULL,
  `rel` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `rel`
--

INSERT INTO `rel` (`id`, `rel`) VALUES
(2, '7.9'),
(3, '7.10'),
(4, '7.11');

-- --------------------------------------------------------

--
-- Table structure for table `subtask`
--

CREATE TABLE `subtask` (
  `id` int(11) NOT NULL,
  `subtask` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `subtask`
--

INSERT INTO `subtask` (`id`, `subtask`) VALUES
(1, 'Meeting'),
(2, 'Documentation'),
(3, 'Email Communication'),
(4, 'Skype/Hipchat Communicaion'),
(5, 'Oral Communication'),
(6, 'Review'),
(7, 'Execution'),
(8, 'Time on ALM');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `task` varchar(70) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `task`) VALUES
(2, 'Test case Review'),
(3, 'Feature Testing'),
(6, 'Regression Testing'),
(7, 'RDC Test Case Creation'),
(11, 'Hotfix Testing'),
(12, 'Revamp'),
(14, 'Automation Assignment'),
(17, 'KT/Training Sessions'),
(19, 'CC Audit'),
(20, 'Presentation Preparation'),
(22, 'Scope Acceptance'),
(23, 'Task Allocation'),
(24, 'RMS Manual Document Testing'),
(31, 'Production Testing (Release and Production Environment)'),
(32, 'QFE Testing (Day 1 and Day 2)'),
(33, 'RDC Test Execution'),
(34, 'Test Case Creation'),
(35, 'Defect Verification'),
(37, 'Status Reporting/Updates');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `prodarea` varchar(10) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `prodarea`) VALUES
(10, 'Asif', 'RMS'),
(11, 'Bandana', 'RMS'),
(12, 'Oshin', 'MALL'),
(13, 'Rajnish', 'MALL'),
(14, 'Neha', 'MALL'),
(15, 'Ketaki', 'MALL'),
(16, 'Bhairavi', 'RMS'),
(17, 'Priya', 'RMS'),
(18, 'Sajila', 'MALL'),
(19, 'Saakshi', 'RMS'),
(20, 'Harshita', 'RMS'),
(21, 'Sandip', 'RMS'),
(22, 'Midhun', 'RMS'),
(23, 'Sanket', 'RMS'),
(24, 'Ashvin', 'MALL'),
(25, 'Tahil', 'RMS'),
(26, 'Pushpal', 'MALL'),
(27, 'Parnavi', 'MALL'),
(28, 'Damanpreet', 'MALL'),
(29, 'Sushant', 'MALL'),
(31, 'Smita', 'MALL'),
(32, 'Sayli', 'MALL'),
(33, 'Nitin', 'MALL'),
(34, 'Himanshu', 'MALL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bandwidth`
--
ALTER TABLE `bandwidth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rel`
--
ALTER TABLE `rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subtask`
--
ALTER TABLE `subtask`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bandwidth`
--
ALTER TABLE `bandwidth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `rel`
--
ALTER TABLE `rel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subtask`
--
ALTER TABLE `subtask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
