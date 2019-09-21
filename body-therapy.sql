-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 06:07 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `body-therapy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `file` varchar(300) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `adminType` int(11) NOT NULL,
  `isDeleted` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `file`, `username`, `password`, `email`, `phone`, `adminType`, `isDeleted`) VALUES
(2, 'bcpo2aq1_7unl916c.jpg', 'super_admin', 'ff6dafbb69f31f7028329373749a5799', 'test@gmail.com', '1234567890', 1, 0),
(3, 'jhwgfzcu_w9jqhilc.jpg', 'admin', '03998a5085d644476fb8a29839afdcd4', 'admin@gmail.com', '1234567980', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_group`
--

CREATE TABLE `admin_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `permission` text NOT NULL,
  `isDeleted` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_group`
--

INSERT INTO `admin_group` (`id`, `name`, `permission`, `isDeleted`) VALUES
(1, 'Super Admin', '2,1,25,24,23,22,21,19,18,17,16,15,14', 0),
(2, 'Admin', '25,24,23,22,21,19,18,17,16,15,14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ipAddress` varchar(50) NOT NULL,
  `sessid` varchar(50) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `email`, `ipAddress`, `sessid`, `dateTime`) VALUES
(1, 'admin', 'admin@gmail.com', '::1', 'tkcbuvfuhqemegkh5nbfjlfd6t', '2019-09-19 14:49:05'),
(2, 'admin', 'admin@gmail.com', '::1', 'e9h295me39trjsorgk22q3scha', '2019-09-19 14:49:28'),
(3, 'admin', 'admin@gmail.com', '::1', 'uahs6v48qpkoobnjpn3p8u8jn5', '2019-09-19 14:49:57'),
(4, 'admin', 'admin@gmail.com', '::1', 'jnoornq6ud6ageifiq90pbd59h', '2019-09-19 14:51:19'),
(5, 'admin', 'admin@gmail.com', '::1', 'q0klljbtvpo21cnoubjsogodmt', '2019-09-19 14:52:56'),
(6, 'admin', 'admin@gmail.com', '::1', '7734fu8je9uglhvb3qafrlpl1v', '2019-09-19 14:53:52'),
(7, 'admin', 'admin@gmail.com', '::1', 'e3dqm45c721j0dm7i4lrcni4le', '2019-09-19 16:59:18'),
(8, 'admin', 'admin@gmail.com', '::1', 'r7q2q45un2dbluspjltgh4062p', '2019-09-19 17:43:10'),
(9, 'admin', 'admin@gmail.com', '::1', 'l977gdn8pprbusve2tgol7u4bm', '2019-09-20 14:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `backend_links`
--

CREATE TABLE `backend_links` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `parentLink` varchar(100) NOT NULL,
  `links` varchar(200) NOT NULL,
  `onlyEdit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backend_links`
--

INSERT INTO `backend_links` (`id`, `type`, `parentLink`, `links`, `onlyEdit`) VALUES
(1, 'CRM', 'users', 'users_group', 0),
(2, 'CRM', 'users', 'users', 0),
(14, 'CMS', 'Customers', 'customers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booked_appointment`
--

CREATE TABLE `booked_appointment` (
  `bid` int(11) NOT NULL,
  `bookby` int(11) NOT NULL,
  `bookslotstart` varchar(255) NOT NULL,
  `bookslotend` varchar(255) NOT NULL,
  `bookedslot_date` date NOT NULL,
  `bookbyname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `bookbyemail` varchar(255) CHARACTER SET latin1 NOT NULL,
  `bookbymobile` varchar(255) CHARACTER SET latin1 NOT NULL,
  `bookfor_name` varchar(255) NOT NULL,
  `bookfor_email` varchar(255) NOT NULL,
  `bookfor_mobile` varchar(255) NOT NULL,
  `bookby_patient_for` int(11) NOT NULL,
  `bookby_patient_by` int(11) NOT NULL,
  `drbookedid` int(11) NOT NULL,
  `drbookedname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `drbookedemail` varchar(255) CHARACTER SET latin1 NOT NULL,
  `drbookedphone` varchar(255) NOT NULL,
  `drbookedmobile` varchar(255) NOT NULL,
  `consulation_fee` varchar(255) NOT NULL,
  `consulation_firstfee` varchar(255) NOT NULL,
  `consulation_day` varchar(255) NOT NULL,
  `consulation_number` varchar(255) NOT NULL,
  `clinic_typeid` varchar(255) NOT NULL,
  `consult_type` varchar(255) NOT NULL,
  `statusbooked` int(11) NOT NULL DEFAULT 0,
  `countcheck_appointment` int(11) NOT NULL DEFAULT 1,
  `appointment_contact_type` varchar(50) NOT NULL,
  `contact_no_or_id` varchar(50) NOT NULL,
  `appointmentdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booked_appointment`
--

INSERT INTO `booked_appointment` (`bid`, `bookby`, `bookslotstart`, `bookslotend`, `bookedslot_date`, `bookbyname`, `bookbyemail`, `bookbymobile`, `bookfor_name`, `bookfor_email`, `bookfor_mobile`, `bookby_patient_for`, `bookby_patient_by`, `drbookedid`, `drbookedname`, `drbookedemail`, `drbookedphone`, `drbookedmobile`, `consulation_fee`, `consulation_firstfee`, `consulation_day`, `consulation_number`, `clinic_typeid`, `consult_type`, `statusbooked`, `countcheck_appointment`, `appointment_contact_type`, `contact_no_or_id`, `appointmentdate`) VALUES
(1, 2, '10:15', '10:30', '2017-05-29', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', '', '', '', 4, 2, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233', '100', '200', '5', '', '1', '1', 0, 1, '', '0', '2017-05-20 18:34:36'),
(2, 2, '11:45', '12:00', '2017-05-26', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', '', '', '', 2, 0, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '120', '150', '4', '', '0', '4', 0, 1, '', '0', '2017-05-20 18:36:16'),
(3, 2, '12:45', '13:00', '2017-05-29', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', '', '', '', 4, 2, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '150', '250', '', '2', '0', '2', 0, 1, '', '0', '2017-05-20 18:37:41'),
(4, 1, '11:15', '11:30', '2017-05-29', 'Munish kumar', 'munish@cyberxel.in', '9872016075', '', '', '', 1, 1, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '150', '250', '', '2', '0', '2', 0, 1, '', '0', '2017-05-20 19:01:09'),
(5, 2, '10:45', '11:00', '2017-05-29', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', '', '', '', 4, 2, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '100', '200', '5', '', '1', '1', 0, 1, '', '0', '2017-05-20 19:09:49'),
(6, 1, '11:30', '11:45', '2017-05-29', 'Munish kumar', 'munish@cyberxel.in', '9872016075', '', '', '', 1, 1, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '150', '250', '', '2', '0', '2', 0, 1, '', '0', '2017-05-20 19:18:06'),
(7, 1, '11:00', '11:15', '2017-05-29', 'Munish kumar', 'munish@cyberxel.in', '9872016075', '', '', '', 1, 1, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '150', '250', '', '2', '0', '2', 0, 1, '', '0', '2017-05-20 19:19:39'),
(8, 1, '12:00', '12:15', '2017-05-29', 'Munish kumar', 'munish@cyberxel.in', '9872016075', '', '', '', 1, 1, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '150', '250', '', '2', '0', '2', 0, 1, '', '0', '2017-05-20 19:20:13'),
(9, 2, '10:45', '11:00', '2017-05-22', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', '', '', '', 4, 2, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '100', '200', '5', '', '1', '1', 0, 1, '', '0', '2017-05-20 19:23:46'),
(10, 2, '11:30', '11:45', '2017-05-22', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', '', '', '', 4, 2, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '100', '200', '5', '', '1', '1', 0, 1, '', '0', '2017-05-20 19:24:43'),
(11, 1, '12:30', '12:45', '2017-05-29', 'Munish kumar', 'munish@cyberxel.in', '9872016075', '', '', '', 1, 1, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '150', '250', '', '2', '0', '2', 1, 1, '', '0', '2017-05-20 19:26:59'),
(12, 2, '10:30', '10:45', '2017-05-29', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', '', '', '', 4, 2, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '100', '200', '5', '', '1', '1', 0, 1, '', '0', '2017-05-20 19:27:22'),
(13, 2, '15:15', '15:30', '2017-05-29', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', '', '', '', 2, 0, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '120', '150', '4', '', '0', '4', 1, 1, '', '0', '2017-05-22 18:39:45'),
(14, 2, '11:15', '11:30', '2017-05-29', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', 'Mr. Rajesh Sharma', 'rajesh@gmail.com', '9874563211', 4, 2, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '150', '250', '', '2', '0', '2', 1, 1, '', '0', '2017-05-25 13:01:19'),
(15, 2, '10:30', '10:45', '2017-05-30', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', 2, 0, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '120', '200', '5', '', '1', '1', 0, 1, '', '0', '2017-05-25 13:17:37'),
(16, 2, '12:00', '12:15', '2017-05-25', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', 'Mr. Rajesh Sharma', 'rajesh@gmail.com', '9874563211', 4, 2, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '200', '300', '4', '', '0', '4', 1, 1, '', '0', '2017-05-25 13:39:01'),
(17, 1, '14:30', '14:45', '2017-06-22', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Rita kumar', 'rita@gmail.com', '987654321', 1, 1, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '120', '200', '5', '', '1', '1', 0, 1, '', '0', '2017-06-02 18:46:47'),
(18, 1, '12:00', '12:15', '1970-01-01', 'Munish kumar', 'munish@cyberxel.in', '9872016075', '', '', '', 1, 1, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '120', '200', '5', '', '1', '1', 1, 1, '', '0', '2017-06-02 18:49:56'),
(19, 2, '10:40', '11:00', '2017-06-10', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', 'Mr. Rajesh Sharma', 'rajesh@gmail.com', '9874563211', 4, 2, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '45552121', '9754323223,4455676764', '100', '200', '5', '', '5', '1', 0, 1, '', '0', '2017-06-03 10:49:50'),
(20, 1, '10:45', '11:00', '2017-06-13', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '45552121', '9754323223,4455676764', '100', '200', '5', '', '5', '1', 0, 1, '', '0', '2017-06-03 11:59:30'),
(21, 1, '10:00', '10:15', '2017-06-06', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '45552121', '9754323223,4455676764', '120', '300', '', '2', '0', '2', 1, 1, '', '0', '2017-06-03 12:11:13'),
(22, 1, '10:00', '10:15', '2017-06-13', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '', '', '100', '200', '5', '', '5', '1', 0, 1, '', '0', '2017-06-03 12:51:02'),
(23, 1, '17:15', '17:30', '2017-06-13', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '', '', '100', '200', '5', '', '5', '1', 0, 1, '', '0', '2017-06-03 13:12:04'),
(24, 2, '10:20', '10:40', '2017-06-10', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', 'Mr. Rajesh Sharma', 'rajesh@gmail.com', '9874563211', 4, 2, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '', '', '100', '200', '5', '', '5', '1', 0, 1, '', '0', '2017-06-03 13:14:21'),
(25, 1, '10:00', '10:15', '2017-06-13', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '', '', '100', '200', '5', '', '5', '1', 0, 1, '', '0', '2017-06-03 13:27:33'),
(26, 1, '10:45', '11:00', '2017-06-13', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '', '', '100', '200', '5', '', '5', '1', 0, 1, '', '0', '2017-06-03 13:30:58'),
(27, 1, '10:00', '10:15', '2017-06-13', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '', '', '100', '200', '5', '', '5', '1', 0, 1, '', '0', '2017-06-03 14:57:01'),
(28, 2, '10:00', '10:20', '2017-06-10', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', 'Mr. Rajesh Sharma', 'rajesh@gmail.com', '9874563211', 4, 2, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '', '', '100', '200', '5', '', '5', '1', 0, 1, '', '0', '2017-06-03 15:42:28'),
(29, 1, '10:45', '11:00', '2017-06-13', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '', '', '100', '200', '5', '', '5', '1', 0, 1, '', '0', '2017-06-05 11:50:38'),
(30, 2, '10:40', '11:00', '2017-06-10', 'Sagar Sharma', 'sagar@cyberxel.in', '1234567890', 'Mr. Rajesh Sharma', 'rajesh@gmail.com', '9874563211', 4, 2, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '', '', '100', '200', '5', '', '5', '1', 1, 1, '', '0', '2017-06-05 11:57:27'),
(31, 1, '10:00', '10:15', '2017-06-07', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '120', '200', '5', '', '2', '1', 0, 1, '', '0', '2017-06-05 16:45:59'),
(32, 1, '10:15', '10:30', '2017-06-13', 'Munish kumar', 'munish@cyberxel.in', '9872016075', '', '', '', 1, 0, 2, 'Dr. Sham Sunder Sagar', 'samsagar@gmail.com', '', '', '100', '200', '5', '', '5', '1', 1, 1, '', '0', '2017-06-06 15:34:17'),
(33, 1, '13:15', '13:30', '2017-06-08', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'kkjkghjg', 'sagar@cyberxel.com', '64348753', 5, 1, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '120', '200', '5', '', '1', '1', 1, 1, '', '0', '2017-06-06 16:29:11'),
(34, 1, '12:00', '12:15', '2017-06-08', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Shail kumar', 'sahil@gmail.com', '123789456', 2, 1, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '150', '250', '', '2', '0', '2', 1, 1, 'Whatsapp', '1234567890', '2017-06-07 17:06:51'),
(35, 1, '12:15', '12:30', '2017-06-08', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '150', '250', '', '2', '0', '2', 1, 1, 'Skype', 'test@gmail.com', '2017-06-07 17:09:33'),
(36, 1, '12:30', '12:45', '2017-06-08', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '150', '250', '', '2', '0', '2', 1, 1, 'Telephone', '987654321', '2017-06-07 17:11:38'),
(37, 1, '12:45', '13:00', '2017-06-08', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '150', '250', '', '2', '0', '2', 1, 1, 'Google allo', '8967856745645', '2017-06-07 17:12:57'),
(38, 1, '13:00', '13:15', '2017-06-08', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '150', '250', '', '2', '0', '2', 0, 1, 'Online chat', '', '2017-06-07 17:13:54'),
(39, 1, '13:15', '13:30', '2017-06-08', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '', '', '150', '250', '', '2', '0', '2', 0, 1, '', '', '2017-06-07 18:32:29'),
(40, 1, '15:45', '16:00', '2017-06-12', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 1, 0, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '150', '250', '', '2', '0', '2', 1, 1, 'Whatsapp', '98786786868', '2017-06-12 15:58:56'),
(41, 1, '15:30', '15:45', '2017-06-14', 'Munish kumar', 'munish@cyberxel.in', '9872016075', 'kkjkghjg', 'sagar@cyberxel.com', '64348753', 5, 1, 1, 'Dr. Kapil  Sharma', 'kapil@gmail.com', '123456789', '9876523233,', '150', '250', '', '2', '0', '2', 1, 1, 'Telephone', '8678575975679', '2017-06-14 13:57:58'),
(42, 18, '07:20', '07:30', '2018-05-04', 'Indu g', 'indug@cyberxel.com', '7065584517', 'Indu g', 'indug@cyberxel.com', '7065584517', 18, 0, 5, 'Dr. Sanjana  Nij', 'indug1961@gmail.com', '9971676037', ',', '', '', '', '', '7', '1', 1, 1, '', '', '2018-04-26 11:42:52'),
(43, 20, '11:45', '12:00', '2018-04-30', 'BOSKI JAIN', 'jinniejain.jj@gmail.com', '9872537000', 'BOSKI JAIN', 'jinniejain.jj@gmail.com', '9872537000', 20, 0, 8, 'Dr. JITESH  JAIN', 'goodhomoeopathy@gmail.com', '911614632837', ',', '200', '300', '7', '', '12', '1', 1, 1, '', '', '2018-04-28 12:43:14'),
(44, 20, '12:00', '12:15', '2018-04-30', 'BOSKI JAIN', 'jinniejain.jj@gmail.com', '9872537000', 'AALIA JAIN', 'JINNIEJAIN.JJ@GMAIL.COM', '9872537000', 6, 20, 8, 'Dr. JITESH  JAIN', 'goodhomoeopathy@gmail.com', '911614632837', ',', '200', '300', '7', '', '12', '1', 0, 1, '', '', '2018-04-28 12:47:24'),
(45, 31, '12:20', '12:30', '2018-05-22', 'Shruti Jain', 'shrutinahar@gmail.com', '9814406799', 'Shruti Jain', 'shrutinahar@gmail.com', '9814406799', 31, 0, 9, 'Dr. Jitesh  Jain', 'jitesh@system74.com', '91-161-4632837', '91-9872537000,', '200', '200', '7', '', '14', '1', 0, 1, '', '', '2018-05-19 12:20:25'),
(46, 30, '17:30', '17:40', '2018-05-31', 'Suraj kumar', 'suraj@cyberxel.com', '147852369', 'Suraj kumar', 'suraj@cyberxel.com', '147852369', 30, 0, 9, 'Dr. Jitesh  Jain', 'jitesh@system74.com', '91-161-4632837', '91-9872537000,', '200', '200', '7', '', '14', '1', 0, 1, '', '', '2018-05-21 19:03:03'),
(47, 36, '18:20', '18:30', '2018-05-23', 'sagar khullar', 'sagar@cyberxel.in', '1234567890', 'sagar khullar', 'sagar@cyberxel.in', '1234567890', 36, 0, 9, 'Dr. Jitesh  Jain', 'jitesh@system74.com', '91-161-4632837', '91-9872537000,', '200', '200', '7', '', '14', '1', 0, 1, '', '', '2018-05-23 18:28:31'),
(48, 31, '11:20', '11:30', '2018-05-31', 'Shruti Jain', 'shrutinahar@gmail.com', '9814406799', 'Shruti Jain', 'shrutinahar@gmail.com', '9814406799', 31, 0, 9, 'Dr. Jitesh  Jain', 'jitesh@system74.com', '', '', '200', '200', '7', '', '14', '1', 0, 1, '', '', '2018-05-24 12:15:15'),
(49, 0, '', '', '1970-01-01', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '2018-05-24 12:15:15'),
(50, 36, '11:30', '11:40', '2018-05-29', 'sagar khullar', 'sagar@cyberxel.in', '1234567890', 'sagar khullar', 'sagar@cyberxel.in', '1234567890', 36, 0, 9, 'Dr. Jitesh  Jain', 'jitesh@system74.com', '', '', '200', '200', '7', '', '14', '1', 1, 1, '', '', '2018-05-24 12:20:52'),
(51, 31, '12:50', '13:00', '2018-05-24', 'Shruti Jain', 'shrutinahar@gmail.com', '9814406799', 'Shruti Jain', 'shrutinahar@gmail.com', '9814406799', 31, 0, 9, 'Dr. Jitesh  Jain', 'jitesh@system74.com', '', '', '200', '200', '7', '', '14', '1', 1, 1, '', '', '2018-05-24 12:26:10'),
(52, 38, '11:30', '11:45', '2018-06-18', 'boski jain', 'jinniejain@yahoo.com', '9872547000', 'boski jain', 'jinniejain@yahoo.com', '9872547000', 38, 0, 11, 'Dr. Jitesh  Jain', 'goodhomoeopathy@gmail.com', '9872537000', ',', '200', '500', '7', '', '0', '4', 1, 1, '', '', '2018-06-16 12:40:32'),
(53, 38, '11:45', '12:00', '2018-06-18', 'boski jain', 'jinniejain@yahoo.com', '9872547000', 'aalia jain', '', '9872547000', 7, 38, 11, 'Dr. Jitesh  Jain', 'goodhomoeopathy@gmail.com', '9872537000', ',', '200', '500', '7', '', '0', '4', 1, 1, '', '', '2018-06-16 12:40:52'),
(54, 39, '14:15', '14:30', '2018-06-28', 'sagar khullar', 'sagar@cyberxel.in', '1234567890', 'sagar khullar', 'sagar@cyberxel.in', '1234567890', 39, 0, 11, 'Dr. Jitesh  Jain', 'goodhomoeopathy@gmail.com', '9872537000', ',', '200', '500', '7', '', '0', '4', 1, 1, '', '', '2018-06-23 17:15:28'),
(55, 40, '01:15', '01:30', '2018-07-04', 'sagar khullar', 'sagar@cyberxel.in', '8956231470', 'sagar khullar', 'sagar@cyberxel.in', '8956231470', 40, 0, 11, 'Dr. Jitesh  Jain', 'goodhomoeopathy@gmail.com', '9872537000', ',', '200', '500', '7', '', '18', '1', 1, 1, '', '', '2018-06-28 15:21:22'),
(56, 40, '11:15', '11:30', '2018-06-28', 'sagar khullar', 'sagar@cyberxel.in', '8956231470', 'sagar khullar', 'sagar@cyberxel.in', '8956231470', 40, 0, 11, 'Dr. Jitesh  Jain', 'goodhomoeopathy@gmail.com', '9872537000', ',', '200', '500', '7', '', '0', '4', 1, 1, '', '', '2018-06-28 16:10:28'),
(57, 49, '17:00', '17:15', '2018-08-08', 'harjot kaur', 'harjot@cyberxel.in', '2365978401', 'granny', 'harjot@cyberxel.in', '9813654587', 9, 49, 15, 'Dr. Shruti   Jain', 'shrutinahar@gmail.com', '9814406799', ',', '500', '', '7', '', '28', '4', 1, 1, '', '', '2018-08-06 16:28:21'),
(58, 1, '16:30', '16:40', '2018-08-18', 'Munish kumar', 'munish@cyberxel.in', '9802006000', 'Munish kumar', 'munish@cyberxel.in', '9802006000', 1, 0, 12, 'Dr. Sagar  Khullar', 'sagar@cyberxel.in', '1234569870', ',', '200', '', '', '', '29', '4', 1, 1, '', '', '2018-08-13 10:56:25'),
(59, 42, '13:40', '13:50', '2018-09-03', 'rohit kumar', 'rohit@cyberxel.in', '7896543210', 'rohit kumar', 'rohit@cyberxel.in', '7896543210', 42, 0, 16, 'Dr. Amandeep  Madan', 'aman@gmail.com', '123654', ',', '100', '200', '10', '', '30', '4', 1, 1, '', '', '2018-08-29 17:34:15'),
(60, 53, '09:40', '09:50', '2019-04-17', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 53, 0, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-04-16 13:10:08'),
(61, 53, '09:20', '09:30', '2019-04-18', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Mangat madaan', 'amandeep@cyberxel.in', '9417293066', 11, 53, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-04-16 13:58:45'),
(62, 53, '09:00', '09:10', '2019-07-11', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 53, 0, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-07-09 18:02:08'),
(63, 53, '09:30', '09:40', '2019-07-11', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 53, 0, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 0, 1, '', '', '2019-07-10 10:42:13'),
(64, 53, '10:30', '10:40', '2019-07-11', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Kiran rani', 'amandeep@cyberxel.in', '9417293066', 12, 53, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 0, 1, '', '', '2019-07-10 11:52:01'),
(65, 53, '11:00', '11:10', '2019-07-11', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Mangat madaan', 'amandeep@cyberxel.in', '9417293066', 11, 53, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 0, 1, '', '', '2019-07-10 12:43:58'),
(66, 53, '09:20', '09:30', '2019-07-20', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 53, 0, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-07-15 11:32:20'),
(67, 53, '09:40', '09:50', '2019-07-17', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Mangat madaan', 'amandeep@cyberxel.in', '9417293066', 11, 53, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '', '', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-07-15 13:43:24'),
(68, 53, '09:50', '10:00', '2019-07-17', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 53, 0, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 0, 1, '', '', '2019-07-15 15:23:11'),
(69, 53, '09:50', '10:00', '2019-07-17', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Kiran rani', 'amandeep@cyberxel.in', '9417293066', 12, 53, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '', '', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-07-15 15:24:39'),
(70, 53, '09:40', '09:50', '2019-07-17', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 53, 0, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '', '', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-07-15 15:25:41'),
(71, 53, '09:10', '09:20', '2019-07-19', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 53, 0, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-07-15 18:34:18'),
(72, 53, '18:30', '18:40', '2019-07-16', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 53, 0, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '', '', '700', '', '15', '', '33', '4', 0, 1, '', '', '2019-07-16 11:41:02'),
(73, 53, '09:10', '09:20', '2019-07-20', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Mangat madaan', 'amandeep@cyberxel.in', '9417293066', 11, 53, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-07-17 11:49:55'),
(74, 53, '09:30', '09:40', '2019-07-20', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', '', '', '', 53, 0, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '', '', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-07-17 11:51:24'),
(75, 53, '09:40', '09:50', '2019-07-20', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Mangat madaan', 'amandeep@cyberxel.in', '9417293066', 11, 53, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-07-18 10:36:49'),
(76, 53, '10:00', '10:10', '2019-08-14', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 53, 0, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-08-12 12:43:02'),
(77, 53, '10:10', '10:20', '2019-08-14', 'Sajan Kumar', 'amandeep.madaan@outlook.com', '9417293066', 'Mangat madaan', 'amandeep@cyberxel.in', '9417293066', 11, 53, 18, 'Dr. Amandeep  Madan', 'amandeep@cyberxel.in', '253253', '9417293066,', '700', '', '15', '', '33', '4', 1, 1, '', '', '2019-08-12 12:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(300) NOT NULL,
  `lastname` varchar(300) NOT NULL,
  `email` text NOT NULL,
  `countryCode` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(1000) NOT NULL,
  `publish` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `countryCode`, `mobile`, `address`, `password`, `publish`) VALUES
(1, 'Amandeep', 'Madan', 'amandeep.madaan@outlook.com', '+91', '9417293066', 'Street No. 1, New Shiva ji Nagar, Ludhiana', '0e05ad1954464f208e48ffeaf8af7f87', 0),
(2, 'Sajan', 'Madaan', 'sajan@gmail.com', '+91', '7888916485', 'New Hargobind Nagar', 'aba97eaaa018ec87c925a2027b53b23b', 0),
(3, 'Manpreet', 'Singh', 'manpreet.singh@gmail.com', '+91', '9457894585', 'Street No. 4, New Hargobind Nagar', 'f0a00203e3835f43c99666659d798fc7', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dateslot_detail`
--

CREATE TABLE `dateslot_detail` (
  `id` int(11) NOT NULL,
  `docterid` int(11) NOT NULL,
  `slotdayid` int(11) NOT NULL,
  `sloat_date` varchar(255) NOT NULL,
  `slotclinic_id` int(11) NOT NULL,
  `slotstartfrom` varchar(255) NOT NULL,
  `slotendto` varchar(255) NOT NULL,
  `slotinfotype` int(11) NOT NULL,
  `slot_booked` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dateslot_detail`
--

INSERT INTO `dateslot_detail` (`id`, `docterid`, `slotdayid`, `sloat_date`, `slotclinic_id`, `slotstartfrom`, `slotendto`, `slotinfotype`, `slot_booked`) VALUES
(1, 12, 2, '2018-07-10', 25, '00:00', '00:10', 3, 0),
(2, 12, 2, '2018-07-10', 25, '00:10', '00:20', 4, 0),
(3, 12, 2, '2018-07-10', 25, '00:20', '00:30', 4, 0),
(4, 12, 2, '2018-07-10', 25, '00:30', '00:40', 4, 0),
(5, 12, 2, '2018-07-10', 25, '00:40', '00:50', 4, 0),
(6, 12, 2, '2018-07-10', 25, '00:50', '01:00', 4, 0),
(7, 12, 2, '2018-07-10', 25, '01:00', '01:10', 4, 0),
(8, 12, 2, '2018-07-10', 25, '01:10', '01:20', 4, 0),
(9, 12, 2, '2018-07-10', 25, '01:20', '01:30', 4, 0),
(10, 12, 2, '2018-07-10', 25, '01:30', '01:40', 4, 0),
(11, 12, 2, '2018-07-10', 25, '01:40', '01:50', 4, 0),
(12, 12, 2, '2018-07-10', 25, '01:50', '02:00', 4, 0),
(13, 12, 2, '2018-07-10', 25, '03:00', '03:15', 4, 0),
(14, 12, 2, '2018-07-10', 25, '03:15', '03:30', 4, 0),
(15, 12, 2, '2018-07-10', 25, '03:30', '03:45', 4, 0),
(16, 12, 2, '2018-07-10', 25, '03:45', '04:00', 4, 0),
(17, 12, 2, '2018-07-10', 25, '04:00', '04:15', 4, 0),
(18, 12, 2, '2018-07-10', 25, '04:15', '04:30', 4, 0),
(19, 12, 2, '2018-07-10', 25, '04:30', '04:45', 4, 0),
(20, 12, 2, '2018-07-10', 25, '04:45', '05:00', 4, 0),
(21, 12, 2, '2018-07-10', 25, '05:00', '05:15', 4, 0),
(22, 12, 2, '2018-07-10', 25, '05:15', '05:30', 4, 0),
(23, 12, 2, '2018-07-10', 25, '05:30', '05:45', 4, 0),
(24, 12, 2, '2018-07-10', 25, '05:45', '06:00', 4, 0),
(25, 13, 3, '2018-07-25', 26, '11:00', '11:10', 3, 0),
(26, 13, 3, '2018-07-25', 26, '11:10', '11:20', 3, 0),
(27, 13, 3, '2018-07-25', 26, '11:20', '11:30', 3, 0),
(28, 13, 3, '2018-07-25', 26, '11:30', '11:40', 3, 0),
(29, 13, 3, '2018-07-25', 26, '11:40', '11:50', 3, 0),
(30, 13, 3, '2018-07-25', 26, '11:50', '12:00', 3, 0),
(31, 13, 3, '2018-07-25', 26, '12:00', '12:10', 3, 0),
(32, 13, 3, '2018-07-25', 26, '12:10', '12:20', 3, 0),
(33, 13, 3, '2018-07-25', 26, '12:20', '12:30', 3, 0),
(34, 13, 3, '2018-07-25', 26, '12:30', '12:40', 3, 0),
(35, 13, 3, '2018-07-25', 26, '12:40', '12:50', 3, 0),
(36, 13, 3, '2018-07-25', 26, '12:50', '13:00', 3, 0),
(37, 13, 3, '2018-07-25', 26, '13:00', '13:10', 3, 0),
(38, 13, 3, '2018-07-25', 26, '13:10', '13:20', 3, 0),
(39, 13, 3, '2018-07-25', 26, '13:20', '13:30', 3, 0),
(40, 13, 3, '2018-07-25', 26, '13:30', '13:40', 3, 0),
(41, 13, 3, '2018-07-25', 26, '13:40', '13:50', 3, 0),
(42, 13, 3, '2018-07-25', 26, '13:50', '14:00', 3, 0),
(43, 13, 3, '2018-07-25', 26, '17:00', '17:10', 3, 0),
(44, 13, 3, '2018-07-25', 26, '17:10', '17:20', 3, 0),
(45, 13, 3, '2018-07-25', 26, '17:20', '17:30', 3, 0),
(46, 13, 3, '2018-07-25', 26, '17:30', '17:40', 3, 0),
(47, 13, 3, '2018-07-25', 26, '17:40', '17:50', 3, 0),
(48, 13, 3, '2018-07-25', 26, '17:50', '18:00', 3, 0),
(49, 13, 3, '2018-07-25', 26, '18:00', '18:10', 3, 0),
(50, 13, 3, '2018-07-25', 26, '18:10', '18:20', 3, 0),
(51, 13, 3, '2018-07-25', 26, '18:20', '18:30', 3, 0),
(52, 13, 3, '2018-07-25', 26, '18:30', '18:40', 3, 0),
(53, 13, 3, '2018-07-25', 26, '18:40', '18:50', 3, 0),
(54, 13, 3, '2018-07-25', 26, '18:50', '19:00', 3, 0),
(55, 13, 3, '2018-07-25', 26, '19:00', '19:10', 3, 0),
(56, 13, 3, '2018-07-25', 26, '19:10', '19:20', 3, 0),
(57, 13, 3, '2018-07-25', 26, '19:20', '19:30', 3, 0),
(58, 13, 3, '2018-07-25', 26, '19:30', '19:40', 3, 0),
(59, 13, 3, '2018-07-25', 26, '19:40', '19:50', 3, 0),
(60, 13, 3, '2018-07-25', 26, '19:50', '20:00', 3, 0),
(61, 13, 3, '2018-07-25', 26, '20:00', '20:10', 3, 0),
(62, 13, 3, '2018-07-25', 26, '20:10', '20:20', 3, 0),
(63, 13, 3, '2018-07-25', 26, '20:20', '20:30', 3, 0),
(64, 13, 4, '2018-07-26', 26, '11:00', '11:10', 2, 0),
(65, 13, 4, '2018-07-26', 26, '11:10', '11:20', 2, 0),
(66, 13, 4, '2018-07-26', 26, '11:20', '11:30', 2, 0),
(67, 13, 4, '2018-07-26', 26, '11:30', '11:40', 2, 0),
(68, 13, 4, '2018-07-26', 26, '11:40', '11:50', 2, 0),
(69, 13, 4, '2018-07-26', 26, '11:50', '12:00', 2, 0),
(70, 13, 4, '2018-07-26', 26, '12:00', '12:10', 2, 0),
(71, 13, 4, '2018-07-26', 26, '12:10', '12:20', 2, 0),
(72, 13, 4, '2018-07-26', 26, '12:20', '12:30', 2, 0),
(73, 13, 4, '2018-07-26', 26, '12:30', '12:40', 2, 0),
(74, 13, 4, '2018-07-26', 26, '12:40', '12:50', 2, 0),
(75, 13, 4, '2018-07-26', 26, '12:50', '13:00', 2, 0),
(76, 13, 4, '2018-07-26', 26, '13:00', '13:10', 2, 0),
(77, 13, 4, '2018-07-26', 26, '13:10', '13:20', 2, 0),
(78, 13, 4, '2018-07-26', 26, '13:20', '13:30', 2, 0),
(79, 13, 4, '2018-07-26', 26, '13:30', '13:40', 2, 0),
(80, 13, 4, '2018-07-26', 26, '13:40', '13:50', 2, 0),
(81, 13, 4, '2018-07-26', 26, '13:50', '14:00', 2, 0),
(82, 13, 4, '2018-07-26', 26, '17:00', '17:10', 2, 0),
(83, 13, 4, '2018-07-26', 26, '17:10', '17:20', 2, 0),
(84, 13, 4, '2018-07-26', 26, '17:20', '17:30', 2, 0),
(85, 13, 4, '2018-07-26', 26, '17:30', '17:40', 2, 0),
(86, 13, 4, '2018-07-26', 26, '17:40', '17:50', 2, 0),
(87, 13, 4, '2018-07-26', 26, '17:50', '18:00', 2, 0),
(88, 13, 4, '2018-07-26', 26, '18:00', '18:10', 2, 0),
(89, 13, 4, '2018-07-26', 26, '18:10', '18:20', 2, 0),
(90, 13, 4, '2018-07-26', 26, '18:20', '18:30', 2, 0),
(91, 13, 4, '2018-07-26', 26, '18:30', '18:40', 2, 0),
(92, 13, 4, '2018-07-26', 26, '18:40', '18:50', 2, 0),
(93, 13, 4, '2018-07-26', 26, '18:50', '19:00', 2, 0),
(94, 13, 4, '2018-07-26', 26, '19:00', '19:10', 2, 0),
(95, 13, 4, '2018-07-26', 26, '19:10', '19:20', 2, 0),
(96, 13, 4, '2018-07-26', 26, '19:20', '19:30', 2, 0),
(97, 13, 4, '2018-07-26', 26, '19:30', '19:40', 2, 0),
(98, 13, 4, '2018-07-26', 26, '19:40', '19:50', 2, 0),
(99, 13, 4, '2018-07-26', 26, '19:50', '20:00', 2, 0),
(100, 13, 4, '2018-07-26', 26, '20:00', '20:10', 2, 0),
(101, 13, 4, '2018-07-26', 26, '20:10', '20:20', 2, 0),
(102, 13, 4, '2018-07-26', 26, '20:20', '20:30', 2, 0),
(103, 12, 7, '2018-08-12', 29, '08:00', '08:10', 2, 0),
(104, 12, 7, '2018-08-12', 29, '08:10', '08:20', 2, 0),
(105, 12, 7, '2018-08-12', 29, '08:20', '08:30', 2, 0),
(106, 12, 7, '2018-08-12', 29, '08:30', '08:40', 2, 0),
(107, 12, 7, '2018-08-12', 29, '08:40', '08:50', 2, 0),
(108, 12, 7, '2018-08-12', 29, '08:50', '09:00', 2, 0),
(109, 12, 7, '2018-08-12', 29, '12:00', '12:10', 2, 0),
(110, 12, 7, '2018-08-12', 29, '12:10', '12:20', 2, 0),
(111, 12, 7, '2018-08-12', 29, '12:20', '12:30', 3, 0),
(112, 12, 7, '2018-08-12', 29, '12:30', '12:40', 2, 0),
(113, 12, 7, '2018-08-12', 29, '12:40', '12:50', 2, 0),
(114, 12, 7, '2018-08-12', 29, '12:50', '13:00', 2, 0),
(115, 12, 7, '2018-08-12', 29, '13:30', '13:40', 2, 0),
(116, 12, 7, '2018-08-12', 29, '13:40', '13:50', 2, 0),
(117, 12, 7, '2018-08-12', 29, '13:50', '14:00', 2, 0),
(118, 12, 7, '2018-08-12', 29, '14:00', '14:10', 2, 0),
(119, 12, 7, '2018-08-12', 29, '14:10', '14:20', 2, 0),
(120, 12, 7, '2018-08-12', 29, '14:20', '14:30', 2, 0),
(121, 12, 2, '2018-08-14', 25, '00:00', '00:10', 2, 0),
(122, 12, 2, '2018-08-14', 25, '00:10', '00:20', 2, 0),
(123, 12, 2, '2018-08-14', 25, '00:20', '00:30', 2, 0),
(124, 12, 2, '2018-08-14', 25, '00:30', '00:40', 2, 0),
(125, 12, 2, '2018-08-14', 25, '00:40', '00:50', 2, 0),
(126, 12, 2, '2018-08-14', 25, '00:50', '01:00', 2, 0),
(127, 12, 2, '2018-08-14', 25, '01:00', '01:10', 2, 0),
(128, 12, 2, '2018-08-14', 25, '01:10', '01:20', 2, 0),
(129, 12, 2, '2018-08-14', 25, '01:20', '01:30', 2, 0),
(130, 12, 2, '2018-08-14', 25, '01:30', '01:40', 2, 0),
(131, 12, 2, '2018-08-14', 25, '01:40', '01:50', 2, 0),
(132, 12, 2, '2018-08-14', 25, '01:50', '02:00', 2, 0),
(133, 12, 2, '2018-08-14', 25, '03:00', '03:15', 2, 0),
(134, 12, 2, '2018-08-14', 25, '03:15', '03:30', 2, 0),
(135, 12, 2, '2018-08-14', 25, '03:30', '03:45', 2, 0),
(136, 12, 2, '2018-08-14', 25, '03:45', '04:00', 2, 0),
(137, 12, 2, '2018-08-14', 25, '04:00', '04:15', 2, 0),
(138, 12, 2, '2018-08-14', 25, '04:15', '04:30', 2, 0),
(139, 12, 2, '2018-08-14', 25, '04:30', '04:45', 2, 0),
(140, 12, 2, '2018-08-14', 25, '04:45', '05:00', 2, 0),
(141, 12, 2, '2018-08-14', 25, '05:00', '05:15', 2, 0),
(142, 12, 2, '2018-08-14', 25, '05:15', '05:30', 2, 0),
(143, 12, 2, '2018-08-14', 25, '05:30', '05:45', 2, 0),
(144, 12, 2, '2018-08-14', 25, '05:45', '06:00', 2, 0),
(145, 12, 7, '2018-08-19', 29, '08:00', '08:10', 2, 0),
(146, 12, 7, '2018-08-19', 29, '08:10', '08:20', 2, 0),
(147, 12, 7, '2018-08-19', 29, '08:20', '08:30', 2, 0),
(148, 12, 7, '2018-08-19', 29, '08:30', '08:40', 2, 0),
(149, 12, 7, '2018-08-19', 29, '08:40', '08:50', 2, 0),
(150, 12, 7, '2018-08-19', 29, '08:50', '09:00', 2, 0),
(151, 12, 7, '2018-08-19', 29, '12:00', '12:10', 2, 0),
(152, 12, 7, '2018-08-19', 29, '12:10', '12:20', 2, 0),
(153, 12, 7, '2018-08-19', 29, '12:20', '12:30', 2, 0),
(154, 12, 7, '2018-08-19', 29, '12:30', '12:40', 2, 0),
(155, 12, 7, '2018-08-19', 29, '12:40', '12:50', 2, 0),
(156, 12, 7, '2018-08-19', 29, '12:50', '13:00', 2, 0),
(157, 12, 7, '2018-08-19', 29, '13:30', '13:40', 2, 0),
(158, 12, 7, '2018-08-19', 29, '13:40', '13:50', 2, 0),
(159, 12, 7, '2018-08-19', 29, '13:50', '14:00', 2, 0),
(160, 12, 7, '2018-08-19', 29, '14:00', '14:10', 2, 0),
(161, 12, 7, '2018-08-19', 29, '14:10', '14:20', 2, 0),
(162, 12, 7, '2018-08-19', 29, '14:20', '14:30', 2, 0),
(163, 16, 1, '2018-09-17', 30, '08:00', '08:10', 4, 0),
(164, 16, 1, '2018-09-17', 30, '08:10', '08:20', 1, 0),
(165, 16, 1, '2018-09-17', 30, '08:20', '08:30', 1, 0),
(166, 16, 1, '2018-09-17', 30, '08:30', '08:40', 1, 0),
(167, 16, 1, '2018-09-17', 30, '08:40', '08:50', 1, 0),
(168, 16, 1, '2018-09-17', 30, '08:50', '09:00', 1, 0),
(169, 16, 1, '2018-09-17', 30, '09:00', '09:10', 1, 0),
(170, 16, 1, '2018-09-17', 30, '09:10', '09:20', 1, 0),
(171, 16, 1, '2018-09-17', 30, '09:20', '09:30', 1, 0),
(172, 16, 1, '2018-09-17', 30, '09:30', '09:40', 1, 0),
(173, 16, 1, '2018-09-17', 30, '09:40', '09:50', 1, 0),
(174, 16, 1, '2018-09-17', 30, '09:50', '10:00', 1, 0),
(175, 16, 1, '2018-09-17', 30, '10:00', '10:10', 1, 0),
(176, 16, 1, '2018-09-17', 30, '10:10', '10:20', 1, 0),
(177, 16, 1, '2018-09-17', 30, '10:20', '10:30', 1, 0),
(178, 16, 1, '2018-09-17', 30, '10:30', '10:40', 1, 0),
(179, 16, 1, '2018-09-17', 30, '10:40', '10:50', 1, 0),
(180, 16, 1, '2018-09-17', 30, '10:50', '11:00', 1, 0),
(181, 16, 1, '2018-09-17', 30, '11:00', '11:10', 1, 0),
(182, 16, 1, '2018-09-17', 30, '11:10', '11:20', 1, 0),
(183, 16, 1, '2018-09-17', 30, '11:20', '11:30', 1, 0),
(184, 16, 1, '2018-09-17', 30, '11:30', '11:40', 1, 0),
(185, 16, 1, '2018-09-17', 30, '11:40', '11:50', 1, 0),
(186, 16, 1, '2018-09-17', 30, '11:50', '12:00', 1, 0),
(187, 16, 1, '2018-09-17', 30, '12:00', '12:10', 1, 0),
(188, 16, 1, '2018-09-17', 30, '12:10', '12:20', 1, 0),
(189, 16, 1, '2018-09-17', 30, '12:20', '12:30', 1, 0),
(190, 16, 1, '2018-09-17', 30, '13:00', '13:10', 1, 0),
(191, 16, 1, '2018-09-17', 30, '13:10', '13:20', 1, 0),
(192, 16, 1, '2018-09-17', 30, '13:20', '13:30', 1, 0),
(193, 16, 1, '2018-09-17', 30, '13:30', '13:40', 1, 0),
(194, 16, 1, '2018-09-17', 30, '13:40', '13:50', 1, 0),
(195, 16, 1, '2018-09-17', 30, '13:50', '14:00', 1, 0),
(196, 16, 1, '2018-09-17', 30, '14:00', '14:10', 1, 0),
(197, 16, 1, '2018-09-17', 30, '14:10', '14:20', 1, 0),
(198, 16, 1, '2018-09-17', 30, '14:20', '14:30', 1, 0),
(199, 16, 1, '2018-09-17', 30, '14:30', '14:40', 1, 0),
(200, 16, 1, '2018-09-17', 30, '14:40', '14:50', 1, 0),
(201, 16, 1, '2018-09-17', 30, '14:50', '15:00', 1, 0),
(202, 16, 1, '2018-09-17', 30, '15:00', '15:10', 1, 0),
(203, 16, 1, '2018-09-17', 30, '15:10', '15:20', 1, 0),
(204, 16, 1, '2018-09-17', 30, '15:20', '15:30', 1, 0),
(205, 16, 1, '2018-09-17', 30, '15:30', '15:40', 1, 0),
(206, 16, 1, '2018-09-17', 30, '15:40', '15:50', 1, 0),
(207, 16, 1, '2018-09-17', 30, '15:50', '16:00', 1, 0),
(208, 16, 1, '2018-09-17', 30, '17:00', '17:10', 1, 0),
(209, 16, 1, '2018-09-17', 30, '17:10', '17:20', 1, 0),
(210, 16, 1, '2018-09-17', 30, '17:20', '17:30', 1, 0),
(211, 16, 1, '2018-09-17', 30, '17:30', '17:40', 1, 0),
(212, 16, 1, '2018-09-17', 30, '17:40', '17:50', 1, 0),
(213, 16, 1, '2018-09-17', 30, '17:50', '18:00', 1, 0),
(214, 16, 1, '2018-09-17', 30, '18:00', '18:10', 1, 0),
(215, 16, 1, '2018-09-17', 30, '18:10', '18:20', 1, 0),
(216, 16, 1, '2018-09-17', 30, '18:20', '18:30', 1, 0),
(217, 16, 1, '2018-09-17', 30, '18:30', '18:40', 1, 0),
(218, 16, 1, '2018-09-17', 30, '18:40', '18:50', 1, 0),
(219, 16, 1, '2018-09-17', 30, '18:50', '19:00', 1, 0),
(220, 17, 6, '2019-04-06', 32, '12:30', '12:40', 3, 0),
(221, 17, 6, '2019-04-06', 32, '12:40', '12:50', 3, 0),
(222, 17, 6, '2019-04-06', 32, '12:50', '13:00', 3, 0),
(223, 17, 6, '2019-04-06', 32, '13:00', '13:10', 3, 0),
(224, 17, 6, '2019-04-06', 32, '13:10', '13:20', 3, 0),
(225, 17, 6, '2019-04-06', 32, '13:20', '13:30', 3, 0),
(226, 17, 6, '2019-04-06', 32, '13:30', '13:40', 3, 0),
(227, 17, 6, '2019-04-06', 32, '13:40', '13:50', 3, 0),
(228, 17, 6, '2019-04-06', 32, '13:50', '14:00', 3, 0),
(229, 17, 6, '2019-04-06', 32, '14:00', '14:10', 3, 0),
(230, 17, 6, '2019-04-06', 32, '14:10', '14:20', 3, 0),
(231, 17, 6, '2019-04-06', 32, '14:20', '14:30', 3, 0),
(232, 17, 6, '2019-04-06', 32, '14:30', '14:40', 3, 0),
(233, 17, 6, '2019-04-06', 32, '14:40', '14:50', 3, 0),
(234, 17, 6, '2019-04-06', 32, '14:50', '15:00', 3, 0),
(235, 17, 6, '2019-04-06', 32, '16:00', '16:10', 3, 0),
(236, 17, 6, '2019-04-06', 32, '16:10', '16:20', 3, 0),
(237, 17, 6, '2019-04-06', 32, '16:20', '16:30', 3, 0),
(238, 17, 6, '2019-04-06', 32, '16:30', '16:40', 3, 0),
(239, 17, 6, '2019-04-06', 32, '16:40', '16:50', 3, 0),
(240, 17, 6, '2019-04-06', 32, '16:50', '17:00', 3, 0),
(241, 17, 6, '2019-04-06', 32, '17:00', '17:10', 3, 0),
(242, 17, 6, '2019-04-06', 32, '17:10', '17:20', 3, 0),
(243, 17, 6, '2019-04-06', 32, '17:20', '17:30', 3, 0),
(244, 17, 6, '2019-04-06', 32, '17:30', '17:40', 3, 0),
(245, 17, 6, '2019-04-06', 32, '17:40', '17:50', 3, 0),
(246, 17, 6, '2019-04-06', 32, '17:50', '18:00', 3, 0),
(247, 17, 6, '2019-04-06', 32, '18:00', '18:10', 3, 0),
(248, 17, 6, '2019-04-06', 32, '18:10', '18:20', 3, 0),
(249, 17, 6, '2019-04-06', 32, '18:20', '18:30', 3, 0),
(250, 17, 6, '2019-04-06', 32, '18:30', '18:40', 3, 0),
(251, 17, 6, '2019-04-06', 32, '18:40', '18:50', 3, 0),
(252, 17, 6, '2019-04-06', 32, '18:50', '19:00', 3, 0),
(253, 17, 6, '2019-04-06', 32, '19:00', '19:10', 3, 0),
(254, 17, 6, '2019-04-06', 32, '19:10', '19:20', 3, 0),
(255, 17, 6, '2019-04-06', 32, '19:20', '19:30', 3, 0),
(256, 17, 6, '2019-04-06', 32, '19:30', '19:40', 3, 0),
(257, 17, 6, '2019-04-06', 32, '19:40', '19:50', 3, 0),
(258, 17, 6, '2019-04-06', 32, '19:50', '20:00', 3, 0),
(259, 17, 5, '2019-04-05', 31, '11:00', '11:10', 3, 0),
(260, 17, 5, '2019-04-05', 31, '11:10', '11:20', 3, 0),
(261, 17, 5, '2019-04-05', 31, '11:20', '11:30', 3, 0),
(262, 17, 5, '2019-04-05', 31, '11:30', '11:40', 3, 0),
(263, 17, 5, '2019-04-05', 31, '11:40', '11:50', 3, 0),
(264, 17, 5, '2019-04-05', 31, '11:50', '12:00', 3, 0),
(265, 17, 5, '2019-04-05', 31, '12:00', '12:10', 3, 0),
(266, 17, 5, '2019-04-05', 31, '12:10', '12:20', 3, 0),
(267, 17, 5, '2019-04-05', 31, '12:20', '12:30', 3, 0),
(268, 17, 5, '2019-04-05', 31, '12:30', '12:40', 3, 0),
(269, 17, 5, '2019-04-05', 31, '12:40', '12:50', 3, 0),
(270, 17, 5, '2019-04-05', 31, '12:50', '13:00', 3, 0),
(271, 17, 5, '2019-04-05', 31, '13:00', '13:10', 3, 0),
(272, 17, 5, '2019-04-05', 31, '13:10', '13:20', 3, 0),
(273, 17, 5, '2019-04-05', 31, '13:20', '13:30', 3, 0),
(274, 17, 5, '2019-04-05', 31, '13:30', '13:40', 3, 0),
(275, 17, 5, '2019-04-05', 31, '13:40', '13:50', 3, 0),
(276, 17, 5, '2019-04-05', 31, '13:50', '14:00', 3, 0),
(277, 17, 5, '2019-04-05', 31, '14:00', '14:10', 3, 0),
(278, 17, 5, '2019-04-05', 31, '14:10', '14:20', 3, 0),
(279, 17, 5, '2019-04-05', 31, '14:20', '14:30', 3, 0),
(280, 17, 5, '2019-04-05', 31, '17:30', '17:40', 3, 0),
(281, 17, 5, '2019-04-05', 31, '17:40', '17:50', 3, 0),
(282, 17, 5, '2019-04-05', 31, '17:50', '18:00', 3, 0),
(283, 17, 5, '2019-04-05', 31, '18:00', '18:10', 3, 0),
(284, 17, 5, '2019-04-05', 31, '18:10', '18:20', 3, 0),
(285, 17, 5, '2019-04-05', 31, '18:20', '18:30', 3, 0),
(286, 17, 5, '2019-04-05', 31, '18:30', '18:40', 3, 0),
(287, 17, 5, '2019-04-05', 31, '18:40', '18:50', 3, 0),
(288, 17, 5, '2019-04-05', 31, '18:50', '19:00', 3, 0),
(289, 17, 5, '2019-04-05', 31, '19:00', '19:10', 3, 0),
(290, 17, 5, '2019-04-05', 31, '19:10', '19:20', 3, 0),
(291, 17, 5, '2019-04-05', 31, '19:20', '19:30', 3, 0),
(292, 17, 5, '2019-04-05', 31, '19:30', '19:40', 3, 0),
(293, 17, 5, '2019-04-05', 31, '19:40', '19:50', 3, 0),
(294, 17, 5, '2019-04-05', 31, '19:50', '20:00', 3, 0),
(295, 18, 3, '2019-04-17', 33, '09:00', '09:10', 3, 0),
(296, 18, 3, '2019-04-17', 33, '09:10', '09:20', 3, 0),
(297, 18, 3, '2019-04-17', 33, '09:20', '09:30', 3, 0),
(298, 18, 3, '2019-04-17', 33, '09:30', '09:40', 3, 0),
(299, 18, 3, '2019-04-17', 33, '09:40', '09:50', 3, 0),
(300, 18, 3, '2019-04-17', 33, '09:50', '10:00', 3, 0),
(301, 18, 3, '2019-04-17', 33, '10:00', '10:10', 3, 0),
(302, 18, 3, '2019-04-17', 33, '10:10', '10:20', 3, 0),
(303, 18, 3, '2019-04-17', 33, '10:20', '10:30', 3, 0),
(304, 18, 3, '2019-04-17', 33, '10:30', '10:40', 3, 0),
(305, 18, 3, '2019-04-17', 33, '10:40', '10:50', 3, 0),
(306, 18, 3, '2019-04-17', 33, '10:50', '11:00', 3, 0),
(307, 18, 3, '2019-04-17', 33, '11:00', '11:10', 3, 0),
(308, 18, 3, '2019-04-17', 33, '11:10', '11:20', 3, 0),
(309, 18, 3, '2019-04-17', 33, '11:20', '11:30', 3, 0),
(310, 18, 3, '2019-04-17', 33, '12:30', '12:40', 3, 0),
(311, 18, 3, '2019-04-17', 33, '12:40', '12:50', 3, 0),
(312, 18, 3, '2019-04-17', 33, '12:50', '13:00', 3, 0),
(313, 18, 3, '2019-04-17', 33, '13:00', '13:10', 3, 0),
(314, 18, 3, '2019-04-17', 33, '13:10', '13:20', 3, 0),
(315, 18, 3, '2019-04-17', 33, '13:20', '13:30', 3, 0),
(316, 18, 3, '2019-04-17', 33, '13:30', '13:40', 3, 0),
(317, 18, 3, '2019-04-17', 33, '13:40', '13:50', 3, 0),
(318, 18, 3, '2019-04-17', 33, '13:50', '14:00', 3, 0),
(319, 18, 3, '2019-04-17', 33, '14:00', '14:10', 3, 0),
(320, 18, 3, '2019-04-17', 33, '14:10', '14:20', 3, 0),
(321, 18, 3, '2019-04-17', 33, '14:20', '14:30', 3, 0),
(322, 18, 3, '2019-04-17', 33, '18:30', '18:40', 3, 0),
(323, 18, 3, '2019-04-17', 33, '18:40', '18:50', 3, 0),
(324, 18, 3, '2019-04-17', 33, '18:50', '19:00', 3, 0),
(325, 18, 3, '2019-04-17', 33, '19:00', '19:10', 3, 0),
(326, 18, 3, '2019-04-17', 33, '19:10', '19:20', 3, 0),
(327, 18, 3, '2019-04-17', 33, '19:20', '19:30', 3, 0),
(328, 18, 3, '2019-04-17', 33, '19:30', '19:40', 3, 0),
(329, 18, 3, '2019-04-17', 33, '19:40', '19:50', 3, 0),
(330, 18, 3, '2019-04-17', 33, '19:50', '20:00', 3, 0),
(331, 18, 3, '2019-04-17', 33, '20:00', '20:10', 3, 0),
(332, 18, 3, '2019-04-17', 33, '20:10', '20:20', 3, 0),
(333, 18, 3, '2019-04-17', 33, '20:20', '20:30', 3, 0),
(334, 18, 4, '2019-07-11', 33, '09:00', '09:10', 3, 1),
(335, 18, 4, '2019-07-11', 33, '09:10', '09:20', 3, 0),
(336, 18, 4, '2019-07-11', 33, '09:20', '09:30', 3, 0),
(337, 18, 4, '2019-07-11', 33, '09:30', '09:40', 4, 0),
(338, 18, 4, '2019-07-11', 33, '09:40', '09:50', 4, 0),
(339, 18, 4, '2019-07-11', 33, '09:50', '10:00', 4, 0),
(340, 18, 4, '2019-07-11', 33, '10:00', '10:10', 4, 0),
(341, 18, 4, '2019-07-11', 33, '10:10', '10:20', 4, 0),
(342, 18, 4, '2019-07-11', 33, '10:20', '10:30', 4, 0),
(343, 18, 4, '2019-07-11', 33, '10:30', '10:40', 2, 1),
(344, 18, 4, '2019-07-11', 33, '10:40', '10:50', 3, 0),
(345, 18, 4, '2019-07-11', 33, '10:50', '11:00', 4, 0),
(346, 18, 4, '2019-07-11', 33, '11:00', '11:10', 4, 0),
(347, 18, 4, '2019-07-11', 33, '11:10', '11:20', 4, 0),
(348, 18, 4, '2019-07-11', 33, '11:20', '11:30', 4, 0),
(349, 18, 4, '2019-07-11', 33, '12:30', '12:40', 4, 0),
(350, 18, 4, '2019-07-11', 33, '12:40', '12:50', 4, 0),
(351, 18, 4, '2019-07-11', 33, '12:50', '13:00', 4, 0),
(352, 18, 4, '2019-07-11', 33, '13:00', '13:10', 4, 0),
(353, 18, 4, '2019-07-11', 33, '13:10', '13:20', 4, 0),
(354, 18, 4, '2019-07-11', 33, '13:20', '13:30', 4, 0),
(355, 18, 4, '2019-07-11', 33, '13:30', '13:40', 4, 0),
(356, 18, 4, '2019-07-11', 33, '13:40', '13:50', 4, 0),
(357, 18, 4, '2019-07-11', 33, '13:50', '14:00', 4, 0),
(358, 18, 4, '2019-07-11', 33, '14:00', '14:10', 4, 0),
(359, 18, 4, '2019-07-11', 33, '14:10', '14:20', 4, 0),
(360, 18, 4, '2019-07-11', 33, '14:20', '14:30', 4, 0),
(361, 18, 4, '2019-07-11', 33, '18:30', '18:40', 4, 0),
(362, 18, 4, '2019-07-11', 33, '18:40', '18:50', 4, 0),
(363, 18, 4, '2019-07-11', 33, '18:50', '19:00', 4, 0),
(364, 18, 4, '2019-07-11', 33, '19:00', '19:10', 4, 0),
(365, 18, 4, '2019-07-11', 33, '19:10', '19:20', 4, 0),
(366, 18, 4, '2019-07-11', 33, '19:20', '19:30', 4, 0),
(367, 18, 4, '2019-07-11', 33, '19:30', '19:40', 4, 0),
(368, 18, 4, '2019-07-11', 33, '19:40', '19:50', 4, 0),
(369, 18, 4, '2019-07-11', 33, '19:50', '20:00', 4, 0),
(370, 18, 4, '2019-07-11', 33, '20:00', '20:10', 4, 0),
(371, 18, 4, '2019-07-11', 33, '20:10', '20:20', 4, 0),
(372, 18, 4, '2019-07-11', 33, '20:20', '20:30', 4, 0),
(373, 18, 4, '2019-07-11', 33, '09:00', '09:10', 3, 0),
(374, 18, 4, '2019-07-11', 33, '09:10', '09:20', 3, 0),
(375, 18, 4, '2019-07-11', 33, '09:20', '09:30', 3, 0),
(376, 18, 4, '2019-07-11', 33, '09:30', '09:40', 4, 0),
(377, 18, 4, '2019-07-11', 33, '09:40', '09:50', 3, 0),
(378, 18, 4, '2019-07-11', 33, '09:50', '10:00', 4, 0),
(379, 18, 4, '2019-07-11', 33, '10:00', '10:10', 4, 0),
(380, 18, 4, '2019-07-11', 33, '10:10', '10:20', 4, 0),
(381, 18, 4, '2019-07-11', 33, '10:20', '10:30', 4, 0),
(382, 18, 4, '2019-07-11', 33, '10:30', '10:40', 2, 0),
(383, 18, 4, '2019-07-11', 33, '10:40', '10:50', 3, 0),
(384, 18, 4, '2019-07-11', 33, '10:50', '11:00', 4, 0),
(385, 18, 4, '2019-07-11', 33, '11:00', '11:10', 4, 0),
(386, 18, 4, '2019-07-11', 33, '11:10', '11:20', 4, 0),
(387, 18, 4, '2019-07-11', 33, '11:20', '11:30', 4, 0),
(388, 18, 4, '2019-07-11', 33, '12:30', '12:40', 4, 0),
(389, 18, 4, '2019-07-11', 33, '12:40', '12:50', 4, 0),
(390, 18, 4, '2019-07-11', 33, '12:50', '13:00', 4, 0),
(391, 18, 4, '2019-07-11', 33, '13:00', '13:10', 4, 0),
(392, 18, 4, '2019-07-11', 33, '13:10', '13:20', 4, 0),
(393, 18, 4, '2019-07-11', 33, '13:20', '13:30', 4, 0),
(394, 18, 4, '2019-07-11', 33, '13:30', '13:40', 4, 0),
(395, 18, 4, '2019-07-11', 33, '13:40', '13:50', 4, 0),
(396, 18, 4, '2019-07-11', 33, '13:50', '14:00', 4, 0),
(397, 18, 4, '2019-07-11', 33, '14:00', '14:10', 4, 0),
(398, 18, 4, '2019-07-11', 33, '14:10', '14:20', 4, 0),
(399, 18, 4, '2019-07-11', 33, '14:20', '14:30', 4, 0),
(400, 18, 4, '2019-07-11', 33, '18:30', '18:40', 4, 0),
(401, 18, 4, '2019-07-11', 33, '18:40', '18:50', 4, 0),
(402, 18, 4, '2019-07-11', 33, '18:50', '19:00', 4, 0),
(403, 18, 4, '2019-07-11', 33, '19:00', '19:10', 4, 0),
(404, 18, 4, '2019-07-11', 33, '19:10', '19:20', 4, 0),
(405, 18, 4, '2019-07-11', 33, '19:20', '19:30', 4, 0),
(406, 18, 4, '2019-07-11', 33, '19:30', '19:40', 4, 0),
(407, 18, 4, '2019-07-11', 33, '19:40', '19:50', 4, 0),
(408, 18, 4, '2019-07-11', 33, '19:50', '20:00', 4, 0),
(409, 18, 4, '2019-07-11', 33, '20:00', '20:10', 4, 0),
(410, 18, 4, '2019-07-11', 33, '20:10', '20:20', 4, 0),
(411, 18, 4, '2019-07-11', 33, '20:20', '20:30', 4, 0),
(412, 18, 4, '2019-07-11', 33, '09:00', '09:10', 3, 0),
(413, 18, 4, '2019-07-11', 33, '09:10', '09:20', 3, 0),
(414, 18, 4, '2019-07-11', 33, '09:20', '09:30', 3, 0),
(415, 18, 4, '2019-07-11', 33, '09:30', '09:40', 4, 0),
(416, 18, 4, '2019-07-11', 33, '09:40', '09:50', 4, 0),
(417, 18, 4, '2019-07-11', 33, '09:50', '10:00', 4, 0),
(418, 18, 4, '2019-07-11', 33, '10:00', '10:10', 3, 0),
(419, 18, 4, '2019-07-11', 33, '10:10', '10:20', 4, 0),
(420, 18, 4, '2019-07-11', 33, '10:20', '10:30', 4, 0),
(421, 18, 4, '2019-07-11', 33, '10:30', '10:40', 2, 0),
(422, 18, 4, '2019-07-11', 33, '10:40', '10:50', 3, 0),
(423, 18, 4, '2019-07-11', 33, '10:50', '11:00', 4, 0),
(424, 18, 4, '2019-07-11', 33, '11:00', '11:10', 4, 0),
(425, 18, 4, '2019-07-11', 33, '11:10', '11:20', 4, 0),
(426, 18, 4, '2019-07-11', 33, '11:20', '11:30', 4, 0),
(427, 18, 4, '2019-07-11', 33, '12:30', '12:40', 4, 0),
(428, 18, 4, '2019-07-11', 33, '12:40', '12:50', 4, 0),
(429, 18, 4, '2019-07-11', 33, '12:50', '13:00', 4, 0),
(430, 18, 4, '2019-07-11', 33, '13:00', '13:10', 4, 0),
(431, 18, 4, '2019-07-11', 33, '13:10', '13:20', 4, 0),
(432, 18, 4, '2019-07-11', 33, '13:20', '13:30', 4, 0),
(433, 18, 4, '2019-07-11', 33, '13:30', '13:40', 4, 0),
(434, 18, 4, '2019-07-11', 33, '13:40', '13:50', 4, 0),
(435, 18, 4, '2019-07-11', 33, '13:50', '14:00', 4, 0),
(436, 18, 4, '2019-07-11', 33, '14:00', '14:10', 4, 0),
(437, 18, 4, '2019-07-11', 33, '14:10', '14:20', 4, 0),
(438, 18, 4, '2019-07-11', 33, '14:20', '14:30', 4, 0),
(439, 18, 4, '2019-07-11', 33, '18:30', '18:40', 4, 0),
(440, 18, 4, '2019-07-11', 33, '18:40', '18:50', 4, 0),
(441, 18, 4, '2019-07-11', 33, '18:50', '19:00', 4, 0),
(442, 18, 4, '2019-07-11', 33, '19:00', '19:10', 4, 0),
(443, 18, 4, '2019-07-11', 33, '19:10', '19:20', 4, 0),
(444, 18, 4, '2019-07-11', 33, '19:20', '19:30', 4, 0),
(445, 18, 4, '2019-07-11', 33, '19:30', '19:40', 4, 0),
(446, 18, 4, '2019-07-11', 33, '19:40', '19:50', 4, 0),
(447, 18, 4, '2019-07-11', 33, '19:50', '20:00', 4, 0),
(448, 18, 4, '2019-07-11', 33, '20:00', '20:10', 4, 0),
(449, 18, 4, '2019-07-11', 33, '20:10', '20:20', 4, 0),
(450, 18, 4, '2019-07-11', 33, '20:20', '20:30', 4, 0),
(451, 18, 4, '2019-08-15', 33, '09:00', '09:10', 3, 0),
(452, 18, 4, '2019-08-15', 33, '09:10', '09:20', 3, 0),
(453, 18, 4, '2019-08-15', 33, '09:20', '09:30', 3, 0),
(454, 18, 4, '2019-08-15', 33, '09:30', '09:40', 3, 0),
(455, 18, 4, '2019-08-15', 33, '09:40', '09:50', 3, 0),
(456, 18, 4, '2019-08-15', 33, '09:50', '10:00', 3, 0),
(457, 18, 4, '2019-08-15', 33, '10:00', '10:10', 3, 0),
(458, 18, 4, '2019-08-15', 33, '10:10', '10:20', 3, 0),
(459, 18, 4, '2019-08-15', 33, '10:20', '10:30', 3, 0),
(460, 18, 4, '2019-08-15', 33, '10:30', '10:40', 3, 0),
(461, 18, 4, '2019-08-15', 33, '10:40', '10:50', 3, 0),
(462, 18, 4, '2019-08-15', 33, '10:50', '11:00', 3, 0),
(463, 18, 4, '2019-08-15', 33, '11:00', '11:10', 3, 0),
(464, 18, 4, '2019-08-15', 33, '11:10', '11:20', 3, 0),
(465, 18, 4, '2019-08-15', 33, '11:20', '11:30', 3, 0),
(466, 18, 4, '2019-08-15', 33, '12:30', '12:40', 3, 0),
(467, 18, 4, '2019-08-15', 33, '12:40', '12:50', 3, 0),
(468, 18, 4, '2019-08-15', 33, '12:50', '13:00', 3, 0),
(469, 18, 4, '2019-08-15', 33, '13:00', '13:10', 3, 0),
(470, 18, 4, '2019-08-15', 33, '13:10', '13:20', 3, 0),
(471, 18, 4, '2019-08-15', 33, '13:20', '13:30', 4, 0),
(472, 18, 4, '2019-08-15', 33, '13:30', '13:40', 4, 0),
(473, 18, 4, '2019-08-15', 33, '13:40', '13:50', 4, 0),
(474, 18, 4, '2019-08-15', 33, '13:50', '14:00', 4, 0),
(475, 18, 4, '2019-08-15', 33, '14:00', '14:10', 4, 0),
(476, 18, 4, '2019-08-15', 33, '14:10', '14:20', 4, 0),
(477, 18, 4, '2019-08-15', 33, '14:20', '14:30', 4, 0),
(478, 18, 4, '2019-08-15', 33, '18:30', '18:40', 4, 0),
(479, 18, 4, '2019-08-15', 33, '18:40', '18:50', 4, 0),
(480, 18, 4, '2019-08-15', 33, '18:50', '19:00', 4, 0),
(481, 18, 4, '2019-08-15', 33, '19:00', '19:10', 4, 0),
(482, 18, 4, '2019-08-15', 33, '19:10', '19:20', 4, 0),
(483, 18, 4, '2019-08-15', 33, '19:20', '19:30', 4, 0),
(484, 18, 4, '2019-08-15', 33, '19:30', '19:40', 4, 0),
(485, 18, 4, '2019-08-15', 33, '19:40', '19:50', 4, 0),
(486, 18, 4, '2019-08-15', 33, '19:50', '20:00', 4, 0),
(487, 18, 4, '2019-08-15', 33, '20:00', '20:10', 4, 0),
(488, 18, 4, '2019-08-15', 33, '20:10', '20:20', 4, 0),
(489, 18, 4, '2019-08-15', 33, '20:20', '20:30', 4, 0),
(490, 18, 4, '2019-08-15', 33, '09:00', '09:10', 3, 0),
(491, 18, 4, '2019-08-15', 33, '09:10', '09:20', 3, 0),
(492, 18, 4, '2019-08-15', 33, '09:20', '09:30', 3, 0),
(493, 18, 4, '2019-08-15', 33, '09:30', '09:40', 3, 0),
(494, 18, 4, '2019-08-15', 33, '09:40', '09:50', 3, 0),
(495, 18, 4, '2019-08-15', 33, '09:50', '10:00', 3, 0),
(496, 18, 4, '2019-08-15', 33, '10:00', '10:10', 3, 0),
(497, 18, 4, '2019-08-15', 33, '10:10', '10:20', 3, 0),
(498, 18, 4, '2019-08-15', 33, '10:20', '10:30', 3, 0),
(499, 18, 4, '2019-08-15', 33, '10:30', '10:40', 3, 0),
(500, 18, 4, '2019-08-15', 33, '10:40', '10:50', 3, 0),
(501, 18, 4, '2019-08-15', 33, '10:50', '11:00', 3, 0),
(502, 18, 4, '2019-08-15', 33, '11:00', '11:10', 3, 0),
(503, 18, 4, '2019-08-15', 33, '11:10', '11:20', 3, 0),
(504, 18, 4, '2019-08-15', 33, '11:20', '11:30', 3, 0),
(505, 18, 4, '2019-08-15', 33, '12:30', '12:40', 3, 0),
(506, 18, 4, '2019-08-15', 33, '12:40', '12:50', 3, 0),
(507, 18, 4, '2019-08-15', 33, '12:50', '13:00', 3, 0),
(508, 18, 4, '2019-08-15', 33, '13:00', '13:10', 3, 0),
(509, 18, 4, '2019-08-15', 33, '13:10', '13:20', 3, 0),
(510, 18, 4, '2019-08-15', 33, '13:20', '13:30', 4, 0),
(511, 18, 4, '2019-08-15', 33, '13:30', '13:40', 4, 0),
(512, 18, 4, '2019-08-15', 33, '13:40', '13:50', 4, 0),
(513, 18, 4, '2019-08-15', 33, '13:50', '14:00', 4, 0),
(514, 18, 4, '2019-08-15', 33, '14:00', '14:10', 4, 0),
(515, 18, 4, '2019-08-15', 33, '14:10', '14:20', 4, 0),
(516, 18, 4, '2019-08-15', 33, '14:20', '14:30', 4, 0),
(517, 18, 4, '2019-08-15', 33, '18:30', '18:40', 4, 0),
(518, 18, 4, '2019-08-15', 33, '18:40', '18:50', 4, 0),
(519, 18, 4, '2019-08-15', 33, '18:50', '19:00', 4, 0),
(520, 18, 4, '2019-08-15', 33, '19:00', '19:10', 4, 0),
(521, 18, 4, '2019-08-15', 33, '19:10', '19:20', 4, 0),
(522, 18, 4, '2019-08-15', 33, '19:20', '19:30', 4, 0),
(523, 18, 4, '2019-08-15', 33, '19:30', '19:40', 4, 0),
(524, 18, 4, '2019-08-15', 33, '19:40', '19:50', 1, 0),
(525, 18, 4, '2019-08-15', 33, '19:50', '20:00', 1, 0),
(526, 18, 4, '2019-08-15', 33, '20:00', '20:10', 2, 0),
(527, 18, 4, '2019-08-15', 33, '20:10', '20:20', 2, 0),
(528, 18, 4, '2019-08-15', 33, '20:20', '20:30', 1, 0),
(529, 18, 4, '2019-09-12', 33, '09:00', '09:10', 2, 0),
(530, 18, 4, '2019-09-12', 33, '09:10', '09:20', 2, 0),
(531, 18, 4, '2019-09-12', 33, '09:20', '09:30', 2, 0),
(532, 18, 4, '2019-09-12', 33, '09:30', '09:40', 2, 0),
(533, 18, 4, '2019-09-12', 33, '09:40', '09:50', 2, 0),
(534, 18, 4, '2019-09-12', 33, '09:50', '10:00', 2, 0),
(535, 18, 4, '2019-09-12', 33, '10:00', '10:10', 2, 0),
(536, 18, 4, '2019-09-12', 33, '10:10', '10:20', 2, 0),
(537, 18, 4, '2019-09-12', 33, '10:20', '10:30', 2, 0),
(538, 18, 4, '2019-09-12', 33, '10:30', '10:40', 2, 0),
(539, 18, 4, '2019-09-12', 33, '10:40', '10:50', 2, 0),
(540, 18, 4, '2019-09-12', 33, '10:50', '11:00', 2, 0),
(541, 18, 4, '2019-09-12', 33, '11:00', '11:10', 2, 0),
(542, 18, 4, '2019-09-12', 33, '11:10', '11:20', 2, 0),
(543, 18, 4, '2019-09-12', 33, '11:20', '11:30', 2, 0),
(544, 18, 4, '2019-09-12', 33, '12:30', '12:40', 2, 0),
(545, 18, 4, '2019-09-12', 33, '12:40', '12:50', 2, 0),
(546, 18, 4, '2019-09-12', 33, '12:50', '13:00', 2, 0),
(547, 18, 4, '2019-09-12', 33, '13:00', '13:10', 2, 0),
(548, 18, 4, '2019-09-12', 33, '13:10', '13:20', 2, 0),
(549, 18, 4, '2019-09-12', 33, '13:20', '13:30', 2, 0),
(550, 18, 4, '2019-09-12', 33, '13:30', '13:40', 2, 0),
(551, 18, 4, '2019-09-12', 33, '13:40', '13:50', 2, 0),
(552, 18, 4, '2019-09-12', 33, '13:50', '14:00', 2, 0),
(553, 18, 4, '2019-09-12', 33, '14:00', '14:10', 2, 0),
(554, 18, 4, '2019-09-12', 33, '14:10', '14:20', 2, 0),
(555, 18, 4, '2019-09-12', 33, '14:20', '14:30', 2, 0),
(556, 18, 4, '2019-09-12', 33, '18:30', '18:40', 2, 0),
(557, 18, 4, '2019-09-12', 33, '18:40', '18:50', 2, 0),
(558, 18, 4, '2019-09-12', 33, '18:50', '19:00', 2, 0),
(559, 18, 4, '2019-09-12', 33, '19:00', '19:10', 2, 0),
(560, 18, 4, '2019-09-12', 33, '19:10', '19:20', 2, 0),
(561, 18, 4, '2019-09-12', 33, '19:20', '19:30', 2, 0),
(562, 18, 4, '2019-09-12', 33, '19:30', '19:40', 2, 0),
(563, 18, 4, '2019-09-12', 33, '19:40', '19:50', 2, 0),
(564, 18, 4, '2019-09-12', 33, '19:50', '20:00', 2, 0),
(565, 18, 4, '2019-09-12', 33, '20:00', '20:10', 2, 0),
(566, 18, 4, '2019-09-12', 33, '20:10', '20:20', 2, 0),
(567, 18, 4, '2019-09-12', 33, '20:20', '20:30', 2, 0),
(568, 18, 5, '2019-09-13', 33, '09:00', '09:10', 3, 0),
(569, 18, 5, '2019-09-13', 33, '09:10', '09:20', 3, 0),
(570, 18, 5, '2019-09-13', 33, '09:20', '09:30', 3, 0),
(571, 18, 5, '2019-09-13', 33, '09:30', '09:40', 3, 0),
(572, 18, 5, '2019-09-13', 33, '09:40', '09:50', 3, 0),
(573, 18, 5, '2019-09-13', 33, '09:50', '10:00', 3, 0),
(574, 18, 5, '2019-09-13', 33, '10:00', '10:10', 3, 0),
(575, 18, 5, '2019-09-13', 33, '10:10', '10:20', 3, 0),
(576, 18, 5, '2019-09-13', 33, '10:20', '10:30', 3, 0),
(577, 18, 5, '2019-09-13', 33, '10:30', '10:40', 3, 0),
(578, 18, 5, '2019-09-13', 33, '10:40', '10:50', 3, 0),
(579, 18, 5, '2019-09-13', 33, '10:50', '11:00', 3, 0),
(580, 18, 5, '2019-09-13', 33, '11:00', '11:10', 3, 0),
(581, 18, 5, '2019-09-13', 33, '11:10', '11:20', 3, 0),
(582, 18, 5, '2019-09-13', 33, '11:20', '11:30', 3, 0),
(583, 18, 5, '2019-09-13', 33, '12:30', '12:40', 3, 0),
(584, 18, 5, '2019-09-13', 33, '12:40', '12:50', 3, 0),
(585, 18, 5, '2019-09-13', 33, '12:50', '13:00', 3, 0),
(586, 18, 5, '2019-09-13', 33, '13:00', '13:10', 3, 0),
(587, 18, 5, '2019-09-13', 33, '13:10', '13:20', 3, 0),
(588, 18, 5, '2019-09-13', 33, '13:20', '13:30', 3, 0),
(589, 18, 5, '2019-09-13', 33, '13:30', '13:40', 3, 0),
(590, 18, 5, '2019-09-13', 33, '13:40', '13:50', 3, 0),
(591, 18, 5, '2019-09-13', 33, '13:50', '14:00', 3, 0),
(592, 18, 5, '2019-09-13', 33, '14:00', '14:10', 3, 0),
(593, 18, 5, '2019-09-13', 33, '14:10', '14:20', 3, 0),
(594, 18, 5, '2019-09-13', 33, '14:20', '14:30', 3, 0),
(595, 18, 5, '2019-09-13', 33, '18:30', '18:40', 3, 0),
(596, 18, 5, '2019-09-13', 33, '18:40', '18:50', 3, 0),
(597, 18, 5, '2019-09-13', 33, '18:50', '19:00', 3, 0),
(598, 18, 5, '2019-09-13', 33, '19:00', '19:10', 3, 0),
(599, 18, 5, '2019-09-13', 33, '19:10', '19:20', 3, 0),
(600, 18, 5, '2019-09-13', 33, '19:20', '19:30', 3, 0),
(601, 18, 5, '2019-09-13', 33, '19:30', '19:40', 3, 0),
(602, 18, 5, '2019-09-13', 33, '19:40', '19:50', 3, 0),
(603, 18, 5, '2019-09-13', 33, '19:50', '20:00', 3, 0),
(604, 18, 5, '2019-09-13', 33, '20:00', '20:10', 3, 0),
(605, 18, 5, '2019-09-13', 33, '20:10', '20:20', 3, 0),
(606, 18, 5, '2019-09-13', 33, '20:20', '20:30', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `docterdayslot`
--

CREATE TABLE `docterdayslot` (
  `id` int(11) NOT NULL,
  `docterid` int(11) NOT NULL,
  `clinicname_id` int(11) NOT NULL,
  `clinic_dayid` int(11) NOT NULL,
  `consulation_time_from` varchar(255) NOT NULL,
  `consulation_time_to` varchar(255) NOT NULL,
  `consulation_duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `docterdayslot`
--

INSERT INTO `docterdayslot` (`id`, `docterid`, `clinicname_id`, `clinic_dayid`, `consulation_time_from`, `consulation_time_to`, `consulation_duration`) VALUES
(1, 1, 1, 1, '10:00', '13:00', '15'),
(2, 1, 1, 1, '15:00', '16:00', '15'),
(3, 1, 1, 2, '10:00', '12:00', '15'),
(4, 1, 1, 4, '12:00', '15:00', '15'),
(5, 1, 2, 2, '12:00', '13:00', '15'),
(6, 1, 2, 3, '10:00', '12:00', '15'),
(7, 1, 2, 3, '15:00', '17:00', '15'),
(8, 1, 2, 5, '11:00', '13:00', '15'),
(9, 1, 2, 5, '15:00', '16:00', '15'),
(10, 1, 2, 6, '11:00', '14:00', '15'),
(11, 1, 2, 4, '15:00', '16:00', '15'),
(12, 1, 1, 3, '17:00', '18:00', '15'),
(13, 3, 3, 1, '10:00', '12:30', '15'),
(14, 3, 3, 1, '13:00', '15:00', '15'),
(15, 3, 3, 3, '10:00', '13:00', '15'),
(16, 3, 3, 5, '11:00', '14:00', '15'),
(17, 2, 4, 3, '15:00', '17:00', '15'),
(18, 2, 5, 2, '10:00', '11:00', '15'),
(19, 2, 5, 2, '17:00', '18:00', '15'),
(20, 2, 5, 6, '10:00', '11:00', '20'),
(21, 4, 6, 6, '17:30', '20:30', '10'),
(22, 5, 7, 1, '08:00', '09:00', ''),
(23, 5, 7, 3, '09:30', '10:30', ''),
(24, 4, 8, 1, '01:30', '02:30', '10'),
(25, 5, 7, 4, '17:00', '18:00', '20 min'),
(26, 5, 7, 5, '07:00', '08:00', '10'),
(27, 5, 7, 6, '05:00', '06:00', '5'),
(28, 5, 9, 1, '01:00', '02:00', '10'),
(29, 5, 9, 2, '00:00', '01:00', '10'),
(30, 5, 9, 2, '03:30', '04:30', '10'),
(31, 6, 11, 1, '11:00', '14:00', '15'),
(32, 6, 11, 1, '17:00', '20:30', '15'),
(33, 6, 11, 2, '11:00', '14:00', '15'),
(34, 6, 11, 2, '17:00', '20:30', '15'),
(35, 6, 11, 3, '11:00', '14:30', '15'),
(36, 6, 11, 3, '17:00', '20:30', '15'),
(37, 6, 11, 4, '11:00', '14:30', '15'),
(38, 6, 11, 4, '17:00', '20:30', '15'),
(39, 6, 11, 5, '11:00', '14:30', '15'),
(40, 6, 11, 5, '05:00', '08:30', '15'),
(41, 8, 12, 1, '11:00', '14:30', '15'),
(42, 8, 12, 1, '17:00', '20:30', '15'),
(43, 8, 12, 2, '11:00', '14:30', '15'),
(44, 8, 12, 2, '17:00', '20:30', '15'),
(45, 8, 12, 3, '11:00', '14:30', '15'),
(46, 8, 12, 3, '17:00', '20:30', '15'),
(47, 8, 12, 4, '11:00', '14:30', '15'),
(48, 8, 12, 4, '17:00', '20:30', '15'),
(49, 8, 12, 5, '11:00', '14:30', '15'),
(50, 8, 12, 5, '17:00', '20:30', '15'),
(51, 8, 13, 6, '11:00', '15:00', '15'),
(52, 8, 13, 6, '17:00', '20:30', '15'),
(53, 8, 13, 7, '11:00', '14:00', '15'),
(54, 9, 14, 1, '11:00', '14:30', '10'),
(55, 9, 14, 1, '17:30', '20:30', '10'),
(56, 9, 14, 2, '11:00', '14:30', '10'),
(57, 9, 14, 2, '17:30', '20:30', '10'),
(58, 9, 14, 3, '11:00', '14:30', '10'),
(59, 9, 14, 3, '17:30', '20:30', '10'),
(60, 9, 14, 4, '11:00', '14:30', '10'),
(61, 9, 14, 4, '17:30', '20:30', '10'),
(62, 9, 14, 5, '11:00', '14:30', '10'),
(63, 9, 14, 5, '17:30', '20:30', '10'),
(64, 10, 15, 1, '11:00', '14:30', '10'),
(65, 10, 15, 1, '17:00', '20:30', '10'),
(66, 10, 15, 2, '11:00', '14:30', '10'),
(67, 10, 15, 2, '17:00', '20:30', '10'),
(68, 10, 15, 3, '11:00', '14:30', '10'),
(69, 10, 15, 3, '17:00', '20:30', '10'),
(70, 10, 15, 4, '11:00', '14:30', '10'),
(71, 10, 15, 4, '17:00', '20:30', '10'),
(72, 10, 15, 5, '11:00', '14:30', '10'),
(73, 10, 15, 5, '17:00', '20:30', '10'),
(74, 11, 16, 1, '11:00', '14:30', '15'),
(75, 11, 16, 1, '17:30', '20:30', '15'),
(76, 11, 16, 2, '11:00', '14:30', '15'),
(77, 11, 16, 2, '17:30', '20:30', '15'),
(78, 11, 16, 3, '11:00', '14:30', '15'),
(79, 11, 16, 3, '17:30', '20:30', '15'),
(80, 11, 16, 4, '11:00', '14:30', '15'),
(81, 11, 16, 4, '17:30', '20:30', '15'),
(82, 11, 16, 5, '11:00', '14:30', '15'),
(83, 11, 16, 5, '17:30', '20:30', '15'),
(84, 11, 17, 6, '11:30', '15:30', '15'),
(85, 11, 17, 6, '17:30', '20:30', '15'),
(86, 11, 17, 7, '10:30', '12:30', '15'),
(91, 12, 22, 1, '02:00', '04:00', '5'),
(92, 12, 22, 1, '01:00', '03:00', '10'),
(93, 12, 24, 2, '04:00', '05:00', '6'),
(94, 12, 25, 2, '00:00', '02:00', '10'),
(95, 12, 25, 2, '03:00', '06:00', '15'),
(96, 13, 26, 1, '11:00', '14:00', '10'),
(97, 13, 26, 1, '17:00', '20:30', '10'),
(98, 13, 26, 2, '11:00', '14:00', '10'),
(99, 13, 26, 2, '17:00', '20:30', '10'),
(100, 13, 26, 3, '11:00', '14:00', '10'),
(101, 13, 26, 3, '17:00', '20:30', '10'),
(102, 13, 26, 4, '11:00', '14:00', '10'),
(103, 13, 26, 4, '17:00', '20:30', '10'),
(104, 13, 26, 5, '11:00', '14:00', '10'),
(105, 13, 26, 5, '17:00', '20:30', '10'),
(106, 13, 27, 6, '15:00', '20:00', '10'),
(107, 13, 27, 7, '11:00', '14:00', '10'),
(108, 15, 28, 3, '12:00', '14:00', '15'),
(109, 15, 28, 3, '17:00', '19:00', '15'),
(110, 15, 28, 4, '11:00', '13:00', '15'),
(111, 15, 28, 4, '15:00', '17:00', '15'),
(112, 15, 28, 4, '18:00', '21:00', '15'),
(113, 12, 29, 6, '00:00', '01:00', '10'),
(114, 12, 29, 6, '16:30', '17:30', '10'),
(115, 12, 29, 6, '20:00', '21:00', '10'),
(116, 12, 29, 7, '08:00', '09:00', '10'),
(117, 12, 29, 7, '12:00', '13:00', '10'),
(118, 12, 29, 7, '13:30', '14:30', '10'),
(119, 16, 30, 1, '08:00', '12:30', '10'),
(120, 16, 30, 1, '13:00', '16:00', '10'),
(121, 16, 30, 1, '17:00', '19:00', '10'),
(122, 17, 31, 1, '11:00', '14:30', '10'),
(123, 17, 31, 1, '17:30', '20:00', '10'),
(124, 17, 31, 2, '11:00', '14:30', '10'),
(125, 17, 31, 2, '17:30', '20:00', '10'),
(126, 17, 31, 3, '11:00', '14:30', '10'),
(127, 17, 31, 3, '17:30', '20:00', '10'),
(128, 17, 31, 4, '11:00', '14:30', '10'),
(129, 17, 31, 4, '17:30', '20:00', '10'),
(130, 17, 31, 5, '11:00', '14:30', '10'),
(131, 17, 31, 5, '17:30', '20:00', '10'),
(132, 17, 32, 6, '12:30', '15:00', '10'),
(133, 17, 32, 6, '16:00', '20:00', '10'),
(134, 17, 32, 0, '11:00', '14:30', '10'),
(135, 17, 32, 0, '16:00', '20:00', '10'),
(136, 18, 33, 1, '09:00', '11:30', '10'),
(137, 18, 33, 1, '12:30', '14:30', '10'),
(138, 18, 33, 1, '18:00', '20:00', '10'),
(139, 18, 33, 2, '09:00', '11:30', '10'),
(140, 18, 33, 2, '00:30', '02:30', '10'),
(141, 18, 33, 2, '18:30', '20:30', '10'),
(142, 18, 33, 3, '09:00', '11:30', '10'),
(143, 18, 33, 3, '12:30', '14:30', '10'),
(144, 18, 33, 3, '18:30', '20:30', '10'),
(145, 18, 33, 4, '09:00', '11:30', '10'),
(146, 18, 33, 4, '12:30', '14:30', '10'),
(147, 18, 33, 4, '18:30', '20:30', '10'),
(148, 18, 33, 5, '09:00', '11:30', '10'),
(149, 18, 33, 5, '12:30', '14:30', '10'),
(150, 18, 33, 5, '18:30', '20:30', '10'),
(151, 18, 33, 6, '09:00', '11:30', '10'),
(152, 18, 33, 6, '12:30', '14:30', '10'),
(153, 18, 33, 6, '18:30', '20:30', '10');

-- --------------------------------------------------------

--
-- Table structure for table `doctors_info`
--

CREATE TABLE `doctors_info` (
  `docID` int(11) NOT NULL,
  `regdoc_id` varchar(255) CHARACTER SET latin1 NOT NULL,
  `doctorname1` varchar(255) CHARACTER SET latin1 NOT NULL,
  `doctorname2` varchar(255) NOT NULL,
  `doctorname3` varchar(255) NOT NULL,
  `doctorname4` varchar(255) NOT NULL,
  `doctorspecialities` varchar(500) NOT NULL,
  `address` text CHARACTER SET latin1 NOT NULL,
  `doctercity` varchar(255) NOT NULL,
  `docterstate` varchar(255) NOT NULL,
  `doctercountry` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `qualifaction` varchar(255) CHARACTER SET latin1 NOT NULL,
  `docterexperience` varchar(255) NOT NULL,
  `countryCode` varchar(20) NOT NULL,
  `areaCode` varchar(20) NOT NULL,
  `doctorphone` varchar(255) CHARACTER SET latin1 NOT NULL,
  `doctormobile1` varchar(255) NOT NULL,
  `doctormobile2` varchar(255) NOT NULL,
  `doctorimage` varchar(255) NOT NULL,
  `doctoremail` varchar(255) CHARACTER SET latin1 NOT NULL,
  `drbank_details` text NOT NULL,
  `dusername` varchar(255) CHARACTER SET latin1 NOT NULL,
  `dpassword` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors_info`
--

INSERT INTO `doctors_info` (`docID`, `regdoc_id`, `doctorname1`, `doctorname2`, `doctorname3`, `doctorname4`, `doctorspecialities`, `address`, `doctercity`, `docterstate`, `doctercountry`, `zipcode`, `qualifaction`, `docterexperience`, `countryCode`, `areaCode`, `doctorphone`, `doctormobile1`, `doctormobile2`, `doctorimage`, `doctoremail`, `drbank_details`, `dusername`, `dpassword`) VALUES
(18, 'GHdoc_118', 'Dr.', 'Amandeep', '', 'Madan', 'MEDICINE', 'New Shiva ji nagar', 'LUDHIANA', 'Punjab', 'India', '141008', 'MD', '5 YEARS', '91', '0161', '253253', '9417293066', '', '1555327043-img_20180826_141201422.jpg', 'amandeep.madaan@outlook.in', '', 'amandeep', 'amandeep1');

-- --------------------------------------------------------

--
-- Table structure for table `drconsult_type`
--

CREATE TABLE `drconsult_type` (
  `id` int(11) NOT NULL,
  `docterid` int(11) NOT NULL,
  `consult_type` int(11) NOT NULL,
  `consult_inr` int(11) NOT NULL,
  `consult_usd` int(11) NOT NULL,
  `consult_valid` int(11) NOT NULL,
  `consult_day` varchar(255) NOT NULL,
  `consult_number` varchar(255) NOT NULL,
  `consult_Frsttime` varchar(255) NOT NULL,
  `consult_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drconsult_type`
--

INSERT INTO `drconsult_type` (`id`, `docterid`, `consult_type`, `consult_inr`, `consult_usd`, `consult_valid`, `consult_day`, `consult_number`, `consult_Frsttime`, `consult_date`) VALUES
(1, 1, 1, 120, 50, 1, '5', '', '200', '2017-05-21 00:00:00'),
(2, 1, 2, 150, 100, 1, '', '2', '250', '2017-04-21 11:37:01'),
(3, 1, 4, 200, 100, 1, '4', '', '300', '2017-04-21 11:37:02'),
(4, 2, 1, 100, 50, 1, '5', '', '200', '2017-06-02 15:23:21'),
(5, 2, 2, 120, 100, 1, '', '2', '300', '2017-06-02 15:23:21'),
(6, 2, 4, 150, 110, 1, '2', '', '100', '2017-06-02 15:23:21'),
(7, 4, 1, 100, 20, 1, '2', '', '', '2017-06-03 16:31:09'),
(8, 4, 2, 500, 0, 0, '', '', '', '2017-06-03 16:31:09'),
(9, 4, 4, 0, 0, 0, '', '', '', '2017-06-03 16:31:09'),
(10, 5, 1, 200, 200, 0, '', '10', '', '2018-04-26 13:44:54'),
(11, 5, 2, 0, 0, 0, '', '', '', '2018-04-26 13:44:54'),
(12, 5, 4, 0, 0, 0, '', '', '', '2018-04-26 13:44:54'),
(13, 6, 1, 200, 10, 1, '7', '', '500', '2018-04-26 18:01:15'),
(14, 6, 2, 200, 10, 1, '7', '', '500', '2018-04-26 18:01:15'),
(15, 6, 4, 200, 10, 1, '7', '', '500', '2018-04-26 18:01:15'),
(16, 8, 1, 200, 10, 1, '7', '', '300', '2018-04-28 12:06:04'),
(17, 8, 2, 200, 10, 1, '', '3', '300', '2018-04-28 12:06:04'),
(18, 8, 4, 200, 10, 1, '5', '', '300', '2018-04-28 12:06:04'),
(19, 9, 1, 200, 10, 1, '7', '', '200', '2018-05-19 12:11:20'),
(20, 9, 2, 200, 10, 1, '', '3', '200', '2018-05-19 12:11:20'),
(21, 9, 4, 200, 10, 1, '7', '', '200', '2018-05-19 12:11:20'),
(22, 10, 1, 200, 10, 1, '7', '', '', '2018-05-29 18:34:11'),
(23, 10, 2, 200, 10, 1, '', '3', '', '2018-05-29 18:34:11'),
(24, 10, 4, 0, 0, 0, '', '', '', '2018-05-29 18:34:11'),
(25, 11, 1, 200, 10, 1, '7', '', '500', '2018-06-16 11:57:19'),
(26, 11, 2, 200, 10, 1, '7', '', '500', '2018-06-16 11:57:19'),
(27, 11, 4, 200, 10, 1, '7', '', '500', '2018-06-16 11:57:19'),
(28, 7, 1, 200, 20, 0, '', '', '10', '2018-06-23 16:10:58'),
(29, 7, 2, 0, 0, 0, '', '', '', '2018-06-23 16:10:58'),
(30, 7, 4, 0, 0, 0, '', '', '', '2018-06-23 16:10:58'),
(34, 12, 1, 200, 20, 0, '', '', '', '2018-07-04 12:56:09'),
(35, 12, 2, 100, 10, 0, '', '', '', '2018-07-04 12:56:09'),
(36, 12, 4, 100, 10, 0, '', '', '', '2018-07-04 12:56:09'),
(37, 13, 1, 200, 10, 1, '7', '', '500', '2018-07-24 14:41:38'),
(38, 13, 2, 200, 10, 1, '', '3', '500', '2018-07-24 14:41:38'),
(39, 13, 4, 200, 10, 1, '7', '', '500', '2018-07-24 14:41:38'),
(40, 14, 1, 500, 0, 1, '7 days', '2', '1500', '2018-07-25 20:28:02'),
(41, 14, 2, 300, 0, 1, '7 days', '2', '1500', '2018-07-25 20:28:02'),
(42, 14, 4, 400, 0, 1, '7 days', '', '1500', '2018-07-25 20:28:02'),
(43, 15, 1, 500, 50, 1, '7', '', '', '2018-08-01 21:28:45'),
(44, 15, 2, 400, 50, 1, '', '3', '', '2018-08-01 21:28:45'),
(45, 15, 4, 0, 0, 0, '', '', '', '2018-08-01 21:28:45'),
(46, 16, 1, 100, 10, 1, '10', '', '200', '2018-08-29 17:26:41'),
(47, 16, 2, 100, 10, 0, '', '', '150', '2018-08-29 17:26:41'),
(48, 16, 4, 100, 10, 0, '', '', '150', '2018-08-29 17:26:41'),
(49, 17, 1, 200, 10, 1, '7', '', '500', '2019-03-25 13:20:04'),
(50, 17, 2, 200, 10, 1, '7', '', '500', '2019-03-25 13:20:04'),
(51, 17, 4, 200, 10, 1, '7', '', '500', '2019-03-25 13:20:04'),
(52, 18, 1, 700, 10, 1, '15', '', '', '2019-04-15 11:19:53'),
(53, 18, 2, 600, 8, 1, '30', '', '', '2019-04-15 11:19:53'),
(54, 18, 4, 900, 15, 1, '30', '', '', '2019-04-15 11:19:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_group`
--
ALTER TABLE `admin_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_links`
--
ALTER TABLE `backend_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_appointment`
--
ALTER TABLE `booked_appointment`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dateslot_detail`
--
ALTER TABLE `dateslot_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `docterdayslot`
--
ALTER TABLE `docterdayslot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors_info`
--
ALTER TABLE `doctors_info`
  ADD PRIMARY KEY (`docID`);

--
-- Indexes for table `drconsult_type`
--
ALTER TABLE `drconsult_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_group`
--
ALTER TABLE `admin_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `backend_links`
--
ALTER TABLE `backend_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `booked_appointment`
--
ALTER TABLE `booked_appointment`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dateslot_detail`
--
ALTER TABLE `dateslot_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- AUTO_INCREMENT for table `docterdayslot`
--
ALTER TABLE `docterdayslot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `doctors_info`
--
ALTER TABLE `doctors_info`
  MODIFY `docID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `drconsult_type`
--
ALTER TABLE `drconsult_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
