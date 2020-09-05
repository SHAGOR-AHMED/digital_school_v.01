-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2017 at 08:52 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_school_mss`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `details` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `details`, `image`) VALUES
(7, 'About shcool', '<p>Our undergraduates recently came up with this description of our School: &ldquo;The Small School That Thinks Big.&rdquo; It definitely fits. As you know, our School is the smallest school at Northwestern, but our goals are massive.</p>\n<p>We want no less than to improve all human learning and development &mdash; from birth to old age, from classrooms to workplaces, in families and communities. You can be proud that our faculty&rsquo;s cutting-edge research is developing new understandings and new approaches to learning that suit the realities of the 21st century. For example, major research projects are underway to investigate how to prevent dropout, how to engage students in science and how computer models can deepen learning.</p>\n<p>The disparities in education and development that trouble our society are problems that we seek to solve. In this regard, we work toward raising the level of teaching in underserved schools and inc<strong>reasing access to quality education and health services.</strong></p>\n<p><strong>Our students come to us with the desire to improve the world &mdash; whether in schools, human relationships, organizations or the policy arena. We don&rsquo;t disappoint them. We work to provide them with the tools to become change agents who can better the world. Above all, we give our students real-world experiences to translate academic learning into actual accomplishments. Specifically, a 10-week practicum in a workplace or school is a core undergraduate experience.</strong></p>\n<p>Our students appreciate the sense of community at SESP, and we want you to continue to feel part of that community. We encourage you to keep in touch with the new initiatives at the School of Education and Social Policy, to visit campus and participate in our events. Lifelong learning is a goal we all share.</p>\n<p>hello</p>\n<p>thi is test</p>\n<div id="spoon-plugin-kncgbdglledmjmpnikebkagnchfdehbm-2" style="display: none;">&nbsp;</div>', 'about2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `academic_cal`
--

CREATE TABLE IF NOT EXISTS `academic_cal` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `pdf_details` varchar(150) NOT NULL,
  `edate` date NOT NULL,
  `euser` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_cre`
--

CREATE TABLE IF NOT EXISTS `account_cre` (
  `id` int(11) NOT NULL,
  `accountid` bigint(20) NOT NULL,
  `acc_name` varchar(80) NOT NULL,
  `bank_name` varchar(150) DEFAULT NULL,
  `bank_type` tinyint(4) NOT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `add_balance`
--

CREATE TABLE IF NOT EXISTS `add_balance` (
  `baid` int(11) NOT NULL,
  `invoice_id` varchar(50) NOT NULL,
  `accountid` bigint(20) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `comment` text NOT NULL,
  `e_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `e_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` int(11) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `full_name`, `user_id`, `password`) VALUES
(1, 'mehedi hasan shamim', 'admin', '123'),
(2, 'humayun kabir', 'admin', '456');

-- --------------------------------------------------------

--
-- Table structure for table `admission_fee`
--

CREATE TABLE IF NOT EXISTS `admission_fee` (
  `id` int(11) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entry_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admission_info`
--

CREATE TABLE IF NOT EXISTS `admission_info` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `details` varchar(1500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admission_info`
--

INSERT INTO `admission_info` (`id`, `title`, `details`) VALUES
(2, 'Admission Information', 'Distinguished Visitors, welcome! It is indeed my great pleasure to invite you to visit the Official Website of National Defence College (NDC), Bangladesh. Please take a virtual tour to the most prestigious institution of its kind in Bangladesh. NDC is the  prestigious institution of its kind in Bangladesh. NDC is the premiermost prestigious institution of its kind in Official WebsiteDistinguished Visitors, welcome! It is indeed my great pleasure to invite you to visit the Official Website of National Defence College (NDC), Bangladesh. Please take a virtual tour to the most prestigious institution of its kind in Bangladesh. NDC is the  prestigious institution of its kind in Bangladesh. NDC is the premiermost prestigious institution of its kind in Official Website\r\n	  Distinguished Visitors, welcome! It is indeed my great pleasure to invite you to visit the Official Website of National Defence College (NDC), Bangladesh. Please take a virtual tour to the most prestigious institution of its kind in Bangladesh. NDC is the  prestigious institution of its kind in Bangladesh. NDC is the premiermost prestigious institution of its kind in Official WebsiteDistinguished Visitors, welcome! It is indeed my great pleasure to invite you to visit the Official Website of National Defence College (NDC), Bangladesh. Please take a virtual tour to the most prestigious institution of its kind in Bangladesh. NDC is the  prestigious institution of its kind in Bangladesh. NDC is the premiermost presti');

-- --------------------------------------------------------

--
-- Table structure for table `admission_result`
--

CREATE TABLE IF NOT EXISTS `admission_result` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `euser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `advancepayment`
--

CREATE TABLE IF NOT EXISTS `advancepayment` (
  `payid` int(11) NOT NULL,
  `trans_id` bigint(20) NOT NULL,
  `invoice_no` bigint(20) NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `sectionid` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `trans_catg` int(11) NOT NULL,
  `from_month` int(11) NOT NULL,
  `to_month` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `adv_year` int(11) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `euser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `application_catg`
--

CREATE TABLE IF NOT EXISTS `application_catg` (
  `appctgid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `years` year(4) NOT NULL,
  `min_gpa` decimal(5,2) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `application_fee`
--

CREATE TABLE IF NOT EXISTS `application_fee` (
  `id` int(11) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entry_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `application_tbl`
--

CREATE TABLE IF NOT EXISTS `application_tbl` (
  `id` int(11) NOT NULL,
  `appid` bigint(20) NOT NULL,
  `classid` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `fName` varchar(80) NOT NULL,
  `mName` varchar(80) NOT NULL,
  `Phone_n` varchar(15) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `gpa` decimal(5,2) NOT NULL,
  `pob` varchar(150) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `inst_name` varchar(150) NOT NULL,
  `par_address` varchar(255) DEFAULT NULL,
  `pre_address` varchar(255) NOT NULL,
  `gender` char(8) NOT NULL,
  `religion` char(20) NOT NULL,
  `blood_grou` varchar(5) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `trans_id` bigint(20) DEFAULT NULL,
  `image` text NOT NULL,
  `app_status` tinyint(4) NOT NULL DEFAULT '0',
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `application_tbl`
--

INSERT INTO `application_tbl` (`id`, `appid`, `classid`, `name`, `fName`, `mName`, `Phone_n`, `email`, `gpa`, `pob`, `dob`, `inst_name`, `par_address`, `pre_address`, `gender`, `religion`, `blood_grou`, `city`, `trans_id`, `image`, `app_status`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 2016062895, 24, 'Abdul Aziz', 'Md.Harun', 'Maya', '01879080606', 'a@gmail.com', '4.00', 'Feni', '2000-12-22', 'Academy', 'Feni', 'Feni', 'Male', 'Muslim', 'O-', 'FENI', NULL, 'Screenshot_2016-06-04-13-27-41.png', 0, '2016-06-07 17:46:17', '0', '2016-06-07 11:46:17', NULL),
(2, 2016068109, 1, 'AZIZ ', 'Harun', 'Maya', '01812937869', 'a@gmail.com', '4.00', 'feni', '2016-07-01', 'academy ', 'feni', 'feni', 'Male', 'Muslim', 'O-', 'FENI', NULL, 'Screenshot_2016-06-07-17-56-34.png', 0, '2016-06-07 18:04:00', '0', '2016-06-07 12:04:00', NULL),
(3, 2016062777, 3, 'Nadiya', 'Harun', 'Maya', '01812937869', 'ac@gmail.com', '4.00', 'feni', '2016-04-28', 'academy ', 'feni', 'feni', 'Male', 'Muslim', 'B+', 'NOAKHALI', NULL, 'Screenshot_2016-06-04-13-27-41.png', 0, '2016-06-07 18:14:20', '0', '2016-06-07 12:14:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_fees`
--

CREATE TABLE IF NOT EXISTS `app_fees` (
  `apfid` int(11) NOT NULL,
  `appid` bigint(20) NOT NULL,
  `invoice_no` varchar(30) NOT NULL,
  `method` varchar(80) NOT NULL,
  `trans_id` bigint(20) DEFAULT NULL,
  `accountid` bigint(20) NOT NULL,
  `saccid` bigint(20) NOT NULL,
  `purpose` varchar(150) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app_list`
--

CREATE TABLE IF NOT EXISTS `app_list` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `app_mac` varchar(30) NOT NULL,
  `app_name` varchar(150) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `registered_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app_validation`
--

CREATE TABLE IF NOT EXISTS `app_validation` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `license_key` varchar(500) NOT NULL,
  `duration` int(11) NOT NULL,
  `pc_user` varchar(80) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `license_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(11) NOT NULL,
  `stu_id` varchar(3000) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `section` varchar(30) DEFAULT NULL,
  `roll_no` varchar(2000) NOT NULL,
  `date` date DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfer`
--

CREATE TABLE IF NOT EXISTS `bank_transfer` (
  `id` int(11) NOT NULL,
  `invoice_no` bigint(20) NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `from_acc` varchar(30) NOT NULL,
  `to_acc` varchar(30) NOT NULL,
  `from_acc_balance` decimal(10,2) NOT NULL,
  `to_acc_balance` decimal(10,2) NOT NULL,
  `trans_balance` decimal(10,2) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `euser` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `billpay_catg`
--

CREATE TABLE IF NOT EXISTS `billpay_catg` (
  `bpid` int(11) NOT NULL,
  `billpay_type` varchar(150) NOT NULL,
  `e_date` datetime NOT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bk_payment`
--

CREATE TABLE IF NOT EXISTS `bk_payment` (
  `bkid` int(11) NOT NULL,
  `trans_id` bigint(20) NOT NULL,
  `method` varchar(80) NOT NULL,
  `accountid` bigint(20) NOT NULL,
  `sent_account` bigint(20) NOT NULL,
  `purpose` varchar(80) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` tinyint(2) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `book_catg`
--

CREATE TABLE IF NOT EXISTS `book_catg` (
  `bctg_id` int(11) NOT NULL,
  `catg_type` varchar(80) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_catg`
--

INSERT INTO `book_catg` (`bctg_id`, `catg_type`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'HISTORY', '2016-04-01 05:49:00', '3', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_code`
--

CREATE TABLE IF NOT EXISTS `book_code` (
  `bcid` int(11) NOT NULL,
  `blist_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `stu_id` bigint(20) NOT NULL,
  `empid` bigint(20) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_code`
--

INSERT INTO `book_code` (`bcid`, `blist_id`, `book_id`, `status`, `stu_id`, `empid`, `comment`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, 322419, 0, 0, 0, '', '2016-04-01 05:56:00', '3', '2016-04-17 05:31:00', '3'),
(2, 2, 484126, 0, 0, 0, '', '2016-04-01 05:57:00', '3', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `book_list`
--

CREATE TABLE IF NOT EXISTS `book_list` (
  `blist_id` int(11) NOT NULL,
  `bctg_id` int(11) NOT NULL,
  `bookN` varchar(80) NOT NULL,
  `writterN` varchar(80) NOT NULL,
  `tquantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `fineprice` int(11) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_list`
--

INSERT INTO `book_list` (`blist_id`, `bctg_id`, `bookN`, `writterN`, `tquantity`, `price`, `fineprice`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, 'BANGLADESHER ITIHASH', 'MEHEDI HASAN', 1, '120.00', 10, '2016-04-01 05:51:00', '3', '2016-04-19 21:08:00', '3'),
(2, 1, 'HISTROY OF 1971', 'SHORIFUL ISLAM', 1, '150.00', 70, '2016-04-01 05:51:00', '3', '2016-04-17 05:29:00', '3');

-- --------------------------------------------------------

--
-- Table structure for table `book_sdistribute`
--

CREATE TABLE IF NOT EXISTS `book_sdistribute` (
  `bdis_id` int(11) NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `book_id` int(11) NOT NULL,
  `stdrdate` date DEFAULT NULL,
  `stdreturn` date DEFAULT NULL,
  `lib_recdate` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_sdistribute`
--

INSERT INTO `book_sdistribute` (`bdis_id`, `stu_id`, `book_id`, `stdrdate`, `stdreturn`, `lib_recdate`, `status`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 2016033498, 322419, '2016-04-02', '2016-04-04', '2016-04-02', 0, '2016-04-02 12:03:00', '3', '2016-04-02 06:03:00', '3'),
(2, 2016035451, 322419, '2016-04-17', '2016-04-20', '2016-04-17', 0, '2016-04-17 11:30:00', '3', '2016-04-17 05:31:00', '3');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_catg`
--

CREATE TABLE IF NOT EXISTS `class_catg` (
  `classid` int(11) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `class_name` varchar(80) NOT NULL,
  `e_date` timestamp NULL DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_catg`
--

INSERT INTO `class_catg` (`classid`, `shiftid`, `class_name`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, 'Play Group ', NULL, '11', '2016-04-04 04:38:40', '11'),
(2, 1, 'Nursery ', NULL, '11', '2016-04-04 04:40:54', '11'),
(3, 1, 'One ', NULL, '2', '2016-04-04 04:44:51', '2'),
(4, 1, 'Two', NULL, '2', '2016-04-04 04:47:43', '2'),
(5, 1, 'Three ', NULL, '2', '2016-04-04 04:49:16', '2'),
(9, 1, 'Four ', NULL, '2', '2016-04-04 06:52:49', '2'),
(19, 1, 'Five', NULL, '3', '2016-04-04 06:55:13', '3'),
(20, 3, 'Six', NULL, '3', '2016-04-04 05:24:08', '3'),
(21, 3, 'Seven ', NULL, '3', '2016-04-04 05:25:55', '3'),
(22, 3, 'Eight', NULL, '3', '2016-04-04 05:28:12', '3'),
(23, 3, 'Nine ', NULL, '3', '2016-04-04 05:30:30', '3'),
(24, 3, 'Ten', NULL, '3', '2016-04-04 05:32:10', '3');

-- --------------------------------------------------------

--
-- Table structure for table `class_fee_sett`
--

CREATE TABLE IF NOT EXISTS `class_fee_sett` (
  `feeid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `feectgid` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `year` year(4) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_fee_sett`
--

INSERT INTO `class_fee_sett` (`feeid`, `classid`, `feectgid`, `amount`, `year`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 2, 1, '700.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:41:57', 'MOJUMDER'),
(2, 2, 2, '0.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:29:34', ''),
(3, 2, 3, '0.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:29:34', ''),
(4, 2, 4, '0.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:40:33', 'MOJUMDER'),
(5, 2, 5, '1000.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:29:34', ''),
(6, 2, 6, '500.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:29:34', ''),
(7, 2, 7, '0.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:29:34', ''),
(8, 2, 8, '30.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:29:34', ''),
(9, 2, 9, '30.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:29:34', ''),
(10, 2, 10, '250.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:29:34', ''),
(11, 2, 11, '250.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:29:34', ''),
(12, 2, 12, '250.00', 2016, '2016-06-05 07:34:00', 'MOJUMDER', '2016-06-05 13:29:34', ''),
(13, 1, 1, '700.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(14, 1, 2, '600.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(15, 1, 3, '0.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(16, 1, 4, '0.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(17, 1, 5, '1000.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(18, 1, 6, '500.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(19, 1, 7, '0.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(20, 1, 8, '30.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(21, 1, 9, '30.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(22, 1, 10, '250.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(23, 1, 11, '250.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(24, 1, 12, '250.00', 2016, '2016-06-05 07:06:00', 'MOJUMDER', '2016-06-05 13:53:06', ''),
(25, 3, 1, '700.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(26, 3, 2, '600.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(27, 3, 3, '0.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(28, 3, 4, '0.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(29, 3, 5, '1000.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(30, 3, 6, '0.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(31, 3, 7, '0.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(32, 3, 8, '30.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(33, 3, 9, '30.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(34, 3, 10, '250.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(35, 3, 11, '250.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(36, 3, 12, '250.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(37, 3, 13, '50.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(38, 3, 14, '200.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', ''),
(39, 3, 15, '0.00', 2016, '2016-06-05 08:27:00', 'MOJUMDER', '2016-06-05 14:00:27', '');

-- --------------------------------------------------------

--
-- Table structure for table `class_froxsett`
--

CREATE TABLE IF NOT EXISTS `class_froxsett` (
  `froxid` int(11) NOT NULL,
  `empid` bigint(20) NOT NULL,
  `routineid` int(11) NOT NULL,
  `fsdate` date NOT NULL,
  `fedate` date NOT NULL,
  `years` year(4) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class_period`
--

CREATE TABLE IF NOT EXISTS `class_period` (
  `perid` int(11) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `classid` int(11) DEFAULT NULL,
  `maxclass` tinyint(4) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `shidule_id` tinyint(4) NOT NULL,
  `e_date` timestamp NULL DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class_tehsett`
--

CREATE TABLE IF NOT EXISTS `class_tehsett` (
  `ctsid` int(11) NOT NULL,
  `empid` bigint(20) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `section` varchar(80) NOT NULL,
  `years` year(4) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_tehsett`
--

INSERT INTO `class_tehsett` (`ctsid`, `empid`, `shiftid`, `classid`, `section`, `years`, `status`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 20161031, 1, 1, '1', 2016, 1, NULL, '3', '2016-04-06 14:05:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE IF NOT EXISTS `complain` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact_admission`
--

CREATE TABLE IF NOT EXISTS `contact_admission` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `details` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `details` varchar(1500) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`, `details`, `image`) VALUES
(1, 'Commerce', 'This is commerce department of this school. this department start from 2000  and active till now.    ', 'department.jpg'),
(2, 'Test department', '						\n			this is for test			', 'slide-two.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `empee`
--

CREATE TABLE IF NOT EXISTS `empee` (
  `id` int(11) NOT NULL,
  `empid` bigint(20) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nickN` varchar(30) NOT NULL,
  `fname` varchar(80) DEFAULT NULL,
  `mname` varchar(80) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `resign_date` date DEFAULT NULL,
  `pre_address` varchar(255) DEFAULT NULL,
  `par_address` varchar(255) DEFAULT NULL,
  `nid` bigint(20) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `blood` varchar(10) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `department` int(11) NOT NULL,
  `emptypeid` int(11) NOT NULL,
  `deginition` int(11) DEFAULT NULL,
  `phone` varchar(14) NOT NULL,
  `alt_phone` varchar(14) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `acc_no` varchar(30) NOT NULL,
  `picture` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL,
  `edu_q` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_catg`
--

CREATE TABLE IF NOT EXISTS `employee_catg` (
  `ecatgid` int(11) NOT NULL,
  `emp_type` varchar(80) NOT NULL,
  `need_emp` int(11) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_catg`
--

INSERT INTO `employee_catg` (`ecatgid`, `emp_type`, `need_emp`, `qualification`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'Head Master', 1, 'BSC				', '2016-03-31 05:19:00', '2', '2016-03-31 11:37:19', NULL),
(2, 'Senior teacher', 10, 'bsc in science				', '2016-04-06 08:41:00', '3', '2016-04-06 14:06:41', NULL),
(3, 'Accountant', 2, 'Degree', '2016-05-25 10:54:00', '3', '2016-05-25 04:59:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_approved`
--

CREATE TABLE IF NOT EXISTS `emp_approved` (
  `levaprov` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `reqid` int(11) NOT NULL,
  `sdate` date DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `comment` text,
  `status` tinyint(2) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance`
--

CREATE TABLE IF NOT EXISTS `emp_attendance` (
  `eattenid` int(11) NOT NULL,
  `emptypeid` int(11) NOT NULL,
  `empid` varchar(2000) NOT NULL,
  `atendate` date NOT NULL,
  `month` tinyint(4) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_depart_catg`
--

CREATE TABLE IF NOT EXISTS `emp_depart_catg` (
  `edepid` int(11) NOT NULL,
  `manage_type` varchar(80) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_depart_catg`
--

INSERT INTO `emp_depart_catg` (`edepid`, `manage_type`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'information and computer technology', '2016-06-25 10:53:00', '3', '2016-06-25 04:53:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_levtype`
--

CREATE TABLE IF NOT EXISTS `emp_levtype` (
  `levid` int(11) NOT NULL,
  `lev_type` varchar(80) NOT NULL,
  `max_lev` tinyint(4) DEFAULT NULL,
  `status` tinyint(2) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_login`
--

CREATE TABLE IF NOT EXISTS `emp_login` (
  `elogid` int(11) NOT NULL,
  `empid` bigint(20) NOT NULL,
  `pass` varchar(120) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sId` varchar(200) NOT NULL,
  `e_date` datetime NOT NULL,
  `e_user` varchar(80) NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(80) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_login`
--

INSERT INTO `emp_login` (`elogid`, `empid`, `pass`, `status`, `sId`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 20161031, '20161031', 1, 'e0eb6c5a00769874b071f7746fe9c853', '2016-03-31 05:11:00', '2', '2016-05-24 10:16:25', NULL),
(2, 20168283, '20168283', 0, '', '2016-04-06 08:40:00', '3', '2016-11-21 07:33:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_manage_pos`
--

CREATE TABLE IF NOT EXISTS `emp_manage_pos` (
  `posid` int(11) NOT NULL,
  `edepid` int(11) NOT NULL,
  `manage_type` varchar(80) NOT NULL,
  `posi_typ` varchar(80) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_reqlev`
--

CREATE TABLE IF NOT EXISTS `emp_reqlev` (
  `reqid` int(11) NOT NULL,
  `empid` bigint(20) NOT NULL,
  `levid` int(11) NOT NULL,
  `sdate` date DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `comment` text,
  `show_status` tinyint(2) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary_his`
--

CREATE TABLE IF NOT EXISTS `emp_salary_his` (
  `esalid` int(11) NOT NULL,
  `empid` bigint(20) NOT NULL,
  `month` tinyint(2) NOT NULL,
  `years` year(4) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `date` date DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_salary_incre`
--

CREATE TABLE IF NOT EXISTS `emp_salary_incre` (
  `eincid` int(11) NOT NULL,
  `empid` bigint(20) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `date` date DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_type`
--

CREATE TABLE IF NOT EXISTS `emp_type` (
  `emptypeid` int(11) NOT NULL,
  `type` varchar(150) NOT NULL,
  `e_date` datetime NOT NULL,
  `e_user` varchar(80) NOT NULL,
  `up_date` timestamp NULL DEFAULT NULL,
  `up_user` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_vacancy`
--

CREATE TABLE IF NOT EXISTS `emp_vacancy` (
  `vanid` int(11) NOT NULL,
  `dept_name` varchar(80) NOT NULL,
  `need_emp` int(11) NOT NULL,
  `precent_emp` int(11) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exm_catg`
--

CREATE TABLE IF NOT EXISTS `exm_catg` (
  `exm_ctgid` int(11) NOT NULL,
  `exmnid` int(11) NOT NULL,
  `exmdate` date NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `year` year(4) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exm_catg`
--

INSERT INTO `exm_catg` (`exm_ctgid`, `exmnid`, `exmdate`, `comment`, `year`, `status`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, '2016-04-14', 'will be start', 2016, 1, '3', '2016-05-25 06:57:18', '7');

-- --------------------------------------------------------

--
-- Table structure for table `exm_grade`
--

CREATE TABLE IF NOT EXISTS `exm_grade` (
  `gradid` int(11) NOT NULL,
  `grade_N` varchar(4) NOT NULL,
  `grade_point` float NOT NULL,
  `mark_from` tinyint(4) DEFAULT NULL,
  `mark_upto` tinyint(4) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exm_grade`
--

INSERT INTO `exm_grade` (`gradid`, `grade_N`, `grade_point`, `mark_from`, `mark_upto`, `comment`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'A+', 5, 80, 100, 'First grade', '2016-04-01 19:04:00', '3', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `exm_markother`
--

CREATE TABLE IF NOT EXISTS `exm_markother` (
  `id` int(11) NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `othexmid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `section` varchar(50) NOT NULL,
  `shift` varchar(30) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `subjid` int(11) NOT NULL,
  `exm_mark` tinyint(4) NOT NULL,
  `mark` tinyint(4) NOT NULL,
  `exm_date` date NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exm_namectg`
--

CREATE TABLE IF NOT EXISTS `exm_namectg` (
  `exmnid` int(11) NOT NULL,
  `exm_name` varchar(120) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exm_namectg`
--

INSERT INTO `exm_namectg` (`exmnid`, `exm_name`, `status`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'test exam', 1, '2016-04-01 17:04:13', '3', '0000-00-00 00:00:00', ''),
(2, 'hello', 1, '2016-04-01 17:04:36', '3', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `exm_othercatg`
--

CREATE TABLE IF NOT EXISTS `exm_othercatg` (
  `othexmid` int(11) NOT NULL,
  `exm_name` varchar(50) NOT NULL,
  `xm_year` int(4) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exm_othercatg`
--

INSERT INTO `exm_othercatg` (`othexmid`, `exm_name`, `xm_year`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'Test Exam', 2016, '2016-04-01 19:04:54', '3', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `exm_pdistribute`
--

CREATE TABLE IF NOT EXISTS `exm_pdistribute` (
  `pdisid` int(11) NOT NULL,
  `subjid` int(11) NOT NULL,
  `exm_ctgid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `section` varchar(80) DEFAULT NULL,
  `tpaper` int(8) DEFAULT NULL,
  `disdate` date DEFAULT NULL,
  `retdate` date DEFAULT NULL,
  `techID` bigint(20) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exm_pdistribute`
--

INSERT INTO `exm_pdistribute` (`pdisid`, `subjid`, `exm_ctgid`, `classid`, `shiftid`, `section`, `tpaper`, `disdate`, `retdate`, `techID`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 2, 1, 1, 1, 'a', 10, '2016-04-02', '2016-04-28', 20161031, '2016-04-02 02:04:37', '3', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `exm_preceive`
--

CREATE TABLE IF NOT EXISTS `exm_preceive` (
  `id` int(11) NOT NULL,
  `pdisid` int(11) NOT NULL,
  `tpaper` int(8) NOT NULL,
  `subdate` date NOT NULL,
  `comment` varchar(250) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exm_preceive`
--

INSERT INTO `exm_preceive` (`id`, `pdisid`, `tpaper`, `subdate`, `comment`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, 9, '2016-04-02', 'one paper missing', '2016-04-02 02:04:24', '3', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `exm_routine`
--

CREATE TABLE IF NOT EXISTS `exm_routine` (
  `id` int(11) NOT NULL,
  `exm_ctgid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `exm_date` date NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `subject` int(11) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exm_routine`
--

INSERT INTO `exm_routine` (`id`, `exm_ctgid`, `classid`, `exm_date`, `stime`, `etime`, `subject`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, 1, '2016-04-15', '10:00:00', '13:00:00', 1, '2016-04-02 01:33:09', '3', '0000-00-00 00:00:00', ''),
(2, 1, 2, '2016-04-15', '14:00:00', '17:00:00', 6, '2016-04-02 01:33:09', '3', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `exm_routine_sett`
--

CREATE TABLE IF NOT EXISTS `exm_routine_sett` (
  `id` int(11) NOT NULL,
  `exm_ctgid` int(11) NOT NULL,
  `max_exm` tinyint(2) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exm_seatplain`
--

CREATE TABLE IF NOT EXISTS `exm_seatplain` (
  `id` int(11) NOT NULL,
  `exm_ctgid` int(11) NOT NULL,
  `classN` varchar(80) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `section` varchar(80) DEFAULT NULL,
  `roll_no` varchar(30) DEFAULT NULL,
  `room` varchar(30) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exm_seatplain`
--

INSERT INTO `exm_seatplain` (`id`, `exm_ctgid`, `classN`, `shiftid`, `section`, `roll_no`, `room`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, '1', 1, 'a', '1-20', '1', '2016-04-02 01:04:56', '3', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `exm_teacher_schedul`
--

CREATE TABLE IF NOT EXISTS `exm_teacher_schedul` (
  `id` int(11) NOT NULL,
  `exm_ctgid` int(11) NOT NULL,
  `exm_date` date NOT NULL,
  `exm_time` time NOT NULL,
  `room` int(11) NOT NULL,
  `teachID` varchar(100) NOT NULL,
  `edate` date NOT NULL,
  `euser` int(11) NOT NULL,
  `up_date` date NOT NULL,
  `up_user` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exm_teacher_schedul`
--

INSERT INTO `exm_teacher_schedul` (`id`, `exm_ctgid`, `exm_date`, `exm_time`, `room`, `teachID`, `edate`, `euser`, `up_date`, `up_user`) VALUES
(1, 1, '2016-04-15', '10:00:00', 1, '20161031', '2016-04-02', 3, '0000-00-00', 0),
(2, 1, '2016-04-15', '14:00:00', 1, '20161031', '2016-04-02', 3, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `expance`
--

CREATE TABLE IF NOT EXISTS `expance` (
  `id` int(11) NOT NULL,
  `accountid` bigint(20) NOT NULL,
  `invoice_no` varchar(30) DEFAULT NULL,
  `expance_type` varchar(150) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `check_no` varchar(30) DEFAULT NULL,
  `pay_person` varchar(80) NOT NULL,
  `expire_date` date NOT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `descrp` varchar(255) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expance_catg`
--

CREATE TABLE IF NOT EXISTS `expance_catg` (
  `id` int(11) NOT NULL,
  `expance_type` varchar(150) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expance_catg`
--

INSERT INTO `expance_catg` (`id`, `expance_type`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'Salary', '2016-04-02 01:32:00', 'shorif', '2016-04-01 19:51:32', ''),
(2, 'transport to feni', '2016-04-10 01:31:00', 'admin', '2016-04-10 07:48:31', ''),
(3, 'Guest Food', '2016-04-11 07:11:00', 'admin', '2016-04-11 13:45:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `exp_invoice_log`
--

CREATE TABLE IF NOT EXISTS `exp_invoice_log` (
  `id` int(11) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE IF NOT EXISTS `facility` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `details` varchar(1500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`id`, `title`, `details`) VALUES
(1, 'Facility', '<p>School facilities are one of the basic educational requirements, and it is necessary to maintain safe and high-quality school facilities from the perspective of maintaining and improving educational levels in line with the developmental stage.</p>\r\n<p>&nbsp;For this reason, MEXT produces guideline<strong>s and compiles examples to help in the maintenance of school facilities and disseminates these materials to school officials. Government subsidies are also provided for buildings that have become dangerous due to lack earthquake resistance or aging. MEXT additionally promotes the improvement of school facilities with minimal environmental load as a measure to combat the universal challenge of global warming.</strong></p>\r\n<p><strong>&nbsp;Also, as well as providing support for the prioritized and systemati</strong>c improvement of facilities at national universities, etc., MEXT also drives the maintenance and improvement of the campus environment that supports education and research activities at universities and other institutions through the promotion of facility management*1 and other efforts.</p>\r\n<p>hello this is test.</p>\r\n<div id="spoon-plugin-kncgbdglledmjmpnikebkagnchfdehbm-2" style="display: none;">&nbsp;</div>');

-- --------------------------------------------------------

--
-- Table structure for table `father_login`
--

CREATE TABLE IF NOT EXISTS `father_login` (
  `pid` int(11) NOT NULL,
  `parentid` bigint(20) NOT NULL,
  `pass` varchar(100) DEFAULT '123456',
  `name` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phonen` varchar(15) NOT NULL,
  `edu` varchar(80) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `picture` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sId` varchar(250) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `father_login`
--

INSERT INTO `father_login` (`pid`, `parentid`, `pass`, `name`, `email`, `phonen`, `edu`, `dob`, `picture`, `status`, `sId`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 2016065486, '2016065486', 'Fatema Akter Akhi', 'aa@gmail.com ', '01703726113', NULL, NULL, NULL, 0, '', '2016-06-02 04:07:00', '7', '2016-11-21 07:32:14', NULL),
(2, 2016065460, '2016065460', 'Nazmunnahar ', 'ab@gmail.com ', '01748662412', NULL, NULL, NULL, 0, '', '2016-06-02 04:33:00', '7', '2016-06-02 10:33:06', NULL),
(3, 2016064756, '2016064756', 'Md.Harun', 'ac@gmail.com ', '01726882978', NULL, NULL, NULL, 1, 'd45dba3af3d8cebf5222c2c590466ab4', '2016-06-02 04:37:00', '7', '2016-06-13 13:36:17', NULL),
(4, 2016066723, '2016066723', 'Md.Salim Uddin', 'ad@gmail.com ', '01784519578', NULL, NULL, NULL, 0, '', '2016-06-02 04:45:00', '7', '2016-06-04 04:55:45', NULL),
(5, 2016067112, '2016067112', 'Mihir Kumar Day', 'ae@gmail.com ', '01821160211', NULL, NULL, NULL, 0, '', '2016-06-02 04:49:00', '7', '2016-06-02 10:49:10', NULL),
(6, 2016063500, '2016063500', 'Nargis Sultana', 'af@gmail.com ', '01815843135', NULL, NULL, NULL, 0, '', '2016-06-02 04:52:00', '7', '2016-06-02 10:52:07', NULL),
(7, 2016067307, '2016067307', 'Md.Ripon Mia', 'ag@gmail.com ', '01816238426', NULL, NULL, NULL, 0, '', '2016-06-02 04:55:00', '7', '2016-06-02 10:55:55', NULL),
(8, 2016063574, '2016063574', 'Nadia Akter', 'ah@gmail.com ', '01823241738', NULL, NULL, NULL, 0, '', '2016-06-02 04:59:00', '7', '2016-06-02 10:59:31', NULL),
(9, 2016063498, '2016063498', 'Ainur Nahar', 'aI@gmail.com ', '01812462497', NULL, NULL, NULL, 0, '', '2016-06-02 05:03:00', '7', '2016-06-02 11:03:46', NULL),
(10, 2016065181, '2016065181', 'Suchitra Debnath', 'aj@gmail.com ', '01726400331', NULL, NULL, NULL, 0, '', '2016-06-02 05:08:00', '7', '2016-06-02 11:08:25', NULL),
(11, 2016068394, '2016068394', 'Md.Nazrul Islam', 'ak@gmail.com ', '01817052381', NULL, NULL, NULL, 0, '', '2016-06-02 05:11:00', '7', '2016-06-02 11:11:43', NULL),
(12, 2016061422, '2016061422', 'Sumon Chandra Shil', 'al@gmail.com ', '01815717115', NULL, NULL, NULL, 0, '', '2016-06-02 05:17:00', '7', '2016-06-02 11:17:45', NULL),
(13, 2016064248, '2016064248', 'Nur Uddin Helal', 'am@gmail.com ', '01712148429', NULL, NULL, NULL, 0, '', '2016-06-02 05:23:00', '7', '2016-06-02 11:23:05', NULL),
(14, 2016062156, '2016062156', 'A.N.M. Shajahan', 'an@gmail.com ', '01712165653', NULL, NULL, NULL, 0, '', '2016-06-02 05:26:00', '7', '2016-06-02 11:26:25', NULL),
(15, 2016067499, '2016067499', 'Jannatul Ferduous', 'ao@gmail.com ', '01879068101', NULL, NULL, NULL, 0, '', '2016-06-02 05:29:00', '7', '2016-06-02 11:29:34', NULL),
(16, 2016063309, '2016063309', 'Md. Sayem', 'mdsayem0644@gmail.com', '01811220644', NULL, NULL, NULL, 0, '', '2016-06-04 02:36:00', '3', '2016-06-04 08:36:52', NULL),
(17, 2016062472, '2016062472', 'Imam Hasan Al Banna', 'hasanalbanna@gmail.com', '01814110838', NULL, NULL, NULL, 0, '', '2016-06-04 02:39:00', '3', '2016-06-04 08:39:47', NULL),
(18, 2016066666, '2016066666', 'Kamrun Nahar', 'ap@gmail.com', '01850018623', NULL, NULL, NULL, 0, '', '2016-06-04 02:41:00', '3', '2016-06-04 08:41:11', NULL),
(19, 2016067159, '2016067159', 'Abdus Sattar', 'aq@gmail.com', '01729985698', NULL, NULL, NULL, 0, '', '2016-06-04 02:42:00', '3', '2016-06-04 08:42:27', NULL),
(20, 2016063368, '2016063368', 'Anowar Hossan', 'ar@gmail.com', '01821509689', NULL, NULL, NULL, 0, '', '2016-06-04 02:44:00', '3', '2016-06-04 08:44:15', NULL),
(21, 2016065166, '2016065166', 'Shamoly', 'as@gmail.com', '01929097321', NULL, NULL, NULL, 0, '', '2016-06-04 02:46:00', '3', '2016-06-04 08:46:00', NULL),
(22, 2016062509, '2016062509', 'Bobita Boishnob', 'at@gmail.com', '01822008464', NULL, NULL, NULL, 0, '', '2016-06-04 02:47:00', '3', '2016-06-04 08:47:13', NULL),
(23, 2016066005, '2016066005', 'Jakia Khatun', 'au@gmail.com', '01817326394', NULL, NULL, NULL, 0, '', '2016-06-04 02:48:00', '3', '2016-06-04 08:48:34', NULL),
(24, 2016067955, '2016067955', 'Sofi Ullah', 'av@gmail.com', '01822962845', NULL, NULL, NULL, 0, '', '2016-06-04 02:51:00', '3', '2016-06-04 08:51:10', NULL),
(25, 2016067506, '2016067506', 'Jahanara Begum', 'aw@gmail.com', '01845117295', NULL, NULL, NULL, 0, '', '2016-06-04 02:52:00', '3', '2016-06-04 08:52:54', NULL),
(26, 2016062345, '2016062345', 'Ala Uddin', 'ax@gmail.com', '01850020885', NULL, NULL, NULL, 0, '', '2016-06-04 02:55:00', '3', '2016-06-04 08:55:36', NULL),
(27, 2016068074, '2016068074', 'Shahara Akter', 'az@gmail.com', '01726782093', NULL, NULL, NULL, 0, '', '2016-06-04 02:56:00', '3', '2016-06-04 08:56:38', NULL),
(28, 2016068442, '2016068442', 'Kamrun Nahar', 'ba@gamil.com', '01863747737', NULL, NULL, NULL, 0, '', '2016-06-04 02:58:00', '3', '2016-06-04 08:58:23', NULL),
(29, 2016064041, '2016064041', 'Taslima Sultana', 'bb@gmail.com', '01825218522', NULL, NULL, NULL, 0, '', '2016-06-04 02:59:00', '3', '2016-06-04 08:59:18', NULL),
(30, 2016067343, '2016067343', 'Poly', 'bc@gmail.com', '0171097840', NULL, NULL, NULL, 0, '', '2016-06-04 03:00:00', '3', '2016-06-04 09:00:33', NULL),
(31, 2016063626, '2016063626', 'Md. Mohin Uddin', 'bd@gmail.com', '01917144630', NULL, NULL, NULL, 0, '', '2016-06-04 03:01:00', '3', '2016-06-04 09:01:30', NULL),
(32, 2016066889, '2016066889', 'Abul Kalam', 'bf@gmail.com', '01720456798', NULL, NULL, NULL, 0, '', '2016-06-04 03:02:00', '3', '2016-06-04 09:02:58', NULL),
(33, 2016064169, '2016064169', 'Nazmun Nahar', 'be@gmail.com', '01850608043', NULL, NULL, NULL, 0, '', '2016-06-04 03:04:00', '3', '2016-06-04 09:04:47', NULL),
(34, 2016066599, '2016066599', 'Nazmun Nahar', 'bz@gmail.com', '01779705329', NULL, NULL, NULL, 0, '', '2016-06-04 03:07:00', '3', '2016-06-04 09:07:17', NULL),
(35, 2016068960, '2016068960', 'Bilkis Jahan', 'bg@gmail.com', '01771423734', NULL, NULL, NULL, 0, '', '2016-06-04 03:08:00', '3', '2016-06-04 09:08:30', NULL),
(36, 2016066617, '2016066617', 'Mar jahan Begum', 'bh@gmail.com', '01860175232', NULL, NULL, NULL, 0, '', '2016-06-04 03:09:00', '3', '2016-06-04 09:09:31', NULL),
(37, 2016068082, '2016068082', 'Bijoy Kumar', 'basilumd01@gmail.com', '01700552556', NULL, NULL, NULL, 0, '', '2016-06-04 03:10:00', '3', '2016-06-04 09:10:57', NULL),
(38, 2016068507, '2016068507', 'Jahanara Begum', 'bi@gmail.com', '01831875102', NULL, NULL, NULL, 0, '', '2016-06-04 03:11:00', '3', '2016-06-04 09:11:52', NULL),
(39, 2016064273, '2016064273', 'Kamrun Nahar', 'ci@gmail.com', '01862730664', NULL, NULL, NULL, 0, '', '2016-06-05 12:52:00', '3', '2016-06-05 06:52:14', NULL),
(40, 2016066547, '2016066547', 'Fariya Jahan', 'ch@gmail.com', '01819599215', NULL, NULL, NULL, 0, '', '2016-06-05 12:53:00', '3', '2016-06-05 06:53:09', NULL),
(41, 2016068146, '2016068146', 'Johadul Islam', 'cg@gmail.com', '01817015994', NULL, NULL, NULL, 0, '', '2016-06-05 12:54:00', '3', '2016-06-05 06:54:11', NULL),
(42, 2016067135, '2016067135', 'Aleya Begum', 'cf@gmail.com', '01823727581', NULL, NULL, NULL, 0, '', '2016-06-05 12:54:00', '3', '2016-06-05 06:54:59', NULL),
(43, 2016061405, '2016061405', 'Md. Samir Hossain', 'ce@gmail.com', '01712194316', NULL, NULL, NULL, 0, '', '2016-06-05 12:55:00', '3', '2016-06-05 06:55:47', NULL),
(44, 2016063518, '2016063518', 'Saiful Islam', 'cd@gmail.com', '01856771806', NULL, NULL, NULL, 0, '', '2016-06-05 12:56:00', '3', '2016-06-05 06:56:25', NULL),
(45, 2016063304, '2016063304', 'Feroz Alom', 'cc@gmail.com', '01815086354', NULL, NULL, NULL, 0, '', '2016-06-05 12:57:00', '3', '2016-06-05 06:57:15', NULL),
(46, 2016065707, '2016065707', 'Kamal Uddin', 'cb@gmail.com', '01711207155', NULL, NULL, NULL, 0, '', '2016-06-05 12:58:00', '3', '2016-06-05 06:58:30', NULL),
(47, 2016066537, '2016066537', 'Deedar Mahmud Alamgir', 'ca@gmail.com', '01843223564', NULL, NULL, NULL, 0, '', '2016-06-05 12:59:00', '3', '2016-06-05 06:59:43', NULL),
(48, 2016068722, '2016068722', 'Samsun Nahar', 'bz2@gmail.com', '01821498287', NULL, NULL, NULL, 0, '', '2016-06-05 01:09:00', '3', '2016-06-05 07:09:03', NULL),
(49, 2016065281, '2016065281', 'Md. Monir Uzzaman', 'monir@gmail.com', '01837939012', NULL, NULL, NULL, 0, '', '2016-06-05 01:10:00', '3', '2016-06-05 07:10:44', NULL),
(50, 2016063061, '2016063061', 'Romana', 'bx@gmail.com', '01854782335', NULL, NULL, NULL, 0, '', '2016-06-05 01:11:00', '3', '2016-06-05 07:11:43', NULL),
(51, 2016068085, '2016068085', 'Susmita Rani Bhowmik', 'bw@gmail.com', '01793291833', NULL, NULL, NULL, 0, '', '2016-06-05 01:12:00', '3', '2016-06-05 07:12:36', NULL),
(52, 2016062822, '2016062822', 'Hasina Islam', 'bv@gmail.com', '01859695066', NULL, NULL, NULL, 0, '', '2016-06-05 01:13:00', '3', '2016-06-05 07:13:28', NULL),
(53, 2016061541, '2016061541', 'Khodza Begum', 'bu@gmail.com', '01914525860', NULL, NULL, NULL, 0, '', '2016-06-05 01:14:00', '3', '2016-06-05 07:14:18', NULL),
(54, 2016066189, '2016066189', 'Md. Mursid Alom', 'bt@gmail.com', '018119734', NULL, NULL, NULL, 0, '', '2016-06-05 01:15:00', '3', '2016-06-05 07:15:08', NULL),
(55, 2016066003, '2016066003', 'Shamima Akther', 'bs@gmail.com', '01827889318', NULL, NULL, NULL, 0, '', '2016-06-05 01:15:00', '3', '2016-06-05 07:15:51', NULL),
(56, 2016063558, '2016063558', 'Jifriya', 'rubalkhan2012@yahoo.com', '01840201780', NULL, NULL, NULL, 0, '', '2016-06-05 01:17:00', '3', '2016-06-05 07:17:02', NULL),
(57, 2016068138, '2016068138', 'Abdul Hamide', 'br@gmail.com', '01838841494', NULL, NULL, NULL, 0, '', '2016-06-05 01:18:00', '3', '2016-06-05 07:18:01', NULL),
(58, 2016066312, '2016066312', 'Saleha Akter', 'bq@gmail.com', '01813564751', NULL, NULL, NULL, 0, '', '2016-06-05 01:19:00', '3', '2016-06-05 07:19:08', NULL),
(59, 2016061687, '2016061687', 'Masud', 'bp@gmail.com', '01760059769', NULL, NULL, NULL, 0, '', '2016-06-05 01:19:00', '3', '2016-06-05 07:19:58', NULL),
(60, 2016064598, '2016064598', 'Asma Akter', 'bn@gmail.com', '01791269431', NULL, NULL, NULL, 0, '', '2016-06-05 01:20:00', '3', '2016-06-05 07:20:44', NULL),
(61, 2016064868, '2016064868', 'Fargana Akter', 'bo@gmail.com', '01814312755', NULL, NULL, NULL, 0, '', '2016-06-05 01:21:00', '3', '2016-06-05 07:21:34', NULL),
(62, 2016066804, '2016066804', 'Md. Sirajul Islam', 'bm@gmail.com', '01840639215', NULL, NULL, NULL, 0, '', '2016-06-05 01:22:00', '3', '2016-06-05 07:22:24', NULL),
(63, 2016063292, '2016063292', 'Sanjida Yeasmin', 'bl@gmail.com', '01811251823', NULL, NULL, NULL, 0, '', '2016-06-05 01:23:00', '3', '2016-06-05 07:23:19', NULL),
(64, 2016062479, '2016062479', 'Sumsun Nahir Nupur', 'bk@gmail.com', '01819694758', NULL, NULL, NULL, 0, '', '2016-06-05 01:24:00', '3', '2016-06-05 07:24:45', NULL),
(65, 2016062551, '2016062551', 'Nur Nobi', 'bj@gmail.com', '01868295268', NULL, NULL, NULL, 0, '', '2016-06-05 01:25:00', '3', '2016-06-05 07:25:56', NULL),
(66, 2016063435, '2016063435', 'Sabina Akter', 'ka@gmail.com', '01843493072', NULL, NULL, NULL, 0, '', '2016-06-06 11:57:00', '3', '2016-06-06 05:57:39', NULL),
(67, 2016062850, '2016062850', 'Bibi Kulsum', 'kb@gmail.com', '01862681503', NULL, NULL, NULL, 0, '', '2016-06-06 11:59:00', '3', '2016-06-06 05:59:06', NULL),
(68, 2016067780, '2016067780', 'Tahmina Akther', 'nurislampintu@gmail.com', '01865684980', NULL, NULL, NULL, 0, '', '2016-06-06 12:00:00', '3', '2016-06-06 06:00:01', NULL),
(69, 2016063970, '2016063970', 'Sharmin Akther', 'kc@gmail.com', '01732271902', NULL, NULL, NULL, 0, '', '2016-06-06 12:01:00', '3', '2016-06-06 06:01:09', NULL),
(70, 2016061996, '2016061996', 'Niranjan Chandra Bhowmik', 'kd@gmail.com', '01717537350', NULL, NULL, NULL, 0, '', '2016-06-06 12:02:00', '3', '2016-06-06 06:02:16', NULL),
(71, 2016067923, '2016067923', 'Shirin Akther', 'ke@gmail.com', '01631106894', NULL, NULL, NULL, 0, '', '2016-06-06 12:03:00', '3', '2016-06-06 06:03:23', NULL),
(72, 2016061230, '2016061230', 'Md. Nizam Uddin', 'kf@gmail.com', '01819198088', NULL, NULL, NULL, 0, '', '2016-06-06 12:04:00', '3', '2016-06-06 06:04:06', NULL),
(73, 2016066427, '2016066427', 'Nazmun Nahar', 'kg@gmail.com', '01846349981', NULL, NULL, NULL, 0, '', '2016-06-06 12:07:00', '3', '2016-06-06 06:07:25', NULL),
(74, 2016067630, '2016067630', 'Anjuman Ara', 'kh@gmail.com', '018785623620', NULL, NULL, NULL, 0, '', '2016-06-06 12:08:00', '3', '2016-06-06 06:08:53', NULL),
(75, 2016063445, '2016063445', 'Jamam Uddin', 'ki@gmail.com', '01829797726', NULL, NULL, NULL, 0, '', '2016-06-06 12:09:00', '3', '2016-06-06 06:09:49', NULL),
(76, 2016061684, '2016061684', 'Nur Naher Audure', 'kj@gmail.com', '01858038975', NULL, NULL, NULL, 0, '', '2016-06-06 12:11:00', '3', '2016-06-06 06:11:08', NULL),
(77, 2016061805, '2016061805', 'Kamrun Nahar', 'kk@gmail.com', '01830150609', NULL, NULL, NULL, 0, '', '2016-06-06 12:11:00', '3', '2016-06-06 06:11:52', NULL),
(78, 2016063683, '2016063683', 'Nurun Nahar', 'kl@gmail.com', '01835663066', NULL, NULL, NULL, 0, '', '2016-06-06 12:12:00', '3', '2016-06-06 06:12:38', NULL),
(79, 2016064721, '2016064721', 'Khaleda Akther', 'km@gmail.com', '01710090589', NULL, NULL, NULL, 0, '', '2016-06-06 12:13:00', '3', '2016-06-06 06:13:28', NULL),
(80, 2016065491, '2016065491', 'Md. Shamsul Alam', 'kn@gmail.com', '01918464782', NULL, NULL, NULL, 0, '', '2016-06-06 12:14:00', '3', '2016-06-06 06:14:24', NULL),
(81, 2016061206, '2016061206', 'Mizanur Rahman', 'ko@gmail.com', '01817002428', NULL, NULL, NULL, 0, '', '2016-06-06 12:15:00', '3', '2016-06-06 06:15:04', NULL),
(82, 2016061776, '2016061776', 'Jesmin Akhter', 'kp@gmail.com', '01859459453', NULL, NULL, NULL, 0, '', '2016-06-06 12:19:00', '3', '2016-06-06 06:19:15', NULL),
(83, 2016066344, '2016066344', 'Rehana Akter', 'kq@gmail.com', '01872591496', NULL, NULL, NULL, 0, '', '2016-06-06 12:19:00', '3', '2016-06-06 06:19:59', NULL),
(84, 2016061476, '2016061476', 'Nasrine Akter', 'kr@gmail.com', '01820939093', NULL, NULL, NULL, 0, '', '2016-06-06 12:21:00', '3', '2016-06-06 06:21:00', NULL),
(85, 2016067042, '2016067042', 'Abul Basar', 'jakirhossinjakir447@gmail.com', '01820245776', NULL, NULL, NULL, 0, '', '2016-06-06 12:22:00', '3', '2016-06-06 06:22:47', NULL),
(86, 2016068543, '2016068543', 'Sultana Begum', 'ks@gmail.com', '01727673110', NULL, NULL, NULL, 0, '', '2016-06-06 12:23:00', '3', '2016-06-06 06:23:50', NULL),
(87, 2016068353, '2016068353', 'Md. Fazlul Hoque Shipon', 'kt@gmail.com', '01811373245', NULL, NULL, NULL, 0, '', '2016-06-06 12:24:00', '3', '2016-06-06 06:24:38', NULL),
(88, 2016065775, '2016065775', 'Md. Minhazul Fahad', 'ku@gmail.com', '01949539253', NULL, NULL, NULL, 0, '', '2016-06-06 12:25:00', '3', '2016-06-06 06:25:35', NULL),
(89, 2016061175, '2016061175', 'Rozina Aktar', 'kw@gmail.com', '01874948810', NULL, NULL, NULL, 0, '', '2016-06-06 12:27:00', '3', '2016-06-06 06:27:28', NULL),
(90, 2016067953, '2016067953', 'Abu Ansar', 'ifrata132@gmail.com', '01922780014', NULL, NULL, NULL, 0, '', '2016-06-06 05:12:00', '7', '2016-06-06 11:12:41', NULL),
(91, 2016068026, '2016068026', 'Md.Sekander Hossain', 'da@gmail.com', '01762996066', NULL, NULL, NULL, 0, '', '2016-06-06 05:18:00', '7', '2016-06-06 11:18:27', NULL),
(92, 2016063017, '2016063017', 'Hossain', 'db@gmail.com', '01732334682', NULL, NULL, NULL, 0, '', '2016-06-06 05:20:00', '7', '2016-06-06 11:20:33', NULL),
(93, 2016068686, '2016068686', 'Sahab Uddin', 'dc@gmail.com', '0111816752649', NULL, NULL, NULL, 0, '', '2016-06-06 05:22:00', '7', '2016-06-06 11:22:48', NULL),
(94, 2016068747, '2016068747', 'Johirul Islam', 'dd@gmail.com', '01819108796', NULL, NULL, NULL, 0, '', '2016-06-06 05:24:00', '7', '2016-06-06 11:24:41', NULL),
(95, 2016061048, '2016061048', 'Farjana Akther', 'khayer280@gmail.com', '01860872266', NULL, NULL, NULL, 0, '', '2016-06-06 05:27:00', '7', '2016-06-06 11:27:30', NULL),
(96, 2016065057, '2016065057', 'Samima Akther', 'de@gmail.com', '01829240668', NULL, NULL, NULL, 0, '', '2016-06-06 05:33:00', '7', '2016-06-06 11:33:48', NULL),
(97, 2016068300, '2016068300', 'Tahmina Akter', 'anu201066@yahoo.com', '01860644009', NULL, NULL, NULL, 0, '', '2016-06-06 05:36:00', '7', '2016-06-06 11:36:34', NULL),
(98, 2016065899, '2016065899', 'Tahmina Anjuman', 'aanas.mahmood@yahoo.com', '01857620309', NULL, NULL, NULL, 0, '', '2016-06-06 05:40:00', '7', '2016-06-06 11:40:09', NULL),
(99, 2016068323, '2016068323', 'Abu Taher', 'df@gmail.com', '018332804012', NULL, NULL, NULL, 0, '', '2016-06-06 05:43:00', '7', '2016-06-06 11:43:47', NULL),
(100, 2016063447, '2016063447', 'Mahera Begum', 'dg@gmail.com', '01837041970', NULL, NULL, NULL, 0, '', '2016-06-06 06:02:00', '7', '2016-06-06 12:02:07', NULL),
(101, 2016064432, '2016064432', 'Rayhen chowdhury', 'dh@gmail.com', '01722348334', NULL, NULL, NULL, 0, '', '2016-06-06 06:05:00', '7', '2016-06-06 12:05:13', NULL),
(102, 2016063685, '2016063685', 'Md.Tajul Islam', 'di@gmail.com', '01817401726', NULL, NULL, NULL, 0, '', '2016-06-06 06:07:00', '7', '2016-06-06 12:07:09', NULL),
(103, 2016064480, '2016064480', 'Monowara Begum', 'dj@gmail.com', '01739636044', NULL, NULL, NULL, 0, '', '2016-06-06 06:09:00', '7', '2016-06-06 12:09:14', NULL),
(104, 2016065317, '2016065317', 'Bibi Ayesha', 'mamun1988no@gmail.com', '01814343036', NULL, NULL, NULL, 0, '', '2016-06-06 06:12:00', '7', '2016-06-06 12:12:17', NULL),
(105, 2016066456, '2016066456', 'Nipa Rani Das', 'dk@gmail.com', '01881284489', NULL, NULL, NULL, 0, '', '2016-06-06 06:14:00', '7', '2016-06-06 12:14:24', NULL),
(106, 2016062999, '2016062999', 'Nasrin Akter', 'dl@gmail.com', '01879296371', NULL, NULL, NULL, 0, '', '2016-06-06 06:15:00', '7', '2016-06-06 12:15:52', NULL),
(107, 2016067659, '2016067659', 'Azizur Rahaman', 'dm@gmail.com', '01814746489', NULL, NULL, NULL, 0, '', '2016-06-06 06:20:00', '7', '2016-06-06 12:20:00', NULL),
(108, 2016061296, '2016061296', 'Momotaz Begum', 'dn@gmail.com', '01818790898', NULL, NULL, NULL, 0, '', '2016-06-06 06:21:00', '7', '2016-06-06 12:21:38', NULL),
(109, 2016067944, '2016067944', 'Jasmin Akter', 'do@gmail.com', '01824436494', NULL, NULL, NULL, 0, '', '2016-06-06 06:23:00', '7', '2016-06-06 12:23:34', NULL),
(110, 2016064412, '2016064412', 'Nur Jahan', 'dp@gmail.com', '01715809482', NULL, NULL, NULL, 0, '', '2016-06-06 06:25:00', '7', '2016-06-06 12:25:42', NULL),
(111, 2016062081, '2016062081', 'Nur Jahan Akter', 'dq@gmail.com', '01629391044', NULL, NULL, NULL, 0, '', '2016-06-06 06:27:00', '7', '2016-06-06 12:27:01', NULL),
(112, 2016068103, '2016068103', 'Md.Faruk', 'dr@gmail.com', '01860778475', NULL, NULL, NULL, 0, '', '2016-06-06 06:29:00', '7', '2016-06-06 12:29:22', NULL),
(113, 2016066239, '2016066239', 'Anzuman Ara Fensi', 'ds@gmail.com', '01823733884', NULL, NULL, NULL, 0, '', '2016-06-06 06:31:00', '7', '2016-06-06 12:31:27', NULL),
(114, 2016064640, '2016064640', 'Lutfur Nahar', 'dt@gmail.com', '01879296036', NULL, NULL, NULL, 0, '', '2016-06-06 06:34:00', '7', '2016-06-06 12:34:09', NULL),
(115, 2016061683, '2016061683', 'Saiful Islam', 'du@gmail.com', '01815549853', NULL, NULL, NULL, 0, '', '2016-06-06 06:36:00', '7', '2016-06-06 12:36:29', NULL),
(116, 2016063493, '2016063493', 'Ferdous Kefayet', 'dv@gmail.com', '01826139845', NULL, NULL, NULL, 0, '', '2016-06-06 06:38:00', '7', '2016-06-06 12:38:30', NULL),
(117, 2016062513, '2016062513', 'Rabaka Sultana', 'alauddinreaj@gmail.com', '0171393137', NULL, NULL, NULL, 0, '', '2016-06-06 06:42:00', '7', '2016-06-06 12:42:17', NULL),
(118, 2016064078, '2016064078', 'Sultana Parvin', 'dw@gmail.com', '01762515076', NULL, NULL, NULL, 0, '', '2016-06-06 06:46:00', '7', '2016-06-06 12:46:58', NULL),
(119, 2016062644, '2016062644', 'Mizanur Rahman', 'dx@gmail.com', '01813942127', NULL, NULL, NULL, 0, '', '2016-06-06 06:49:00', '7', '2016-06-06 12:49:04', NULL),
(120, 2016067318, '2016067318', 'Shahida  Akter', 'dy@gmail.com', '01623390798', NULL, NULL, NULL, 0, '', '2016-06-06 06:50:00', '7', '2016-06-06 12:50:29', NULL),
(121, 2016064061, '2016064061', 'Farhana', 'dz@gmail.com', '01818099904', NULL, NULL, NULL, 0, '', '2016-06-06 06:52:00', '7', '2016-06-06 12:52:10', NULL),
(122, 2016061515, '2016061515', 'Khitish Chandra Mojumder', 'ea@gmail.com', '01858607955', NULL, NULL, NULL, 0, '', '2016-06-12 10:15:00', '3', '2016-06-12 04:15:35', NULL),
(123, 2016064209, '2016064209', 'Abdul Al Masud', 'eb@gmail.com', '01827038836', NULL, NULL, NULL, 0, '', '2016-06-12 10:16:00', '3', '2016-06-12 04:16:37', NULL),
(124, 2016063922, '2016063922', 'Abdur Rahim', 'rahima325@gmail.com', '01860453971', NULL, NULL, NULL, 0, '', '2016-06-12 10:17:00', '3', '2016-06-12 04:17:24', NULL),
(125, 2016064573, '2016064573', 'Abul Khair', 'ganeshchakraborty18@gmail.com', '01815092533', NULL, NULL, NULL, 0, '', '2016-06-12 10:18:00', '3', '2016-06-12 04:18:23', NULL),
(126, 2016061959, '2016061959', 'Jharna Parvin', 'ec@gmail.com', '01838351331', NULL, NULL, NULL, 0, '', '2016-06-12 10:19:00', '3', '2016-06-12 04:19:19', NULL),
(127, 2016064322, '2016064322', 'Nazma Akter', 'ed@gmail.com', '01817387488', NULL, NULL, NULL, 0, '', '2016-06-12 10:19:00', '3', '2016-06-12 04:19:57', NULL),
(128, 2016068332, '2016068332', 'Nahida Akther', 'ef@gmail.com', '01630284022', NULL, NULL, NULL, 0, '', '2016-06-12 10:20:00', '3', '2016-06-12 04:20:46', NULL),
(129, 2016061992, '2016061992', 'Toaha Bahar', 'eg@gmail.com', '01712179548', NULL, NULL, NULL, 0, '', '2016-06-12 10:21:00', '3', '2016-06-12 04:21:45', NULL),
(130, 2016065561, '2016065561', 'Md. Shahid', 'shahidsumi74@gmail.com', '01817740840', NULL, NULL, NULL, 0, '', '2016-06-12 10:22:00', '3', '2016-06-12 04:22:39', NULL),
(131, 2016064047, '2016064047', 'Sajeda Akter', 'sajedaanwar124@gmail.com', '01824894424', NULL, NULL, NULL, 0, '', '2016-06-12 10:23:00', '3', '2016-06-12 04:23:28', NULL),
(132, 2016067046, '2016067046', 'Rupsree Sharma', 'eh@gmail.com', '01837948026', NULL, NULL, NULL, 0, '', '2016-06-12 10:29:00', '3', '2016-06-12 04:29:44', NULL),
(133, 2016061168, '2016061168', 'Parvin Akter', 'ei@gmail.com', '01834297096', NULL, NULL, NULL, 0, '', '2016-06-12 10:31:00', '3', '2016-06-12 04:31:29', NULL),
(134, 2016061341, '2016061341', 'Zillur Rahman', 'ej@gmail.com', '01718372944', NULL, NULL, NULL, 0, '', '2016-06-12 10:32:00', '3', '2016-06-12 04:32:12', NULL),
(135, 2016066816, '2016066816', 'Fazana Akter', 'farzanaaknidi@gmail.com', '01879663560', NULL, NULL, NULL, 0, '', '2016-06-12 10:32:00', '3', '2016-06-12 04:32:58', NULL),
(136, 2016061607, '2016061607', 'Shipra Rani Das & Ranjit', 'shibudas652@gmail.com', '01817081700', NULL, NULL, NULL, 0, '', '2016-06-12 10:34:00', '3', '2016-06-12 04:34:05', NULL),
(137, 2016065082, '2016065082', 'Bibi Hajera', 'ek@gmail.com', '01820322793', NULL, NULL, NULL, 0, '', '2016-06-12 10:34:00', '3', '2016-06-12 04:34:44', NULL),
(138, 2016061563, '2016061563', 'Azam Khan', 'el@gmail.com', '01712006259', NULL, NULL, NULL, 0, '', '2016-06-12 10:36:00', '3', '2016-06-12 04:36:11', NULL),
(139, 2016065193, '2016065193', 'Sahed Hussain', 'sahed.hussain@gmail.com', '01713337179', NULL, NULL, NULL, 0, '', '2016-06-12 10:37:00', '3', '2016-06-12 04:37:27', NULL),
(140, 2016063601, '2016063601', 'July Rahman', 'em@gmail.com', '01879663720', NULL, NULL, NULL, 0, '', '2016-06-12 10:38:00', '3', '2016-06-12 04:38:11', NULL),
(141, 2016066210, '2016066210', 'Gias Uddin', 'en@gmail.com', '01826028457', NULL, NULL, NULL, 0, '', '2016-06-12 10:53:00', '3', '2016-06-12 04:53:16', NULL),
(142, 2016068457, '2016068457', 'Md. Yeakub Nobi', 'eo@gmail.com', '01819168435', NULL, NULL, NULL, 0, '', '2016-06-12 10:54:00', '3', '2016-06-12 04:54:06', NULL),
(143, 2016068462, '2016068462', 'Jamal Uddin', 'ep@gmail.com', '0179081044', NULL, NULL, NULL, 0, '', '2016-06-12 10:54:00', '3', '2016-06-12 04:54:49', NULL),
(144, 2016067676, '2016067676', 'Jesmin Akter', 'eq@gmail.com', '01835280938', NULL, NULL, NULL, 0, '', '2016-06-12 10:55:00', '3', '2016-06-12 04:55:27', NULL),
(145, 2016065903, '2016065903', 'Sharif Uddin', 'er@gmail.com', '01811529239', NULL, NULL, NULL, 0, '', '2016-06-12 10:56:00', '3', '2016-06-12 04:56:50', NULL),
(146, 2016065648, '2016065648', 'Najmun Nahar', 'es@gmail.com', '01749001090', NULL, NULL, NULL, 0, '', '2016-06-12 10:57:00', '3', '2016-06-12 04:57:36', NULL),
(147, 2016064157, '2016064157', 'Sania Sultana', 'et@gmail.com', '01868295411', NULL, NULL, NULL, 0, '', '2016-06-12 10:58:00', '3', '2016-06-12 04:58:20', NULL),
(148, 2016065930, '2016065930', 'Md. Shahadt Hossain', 'eu@gmail.com', '01813171544', NULL, NULL, NULL, 0, '', '2016-06-12 10:59:00', '3', '2016-06-12 04:59:05', NULL),
(149, 2016064232, '2016064232', 'Jaker Hassin', 'ev@gmail.com', '01828520937', NULL, NULL, NULL, 0, '', '2016-06-12 11:00:00', '3', '2016-06-12 05:00:00', NULL),
(150, 2016063117, '2016063117', 'Asgar Hossain Babul', 'babulworldnet@gmail.com', '01817001910', NULL, NULL, NULL, 0, '', '2016-06-12 11:00:00', '3', '2016-06-12 05:00:53', NULL),
(151, 2016062903, '2016062903', 'Amir Hossain Manik', 'manikbd4@gmail.com', '01813295440', NULL, NULL, NULL, 0, '', '2016-06-12 11:01:00', '3', '2016-06-12 05:01:49', NULL),
(152, 2016062362, '2016062362', 'Bilkayes Ara', 'ew@gmail.com', '01770007526', NULL, NULL, NULL, 0, '', '2016-06-12 11:02:00', '3', '2016-06-12 05:02:36', NULL),
(153, 2016065071, '2016065071', 'Abu Naser', 'ex@gmail.com', '01845721692', NULL, NULL, NULL, 0, '', '2016-06-12 11:04:00', '3', '2016-06-12 05:04:14', NULL),
(154, 2016065654, '2016065654', 'Deloware Hoshen', 'ey@gmail.com', '01813120624', NULL, NULL, NULL, 0, '', '2016-06-12 11:05:00', '3', '2016-06-12 05:05:16', NULL),
(155, 2016063584, '2016063584', 'Nargis Akter', 'ez@gmail.com', '01756205261', NULL, NULL, NULL, 0, '', '2016-06-12 11:06:00', '3', '2016-06-12 05:06:15', NULL),
(156, 2016066091, '2016066091', 'Ferdus Akter', 'fa@gmail.com', '01813939374', NULL, NULL, NULL, 0, '', '2016-06-12 11:07:00', '3', '2016-06-12 05:07:00', NULL),
(157, 2016064792, '2016064792', 'Amritta Sutradhar', 'amritaa450@gmail.com', '01791862875', NULL, NULL, NULL, 0, '', '2016-06-12 11:08:00', '3', '2016-06-12 05:08:32', NULL),
(158, 2016063009, '2016063009', 'Md. Abdul Kuddus', 'kuddus160@gmail.com', '01792443243', NULL, NULL, NULL, 0, '', '2016-06-12 11:09:00', '3', '2016-06-12 05:09:30', NULL),
(159, 2016068087, '2016068087', 'Farida Yesmin', 'fb@gmail.com', '01879006259', NULL, NULL, NULL, 0, '', '2016-06-12 11:10:00', '3', '2016-06-12 05:10:21', NULL),
(160, 2016066955, '2016066955', 'Maksudun Nahar', 's1@gmail.com', '01831197516', NULL, NULL, NULL, 0, '', '2016-06-13 10:44:00', '3', '2016-06-13 04:44:49', NULL),
(161, 2016062078, '2016062078', 'Nur Nahar', 's2@gmail.com', '01814768400', NULL, NULL, NULL, 0, '', '2016-06-13 10:45:00', '3', '2016-06-13 04:45:38', NULL),
(162, 2016063590, '2016063590', 'Ziban Ara', 'monshadriaz@gmail.com', '01811621272', NULL, NULL, NULL, 0, '', '2016-06-13 10:46:00', '3', '2016-06-13 04:46:26', NULL),
(163, 2016065150, '2016065150', 'Abdur Rahim', 's3@gmail.com', '01820090105', NULL, NULL, NULL, 0, '', '2016-06-13 10:47:00', '3', '2016-06-13 04:47:06', NULL),
(164, 2016066907, '2016066907', 'Ibrahim', 's4@gmail.com', '01863891391', NULL, NULL, NULL, 0, '', '2016-06-13 10:47:00', '3', '2016-06-13 04:47:50', NULL),
(165, 2016062065, '2016062065', 'Sayematul Kobra', 's5@gmail.com', '01921851440', NULL, NULL, NULL, 0, '', '2016-06-13 10:48:00', '3', '2016-06-13 04:48:31', NULL),
(166, 2016065873, '2016065873', 'Md. Abul Hossain Shohag', 'mahshohag78@yahoo.com', '01816158162', NULL, NULL, NULL, 0, '', '2016-06-13 10:49:00', '3', '2016-06-13 04:49:27', NULL),
(167, 2016065291, '2016065291', 'Monir Ahmed', 's6@gmail.com', '01830432836', NULL, NULL, NULL, 0, '', '2016-06-13 10:50:00', '3', '2016-06-13 04:50:12', NULL),
(168, 2016067758, '2016067758', 'Ahsan Ullah', 's7@gmail.com', '01815810468', NULL, NULL, NULL, 0, '', '2016-06-13 10:50:00', '3', '2016-06-13 04:50:52', NULL),
(169, 2016061548, '2016061548', 'Main Uddin', 's8@gmail.com', '01815941172', NULL, NULL, NULL, 0, '', '2016-06-13 10:51:00', '3', '2016-06-13 04:51:31', NULL),
(170, 2016068289, '2016068289', 'Md. Saifddin ', 's9@gmail.com', '01812330493', NULL, NULL, NULL, 0, '', '2016-06-13 10:53:00', '3', '2016-06-13 04:53:21', NULL),
(171, 2016068175, '2016068175', 'Hassan Imam Rassel', 'hassanimam@rocketmail.com', '01728294060', NULL, NULL, NULL, 0, '', '2016-06-13 11:34:00', '3', '2016-06-13 05:34:57', NULL),
(172, 2016062493, '2016062493', 'Sorfuddin', 'b1@gmail.com', '01849494797', NULL, NULL, NULL, 0, '', '2016-06-19 10:45:00', '7', '2016-06-19 04:45:56', NULL),
(173, 2016068787, '2016068787', 'Monir Hossain', 'b2@gmail.com', '01838989558', NULL, NULL, NULL, 0, '', '2016-06-19 10:46:00', '7', '2016-06-19 04:46:59', NULL),
(174, 2016068997, '2016068997', 'Shahed Md. Abdul Kader', 'nasrinshahed99@gmail.com', '01813064499', NULL, NULL, NULL, 0, '', '2016-06-19 11:00:00', '7', '2016-06-19 05:00:57', NULL),
(175, 2016061136, '2016061136', 'Abdullah al masud', 'mamuniabdul@yahoo.com', '01812554544', NULL, NULL, NULL, 0, '', '2016-06-19 11:03:00', '7', '2016-06-19 05:03:15', NULL),
(176, 2016062324, '2016062324', 'Rofiq Ullah', 'b3@gmail.com', '01915871451', NULL, NULL, NULL, 0, '', '2016-06-19 11:08:00', '7', '2016-06-19 05:08:35', NULL),
(177, 2016061904, '2016061904', 'Imam Hossian', 'b4@gmail.com', '01851277407', NULL, NULL, NULL, 0, '', '2016-06-19 11:09:00', '7', '2016-06-19 05:09:42', NULL),
(178, 2016061785, '2016061785', 'Hedayet Ullah', 'b5@gmail.com', '01817734563', NULL, NULL, NULL, 0, '', '2016-06-19 11:10:00', '7', '2016-06-19 05:10:56', NULL),
(179, 2016061491, '2016061491', 'Shana Akter', 'b6@gmail.com', '01843428401', NULL, NULL, NULL, 0, '', '2016-06-19 11:15:00', '7', '2016-06-19 05:15:08', NULL),
(180, 2016063556, '2016063556', 'Nushrat Haider', 'b7@gmail.com', '01814768873', NULL, NULL, NULL, 0, '', '2016-06-19 11:16:00', '7', '2016-06-19 05:16:20', NULL),
(181, 2016066284, '2016066284', 'Main Uddin', 'b8@gmail.com', '01713620443', NULL, NULL, NULL, 0, '', '2016-06-19 11:17:00', '7', '2016-06-19 05:17:35', NULL),
(182, 2016062937, '2016062937', 'Nazmul Islam', 'masud.nazmul@yahoo.com', '01712068014', NULL, NULL, NULL, 0, '', '2016-06-19 11:18:00', '7', '2016-06-19 05:18:56', NULL),
(183, 2016063354, '2016063354', 'Rahana Akter', 'b9@gmail.com', '01875397826', NULL, NULL, NULL, 0, '', '2016-06-19 11:21:00', '7', '2016-06-19 05:21:33', NULL),
(184, 2016061990, '2016061990', 'Mizanur Rahman', 'b10@gmail.com', '01834646447', NULL, NULL, NULL, 0, '', '2016-06-19 11:39:00', '7', '2016-06-19 05:39:40', NULL),
(185, 2016063361, '2016063361', 'Md. Nurul Amin', 'b11@gmail.com', '01819442290', NULL, NULL, NULL, 0, '', '2016-06-19 11:40:00', '7', '2016-06-19 05:40:30', NULL),
(186, 2016062841, '2016062841', 'A. K. M. Saiful Huda', 'nobo9073@gmail.com', '01818719383', NULL, NULL, NULL, 0, '', '2016-06-19 11:43:00', '7', '2016-06-19 05:43:33', NULL),
(187, 2016062713, '2016062713', 'Sharmin Akter', 'b12@gmail.com', '01843213245', NULL, NULL, NULL, 0, '', '2016-06-19 11:45:00', '7', '2016-06-19 05:45:35', NULL),
(188, 2016068594, '2016068594', 'Sharmin Akter', 'b45@gmail.com', '01863747696', NULL, NULL, NULL, 0, '', '2016-06-23 01:21:00', '3', '2016-06-23 07:21:53', NULL),
(189, 2016064478, '2016064478', 'Nilupa Yesmin', 'b42@gmail.com', '01879068860', NULL, NULL, NULL, 0, '', '2016-06-23 01:22:00', '3', '2016-06-23 07:22:52', NULL),
(190, 2016067722, '2016067722', 'Kamrun Nahar Jasmin', 'b43@gmail.com', '01817639918', NULL, NULL, NULL, 0, '', '2016-06-23 01:23:00', '3', '2016-06-23 07:23:33', NULL),
(191, 2016065771, '2016065771', 'Md. Jahangir Alam', 'b44@gmail.com', '01712858514', NULL, NULL, NULL, 0, '', '2016-06-23 01:24:00', '3', '2016-06-23 07:24:24', NULL),
(192, 2016065994, '2016065994', 'Pankaj Chandra Shil', 'b30@gmail.com', '01813229528', NULL, NULL, NULL, 0, '', '2016-06-23 01:43:00', '3', '2016-06-23 07:43:40', NULL),
(193, 2016066049, '2016066049', 'Rokib Hassan', 'b31@gmail.com', '01700852206', NULL, NULL, NULL, 0, '', '2016-06-23 01:44:00', '3', '2016-06-23 07:44:30', NULL),
(194, 2016066779, '2016066779', 'Golam Khalak', 'b33@gmail.com', '01833491218', NULL, NULL, NULL, 0, '', '2016-06-23 01:46:00', '3', '2016-06-23 07:46:39', NULL),
(195, 2016062773, '2016062773', 'Roni', 'b20@gmail.com', '0188268746', NULL, NULL, NULL, 0, '', '2016-06-23 02:09:00', '3', '2016-06-23 08:09:43', NULL),
(196, 2016063101, '2016063101', 'Saiful Islam', 'b34@gmail.com', '01829999681', NULL, NULL, NULL, 0, '', '2016-06-23 02:10:00', '3', '2016-06-23 08:10:26', NULL),
(197, 2016061169, '2016061169', 'Shakhi foiz', 'b35@gmail.com', '01865339043', NULL, NULL, NULL, 0, '', '2016-06-23 02:11:00', '3', '2016-06-23 08:11:26', NULL),
(198, 2016068366, '2016068366', 'Rahi Islam', 'b36@gmail.com', '01874948111', NULL, NULL, NULL, 0, '', '2016-06-23 02:12:00', '3', '2016-06-23 08:12:25', NULL),
(199, 2016062372, '2016062372', 'Iqbal Hossain', 'b37@gmail.com', '01818673338', NULL, NULL, NULL, 0, '', '2016-06-23 02:13:00', '3', '2016-06-23 08:13:34', NULL),
(200, 2016061887, '2016061887', 'Jhanger Alam', 'b38@gmail.com', '01712785071', NULL, NULL, NULL, 0, '', '2016-06-23 02:14:00', '3', '2016-06-23 08:14:20', NULL),
(201, 2016066474, '2016066474', 'Mehadi Hassan', 'b39@gmail.com', '01879664733', NULL, NULL, NULL, 0, '', '2016-06-23 02:16:00', '3', '2016-06-23 08:16:03', NULL),
(202, 2016061735, '2016061735', 'Nazrul Islam', 'nazrul.khaza@yahoo.com', '01712906516', NULL, NULL, NULL, 0, '', '2016-06-23 02:16:00', '3', '2016-06-23 08:16:56', NULL),
(203, 2016063013, '2016063013', 'Rokcana Begom', 'b40@gmail.com', '01819043931', NULL, NULL, NULL, 0, '', '2016-06-23 02:17:00', '3', '2016-06-23 08:17:51', NULL),
(204, 2016065955, '2016065955', 'Abdul Motin', 'b41@gmail.com', '01817730575', NULL, NULL, NULL, 0, '', '2016-06-23 02:18:00', '3', '2016-06-23 08:18:39', NULL),
(205, 2016061396, '2016061396', 'Feroj Alam', 'b46@gmail.com', '01711178520', NULL, NULL, NULL, 0, '', '2016-06-25 09:57:00', '3', '2016-06-25 03:57:48', NULL),
(206, 2016064438, '2016064438', 'Arifur Rahman', 'b47@gmail.com', '01817230407', NULL, NULL, NULL, 0, '', '2016-06-25 10:00:00', '3', '2016-06-25 04:00:13', NULL),
(207, 2016064758, '2016064758', 'Md. Didarul Islam', 'cmyk4ck@gmail.com', '01822122420', NULL, NULL, NULL, 0, '', '2016-06-25 10:58:00', '3', '2016-06-25 04:58:25', NULL),
(208, 2016061264, '2016061264', 'Shahedu Rahaman', 'b48@gmail.com', '018175416336', NULL, NULL, NULL, 0, '', '2016-06-25 12:59:00', '3', '2016-06-25 06:59:43', NULL),
(209, 2016064597, '2016064597', 'Mostak Akamed', 'b49@gmail.com', '01822974412', NULL, NULL, NULL, 0, '', '2016-06-25 01:00:00', '3', '2016-06-25 07:00:22', NULL),
(210, 2016065943, '2016065943', 'Azizul Kabir', 'b50@gmail.com', '01824870535', NULL, NULL, NULL, 0, '', '2016-06-26 09:26:00', '3', '2016-06-26 03:26:45', NULL),
(211, 2016065290, '2016065290', 'Amrad Hossain', 'b51@gmail.com', '01815607273', NULL, NULL, NULL, 0, '', '2016-06-26 09:28:00', '3', '2016-06-26 03:28:22', NULL),
(212, 2016067836, '2016067836', 'Besu Dabnath', 'b52@gmail.com', '01815858765', NULL, NULL, NULL, 0, '', '2016-06-26 09:29:00', '3', '2016-06-26 03:29:07', NULL),
(213, 2016067972, '2016067972', 'Kamrun Nahar', 'b53@gmail.com', '01813045187', NULL, NULL, NULL, 0, '', '2016-06-26 09:45:00', '3', '2016-06-26 03:45:41', NULL),
(214, 2016061978, '2016061978', 'Kamrun Nahar', 'b54@gmail.com', '01832323679', NULL, NULL, NULL, 0, '', '2016-06-26 09:46:00', '3', '2016-06-26 03:46:24', NULL),
(215, 2016064621, '2016064621', 'Samona Yesmin', 'b56@gmail.com', '01875827436', NULL, NULL, NULL, 0, '', '2016-06-26 10:48:00', '3', '2016-06-26 04:48:46', NULL),
(216, 2016067891, '2016067891', 'Forida Akter', 'b57@gmail.com', '01754640062', NULL, NULL, NULL, 0, '', '2016-06-26 10:49:00', '3', '2016-06-26 04:49:28', NULL),
(217, 2016064900, '2016064900', 'Md. Jamal Uddin', 'b59@gmail.com', '01785688567', NULL, NULL, NULL, 0, '', '2016-06-26 11:26:00', '3', '2016-06-26 05:26:55', NULL),
(218, 2016065338, '2016065338', 'Mohammad Nayeemul Islam', 'nayeemul79@yahoo.com', '01817024091', NULL, NULL, NULL, 0, '', '2016-06-28 09:35:00', '3', '2016-06-28 03:35:00', NULL),
(219, 2016063249, '2016063249', 'Sarmin Akter', 'b62@gmail.com', '01857668984', NULL, NULL, NULL, 0, '', '2016-06-28 09:35:00', '3', '2016-06-28 03:35:42', NULL),
(220, 2016062375, '2016062375', 'Hasina Akter', 'b63@gmail.com', '01814253835', NULL, NULL, NULL, 0, '', '2016-06-28 09:36:00', '3', '2016-06-28 03:36:42', NULL),
(221, 2016061377, '2016061377', 'Amena Khatun', 'b64@gmail.com', '01836504476', NULL, NULL, NULL, 0, '', '2016-06-28 09:37:00', '3', '2016-06-28 03:37:21', NULL),
(222, 2016065388, '2016065388', 'Hasina Akter', 'b65@gmail.com', '01731603687', NULL, NULL, NULL, 0, '', '2016-06-28 09:38:00', '3', '2016-06-28 03:38:11', NULL),
(223, 2016065206, '2016065206', 'Minu Ara Begum', 'b66@gmail.com', '01876944262', NULL, NULL, NULL, 0, '', '2016-06-28 09:39:00', '3', '2016-06-28 03:39:22', NULL),
(224, 2016062771, '2016062771', 'Md. Nur Hossin', 'b67@gmail.com', '01879773569', NULL, NULL, NULL, 0, '', '2016-06-28 09:40:00', '3', '2016-06-28 03:40:09', NULL),
(225, 2016062497, '2016062497', 'Abul Basher', 'b68@gmail.com', '01712282373', NULL, NULL, NULL, 0, '', '2016-06-28 09:41:00', '3', '2016-06-28 03:41:13', NULL),
(226, 2016066394, '2016066394', 'Md. Abul Khair', 'b69@gmail.com', '01819197585', NULL, NULL, NULL, 0, '', '2016-06-28 09:42:00', '3', '2016-06-28 03:42:06', NULL),
(227, 2016062054, '2016062054', 'Md. Abdul Hai', 'b70@gmail.com', '01819783661', NULL, NULL, NULL, 0, '', '2016-06-28 09:42:00', '3', '2016-06-28 03:42:51', NULL),
(228, 2016064247, '2016064247', 'Md. Lutful Karim', 'b71@gmail.com', '01759095969', NULL, NULL, NULL, 0, '', '2016-06-28 09:43:00', '3', '2016-06-28 03:43:48', NULL),
(229, 2016065891, '2016065891', 'Anowar Hossen', 'b72@gmail.com', '01879067002', NULL, NULL, NULL, 0, '', '2016-06-28 09:44:00', '3', '2016-06-28 03:44:35', NULL),
(230, 2016065884, '2016065884', 'Taskera Begum', 'b73@gmail.com', '01866502804', NULL, NULL, NULL, 0, '', '2016-06-28 09:45:00', '3', '2016-06-28 03:45:20', NULL),
(231, 2016068557, '2016068557', 'Harun-Or_Rashid', 'b74@gmail.com', '01813378108', NULL, NULL, NULL, 0, '', '2016-06-28 09:46:00', '3', '2016-06-28 03:46:12', NULL),
(232, 2016065114, '2016065114', 'Kamal Kanti Majumder', 'b75@gmail.com', '01711313719', NULL, NULL, NULL, 0, '', '2016-06-28 09:47:00', '3', '2016-06-28 03:47:21', NULL),
(233, 2016063289, '2016063289', 'Panna', 'b76@gmail.com', '01875299044', NULL, NULL, NULL, 0, '', '2016-06-28 09:48:00', '3', '2016-06-28 03:48:09', NULL),
(234, 2016062108, '2016062108', 'Rozina Akter', 'b77@gmail.com', '01855446772', NULL, NULL, NULL, 0, '', '2016-06-28 09:48:00', '3', '2016-06-28 03:48:56', NULL),
(235, 2016065909, '2016065909', 'Rina Sultana', 'b78@gmail.com', '01855637757', NULL, NULL, NULL, 0, '', '2016-06-28 09:49:00', '3', '2016-06-28 03:49:33', NULL),
(236, 2016063018, '2016063018', 'Abdul Matin', 'b79@gmail.com', '01821588455', NULL, NULL, NULL, 0, '', '2016-06-28 09:50:00', '3', '2016-06-28 03:50:19', NULL),
(237, 2016068630, '2016068630', 'Saiful Islam', 'sim.mamun@yahoo.com', '01710577889', NULL, NULL, NULL, 0, '', '2016-06-28 09:52:00', '3', '2016-06-28 03:52:20', NULL),
(238, 2016061871, '2016061871', 'Najrul Islam', 'b82@gmail.com', '01824969687', NULL, NULL, NULL, 0, '', '2016-06-28 09:54:00', '3', '2016-06-28 03:54:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fee_catg`
--

CREATE TABLE IF NOT EXISTS `fee_catg` (
  `feectgid` int(11) NOT NULL,
  `catg_type` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `e_date` datetime NOT NULL,
  `e_user` varchar(80) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_catg`
--

INSERT INTO `fee_catg` (`feectgid`, `catg_type`, `status`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'Admission Fee', 1, '2016-04-02 01:21:00', 'shorif', '2016-06-05 13:10:54', 'MOJUMDER'),
(2, 'Manthly Exam Fee 1 Year', 1, '2016-04-10 01:51:00', 'admin', '2016-06-05 14:03:36', 'MOJUMDER'),
(3, 'Scaut Fee', 1, '2016-04-11 07:59:00', 'admin', '2016-04-11 13:43:59', ''),
(4, 'Registration Fee', 1, '2016-05-24 03:28:00', 'baten', '2016-06-05 13:37:47', 'MOJUMDER'),
(5, 'Session Fee', 1, '2016-05-24 03:21:00', 'baten', '2016-05-24 09:07:21', ''),
(6, 'Monthly Tution Fee', 1, '2016-05-24 03:52:00', 'baten', '2016-06-05 13:39:00', 'MOJUMDER'),
(7, 'Re Admission', 1, '2016-06-05 07:42:00', 'MOJUMDER', '2016-06-05 13:11:42', ''),
(8, 'Bill card', 1, '2016-06-05 07:55:00', 'MOJUMDER', '2016-06-05 13:13:55', ''),
(9, 'Syllabus Fee', 1, '2016-06-05 07:43:00', 'MOJUMDER', '2016-06-05 13:15:43', ''),
(10, '1st Semister Fee', 1, '2016-06-05 07:22:00', 'MOJUMDER', '2016-06-05 13:24:22', ''),
(11, '2nd semister Fee', 1, '2016-06-05 07:29:00', 'MOJUMDER', '2016-06-05 13:25:29', ''),
(12, '3hr Semister fee', 1, '2016-06-05 07:11:00', 'MOJUMDER', '2016-06-05 13:26:11', ''),
(13, 'Result Card', 1, '2016-06-05 07:19:00', 'MOJUMDER', '2016-06-05 13:45:19', ''),
(14, 'Education Develop Fee', 1, '2016-06-05 07:55:00', 'MOJUMDER', '2016-06-05 13:51:25', 'MOJUMDER'),
(15, 'Others Fee', 1, '2016-06-05 07:16:00', 'MOJUMDER', '2016-06-05 13:55:16', '');

-- --------------------------------------------------------

--
-- Table structure for table `fstu_login`
--

CREATE TABLE IF NOT EXISTS `fstu_login` (
  `id` int(11) NOT NULL,
  `stu_id` bigint(20) DEFAULT NULL,
  `pass` varchar(100) DEFAULT '123456',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `sId` varchar(250) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fstu_login`
--

INSERT INTO `fstu_login` (`id`, `stu_id`, `pass`, `status`, `sId`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 2016067085, '2016067085', 0, '', '2016-06-03 10:11:58', '7', '2016-11-21 07:31:50', NULL),
(2, 2016065533, '2016065533', 0, '', '2016-06-03 10:41:37', '7', '2016-06-03 16:41:37', NULL),
(3, 2016062447, '2016062447', 1, '81664346fffba3d236103fde57d11aed', '2016-06-03 11:03:16', '7', '2016-07-01 08:30:11', NULL),
(4, 2016067324, '2016067324', 0, '', '2016-06-04 11:16:52', '3', '2016-06-07 17:55:46', NULL),
(5, 2016064629, '2016064629', 0, '', '2016-06-04 11:24:22', '3', '2016-06-04 05:24:22', NULL),
(6, 2016066901, '2016066901', 0, '', '2016-06-04 11:31:10', '3', '2016-06-04 05:31:10', NULL),
(7, 2016066396, '2016066396', 0, '', '2016-06-04 11:39:22', '3', '2016-06-04 05:39:22', NULL),
(8, 2016062496, '2016062496', 0, '', '2016-06-04 11:44:10', '3', '2016-06-04 05:44:10', NULL),
(9, 2016065841, '2016065841', 0, '', '2016-06-04 11:53:48', '3', '2016-06-04 05:53:48', NULL),
(10, 2016066013, '2016066013', 0, '', '2016-06-04 01:30:55', '3', '2016-06-04 07:30:55', NULL),
(11, 2016065455, '2016065455', 0, '', '2016-06-04 01:38:43', '3', '2016-06-04 07:38:43', NULL),
(12, 2016061311, '2016061311', 0, '', '2016-06-04 01:45:37', '3', '2016-06-04 07:45:37', NULL),
(13, 2016064931, '2016064931', 0, '', '2016-06-04 01:51:17', '3', '2016-06-04 07:51:17', NULL),
(14, 2016067455, '2016067455', 0, '', '2016-06-04 01:57:04', '3', '2016-06-04 07:57:04', NULL),
(15, 2016068143, '2016068143', 0, '', '2016-06-04 02:01:26', '3', '2016-06-04 08:01:26', NULL),
(16, 2016068015, '2016068015', 0, '', '2016-06-05 09:54:12', '3', '2016-06-05 03:54:12', NULL),
(17, 2016063174, '2016063174', 0, '', '2016-06-05 10:00:07', '3', '2016-06-05 04:00:07', NULL),
(18, 2016067207, '2016067207', 0, '', '2016-06-05 10:20:36', '3', '2016-06-05 04:20:36', NULL),
(19, 2016062914, '2016062914', 0, '', '2016-06-05 10:25:16', '3', '2016-06-05 04:25:16', NULL),
(20, 2016061717, '2016061717', 0, '', '2016-06-05 10:31:14', '3', '2016-06-05 04:31:14', NULL),
(21, 2016067492, '2016067492', 0, '', '2016-06-05 10:34:58', '3', '2016-06-05 04:34:58', NULL),
(22, 2016064628, '2016064628', 0, '', '2016-06-05 10:43:13', '3', '2016-06-05 04:43:13', NULL),
(23, 2016061205, '2016061205', 0, '', '2016-06-05 11:00:38', '3', '2016-06-05 05:00:38', NULL),
(24, 2016068607, '2016068607', 1, '98a1a05004f056d3856601a18667f3c4', '2016-06-05 11:05:55', '3', '2016-06-08 03:05:00', NULL),
(25, 2016067403, '2016067403', 0, '', '2016-06-05 11:10:38', '3', '2016-06-05 05:10:38', NULL),
(26, 2016061210, '2016061210', 0, '', '2016-06-05 11:15:51', '3', '2016-06-05 05:15:51', NULL),
(27, 2016062834, '2016062834', 0, '', '2016-06-05 11:20:05', '3', '2016-06-05 05:20:05', NULL),
(28, 2016063233, '2016063233', 0, '', '2016-06-05 11:24:03', '3', '2016-06-05 05:24:03', NULL),
(29, 2016065276, '2016065276', 0, '', '2016-06-05 11:47:37', '3', '2016-06-05 05:47:37', NULL),
(30, 2016064009, '2016064009', 0, '', '2016-06-05 11:51:40', '3', '2016-06-05 05:51:40', NULL),
(31, 2016068446, '2016068446', 0, '', '2016-06-05 11:55:55', '3', '2016-06-05 05:55:55', NULL),
(32, 2016062296, '2016062296', 0, '', '2016-06-05 11:59:32', '3', '2016-06-05 05:59:32', NULL),
(33, 2016064777, '2016064777', 0, '', '2016-06-05 12:03:34', '3', '2016-06-05 06:03:34', NULL),
(34, 2016062573, '2016062573', 0, '', '2016-06-05 12:09:00', '3', '2016-06-05 06:09:00', NULL),
(35, 2016061482, '2016061482', 0, '', '2016-06-05 12:13:07', '3', '2016-06-05 06:13:07', NULL),
(36, 2016064853, '2016064853', 1, '57d79d41d3d64e0dc70e3cb2f4f9cf2e', '2016-06-05 12:18:39', '3', '2016-07-05 14:00:33', NULL),
(37, 2016068696, '2016068696', 0, '', '2016-06-05 12:22:16', '3', '2016-06-05 06:22:16', NULL),
(38, 2016064026, '2016064026', 0, '', '2016-06-05 01:43:02', '3', '2016-06-05 07:43:02', NULL),
(39, 2016068735, '2016068735', 0, '', '2016-06-05 01:48:08', '3', '2016-06-05 07:48:08', NULL),
(40, 2016068175, '2016068175', 0, '', '2016-06-05 01:52:23', '3', '2016-06-05 07:52:23', NULL),
(41, 2016061924, '2016061924', 0, '', '2016-06-05 01:59:18', '3', '2016-06-05 07:59:18', NULL),
(42, 2016062099, '2016062099', 0, '', '2016-06-05 02:03:09', '3', '2016-06-05 08:03:09', NULL),
(43, 2016063787, '2016063787', 0, '', '2016-06-05 02:06:36', '3', '2016-06-05 08:06:36', NULL),
(44, 2016061369, '2016061369', 0, '', '2016-06-05 02:09:46', '3', '2016-06-05 08:09:46', NULL),
(45, 2016066125, '2016066125', 0, '', '2016-06-05 02:13:05', '3', '2016-06-05 08:13:05', NULL),
(46, 2016066791, '2016066791', 0, '', '2016-06-05 02:17:23', '3', '2016-06-05 08:17:23', NULL),
(47, 2016067036, '2016067036', 0, '', '2016-06-05 02:27:11', '3', '2016-06-05 08:27:11', NULL),
(48, 2016068338, '2016068338', 0, '', '2016-06-05 02:32:14', '3', '2016-06-05 08:32:14', NULL),
(49, 2016068531, '2016068531', 0, '', '2016-06-05 02:35:37', '3', '2016-06-05 08:35:37', NULL),
(50, 2016064821, '2016064821', 0, '', '2016-06-05 02:39:44', '3', '2016-06-05 08:39:44', NULL),
(51, 2016067228, '2016067228', 0, '', '2016-06-05 02:43:49', '3', '2016-06-05 08:43:49', NULL),
(52, 2016065684, '2016065684', 0, '', '2016-06-05 02:47:57', '3', '2016-06-05 08:47:57', NULL),
(53, 2016066685, '2016066685', 0, '', '2016-06-06 10:46:22', '3', '2016-06-06 04:46:22', NULL),
(54, 2016068768, '2016068768', 0, '', '2016-06-06 10:50:37', '3', '2016-06-06 04:50:37', NULL),
(55, 2016061013, '2016061013', 0, '', '2016-06-06 10:54:23', '3', '2016-06-06 04:54:23', NULL),
(56, 2016064441, '2016064441', 0, '', '2016-06-06 11:01:52', '3', '2016-06-06 05:01:52', NULL),
(57, 2016064615, '2016064615', 0, '', '2016-06-06 11:05:51', '3', '2016-06-06 05:05:51', NULL),
(58, 2016061946, '2016061946', 0, '', '2016-06-06 11:10:34', '3', '2016-06-06 05:10:34', NULL),
(59, 2016065847, '2016065847', 0, '', '2016-06-06 11:15:19', '3', '2016-06-06 05:15:19', NULL),
(60, 2016068046, '2016068046', 0, '', '2016-06-06 11:19:44', '3', '2016-06-06 05:19:44', NULL),
(61, 2016061964, '2016061964', 0, '', '2016-06-06 11:24:14', '3', '2016-06-06 05:24:14', NULL),
(62, 2016066675, '2016066675', 0, '', '2016-06-06 11:28:06', '3', '2016-06-06 05:28:06', NULL),
(63, 2016064270, '2016064270', 0, '', '2016-06-06 11:35:55', '3', '2016-06-06 05:35:55', NULL),
(64, 2016067195, '2016067195', 0, '', '2016-06-06 11:47:30', '3', '2016-06-06 05:47:30', NULL),
(65, 2016062166, '2016062166', 0, '', '2016-06-06 12:32:09', '3', '2016-06-06 06:32:09', NULL),
(66, 2016068906, '2016068906', 0, '', '2016-06-06 12:36:45', '3', '2016-06-06 06:36:45', NULL),
(67, 2016067690, '2016067690', 0, '', '2016-06-06 12:47:40', '3', '2016-06-06 06:47:40', NULL),
(68, 2016067659, '2016067659', 0, '', '2016-06-06 12:53:34', '3', '2016-06-06 06:53:34', NULL),
(69, 2016066636, '2016066636', 0, '', '2016-06-06 12:57:25', '3', '2016-06-08 05:20:13', NULL),
(70, 2016063735, '2016063735', 0, '', '2016-06-06 01:02:27', '3', '2016-06-06 07:02:27', NULL),
(71, 2016064272, '2016064272', 0, '', '2016-06-06 01:18:48', '3', '2016-06-06 07:18:48', NULL),
(72, 2016065014, '2016065014', 0, '', '2016-06-06 01:22:17', '3', '2016-06-06 07:22:17', NULL),
(73, 2016064673, '2016064673', 0, '', '2016-06-06 01:31:26', '3', '2016-06-06 07:31:26', NULL),
(74, 2016067106, '2016067106', 0, '', '2016-06-06 01:41:52', '3', '2016-06-06 07:41:52', NULL),
(75, 2016067693, '2016067693', 0, '', '2016-06-06 01:48:18', '3', '2016-06-06 07:48:18', NULL),
(76, 2016063424, '2016063424', 0, '', '2016-06-06 01:54:40', '3', '2016-06-06 07:54:40', NULL),
(77, 2016065028, '2016065028', 0, '', '2016-06-06 01:58:30', '3', '2016-06-06 07:58:30', NULL),
(78, 2016062763, '2016062763', 0, '', '2016-06-06 02:02:39', '3', '2016-06-06 08:02:39', NULL),
(79, 2016065504, '2016065504', 0, '', '2016-06-06 02:06:50', '3', '2016-06-06 08:06:50', NULL),
(80, 2016062172, '2016062172', 0, '', '2016-06-06 02:10:42', '3', '2016-06-06 08:10:42', NULL),
(81, 2016064561, '2016064561', 0, '', '2016-06-06 02:21:22', '3', '2016-06-06 08:21:22', NULL),
(82, 2016066012, '2016066012', 0, '', '2016-06-06 02:29:59', '3', '2016-06-06 08:29:59', NULL),
(83, 2016068080, '2016068080', 0, '', '2016-06-06 02:35:22', '3', '2016-06-06 08:35:22', NULL),
(84, 2016067765, '2016067765', 0, '', '2016-06-06 02:39:09', '3', '2016-06-06 08:39:09', NULL),
(85, 2016065816, '2016065816', 1, 'ae814a39aed9ad2a7f3e1db6d8f18214', '2016-06-06 02:43:57', '3', '2016-06-07 17:59:29', NULL),
(86, 2016061742, '2016061742', 0, '', '2016-06-06 02:46:40', '3', '2016-06-06 08:46:40', NULL),
(87, 2016063680, '2016063680', 0, '', '2016-06-06 02:50:21', '3', '2016-06-06 08:50:21', NULL),
(88, 2016065173, '2016065173', 0, '', '2016-06-09 11:14:38', '3', '2016-06-09 05:14:38', NULL),
(89, 2016066121, '2016066121', 0, '', '2016-06-09 11:17:47', '3', '2016-06-09 05:17:47', NULL),
(90, 2016066887, '2016066887', 0, '', '2016-06-09 11:21:33', '3', '2016-06-09 05:21:33', NULL),
(91, 2016064012, '2016064012', 0, '', '2016-06-09 11:25:23', '3', '2016-06-09 05:25:23', NULL),
(92, 2016063102, '2016063102', 0, '', '2016-06-09 11:29:23', '3', '2016-06-09 05:29:23', NULL),
(93, 2016061539, '2016061539', 0, '', '2016-06-09 11:33:22', '3', '2016-06-09 05:33:22', NULL),
(94, 2016068785, '2016068785', 0, '', '2016-06-09 12:02:19', '7', '2016-06-09 06:02:19', NULL),
(95, 2016066233, '2016066233', 0, '', '2016-06-09 12:07:13', '7', '2016-06-09 06:07:13', NULL),
(96, 2016061173, '2016061173', 0, '', '2016-06-09 12:18:11', '7', '2016-06-09 06:18:11', NULL),
(97, 2016064479, '2016064479', 0, '', '2016-06-09 12:28:16', '7', '2016-06-09 06:28:16', NULL),
(98, 2016061011, '2016061011', 0, '', '2016-06-09 12:39:38', '7', '2016-06-09 06:39:38', NULL),
(99, 2016061722, '2016061722', 0, '', '2016-06-11 09:33:26', '3', '2016-06-11 03:33:26', NULL),
(100, 2016066019, '2016066019', 0, '', '2016-06-11 09:38:08', '3', '2016-06-11 03:38:08', NULL),
(101, 2016068113, '2016068113', 0, '', '2016-06-11 09:42:34', '3', '2016-06-11 03:42:34', NULL),
(102, 2016068260, '2016068260', 0, '', '2016-06-11 09:48:07', '3', '2016-06-11 03:48:07', NULL),
(103, 2016061965, '2016061965', 0, '', '2016-06-11 09:52:48', '3', '2016-06-11 03:52:48', NULL),
(104, 2016068364, '2016068364', 0, '', '2016-06-11 09:57:33', '3', '2016-06-11 03:57:33', NULL),
(105, 2016063122, '2016063122', 0, '', '2016-06-11 10:01:19', '3', '2016-06-11 04:01:19', NULL),
(106, 2016064505, '2016064505', 0, '', '2016-06-11 10:04:35', '3', '2016-06-11 04:04:35', NULL),
(107, 2016066456, '2016066456', 0, '', '2016-06-11 10:08:30', '3', '2016-06-11 04:08:31', NULL),
(108, 2016067899, '2016067899', 0, '', '2016-06-11 10:12:47', '3', '2016-06-11 04:12:47', NULL),
(109, 2016062717, '2016062717', 0, '', '2016-06-11 10:17:33', '3', '2016-06-11 04:17:33', NULL),
(110, 2016062963, '2016062963', 0, '', '2016-06-11 10:22:33', '3', '2016-06-11 04:22:33', NULL),
(111, 2016068664, '2016068664', 0, '', '2016-06-11 10:26:22', '3', '2016-06-11 04:26:22', NULL),
(112, 2016068706, '2016068706', 0, '', '2016-06-11 10:30:47', '3', '2016-06-11 04:30:47', NULL),
(113, 2016066497, '2016066497', 0, '', '2016-06-11 10:35:06', '3', '2016-06-11 04:35:06', NULL),
(114, 2016061055, '2016061055', 0, '', '2016-06-11 10:42:17', '3', '2016-06-11 04:42:17', NULL),
(115, 2016063625, '2016063625', 0, '', '2016-06-11 10:48:11', '3', '2016-06-11 04:48:11', NULL),
(116, 2016063932, '2016063932', 0, '', '2016-06-11 10:52:35', '3', '2016-06-11 04:52:35', NULL),
(117, 2016061735, '2016061735', 0, '', '2016-06-11 11:09:09', '3', '2016-06-11 05:09:09', NULL),
(118, 2016067939, '2016067939', 0, '', '2016-06-11 11:13:03', '3', '2016-06-11 05:13:03', NULL),
(119, 2016068856, '2016068856', 0, '', '2016-06-11 11:16:52', '3', '2016-06-11 05:16:52', NULL),
(120, 2016065492, '2016065492', 0, '', '2016-06-11 11:34:11', '3', '2016-06-12 04:50:44', NULL),
(121, 2016062001, '2016062001', 0, '', '2016-06-12 11:16:05', '3', '2016-06-12 05:16:05', NULL),
(122, 2016065571, '2016065571', 0, '', '2016-06-12 11:19:06', '3', '2016-06-12 05:19:06', NULL),
(123, 2016063509, '2016063509', 0, '', '2016-06-12 11:22:25', '3', '2016-06-12 05:22:25', NULL),
(124, 2016067894, '2016067894', 0, '', '2016-06-12 11:25:55', '3', '2016-06-12 05:25:55', NULL),
(125, 2016066484, '2016066484', 0, '', '2016-06-12 11:29:16', '3', '2016-06-12 05:29:16', NULL),
(126, 2016064583, '2016064583', 0, '', '2016-06-12 11:32:48', '3', '2016-06-12 05:32:48', NULL),
(127, 2016064310, '2016064310', 0, '', '2016-06-12 11:37:07', '3', '2016-06-12 05:37:07', NULL),
(128, 2016061425, '2016061425', 0, '', '2016-06-12 11:43:06', '3', '2016-06-12 05:43:06', NULL),
(129, 2016061634, '2016061634', 0, '', '2016-06-12 11:47:29', '3', '2016-06-12 05:47:29', NULL),
(130, 2016065120, '2016065120', 0, '', '2016-06-12 11:51:11', '3', '2016-06-12 05:51:11', NULL),
(131, 2016065957, '2016065957', 0, '', '2016-06-12 11:55:04', '3', '2016-06-12 05:55:04', NULL),
(132, 2016065479, '2016065479', 0, '', '2016-06-12 11:58:58', '3', '2016-06-12 05:58:58', NULL),
(133, 2016067319, '2016067319', 0, '', '2016-06-12 12:02:51', '3', '2016-06-12 06:02:51', NULL),
(134, 2016062653, '2016062653', 0, '', '2016-06-12 12:08:24', '3', '2016-06-12 06:08:24', NULL),
(135, 2016063228, '2016063228', 0, '', '2016-06-12 12:12:50', '3', '2016-06-12 06:12:50', NULL),
(136, 2016061086, '2016061086', 0, '', '2016-06-12 12:16:15', '3', '2016-06-12 06:16:15', NULL),
(137, 2016065202, '2016065202', 0, '', '2016-06-12 12:19:36', '3', '2016-06-12 06:19:36', NULL),
(138, 2016061980, '2016061980', 0, '', '2016-06-12 12:23:18', '3', '2016-06-12 06:23:18', NULL),
(139, 2016066904, '2016066904', 0, '', '2016-06-12 12:26:42', '3', '2016-06-12 06:26:42', NULL),
(140, 2016063086, '2016063086', 0, '', '2016-06-12 12:29:50', '3', '2016-06-12 06:29:50', NULL),
(141, 2016066573, '2016066573', 0, '', '2016-06-12 12:36:15', '3', '2016-06-12 06:36:15', NULL),
(142, 2016061374, '2016061374', 0, '', '2016-06-12 12:40:41', '3', '2016-06-12 06:40:41', NULL),
(143, 2016068891, '2016068891', 0, '', '2016-06-12 12:44:09', '3', '2016-06-12 06:44:09', NULL),
(144, 2016064874, '2016064874', 0, '', '2016-06-12 12:54:02', '3', '2016-06-12 06:54:02', NULL),
(145, 2016065414, '2016065414', 0, '', '2016-06-12 12:57:45', '3', '2016-06-12 06:57:45', NULL),
(146, 2016067845, '2016067845', 0, '', '2016-06-12 01:03:27', '3', '2016-06-12 07:03:27', NULL),
(147, 2016068451, '2016068451', 0, '', '2016-06-12 01:18:11', '3', '2016-06-12 07:18:11', NULL),
(148, 2016065609, '2016065609', 0, '', '2016-06-13 09:23:56', '3', '2016-06-13 03:23:56', NULL),
(149, 2016068398, '2016068398', 0, '', '2016-06-13 09:27:47', '3', '2016-06-13 03:27:47', NULL),
(150, 2016064902, '2016064902', 0, '', '2016-06-13 09:34:17', '3', '2016-06-13 03:34:17', NULL),
(151, 2016064882, '2016064882', 0, '', '2016-06-13 09:37:25', '3', '2016-06-13 03:37:25', NULL),
(152, 2016065100, '2016065100', 0, '', '2016-06-13 09:40:32', '3', '2016-06-13 03:40:32', NULL),
(153, 2016061874, '2016061874', 0, '', '2016-06-13 09:44:29', '3', '2016-06-13 03:44:29', NULL),
(154, 2016064770, '2016064770', 0, '', '2016-06-13 09:48:11', '3', '2016-06-13 03:48:11', NULL),
(155, 2016063081, '2016063081', 0, '', '2016-06-13 09:54:17', '3', '2016-06-13 03:54:17', NULL),
(156, 2016065233, '2016065233', 0, '', '2016-06-13 09:58:15', '3', '2016-06-13 03:58:15', NULL),
(157, 2016062214, '2016062214', 0, '', '2016-06-13 10:57:34', '3', '2016-06-13 04:57:34', NULL),
(158, 2016062103, '2016062103', 0, '', '2016-06-13 11:02:14', '3', '2016-06-13 05:02:14', NULL),
(159, 2016068568, '2016068568', 0, '', '2016-06-13 11:07:50', '3', '2016-06-13 05:07:50', NULL),
(160, 2016061081, '2016061081', 0, '', '2016-06-13 11:11:45', '3', '2016-06-13 05:11:45', NULL),
(161, 2016061833, '2016061833', 0, '', '2016-06-13 11:14:54', '3', '2016-06-13 05:14:54', NULL),
(162, 2016064582, '2016064582', 0, '', '2016-06-13 11:18:16', '3', '2016-06-13 05:18:16', NULL),
(163, 2016067857, '2016067857', 0, '', '2016-06-13 11:21:15', '3', '2016-06-13 05:21:15', NULL),
(164, 2016067464, '2016067464', 0, '', '2016-06-13 11:23:53', '3', '2016-06-13 05:23:53', NULL),
(165, 2016067241, '2016067241', 0, '', '2016-06-13 11:27:28', '3', '2016-06-13 05:27:28', NULL),
(166, 2016064101, '2016064101', 0, '', '2016-06-13 11:31:02', '3', '2016-06-13 05:31:02', NULL),
(167, 2016068816, '2016068816', 0, '', '2016-06-13 11:33:35', '3', '2016-06-13 05:33:35', NULL),
(168, 2016061930, '2016061930', 0, '', '2016-06-13 11:39:18', '3', '2016-06-13 05:39:18', NULL),
(169, 2016063281, '2016063281', 0, '', '2016-06-13 11:43:47', '3', '2016-06-13 05:43:47', NULL),
(170, 2016064909, '2016064909', 0, '', '2016-06-19 11:58:21', '7', '2016-06-19 05:58:21', NULL),
(171, 2016064268, '2016064268', 0, '', '2016-06-19 12:03:30', '7', '2016-06-19 06:03:30', NULL),
(172, 2016063839, '2016063839', 0, '', '2016-06-19 12:08:04', '7', '2016-06-19 06:08:04', NULL),
(173, 2016062515, '2016062515', 0, '', '2016-06-19 12:12:04', '7', '2016-06-19 06:12:04', NULL),
(174, 2016065531, '2016065531', 0, '', '2016-06-19 12:16:04', '7', '2016-06-19 06:16:04', NULL),
(175, 2016063804, '2016063804', 0, '', '2016-06-19 12:20:35', '7', '2016-06-19 06:20:35', NULL),
(176, 2016063369, '2016063369', 0, '', '2016-06-19 12:25:09', '7', '2016-06-19 06:25:09', NULL),
(177, 2016068471, '2016068471', 0, '', '2016-06-19 12:30:30', '7', '2016-06-19 06:30:30', NULL),
(178, 2016064966, '2016064966', 0, '', '2016-06-19 12:35:53', '7', '2016-06-19 06:35:53', NULL),
(179, 2016065545, '2016065545', 0, '', '2016-06-22 10:39:50', '3', '2016-06-22 04:39:50', NULL),
(180, 2016065336, '2016065336', 0, '', '2016-06-22 10:44:12', '3', '2016-06-22 04:44:12', NULL),
(181, 2016062387, '2016062387', 0, '', '2016-06-22 10:48:33', '3', '2016-06-22 04:48:33', NULL),
(182, 2016065778, '2016065778', 0, '', '2016-06-22 10:52:36', '3', '2016-06-22 04:52:36', NULL),
(183, 2016065180, '2016065180', 0, '', '2016-06-22 11:01:04', '3', '2016-06-22 05:01:04', NULL),
(184, 2016063757, '2016063757', 0, '', '2016-06-22 11:05:56', '3', '2016-06-22 05:05:56', NULL),
(185, 2016061629, '2016061629', 0, '', '2016-06-22 11:10:40', '3', '2016-06-22 05:10:40', NULL),
(186, 2016066652, '2016066652', 0, '', '2016-06-22 11:14:08', '3', '2016-06-22 05:14:08', NULL),
(187, 2016065472, '2016065472', 0, '', '2016-06-23 01:29:08', '3', '2016-06-23 07:29:08', NULL),
(188, 2016068609, '2016068609', 0, '', '2016-06-23 01:33:37', '3', '2016-06-23 07:33:37', NULL),
(189, 2016065539, '2016065539', 0, '', '2016-06-23 01:37:25', '3', '2016-06-23 07:37:25', NULL),
(190, 2016061156, '2016061156', 0, '', '2016-06-23 01:42:34', '3', '2016-06-23 07:42:34', NULL),
(191, 2016063184, '2016063184', 0, '', '2016-06-23 02:23:24', '3', '2016-06-23 08:23:24', NULL),
(192, 2016066688, '2016066688', 0, '', '2016-06-23 02:26:54', '3', '2016-06-23 08:26:54', NULL),
(193, 2016063057, '2016063057', 0, '', '2016-06-23 02:31:05', '3', '2016-06-23 08:31:05', NULL),
(194, 2016061856, '2016061856', 0, '', '2016-06-23 02:34:04', '3', '2016-06-23 08:34:04', NULL),
(195, 2016067191, '2016067191', 0, '', '2016-06-23 02:37:21', '3', '2016-06-23 08:37:21', NULL),
(196, 2016062220, '2016062220', 0, '', '2016-06-23 02:40:38', '3', '2016-06-23 08:40:38', NULL),
(197, 2016061798, '2016061798', 0, '', '2016-06-23 02:44:02', '3', '2016-06-23 08:44:02', NULL),
(198, 2016065974, '2016065974', 0, '', '2016-06-23 02:47:33', '3', '2016-06-23 08:47:33', NULL),
(199, 2016066464, '2016066464', 0, '', '2016-06-23 02:52:23', '3', '2016-06-23 08:52:23', NULL),
(200, 2016067891, '2016067891', 0, '', '2016-06-23 02:57:06', '3', '2016-06-23 08:57:06', NULL),
(201, 2016062406, '2016062406', 0, '', '2016-06-25 08:35:46', '3', '2016-06-25 02:35:46', NULL),
(202, 2016063748, '2016063748', 0, '', '2016-06-25 09:11:35', '3', '2016-06-25 03:11:35', NULL),
(203, 2016063019, '2016063019', 0, '', '2016-06-25 09:24:11', '3', '2016-06-25 03:24:11', NULL),
(204, 2016062331, '2016062331', 0, '', '2016-06-25 09:43:20', '3', '2016-06-25 03:43:20', NULL),
(205, 2016067461, '2016067461', 0, '', '2016-06-25 10:04:23', '3', '2016-06-25 04:04:23', NULL),
(206, 2016063343, '2016063343', 0, '', '2016-06-25 10:12:01', '3', '2016-06-25 04:12:01', NULL),
(207, 2016061632, '2016061632', 0, '', '2016-06-25 01:03:56', '3', '2016-06-25 07:03:56', NULL),
(208, 2016065852, '2016065852', 0, '', '2016-06-25 01:07:19', '3', '2016-06-25 07:07:19', NULL),
(209, 2016064716, '2016064716', 0, '', '2016-06-26 09:24:58', '3', '2016-06-26 03:24:58', NULL),
(210, 2016066266, '2016066266', 0, '', '2016-06-26 09:32:49', '3', '2016-06-26 03:32:49', NULL),
(211, 2016066544, '2016066544', 0, '', '2016-06-26 09:36:36', '3', '2016-06-26 03:36:36', NULL),
(212, 2016063320, '2016063320', 0, '', '2016-06-26 09:40:53', '3', '2016-06-26 03:40:53', NULL),
(213, 2016063561, '2016063561', 0, '', '2016-06-26 09:50:23', '3', '2016-06-26 03:50:23', NULL),
(214, 2016065512, '2016065512', 0, '', '2016-06-26 09:53:07', '3', '2016-06-26 03:53:07', NULL),
(215, 2016061356, '2016061356', 0, '', '2016-06-26 09:56:00', '3', '2016-06-26 03:56:00', NULL),
(216, 2016067335, '2016067335', 0, '', '2016-06-26 10:53:02', '3', '2016-06-26 04:53:02', NULL),
(217, 2016061727, '2016061727', 0, '', '2016-06-26 10:55:49', '3', '2016-06-26 04:55:49', NULL),
(218, 2016063053, '2016063053', 0, '', '2016-06-26 11:31:36', '3', '2016-06-26 05:31:36', NULL),
(219, 2016064198, '2016064198', 0, '', '2016-06-26 11:37:25', '3', '2016-06-26 05:37:25', NULL),
(220, 2016067302, '2016067302', 0, '', '2016-06-26 11:40:25', '3', '2016-06-26 05:40:25', NULL),
(221, 2016066900, '2016066900', 0, '', '2016-06-28 09:59:25', '3', '2016-06-28 03:59:25', NULL),
(222, 2016067552, '2016067552', 0, '', '2016-06-28 10:03:52', '3', '2016-06-28 04:03:52', NULL),
(223, 2016067209, '2016067209', 0, '', '2016-06-28 10:07:36', '3', '2016-06-28 04:07:36', NULL),
(224, 2016063677, '2016063677', 0, '', '2016-06-28 10:10:48', '3', '2016-06-28 04:10:48', NULL),
(225, 2016064117, '2016064117', 0, '', '2016-06-28 10:14:57', '3', '2016-06-28 04:14:57', NULL),
(226, 2016067170, '2016067170', 0, '', '2016-06-28 10:24:39', '3', '2016-06-28 04:24:39', NULL),
(227, 2016063879, '2016063879', 0, '', '2016-06-28 10:28:34', '3', '2016-06-28 04:28:34', NULL),
(228, 2016068707, '2016068707', 0, '', '2016-06-28 10:34:15', '3', '2016-06-28 04:34:15', NULL),
(229, 2016067037, '2016067037', 0, '', '2016-06-28 10:41:49', '3', '2016-06-28 04:41:49', NULL),
(230, 2016065548, '2016065548', 0, '', '2016-06-28 10:59:09', '3', '2016-06-28 04:59:09', NULL),
(231, 2016064634, '2016064634', 0, '', '2016-06-28 11:02:29', '3', '2016-06-28 05:02:29', NULL),
(232, 2016064521, '2016064521', 0, '', '2016-06-28 11:06:20', '3', '2016-06-28 05:06:20', NULL),
(233, 2016067752, '2016067752', 0, '', '2016-06-28 11:10:11', '3', '2016-06-28 05:10:11', NULL),
(234, 2016065884, '2016065884', 0, '', '2016-06-28 11:26:22', '3', '2016-06-28 05:26:22', NULL),
(235, 2016064578, '2016064578', 0, '', '2016-06-28 11:32:34', '3', '2016-06-28 05:32:34', NULL),
(236, 2016063449, '2016063449', 0, '', '2016-06-28 12:03:48', '3', '2016-06-28 06:03:48', NULL),
(237, 2016065426, '2016065426', 0, '', '2016-06-28 12:07:43', '3', '2016-06-28 06:07:43', NULL),
(238, 2016062504, '2016062504', 0, '', '2016-06-28 12:18:53', '3', '2016-06-28 06:18:53', NULL),
(239, 2016066413, '2016066413', 0, '', '2016-06-28 12:21:48', '3', '2016-06-28 06:21:48', NULL),
(240, 2016067504, '2016067504', 0, '', '2016-06-28 12:31:58', '3', '2016-06-28 06:31:58', NULL),
(241, 2016062300, '2016062300', 0, '', '2016-06-28 12:38:53', '3', '2016-06-28 06:38:53', NULL),
(242, 2016062294, '2016062294', 0, '', '2016-06-28 12:43:12', '3', '2016-06-28 06:43:12', NULL),
(243, 2016068537, '2016068537', 0, '', '2016-06-28 12:52:52', '3', '2016-06-28 06:52:52', NULL),
(244, 2016064796, '2016064796', 0, '', '2016-06-28 01:04:25', '3', '2016-06-28 07:04:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `catagory` varchar(20) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `title`, `catagory`, `image`) VALUES
(2, 'Gurdian', '2', 'bannerk.jpg'),
(3, 'Principal of Basurhat Academy', '3', 'Genesis-Website-Banner6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `google_map`
--

CREATE TABLE IF NOT EXISTS `google_map` (
  `id` int(11) NOT NULL,
  `map_link` text NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `euser` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `google_map`
--

INSERT INTO `google_map` (`id`, `map_link`, `edate`, `euser`) VALUES
(1, '                                    https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1838.059254256966!2d91.27684745986716!3d22.872080224395518!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x37535968886e09c1%3A0x19c4843e134aca4a!2sBasurhat+Bazar!5e0!3m2!1sen!2sbd!4v1459417549920                                ', '2016-03-30 18:00:00', 3),
(2, '                                    https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1299.691260801107!2d91.27611296147373!3d22.87342849291494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0xd2c2da564e6799ef!2sKhawaja+Bakery!5e0!3m2!1sen!2sbd!4v1464163589579                                ', '2016-05-24 18:00:00', 7),
(3, '                                    https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1838.02950817752!2d91.27487!3d22.8742782!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x37535969a196eec7%3A0xada71b40127d981b!2sBasurhat+Academy!5e0!3m2!1sen!2sbd!4v1465367164395                                ', '2016-06-07 18:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `grades_catg`
--

CREATE TABLE IF NOT EXISTS `grades_catg` (
  `id` int(11) NOT NULL,
  `grade_name` varchar(10) DEFAULT NULL,
  `grade_point` float DEFAULT NULL,
  `smark` tinyint(4) NOT NULL,
  `emark` tinyint(4) NOT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `e_date` datetime NOT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `group_setup`
--

CREATE TABLE IF NOT EXISTS `group_setup` (
  `groupid` int(11) NOT NULL,
  `group_name` varchar(25) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `e_date` datetime DEFAULT NULL,
  `e_user` int(11) NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `up_user` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_setup`
--

INSERT INTO `group_setup` (`groupid`, `group_name`, `status`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'Science', 1, NULL, 11, '2016-03-31 07:04:11', 0),
(3, 'Commerce ', 1, NULL, 3, '2016-04-04 04:16:44', 0),
(4, 'Arts', 1, NULL, 3, '2016-04-04 04:17:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `details` varchar(1500) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `title`, `details`, `image`) VALUES
(1, 'School History', 'This school is famous in basurhat.', 'slide-one.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `image_catagory`
--

CREATE TABLE IF NOT EXISTS `image_catagory` (
  `id` int(11) NOT NULL,
  `image_catagory` varchar(70) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image_catagory`
--

INSERT INTO `image_catagory` (`id`, `image_catagory`) VALUES
(1, 'facalty test'),
(2, 'Guardian Metting'),
(3, 'Cultural Function');

-- --------------------------------------------------------

--
-- Table structure for table `income_catg`
--

CREATE TABLE IF NOT EXISTS `income_catg` (
  `id` int(11) NOT NULL,
  `income_type` varchar(150) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income_catg`
--

INSERT INTO `income_catg` (`id`, `income_type`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'Book Sell', '2016-05-24 06:20:00', '', '2016-05-24 12:59:20', '');

-- --------------------------------------------------------

--
-- Table structure for table `inc_invoice_log`
--

CREATE TABLE IF NOT EXISTS `inc_invoice_log` (
  `id` int(11) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inc_invoice_log`
--

INSERT INTO `inc_invoice_log` (`id`, `invoice_id`, `edate`) VALUES
(1, 93203988, '2016-06-05 14:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `infrastructure`
--

CREATE TABLE IF NOT EXISTS `infrastructure` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `details` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `infrastructure`
--

INSERT INTO `infrastructure` (`id`, `title`, `details`, `image`) VALUES
(1, 'School Infrustrure', '<p>this is infrusture section .gfhfghfh</p>', 'infrustruture.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `library_gallery`
--

CREATE TABLE IF NOT EXISTS `library_gallery` (
  `id` int(11) NOT NULL,
  `image_title` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `library_info`
--

CREATE TABLE IF NOT EXISTS `library_info` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `details` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `main_ledger`
--

CREATE TABLE IF NOT EXISTS `main_ledger` (
  `id` int(11) NOT NULL,
  `trans_id` bigint(20) NOT NULL,
  `accountid` bigint(20) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `trans_type` int(11) NOT NULL,
  `trans_catg` varchar(30) NOT NULL,
  `trans_method` int(11) NOT NULL,
  `check_no` int(11) NOT NULL,
  `pay_person` varchar(100) NOT NULL,
  `debit` decimal(10,2) DEFAULT NULL,
  `credit` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `e_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manageing_commitee`
--

CREATE TABLE IF NOT EXISTS `manageing_commitee` (
  `memberid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `fname` varchar(25) NOT NULL,
  `mname` varchar(25) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `per_address` varchar(100) NOT NULL,
  `pre_address` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `e_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `e_user` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manageing_commitee`
--

INSERT INTO `manageing_commitee` (`memberid`, `name`, `fname`, `mname`, `mobile`, `email`, `gender`, `designation`, `per_address`, `pre_address`, `picture`, `e_date`, `e_user`) VALUES
(2, 'Md.Mustafizur Rahman', 'Mustak Ahmed', 'Raseda Akter', '01840239203', 'mustafiz@gmail.com', 'Male', 'President', 'Basur hat ,company gongj,nowakhali', 'Basur hat ,company gongj,nowakhali', 'pp size photo.jpg', '2016-04-08 10:51:09', 3),
(3, 'Md.Karim Ullah Mujumder', 'Akbar Khan Mjumder', 'Rasheda AKter', '01712005140', 'omarlemua@gmail.com', 'Male', 'Secretary', 'Basur hat ,company gongj,nowakhali', 'Basur hat ,company gongj,nowakhali', '20141221_155908.jpg', '2016-04-08 10:54:08', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mark_add`
--

CREATE TABLE IF NOT EXISTS `mark_add` (
  `id` int(11) NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `exmid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `section` varchar(100) NOT NULL,
  `shift` varchar(50) NOT NULL,
  `roll_no` smallint(6) NOT NULL,
  `subjid` int(6) NOT NULL,
  `theory_mark` tinyint(4) NOT NULL,
  `obj_mark` tinyint(4) NOT NULL,
  `practical_mark` tinyint(4) NOT NULL,
  `other_mark` int(11) NOT NULL,
  `total_mark` int(11) NOT NULL,
  `exmyear` year(4) NOT NULL,
  `e_date` datetime NOT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mark_convert`
--

CREATE TABLE IF NOT EXISTS `mark_convert` (
  `id` int(11) NOT NULL,
  `convert_p` tinyint(4) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `maximum_period`
--

CREATE TABLE IF NOT EXISTS `maximum_period` (
  `id` int(11) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `max_period` int(11) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` int(11) NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `up_user` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maximum_period`
--

INSERT INTO `maximum_period` (`id`, `shiftid`, `year`, `max_period`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, 2016, 8, NULL, 3, '2016-04-01 19:47:03', 3),
(2, 2, 2016, 9, NULL, 5, '2016-04-01 19:47:12', 5);

-- --------------------------------------------------------

--
-- Table structure for table `meritlist`
--

CREATE TABLE IF NOT EXISTS `meritlist` (
  `id` int(11) NOT NULL,
  `exmid` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `shift` int(11) NOT NULL,
  `section` varchar(50) CHARACTER SET utf8 NOT NULL,
  `stu_id` int(11) NOT NULL,
  `pre_roll` int(11) NOT NULL,
  `present_roll` int(11) NOT NULL,
  `total_mark` int(11) NOT NULL,
  `exm_year` int(11) NOT NULL,
  `edate` date NOT NULL,
  `euser` int(11) NOT NULL,
  `up_date` date NOT NULL,
  `up_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monthly_closing`
--

CREATE TABLE IF NOT EXISTS `monthly_closing` (
  `id` int(11) NOT NULL,
  `total_income` decimal(10,2) NOT NULL,
  `total_expanse` decimal(10,2) NOT NULL,
  `hand_cash` decimal(10,2) NOT NULL,
  `bank_cash` decimal(10,2) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `euser` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `pdf_details` varchar(1500) NOT NULL,
  `notice_date` date NOT NULL,
  `entry_user` varchar(70) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `title`, `pdf_details`, `notice_date`, `entry_user`) VALUES
(1, 'Exam', '1.pdf', '2016-03-31', '2'),
(2, 'test exam will be start on 2016-04-14', 'test exam will be start on 2016-04-14 will be start', '2016-04-02', '3'),
(3, 'test exam - 2016 routine published', '', '2016-04-02', '3');

-- --------------------------------------------------------

--
-- Table structure for table `online_status`
--

CREATE TABLE IF NOT EXISTS `online_status` (
  `id` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `e_date` datetime NOT NULL,
  `e_user` varchar(50) DEFAULT '',
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `other_income`
--

CREATE TABLE IF NOT EXISTS `other_income` (
  `id` int(11) NOT NULL,
  `accountid` bigint(20) NOT NULL,
  `invoice_no` varchar(30) NOT NULL,
  `income_type` varchar(150) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `bank_name` varchar(150) DEFAULT NULL,
  `p_accountid` bigint(20) DEFAULT NULL,
  `check_no` varchar(30) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `descrp` varchar(255) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pass_markctg`
--

CREATE TABLE IF NOT EXISTS `pass_markctg` (
  `passid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `subjid` int(11) NOT NULL,
  `theory` tinyint(4) NOT NULL,
  `obj` tinyint(4) NOT NULL,
  `diff_pass` tinyint(2) NOT NULL,
  `t_mark` tinyint(4) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pass_markctg`
--

INSERT INTO `pass_markctg` (`passid`, `classid`, `subjid`, `theory`, `obj`, `diff_pass`, `t_mark`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, 1, 100, 0, 0, 0, '2016-04-01 18:04:21', '3', '0000-00-00 00:00:00', ''),
(2, 3, 10, 0, 0, 0, 33, '2016-04-01 19:04:34', '3', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `principal_message`
--

CREATE TABLE IF NOT EXISTS `principal_message` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `image` varchar(500) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `principal_message`
--

INSERT INTO `principal_message` (`id`, `title`, `image`, `details`) VALUES
(1, 'Principal Message', 'A.Rahim.jpg', '<p><span class="example2">behalf of all the staff members, I would like to welcome everyone to Loganville-Springfield Elementary School!!&nbsp; It is a privilege to serve as principal of Loganville.&nbsp; Our school has an outstanding <strong>reputation, and I am proud to be part of such a wonderful program.&nbsp; Loganville-Springfield is filled wOn ith enthusiastic students willing</strong> to learn, supportive parents/guardians <strong>interested</strong> in their children''s education, and a&nbsp;dedicated professional staff committed to providing the students with a quality education.&nbsp;</span></p>\n<div>&nbsp;</div>\n<div>I would like to encourage&nbsp;each parent/guardian&nbsp;to<strong> stay active in your child''s education.&nbsp; I certainly realize that many of you lead busy lives, and it is often difficult to volunteer at school.&nbsp; However, taking just a few minutes in the evening to read to you</strong>r child, talk with your child about school, or simply see that your child is organized for the next school day can have great benefits.&nbsp;</div>\n<div>\n<div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>\n<div align="left">Enjoy the 2014-2015 school year and all the excitement it will bring!&nbsp; Please feel free to contact any of us at Loganville-Springfield if you would like more information about our school.</div>\n<div align="left">&nbsp;</div>\n<div align="left"><strong><em>Sincerely,</em></strong></div>\n<div align="left">&nbsp;</div>\n<div align="left"><strong>Scott A. Carl</strong></div>\n<div align="left"><strong><em>Principal</em></strong></div>\n</div>\n<div id="spoon-plugin-kncgbdglledmjmpnikebkagnchfdehbm-2" style="display: none;">&nbsp;</div>');

-- --------------------------------------------------------

--
-- Table structure for table `regis_tbl`
--

CREATE TABLE IF NOT EXISTS `regis_tbl` (
  `id` int(11) NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `name` varchar(80) NOT NULL,
  `fName` varchar(80) NOT NULL,
  `foccupation` varchar(100) DEFAULT NULL,
  `mName` varchar(80) NOT NULL,
  `moccupation` varchar(100) DEFAULT NULL,
  `name_ban` varchar(50) NOT NULL,
  `fName_ban` varchar(50) NOT NULL,
  `mName_ban` varchar(50) NOT NULL,
  `local_guardian` varchar(80) NOT NULL,
  `Phone_n` varchar(15) NOT NULL,
  `personal_phone` varchar(15) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `par_address` varchar(255) NOT NULL,
  `pre_address` varchar(255) DEFAULT NULL,
  `dob` date NOT NULL,
  `dob_id` varchar(20) NOT NULL,
  `pob` varchar(100) NOT NULL,
  `pbs` varchar(70) NOT NULL,
  `gpa` varchar(15) NOT NULL,
  `gender` char(8) NOT NULL,
  `religion` char(20) NOT NULL,
  `blood_grou` varchar(5) DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `picture` text,
  `verid` int(11) DEFAULT NULL,
  `parentid` bigint(20) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regis_tbl`
--

INSERT INTO `regis_tbl` (`id`, `stu_id`, `name`, `fName`, `foccupation`, `mName`, `moccupation`, `name_ban`, `fName_ban`, `mName_ban`, `local_guardian`, `Phone_n`, `personal_phone`, `email`, `par_address`, `pre_address`, `dob`, `dob_id`, `pob`, `pbs`, `gpa`, `gender`, `religion`, `blood_grou`, `city`, `picture`, `verid`, `parentid`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 2016067085, 'Farha Tahrim Torni', 'Kamal Uddin ', 'Business ', 'Fatema Akter Akhi', 'Housewife ', 'ফারহা তাহরীম তর্ণি ', 'কামাল উদ্দিন', 'ফাতেমা আক্তার আঁখি', 'Fatema Akter Akhi ', '01703726113', '01703726113', 'aa@gmail.com ', 'West Lakshmipur , Dalal Bazar , Sadar, Lakshmipur.', 'Master Para, Basurhat, Companigonj,Noakhali.', '2010-07-08', '20105114335111827', 'Lakshmipur', 'Basurhat Academy', 'A+', 'Female', 'ISLAM', 'B+', 'NOAKHALI', '1.jpg', 0, 2016065486, '2016-06-03 10:11:58', '7', '2016-06-05 20:01:01', '3'),
(2, 2016065533, 'Imthan Kholil', ' Ibrahim Kholil', 'Foreign Services ', 'Nazmun Nahar', 'Housewife ', 'ইমতেহান খলিল', ' ইব্রাহিম খলিল ', 'নাজমুন নাহার', 'Nazmun Nahar', '01748662412', '01748662412', 'ab@gmail.com ', 'Rampur , Bamnia  , Companigonj  , Noakhali ', 'Karalia  , Basurhat , Companigonj  , Noakhali', '2010-08-21', '20107512171030391', 'Basurhat ', 'Basurhat Academy ', 'A+', 'Male', 'ISLAM', 'A+', 'NOAKHALI', '2.jpg', 0, 2016065460, '2016-06-03 10:41:37', '7', '2016-06-05 20:14:14', '3'),
(3, 2016062447, 'Nadia Tabassum ', 'Md.Harun ', 'Businesses ', 'Toyaber Nesa', 'Housewife ', ' নাদিয়া তাবাসসুম ', 'মোঃ হারুন ', 'তৈয়বের নেছা', 'Toyaber Nesa', '01845121037', '01712409310', 'ac@gmail.com ', 'Karimpur  , Chmibhuiyar Hat , Dagonbhuiya  , Feni', 'Ramdi , Basurhat  , Companigonj  , Noakhali ', '2010-02-17', '20103012512102027', 'Basurhat ', 'Basurhat Academy ', 'A+', 'Female', 'ISLAM', 'B+', 'FENI', '03.jpg', 0, 2016064756, '2016-06-03 11:03:16', '7', '2016-06-05 20:07:07', '3'),
(4, 2016067324, 'Md. Tanim Ahmmed', 'Md. Salim Uddin', 'Businessman', 'Jannatul Ferdaous', 'Housewife', ' মোঃ তানিম আহাম্মেদ', ' মোঃ  সেলিম উদ্দিন ', 'জান্নাতুল  ফেরদাউস', 'Md. Salim Uddin', '01827508630', '01827508630', 'ad@gmail.com', 'Apon Nibas, 8 No Word , Basurhat , Companigonj , Noakhali', 'Apon Nibas, 8 No Word , Basurhat , Companigonj , Noakhali', '2010-09-08', '20107521608032389', 'Noakhali', 'Basurhat academy', '5.00', 'Male', 'ISLAM', '', 'NOAKHALI', '4.jpg', 0, 2016066723, '2016-06-04 11:16:52', '3', '2016-06-08 21:15:15', '7'),
(5, 2016064629, 'Nijum Dey', 'Mihir Kumar Dey', 'Private job', 'Lovely Dey', 'Housewife', 'নিঝুম  দে', 'মিহির কুমার  দে', 'লাভলী  দে', 'Arup Mojumder', '01821160211', '01851891801', 'ac@gmail.com', 'Mattri Nibas, Ward No- 4 , Basurhat , Companigonj , Noakhali', 'Mattri Nibas, Ward No- 4 , Basurhat , Companigonj , Noakhali', '2008-11-13', '20087522105022797', 'Chittagong', 'Basurhat Academy', '0.00', 'Female', 'HINDUISM', 'AB+', 'NOAKHALI', '5.jpg', 0, 2016067112, '2016-06-04 11:24:22', '3', '2016-06-05 20:08:08', '3'),
(6, 2016066901, 'Ashraful Alam Nabil', 'Nur Alam', 'Businessman', 'Nargis Sultana', 'Housewife', 'আশরাফুল আলম নাবিল', 'নূর আলম', 'নার্গিস সুলতানা', 'Nargis Sultana', '01815843135', '01815843135', 'ad@gmail.com', 'Shake Ahmed Forman er Bari, Vill: Charkakra , Notun Bazar , Companigonj , Noakhali', 'Abdur Rahman Nibas, Basurhat Pourosova , Basurhat , Companigonj , Noakhali', '2011-10-28', '20117512135060275', 'Basurhat', 'Basurhat Academy', '0.00', 'Male', 'ISLAM', '', 'NOAKHALI', '6.jpg', 0, 2016063500, '2016-06-04 11:31:10', '3', '2016-06-05 20:37:37', '3'),
(7, 2016066396, 'Mohima Akter Ripa', 'Md. Ripon Mia', 'Businessman', 'Kohinur Begum', 'Housewife', 'মহিমা আক্তার রিপা', 'মোঃ রিপন মিয়া', 'কোহিনুর  বেগম', 'Kohinur Begum', '01732161406', '01732161406', 'ag@gmail.com', 'Kashipur , Kashipur , Homna , Comilla', 'Karaliya , Basurhat , Companigonj , Noakhali', '2009-11-08', '20097521604031413', 'Comilla', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'B+', 'NOAKHALI', '9.jpg', 0, 2016067307, '2016-06-04 11:39:22', '3', '2016-06-05 20:01:01', '3'),
(8, 2016062496, 'Abdul Halim', 'Abdur Rahim', 'Private Service', 'Nadia Akter', 'Housewife', 'আব্দুল হালিম', 'আব্দুর রহিম', 'নাদিয়া আক্তার', 'Shaheda Akter', '01823241738', '01823241738', 'ah@gmail.com', 'Char Hazari , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2010-01-14', '032871', 'C/O: Abdul Aziz Chukani Bari', 'Not applicable', '5.00', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '14.jpg', 0, 2016063574, '2016-06-04 11:44:10', '3', '2016-06-05 20:34:34', '3'),
(9, 2016065841, 'Md. Tomsur Hossen', 'Md. Yousuf', 'Abroad', 'Ainur Nahar', 'Housewife', 'মোঃ তুমসুর  হোসেন ( জোবায়ের)', 'মোঃ ইউসুফ', 'আইনুর নাহার', 'Khatuman Jannat', '01812462497', '01715697370', 'ai@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2010-06-09', '20107412155060728', 'Char Kakra', 'Basurhat Academy', '5.00', 'Male', 'ISLAM', 'A+', 'NOAKHALI', '15.jpg', 0, 2016063498, '2016-06-04 11:53:48', '3', '2016-06-05 21:00:00', '3'),
(10, 2016066013, 'Shainjana Bhowmik Adri', 'Sanjoy Bhowmik', 'Employee', 'Suchitra Deb Nath', 'Employee', 'শিঞ্জনা ভৌমিক অদ্রি', 'সঞ্জয় ভৌমিক', 'সুচিত্রা দেব নাথ', 'Suchitra Deb Nath', '01726400331', '01726400331', 'aj@gmail.com', 'Bora Raja Pur , Basurhat , Companigonj , Noakhali', 'Bora Raja Pur , Basurhat , Companigonj , Noakhali', '2011-01-01', '123', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'HINDUISM', '', 'NOAKHALI', '16.jpg', 0, 2016065181, '2016-06-04 01:30:55', '3', '2016-06-05 21:40:40', '3'),
(11, 2016065455, 'Umme Sumaiya', 'Md. Nazrul Islam', 'Businessman', 'Shirin Akter', 'Housewife', 'উম্মে সুমাইয়া', 'মোঃ নজরুল ইসলাম', 'মোসাম্মৎ শিরিন আক্তার', 'Md. Nazrul Islam', '01832876393', '01817052381', 'ak@gmail.com', 'Basurhat Pourosova , Basurhat , Companigonj , Noakhali', 'Basurhat Pourosova , Basurhat , Companigonj , Noakhali', '2010-04-15', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'A+', 'NOAKHALI', '19.jpg', 0, 2016068394, '2016-06-04 01:38:43', '3', '2016-06-05 21:15:15', '3'),
(12, 2016061311, 'Niloy Chandra Shil', 'Sumon Chandra Shil', 'Businessman', 'Uzzala Rani Shil', 'Housewife', 'নিলয় চন্দ্র শীল', 'সুমন চন্দ্র শীল', 'উজ্জ্বলা রানী শীল', 'Sujon Chandra Shil', '01822502612', '01815717115', 'al@gmail.com', 'Char Kakra , Char Kakra , Companigonj , Noakhali', 'C/O: Rosna Ara Market, Basurhat , Basurhat , Companigonj , Noakhali', '2010-08-28', '064481', 'Char kakra, Companigonj', 'Not Applicable', 'Not Applicable', 'Male', 'HINDUISM', '', 'NOAKHALI', '22.jpg', 0, 2016061422, '2016-06-04 01:45:37', '3', '2016-06-05 21:00:00', '3'),
(13, 2016064931, 'Nur Ahammed Rafsan', 'Nur Uddin Helal', 'Businessman', 'Salma Akter', 'Housewife', 'নুর আহম্মেদ রাফসান', 'নুর উদ্দিন  হেলাল', 'সালমা আক্তার', 'Nur Uddin Helal', '01712148429', '01712148429', 'am@gmail.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-09-05', '123', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'O+', 'NOAKHALI', '25.jpg', 0, 2016064248, '2016-06-04 01:51:17', '3', '2016-06-09 05:03:03', '3'),
(14, 2016067455, 'Ramin Shahriar', 'A.N.M. Shajahan', 'Businessman', 'Hasina Akter', 'Housewife', 'রামিন শাহরিয়ার', 'এ.এন.এম. শাহজাহান', 'হাসিনা আক্তার', 'A.N.M. Shajahan', '01712165653', '01828799983', 'an@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-11-12', '20107521603026004', 'Companigonj,  Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016062156, '2016-06-04 01:57:04', '3', '2016-06-04 07:57:04', NULL),
(15, 2016068143, 'Abdul-Al-Noman', 'Nazim Uddin', 'Job Holder', 'Jannatul Ferduous ', 'Housewife', 'আবদুল্লাহ আল নোমান', 'নাজিম উদ্দিন', 'জান্নাতুল ফেরদাউস', 'Jannatul Ferduous', '01879068101', '01879068101', 'ao@gmail.com', 'Char kakra , Notun Bazar , Basurhat , Noakhali', 'Char Kakra , Notun Bazar , Companigonj , Noakhali', '2010-03-08', '20107512135062619', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '28.jpg', 0, 2016067499, '2016-06-04 02:01:26', '3', '2016-06-11 04:41:41', '7'),
(16, 2016068015, 'Md. Maruf', 'Md. Manik', 'Private Service', 'Kamrun Nahar', 'Housewife', 'মো: মারুফ', 'মোঃ মানিক', 'কামরুন নাহার', 'Md. Easin', '01850018623', '01850018623', 'ap@gmail.com', 'East Ear Pur , Somer Munshir Hat , Senbag , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2010-06-28', '20107518047057762', 'Noakhali', 'Basurhat Academy', '5.00', 'Male', 'ISLAM', 'O+', 'NOAKHALI', 'Tulips.jpg', 0, 2016066666, '2016-06-05 09:54:12', '3', '2016-06-05 03:54:12', NULL),
(17, 2016063174, 'Bibi Moriom', 'Abdullah Al Hasan', 'Job', 'Sharmin Akhter', 'Housewife', 'বিবি মরিয়ম', 'মোঃ আবদুল্ল্যাহ আল হাসান', 'শারমিন আক্তার', 'Abdus Sattar', '01729985698', '01729985698', 'aq@gmail.com', 'Chor Parboti , Basurhat , Companigonj , Noakhali', 'Chor Parboti , Basurhat , Companigonj , Noakhali', '2010-11-25', '7522104069517', 'Basurhat Pourosova', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'O+', 'NOAKHALI', 'Tulips.jpg', 0, 2016067159, '2016-06-05 10:00:07', '3', '2016-06-05 04:00:07', NULL),
(18, 2016067207, 'Anowara Binte Sayfa', 'Anowar Hossain', 'Electrician', 'Taslima Akhter', 'Housewife', 'আনোয়ারা বিনতে সাইফা', 'আনোয়ার হোসেন', 'তাছলিমা আকতার', 'Taslima Akhter', '01715599104', '01557785950', 'ar@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-07-29', '20107521603030359', 'Basurhat, Noakhali.', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'O+', 'NOAKHALI', 'Tulips.jpg', 0, 2016063368, '2016-06-05 10:20:36', '3', '2016-06-05 04:20:36', NULL),
(19, 2016062914, 'Jesica Jahan Shova', 'Yeakub Nabi', 'Abroad', 'Bibi Kuslhum Shamoly', 'Housewife', 'জেছিকা জাহান শোভা', 'ইয়াকুব নবী', 'বিবি কুলসুম শ্যামলী', 'Roky', '01929097321', '01816355313', 'as@gmail.com', 'Mohammad Nagar , K. T. M. Hat , Companigonj , Noakhali', 'Mohammad Nagar , K. T. M. Hat  , Companigonj , Noakhali', '2011-10-03', '123', 'Mohammad Nagar', 'Not applicable', '4.50', 'Female', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016065166, '2016-06-05 10:25:16', '3', '2016-06-05 04:25:16', NULL),
(20, 2016061717, 'Nirob Boishnob', 'Nemai Boishnob', 'Shopkeeper', 'Bobita Boishnob', 'Housewife', 'নিরব বৈষ্ণব', 'নিমাই বৈষ্ণব', 'ববিতা বৈষ্ণব', 'Bobita Boishnob', '01822008464', '01822008464', 'at@gmail.com', 'Birahim Pur , Basurhat , Companigonj , Noakhali', 'Birahim Pur , Basurhat , Companigonj , Noakhali', '2010-07-01', '20107512183039706', 'Basurhat', 'Basurhat Academy', '4.00', 'Male', 'ISLAM', '', 'NOAKHALI', '37.jpg', 0, 2016062509, '2016-06-05 10:31:14', '3', '2016-06-11 04:35:35', '7'),
(21, 2016067492, 'Nadia Karim', 'Nur Karim', 'Abroad', 'Jakia Khatun', 'Housewife', 'নাদিয়া করিম', 'নুর করিম', 'জাকিয়া খাতুন', 'Jakia Khatun', '01817326394', '01817326394', 'au@gmail.com', 'Char Parboti , Char Hazari , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-01-10', '03911486', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016066005, '2016-06-05 10:34:58', '3', '2016-06-05 04:34:58', NULL),
(22, 2016064628, 'Imam Hossen', 'Sofi Ullah', 'Businessman', 'Roksana Akter', 'Housewife', 'ইমাম হোসেন', 'সফি উল্লাহ', 'রোকসানা আক্তার', 'Roksana Akter', '01822962845', '01822962845', 'av@gmail.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-12-15', '20107521602032289', 'Basurhat, Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016067955, '2016-06-05 10:43:13', '3', '2016-06-05 05:07:07', '3'),
(23, 2016061205, 'Fatema Binte Belayet Nuha', 'Belayet Hossain Bulbul', 'Abroad', 'Jahanara Begum', 'Housewife', 'ফাতেমা বিনতে বেলায়েত নুহা', 'বেলায়েত হোসেন বুলবুল', 'জাহানারা বেগম', 'Jahanara Begum', '01845117295', '01845117295', 'aw@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2010-05-11', '20097521607031906', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'O+', 'NOAKHALI', '40.jpg', 0, 2016067506, '2016-06-05 11:00:38', '3', '2016-06-11 04:43:43', '7'),
(24, 2016068607, 'Noman Al Abtahi', 'Abdur Rohman', 'Abroad', 'Hafsa Khatun', 'Housewife', 'নোমান আল আবতাহী', 'আব্দুর রহমান', 'হাফছা খাতুন', 'Mr. Abdul Hadi', '01814110838', '01827982375', 'hasanalbanna@gmail.com', 'Basurhat Pourosova, Ward No- 08 , Basurhat , Companigonj , Noakhali', 'Basurhat Pourosova, Ward No- 08 , Basurhat , Companigonj , Noakhali', '2010-12-04', '123', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '31.jpg', 0, 2016062472, '2016-06-05 11:05:55', '3', '2016-06-11 04:33:33', '7'),
(25, 2016067403, 'Sumiea Akter', 'Ala Uddin', 'Abroad', 'Kamrun Nahar', 'Housewife', 'সুমাইয়া আক্তার', 'আলা উদ্দিন', 'কামরুন নাহার', 'Kamrun Nahar', '01850020885', '01763757999', 'ax@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2009-12-15', '20097521607025550', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016062345, '2016-06-05 11:10:38', '3', '2016-06-05 05:10:38', NULL),
(26, 2016061210, 'Amit Hossen', 'Amir Hossen', 'Abroad', 'Shahara Akter', 'Housewife', 'অমিত হোসেন', 'আমির হোসেন', 'শাহারা আক্তার', 'Shahara Akter', '01726782093', '01726782093', 'az@gmail.com', 'Batia , Batia , Kabir Hat , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-02-21', '20107514723003649', 'Batia', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '43.jpg', 0, 2016068074, '2016-06-05 11:15:51', '3', '2016-06-11 05:34:34', '7'),
(27, 2016062834, 'Abdullah Al Rafi', 'Abdul Awal', 'Abroad', 'Kamrun Nahar', 'Housewife', 'আব্দুল্লাহ আল রাফি', 'আব্দুল আউয়াল', 'কামরুন নাহার', 'Kamrun Nahar', '01863747737', '01879746738', 'ba@gmail.com', 'Char Hazari , Basurhat , Companigonj , Noakhali', 'Char Hazari , Basurhat , Companigonj , Noakhali', '2010-10-18', '20107521606032288', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016068442, '2016-06-05 11:20:05', '3', '2016-06-05 05:20:05', NULL),
(28, 2016063233, 'Mahsrur Hossain', 'Shakawat Hossain', 'Service Holder', 'Taslima Sultana', 'Housewife', 'মাশরুর হোসেন', 'সাখাওয়াত হোসেন', 'তাছলিমা সুলতানা', 'Taslima Sultana', '01825218522', '01825218522', 'bb@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-12-22', '20107521602032595', 'Basurhat', 'Basurhat Academy', '5.00', 'Male', 'ISLAM', 'O+', 'NOAKHALI', 'Tulips.jpg', 0, 2016064041, '2016-06-05 11:24:03', '3', '2016-06-05 05:24:03', NULL),
(29, 2016065276, 'Imtiaj Uddin', 'Iktiar Uddin', 'Abroad', 'Nasrin Akther', 'Housewife', 'ইমতিয়াজ উদ্দিন', 'ইকতিয়ার উদ্দিন', 'নাসরিন আক্তার', 'Sharmin Akther', '01732271902', '01710978406', 'bc@gmail.com', 'Char Parboti , Basurhat , Companigonj , Noakhali', 'Alipur , Kabirhat , Kabirhat , Noakhali', '2010-08-27', '123', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'AB+', 'NOAKHALI', '46.jpg', 0, 2016067343, '2016-06-05 11:47:37', '3', '2016-06-11 05:14:14', '7'),
(30, 2016064009, 'Md. Shehezad Ibrahim', 'Md. Mohin Uddin', 'Businessman', 'Shamima Yeasmin', 'Housewife', 'মোঃ শেহেজাদ ইব্রাহিম', 'মোঃ মহিন উদ্দিন', 'শামিমা ইয়াছমিন', 'Md. Mohin Uddin', '01917144630', '01917144630', 'bd@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2009-12-22', '20097521603032284', 'Basurhat, Companigonj', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '49.jpg', 0, 2016063626, '2016-06-05 11:51:40', '3', '2016-06-11 05:34:34', '7'),
(31, 2016068446, 'Imam Sadik', 'Abul Kalam', 'Govt. Job', 'Jannath Mahumuda Jahan', 'Housewife', 'ইমাম সাদিক', 'আবুল কালাম', 'জান্নাত মাহমুদা জাহান', 'Jannath Mahumuda Jahan', '01720456798', '01762137437', 'bf@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2009-07-02', '20091553798011819', 'Chittagong', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '52.jpg', 0, 2016066889, '2016-06-05 11:55:55', '3', '2016-06-11 05:40:40', '7'),
(32, 2016062296, 'Nurjat Tabassum Tani', 'Nizam Uddin', 'Service Holder', 'Nazmun Nahar', 'Housewife', 'নুরজাত তাবাচ্ছুম তানি', 'নিজাম উদ্দিন', 'নাজমুন নাহার', 'Nazmun Nahar', '01850608043', '01850608043', 'be@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2009-11-07', '123', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016064169, '2016-06-05 11:59:32', '3', '2016-06-05 05:59:32', NULL),
(33, 2016064777, 'Sanjida Tabassum Nacifa', 'Zakir Hossain', 'Abroad', 'Nazmun Nahar', 'Housewife', 'সানজিদা তাবাচ্ছুম নাছিফা', 'জাকির হোসেন', 'নাজমুন নাহার', 'Nazmun Nahar', '01779705329', '01779705329', 'bf@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Muca Pur , Bangla Bazar , Companigonj , Noakhali', '2009-05-06', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'AB+', 'NOAKHALI', 'Tulips.jpg', 0, 2016066599, '2016-06-05 12:03:34', '3', '2016-06-05 06:03:34', NULL),
(34, 2016062573, 'Sayma Sultana', 'Md. Nasir Uddin', 'Abroad', 'Bilkis Jahan', 'Housewife', 'সায়েমা সুলতানা', 'মোঃ নাছির উদ্দিন', 'বিলকিছ জাহান', 'Bilkis Jahan', '01771423734', '01731694095', 'bg@gmail.com', 'Gopal Pur , Biz Bag , Companigonj , Noakhali', 'Gopal Pur , Biz Bag , Companigonj , Noakhali', '2010-05-13', '20107518085000424', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016068960, '2016-06-05 12:09:00', '3', '2016-06-05 06:09:00', NULL),
(35, 2016061482, 'Hasan Md. Manhas', 'Manik Mia', 'Job', 'Marjahan Begum', 'Housewife', 'হাসান মোঃ মিনহাজ', 'মানিক মিয়া', 'মার জাহান বেগম', 'Marjahan Begum', '01860175232', '01860175232', 'bh@gmail.com', 'Ramdi , Basurhat , Companigonj , Noakhali', 'Ramdi , Basurhat , Companigonj , Noakhali', '2010-09-12', '123', 'Nobipur', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '61.jpg', 0, 2016066617, '2016-06-05 12:13:07', '3', '2016-06-11 05:47:47', '7'),
(36, 2016064853, 'Rudra Mojumder', 'Bijoy Kumar', 'Private Service', 'Ipu Mojumder', 'Housewife', 'রুদ্র মজুমদার', 'বিজয় কুমার', 'ইফু মজুমদার', 'Ipu Mojumder', '01840842345', '01869840590', 'bablumd01@gmail.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-12-25', '20107521605032296', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'HINDUISM', '', 'NOAKHALI', '17042015893-1-1.jpg', 0, 2016068082, '2016-06-05 12:18:39', '3', '2016-07-05 01:55:55', '3'),
(37, 2016068696, 'Fatema Akther', 'Mohin Uddin', 'Abroad', 'Jahanara Begum', 'Housewife', 'ফাতেমা আক্তার', 'মহিন উদ্দিন', 'জাহানারা বেগম', 'Jahanara Begum', '01831875102', '01831875102', 'bi@gmail.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-10-08', '123', 'Kader Master Bari', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016068507, '2016-06-05 12:22:16', '3', '2016-06-05 06:22:16', NULL),
(38, 2016064026, 'Md. Abdul Hamid', 'Md. Abdul Halim', 'Businessman', 'Kamrun Nahar', 'Housewife', 'মোঃ আবদুল হামিদ', 'মোঃ আবদুল হালিম', 'কামরুন নাহার', 'Kamrun Nahar', '01862730664', '01862730664', 'ci@gmail.com', 'Char Parboti , Basurhat , Companigonj , Noakhali', 'Char Parboti , Basurhat , Companigonj , Noakhali', '2010-07-20', '20107512159037009', 'Basurhat', 'Basurhat Kolejiyet School', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016064273, '2016-06-05 01:43:02', '3', '2016-06-05 07:43:02', NULL),
(39, 2016068735, 'Muhtasim Mahmud', 'Hasan Mahmud', 'Service', 'Fariya jahan', 'Housewife', 'মুহতাসিম মাহমুদ', 'হাসান মাহমুদ', 'ফারিয়া জাহান', 'Abdul Malek', '01819599215', '01876646554', 'ch@gmail.com', 'Sirap Pur , Basurhat , Companigonj , Noakhali', 'Siraj Pur , Basurhat , Companigonj , Noakhali', '2011-11-11', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016066547, '2016-06-05 01:48:08', '3', '2016-06-05 07:48:08', NULL),
(40, 2016068175, 'Jihadul Islam', 'Johirul Islam', 'Abroad', 'Nusrat Jebin', 'Housewife', 'জিহাদুল ইসলাম', 'জহিরুল ইসলাম', 'নুসরাত  জেবিন', 'Abu Jahed', '01817015994', '01817015994', 'cg@gmail.com', 'Char Elahi , Char Elahi , Companigonj , Noakhali', 'Char Kakra , Notun Bazar , Companigonj , Noakhali', '2011-01-25', '123', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016068146, '2016-06-05 01:52:23', '3', '2016-06-05 07:52:23', NULL),
(41, 2016061924, 'Ismat Jahan', 'Ala Uddin', 'Service Holder', 'Aleya Begom', 'Housewife', 'ইসমাত জাহান', 'আলা উদ্দিন', 'আলেয়া বেগম', 'Ala Uddin', '01823727581', '01823727581', 'cf@gmail.com', 'Gopal Pur , Biz bag , Senbag , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2010-07-02', '123', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016067135, '2016-06-05 01:59:18', '3', '2016-06-05 07:59:18', NULL),
(42, 2016062099, 'Saidul Islam', 'Md. Samir Hossain', 'Job', 'Rojina Akhter', 'Housewife', 'সাইদুল ইসলাম', 'সমীর হোসেন', 'রোজিনা আক্তার', 'Md. Homir Hossain', '01712194316', '01813937677', 'ce@gmail.com', 'Siraj Pur , Siraj Pur , Companigonj , Noakhali', 'Siraj Pur , Siraj Pur , Companigonj , Noakhali', '2010-01-01', '20107512183035568', 'Somi Kajir Bari', 'Basuthat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016061405, '2016-06-05 02:03:09', '3', '2016-06-05 08:03:09', NULL),
(43, 2016063787, 'Md. Abir Hasan', 'Rafiqul Islam', 'Abroad', 'Fozina Akter', 'Housewife', 'মোঃ আবির হাসান', 'রফিকুল ইসলাম', 'রজিনা আক্তার', 'Saiful Islam', '01856771806', '01856771806', 'cd@gmail.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-08-10', '20107521609032310', 'Basurhat', 'Ayesha Motaleb Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '112.jpg', 0, 2016063518, '2016-06-05 02:06:36', '3', '2016-06-11 05:58:58', '7'),
(44, 2016061369, 'Sofiul Alom', 'Feroz Alom', 'Businessman', 'Umma Salma', 'Housewife', 'সফিউল আলম', 'ফিরোজ আলম', 'উম্মে সালমা', 'Nazrul Islam', '01815086354', '01815086354', 'cc@gmail.com', 'Char Hazari , Basurhat , Companigonj , Noakhali', 'Char Hazari , Basurhat , Companigonj , Noakhali', '2009-11-22', '123', 'Basurhat', 'Basurhat', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016063304, '2016-06-05 02:09:46', '3', '2016-06-05 08:09:46', NULL),
(45, 2016066125, 'Naimul Islam', 'Kamal Uddin', 'Service Holder', 'Delara Akter', 'Housewife', 'নাঈমুল ইসলাম', 'কামাল উদ্দিন', 'দিলারা আক্তার', 'Nazrul Islam', '01733560304', '01733560304', 'cb@gmail.com', 'Char Hazari , Basurhat , Companigonj , Noakhali', 'Char Hazari , Basur Hat , Companigonj , Noakhali', '2010-04-23', '123', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016065707, '2016-06-05 02:13:05', '3', '2016-06-05 08:13:05', NULL),
(46, 2016066791, 'Amrin Mahmud', 'Deedar Mahmud', 'Teaching', 'Yesmin Ara', 'Housewife', 'আমরিন মাহমুদ', 'দীদার মাহমুদ আলমগীর', 'ইয়াসমিন আরা', 'Yesmin Ara', '01843223564', '01843223564', 'ca@gmail.com', 'Birahim Pur , Basurhat , Companigonj , Noakhali', 'Birahim Pur , Basurhat , Companigonj , Noakhali', '2010-08-23', '042684', 'Birahimpur', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'A+', 'NOAKHALI', '109.jpg', 0, 2016066537, '2016-06-05 02:17:23', '3', '2016-06-11 05:32:32', '7'),
(47, 2016067036, 'Istiak Ahmed', 'Jassim Uddin', 'Service', 'Samsun Nahar', 'Housewife', 'ইশতিয়াক আহমেদ', 'জসিম উদ্দিন', 'সামছুন নাহার', 'Samsun Nahar', '01821498287', '01819599215', 'bz2@gmail.com', 'Siraj Pur , Basurhat , Companigonj , Noakhali', 'Siraj Pur , Basurhat , Companigonj , Noakhali', '2011-09-10', '123', 'Siraj Pur', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '106.jpg', 0, 2016068722, '2016-06-05 02:27:11', '3', '2016-06-11 05:22:22', '7'),
(48, 2016068338, 'Paria Binta Monir', 'Md. Moniruzzaman ', 'Job (Bio Pharma)', 'Nasima Akter', 'Housewife', 'ফারিয়া বিনতে মনির', 'মোঃ মনিরুজ্জামান', 'নাছিমা আক্তার', 'Md. Moniruzzaman', '01705409501', '01837939012', 'monir@gmail.com', 'Aladad Pur , Mirpur , Sadar , Luxmipur', 'Char Kakra , Basurhat , Basurhat , Noakhali', '2010-12-20', '20105114350103308', 'Luxmipur', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '103.jpg', 0, 2016065281, '2016-06-05 02:32:14', '3', '2016-06-11 05:38:38', '7'),
(49, 2016068531, 'Minar Hossan Alvy', 'Anower Hossan', 'Businessman', 'Romana Akter', 'Housewife', 'মিনার হোসেন আলভি', 'আনোয়ার হোসেন', 'রোমানা আক্তার', 'Romana Aker', '01854782335', '01854782335', 'bx@gmail.com', 'Birahim Pur , Basurhat , Companigonj , Noakhali', 'Birahim Pur , Basurhat , Companigonj , Noakhali', '2011-01-15', '123', 'Noakhali', 'Not Applicable', '5.00', 'Male', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016063061, '2016-06-05 02:35:37', '3', '2016-06-05 08:35:37', NULL),
(50, 2016064821, 'Chayon Kumar Bhowmik', 'Chandan Kumar Bhowmik', 'Businessman', 'Susmita Rani Bhowmik', 'Student', 'চয়ন কুমার ভৌমিক', 'চন্দন কুমার  ভৌমিক', 'সুস্মিতা রানী ভৌমিক', 'Susmita Rani', '01793291833', '01838342323', 'bw@gmail.com', 'Char Parboti , Basurhat , Companigonj , Noakhali', 'Char Parboti , Basurhat , Companigonj , Noakhali', '2010-11-24', '20103012694101296', 'Noakhali', 'Basurhat Academy', '5.00', 'Male', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016068085, '2016-06-05 02:39:44', '3', '2016-06-05 08:39:44', NULL),
(51, 2016067228, 'Nusrat Islam', 'Siful Islam', 'Businessman', 'Hasina Islam', 'Job', 'নুসরাত ইসলাম', 'সাইফুল ইসলাম', 'হাসিনা ইসলাম', 'Hasina Akter', '01859695066', '01859695066', 'bv@gmail.com', 'Char Kakra , New Bazar , Companigonj , Noakhali', 'T. N. T. Road, Basurhat , Basurhat  , Companigonj , Noakhali', '2011-06-23', '123', 'Unick Hospital', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', 'Tulips.jpg', 0, 2016062822, '2016-06-05 02:43:49', '3', '2016-06-05 08:43:49', NULL),
(52, 2016065684, 'Mst. Marufa Parvin Pranti', 'Md. Abdul Monayeem', 'Job', 'Mst. Khodeza Begum', 'JOb', 'মোছাঃ মারুফা পারভীন প্রান্তী', 'মোঃ আব্দুল মোনায়েম', 'মোসাঃ খোদেজা বেগম', 'Mst. Khodeza Begum', '01914525860', '01756192582', 'bu@gmail.com', 'Chouder , Haranja , Hossain Pur , Kishorgonj', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-08-16', '36047', 'Comilla', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'B+', 'NOAKHALI', 'Tulips.jpg', 0, 2016061541, '2016-06-05 02:47:57', '3', '2016-06-05 08:47:57', NULL),
(53, 2016066685, 'Md. Ashraf', 'Murshid Alam', 'Businessman', 'Rokeya Begum', 'Housewife', 'মোঃ আশরাফ', 'মুরশিদ আলম', 'রোকেয়া বেগম', 'Murshid Alam', '01811973430', '01811973430', 'bt@gmail.com', 'Mobaruk Ali Sareng Bari. , Notun Bazar , Companigonj , Noakhali.', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2010-02-19', '20107512135100915', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '97.jpg', 0, 2016066189, '2016-06-06 10:46:22', '3', '2016-06-11 05:35:35', '7'),
(54, 2016068768, 'Fardin Hasan', 'Mominul Hoque', 'Businessman', 'Shamima Akther', 'Housewife', 'ফারদিন হাসান', 'মোমিনুল হক', 'শামীমা আক্তার', 'Shamima Akther', '01715875891', '01827889318', 'bs@gmail.com', 'Laxminarayan Pur , Noakhali , Sadar , Noakhali', 'B. M. Ward No- 8 , Basurhat , Companigonj , Noakhali', '2011-12-30', '123', 'Companigonj', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'O+', 'NOAKHALI', 'Tulips.jpg', 0, 2016066003, '2016-06-06 10:50:37', '3', '2016-06-06 04:50:37', NULL),
(55, 2016061013, 'Asif', 'Ala Uddin', 'Private Service', 'Jifriya', 'Housewife', 'আসিফ', 'আলা উদ্দিন', 'জিফরিয়া', 'Rubal', '01840201780', '01840201780', 'rubalkhan2012@yahoo.com', 'Char Hazari , Hazary Hat , Companigonj , Noakhali', 'Char Hazari , Hazary Hat , Companigonj , Noakhali', '2010-12-13', '94', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '94.jpg', 0, 2016063558, '2016-06-06 10:54:23', '3', '2016-06-06 04:54:23', NULL),
(56, 2016064441, 'Mahedul Islam', 'Abdul Hamide', 'Businessman', 'Rogina Akter', 'Housewife', 'মাহিদুল ইসলাম', 'আব্দুল হামিদ', 'রোজিনা আক্তার', 'Rogina Akterq', '0183884194', '01838841494', 'br@gmail.com', 'Shiraj Pur , Shiraj Pur , Companigonj , Noakhali', 'Shiraj Pur , Shirajpur , Companigonj , Noakhali', '2010-09-08', '040983', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'A+', 'NOAKHALI', '91.jpg', 0, 2016068138, '2016-06-06 11:01:52', '3', '2016-06-06 05:01:52', NULL),
(57, 2016064615, 'Jaber Hossin Sabed', 'Jakir Hossin', 'Private Service', 'Saleha Akter', 'Housewife', 'জাবের হোসেন সাবেদ', 'জাকির হোসেন', 'সালেহা আক্তার', 'Sultana', '01813564751', '01813564751', 'bq@gmail.com', 'Birahim Pur , Basurhat , Basurhat , Noakhali', 'Master Para , Basurhat , Basurhat , Noakhali', '2010-12-18', '20107512183040717', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'AB+', 'NOAKHALI', '89.jpg', 0, 2016066312, '2016-06-06 11:05:51', '3', '2016-06-06 05:05:51', NULL),
(58, 2016061946, 'Tasneha Sultana', 'Sultan Jaier Uddin Masud', 'Businessman', 'Rima Akter', 'Housewife', 'তাসনিয়া সুলতানা অরিন', 'সুলতান জহির উদ্দিন মাসুদ', 'রিমা আক্তার', 'Sultan Jaier Uddin Masud', '01780147071', '01780147071', 'bp@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-12-15', '123', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '86.jpg', 0, 2016061687, '2016-06-06 11:10:34', '3', '2016-06-06 05:10:34', NULL),
(59, 2016065847, 'Thamina Hoque', 'Mir Ataul Hoque', 'Service', 'Asma Akter', 'Housewife', 'তাহমিনা হক', 'মীর আতাউল হক', 'আছমা আকতার', 'Grand Mother', '01791269431', '01791269431', 'bn@gmail.com', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2010-08-30', '20107521608025597', 'Basurhat', 'Basurhat Academy', '5.00', 'Female', 'ISLAM', '', 'NOAKHALI', '76.jpg', 0, 2016064598, '2016-06-06 11:15:19', '3', '2016-06-06 05:15:19', NULL),
(60, 2016068046, 'Maliha Hossian Pritom', 'Sahadat Hossen', 'Service', 'Fargana Akter', 'Housewife', 'মালিহা হোসেন প্রিতম', 'শাহাদাত হোসেন', 'ফারজানা আক্তার', 'Farzana Akter', '01814312755', '01814312755', 'bo@gmail.com', 'Mohammad Nagar , K. T. M. Hat , Companigonj , Noakhali', 'Mohammad Nagar , M. T. M. Hat , Companigonj , Noakhali', '2010-08-01', '123', 'Mohammad Nagar', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '81.jpg', 0, 2016064868, '2016-06-06 11:19:44', '3', '2016-06-06 05:19:44', NULL),
(61, 2016061964, 'Md. Tamim', 'Md. Serajul Islam', 'Businessman', 'Shahida Begum', 'Housewife', 'মো: তামিম', 'মোঃ সিরাজুল ইসলাম', 'শাহিদা বেগম', 'Shahida Begum', '01840639215', '01721300492', 'bm@gmail.com', 'Tengar Gor , Tengar Gor , Islam Pur , Jamal Pur', 'Chor Parboti , Basurhat , Companigonj , Noakhali', '2010-03-01', '20103912987102630', 'Jamal Pur', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '75.jpg', 0, 2016066804, '2016-06-06 11:24:14', '3', '2016-06-06 05:24:14', NULL),
(62, 2016066675, 'Tasnuva Ebnath', 'Shahab Uddin', 'Service', 'Sanjida Yeasmin', 'Housewife', 'তাসনুভা ইবনাত', 'সাহাব উদ্দিন', 'সানজিদা ইয়াছমিন', 'Kazi Zohir Uddin', '01811251823', '01878576254', 'bl@gmail.com', 'Shiraj Pur , Shiraj Pur , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-11-23', '20107514727031809', 'Shiraj Pur, Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', 'A+', 'NOAKHALI', '70.jpg', 0, 2016063292, '2016-06-06 11:28:06', '3', '2016-06-06 05:28:06', NULL),
(63, 2016064270, 'Tanver Hossan Siddique', 'Nur Nobi', 'Businessman', 'Sahida Akter', 'Housewife', 'তানভীর হোসেন সিদ্দীকি', 'নুর নবী', 'সাহিদা আক্তার', 'Nurnobi', '01868295268', '01819868529', 'bj@gmail.com', 'Ram Nogor  , Middar Hat , Dagonbhuiyan , Feni', 'Ramdi , Basurhat , Noakhali , Noakhali', '2010-06-24', '20103012577101599', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '67.jpg', 0, 2016062551, '2016-06-06 11:35:55', '3', '2016-06-06 05:35:55', NULL),
(64, 2016067195, 'Ashiful Hoque Alif', 'Md. Nurul Hoque Shobuj', 'Businessman', 'Sumsun Nahir Nupur', 'Housewife', 'আসিফুল হক আলিফ', 'মোঃ নুরুল হক সবুজ', 'শামছুন নাহার নূপুর', 'Md. Nurul Hoque Shobuj', '01767755499', '01819694758', 'bk@gmail.com', 'Basurhat Pourasava , Basurhat , Companigong , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2010-04-09', '123', 'Companigonj', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '68.jpg', 0, 2016062479, '2016-06-06 11:47:30', '3', '2016-06-06 05:47:30', NULL),
(65, 2016062166, 'Al Sahariar Rashid', 'Md. Harunur Rashid', 'Businessman', 'Jesmin Akther', 'Housewife', 'আল শাহারিয়ার রশীদ', 'মোঃ হারুনুর রশীদ', 'জেসমিন আক্তার', 'Jesmin Akther', '01859459453', '01859459453', 'kp@mail.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2009-09-04', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'A+', 'NOAKHALI', '53.jpg', 0, 2016061776, '2016-06-06 12:32:09', '3', '2016-06-06 06:32:09', NULL),
(66, 2016068906, 'Shaif Al Nahian', 'Md. Mizanur Rahman', 'Businessman', 'Rehana Akter', 'Housewife', 'সাইফ আল নাহিয়ান', 'মোঃ মিজানুর রহমান', 'রেহানা আক্তার', 'Rehana Akter', '01624057956', '01872591496', 'kq@gmail.com', 'Shiraj Pur , Habib Pur Bazar , Companigonj , Noakhali', 'Shiraj Pur , Habib Pur Bazar , Companigonj , Noakhali', '2009-09-08', '20097522105023448', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '26.jpg', 0, 2016066344, '2016-06-06 12:36:45', '3', '2016-06-06 06:36:45', NULL),
(67, 2016067690, 'Sadia Tabassum', 'Abdul Hai', 'Service Holder', 'Nasrine Akter', 'Housewife', 'সাদিয়া তাবাসসুম', 'আব্দুল হাই', 'নাছরিন আক্তার', 'Nasrine Akter', '01820939093', '01820939093', 'kr@gmail.com', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Nokhali', '2010-06-03', '123', 'Basurhat', 'Bot Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '29.jpg', 0, 2016061476, '2016-06-06 12:47:40', '3', '2016-06-06 06:47:40', NULL),
(68, 2016067659, 'Shyful Islam', 'Balayet Hossin', 'Abroad', 'Joynab Bebe', 'Housewife', 'সাইফুল ইসলাম', 'বেলায়েত হোসেন', 'জয়নাব বিবি', 'Abul Basar', '01820245776', '01820245776', 'jakirhossinjakir447@gmail.com', 'Birahim Pur , Habib Pur , Companigonj , Noakhali', 'Birahim Pur , Habib Pur , Companigonj , Noakhali', '2009-09-05', '123', 'Birahim Pur', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'AB+', 'NOAKHALI', '23.jpg', 0, 2016067042, '2016-06-06 12:53:34', '3', '2016-06-06 06:53:34', NULL),
(69, 2016066636, 'Md. Ismail', 'Md. Ibrahim', 'Job', 'Sultana Begum', 'Housewife', 'মোঃ ইসমাইল', 'মোঃ ইব্রাহিম', 'সুলতানা বেগম', 'Sultana Begum', '01727673110', '01727673110', 'ks@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2011-04-12', '123', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '56.jpg', 0, 2016068543, '2016-06-06 12:57:25', '3', '2016-06-06 06:57:25', NULL),
(70, 2016063735, 'Firuz Mobashera', 'Md. Fazlul Hoque Shipon', 'Service', 'Mahamuda Akter', 'Housewife', 'ফাইরুজ মোবাশ্বেরা', 'মোহাঃ ফজলুল হক শিপন', 'মাহমুদা আক্তার', 'Md. Fazlul Hoque', '01811373245', '01811373245', 'kt@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Basurhat  , Basurhat , Companigonj , Noakhali', '2010-12-03', '20107512135100928', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '116.jpg', 0, 2016068353, '2016-06-06 01:02:27', '3', '2016-06-06 07:02:27', NULL),
(71, 2016064272, 'Md. Minhazul Fahad', 'Nur Jaman', 'Service', 'Rahima Akter', 'Housewife', 'মোঃ মিনহাজুল ফাহাদ', 'নুর জামান ', 'রহিমা আক্তার', 'Rahima Akter', '01949539253', '01949539253', 'ku@gmail.com', 'Chondrasuddi , Vuiar Hat , Kabir Hat , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-09-06', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '50.jpg', 0, 2016065775, '2016-06-06 01:18:48', '3', '2016-06-06 07:18:48', NULL),
(72, 2016065014, 'Shakhawat Hossin', 'Amir Hossain', 'Abroad', 'Rozina Aktar', 'Housewife', 'সাখাওয়াত হোসেন', 'আমির হোসেন', 'রোজিনা আক্তার', 'Belal Hossen', '01839108786', '01839108786', 'kw@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2011-09-01', '20117521603033593', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '92.jpg', 0, 2016061175, '2016-06-06 01:22:17', '3', '2016-06-06 07:22:17', NULL),
(73, 2016064673, 'Nadia Afser', 'Nurul Afser', 'Husinessman', 'Nazmun Nahar', 'Housewife', 'নাদিয়া আফছার', 'নুরুল আফছার', 'নাজমুন নাহার', 'Nazmun Nahar', '01846349981', '01846349981', 'kg@gmail.com', 'Char Hazari , Hazari Hat  , Companigonj , Noakhali', 'Char Hazari , Hazari Hat , Companigonj , Noakhali', '2009-12-18', '200975121230', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'B+', 'NOAKHALI', '69.jpg', 0, 2016066427, '2016-06-06 01:31:26', '3', '2016-06-06 07:31:26', NULL),
(74, 2016067106, 'Abdullah Arafat Hamim', 'Kamrul Hasan', 'Abroad', 'Anjuman Ara', 'Housewife', 'আবদুল্লাহ আরাফাত হামিম', 'কামরুল হাসান ', 'আনজুমান আরা', 'Anjuman Ara', '01785623620', '01785623620', 'kh@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2010-02-19', '20107521607032298', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '42.jpg', 0, 2016067630, '2016-06-06 01:41:52', '3', '2016-06-06 07:41:52', NULL),
(75, 2016067693, 'Jahid Ul Islam', 'Jamam Uddin', 'Businessman', 'Jarna Begum', 'Housewife', 'জিহাদ উল ইসলাম', 'জেমাম উদ্দিন', 'ঝর্না বেগম', 'Jarna Begum', '01829797726', '01829797726', 'ki@gmail.com', 'Badaballvpur , Baroi Tala , Sadar , Lakshipur', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-06-11', '20105114350103197', 'Bardi Tola', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '93.jpg', 0, 2016063445, '2016-06-06 01:48:18', '3', '2016-06-06 07:48:18', NULL),
(76, 2016063424, 'Newaj Ibna Mahabub', 'Mahabubur Rahaman', 'Abroad', 'Kamrun Nahar', 'Housewife', 'নেওয়াজ ইবনে মাহবুব', 'মাহাবুবুর রহমান', 'কামরুন নাহার', 'Kamrun Nahar', '01830150609', '01830150609', 'kk@gmail.com', 'Shahajad Pur , Patowarir Hat , Companigonj , Noakhali', 'Shahajad Pur , Patowarir Hat , Companigonj , Noakhali', '2009-04-27', '040879', 'Shahajad Pur', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '96.jpg', 0, 2016061805, '2016-06-06 01:54:40', '3', '2016-06-06 07:54:40', NULL),
(77, 2016065028, 'Johirul Islam', 'Md. Josim Uddin', 'Businessman', 'Nurun Nahar', 'Housewife', 'জহিরুল ইসলাম', 'মোঃ জসিম উদ্দিন', 'নুরুন নাহার', 'Nurun Nahar', '01835663066', '01835663066', 'kl@gmail.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-10-14', '123', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '18.jpg', 0, 2016063683, '2016-06-06 01:58:30', '3', '2016-06-06 07:58:30', NULL),
(78, 2016062763, 'Shaiyara Nawer Simran', 'Md. Shajahan', 'Businessman', 'Khaleda Akther', 'Housewife', 'সাইয়ারা নাওয়ার সিমরান', 'মোঃ শাহজাহান', 'খালেদা আক্তার', 'Md. Shajahan', '01710090589', '01710090589', 'km@gmail.com', 'Char Kakra  , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2012-04-09', '123', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '30.jpg', 0, 2016064721, '2016-06-06 02:02:39', '3', '2016-06-06 08:02:39', NULL),
(79, 2016065504, 'Arafat Alam', 'Md. Shamsul Alam', 'Job. Islami Bank Ltd. Basurhat Branch.', 'Marjahan Begum', 'Housewife', 'মোঃ আরাফাত আলম', 'মোঃ সামছুল আলম', 'মারজাহান বেগম', 'Abu Taher', '01918464782', '01914685906', 'kn@gmail.com', 'Jakal , Pak-kishoregonj , Sadar , Noakhali', 'Ramdi , Basurhat , Companigonj , Noakhali', '2011-03-18', '20117518725102918', 'Noakhali.', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '117.jpg', 0, 2016065491, '2016-06-06 02:06:50', '3', '2016-06-06 08:06:50', NULL),
(80, 2016062172, 'Mihadur Rohman', 'Mizanur Rohman', 'Businessman', 'Sultana Akter', 'Housewife', 'মিহাদুর রহমান', 'মিজানুর রহমান', 'সুলতানা আক্তার', 'Mizanur Rohman', '01817002428', '01817002428', 'ko@gmail.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-09-01', '20107521609031066', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '78.jpg', 0, 2016061206, '2016-06-06 02:10:42', '3', '2016-06-06 08:10:42', NULL),
(81, 2016064561, 'Megbah Uddin Alby', 'Masud', 'Service', 'Sabina Akter', 'Housewife', 'মেজবাহ উদ্দিন আলভি', 'মাসুদ', 'সাবিনা আক্তার', 'Sabina Akter', '01843493072', '01843493072', 'ka@gmail.com', 'Char Hazari , Basurhat , Companigonj , Noakhali', 'Char Hazari , Basurhat , Companigonj , Noakhali', '2009-12-29', '123', 'Feni', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '82.jpg', 0, 2016063435, '2016-06-06 02:21:22', '3', '2016-06-06 08:21:22', NULL),
(82, 2016066012, 'Sidratul Munthaha', 'Md. Farbeg', 'Abroad', 'Bibi Kulsum', 'Housewife', 'সিদরাতুল মুনতাহা', 'মোঃ পারভেজ', 'বিবি কুলসুম', 'Bibi Kulsum', '01862681503', '01862681503', 'kb@gmail.com', 'Char Hazari , Basurhat , Companigonj , Noakhali', 'Char Hazari , Basurhat , Companigonj , Noakhali', '2010-06-10', '123', 'Noakhali', 'Noakhali', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '79.jpg', 0, 2016062850, '2016-06-06 02:29:59', '3', '2016-06-06 08:29:59', NULL),
(83, 2016068080, 'Minhazul Islam', 'Md. Nazrul Islam', 'Abroad', 'Tahmina Akther', 'Housewife', 'মিনহাজুল ইসলাম', 'মোঃ নজরুল ইসলাম', 'তাহমিনা আক্তার', 'Md. Shohidul Islam', '01917224629', '01865684980', 'nurislampintu@gmail.com', 'Char Parboti , Basurhat , Companigonj , Noakhali', 'Char Parboti , Basurhat , Companigonj , Noakhali', '2009-12-25', '20097521605032343', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '64.jpg', 0, 2016067780, '2016-06-06 02:35:22', '3', '2016-06-06 08:35:22', NULL),
(84, 2016067765, 'Musfiqur Rahman', 'Ahsan Akther', 'Businessman', 'Sharmin Akther', 'Housewife', 'মুশফিকুর রহমান', 'আহছান উল্ল্যাহ', 'শারমিন আক্তার', 'Sharmin Akther', '01732271902', '01733227190', 'kc@gmail.com', 'Char Parbati , Basurhat , Companigonj , Noakhali', 'Char Parbati , Basurhat , Companigonj , Noakhali', '2010-05-01', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '85.jpg', 0, 2016063970, '2016-06-06 02:39:09', '3', '2016-06-06 08:39:09', NULL),
(85, 2016065816, 'Mithila Bhowmik Pritu', 'Niranjan Chandra Bhowmik', 'Teaching', 'Jharna Rani Nath', 'Service Holder', 'মিথিলা ভৌমিক প্রীতু', 'নিরঞ্জন চন্দ্র ভৌমিক', 'ঝরনা রানী নাথ', 'Jharna Rani Nath', '01717537350', '01814994067', 'kd@gmail.com', 'Sheknder Pur , Sheknder Pur , Daganbhuyan , Feni', 'Apan Nibas, Basurhat , Basurhat , Companigonj , Noakhali', '2011-01-02', '20113012577102065', 'Shekender Pur', 'Not Applicable', 'Not Applicable', 'Female', 'HINDUISM', '', 'NOAKHALI', '10.jpg', 0, 2016061996, '2016-06-06 02:43:57', '3', '2016-06-06 08:43:57', NULL),
(86, 2016061742, 'Shahara Mim', 'Sha Alam', 'Abroad', 'Shirin Akther', 'Housewife', 'শাহারা মিম', 'এস.এম শাহ আলম', 'শিরিন আক্তার', 'Shirin Akther', '01631106894', '01631106894', 'ke@gmail.com', 'Char Parboti , Basurhat , Companigonj , Noakhali', 'Char Parboti , Basurhat , Companigonj , Noakhali', '2011-01-05', '123', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '34.jpg', 0, 2016067923, '2016-06-06 02:46:40', '3', '2016-06-06 08:46:40', NULL),
(87, 2016063680, 'Ishika Mahjarif', 'Md. Nizam Uddin', 'Service Holder', 'Masuma Akter', 'Housewife', 'ইশিকা মেহজারিফ', 'মোঃ নিজাম উদ্দীন', 'মাছুমা আক্তার', 'Masuma Akter', '01819198088', '01819198088', 'kf@gmail.com', 'Moninajar , Farazi Bazar , Kabir Hat , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-12-31', '20107514770100962', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '100.jpg', 0, 2016061230, '2016-06-06 02:50:21', '3', '2016-06-06 08:50:21', NULL),
(88, 2016065173, 'Umma Salma Nicha', 'Belayat Hossain', 'Abroad', 'Morshda Jahan Farhana', 'Housewife', 'উম্মে সালমা নিসা', 'বেলায়েত হোসেন', 'মোরশেদা জাহান ফারহানা', 'Morshda Jahan Farhana', '01818099904', '01818099904', 'ummesalmaniha@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2011-07-23', '20117521603033595', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '16.jpg', 0, 2016064061, '2016-06-09 11:14:38', '3', '2016-06-09 05:14:38', NULL),
(89, 2016066121, 'Israt Jahan', 'Ahasan Ulla', 'Businessman', 'Shahida Akter', 'Teacher', 'ইসরাত জাহান', 'আহসান উল্যাহ', 'শাহিদা আক্তার', 'Ahasan Ulla', '01823458229', '01623390798', 'dy@gmail.com', 'Shiraj Pur , Shiraj Pur , Companigonj , Noakhali', 'Shiraj Pur , Shiraj Pur  , Companigonj , Noakhali', '2012-01-13', '041928', 'Shiraj Pur', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '15.jpg', 0, 2016067318, '2016-06-09 11:17:47', '3', '2016-06-09 05:17:47', NULL),
(90, 2016066887, 'Rakibul Hasan', 'Mizanur Rahman', 'Businessman', 'Sharmin Akter', 'Housewife', 'রাকিবুল হাসান', 'মিজানুর রহমান', 'শারমিন আক্তার', 'Sharmin Akter', '01922678861', '01922678861', 'dx@gmailc.om', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2011-06-22', '20117521603025620', 'N. Islam Member Er Bari', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '9.jpg', 0, 2016062644, '2016-06-09 11:21:33', '3', '2016-06-09 05:21:33', NULL),
(91, 2016064012, 'Tasfia Binta Mohin', 'Mohin Khan', 'Abroad', 'Sultana Parvin', 'Housewife', 'তাসফিয়া বিনতে মহিন', 'মহিন খান', 'সুলতানা পারভীন', 'Sultana Parvin', '01762515076', '01762515076', 'dw@gmail.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2011-08-03', '20117521608025219', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', 'A+', 'NOAKHALI', '1.jpg', 0, 2016064078, '2016-06-09 11:25:23', '3', '2016-06-11 03:36:36', '3'),
(92, 2016063102, 'Nusrat Jahan Nevu', 'Md. Alauddin', 'Govt. Job', 'Rabake Sultana', 'Housewife', 'নুসরাত জাহান নিভু', 'মোঃ আলা উদ্দিন', 'রেবেকা সুলতানা', 'Dalowara Bagom', '01671393137', '01671393137', 'alauddinreaj@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2010-11-05', '20107521607032134', 'Basurhat, Char Kakra', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '107.jpg', 0, 2016062513, '2016-06-09 11:29:23', '3', '2016-06-09 05:29:23', NULL),
(93, 2016061539, 'Tasnuva Shehrin', 'Md. Jafar Ullah ', 'Work in Abroad ', 'Ferdous Kefayet', 'Housewife', 'তাসনুভা শেহরিন', 'মোহাম্মদ জাফর উল্যাহ', 'ফেরদৌস কেফায়েত', 'Abul Kalam Azad', '01817356395', '01826139845', 'dv@gmail.com', 'Char Parboti , K. T. M Hatq , Companigonj , Noakhali', 'Char Parboti , K. T. M. Hat , Companigonj , Nokhali', '2011-08-12', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '98.jpg', 0, 2016063493, '2016-06-09 11:33:22', '3', '2016-06-09 05:33:22', NULL),
(94, 2016068785, 'Soriful Islam Sifat', 'Saiful Islam', 'Businessman', 'Forida Yeasmin', 'Housewife', 'শরিফু্ল ইসলাম সিপাত', 'সাইফুল ইসলাম', 'ফরিদা ইয়াছমিন', 'Saiful Islam', '01815549853', '01815549853', 'du@gmail.com', 'Islam Ponditer Bari. Char Parboti , K. T. M. Hat , Companigonj , Noakhali', 'Char Parboti , K. T. M. Hat , Companigon , Noakhali', '2010-12-25', '20107512147101612', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '92.jpg', 0, 2016061683, '2016-06-09 12:02:19', '7', '2016-06-11 05:30:30', '3'),
(95, 2016066233, 'Ashraful Islam', 'Anwar Hoisain', 'Abroad', 'Lutfur Nahar', 'Housewife', 'আশ্রাফুল ইসলাম', 'আনোয়ার হোসেন', 'লুৎফুর নাহার', 'Lutfur Nahar', '01879296036', '01879296036', 'dt@gmail.com', 'Birahim Pur , Basurhat , Companigonj , Noakhali', 'Birahimpur , Basurhat , Companigonj , Noakhali', '2011-05-02', '009', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'A+', 'NOAKHALI', '8.jpg', 0, 2016064640, '2016-06-09 12:07:13', '7', '2016-06-09 06:07:13', NULL),
(96, 2016061173, 'Asifur Rahman Abir', 'Mohammad Mizanur Rahman', 'Businessman', 'Anzuman Ara Fensi', 'Housewife', 'আসিফুর রহমান আবির', 'মোঃ মিজানুর রহমান', 'আঞ্জুমান আরা ফেন্সি', 'Mizanur Rahman', '01822656914', '01822656914', 'ds@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2011-07-29', '20117521609033744', 'Basurhat, Noakhali.', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '86.jpg', 0, 2016066239, '2016-06-09 12:18:11', '7', '2016-06-09 06:18:11', NULL);
INSERT INTO `regis_tbl` (`id`, `stu_id`, `name`, `fName`, `foccupation`, `mName`, `moccupation`, `name_ban`, `fName_ban`, `mName_ban`, `local_guardian`, `Phone_n`, `personal_phone`, `email`, `par_address`, `pre_address`, `dob`, `dob_id`, `pob`, `pbs`, `gpa`, `gender`, `religion`, `blood_grou`, `city`, `picture`, `verid`, `parentid`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(97, 2016064479, 'Sumaya Sultana Farin', 'Md. Faruk', 'Abroad', 'Nazma Akter Sukhi', 'Housewife', 'সুমাইয়া সুলতানা ফারিন', 'মোঃ ফারুক', 'নাজমা আক্তার সুখি', 'Abdul Mannan', '01845553176', '01860778475', 'dr@gmail.com', 'Romesso Pur  , Chaprasir Hat , Kabir Hat , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-10-26', '20107514727034036', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '71.jpg', 0, 2016068103, '2016-06-09 12:28:16', '7', '2016-06-09 06:28:16', NULL),
(98, 2016061011, 'Sajadul Islam', 'Nur Nobi', 'Abroad', 'Nur Jahan Akter', 'Housewife', 'সাজেদুল ইসলাম', 'নুর নবি', 'নুর জাহান আক্তার', 'Nur jahan Akter ', '01629391044', '01629391044', 'dq@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2011-06-06', '123', 'Lalmia Pondith Bari', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '68.jpg', 0, 2016062081, '2016-06-09 12:39:38', '7', '2016-06-09 06:39:38', NULL),
(99, 2016061722, 'Nusrat Jahan Zipa', 'Md. Ismail', 'Job', 'Nur Jahan', 'Teacher', 'নুসরাত জাহান জীফা', 'মোঃ ইসমাইল ', 'নুর জাহান', 'Nur Jahan', '01715809482', '01715809482', 'dp@gmail.com', 'Nobi Pur , Nobi Pur , Shenbag , Noakhali', 'Nobi Pur , Nobi Pur , Shenbag , Noakhali', '2010-04-14', '20117518085000647', 'Nabi Pur', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '59.jpg', 0, 2016064412, '2016-06-11 09:33:26', '3', '2016-06-11 03:33:26', NULL),
(100, 2016066019, 'Suzana Sadia Raisa', 'Zafor Ullah ', 'Businessman', 'Momotaz Begum', 'Housewife', 'সুজানা সাদিয়া রাইসা', 'জাফর উল্যাহ', 'মমতাজ বেগম', 'Momtaz Begum', '01818790898', '01818790898', 'dn@gmail.com', 'South Chan Pur , Dudmukha , Dagon Bhuiyan , Feni', 'South Chan Pur , Dudmukha , Dagon Bhuiyan , Feni', '2011-10-03', '20113012594039528', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', 'B+', 'NOAKHALI', '35.jpg', 0, 2016061296, '2016-06-11 09:38:08', '3', '2016-06-11 03:38:08', NULL),
(101, 2016068113, 'Minhazur Rahaman', 'Azizur Rahaman', 'Job', 'Nazmoon Nahar', 'Housewife', 'মিনহাজুর রহমান', 'আজিজুর রহমান', 'নাজমুন নাহার', 'Nazmoon Nahar', '01814746489', '01814746489', 'dm@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-09-05', '123', 'Basurhat Pourasava', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '26.jpg', 0, 2016067659, '2016-06-11 09:42:34', '3', '2016-06-11 03:42:34', NULL),
(102, 2016068260, 'Shahareya Sanjeda', 'Md. Shabuddin', 'Job', 'Nasrin Akter', 'Housewife', 'শাহারিয়া সানজিদা', 'মোঃ শাহাব উদ্দিন', 'নাসরিন আক্তার', 'Shabuddin', '01879296371', '01879296371', 'dl@gmail.com', 'Chor Kakra , Phatoaryhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2013-01-18', '123', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '94.jpg', 0, 2016062999, '2016-06-11 09:48:07', '3', '2016-06-11 03:48:07', NULL),
(103, 2016061965, 'Shorav Chandra Das', 'Somir Chandra Das', 'Businessman', 'Nipa Rani Das', 'Housewife', 'সৌরভ চন্দ্র দাস', 'সমির চন্দ্র দাশ', 'নিপা রানী দাশ', 'Gitia Rani', '01881284489', '01881284489', 'dk@gmail.com', 'Ramdi  , Basurhat , Companigonj , Noakhali', 'Ramdi , Basurhat , Companigonj , Noakhali', '2012-05-31', '20127521602033615', 'Ramdi', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '34.jpg', 0, 2016066456, '2016-06-11 09:52:48', '3', '2016-06-11 03:52:48', NULL),
(104, 2016068364, 'Ismail Hossan', 'Shohid Ullah', 'Abroad', 'Bibi Ayesha', 'Housewife', 'ইসমাইল হোসেন', 'শহীদ উল্যাহ', 'বিবি আয়েশা', 'Saiful Islam', '01836924178', '01814343036', 'mamun1988no@gmail.com', 'Birahim Pur , Basurhat , Companigonj , Noakhali', 'Birahim Pur , Basurhat , Companigonj , Noakhali', '2010-11-27', '039120', 'Ali Azzam Sukanir Bari', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '70.jpg', 0, 2016065317, '2016-06-11 09:57:33', '3', '2016-06-11 05:00:00', '3'),
(105, 2016063122, 'Imtiaz Ahmed Sayem', 'Belayet Hossain', 'Service Abroad', 'Monowara Begum', 'Housewife', 'ইমতিয়াজ আহমেদ সায়েম', 'বেলায়েত হোসেন', 'মনোয়ারা বেগম', 'Shanta', '01875242729', '01739636044', 'dj@gmail.com', 'Ramdi , Basurhat , Companigonj , Noakhali', 'Ramdi , Basurhat , Companigonj , Noakhali', '2011-02-15', '2031273', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '31.jpg', 0, 2016064480, '2016-06-11 10:01:19', '3', '2016-06-11 04:18:18', '3'),
(106, 2016064505, 'Subrina Sultana', 'Md. Tajul Islam', 'Job', 'Bilkis Ara', 'Housewife', 'সাবরিনা সুলতানা', 'মোঃ তাজুল ইসলাম', 'বিলকিছ আরা', 'Kolfona', '01836205034', '01817401726', 'di@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2011-01-10', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'B+', 'NOAKHALI', '79.jpg', 0, 2016063685, '2016-06-11 10:04:35', '3', '2016-06-11 04:04:35', NULL),
(107, 2016066456, 'Robiul Hasan Tanvir', 'Md. Raihan Chowdhury', 'Job', 'Parvin Akter Runu', 'Housewife', 'রবিউল হাসান তানভীর', 'মোঃ রায়হান চৌধুরী', 'পারভীন আক্তার রুনু', 'Sahadat Hossain', '01833873242', '01722348334', 'dh@gmail.com', 'Doshgaria , Doshgaria , Chatkhil , Noakhali', 'Ramdi , Basurhat , Companigonj , Noakhali', '2011-07-16', '123', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '58.jpg', 0, 2016064432, '2016-06-11 10:08:30', '3', '2016-06-11 04:08:31', NULL),
(108, 2016067899, 'Momtahina Hoq Emu', 'Akramoul Hoq', 'Abroad', 'Mahera Begum', 'Housewife', 'মোমতাহিনা হক ইমু', 'একরামুল হক', 'সাহেরা বেগম', 'Mahera Begum', '01837041970', '01837041970', 'dg@gmail.com', 'Shadatpur , Patwaryhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2014-01-02', '20127512183041530', 'Shadatpur', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'A+', 'NOAKHALI', '73.jpg', 0, 2016063447, '2016-06-11 10:12:47', '3', '2016-06-11 04:12:47', NULL),
(109, 2016062717, 'Tanim Rahman', 'Abu Taher', 'Abroad', 'Rojena Aker', 'Housewife', 'তানিম রহমান', 'আবু তাহের', 'রোজিনা আক্তার', 'Tureb Rahman', '01833280402', '01822203363', 'df@gmail.com', 'Charparboti , K. T. M. Hat , Companigonj , Noakhali', 'Charparboti , Basurhat , Companigonj , Noakhali', '2012-01-30', '123', 'Basurhat', 'Not Appliable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '54.jpg', 0, 2016068323, '2016-06-11 10:17:33', '3', '2016-06-11 05:57:57', '3'),
(110, 2016062963, 'Anas Mahmud', 'Md. Mahmudul Hasan', 'Abroad', 'Tahmina Anjuman', 'Housewife', 'আনাস মাহমুদ', 'মোঃ মাহমুদুল হাসান', 'তাহমিনা আনজুমান', 'Nazmun Nahar', '01857620309', '01843677196', 'aanas.mahmood@yahoo.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2011-11-27', '20117521608034633', 'Dagon Bhuiyan', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'A+', 'NOAKHALI', '108.jpg', 0, 2016065899, '2016-06-11 10:22:33', '3', '2016-06-11 04:22:33', NULL),
(111, 2016068664, 'Abdul Annafi Adib', 'Anwar Hossian', 'Abroad', 'Tahmina Akter', 'Housewife', 'আবদুল আননাফী আদিব', 'আনোয়ার হোসেন', 'তাহমিনা আক্তার', 'Farjana Akter', '01860872266', '01860644009', 'Anu201066@yahoo.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-11-01', '20107521608034410', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '111.jpg', 0, 2016068300, '2016-06-11 10:26:22', '3', '2016-06-11 04:26:22', NULL),
(112, 2016068706, 'Mehedi Hasan', 'Abdulla Yousuf', 'Businessman', 'Farida Yasmin', 'Housewife', 'মেহেদী হাসান', 'আবদুল্লাহ ইউসুফ', 'ফরিদা ইয়াসমিন', 'Samima Akter', '01829240668', '01829240668', 'de@gmail.com', 'Shiraj Pur , Basurhat , Companigonj , Noakhali', 'Shiraj Pur , Basurhat , Companigonj , Noakhali', '2010-10-27', '123', 'Shiraj Pur', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '69.jpg', 0, 2016065057, '2016-06-11 10:30:47', '3', '2016-06-11 04:30:47', NULL),
(113, 2016066497, 'Khadiza Binte Khayer Zoha', 'Abul Khayer', 'Abroad', 'Farjana Akter', 'Housewife', 'খাদিজা বিনতে খায়ের জোহা', 'আবুল খায়ের', 'ফারজানা আক্তার', 'Farjana Akter', '01860872266', '01860872266', 'Khayer280@gmail.com', 'Debram Pur , Etim Khana Bazar , Dagon Bhuiya , Feni', 'Debram Pur , Etim Khana Bazar , Dagon Bhuiya , Feni', '2012-02-08', '20123012594100854', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '12.jpg', 0, 2016061048, '2016-06-11 10:35:06', '3', '2016-06-11 04:35:06', NULL),
(114, 2016061055, 'Ashraful Islam', 'Johirul Islam', 'Businessman', 'Sahena Akter', 'Housewife', 'আশ্রাফুল ইসলাম', 'জহিরুল ইসলাম', 'শাহেনা আক্তার', 'Md. Rashed', '01838178059', '01813227988', 'dd@gmail.com', 'Char Hazari , Basurhat , Companigonj , Noakhali', 'Char Hazari , Basurhat , Companigonj , Noakhali', '2012-11-12', '123', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '96.jpg', 0, 2016068747, '2016-06-11 10:42:17', '3', '2016-06-11 05:58:58', '3'),
(115, 2016063625, 'Sadia Sultana', 'Shahab Uddin', 'Army', 'Jahida Sultana', 'Housewife', 'সাদিয়া সুলতানা', 'সাহাব উদ্দিন', 'জাহিদা সুলতানা', 'Jahida Sultana', '01816752649', '01816752649', 'dc@gmail.com', 'Char Parboti , K. T. M. Hat , Companigonj , Noakhali', 'Char Parboti , K. T. M. Hat , Companigonj , Noakhali', '2011-05-18', '20117512147040136', 'Savar/ Dhaka', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '77.jpg', 0, 2016068686, '2016-06-11 10:48:11', '3', '2016-06-11 04:48:11', NULL),
(116, 2016063932, 'Hasna Hossen Olid', 'Hossen', 'Businessman', 'Nasima Akter', 'Housewife', 'হাসনা হোসেন ওলিদ', 'হোসেন', 'নাছিমা আক্তার', 'Nasima Akter', '01732334682', '01732334682', 'db@gmail.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2011-01-01', '20117521608025538', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '23.jpg', 0, 2016063017, '2016-06-11 10:52:35', '3', '2016-06-11 05:50:50', '3'),
(117, 2016061735, 'Simiya Jahan Noha', 'Md. Sekandar Hossain', 'Abroad', 'Nusrat Jahan', 'Housewife', 'সামিয়া জাহান নোহা', 'মোঃ সেকান্দার হোসেন', 'নুসরাত জাহান', 'M. A. Khalik', '01817724643', '01817724643', 'da@gmail.com', 'Habib Pur , Habib Pur Bazar , Companigonj , Noakhali', 'Habib Pur , Habib Pur Bazar , Companigonj , Noakhali', '2011-09-22', '123', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '119.jpg', 0, 2016068026, '2016-06-11 11:09:09', '3', '2016-06-11 05:09:09', NULL),
(118, 2016067939, 'Nowsin Sultana Asha', 'Md. Yousuf Sumon', 'Businessman', 'Nur Bahar Audure', 'Housewife', 'নওশিন সুলতানা আশা', 'মোঃ ইউছুপ সুমন', 'নুর নাহার আদরী', 'Grandmother', '01952172097', '01858038975', 'kj@gmail.com', 'Bodo Raja Pur , Basurhat , Companigonj , Noakhali', 'Bod Raja Pur , Basurhat , Companigonj , Noakhali', '2011-06-04', '123', 'Bashur Hat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '72 (2).jpg', 0, 2016061684, '2016-06-11 11:13:03', '3', '2016-06-11 05:13:03', NULL),
(119, 2016068856, 'Sufiya Jannati', 'Abu Ansar', 'Businessman', 'Mahenur Ummul Wara', 'Housewife', 'সুফিয়া জান্নাতি', 'আবু আনছার', 'মাহেনুর উম্মুল ওয়ারা', 'Abu Ansar', '01936678391', '01922780014', 'isratul32@gmail.com', 'R. R. Plaza  , Basurhat , Companigonj , Noakhali', 'R. R Plaza  , Basurhat , Companigonj , Noakhali', '2011-06-21', '20117521605032870', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', 'O+', 'NOAKHALI', '93.jpg', 0, 2016067953, '2016-06-11 11:16:52', '3', '2016-06-11 05:16:52', NULL),
(120, 2016065492, 'Taspea Tabassum', 'Anwar Hussain', 'Abroad', 'Jasmin Akter', 'Housewife', 'তাসপিয়া তাবাসসুম অরিন', 'আনোয়ার হোসেন', 'জেসমিন আক্তার', 'Kazi Ohidur Rahman', '0182436494', '0182436494', 'kazi.reyad@yahoo.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2011-03-02', '20117521609030463', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '50.jpg', 0, 2016067944, '2016-06-11 11:34:11', '3', '2016-06-22 06:23:23', '3'),
(121, 2016062001, 'Binoy Mojumder', 'Khitish Chanra Majumder', 'Businessman', 'Monika Rani Majumder', 'Housewife', 'বিনয় মজুমদার', 'ক্ষিতিশ চন্দ্র মজুমদার', 'মনিকা রানী মজুমদার', 'Khitish Chandra Majumder', '01879068092', '01858607955', 'khitish201512@gmail.com', 'Sorkar Bari, Basurhat Pourasavaq , Basurhatq , Companigonj , Noakhali', 'Sorkar Bari, Basurhat Pourasava.  , Basurhat , Companigonj , Noakhali', '2012-01-01', '20127521605033602', 'Noakhali.', 'Not Applicable', 'Not Applicable', 'Male', 'HINDUISM', '', 'NOAKHALI', '21.jpg', 0, 2016061515, '2016-06-12 11:16:05', '3', '2016-06-12 05:16:05', NULL),
(122, 2016065571, 'Yeasmin Akter', 'Abdul Al Masud', 'Businessman', 'Nasrin Sultana', 'Housewife', 'ইয়াসমিন আক্তার', 'আবদুল আল মাসুদ', 'নাছরিন সুলতানা', 'Emran Hossin', '01814427581', '01827038836', 'eb@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2014-04-11', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '22.jpg', 0, 2016064209, '2016-06-12 11:19:06', '3', '2016-06-12 05:19:06', NULL),
(123, 2016063509, 'Sayeed Abran Rupom', 'Abdur Rahim', 'Private Service', 'Lutfun Nahar', 'Housewife', 'সাঈদ আবরান রুপম', 'আব্দুর রহিম', 'লুৎফুন নাহার', 'Lutfun Nahar', '01860453971', '01860453971', 'rahima325@gmail.com', 'Char Parboti , Basurhat , Companigonj , Noakhali', 'Charparboti , Basurhat , Companigonj , Noakhali', '2011-03-24', '20117521605030351', 'Basurhat Pourasava', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '24.jpg', 0, 2016063922, '2016-06-12 11:22:25', '3', '2016-06-12 05:22:25', NULL),
(124, 2016067894, 'Maruf Hasan Nihal', 'Abul Khair', 'Businessman', 'Ayesha Akter', 'Housewife', 'মারুফ হাসান নিহাল', 'আবুল খায়ের', 'আয়েশা আক্তার', 'Abul Khair', '01831045142', '01815092533', 'ganeshchakraborty18@gmail.com', 'Manik Mea Vew. Basurhat , Basurhat , Companigonj , Noakhali', 'Manik Mea Vew. Basurhat , Basurhat , Companigonj , Noakhali', '2011-12-13', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'AB+', 'NOAKHALI', '25.jpg', 0, 2016064573, '2016-06-12 11:25:55', '3', '2016-06-12 05:25:55', NULL),
(125, 2016066484, 'Muheu Islam', 'Saiful Islam', 'Businessman', 'Jharna Parvin', 'Teacher', 'মহিয়্য ইসলাম', 'সাইফুল ইসলাম', 'ঝর্ণা পারভীন', 'Jharna Parvin', '01838351331', '01838351331', 'ec@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2012-04-27', '123', 'Basurhat, Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '30.jpg', 0, 2016061959, '2016-06-12 11:29:16', '3', '2016-06-12 05:29:16', NULL),
(126, 2016064583, 'Ayman Ulfat', 'Kamal Uddin', 'Service', 'Nazma Akter', 'Housewife', 'আয়মান উলফাত', 'কামাল উদ্দিন', 'নাজমা আক্তার', 'Ismoth Jahan', '01817387488', '01817387488', 'ed@gmail.com', 'Karalia , Bsurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2011-11-02', '20117521603025621', 'Dhaka', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '36.jpg', 0, 2016064322, '2016-06-12 11:32:48', '3', '2016-06-12 05:32:48', NULL),
(127, 2016064310, 'Abid Hassan Sium', 'Aftab Uddin', 'Abroad', 'Nahida Akter', 'Housewife', 'আবিদ হাসান সিয়াম', 'আফতাব উদ্দিন', 'নাহিদা আকতার', 'Saidul Huqe', '01630284022', '01630284022', 'ef@gmail.com', 'Shiraj Pur , Basurhat , Companigonj , Nokhali', 'Shiraj Pur , Basurhat , Companigonj , Noakhali', '2011-07-02', '20117512183038868', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '39.jpg', 0, 2016068332, '2016-06-12 11:37:07', '3', '2016-06-12 05:37:07', NULL),
(128, 2016061425, 'Nishat Tasnim Momu', 'Toaha Bahar', 'Job', 'Khodaza Akter', 'Housewife', 'নিশাত তাসনিম মুমু', 'তোয়াহা বাহার', 'খোদেজা আক্তার', 'Khodaza Akter', '01818920778', '01712179548', 'eg@gmail.com', 'Bodo Raja Pur , Basurhat , Companigonj , Noakhali', 'Bodo Raja Pur , Basurhat , Companigonj , Noakhali', '2011-07-08', '20117521601033650', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '49.jpg', 0, 2016061992, '2016-06-12 11:43:06', '3', '2016-06-12 05:43:06', NULL),
(129, 2016061634, 'Sadia Tasnim Jeba', 'Mohammad Shahid', 'Teacher', 'Rehana Akter', 'Housewife', 'সাদিয়া তাসনিম জেবা', 'মোহাম্মদ সাহিদ', 'রেহানা আক্তার', 'Syed Ahmed', '01826059800', '01817740840', 'shahidsumi74@gmail.com', 'Birahim Pur , Habib Pur , Companigonj , Noakhali', 'Birahim Pur , Habib Pur , Companigonj , Noakhali', '2011-08-18', '039769', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '51.jpg', 0, 2016065561, '2016-06-12 11:47:29', '3', '2016-06-12 05:47:29', NULL),
(130, 2016065120, 'Samia Sabrin ', 'Anwer Hossain', 'Job', 'Sajeda Akter', 'Housewife', 'সামিয়া সাবরিন', 'আনোয়ার হোসেন', 'সাজেদা আক্তার', 'Md. Shajahan', '01816309193', '01824894424', 'sajedaanwar124@gmail.com', 'Char Gulla Khali , Chaprasir Hat , Kabir Hat , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2010-10-08', '015959', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'A+', 'NOAKHALI', '55.jpg', 0, 2016064047, '2016-06-12 11:51:11', '3', '2016-06-12 05:51:11', NULL),
(131, 2016065957, 'Ardita Shill', 'Buban Chandra Shill', 'Businessman', 'Rupasree Sharma', 'Teacher', 'অদ্রিতা শীল অদ্রি', 'ভূবন চন্দ্র শীল', 'রূপশ্রী শর্ম্মা', 'Bubu Chandra Shill', '01837948026', '01837948026', 'eh@gmail.com', 'Shiraj Pur , Basurhat , Companigonj , Noakhali', 'Shiraj Pur , Basurhat , Companigonj , Noakhali', '2012-03-05', '123', 'Shirajpur', 'Not Applicable', 'Not Applicable', 'Female', 'HINDUISM', '', 'NOAKHALI', '57.jpg', 0, 2016067046, '2016-06-12 11:55:04', '3', '2016-06-12 05:55:04', NULL),
(132, 2016065479, 'Sumaiya Mohin', 'Md. Mohin Uddin', 'Businessman', 'Taslima Akter', 'Housewife', 'সুমাইয়া মহিন', 'মোঃ মহিন উদ্দিন', 'তাছলিমা আক্তার', 'Parvin Akter', '01834297096', '01834297096', 'ei@gmail.com', 'Kalam Monjil, T & T Road , Basurhat , Companigonj , Noakhali', 'Kalam Monjil, T & T Road , Basurhat , Companigonj , Noakhali', '2011-12-16', '20117512183042457', 'Birahim Pur', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '60.jpg', 0, 2016061168, '2016-06-12 11:58:58', '3', '2016-06-12 05:58:58', NULL),
(133, 2016067319, 'Shariar Ivna Rahman Tonoy', 'Zillur Rahman', 'Businessman', 'Kowsar Fatema Koli', 'Housewife', 'শাহরিয়ার ইবনে রহমান তনয়', 'জিল্লুর রহমান', 'কাউছার ফাতেমা কলি', 'Zillur Rahman', '01718372944', '01718372944', 'ej@gmail.com', 'Koralia , Basurhat , Companigonj , Noakhali', 'Koralia , Basurhat , Companigonj , Noakhali', '2012-05-04', '20127521603033672', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '63.jpg', 0, 2016061341, '2016-06-12 12:02:51', '3', '2016-06-12 06:02:51', NULL),
(134, 2016062653, 'Humaera Fairuge', 'Shekh Mohammad Rasel', 'Abroad', 'Farzana Akter', 'Housewife', 'হুমায়েরা ফায়রুজ', 'শেখ মোঃ রাসেল', 'ফারজানা আক্তার', 'Ohidul Hasan', '01879663560', '01879663560', 'farzanaaknidi@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Hazari, Shantir Hat , Char Hazari , Companigonj , Noakhali', '2011-09-28', '20117512123032545', 'Feni', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '66.jpg', 0, 2016066816, '2016-06-12 12:08:24', '3', '2016-06-12 06:08:24', NULL),
(135, 2016063228, 'Choton Kumar Das', 'Ranjit Kumar Das', 'Employee', 'Shipra Rani Das', 'Housewife', 'ছোটন কুমার দাশ', 'রণজিৎ কুমার দাশ', 'শিপ্রা রানী দাশ', 'Ranjit & Shipra', '01817081700', '01817081700', 'shibudas652@gmail.com', 'Ramdi , Basurhat , Companigonj , Noakhali', 'Ramdi , Basurhat , Companigonj , Noakhali', '2011-02-20', '20117521602033722', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '75.jpg', 0, 2016061607, '2016-06-12 12:12:50', '3', '2016-06-12 06:12:50', NULL),
(136, 2016061086, 'Jannatul Mawyha', 'Mujibur Rahman', 'Expatriate', 'Bibi Hajera', 'Housewife', 'জান্নাতুল মাওয়া', 'মুজিবুর রহমান', 'বিবি হাজেরা', 'Saidul Hoque', '01715030166', '01715030166', 'ek@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2010-12-21', '004182', 'Maijdee', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '76.jpg', 0, 2016065082, '2016-06-12 12:16:15', '3', '2016-06-12 06:16:15', NULL),
(137, 2016065202, 'Minhaj Bin Azan', 'Azam Khan', 'Businessman', 'Shumsur Nahar', 'Housewife', 'মিনহাজ বিন আযম', 'আযম খান', 'শামছুর নাহার', 'Delwar Hossain', '01714521204', '01712006259', 'el@gmail.com', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2011-08-06', '20117521608033603', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '81.jpg', 0, 2016061563, '2016-06-12 12:19:36', '3', '2016-06-12 06:19:36', NULL),
(138, 2016061980, 'Zabreen Hussain', 'Sahed Hussain', 'Service Man', 'Khaleda Akter', 'Housewife', 'জাবরিন হোসাইন', 'সাহেদ হোসেন', 'খালেদা আক্তার', 'Khaleda Akter', '01868834347', '01868834347', 'sahed.hussain@gmail.com', 'East Arichpur , Monno Nagar , Tongi , Gazipur', 'Basurhat , Basurhat , Companigonj , Noakhali', '2012-03-28', '38114774', 'Dhaka', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '82.jpg', 0, 2016065193, '2016-06-12 12:23:18', '3', '2016-06-12 06:23:18', NULL),
(139, 2016066904, 'Maimuna Rahman', 'S. M. Obaydur Rahman', 'Businessman', 'July Rahman', 'Housewife', 'মাইমুনা রহমান', 'এস. এম ওবায়দুর রহমান', 'জুলি রহমান', 'Jusna Begum', '01879663720', '01879663720', 'em@gmail.com', 'Bataya , Kachari Hat , Kabir Hat , Noakhali', 'Bataya , Kachari Hat , Kabir Hat , Noakhali', '2011-04-08', '20111595512038144', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '84.jpg', 0, 2016063601, '2016-06-12 12:26:42', '3', '2016-06-12 06:26:42', NULL),
(140, 2016063086, 'Israt Jahan', 'Gias Uddin', 'Businessman', 'Moahcana Khatun', 'Housewife', 'ইসরাত জাহান', 'গিয়াস উদ্দিন', 'মোহছেনা খাতুন', 'Gias Uddin', '01826028457', '01826028457', 'en@gmail.com', 'Koralia , Basurhat , Companigonj , Noakhali', 'Koralia , Basurhat , Companigonj , Noakhali', '2011-04-02', '20117521603032274', 'Basurhat, Companigonj', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '87.jpg', 0, 2016066210, '2016-06-12 12:29:50', '3', '2016-06-12 06:29:50', NULL),
(141, 2016066573, 'Md. Yeasir', 'Md. Yeakub Nobi', 'Businessman', 'Rumana Nasrin', 'Housewife', 'মোঃ ইয়াছির', 'মোঃ ইয়াকুব নবী', 'রুমানা নাসরীন', 'Md. Yeakub Nobi', '01819168435', '01737809040', 'eo@gmail.com', 'Shiraj Pur , Shiraj Pur , Companigonj , Noakhali', 'Shiraj Pur , Shiraj Pur , Companigonj , Noakhali', '2011-03-23', '20117512183039716', 'Shiraj Pur', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '90.jpg', 0, 2016068457, '2016-06-12 12:36:15', '3', '2016-06-12 06:36:15', NULL),
(142, 2016061374, 'Sajeda Akter', 'Jamal Uddin', 'Abroad', 'Nur Nahar', 'Housewife', 'সাজেদা আক্তার', 'জামাল উদ্দিন', 'নুর নাহার', 'Md. Karim Ullah', '01879081044', '01879081044', 'ep@gmail.com', 'Sankaji Patowari Badi, Basurhat , Basurhat , Companigonj , Noakhali', 'Boro Raja Pur , Basurhat , Companigonj , Noakhali', '2011-05-29', '20117512183042638', 'Companigonj, Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '91.jpg', 0, 2016068462, '2016-06-12 12:40:41', '3', '2016-06-12 06:40:41', NULL),
(143, 2016068891, 'Farjana Akter', 'Md. Abul Kashem', 'Service Holder', 'Jesmin Akter', 'Housewife', 'ফারজানা আক্তার মিতু', 'মোঃ আবুল কাশেম', 'জেসমিন আক্তার', 'Shekh Farid', '01829480706', '01835280938', 'eq@gmail.com', 'Koralia , Basurhat , Companigonj , Noakhali', 'Koralia , Basurhat , Companigonj , Noakhali', '2010-07-17', '20107521603033619', 'Noakhali, Bangladesh.', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '74.jpg', 0, 2016067676, '2016-06-12 12:44:09', '3', '2016-06-12 06:44:09', NULL),
(144, 2016064874, 'Md. Nahedul Islam', 'Md. Abu Zahed', 'Businessman', 'Najmun Naher', 'Housewife', 'মোঃ নাহিদুল ইসলাম', 'মোঃ আবু জাহেদ', 'নাজমুন নাহার', 'Kamrul Naher', '01715216344', '01715216344', 'es@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2011-11-17', '20117512135062458', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'A+', 'NOAKHALI', '29.jpg', 0, 2016065648, '2016-06-12 12:54:02', '3', '2016-06-12 06:54:02', NULL),
(145, 2016065414, 'Tasnia Tabassum Smity', 'Alomgir Hossain', 'Service', 'Sania Sultana', 'Housewife', 'তাসনিয়া তাবাসসুম স্মিতি', 'আলমগীর হোসেন', 'সানিয়া সুলতানা', 'Sania Sultana', '01868295411', '01868295411', 'et@gmail.com', 'Ramdi , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2011-02-08', '20117521602033604', 'Ramdi', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '19.jpg', 0, 2016064157, '2016-06-12 12:57:45', '3', '2016-06-12 06:57:45', NULL),
(146, 2016067845, 'Tartila Benta Hossain', 'Md. Shahadat Hossain', 'Businessman', 'Farhana Akter', 'Housewife', 'তারতীলা বিনতে হোসাইন', 'মোঃ শাহাদাত হোসাইন', 'ফারহানা আক্তার', 'Md. Shahadat Hossain', '01818363286', '01813171544', 'eu@gmail.com', 'Fateh Jange Pur , Kabir Hat , Kabir Hat  , Noakhali', 'KG Residential Area, Basurhat , Basurhat , Companigonj , Noakhali', '2012-06-03', '123', 'Companigonj', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '85.jpg', 0, 2016065930, '2016-06-12 01:03:27', '3', '2016-06-12 07:03:27', NULL),
(147, 2016068451, 'Iftakher Ahmed', 'Jaker Hassin', 'Businessman', 'Thamino Akter', 'Housewife', 'ইফতেখার আহমেদ', 'জাকের হোসেন', 'তাহমিনা আক্তার', 'Thamina Akter', '01812758238', '01812758238', 'ev@gmail.com', 'Ramdi  , Basurhat , Companigonj , Noakhali', 'Ramdi , Basurhat , Companigonj , Noakhali', '2011-02-12', '20117521602031275', 'Ramdi', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '33.jpg', 0, 2016064232, '2016-06-12 01:18:11', '3', '2016-06-12 07:18:11', NULL),
(148, 2016065609, 'Sidratul Muntaha Tanha', 'Asgor Hossain Babul', 'Businessman', 'Shamima Akter Shorna', 'Housewife', 'সিদরাতুল মুনতাহা তানহা', 'আজগর হোসেন বাবুল', 'শামীমা আক্তার স্বর্ণা ', 'Shamima Akter Shorna', '01817001910', '01817001910', 'babulworldnet@gmail.com', 'Basurhat, 5 No Ward , Basurhat , Companigonj , Noakhali', 'Basurhat, 5 No Ward , Basurhat , Companigonj , Noakhali', '2011-10-12', '20117521605033638', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '114.jpg', 0, 2016063117, '2016-06-13 09:23:56', '3', '2016-06-13 03:23:56', NULL),
(149, 2016068398, 'Mutahara Amir Tonny', 'Amir Hossain Manik', 'Businessman', 'Rina Akter Riya', 'Housewife', 'মুতাহারা আমির তন্নী', 'আমির হোসেন মানিক', 'রিনা আক্তার রিয়া', 'Amir Hossain', '01813295440', '01813295440', 'manikbd4@gmail.com', 'Basurhat, 5 No Ward , Basurhat , Companigonj , Noakhali', 'Basurhat, 5 No Ward , Basurhat , Companigonj , Noakhali', '2012-01-02', '20127521605033637', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '45.jpg', 0, 2016062903, '2016-06-13 09:27:47', '3', '2016-06-13 03:27:47', NULL),
(150, 2016064902, 'Minhajul Islam', 'Omar Faruk', 'Abroad', 'Bilkayes Ara', 'Housewife', 'মিনহাজুল ইসলাম', 'ওমর ফারুক', 'বিলকায়েছ আরা', 'Bilkayes Ara', '01811391598', '01770007526', 'ew@gmail.com', 'Chor Dorbesh , Bangla Bazar , Sonagaji , Feni', 'Shiraj Pur , Basurhat , Companigonj , Noakhali', '2011-02-10', '20113019438041772', 'Shiraj Pur', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '4.jpg', 0, 2016062362, '2016-06-13 09:34:17', '3', '2016-06-13 03:34:17', NULL),
(151, 2016064882, 'Fatehatul Aroa', 'Abu Naser', 'Businessman', 'Taslima Akter', 'Housewife', 'ফাতেহাতুল আরওয়া', 'আবু নাছের', 'তাছলিমা আক্তার', 'Kamrul Islam', '01845721692', '01814949473', 'ex@gmail.com', 'Chor Hazari , Basurhat , Companigonj , Noakhali', 'Chor Hazari , Basurhat , Companigonj , Noakhali', '2012-01-01', '20127511606025543', 'Companigonj', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '6.jpg', 0, 2016065071, '2016-06-13 09:37:25', '3', '2016-06-13 03:37:25', NULL),
(152, 2016065100, 'Emdad Hoshen', 'Deloware Hoshen', 'Businessman', 'Ashma Siddika', 'Housewife', 'ইমদাদ হোসেন', 'দেলোয়ার হোসেন', 'আসমা ছিদ্দিকা', 'Asma Siddika', '01813120624', '01813120624', 'ey@gmail.com', 'Chor Parboti , Basurhat , Companigonj , Noakhali', 'Chor Parboti , Basurhat , Companigonj , Noakhali', '2011-12-31', '20117521805033600', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '18.jpg', 0, 2016065654, '2016-06-13 09:40:32', '3', '2016-06-13 03:40:32', NULL),
(153, 2016061874, 'Samir Yeasir Orvi', 'Sobug Alam', 'Abroad', 'Nargis Akter', 'Housewife', 'সামির ইয়াসার অরভি', 'সবুজ আলম', 'নার্গিস আক্তার ', 'Sobug Alam', '01756205261', '01756205261', 'ef@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2011-12-04', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '42.jpg', 0, 2016063584, '2016-06-13 09:44:29', '3', '2016-06-13 03:44:29', NULL),
(154, 2016064770, 'Md. Abu Chaleh', 'Abdul Chalam', 'Businessman', 'Ferdus Akter', 'Housewife', 'মোঃ আবু ছালেহ', 'আবদুল ছেলাম', 'ফেরদৌস আক্তার', 'Tahmena Akter', '01812758238', '0183939374', 'fa@gmail.com', 'Kazir Khil , Kazir Khil , Senbag , Noakhali', 'Ramdi , Basurhat , Companigonj , Noakhali', '2011-04-21', '20117518019100703', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '32.jpg', 0, 2016066091, '2016-06-13 09:48:11', '3', '2016-06-13 03:48:11', NULL),
(155, 2016063081, 'Sarmin Akther', 'Md. Abdul Kuddus', 'Businessman', 'Bibi Kawsar Tania', 'Housewife', 'সারমিন আক্তার', 'মোঃ আবদুল কুদ্দুছ', 'বিবি কাওছার তানিয়া', 'Fokrul Islam', '01792443243', '01855478282', 'kuddus160@gmail.com', 'Basurhat, 8 No Ward, Mofzal Road , Basurhat , Companigonj , Noakhali', 'Basurhat, 8 No Ward, Mofzal Road , Basurhat , Companigonj , Noakhali', '2011-01-28', '20117521608025086', 'Companigonj, Noakhali.', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '105.jpg', 0, 2016063009, '2016-06-13 09:54:17', '3', '2016-06-13 03:54:17', NULL),
(156, 2016065233, 'Md. Mehesan', 'Md. Ibrahim', 'Govt. Job', 'Farida Yesmin', 'Housewife', 'মোঃ মেহেছান', 'মোঃ ইব্রাহিম', 'ফরিদা ইয়াছমিন', 'Grandmother', '01818815613', '01818815613', 'fb@gmail.com', 'Gopal Pur , Bijbag , Shenbag , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2011-12-02', '20117518085100829', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'AB+', 'NOAKHALI', '115.jpg', 0, 2016068087, '2016-06-13 09:58:15', '3', '2016-06-13 03:58:15', NULL),
(157, 2016062214, 'Muktadur Hossen', 'Bellal Hossen', 'Abroad', 'Maksudun Nahar', 'Housewife', 'মুকতাদুর হোসেন', 'বেলাল হোসেন', 'মাকসুদুন নাহার', 'Saifuddin Raihan', '01831197516', '01831197516', 'ahembellal84@gmail.com', 'Chandi Pur , Dud Mukha Bazar , Dagon Buihan , Feni', 'Ramdi , Basurhat , Companigonj , Noakhali', '2012-05-30', '39369', 'Feni', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '73.jpg', 0, 2016066955, '2016-06-13 10:57:34', '3', '2016-06-13 04:57:34', NULL),
(158, 2016062103, 'Nufaisa Islam', 'Tajul Islam', 'Businessman', 'Nur Naher', 'Home Makter', 'নুফাইসা ইসলাম', 'তাজুল ইসলাম', 'নুর নাহার', 'Ariyanul Islam', '01814768400', '01814768400', 's2@gmail.com', 'Chan Pur Sha , Kabir Hat , Kabir Hat , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2011-07-13', '123', 'Kabirhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '115.jpg', 0, 2016062078, '2016-06-13 11:02:14', '3', '2016-06-13 05:02:14', NULL),
(159, 2016068568, 'Tanvir Hossen', 'Abdur Rahim', 'Businessman', 'Bibi Kulsum', 'House Maker', 'তানভীর হোসেন', 'আবদুর রহিম', 'বিবি কুলসুম', 'Bibi Kulsum', '01852029656', '01820090105', 's3@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-04-15', '20107521601032483', 'Basurhat Pourasava', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '12.jpg', 0, 2016065150, '2016-06-13 11:07:50', '3', '2016-06-13 05:07:50', NULL),
(160, 2016061081, 'Mahir Shrarea', 'Ibrahim', 'Abroad', 'Nazma Akter', 'Housewife', 'মাহির শাহরিয়', 'ইব্রাহিম', 'নাজমা', 'Nazma Akter', '01863891391', '01863891391', 's4@gmail.com', 'Char Hazari , Hazari Hat , Companigonj , Noakhali', 'Char Hazari , Hazari Hat , Companigonj , Noakhali', '2009-06-16', '032883', 'Char Hazari', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '72.jpg', 0, 2016066907, '2016-06-13 11:11:45', '3', '2016-06-13 05:11:45', NULL),
(161, 2016061833, 'Yashfe Rahman', 'Abdur Rahman', 'Abroad', 'Sayematul Kobra', 'Govt. Service Holder', 'ইয়াশফি রহমান', 'আবদুর রহমান', 'সাঈমাতুল কোবরা', 'Salehg Begum', '01921851439', '01921851439', 's5@gmail.com', 'Shamergaon , Kazirkhill , Senbag , Noakhali', 'Basurhat Pourosava , Basurhat , Companigonj , Noakhali', '2010-06-14', '20107521603025162', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', 'O+', 'NOAKHALI', '7.jpg', 0, 2016062065, '2016-06-13 11:14:54', '3', '2016-06-13 05:14:54', NULL),
(162, 2016064582, 'Tasnuva Tanjil Audri', 'Md. Abul Hossain', 'Teacher', 'Farhana Akter', 'Housewife', 'তাসনুভা তানজীল অদ্রি', 'মোঃ আবুল হোসেন সোহাগ', 'ফারহানা আক্তার পপি', 'Farhana Akter', '01816158162', '01816158162', 'mahshohag78@yahoo.com', 'Adarsho Para , Basurhat , Companigonj , Noakhali', 'Adarsho Para , Basurhat , Companigonj , Noakhali', '2011-10-10', '20117521609031988', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '88.jpg', 0, 2016065873, '2016-06-13 11:18:16', '3', '2016-06-13 05:18:16', NULL),
(163, 2016067857, 'Rafsan Mehebub', 'Monir Ahmed', 'Abroad', 'Shirin Ahmed', 'Housewife', 'রাফসান মেহেবুব', 'মনির আহমেদ', 'শিরিন আহমেদ', 'Shirin Ahmed', '01830432836', '01830432836', 's6@gmail.com', 'Basurhat Pourosava , Basurhat , Companigonj , Noakhali', 'Basurhat Pourosava , Basurhat , Companigonj , Noakhali', '2011-01-31', '123', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '114.jpg', 0, 2016065291, '2016-06-13 11:21:15', '3', '2016-06-13 05:21:15', NULL),
(164, 2016067464, 'Shariar Hossen Salman', 'Ahsan Ullah', 'Businessman', 'Jannatul Sanjida', 'Housewife', 'শাহরিয়ার হোসেন সালমান', 'আহছান উল্যাহ', 'জান্নাতুল সানজিদা', 'Jannatul Sanjida', '01815810468', '01815810468', 's7@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2010-03-26', '123', 'Char Kakra', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '20.jpg', 0, 2016067758, '2016-06-13 11:23:53', '3', '2016-06-13 05:23:53', NULL),
(165, 2016067241, 'Humyara Binta Saif', 'Md. Saif Uddin', 'Businessman', 'Khorshada Akter', 'Housewife', 'হুমায়রা বিনতে সাইফ', 'মোঃ সাইফ উদ্দিন', 'মোরশেদা আক্তার', 'Md. Saifuddin', '01812330493', '01812330498', 's9@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2011-09-02', '20117521609033393', 'Basurhat', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '11.jpg', 0, 2016068289, '2016-06-13 11:27:28', '3', '2016-06-13 05:27:28', NULL),
(166, 2016064101, 'Arman Hossain', 'Sheraj Ullah', 'Businessman', 'Jebon Ara Begum', 'Housewife', 'আরমান হোসেন নিরব', 'সিরাজ উল্ল্যাহ', 'জীবন আরা বেগম', 'Jebon Ara Begum', '01861124552', '01861124552', 'manshadriaz@gmail.com', 'Birahim Pur , Basurhat , Companigonj , Noakhali', 'Birahim Pur , Basurhat , Companigonj , Noakhali', '2009-07-13', '1234', 'Birahim Pur', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '24.jpg', 0, 2016063590, '2016-06-13 11:31:02', '3', '2016-06-13 05:31:02', NULL),
(167, 2016068816, 'Samia Uddin ', 'Main Uddin', 'Businessman', 'Romela Khanam', 'Housewife', 'সামিয়া উদ্দিন', 'মাঈন উদ্দিন', 'রোমেলা খানম', 'Romela Khanam', '01815941172', '01815941172', 's8@gmail.com', 'Char Kakra , Notun Bazar , Companigonj , Noakhali', 'Char Kakra , Notun Bazar , Companigonj , Noakhali', '2010-01-25', '123', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '77.jpg', 0, 2016061548, '2016-06-13 11:33:35', '3', '2016-06-13 05:33:35', NULL),
(168, 2016061930, 'Ebne Hossan Riyan', 'Hassan Imam Rasel', 'Journalist', 'Jannatul Akter Brishty', 'Housewife', 'ইবনে হাসান রিয়ান', 'হাসান ইমাম রাসেল', 'জান্নাতুল আক্তার বৃষ্টি', 'Khaja Abul Khaier', '01728294060', '01728294060', 'hassanimam@rocketmail.com', 'Mohammad Nagor , K. T. M. Hat , Companigonj , Noakhali', 'Mohammad Nagor , K. T. M. Hat , Companigonj , Noakhali', '2011-01-22', '20117512183036173', 'Mohammad Nagor', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '97.jpg', 0, 2016068175, '2016-06-13 11:39:18', '3', '2016-06-13 05:41:41', '3'),
(169, 2016063281, 'Eshika Sutra Dhar', 'Akrite Sutra Dhar', 'Businessman', 'Beaute Sutra Dhar', 'Housewife', 'ইশিকা সূত্রধর', 'অমৃত সূত্রধর', 'বিউটি সূত্রধর', 'Amritta Sutra Dhar', '01791862875', '01791862875', 'amritaa450@gmail.com', 'Char Parboti , Basurhat , Companigonj , Noakhali', 'Char Parboti , Basurhat , Companigonj , Noakhali', '2011-02-19', '19717522104000003', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Female', 'HINDUISM', '', 'NOAKHALI', '83.jpg', 0, 2016064792, '2016-06-13 11:43:47', '3', '2016-06-13 05:43:47', NULL),
(170, 2016064909, 'Janatul Fardous', 'Imam Hossian', 'Service', 'Roksana Akter', 'Housewife', 'জান্নাতুল  ফেরদাউস', 'ইমাম হোসেন ', 'রোকসানা আক্তার', 'Roksana Akter', '01851277407', '01851277407', 'b4@gmail.com', 'Gazir Bag , Fariza Bazar , Kabir Hat , Noakhali', 'Karalia, T & T Road , Basurhat , Companigonj , Noakhali', '2011-08-31', '20117514770100244', 'Kabir Hat ', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '65.jpg', 0, 2016061904, '2016-06-19 11:58:21', '7', '2016-06-22 05:07:07', '3'),
(171, 2016064268, 'Md. Samir Ullah', 'Hedayet Ullah Manik', 'Businessman', 'Batasi Begum', 'Housewife', 'মোঃ ছামির উল্যাহ্', 'হেদায়েত উল্যাহ অনিক', 'বাতাসী বেগম', 'Hedayet Ullah Manik', '01817734563', '01817734563', 'b5@gmail.com', 'Musapur , Bangla Bazar , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2011-05-13', '20117512159100733', 'Noakhali', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '40.jpg', 0, 2016061785, '2016-06-19 12:03:30', '7', '2016-06-22 05:01:01', '3'),
(172, 2016063839, 'Nusrat Jahin', 'Monir Ahmed', 'Abroad', 'Shana Akter', 'Housewife', 'নুসরাত জাহান', 'মনির আহম্মদ', 'শাহানা আক্তার', 'Shana Akter', '01843428401', '01843428401', 'b6@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2011-08-16', '20117521603033682', 'Basurhat, Noakhali.', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'A+', 'NOAKHALI', '64.jpg', 0, 2016061491, '2016-06-19 12:08:04', '7', '2016-06-22 05:43:43', '3'),
(173, 2016062515, 'Nahian Najmul', 'Najmul Haider', 'Abroad Service Holder', 'Nushrat Haider', 'Housewife', 'নাহিয়ান নাজমুল', 'নাজমুল হায়দার', 'নুসরাত হায়দার', 'Nushrat Haider', '01814768873', '01814768873', 'b7@gmail.com', 'Basurhat , Basurhat , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2012-06-15', '12345', 'Basurhat, Companigonj, Noakhali. ', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '52.jpg', 0, 2016063556, '2016-06-19 12:12:04', '7', '2016-06-22 05:35:35', '3'),
(174, 2016065531, 'Tanzim Mahamud', 'Main Uddin', 'Abroad', 'Hasina Akter', 'Housewife', 'তানজিম মাহমুদ', 'মাঈন উদ্দিন', 'হাছিনা আক্তার', 'Main Uddin', '01713620443', '01713620443', 'b8@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2012-11-27', '20127521608033895', 'Basurhat, Companigonj, Noakhali. ', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '121.jpg', 0, 2016066284, '2016-06-19 12:16:04', '7', '2016-06-22 05:55:55', '3'),
(175, 2016063804, 'Thaminul Islam', 'Nazmul Islam', 'Businessman', 'Rokeya Begum', 'Housewife', 'তাহমিনুল ইসলাম', 'নাজমুল ইসলাম', 'রোকেয়া বেগম', 'Hazi Abdul Mnnan', '01852210710', '01852210710', 'masud.nazmul@yahoo.com', 'Shiraj Pur , Shiraj Pur , Companigonj , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2012-01-01', '20127512183042368', 'Basurhat, Companigonj, Noakhali. ', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '10.jpg', 0, 2016062937, '2016-06-19 12:20:35', '7', '2016-06-22 05:29:29', '3'),
(176, 2016063369, 'Thumid Uddin', 'Mohin Uddin', 'Businessman', 'Rahana Akter', 'Housewife', 'তাহমিদ উদ্দিন', 'মহিন উদ্দিন', 'রেহানা আক্তার', 'Abdul Quddus', '01815944483', '01815944483', 'b9@gmail.com', 'Jogatpur , Dagon Bhuyan , Dagon Bhuyan , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2011-09-27', '20113023004104660', 'Basurhat, Companigonj, Noakhali. ', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '46.jpg', 0, 2016063354, '2016-06-19 12:25:09', '7', '2016-06-22 05:54:54', '3'),
(177, 2016068471, 'Tanjila Binte Rahman', 'Mizanur Rahman', 'Abroad', 'Roksana Begum', 'Housewife', 'তানজিলা বিনতে রহমান', 'মিজানুর রহমান', 'রোকসানা বেগম', 'Abdullah Al Mamun', '01834646447', '01834646447', 'b10@gmail.com', 'Char Kakra , Notun Bazar , Companigonj , Noakhali', 'Char Kakra , Notun Bazar , Companigonj , Noakhali', '2011-08-02', '20117512135060225', 'Basurhat, Companigonj, Noakhali. ', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '27.jpg', 0, 2016061990, '2016-06-19 12:30:30', '7', '2016-06-22 05:10:10', '3'),
(178, 2016064966, 'Awsaf Bin Amin', 'Md. Nurul Amin', 'Businessman', 'Gulshan Ara', 'Housewife', 'আওসাফ বিন আমিন', 'মোঃ নুরুল আমিন', 'গুলশান আরা', 'Feroza Begume.', '01829365293', '01851277425', 'b11@gmail.com', 'Char Fokira , Char Fokira , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2012-03-15', '20127512111035557', 'Char Fokira. Noakhali.', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '3.jpg', 0, 2016063361, '2016-06-19 12:35:53', '7', '2016-06-22 05:55:55', '3'),
(179, 2016065545, 'Fabiha Jannat', 'Monir Hossain', 'Service', 'Sarmin Akthar', 'Housewife', 'ফাবিয়া জান্নাত', 'মনির হোসেন', 'শারমিন আক্তার', 'Sarmin Akther', '01838989558', '01838989558', 'b2@gmail.com', 'Karam Ullah Pur.  , Dagon Bhuiyan , Dagon Bhuiyan , Noakhali', 'Monimukta Hira kutir, Basurhat , Basurhat , Companigonj , Noakhali', '2010-11-28', '20103012594102436', 'Karam Ullah Pur', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '83.jpg', 0, 2016068787, '2016-06-22 10:39:50', '3', '2016-06-22 04:39:50', NULL),
(180, 2016065336, 'Sidratul Muntaha', 'Sorfudden', 'Job in Abroad', 'Fancy', 'Housewife', 'ছিদরাতুল মুনতাহা', 'সরফু উদ্দিন', 'ফেন্সী', 'Fancy', '01849494797', '01849494797', 'b1@gmail.com', 'Malipada , Kalamunshi Bazar , Kabir hat , Noakhali', 'Basurhat , Basurhat , Companigonj , Noakhali', '2010-07-06', '1234', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '38.jpg', 0, 2016062493, '2016-06-22 10:44:12', '3', '2016-06-22 04:44:12', NULL),
(181, 2016062387, 'Towfik Hossen Samit', 'Shahed Md. Abdul Kader', 'Abroad', 'Nasrin Akter', 'Housewife', 'তৌফিক হোসেন সামিত', 'সাহেদ মোঃ আবদুল কাদের', 'নাছরিন আক্তার', 'Nasrin Akter', '01813064499', '01813064499', 'nasrinshahed99@gmail.com', 'Char Kakra , Notun Bazar , Companigonj , Noakhali', 'College Gate, Basurhat , Basurhat , Companigonj , Noakhali', '2010-12-30', '025384', 'Basurhat Pourasava', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '71.jpg', 0, 2016068997, '2016-06-22 10:48:33', '3', '2016-06-22 04:48:33', NULL),
(182, 2016065778, 'Abdullah Al Sharia', 'Abdullah Al Masud', 'Abroad', 'Nasima Akter', 'Housewife', 'আবদুল্লা আল শাহরিয়া', 'আবদুল্লা আল মাসুদ', 'নাসিমা আক্তার', 'Nasima Akter', '01821554544', '01821554544', 'mamuniabdul@yahoo.com', 'Char Kakra , Notun Bazar , Companigonj , Noakhali', 'Char Kakra , Notun Bazar , Companigonj , Noakhali', '2009-12-18', '1234', 'Char Kakra', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '59.jpg', 0, 2016061136, '2016-06-22 10:52:36', '3', '2016-06-22 04:52:36', NULL),
(183, 2016065180, 'Bibi Khatiza', 'Rofique Ullah', 'Businessman', 'Bibi Morium', 'Housewife', 'বিবি খতিজা', 'রফিক উল্ল্যাহ', 'বিবি মরিয়ম', 'Rofique Ullah', '01711174490', '01711174490', 'b3@gmail.com', 'Char Parboti , Basurhat , Companigonj , Noakhali', 'Char Parboti , Basurhat , Companigonj , Noakhali', '2010-09-20', '20107521605033890', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '104.jpg', 0, 2016062324, '2016-06-22 11:01:04', '3', '2016-06-22 05:01:04', NULL),
(184, 2016063757, 'Samanta Anower', 'Anower', 'Businessman', 'Sharmin Akter', 'Housewife', 'সামান্তা আনোয়ার', 'আনোয়ার ', 'সারমিন আক্তার', 'Sharmin Akter', '01843213245', '01843213245', 'b12@gmail.com', 'T & T Road, Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2011-08-31', '20117514770035', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', 'A+', 'NOAKHALI', '89.jpg', 0, 2016062713, '2016-06-22 11:05:56', '3', '2016-06-22 05:05:56', NULL),
(185, 2016061629, 'Tahmidul Huda', 'A. K. M Saiful Huda', 'Businessman', 'Nazma Akther', 'Housewife', 'তাহমিদুল হুদা', 'এ. কে. এম সাইফুল হুদা', 'নাজমা আক্তার', 'A. K. M. Saiful Huda', '01818719383', '01818719383', 'nobo9073@gmail.com', 'Siraj Pur , Basurhat , Companigonj , Noakhali', 'Siraj Pur , Basurhat , Companigonj , Noakhali', '2012-03-13', '20127512183042395', 'Basurhat, Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '2.jpg', 0, 2016062841, '2016-06-22 11:10:40', '3', '2016-06-22 05:10:40', NULL),
(186, 2016066652, 'Naima Jahan', 'Sharif Uddin', 'Teacher', 'Raihan Akther', 'Housewife', 'নাইমা জাহান', 'শরীফ উদ্দিন', 'রাইহান আক্তার', 'Raihan Akther', '01811529239', '01811529239', 'er@gmail.com', 'Siraj Pur , Basurhat , Companigonj , Noakhali', 'Siraj Pur , Basurhat , Companigonj , Noakhali', '2011-09-19', '1234', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '17.jpg', 0, 2016065903, '2016-06-22 11:14:08', '3', '2016-06-22 05:14:08', NULL),
(187, 2016065472, 'Nur Ajmain', 'Nurul Huda', 'Abroad', 'Sharmin Akter', 'Housewife', 'নুর আজমাইন', 'নুরুল হুদা', 'শারমিন আক্তার', 'Nurun Nobi', '01715242388', '01863747696', 'mn.munna42@gmail.com', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2010-05-11', '20107521607032309', 'Noakhali.', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '48.jpg', 0, 2016068594, '2016-06-23 01:29:08', '3', '2016-06-23 07:29:08', NULL),
(188, 2016068609, 'Israt Tabassum Mamnun', 'Md. Yousuf', 'Abroad', 'Nilupa Yesmin', 'Housewife', 'ইসরাত তাবাচ্ছুম মামনুন', 'মোঃ ইউসুফ', 'নিলুপা ইয়াসমিন', 'Nilupa Yesmin', '01879068860', '01879068860', 'b42@gmail.com', 'Ramdi , Bhuiyar Hat , Companigonj , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2010-06-14', '123456', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '108.jpg', 0, 2016064478, '2016-06-23 01:33:37', '3', '2016-06-23 07:33:37', NULL),
(189, 2016065539, 'Afsana Akter Thanha', 'Ala Uddin', 'Abroad', 'Kamrun Nahar Jasmin', 'Housewife', 'আফসানা আক্তার তানহা', 'আলা উদ্দিন', 'কামরুন নাহার জেসমিন', 'Kamrun Nahar Jasmin', '01817639918', '01817639918', 'b43@gmail.com', 'Chandra Shuddi , Kabir Hat , Companigonj , Noakhali', 'Chandra Shuddi , Kabir Hat , Companigonj , Noakhali', '2010-09-10', '20107514723002418', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '90.jpg', 0, 2016067722, '2016-06-23 01:37:25', '3', '2016-06-23 07:37:25', NULL),
(190, 2016061156, 'Md. Abrar Fahim', 'Md. Jahangir Alam', 'Private Service', 'Mrs. Nigar Sultana', 'Housewife', 'মোঃ আবরার ফাহিম', 'মোঃ জাহাঙ্গীর আলম', 'মিসেস নিগার সুলতানা', 'Md. Jahangir Alam', '01712858514', '01712858514', 'b44@gmail.com', 'Basurhat Pourasava, Sishir Monzil , Basurhat , Companigonj , Noakhali', 'She Ali Para , Chandaish Hardrosha , Nangolkot , Noakhali', '2009-12-31', '20097521608030643', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '74.jpg', 0, 2016065771, '2016-06-23 01:42:34', '3', '2016-06-23 07:42:34', NULL),
(191, 2016063184, 'Dipeka Rani Shil', 'Pankaj Chandra Shil', 'Businessman', 'Mare Rani Shil', 'Housewife', 'দিপীকা রানী শীল', 'পংকজ চন্দ্র শীল', 'মেরী রানী শীল', 'Mare Rani Shil', '01813229528', '01813229528', 'b30@gmail.com', 'Shahajad Pur , ShirajPur , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2016-10-21', '1234', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'HINDUISM', '', 'NOAKHALI', '07.jpg', 0, 2016065994, '2016-06-23 02:23:24', '3', '2016-06-23 08:23:24', NULL);
INSERT INTO `regis_tbl` (`id`, `stu_id`, `name`, `fName`, `foccupation`, `mName`, `moccupation`, `name_ban`, `fName_ban`, `mName_ban`, `local_guardian`, `Phone_n`, `personal_phone`, `email`, `par_address`, `pre_address`, `dob`, `dob_id`, `pob`, `pbs`, `gpa`, `gender`, `religion`, `blood_grou`, `city`, `picture`, `verid`, `parentid`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(192, 2016066688, 'Tanvir Hassan', 'Rokib Hassan', 'Job', 'Roomana Akter', 'Housewife', 'তানভীর হাসান', 'রকিব হাসান', 'রোমানা আক্তার', 'Roomana Akter', '01700852206', '01700852206', 'b31@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2011-01-23', '1234', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '37.jpg', 0, 2016066049, '2016-06-23 02:26:54', '3', '2016-06-23 08:26:54', NULL),
(193, 2016063057, 'Rabaka Islam', 'Sala Uddin', 'Job', 'Rehana Akter', 'Housewife', 'রেবেকা ইসলাম', 'সালাহ উদ্দিন', 'রেহেনা আক্তার', 'Rehana Akter', '01700852206', '01700852206', 'b32@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-10-08', '1234', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '38.jpg', 0, 2016066049, '2016-06-23 02:31:05', '3', '2016-06-23 08:31:05', NULL),
(194, 2016061856, 'Jannatul Bakaya', 'Golam Khalak', 'Businessman', 'Rabaya Akter', 'Housewife', 'জান্নাতুল বাকেয়া', 'গোলাম খালেক', 'রাবেয়া আক্তার', 'Rabaya Akter', '01833491218', '01833491218', 'b33@gmail.com', 'Char Hazari , Basurhat , Companigonj , Noakhali', 'Char Hazari , Basurhat , Companigonj , Noakhali', '2011-04-04', '1234', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '28.jpg', 0, 2016066779, '2016-06-23 02:34:04', '3', '2016-06-23 08:34:04', NULL),
(195, 2016067191, 'Nusrat Jahan', 'Main Uddin', 'Businessman', 'Roni', 'Housewife', 'নুসরাত জাহান', 'মাঈন উদ্দিন', 'রনি', 'Roni', '01882687846', '01882687846', 'b20@gmail.com', 'Ramdi , Basurhat , Companigonj , Noakhali', 'Ramdi , Basurhat , Companigonj , Noakhali', '2011-06-10', '1234', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', 'AB+', 'NOAKHALI', '118.jpg', 0, 2016062773, '2016-06-23 02:37:21', '3', '2016-06-23 08:37:21', NULL),
(196, 2016062220, 'Tabasum Islam Midi', 'Saiful Islam', 'Businessman', 'Kamrun Nahar', 'Housewife', 'তাবাসুম ইসলাম মিদি', 'সাইফুল ইসলাম', 'কামরুন নাহার', 'Razib', '01817741699', '01829999681', 'b34@gmail.com', 'Basurhat Pourasava, Ward No- 8 , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2011-11-04', '1234', 'Companigonj, Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', 'O+', 'NOAKHALI', '103.jpg', 0, 2016063101, '2016-06-23 02:40:38', '3', '2016-06-23 08:40:38', NULL),
(197, 2016061798, 'Md. Tawhid Foiz Nobo', 'Md. Foiz Ullah', 'Army', 'Shakhi Foiz', 'Housewife', 'মোঃ তাওহীদ ফয়েজ নব', 'মোহাম্মদ ফয়েজ উল্ল্যাহ', 'শাখী ফয়েজ', 'Shakhi Foiz', '01865339043', '01865339043', 'b35@gmail.com', 'Dholot Ramdi , Bhoirhat , Kabirhat , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2012-01-01', '20107514723002668', 'Companigonj, Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '5.jpg', 0, 2016061169, '2016-06-23 02:44:02', '3', '2016-06-23 08:44:02', NULL),
(198, 2016065974, 'Sabiha Islam', 'Saiful Islam', 'Businessman', 'Rahi Islam', 'Housewife', 'সাবিহা ইসলাম', 'সাইফুল ইসলাম', 'রাহী ইসলাম', 'Rahi Islam', '01874948111', '01874948111', 'b36@gmail.com', 'Chandra Suddi , Bhuiyar Hat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2011-10-14', '20117514723100263', 'Chandrasuddi', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '78.jpg', 0, 2016068366, '2016-06-23 02:47:33', '3', '2016-06-23 08:47:33', NULL),
(199, 2016066464, 'Saifan Hossain ', 'Iqbal Hossain', 'Businessman', 'Saadja Akter Sharmin', 'Housewife', 'সাইফান হোসেন', 'ইকবাল হোসেন', 'সাজেদা আক্তার', 'Iqbal Hossain', '01850924336', '01818673338', 'b37@gmail.com', 'Haze Taher Nebas. Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Laxin Narain Pur , Maijde Court , Sudaram , Noakhali', '2011-10-29', '1234', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '47.jpg', 0, 2016062372, '2016-06-23 02:52:23', '3', '2016-06-23 08:52:23', NULL),
(200, 2016067891, 'Saima Taohid', 'Jhanger Alam', 'Abroad', 'Shamema Akther', 'Housewife', 'সায়মা তাওহীদ', 'জাহাঙ্গীর আলম', 'শামীমা আক্তার', 'Shahed Rahaman', '01879664733', '01712785071', 'b38@gmail.com', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2011-06-15', '1234', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '62.jpg', 0, 2016061887, '2016-06-23 02:57:06', '3', '2016-06-23 08:57:06', NULL),
(201, 2016062406, 'Afia Saida', 'Mehadi Hassan', 'Businessman', 'Rehana Akther', 'Housewife', 'আফিয়া সহিদা', 'মেহেদী হাছান', 'রেহানা আক্তার', 'Shahedur Rahaman', '01712785071', '01712785071', 'b39@gmail.com', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2011-12-12', '12345', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '113.jpg', 0, 2016066474, '2016-06-25 08:35:46', '3', '2016-06-25 02:35:46', NULL),
(202, 2016063748, 'Khaza Redwan Ahammed', 'Nazrul Islam', 'Businessman', 'Ayesha Akter', 'Housewife', 'খাজা রেদওয়ান আহাম্মেদ', 'নজরুল ইসলাম', 'আয়েশা আক্তার', 'Ayesha Akter', '01866742820', '01712906516', 'nazrul.khaza@yahoo.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-07-28', '20107521603031223', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '44.jpg', 0, 2016061735, '2016-06-25 09:11:35', '3', '2016-06-25 03:11:35', NULL),
(203, 2016063019, 'Imtiaj Hossen', 'Jaker Hossen', 'Service', 'Rokcana Begum', 'Housewife', 'ইমতিয়াজ হোসেন', 'মোঃ জাকের হোসেন', 'রোকছানা বেগম', 'Jaker Hossen', '01819043931', '01819043931', 'b40@gmail.com', 'Ramdi , Basurhat , Companigonj , Noakhali', 'Ramdi , Basurhat , Companigonj , Noakhali', '2010-06-06', '20107521602030172', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '87_2.jpg', 0, 2016063013, '2016-06-25 09:24:11', '3', '2016-06-25 03:45:45', '3'),
(204, 2016062331, 'Sakibul Alom', 'Jahangir Alom', 'Job', 'Seuliy Akter', 'Housewife', 'শাকিবুল আলম', 'জাহাঙ্গীর আলম', 'শিউলি আক্তার', 'Abdul Motin', '01834143511', '01817730575', 'b41@gmail.com', 'Shiraj Pur , Habib Pur , Companigonj , Noakhali', 'Shiraj Pur , Habib Pur , Companigonj , Noakhali', '2010-11-11', '20107512183042318', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '102_2.jpg', 0, 2016065955, '2016-06-25 09:43:20', '3', '2016-06-25 03:43:20', NULL),
(205, 2016067461, 'Israt Jahan Mahi', 'Feroj Alam', 'Businessman', 'Sakra Sultana', 'Housewife', 'ইসরাত জাহান মাহি', 'ফিরোজ আলম', 'সাকেরা সুলতানা', 'Sakra Sultana', '01711178520', '01711178520', 'b46@gmail.com', 'Berahimpur , Basurhat , Companigonj , Noakhali', 'Berahimpur , Basurhat , Companigonj , Noakhali', '2010-05-31', '20107512183040343', 'Berahimpur', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '14.jpg', 0, 2016061396, '2016-06-25 10:04:23', '3', '2016-06-25 04:47:47', '3'),
(206, 2016063343, 'Jahadur Rahman', 'Arifur Rahman', 'Businessman', 'Jahanara Akter', 'Housewife', 'জাহেদুর রহমান আলভী', 'আরিফুর রহমান (মামুন)', 'জাহানারা আক্তার', 'Jahanara Akter', '01852972187', '01740572201', 'b47@gmail.com', 'Char Hazari , Char Hazari , Companigonj , Noakhali', 'Char Hazari , Char Hazari , Companigonj , Noakhali', '2011-01-01', '20117512123036621', 'Mucha Mia Pondit Bari', 'Not Applicable', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '106.jpg', 0, 2016064438, '2016-06-25 10:12:01', '3', '2016-06-25 04:20:20', '3'),
(207, 2016061632, 'Muntaha Binta Ahamed', 'Mostak Ahamed', 'Businessman', 'Ayesa Begum', 'Housewife', 'মুনতাহা বিনতে আহাম্মদ', 'মোস্তাক আহাম্মদ', 'আয়েশা বেগম', 'Ayesa Begum', '01822974412', '01822974412', 'b49@gmail.com', 'Jangalia , Samaspur , Dagonbhuian , Feni', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-08-10', '20103012573102734', 'Jangalia', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '47.jpg', 0, 2016064597, '2016-06-25 01:03:56', '3', '2016-06-25 07:03:56', NULL),
(208, 2016065852, 'Musfiqur Rahaman', 'Shahedur Rahaman', 'Businessman', 'Nur Nahar Sultana', 'Housewife', 'মুশফিকুর রহমান (মারিয়ান)', 'শাহেদুর রহমান', 'নুর নাহার সুলতানা', 'Shahedur Rahaman', '01712785071', '01817541633', 'b48@gmail.com', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Rampur , Bannea , Companigonj , Noakhali', '2011-03-18', '12345', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '8.jpg', 0, 2016061264, '2016-06-25 01:07:19', '3', '2016-06-25 07:07:19', NULL),
(209, 2016064716, 'Kowsar Mahmud', 'Md. Rohim Ullah', 'Abroad', 'Salaha Khatun', 'Housewife', 'কাওছার মাহমুদ', 'রহিম উল্ল্যাহ', 'সালেহা খাতুন', 'Salaha Khatun', '01823585610', '01823585610', 'b49@gmail.com', 'Char Hazari , Basurhat , Companigonj , Noakhali', 'Char Hazari , Basurhat , Companigonj , Noakhali', '2009-02-07', '20097522106023052', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '122.jpg', 0, 2016064597, '2016-06-26 09:24:58', '3', '2016-06-26 03:24:58', NULL),
(210, 2016066266, 'Arafat Hossain', 'Amrad Hossain', 'Businessman', 'Sopna Akter', 'Housewife', 'আরাফাত  হোসেন', 'এমরাদ  হোসেন', 'স্বপ্না আক্তার', 'Sopna Akter', '01878954327', '01878954327', 'b51@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2009-03-01', '030523', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '36.jpg', 0, 2016065290, '2016-06-26 09:32:49', '3', '2016-06-26 03:32:49', NULL),
(211, 2016066544, 'Ayan Chowdhury', 'Besu Dabnath', 'Businessman', 'Mokta Chowdhury', 'Housewife', 'আয়ান চৌধুরী (গল্প)', 'বিশু  দেবনাথ', 'মুক্তা চৌধুরী', 'Besu Dabnath', '01815858765', '01815858765', 'b52@gmail.com', 'College Para, Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'College Para, Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2010-03-19', '20107523304151689', 'Chowmuhani', 'Basurhat Academy', 'Not Applicable', 'Male', 'HINDUISM', '', 'NOAKHALI', '90.jpg', 0, 2016067836, '2016-06-26 09:36:36', '3', '2016-06-26 03:36:36', NULL),
(212, 2016063320, 'Muntasim Kabir Chowdhury', 'Azizul Kabir Chowdhury', 'Businessman', 'Shazada Akter', 'Housewife', 'মুনতাসিম কবির চৌধুরী', 'আজিজুল কবির চৌধুরী', 'সাজেদা আক্তার', 'Azizul Kabir Chowdhury', '01824870535', '01824870535', 'b50@gmail.com', 'Haripur , Habibpur Bazar , Chagal Naiya , Feni', 'Haider Library, Main Road, Basurhat , Basurhat , Companigonj , Noakhali', '2009-08-08', '12345', 'Feni, Bangladesh', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '58.jpg', 0, 2016065943, '2016-06-26 09:40:53', '3', '2016-06-26 03:40:53', NULL),
(213, 2016063561, 'Adnan Sarwar', 'Golam Sarwar', 'Abroad', 'Kamrun Nahar', 'Housewife', 'আদনান ছারওয়ার', 'গোলাম ছারওয়ার ', 'কামরুন নাহার', 'Kamrun Nahar', '01832323679', '01832323679', 'b54@gmail.com', 'Basurhat Pourasava, Ward No- 8 , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava, Ward No- 8 , Basurhat , Companigonj , Noakhali', '2008-10-08', '20087521608030577', 'Basurhat Pourasava', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '11.jpg', 0, 2016061978, '2016-06-26 09:50:23', '3', '2016-06-26 03:50:23', NULL),
(214, 2016065512, 'Air Hossen', 'Abu Naser', 'Abroad', 'Kamrun Nahar', 'Housewife', 'এয়ার হোসেন', 'আবু নাছের', 'কামরুন নাহার', 'Kamrun Nahar', '01829915061', '01829915061', 'b55@gmail.com', 'Char Hazari , Char Hazari , Companigonj , Noakhali', 'Char Hazari , Char Hazari , Companigonj , Noakhali', '2008-10-21', '12345', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '81.jpg', 0, 2016061785, '2016-06-26 09:53:07', '3', '2016-06-26 03:53:07', NULL),
(215, 2016061356, 'Salman Pharshi', 'Farhad Ahamed', 'Businessman', 'Kamrun Nahar', 'Housewife', 'সালমান ফারসি', 'ফরহাদ আহামেদ', 'কামরুন নাহার', 'Diponkor Karmoker', '01813045187', '01813045187', 'b53@gmail.com', 'Ramdi , Basurhat , Companigonj , Noakhali', 'Ramdi , Basurhat , Companigonj , Noakhali', '2008-03-16', '20087521602031370', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '20.jpg', 0, 2016067972, '2016-06-26 09:56:00', '3', '2016-06-26 03:56:00', NULL),
(216, 2016067335, 'Fahamida Akter', 'Md. Eleas', 'Businessman', 'Forida Akter', 'Housewife', 'ফাহামিদা আক্তার', 'মোঃ ইলিয়াছ ', 'ফরিদা আক্তার', 'Fahamida Akter', '01754640062', '01754640062', 'b57@gmail.com', 'Ramdi, Ward No- 2 , Basurhat , Companigonj , Noakhali', 'Ramdi, Ward No- 2 , Basurhat , Companigonj , Noakhali', '2009-07-10', '12345', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '128.jpg', 0, 2016067891, '2016-06-26 10:53:02', '3', '2016-06-26 04:53:02', NULL),
(217, 2016061727, 'Sadiha Rahman', 'Samsur Rahman', 'Businessman', 'Samona Yesmin', 'Teacher', 'ছাদিহা রহমান', 'শামছুর রহমান', 'ছেমনা ইয়াছমিন', 'Samona Yesmin', '01875827436', '01875827436', 'b56@gmail.com', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2010-06-24', '20107521608031249', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '44.jpg', 0, 2016064621, '2016-06-26 10:55:49', '3', '2016-06-26 04:55:49', NULL),
(218, 2016063053, 'Tamim Bin Ahamed', 'Mostak Ahamed', 'Businessman', 'Ayesa Begum', 'Housewife', 'তামিম বিন আহাম্মদ', 'মোস্তাক আহাম্মদ', 'আয়েশা বেগম', 'Ayesa Begum', '01822974412', '01822974412', 'b58@gmail.com', 'Jangalia , Samaspur , Dagonbhuyan , Feni', 'Karalia , Basurhat , Companigonj , Noakhali', '2011-10-29', '20103012573102734', 'Jangalia', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '56.jpg', 0, 2016064597, '2016-06-26 11:31:36', '3', '2016-06-26 05:31:36', NULL),
(219, 2016064198, 'Arafat Rahaman', 'Bahar Uddin', 'Abroad', 'Narges Akther', 'Housewife', 'আরাফাত রহমান', 'বাহার উদ্দিন', 'নার্গিস আক্তার', 'Narges Akther', '01785688567', '01785688567', 'b60@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2008-11-04', '20087512135060972', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '86.jpg', 0, 2016064900, '2016-06-26 11:37:25', '3', '2016-06-26 05:37:25', NULL),
(220, 2016067302, 'Md. Musa Jamal Albee', 'Md. Jamal Uddin', 'Businessman', 'Bibi Rohema Akther', 'Housewife', 'মোঃ মুছা জামাল আলবি', 'মোঃ জামাল উদ্দিন', 'বিবি রহিমা আক্তার', 'Bibi Rohema Akther', '01785688567', '01785688567', 'b59@gmail.com', 'Char Kakra , Notun Bazar , Companigonj , Noakhali', 'Char Kakra , Notun Bazar , Companigonj , Noakhali', '2008-03-03', '20087512135060971', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'A+', 'NOAKHALI', '100.jpg', 0, 2016064900, '2016-06-26 11:40:25', '3', '2016-06-26 05:40:25', NULL),
(221, 2016066900, 'Abdullah Al Wazed', 'Mohammad Nayeemul Islam', 'Teaching', 'Kulsum Akter', 'Housewife', 'আবদুল্লাহ আল ওয়াজেদ', 'মোহাম্মদ নাইমুল ইসলাম', 'কুলসুম আক্তার', 'Kulsum Akter', '01817024091', '01818961986', 'nayeemul79@yahoo.com', 'Nor Shing Pur , Kabir Hat , Kabir Hat , Noakhali', 'Nor Shing Pur , Kabir Hat , Kabir Hat , Noakhali', '2009-09-07', '20097514727033926', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '6.jpg', 0, 2016065338, '2016-06-28 09:59:25', '3', '2016-06-28 03:59:25', NULL),
(222, 2016067552, 'Hasan Ibne Safin', 'Imran Hossain', 'Businessman', 'Sharmin Akter', 'Housewife', 'হাসান ইবনে সাফিন', 'ইমরান হোসাইন', 'সারমিন আক্তার', 'Rocky', '01813154990', '01857668984', 'b62@gmail.com', 'Char Parboti , Basurhat , Companigonj , Noakhali', 'Char Parboti , Basurhat , Companigonj , Noakhali', '2009-02-15', '20097521604031436', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '75.jpg', 0, 2016063249, '2016-06-28 10:03:52', '3', '2016-06-28 04:03:52', NULL),
(223, 2016067209, 'Jannatul Maowa Tanjill', 'Obaidul Haque', 'Service Holder', 'Hasina Akter', 'Housewife', 'জান্নাতুল মাওয়া তানজিল', 'ওবায়দুল হক', 'হাছিনা আক্তার', 'Hasina Akter', '01814253835', '01814253835', 'b63@gmail.com', 'Anwar Monjill, Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava, Ward No- 3 , Basurhat , Companigonj , Noakhali', '2010-05-02', '20107521603031439', 'Basurhat Pourasava, Ward No- 9, Companigonj', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '60.jpg', 0, 2016062375, '2016-06-28 10:07:36', '3', '2016-06-28 04:07:36', NULL),
(224, 2016063677, 'Masuma Hossen Mehjabin', 'Mosaraf Hossain', 'Abroad', 'Amena Khatun', 'Housewife', 'মাছুমা হোসেন', 'মোশারফ হোসেন', 'আমেনা খাতুন', 'Amena Khatun', '01836504476', '01836504476', 'b64@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2008-11-18', '12345', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '42.jpg', 0, 2016061377, '2016-06-28 10:10:48', '3', '2016-06-28 04:10:48', NULL),
(225, 2016064117, 'Sadiatul Jannat', 'Kamal Uddin', 'Abroad', 'Hasina Akter', 'Housewife', 'সাদিহাতুল জান্নাত', 'কামাল উদ্দিন', 'হাছিনা আক্তার', 'Hasina Akter', '01731603687', '01731603687', 'b65@gmail.com', 'Shuklamoddi , Patwarirhat , Companigonj , Noakhali', 'Char Kakra , Basurhat , Companigonj , Noakhali', '2009-05-03', '20097521609030824', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '105.jpg', 0, 2016065388, '2016-06-28 10:14:57', '3', '2016-06-28 04:14:57', NULL),
(226, 2016067170, 'Rusmila Jahan Rodela', 'Abdur Rohim', 'Abroad', 'Minu Ara Begum', 'Housewife', 'রুসমিলা জাহান রোদেলা', 'আব্দুর রহিম', 'মিনু আরা বেগম', 'Minu Ara Begum', '01876944262', '01876944262', 'b66@gmail.com', 'Char Kakra , Basurhat , Companigonj , Noakhali', 'Master Pada , Basurhat , Companigonj , Noakhali', '2011-01-17', '20117512135063776', 'Char Kakra', 'Peace School & College', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '66.jpg', 0, 2016065206, '2016-06-28 10:24:39', '3', '2016-06-28 04:24:39', NULL),
(227, 2016063879, 'Parvin Akter Elma', 'Md. Nur Hossin', 'Job', 'Rehana Akter', 'Housewife', 'পারভীন আক্তার', 'মোঃ নুর হোসেন', 'রেহানা আক্তার', 'Rehana Akter', '01879773569', '01879773569', 'b67@gmail.com', 'Ramsurpur , Shaprasi Hat , Companigonj , Noakhali', 'Basurhat Pourasava, Risa Tower , Basurhat , Companigonj , Noakhali', '2009-11-16', '20097512135063785', 'Ramsur Pur, Shaprasi hat, Companigonj', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '96.jpg', 0, 2016062771, '2016-06-28 10:28:34', '3', '2016-06-28 04:28:34', NULL),
(228, 2016068707, 'Abul Hasanath (Mahi)', 'Abul Basher', 'Private Service', 'Ferdaus Ara Begum', 'House hold affairs.', 'আবুল হাসানাত (মাহী)', 'আবুল বাসার', 'ফেরদাউস আরা বেগম', 'Hafizur Ranaman Chairman', '01817782505', '01712282373', 'b68@gmail.com', 'Karalia (Ramdi), Ward No- 02 , Basurhat , Companigonj , Noakhali', 'Karalia (Ramdi), Ward No- 02 , Basurhat , Companigonj , Noakhali', '2010-02-11', '2010752160203145', 'Basurhat Pourasava, Ward No- 02', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '93.jpg', 0, 2016062497, '2016-06-28 10:34:15', '3', '2016-06-28 04:34:15', NULL),
(229, 2016067037, 'Imam Hossain', 'Md. Abul Khair', 'Businessman', 'Roksana Akter', 'Housewife', 'ইমাম হোসাইন', 'মোঃ আবুল খায়ের', 'রোকসানা আক্তার', 'Md. Abul Khair', '01819197585', '01819197585', 'b69@gmail.com', 'Karalia , Basurhat , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2016-06-22', '20097522103023387', 'Basurhat Pourasava, Ward No- 03', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'AB+', 'NOAKHALI', '114.jpg', 0, 2016066394, '2016-06-28 10:41:49', '3', '2016-06-28 04:41:49', NULL),
(230, 2016065548, 'Md. Abdulla Al Noman', 'Md. Abdul Hai', 'Businessman', 'Miss. Sharmin Ara', 'Housewife', 'মোঃ আব্দুল্লাহ আল নোমান', 'মোঃ আব্দুল হাই', 'মোছাঃ শারমিন আরা', 'Md. Abdul Hai', '01714825333', '01819783661', 'b70@gmail.com', 'Assraf Ali Hazi Badi.  , Notun Bazar , Companigonj , Noakhali', 'Assraf Ali Hazi Badi.  , Notun Bazar , Companigonj , Noakhali', '2010-06-09', '059782', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '102.jpg', 0, 2016062054, '2016-06-28 10:59:09', '3', '2016-06-28 04:59:09', NULL),
(231, 2016064634, 'Tehrin Binte Karim', 'Md. Lutful Karim', 'Abroad', 'Rowsan Ara', 'Housewife', 'তেহেরীন বিনতে করিম', 'মোঃ লুৎফুল করিম', 'রৌশন আরা', 'Rowsan Ara', '0175095969', '0175095969', 'b71@gmail.com', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Birahimpur , Basurhat , Companigonj , Noakhali', '2011-01-20', '7514723115062', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '99.jpg', 0, 2016064247, '2016-06-28 11:02:29', '3', '2016-06-28 05:02:29', NULL),
(232, 2016064521, 'Imran Hossen', 'Anowar Hossen', 'Businessman', 'Amena Akter', 'Housewife', 'ইমরান হোসেন', 'আনোয়ার হোসেন', 'আমেনা আক্তার', 'Amena Akter', '01879067002', '01879067002', 'b72@gmail.com', 'Char Parboti , K. T. M. Hat , Companigonj , Noakhali', 'Char Parboti , K. T. M. Hat , Companigonj , Noakhali', '2009-08-09', '038220', 'Charparboti', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '72.jpg', 0, 2016065891, '2016-06-28 11:06:20', '3', '2016-06-28 05:06:20', NULL),
(233, 2016067752, 'Naimul Hoque Shanto', 'Mozammel Hoque', 'Job', 'Taskera Begum', 'Job', 'নাঈমুল হক (শান্ত)', 'মোজাম্মেল হক', 'তাছকেরা বেগম', 'Taskera Begum', '01866502840', '01866502840', 'b73@gmail.com', 'Kadirpur Ghatla, Ward No- 2 , Shaheber Hat , Begumgonj , Noakhali', 'Master Pada , Basurhat , Companigonj , Noakhali', '2009-10-12', '20097510763030593', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', 'O-', 'NOAKHALI', '12.jpg', 0, 2016065884, '2016-06-28 11:10:11', '3', '2016-06-28 05:10:11', NULL),
(234, 2016065884, 'Anika Tabassum', 'Harun-Or-Rashid', 'None', 'Khadija Akhter', 'Housewife', 'আনিকা তাবাসসুম', 'হারুন অর রশীদ', 'খাদিজা আক্তার', 'Khadija Akter', '01813378108', '01813378108', 'b74@gmail.com', 'Berahimpur , Basurhat , Companigonj , Noakhali', 'Birahimpur, Ward No- 4 , Basurhat , Companigonj , Noakhali', '2009-06-07', '20097512183039207', 'Birahimpur', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '9.jpg', 0, 2016068557, '2016-06-28 11:26:22', '3', '2016-06-28 05:40:40', '3'),
(235, 2016064578, 'Auritra Majumder', 'Kamal Kanti Majumder', 'Businessman', 'Mukta Das', 'Teacher', 'অরিত্র মজুমদার', 'কমল কান্তি মজুমদার', 'মুক্তা দাস', 'Kamal Kanti Majumder', '0171313719', '0171313719', 'b75@gmail.com', 'Basurhat Pourasava, Ward No- 5 , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava, Ward No- 5 , Basurhat , Companigonj , Noakhali', '2009-12-19', '025607', 'Companigonj, Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'HINDUISM', '', 'NOAKHALI', '21.jpg', 0, 2016065114, '2016-06-28 11:32:34', '3', '2016-06-28 05:32:34', NULL),
(236, 2016063449, 'Samia Jahan', 'Md. Shah Jahan', 'Service Holder', 'Layla Arjuman', 'Housewife', 'সামিয়া জাহান', 'শাহাজাহান', 'লাইলা আরজুমান', 'Kamrun Nahar', '01875299044', '01875299044', 'b76@gmail.com', 'Char Hazari , Abu Mazir Hat , Companigonj , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2009-03-04', '20093090422150793', 'Dhaka', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '57.jpg', 0, 2016063289, '2016-06-28 12:03:48', '3', '2016-06-28 06:03:48', NULL),
(237, 2016065426, 'Ifrat Zahan', 'Azizul Hoque', 'Businessman', 'Rozina Akter', 'Housewife', 'ইফরাত জাহান', 'আজিজুল হক', 'রোজিনা আক্তার', 'Rozina Akter', '01855446772', '01715146834', 'b77@gmail.com', 'Gopal Pur , Bijbag , Senbag , Noakhali', 'T & T Road, Karalia , Basurhat , Companigonj , Noakhali', '2010-12-28', '20107518085102256', 'Feni, Bangladesh', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '3.jpg', 0, 2016062108, '2016-06-28 12:07:43', '3', '2016-06-28 06:07:43', NULL),
(238, 2016062504, 'Tasrik  ahmed', 'Md. Abul Kaiser', 'Teacher', 'Rina S ultana', 'Teacher', 'তাসরিক আহমেদ', 'মোঃ আবু কায়সার', 'রীনা সুলতানা', 'Rina Sultana', '01855637757', '01855637757', 'b78@gmail.com', 'Char Hazari , Hazari Hat , Companigonj , Noakhali', 'Abu Naser, Bismilla Bhaban, Basurhat Pourasava, W: N: 5 , Basurhat , Companigonj , Noakhali', '2010-12-29', '035085', 'Char Hazari, Companigonj ', 'Al Hera Model Academy', 'Not Applicable', 'Male', 'ISLAM', 'B+', 'NOAKHALI', '126.jpg', 0, 2016065909, '2016-06-28 12:18:53', '3', '2016-06-28 06:18:53', NULL),
(239, 2016066413, 'Jannatul Naym', 'Abdul Motin', 'Teacher', 'Melaka Begum', 'Housewife', 'জান্নাতুল নাঈম', 'আব্দুল মতিন', 'মালেকা বেগম', 'Melaka Begum', '01821588455', '01821588455', 'b79@gmail.com', 'Char Parboti , Char Hazari , Companigonj , Noakhali', 'Char Parboti , Char Hazari , Companigonj , Noakhali', '2009-01-05', '040968', 'Charparboti', 'Not Applicable', 'Not Applicable', 'Female', 'ISLAM', 'O+', 'NOAKHALI', '63.jpg', 0, 2016063018, '2016-06-28 12:21:48', '3', '2016-06-28 06:21:48', NULL),
(240, 2016067504, 'Md. Abdulla Al Noman', 'Md. Abdul Hai', 'Businessman', 'Miss. Sharmin Ara', 'Housewife', 'মোঃ আব্দুল্লাহ আল নোমান', 'মোঃ আব্দুল হাই', 'মোছাঃ শারমিন আরা', 'Md. Abdul Hai', '01714825333', '01819783661', 'b70@gmail.com', 'Anwar Monjill, Basurhat Pourasava , Notun Bazar , Companigonj , Noakhali', 'Assraf Ali Hazi Badi.  , Notun Bazar , Companigonj , Noakhali', '2010-06-09', '059782', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '102.jpg', 0, 2016062054, '2016-06-28 12:31:58', '3', '2016-06-28 06:31:58', NULL),
(241, 2016062300, 'Imrose Hossain', 'Imam Hossain', 'Abroad', 'Roksana Akter', 'Housewife', 'ইমরোজ হোসেন', 'ইমাম হোসেন', 'রোকসানা আক্তার', 'Roksana Akter', '01851277407', '01851277407', 'b80@gmail.com', 'Gazir Bag , Forazi Bazar , Companigonj , Noakhali', 'Karalia , Basurhat , Companigonj , Noakhali', '2010-01-05', '20107514770100243', 'Noakhali', 'Basurhat Academy', 'Not Applicable', 'Male', 'ISLAM', '', 'NOAKHALI', '135.jpg', 0, 2016061904, '2016-06-28 12:38:53', '3', '2016-06-28 06:38:53', NULL),
(242, 2016062294, 'Sazidul Islam', 'Saiful Islam', 'Businessman', 'Sharmin Akter', 'Housewife', 'সাজিদুল ইসলাম', 'সাইফুল ইসলাম', 'শারমিন আক্তার', 'Hazi Abdul Mannan', '01852210710', '01710577889', 'sim.mamun@yahoo.com', 'Shiraj Pur , Shiraj Pur , Companigonj , Noakhali', 'Shiraj Pur , Shiraj Pur , Companigonj , Noakhali', '2009-03-22', '258389', 'Dhaka', 'Dhaka International School', 'Not Applicable', 'Male', 'ISLAM', 'A+', 'NOAKHALI', '129.jpg', 0, 2016068630, '2016-06-28 12:43:12', '3', '2016-06-28 06:43:12', NULL),
(243, 2016068537, 'Faima Jahan', 'Sharif Uddin', 'Teacher', 'Raihan Akther', 'Housewife', 'ফাইমা জাহান', 'শরীফ উদ্দিন', 'রাইহান আক্তার', 'Sharif Uddin', '01811529239', '01811529239', 'b81@gmail.com', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', 'Basurhat Pourasava , Basurhat , Companigonj , Noakhali', '2009-11-17', '200975121833039218', 'Basurhat', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '33.jpg', 0, 2016065903, '2016-06-28 12:52:52', '3', '2016-06-28 06:52:52', NULL),
(244, 2016064796, 'Sanjida Islam', 'Najrul Islam', 'Job in Abroad', 'Shakila Sultana', 'Housewife', 'সানজিদা ইসলাম', 'নজরুল ইসলাম', 'শাকিলা সুলতানা', 'Shakila Sultana', '01824969687', '01824969687', 'b82@gmail.com', 'Musapur , Musapur , Companigonj , Noakhali', 'Basurhat Pourasava, Ward No- 7 , Basurhat , Companigonj , Noakhali', '2009-04-19', '20097512159034497', 'Musapur', 'Basurhat Academy', 'Not Applicable', 'Female', 'ISLAM', '', 'NOAKHALI', '48.jpg', 0, 2016061871, '2016-06-28 01:04:25', '3', '2016-06-28 07:04:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `re_admission`
--

CREATE TABLE IF NOT EXISTS `re_admission` (
  `readid` int(11) NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `section` varchar(30) DEFAULT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `roll_no` int(11) NOT NULL,
  `syear` year(4) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `course_fee` decimal(10,2) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `re_admission`
--

INSERT INTO `re_admission` (`readid`, `stu_id`, `shiftid`, `classid`, `section`, `groupid`, `roll_no`, `syear`, `status`, `course_fee`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 2016067085, 1, 2, '3', 0, 1, 2016, 1, '0.00', '2016-06-03 10:11:58', '7', '2016-06-05 20:01:01', '3'),
(2, 2016065533, 1, 2, '4', 0, 2, 2016, 1, '0.00', '2016-06-03 10:41:37', '7', '2016-06-05 20:14:14', '3'),
(3, 2016062447, 1, 2, '44', 0, 3, 2016, 1, '0.00', '2016-06-03 11:03:16', '7', '2016-06-05 20:07:07', '3'),
(4, 2016067324, 1, 2, '3', 0, 4, 2016, 1, '0.00', '2016-06-04 11:16:52', '3', '2016-06-08 21:15:15', '7'),
(5, 2016064629, 1, 2, '4', 0, 5, 2016, 1, '0.00', '2016-06-04 11:24:22', '3', '2016-06-05 20:08:08', '3'),
(6, 2016066901, 1, 2, '44', 0, 6, 2016, 1, '0.00', '2016-06-04 11:31:10', '3', '2016-06-05 20:37:37', '3'),
(7, 2016066396, 1, 2, '44', 0, 9, 2016, 1, '0.00', '2016-06-04 11:39:22', '3', '2016-06-05 20:01:01', '3'),
(8, 2016062496, 1, 2, '4', 0, 14, 2016, 1, '0.00', '2016-06-04 11:44:10', '3', '2016-06-05 20:34:34', '3'),
(9, 2016065841, 1, 2, '44', 0, 15, 2016, 1, '0.00', '2016-06-04 11:53:48', '3', '2016-06-05 21:00:00', '3'),
(10, 2016066013, 1, 2, '3', 0, 16, 2016, 1, '0.00', '2016-06-04 01:30:55', '3', '2016-06-05 21:40:40', '3'),
(11, 2016065455, 1, 2, '3', 0, 19, 2016, 1, '0.00', '2016-06-04 01:38:43', '3', '2016-06-05 21:15:15', '3'),
(12, 2016061311, 1, 2, '3', 0, 22, 2016, 1, '0.00', '2016-06-04 01:45:37', '3', '2016-06-05 21:00:00', '3'),
(13, 2016064931, 1, 2, '3', 0, 25, 2016, 1, '0.00', '2016-06-04 01:51:17', '3', '2016-06-09 05:03:03', '3'),
(14, 2016067455, 1, 2, '44', 0, 27, 2016, 1, '0.00', '2016-06-04 01:57:04', '3', '2016-06-04 07:57:04', NULL),
(15, 2016068143, 1, 2, '3', 0, 28, 2016, 1, '0.00', '2016-06-04 02:01:26', '3', '2016-06-11 04:41:41', '7'),
(16, 2016068015, 1, 2, '4', 0, 32, 2016, 1, '0.00', '2016-06-05 09:54:12', '3', '2016-06-05 03:54:12', NULL),
(17, 2016063174, 1, 2, '44', 0, 33, 2016, 1, '0.00', '2016-06-05 10:00:07', '3', '2016-06-05 04:00:07', NULL),
(18, 2016067207, 1, 2, '4', 0, 35, 2016, 1, '0.00', '2016-06-05 10:20:36', '3', '2016-06-05 04:20:36', NULL),
(19, 2016062914, 1, 2, '44', 0, 36, 2016, 1, '0.00', '2016-06-05 10:25:16', '3', '2016-06-05 04:25:16', NULL),
(20, 2016061717, 1, 2, '3', 0, 37, 2016, 1, '0.00', '2016-06-05 10:31:14', '3', '2016-06-11 04:35:35', '7'),
(21, 2016067492, 1, 2, '44', 0, 39, 2016, 1, '0.00', '2016-06-05 10:34:58', '3', '2016-06-05 04:34:58', NULL),
(22, 2016064628, 1, 2, '4', 0, 80, 2016, 1, '0.00', '2016-06-05 10:43:13', '3', '2016-06-05 05:07:07', '3'),
(23, 2016061205, 1, 2, '3', 0, 40, 2016, 1, '0.00', '2016-06-05 11:00:38', '3', '2016-06-11 04:43:43', '7'),
(24, 2016068607, 1, 2, '3', 0, 31, 2016, 1, '0.00', '2016-06-05 11:05:55', '3', '2016-06-11 04:33:33', '7'),
(25, 2016067403, 1, 2, '4', 0, 41, 2016, 1, '0.00', '2016-06-05 11:10:38', '3', '2016-06-05 05:10:38', NULL),
(26, 2016061210, 1, 2, '3', 0, 43, 2016, 1, '0.00', '2016-06-05 11:15:51', '3', '2016-06-11 05:34:34', '7'),
(27, 2016062834, 1, 2, '4', 0, 44, 2016, 1, '0.00', '2016-06-05 11:20:05', '3', '2016-06-05 05:20:05', NULL),
(28, 2016063233, 1, 2, '44', 0, 45, 2016, 1, '0.00', '2016-06-05 11:24:03', '3', '2016-06-05 05:24:03', NULL),
(29, 2016065276, 1, 2, '3', 0, 46, 2016, 1, '0.00', '2016-06-05 11:47:37', '3', '2016-06-11 05:14:14', '7'),
(30, 2016064009, 1, 2, '3', 0, 49, 2016, 1, '0.00', '2016-06-05 11:51:40', '3', '2016-06-11 05:34:34', '7'),
(31, 2016068446, 1, 2, '3', 0, 52, 2016, 1, '0.00', '2016-06-05 11:55:55', '3', '2016-06-11 05:40:40', '7'),
(32, 2016062296, 1, 2, '44', 0, 54, 2016, 1, '0.00', '2016-06-05 11:59:32', '3', '2016-06-05 05:59:32', NULL),
(33, 2016064777, 1, 2, '44', 0, 57, 2016, 1, '0.00', '2016-06-05 12:03:34', '3', '2016-06-05 06:03:34', NULL),
(34, 2016062573, 1, 2, '44', 0, 60, 2016, 1, '0.00', '2016-06-05 12:09:00', '3', '2016-06-05 06:09:00', NULL),
(35, 2016061482, 1, 2, '3', 0, 61, 2016, 1, '0.00', '2016-06-05 12:13:07', '3', '2016-06-11 05:47:47', '7'),
(36, 2016064853, 1, 2, '4', 0, 62, 2016, 1, '0.00', '2016-06-05 12:18:39', '3', '2016-07-05 01:55:55', '3'),
(37, 2016068696, 1, 2, '44', 0, 66, 2016, 1, '0.00', '2016-06-05 12:22:16', '3', '2016-06-05 06:22:16', NULL),
(38, 2016064026, 1, 2, '44', 0, 123, 2016, 1, '0.00', '2016-06-05 01:43:02', '3', '2016-06-05 07:43:02', NULL),
(39, 2016068735, 1, 2, '3', 0, 121, 2016, 1, '0.00', '2016-06-05 01:48:08', '3', '2016-06-05 07:48:08', NULL),
(40, 2016068175, 1, 2, '44', 0, 120, 2016, 1, '0.00', '2016-06-05 01:52:23', '3', '2016-06-05 07:52:23', NULL),
(41, 2016061924, 1, 2, '4', 0, 119, 2016, 1, '0.00', '2016-06-05 01:59:18', '3', '2016-06-05 07:59:18', NULL),
(42, 2016062099, 1, 2, '3', 0, 118, 2016, 1, '0.00', '2016-06-05 02:03:09', '3', '2016-06-05 08:03:09', NULL),
(43, 2016063787, 1, 2, '3', 0, 112, 2016, 1, '0.00', '2016-06-05 02:06:36', '3', '2016-06-11 05:58:58', '7'),
(44, 2016061369, 1, 2, '44', 0, 111, 2016, 1, '0.00', '2016-06-05 02:09:46', '3', '2016-06-05 08:09:46', NULL),
(45, 2016066125, 1, 2, '4', 0, 110, 2016, 1, '0.00', '2016-06-05 02:13:05', '3', '2016-06-05 08:13:05', NULL),
(46, 2016066791, 1, 2, '3', 0, 109, 2016, 1, '0.00', '2016-06-05 02:17:23', '3', '2016-06-11 05:32:32', '7'),
(47, 2016067036, 1, 2, '3', 0, 106, 2016, 1, '0.00', '2016-06-05 02:27:11', '3', '2016-06-11 05:22:22', '7'),
(48, 2016068338, 1, 2, '3', 0, 103, 2016, 1, '0.00', '2016-06-05 02:32:14', '3', '2016-06-11 05:38:38', '7'),
(49, 2016068531, 1, 2, '44', 0, 102, 2016, 1, '0.00', '2016-06-05 02:35:37', '3', '2016-06-05 08:35:37', NULL),
(50, 2016064821, 1, 2, '4', 0, 101, 2016, 1, '0.00', '2016-06-05 02:39:44', '3', '2016-06-05 08:39:44', NULL),
(51, 2016067228, 1, 2, '44', 0, 99, 2016, 1, '0.00', '2016-06-05 02:43:49', '3', '2016-06-05 08:43:49', NULL),
(52, 2016065684, 1, 2, '4', 0, 98, 2016, 1, '0.00', '2016-06-05 02:47:57', '3', '2016-06-05 08:47:57', NULL),
(53, 2016066685, 1, 2, '3', 0, 97, 2016, 1, '0.00', '2016-06-06 10:46:22', '3', '2016-06-11 05:35:35', '7'),
(54, 2016068768, 1, 2, '4', 0, 95, 2016, 1, '0.00', '2016-06-06 10:50:37', '3', '2016-06-06 04:50:37', NULL),
(55, 2016061013, 1, 2, '3', 0, 94, 2016, 1, '0.00', '2016-06-06 10:54:23', '3', '2016-06-06 04:54:23', NULL),
(56, 2016064441, 1, 2, '3', 0, 91, 2016, 1, '0.00', '2016-06-06 11:01:52', '3', '2016-06-06 05:01:52', NULL),
(57, 2016064615, 1, 2, '4', 0, 89, 2016, 1, '0.00', '2016-06-06 11:05:51', '3', '2016-06-06 05:05:51', NULL),
(58, 2016061946, 1, 2, '4', 0, 86, 2016, 1, '0.00', '2016-06-06 11:10:34', '3', '2016-06-06 05:10:34', NULL),
(59, 2016065847, 1, 2, '3', 0, 76, 2016, 1, '0.00', '2016-06-06 11:15:19', '3', '2016-06-06 05:15:19', NULL),
(60, 2016068046, 1, 2, '44', 0, 81, 2016, 1, '0.00', '2016-06-06 11:19:44', '3', '2016-06-06 05:19:44', NULL),
(61, 2016061964, 1, 2, '44', 0, 75, 2016, 1, '0.00', '2016-06-06 11:24:14', '3', '2016-06-06 05:24:14', NULL),
(62, 2016066675, 1, 2, '3', 0, 70, 2016, 1, '0.00', '2016-06-06 11:28:06', '3', '2016-06-06 05:28:06', NULL),
(63, 2016064270, 1, 2, '3', 0, 67, 2016, 1, '0.00', '2016-06-06 11:35:55', '3', '2016-06-06 05:35:55', NULL),
(64, 2016067195, 1, 2, '4', 0, 68, 2016, 1, '0.00', '2016-06-06 11:47:30', '3', '2016-06-06 05:47:30', NULL),
(65, 2016062166, 1, 2, '4', 0, 53, 2016, 1, '0.00', '2016-06-06 12:32:09', '3', '2016-06-06 06:32:09', NULL),
(66, 2016068906, 1, 2, '4', 0, 26, 2016, 1, '0.00', '2016-06-06 12:36:45', '3', '2016-06-06 06:36:45', NULL),
(67, 2016067690, 1, 2, '4', 0, 29, 2016, 1, '0.00', '2016-06-06 12:47:40', '3', '2016-06-06 06:47:40', NULL),
(68, 2016067659, 1, 2, '4', 0, 23, 2016, 1, '0.00', '2016-06-06 12:53:34', '3', '2016-06-06 06:53:34', NULL),
(69, 2016066636, 1, 2, '4', 0, 56, 2016, 1, '0.00', '2016-06-06 12:57:25', '3', '2016-06-06 06:57:25', NULL),
(70, 2016063735, 1, 2, '3', 0, 116, 2016, 1, '0.00', '2016-06-06 01:02:27', '3', '2016-06-06 07:02:27', NULL),
(71, 2016064272, 1, 2, '4', 0, 50, 2016, 1, '0.00', '2016-06-06 01:18:48', '3', '2016-06-06 07:18:48', NULL),
(72, 2016065014, 1, 2, '4', 0, 92, 2016, 1, '0.00', '2016-06-06 01:22:17', '3', '2016-06-06 07:22:17', NULL),
(73, 2016064673, 1, 2, '44', 0, 69, 2016, 1, '0.00', '2016-06-06 01:31:26', '3', '2016-06-06 07:31:26', NULL),
(74, 2016067106, 1, 2, '44', 0, 42, 2016, 1, '0.00', '2016-06-06 01:41:52', '3', '2016-06-06 07:41:52', NULL),
(75, 2016067693, 1, 2, '44', 0, 93, 2016, 1, '0.00', '2016-06-06 01:48:18', '3', '2016-06-06 07:48:18', NULL),
(76, 2016063424, 1, 2, '44', 0, 96, 2016, 1, '0.00', '2016-06-06 01:54:40', '3', '2016-06-06 07:54:40', NULL),
(77, 2016065028, 1, 2, '44', 0, 18, 2016, 1, '0.00', '2016-06-06 01:58:30', '3', '2016-06-06 07:58:30', NULL),
(78, 2016062763, 1, 2, '44', 0, 30, 2016, 1, '0.00', '2016-06-06 02:02:39', '3', '2016-06-06 08:02:39', NULL),
(79, 2016065504, 1, 2, '44', 0, 117, 2016, 1, '0.00', '2016-06-06 02:06:50', '3', '2016-06-06 08:06:50', NULL),
(80, 2016062172, 1, 2, '44', 0, 78, 2016, 1, '0.00', '2016-06-06 02:10:42', '3', '2016-06-06 08:10:42', NULL),
(81, 2016064561, 1, 2, '3', 0, 82, 2016, 1, '0.00', '2016-06-06 02:21:22', '3', '2016-06-06 08:21:22', NULL),
(82, 2016066012, 1, 2, '3', 0, 79, 2016, 1, '0.00', '2016-06-06 02:29:59', '3', '2016-06-06 08:29:59', NULL),
(83, 2016068080, 1, 2, '3', 0, 64, 2016, 1, '0.00', '2016-06-06 02:35:22', '3', '2016-06-06 08:35:22', NULL),
(84, 2016067765, 1, 2, '3', 0, 85, 2016, 1, '0.00', '2016-06-06 02:39:09', '3', '2016-06-06 08:39:09', NULL),
(85, 2016065816, 1, 2, '3', 0, 10, 2016, 1, '0.00', '2016-06-06 02:43:57', '3', '2016-06-06 08:43:57', NULL),
(86, 2016061742, 1, 2, '3', 0, 34, 2016, 1, '0.00', '2016-06-06 02:46:40', '3', '2016-06-06 08:46:40', NULL),
(87, 2016063680, 1, 2, '3', 0, 100, 2016, 1, '0.00', '2016-06-06 02:50:21', '3', '2016-06-06 08:50:21', NULL),
(88, 2016065173, 1, 1, '1', 0, 16, 2016, 1, '0.00', '2016-06-09 11:14:38', '3', '2016-06-09 05:14:38', NULL),
(89, 2016066121, 1, 1, '43', 0, 15, 2016, 1, '0.00', '2016-06-09 11:17:47', '3', '2016-06-09 05:17:47', NULL),
(90, 2016066887, 1, 1, '43', 0, 9, 2016, 1, '0.00', '2016-06-09 11:21:33', '3', '2016-06-09 05:21:33', NULL),
(91, 2016064012, 1, 1, '2', 0, 1, 2016, 1, '0.00', '2016-06-09 11:25:23', '3', '2016-06-11 03:36:36', '3'),
(92, 2016063102, 1, 1, '2', 0, 107, 2016, 1, '0.00', '2016-06-09 11:29:23', '3', '2016-06-09 05:29:23', NULL),
(93, 2016061539, 1, 1, '2', 0, 98, 2016, 1, '0.00', '2016-06-09 11:33:22', '3', '2016-06-09 05:33:22', NULL),
(94, 2016068785, 1, 1, '2', 0, 92, 2016, 1, '0.00', '2016-06-09 12:02:19', '7', '2016-06-11 05:30:30', '3'),
(95, 2016066233, 1, 1, '2', 0, 8, 2016, 1, '0.00', '2016-06-09 12:07:13', '7', '2016-06-09 06:07:13', NULL),
(96, 2016061173, 1, 1, '2', 0, 86, 2016, 1, '0.00', '2016-06-09 12:18:11', '7', '2016-06-09 06:18:11', NULL),
(97, 2016064479, 1, 1, '2', 0, 71, 2016, 1, '0.00', '2016-06-09 12:28:16', '7', '2016-06-09 06:28:16', NULL),
(98, 2016061011, 1, 1, '2', 0, 68, 2016, 1, '0.00', '2016-06-09 12:39:38', '7', '2016-06-09 06:39:38', NULL),
(99, 2016061722, 1, 1, '2', 0, 59, 2016, 1, '0.00', '2016-06-11 09:33:26', '3', '2016-06-11 03:33:26', NULL),
(100, 2016066019, 1, 1, '2', 0, 35, 2016, 1, '0.00', '2016-06-11 09:38:08', '3', '2016-06-11 03:38:08', NULL),
(101, 2016068113, 1, 1, '2', 0, 26, 2016, 1, '0.00', '2016-06-11 09:42:34', '3', '2016-06-11 03:42:34', NULL),
(102, 2016068260, 1, 1, '1', 0, 94, 2016, 1, '0.00', '2016-06-11 09:48:07', '3', '2016-06-11 03:48:07', NULL),
(103, 2016061965, 1, 1, '1', 0, 34, 2016, 1, '0.00', '2016-06-11 09:52:48', '3', '2016-06-11 03:52:48', NULL),
(104, 2016068364, 1, 1, '1', 0, 70, 2016, 1, '0.00', '2016-06-11 09:57:33', '3', '2016-06-11 05:00:00', '3'),
(105, 2016063122, 1, 1, '1', 0, 31, 2016, 1, '0.00', '2016-06-11 10:01:19', '3', '2016-06-11 04:18:18', '3'),
(106, 2016064505, 1, 1, '1', 0, 79, 2016, 1, '0.00', '2016-06-11 10:04:35', '3', '2016-06-11 04:04:35', NULL),
(107, 2016066456, 1, 1, '1', 0, 58, 2016, 1, '0.00', '2016-06-11 10:08:30', '3', '2016-06-11 04:08:31', NULL),
(108, 2016067899, 1, 1, '1', 0, 73, 2016, 1, '0.00', '2016-06-11 10:12:47', '3', '2016-06-11 04:12:47', NULL),
(109, 2016062717, 1, 1, '43', 0, 54, 2016, 1, '0.00', '2016-06-11 10:17:33', '3', '2016-06-11 05:57:57', '3'),
(110, 2016062963, 1, 1, '43', 0, 108, 2016, 1, '0.00', '2016-06-11 10:22:33', '3', '2016-06-11 04:22:33', NULL),
(111, 2016068664, 1, 1, '43', 0, 111, 2016, 1, '0.00', '2016-06-11 10:26:22', '3', '2016-06-11 04:26:22', NULL),
(112, 2016068706, 1, 1, '43', 0, 69, 2016, 1, '0.00', '2016-06-11 10:30:47', '3', '2016-06-11 04:30:47', NULL),
(113, 2016066497, 1, 1, '43', 0, 12, 2016, 1, '0.00', '2016-06-11 10:35:06', '3', '2016-06-11 04:35:06', NULL),
(114, 2016061055, 1, 1, '43', 0, 96, 2016, 1, '0.00', '2016-06-11 10:42:17', '3', '2016-06-11 05:58:58', '3'),
(115, 2016063625, 1, 1, '2', 0, 77, 2016, 1, '0.00', '2016-06-11 10:48:11', '3', '2016-06-11 04:48:11', NULL),
(116, 2016063932, 1, 1, '2', 0, 23, 2016, 1, '0.00', '2016-06-11 10:52:35', '3', '2016-06-11 05:50:50', '3'),
(117, 2016061735, 1, 1, '2', 0, 119, 2016, 1, '0.00', '2016-06-11 11:09:09', '3', '2016-06-11 05:09:09', NULL),
(118, 2016067939, 1, 1, '1', 0, 72, 2016, 1, '0.00', '2016-06-11 11:13:03', '3', '2016-06-11 05:13:03', NULL),
(119, 2016068856, 1, 1, '43', 0, 93, 2016, 1, '0.00', '2016-06-11 11:16:52', '3', '2016-06-11 05:16:52', NULL),
(120, 2016065492, 1, 1, '2', 0, 50, 2016, 1, '0.00', '2016-06-11 11:34:11', '3', '2016-06-22 06:23:23', '3'),
(121, 2016062001, 1, 1, '43', 0, 21, 2016, 1, '0.00', '2016-06-12 11:16:05', '3', '2016-06-12 05:16:05', NULL),
(122, 2016065571, 1, 1, '1', 0, 22, 2016, 1, '0.00', '2016-06-12 11:19:06', '3', '2016-06-12 05:19:06', NULL),
(123, 2016063509, 1, 1, '43', 0, 24, 2016, 1, '0.00', '2016-06-12 11:22:25', '3', '2016-06-12 05:22:25', NULL),
(124, 2016067894, 1, 1, '1', 0, 25, 2016, 1, '0.00', '2016-06-12 11:25:55', '3', '2016-06-12 05:25:55', NULL),
(125, 2016066484, 1, 1, '43', 0, 30, 2016, 1, '0.00', '2016-06-12 11:29:16', '3', '2016-06-12 05:29:16', NULL),
(126, 2016064583, 1, 1, '43', 0, 36, 2016, 1, '0.00', '2016-06-12 11:32:48', '3', '2016-06-12 05:32:48', NULL),
(127, 2016064310, 1, 1, '43', 0, 39, 2016, 1, '0.00', '2016-06-12 11:37:07', '3', '2016-06-12 05:37:07', NULL),
(128, 2016061425, 1, 1, '1', 0, 49, 2016, 1, '0.00', '2016-06-12 11:43:06', '3', '2016-06-12 05:43:06', NULL),
(129, 2016061634, 1, 1, '43', 0, 51, 2016, 1, '0.00', '2016-06-12 11:47:29', '3', '2016-06-12 05:47:29', NULL),
(130, 2016065120, 1, 1, '1', 0, 55, 2016, 1, '0.00', '2016-06-12 11:51:11', '3', '2016-06-12 05:51:11', NULL),
(131, 2016065957, 1, 1, '43', 0, 57, 2016, 1, '0.00', '2016-06-12 11:55:04', '3', '2016-06-12 05:55:04', NULL),
(132, 2016065479, 1, 1, '43', 0, 60, 2016, 1, '0.00', '2016-06-12 11:58:58', '3', '2016-06-12 05:58:58', NULL),
(133, 2016067319, 1, 1, '43', 0, 63, 2016, 1, '0.00', '2016-06-12 12:02:51', '3', '2016-06-12 06:02:51', NULL),
(134, 2016062653, 1, 1, '43', 0, 66, 2016, 1, '0.00', '2016-06-12 12:08:24', '3', '2016-06-12 06:08:24', NULL),
(135, 2016063228, 1, 1, '43', 0, 75, 2016, 1, '0.00', '2016-06-12 12:12:50', '3', '2016-06-12 06:12:50', NULL),
(136, 2016061086, 1, 1, '1', 0, 76, 2016, 1, '0.00', '2016-06-12 12:16:15', '3', '2016-06-12 06:16:15', NULL),
(137, 2016065202, 1, 1, '43', 0, 81, 2016, 1, '0.00', '2016-06-12 12:19:36', '3', '2016-06-12 06:19:36', NULL),
(138, 2016061980, 1, 1, '1', 0, 82, 2016, 1, '0.00', '2016-06-12 12:23:18', '3', '2016-06-12 06:23:18', NULL),
(139, 2016066904, 1, 1, '43', 0, 84, 2016, 1, '0.00', '2016-06-12 12:26:42', '3', '2016-06-12 06:26:42', NULL),
(140, 2016063086, 1, 1, '43', 0, 87, 2016, 1, '0.00', '2016-06-12 12:29:50', '3', '2016-06-12 06:29:50', NULL),
(141, 2016066573, 1, 1, '43', 0, 90, 2016, 1, '0.00', '2016-06-12 12:36:15', '3', '2016-06-12 06:36:15', NULL),
(142, 2016061374, 1, 1, '1', 0, 91, 2016, 1, '0.00', '2016-06-12 12:40:41', '3', '2016-06-12 06:40:41', NULL),
(143, 2016068891, 1, 1, '2', 0, 74, 2016, 1, '0.00', '2016-06-12 12:44:09', '3', '2016-06-12 06:44:09', NULL),
(144, 2016064874, 1, 1, '2', 0, 29, 2016, 1, '0.00', '2016-06-12 12:54:02', '3', '2016-06-12 06:54:02', NULL),
(145, 2016065414, 1, 1, '1', 0, 19, 2016, 1, '0.00', '2016-06-12 12:57:45', '3', '2016-06-12 06:57:45', NULL),
(146, 2016067845, 1, 1, '1', 0, 85, 2016, 1, '0.00', '2016-06-12 01:03:27', '3', '2016-06-12 07:03:27', NULL),
(147, 2016068451, 1, 1, '43', 0, 33, 2016, 1, '0.00', '2016-06-12 01:18:11', '3', '2016-06-12 07:18:11', NULL),
(148, 2016065609, 1, 1, '43', 0, 114, 2016, 1, '0.00', '2016-06-13 09:23:56', '3', '2016-06-13 03:23:56', NULL),
(149, 2016068398, 1, 1, '43', 0, 45, 2016, 1, '0.00', '2016-06-13 09:27:47', '3', '2016-06-13 03:27:47', NULL),
(150, 2016064902, 1, 1, '1', 0, 4, 2016, 1, '0.00', '2016-06-13 09:34:17', '3', '2016-06-13 03:34:17', NULL),
(151, 2016064882, 1, 1, '43', 0, 6, 2016, 1, '0.00', '2016-06-13 09:37:25', '3', '2016-06-13 03:37:25', NULL),
(152, 2016065100, 1, 1, '43', 0, 18, 2016, 1, '0.00', '2016-06-13 09:40:32', '3', '2016-06-13 03:40:32', NULL),
(153, 2016061874, 1, 1, '43', 0, 42, 2016, 1, '0.00', '2016-06-13 09:44:29', '3', '2016-06-13 03:44:29', NULL),
(154, 2016064770, 1, 1, '2', 0, 32, 2016, 1, '0.00', '2016-06-13 09:48:11', '3', '2016-06-13 03:48:11', NULL),
(155, 2016063081, 1, 1, '43', 0, 105, 2016, 1, '0.00', '2016-06-13 09:54:17', '3', '2016-06-13 03:54:17', NULL),
(156, 2016065233, 1, 1, '1', 0, 115, 2016, 1, '0.00', '2016-06-13 09:58:15', '3', '2016-06-13 03:58:15', NULL),
(157, 2016062214, 1, 2, '3', 0, 73, 2016, 1, '0.00', '2016-06-13 10:57:34', '3', '2016-06-13 04:57:34', NULL),
(158, 2016062103, 1, 2, '3', 0, 115, 2016, 1, '0.00', '2016-06-13 11:02:14', '3', '2016-06-13 05:02:14', NULL),
(159, 2016068568, 1, 2, '44', 0, 12, 2016, 1, '0.00', '2016-06-13 11:07:50', '3', '2016-06-13 05:07:50', NULL),
(160, 2016061081, 1, 2, '44', 0, 72, 2016, 1, '0.00', '2016-06-13 11:11:45', '3', '2016-06-13 05:11:45', NULL),
(161, 2016061833, 1, 2, '3', 0, 7, 2016, 1, '0.00', '2016-06-13 11:14:54', '3', '2016-06-13 05:14:54', NULL),
(162, 2016064582, 1, 2, '3', 0, 88, 2016, 1, '0.00', '2016-06-13 11:18:16', '3', '2016-06-13 05:18:16', NULL),
(163, 2016067857, 1, 2, '44', 0, 114, 2016, 1, '0.00', '2016-06-13 11:21:15', '3', '2016-06-13 05:21:15', NULL),
(164, 2016067464, 1, 2, '4', 0, 20, 2016, 1, '0.00', '2016-06-13 11:23:53', '3', '2016-06-13 05:23:53', NULL),
(165, 2016067241, 1, 2, '4', 0, 11, 2016, 1, '0.00', '2016-06-13 11:27:28', '3', '2016-06-13 05:27:28', NULL),
(166, 2016064101, 1, 2, '4', 0, 24, 2016, 1, '0.00', '2016-06-13 11:31:02', '3', '2016-06-13 05:31:02', NULL),
(167, 2016068816, 1, 2, '4', 0, 77, 2016, 1, '0.00', '2016-06-13 11:33:35', '3', '2016-06-13 05:33:35', NULL),
(168, 2016061930, 1, 1, '1', 0, 97, 2016, 1, '0.00', '2016-06-13 11:39:18', '3', '2016-06-13 05:41:41', '3'),
(169, 2016063281, 1, 1, '2', 0, 83, 2016, 1, '0.00', '2016-06-13 11:43:47', '3', '2016-06-13 05:43:47', NULL),
(170, 2016064909, 1, 1, '2', 0, 65, 2016, 1, '0.00', '2016-06-19 11:58:21', '7', '2016-06-22 05:07:07', '3'),
(171, 2016064268, 1, 1, '1', 0, 40, 2016, 1, '0.00', '2016-06-19 12:03:30', '7', '2016-06-22 05:01:01', '3'),
(172, 2016063839, 1, 1, '1', 0, 64, 2016, 1, '0.00', '2016-06-19 12:08:04', '7', '2016-06-22 05:43:43', '3'),
(173, 2016062515, 1, 1, '1', 0, 52, 2016, 1, '0.00', '2016-06-19 12:12:04', '7', '2016-06-22 05:35:35', '3'),
(174, 2016065531, 1, 1, '1', 0, 121, 2016, 1, '0.00', '2016-06-19 12:16:04', '7', '2016-06-22 05:55:55', '3'),
(175, 2016063804, 1, 1, '1', 0, 10, 2016, 1, '0.00', '2016-06-19 12:20:35', '7', '2016-06-22 05:29:29', '3'),
(176, 2016063369, 1, 1, '1', 0, 46, 2016, 1, '0.00', '2016-06-19 12:25:09', '7', '2016-06-22 05:54:54', '3'),
(177, 2016068471, 1, 1, '1', 0, 27, 2016, 1, '0.00', '2016-06-19 12:30:30', '7', '2016-06-22 05:10:10', '3'),
(178, 2016064966, 1, 1, '43', 0, 3, 2016, 1, '0.00', '2016-06-19 12:35:53', '7', '2016-06-22 05:55:55', '3'),
(179, 2016065545, 1, 2, '4', 0, 83, 2016, 1, '0.00', '2016-06-22 10:39:50', '3', '2016-06-22 04:39:50', NULL),
(180, 2016065336, 1, 2, '4', 0, 38, 2016, 1, '0.00', '2016-06-22 10:44:12', '3', '2016-06-22 04:44:12', NULL),
(181, 2016062387, 1, 2, '4', 0, 71, 2016, 1, '0.00', '2016-06-22 10:48:33', '3', '2016-06-22 04:48:33', NULL),
(182, 2016065778, 1, 2, '4', 0, 59, 2016, 1, '0.00', '2016-06-22 10:52:36', '3', '2016-06-22 04:52:36', NULL),
(183, 2016065180, 1, 1, '2', 0, 104, 2016, 1, '0.00', '2016-06-22 11:01:04', '3', '2016-06-22 05:01:04', NULL),
(184, 2016063757, 1, 1, '2', 0, 89, 2016, 1, '0.00', '2016-06-22 11:05:56', '3', '2016-06-22 05:05:56', NULL),
(185, 2016061629, 1, 1, '2', 0, 2, 2016, 1, '0.00', '2016-06-22 11:10:40', '3', '2016-06-22 05:10:40', NULL),
(186, 2016066652, 1, 1, '2', 0, 17, 2016, 1, '0.00', '2016-06-22 11:14:08', '3', '2016-06-22 05:14:08', NULL),
(187, 2016065472, 1, 2, '44', 0, 48, 2016, 1, '0.00', '2016-06-23 01:29:08', '3', '2016-06-23 07:29:08', NULL),
(188, 2016068609, 1, 2, '44', 0, 108, 2016, 1, '0.00', '2016-06-23 01:33:37', '3', '2016-06-23 07:33:37', NULL),
(189, 2016065539, 1, 2, '44', 0, 90, 2016, 1, '0.00', '2016-06-23 01:37:25', '3', '2016-06-23 07:37:25', NULL),
(190, 2016061156, 1, 2, '4', 0, 74, 2016, 1, '0.00', '2016-06-23 01:42:34', '3', '2016-06-23 07:42:34', NULL),
(191, 2016063184, 1, 1, '1', 0, 7, 2016, 1, '0.00', '2016-06-23 02:23:24', '3', '2016-06-23 08:23:24', NULL),
(192, 2016066688, 1, 1, '1', 0, 37, 2016, 1, '0.00', '2016-06-23 02:26:54', '3', '2016-06-23 08:26:54', NULL),
(193, 2016063057, 1, 1, '2', 0, 38, 2016, 1, '0.00', '2016-06-23 02:31:05', '3', '2016-06-23 08:31:05', NULL),
(194, 2016061856, 1, 1, '1', 0, 28, 2016, 1, '0.00', '2016-06-23 02:34:04', '3', '2016-06-23 08:34:04', NULL),
(195, 2016067191, 1, 1, '1', 0, 118, 2016, 1, '0.00', '2016-06-23 02:37:21', '3', '2016-06-23 08:37:21', NULL),
(196, 2016062220, 1, 1, '1', 0, 103, 2016, 1, '0.00', '2016-06-23 02:40:38', '3', '2016-06-23 08:40:38', NULL),
(197, 2016061798, 1, 1, '2', 0, 5, 2016, 1, '0.00', '2016-06-23 02:44:02', '3', '2016-06-23 08:44:02', NULL),
(198, 2016065974, 1, 1, '43', 0, 78, 2016, 1, '0.00', '2016-06-23 02:47:33', '3', '2016-06-23 08:47:33', NULL),
(199, 2016066464, 1, 1, '2', 0, 47, 2016, 1, '0.00', '2016-06-23 02:52:23', '3', '2016-06-23 08:52:23', NULL),
(200, 2016067891, 1, 1, '2', 0, 62, 2016, 1, '0.00', '2016-06-23 02:57:06', '3', '2016-06-23 08:57:06', NULL),
(201, 2016062406, 1, 1, '2', 0, 113, 2016, 1, '0.00', '2016-06-25 08:35:46', '3', '2016-06-25 02:35:46', NULL),
(202, 2016063748, 1, 1, '1', 0, 44, 2016, 1, '0.00', '2016-06-25 09:11:35', '3', '2016-06-25 03:11:35', NULL),
(203, 2016063019, 1, 2, '4', 0, 87, 2016, 1, '0.00', '2016-06-25 09:24:11', '3', '2016-06-25 03:45:45', '3'),
(204, 2016062331, 1, 1, '43', 0, 102, 2016, 1, '0.00', '2016-06-25 09:43:20', '3', '2016-06-25 03:43:20', NULL),
(205, 2016067461, 1, 1, '2', 0, 14, 2016, 1, '0.00', '2016-06-25 10:04:23', '3', '2016-06-25 04:47:47', '3'),
(206, 2016063343, 1, 1, '1', 0, 106, 2016, 1, '0.00', '2016-06-25 10:12:01', '3', '2016-06-25 04:20:20', '3'),
(207, 2016061632, 1, 2, '4', 0, 47, 2016, 1, '0.00', '2016-06-25 01:03:56', '3', '2016-06-25 07:03:56', NULL),
(208, 2016065852, 1, 2, '4', 0, 8, 2016, 1, '0.00', '2016-06-25 01:07:19', '3', '2016-06-25 07:07:19', NULL),
(209, 2016064716, 1, 3, '6', 0, 122, 2016, 1, '0.00', '2016-06-26 09:24:58', '3', '2016-06-26 03:24:58', NULL),
(210, 2016066266, 1, 3, '45', 0, 36, 2016, 1, '0.00', '2016-06-26 09:32:49', '3', '2016-06-26 03:32:49', NULL),
(211, 2016066544, 1, 3, '45', 0, 90, 2016, 1, '0.00', '2016-06-26 09:36:36', '3', '2016-06-26 03:36:36', NULL),
(212, 2016063320, 1, 3, '5', 0, 58, 2016, 1, '0.00', '2016-06-26 09:40:53', '3', '2016-06-26 03:40:53', NULL),
(213, 2016063561, 1, 4, '8', 0, 11, 2016, 1, '0.00', '2016-06-26 09:50:23', '3', '2016-06-26 03:50:23', NULL),
(214, 2016065512, 1, 4, '46', 0, 81, 2016, 1, '0.00', '2016-06-26 09:53:07', '3', '2016-06-26 03:53:07', NULL),
(215, 2016061356, 1, 4, '8', 0, 20, 2016, 1, '0.00', '2016-06-26 09:56:00', '3', '2016-06-26 03:56:00', NULL),
(216, 2016067335, 1, 4, '8', 0, 128, 2016, 1, '0.00', '2016-06-26 10:53:02', '3', '2016-06-26 04:53:02', NULL),
(217, 2016061727, 1, 3, '6', 0, 44, 2016, 1, '0.00', '2016-06-26 10:55:49', '3', '2016-06-26 04:55:49', NULL),
(218, 2016063053, 1, 1, '2', 0, 56, 2016, 1, '0.00', '2016-06-26 11:31:36', '3', '2016-06-26 05:31:36', NULL),
(219, 2016064198, 1, 4, '8', 0, 86, 2016, 1, '0.00', '2016-06-26 11:37:25', '3', '2016-06-26 05:37:25', NULL),
(220, 2016067302, 1, 4, '7', 0, 100, 2016, 1, '0.00', '2016-06-26 11:40:25', '3', '2016-06-26 05:40:25', NULL),
(221, 2016066900, 1, 3, '45', 0, 6, 2016, 1, '0.00', '2016-06-28 09:59:25', '3', '2016-06-28 03:59:25', NULL),
(222, 2016067552, 1, 3, '45', 0, 75, 2016, 1, '0.00', '2016-06-28 10:03:52', '3', '2016-06-28 04:03:52', NULL),
(223, 2016067209, 1, 3, '45', 0, 60, 2016, 1, '0.00', '2016-06-28 10:07:36', '3', '2016-06-28 04:07:36', NULL),
(224, 2016063677, 1, 3, '45', 0, 42, 2016, 1, '0.00', '2016-06-28 10:10:48', '3', '2016-06-28 04:10:48', NULL),
(225, 2016064117, 1, 3, '45', 0, 105, 2016, 1, '0.00', '2016-06-28 10:14:57', '3', '2016-06-28 04:14:57', NULL),
(226, 2016067170, 1, 3, '45', 0, 66, 2016, 1, '0.00', '2016-06-28 10:24:39', '3', '2016-06-28 04:24:39', NULL),
(227, 2016063879, 1, 3, '45', 0, 96, 2016, 1, '0.00', '2016-06-28 10:28:34', '3', '2016-06-28 04:28:34', NULL),
(228, 2016068707, 1, 3, '45', 0, 93, 2016, 1, '0.00', '2016-06-28 10:34:15', '3', '2016-06-28 04:34:15', NULL),
(229, 2016067037, 1, 3, '45', 0, 114, 2016, 1, '0.00', '2016-06-28 10:41:49', '3', '2016-06-28 04:41:49', NULL),
(230, 2016065548, 1, 4, '46', 0, 102, 2016, 1, '0.00', '2016-06-28 10:59:09', '3', '2016-06-28 04:59:09', NULL),
(231, 2016064634, 1, 3, '45', 0, 99, 2016, 1, '0.00', '2016-06-28 11:02:29', '3', '2016-06-28 05:02:29', NULL),
(232, 2016064521, 1, 3, '45', 0, 72, 2016, 1, '0.00', '2016-06-28 11:06:20', '3', '2016-06-28 05:06:20', NULL),
(233, 2016067752, 1, 3, '45', 0, 12, 2016, 1, '0.00', '2016-06-28 11:10:11', '3', '2016-06-28 05:10:11', NULL),
(234, 2016065884, 1, 3, '45', 0, 9, 2016, 1, '0.00', '2016-06-28 11:26:22', '3', '2016-06-28 05:40:40', '3'),
(235, 2016064578, 1, 3, '45', 0, 21, 2016, 1, '0.00', '2016-06-28 11:32:34', '3', '2016-06-28 05:32:34', NULL),
(236, 2016063449, 1, 3, '45', 0, 57, 2016, 1, '0.00', '2016-06-28 12:03:48', '3', '2016-06-28 06:03:48', NULL),
(237, 2016065426, 1, 3, '45', 0, 3, 2016, 1, '0.00', '2016-06-28 12:07:43', '3', '2016-06-28 06:07:43', NULL),
(238, 2016062504, 1, 3, '45', 0, 126, 2016, 1, '0.00', '2016-06-28 12:18:53', '3', '2016-06-28 06:18:53', NULL),
(239, 2016066413, 1, 3, '45', 0, 63, 2016, 1, '0.00', '2016-06-28 12:21:48', '3', '2016-06-28 06:21:48', NULL),
(240, 2016067504, 1, 3, '45', 0, 102, 2016, 1, '0.00', '2016-06-28 12:31:58', '3', '2016-06-28 06:31:58', NULL),
(241, 2016062300, 1, 3, '45', 0, 135, 2016, 1, '0.00', '2016-06-28 12:38:53', '3', '2016-06-28 06:38:53', NULL),
(242, 2016062294, 1, 3, '45', 0, 129, 2016, 1, '0.00', '2016-06-28 12:43:12', '3', '2016-06-28 06:43:12', NULL),
(243, 2016068537, 1, 3, '45', 0, 33, 2016, 1, '0.00', '2016-06-28 12:52:52', '3', '2016-06-28 06:52:52', NULL),
(244, 2016064796, 1, 3, '45', 0, 48, 2016, 1, '0.00', '2016-06-28 01:04:25', '3', '2016-06-28 07:04:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room_settup`
--

CREATE TABLE IF NOT EXISTS `room_settup` (
  `roomid` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `r_name` varchar(100) NOT NULL,
  `e_user` int(11) NOT NULL,
  `e_date` datetime NOT NULL,
  `up_user` int(11) NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_settup`
--

INSERT INTO `room_settup` (`roomid`, `room_number`, `r_name`, `e_user`, `e_date`, `up_user`, `up_date`) VALUES
(1, 503, 'Class Nine', 3, '2016-04-01 19:49:34', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE IF NOT EXISTS `routine` (
  `routineid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `section` varchar(20) NOT NULL,
  `groupid` varchar(35) NOT NULL,
  `subjid` varchar(50) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `teacherid` varchar(50) NOT NULL,
  `day` varchar(20) NOT NULL,
  `shidule_id` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `routine_sett`
--

CREATE TABLE IF NOT EXISTS `routine_sett` (
  `id` int(11) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `stime` time NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `routine_shidule`
--

CREATE TABLE IF NOT EXISTS `routine_shidule` (
  `shidule_id` int(11) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `period_title` tinyint(4) NOT NULL COMMENT 'classperiod=1,break=0',
  `e_date` datetime DEFAULT NULL,
  `e_user` int(11) NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `up_user` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routine_shidule`
--

INSERT INTO `routine_shidule` (`shidule_id`, `shiftid`, `year`, `stime`, `etime`, `period_title`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, 2016, '08:00:00', '08:30:00', 1, NULL, 3, '2016-04-06 14:03:39', 3),
(2, 1, 2016, '08:31:00', '09:00:00', 1, NULL, 3, '2016-04-06 14:03:39', 3),
(3, 1, 2016, '09:31:00', '10:00:00', 1, NULL, 3, '2016-04-06 14:03:39', 3),
(4, 1, 2016, '10:01:00', '10:30:00', 1, NULL, 3, '2016-04-06 14:03:39', 3),
(5, 1, 2016, '10:31:00', '11:00:00', 0, NULL, 3, '2016-04-06 14:03:39', 3),
(6, 1, 2016, '11:01:00', '11:30:00', 1, NULL, 3, '2016-04-06 14:03:39', 3),
(7, 1, 2016, '11:31:00', '12:00:00', 1, NULL, 3, '2016-04-06 14:03:39', 3),
(8, 1, 2016, '12:01:00', '12:30:00', 1, NULL, 3, '2016-04-06 14:03:39', 3),
(9, 1, 2016, '12:31:00', '13:00:00', 1, NULL, 3, '2016-04-06 14:04:24', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
  `ruleid` int(11) NOT NULL,
  `ruleN` varchar(100) DEFAULT NULL,
  `page` text,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`ruleid`, `ruleN`, `page`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'Super Admin', NULL, NULL, NULL, '2016-04-01 18:36:35', NULL),
(2, 'Admin', NULL, NULL, NULL, '2016-04-01 18:36:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE IF NOT EXISTS `rules` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `details` varchar(1500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `title`, `details`) VALUES
(1, 'Rules and Regulation', '<p>The school rules have been established in partnership with the community over a long period of time. They reflect the school community&rsquo;s expectations in terms of acceptable standards of behaviour, dress and personal presentation in the widest sense. Students are expected to follow the school rules at all times when on the school grounds or when clearly associated with the school i.e. when wearing school uniform.</p>\n<h5>Students have the&nbsp;responsibility:</h5>\n<ul>\n<li>To attend school regularly</li>\n<li>To respect the right of others to learn</li>\n<li>To respect their peers and teachers regardless of ethnicity, religion or gender</li>\n<li>To respect the property and equipment of the school and others</li>\n<li>To carry out reason<strong>able instructions to the best of their ability</strong></li>\n<li><strong>To conduct themselves in a courteous and appropriate manner in school and in public</strong></li>\n<li><strong>To keep the school environment and the local community free from litter</strong></li>\n<li><strong>To observe the uniform code of the school</strong></li>\n<li><strong>To read all school notices and bring them to their parents&rsquo;/guardians&rsquo; att</strong>ention</li>\n<li>To attentive everyday.minimum 80% attendance make sure.</li>\n</ul>\n<div id="spoon-plugin-kncgbdglledmjmpnikebkagnchfdehbm-2" style="display: none;">&nbsp;</div>');

-- --------------------------------------------------------

--
-- Table structure for table `schship`
--

CREATE TABLE IF NOT EXISTS `schship` (
  `schid` int(11) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `section` varchar(30) NOT NULL,
  `roll` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `euser` int(11) NOT NULL,
  `up_date` datetime NOT NULL,
  `up_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `section_tbl`
--

CREATE TABLE IF NOT EXISTS `section_tbl` (
  `sectionid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `section_name` varchar(20) NOT NULL,
  `groupid` varchar(20) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` int(11) NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `up_user` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_tbl`
--

INSERT INTO `section_tbl` (`sectionid`, `classid`, `section_name`, `groupid`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, 'A', '', NULL, 11, '2016-03-31 07:26:26', 11),
(2, 1, 'B', '', NULL, 11, '2016-03-31 07:26:26', 11),
(3, 2, 'A', '', NULL, 11, '2016-03-31 07:26:54', 11),
(4, 2, 'B', '', NULL, 11, '2016-03-31 07:26:54', 11),
(5, 3, 'A', '', NULL, 2, '2016-03-31 07:33:09', 2),
(6, 3, 'B', '', NULL, 2, '2016-03-31 07:33:09', 2),
(7, 4, 'A', '', NULL, 2, '2016-03-31 07:33:28', 2),
(8, 4, 'B', '', NULL, 2, '2016-03-31 07:33:28', 2),
(9, 5, 'A', '', NULL, 2, '2016-03-31 07:33:44', 2),
(10, 5, 'B', '', NULL, 2, '2016-03-31 07:33:44', 2),
(16, 9, 'A', '1', NULL, 2, '2016-03-31 07:35:44', 2),
(17, 9, 'B', '1', NULL, 2, '2016-03-31 07:35:44', 2),
(18, 10, 'a', '', NULL, 2, '2016-03-31 07:36:37', 2),
(19, 10, 'b', '', NULL, 2, '2016-03-31 07:36:37', 2),
(20, 11, 'a', '', NULL, 2, '2016-03-31 07:36:55', 2),
(21, 11, 'b', '', NULL, 2, '2016-03-31 07:36:55', 2),
(22, 12, 'a', '', NULL, 2, '2016-03-31 07:37:11', 2),
(23, 12, 'b', '', NULL, 2, '2016-03-31 07:37:11', 2),
(24, 13, 'a', '', NULL, 2, '2016-03-31 07:37:28', 2),
(25, 13, 'b', '', NULL, 2, '2016-03-31 07:37:28', 2),
(26, 14, 'a', '', NULL, 2, '2016-03-31 07:37:56', 2),
(27, 14, 'b', '', NULL, 2, '2016-03-31 07:37:56', 2),
(28, 15, 'b', '', NULL, 2, '2016-03-31 07:38:10', 2),
(29, 16, 'a', '', NULL, 2, '2016-03-31 07:38:38', 2),
(30, 16, 'b', '', NULL, 2, '2016-03-31 07:38:38', 2),
(31, 17, 'a', '', NULL, 2, '2016-03-31 07:38:54', 2),
(32, 17, 'b', '', NULL, 2, '2016-03-31 07:38:54', 2),
(33, 18, 'a', '1', NULL, 2, '2016-03-31 07:39:17', 2),
(34, 18, 'b', '1,2', NULL, 2, '2016-03-31 07:39:17', 2),
(35, 19, 'A', '', NULL, 3, '2016-04-03 13:35:11', 3),
(36, 19, 'B', '', NULL, 3, '2016-04-03 13:35:11', 3),
(37, 19, 'C', '', NULL, 3, '2016-04-03 13:35:11', 3),
(38, 20, 'A', '', NULL, 3, '2016-04-04 05:02:27', 3),
(39, 21, 'A', '', NULL, 3, '2016-04-04 05:08:30', 3),
(40, 22, 'A', '', NULL, 3, '2016-04-04 05:21:46', 3),
(41, 23, 'A', '1,3', NULL, 3, '2016-04-04 05:30:30', 3),
(42, 24, 'A', '1,3', NULL, 3, '2016-04-04 05:32:10', 3),
(43, 1, 'C', '', '2016-04-04 00:00:00', 1, '2016-04-04 10:12:54', 0),
(44, 2, 'C', '', '2016-04-04 00:00:00', 1, '2016-04-04 10:12:54', 0),
(45, 3, 'C', '', '2016-04-04 00:00:00', 1, '2016-04-04 10:13:23', 0),
(46, 4, 'C', '', '2016-04-04 00:00:00', 1, '2016-04-04 10:13:23', 0),
(47, 5, 'C', '', '2016-04-04 00:00:00', 1, '2016-04-04 10:17:13', 0),
(48, 9, 'C', '', '2016-04-04 00:00:00', 1, '2016-04-04 10:17:13', 0),
(49, 20, 'B', '', '2016-04-04 00:00:00', 1, '2016-04-04 10:23:35', 0),
(51, 22, 'B', '', '2016-04-04 00:00:00', 1, '2016-04-04 10:23:55', 0),
(52, 25, 'A', '', NULL, 3, '2016-05-11 12:09:20', 3),
(53, 25, 'B', '', NULL, 3, '2016-05-11 12:09:20', 3);

-- --------------------------------------------------------

--
-- Table structure for table `shift_catg`
--

CREATE TABLE IF NOT EXISTS `shift_catg` (
  `shiftid` int(11) NOT NULL,
  `shift_N` varchar(50) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shift_catg`
--

INSERT INTO `shift_catg` (`shiftid`, `shift_N`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'Morning', NULL, '11', '2016-03-31 07:25:26', NULL),
(3, 'Day ', NULL, '3', '2016-04-04 04:05:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slide_setting`
--

CREATE TABLE IF NOT EXISTS `slide_setting` (
  `id` int(11) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide_setting`
--

INSERT INTO `slide_setting` (`id`, `image_name`, `title`, `description`, `sequence`) VALUES
(10, 'website-banner-digital-agency-london-uk.jpg', '', '', 0),
(11, 'banner1.png', '', '', 0),
(13, 'Genesis-Website-Banner6.jpg', '', '', 0),
(14, 'bannerk.jpg', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sprofile`
--

CREATE TABLE IF NOT EXISTS `sprofile` (
  `id` int(11) NOT NULL,
  `schoolN` varchar(200) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `logo` text,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sprofile`
--

INSERT INTO `sprofile` (`id`, `schoolN`, `address`, `phone`, `mobile`, `email`, `logo`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'Digital School Management System', 'Dhanmondi, Dhaka', '01766666671', '01766666671', 'gateway_school@gatewayit.net', 'logo.png', NULL, NULL, '2017-06-10 06:23:16', '3');

-- --------------------------------------------------------

--
-- Table structure for table `student_account`
--

CREATE TABLE IF NOT EXISTS `student_account` (
  `id` int(11) NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `balance` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_account`
--

INSERT INTO `student_account` (`id`, `stu_id`, `balance`, `last_update`) VALUES
(1, 2016067085, 0, '2016-06-05 14:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `stu_bill`
--

CREATE TABLE IF NOT EXISTS `stu_bill` (
  `id` int(11) NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `classid` int(11) NOT NULL,
  `invoice_no` varchar(15) NOT NULL,
  `fee_catg` varchar(150) NOT NULL,
  `vahicles` int(11) NOT NULL,
  `total_bill` int(11) NOT NULL,
  `from_month` int(11) NOT NULL,
  `to_month` int(11) NOT NULL,
  `years` year(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `e_date` datetime NOT NULL,
  `e_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stu_bill`
--

INSERT INTO `stu_bill` (`id`, `stu_id`, `classid`, `invoice_no`, `fee_catg`, `vahicles`, `total_bill`, `from_month`, `to_month`, `years`, `status`, `e_date`, `e_user`) VALUES
(1, 2016067085, 2, '93203988', '9', 0, 0, 2, 2, 2016, 1, '0000-00-00 00:00:00', '7');

-- --------------------------------------------------------

--
-- Table structure for table `stu_pay`
--

CREATE TABLE IF NOT EXISTS `stu_pay` (
  `id` int(11) NOT NULL,
  `stu_id` bigint(20) DEFAULT NULL,
  `classid` int(11) NOT NULL,
  `trans_id` bigint(20) NOT NULL,
  `invoice_no` varchar(30) DEFAULT NULL,
  `payment` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `e_date` datetime NOT NULL,
  `e_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stu_sship_amount`
--

CREATE TABLE IF NOT EXISTS `stu_sship_amount` (
  `sshipdisid` int(11) NOT NULL,
  `sshipid` int(11) NOT NULL,
  `stu_id` bigint(20) NOT NULL,
  `feectgid` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `calculates` tinyint(1) NOT NULL,
  `e_date` datetime NOT NULL,
  `e_user` varchar(80) NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subject_class`
--

CREATE TABLE IF NOT EXISTS `subject_class` (
  `subjid` int(11) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  `subsetid` int(11) NOT NULL,
  `exm_mark` int(6) NOT NULL,
  `stherory_mk` tinyint(4) NOT NULL,
  `sobj_mk` tinyint(4) NOT NULL,
  `sprack_mk` tinyint(4) NOT NULL,
  `sequence` tinyint(4) NOT NULL,
  `optional` tinyint(4) NOT NULL,
  `assosciate_with` int(11) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_class`
--

INSERT INTO `subject_class` (`subjid`, `shiftid`, `classid`, `groupid`, `subsetid`, `exm_mark`, `stherory_mk`, `sobj_mk`, `sprack_mk`, `sequence`, `optional`, `assosciate_with`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, 1, 0, 15, 100, 100, 0, 0, 2, 0, 0, NULL, NULL, '2016-04-21 06:55:18', NULL),
(2, 1, 1, 0, 8, 100, 100, 0, 0, 1, 0, 0, NULL, NULL, '2016-04-21 06:53:28', NULL),
(3, 1, 1, 0, 5, 100, 100, 0, 0, 3, 0, 0, NULL, NULL, '2016-03-31 08:01:58', NULL),
(4, 1, 1, 0, 2, 100, 100, 0, 0, 4, 0, 0, NULL, NULL, '2016-03-31 08:01:58', NULL),
(5, 1, 1, 0, 20, 100, 100, 0, 0, 6, 0, 0, NULL, NULL, '2016-03-31 08:03:10', NULL),
(6, 1, 2, 0, 20, 100, 100, 0, 0, 1, 0, 0, NULL, NULL, '2016-03-31 08:04:35', NULL),
(7, 1, 2, 0, 8, 100, 100, 0, 0, 2, 0, 0, NULL, NULL, '2016-03-31 08:04:35', NULL),
(8, 1, 2, 0, 5, 100, 100, 0, 0, 3, 0, 0, NULL, NULL, '2016-03-31 08:04:35', NULL),
(9, 1, 2, 0, 2, 100, 100, 0, 0, 4, 0, 0, NULL, NULL, '2016-03-31 08:04:35', NULL),
(10, 1, 3, 0, 19, 100, 100, 0, 0, 6, 0, 0, NULL, NULL, '2016-03-31 08:07:42', NULL),
(11, 1, 3, 0, 15, 100, 100, 0, 0, 1, 0, 0, NULL, NULL, '2016-03-31 08:07:42', NULL),
(12, 1, 3, 0, 14, 100, 100, 0, 0, 2, 0, 0, NULL, NULL, '2016-03-31 08:07:42', NULL),
(13, 1, 3, 0, 8, 100, 100, 0, 0, 3, 0, 0, NULL, NULL, '2016-03-31 08:07:42', NULL),
(14, 1, 3, 0, 5, 100, 100, 0, 0, 4, 0, 0, NULL, NULL, '2016-03-31 08:07:42', NULL),
(15, 1, 3, 0, 2, 100, 100, 0, 0, 5, 0, 0, NULL, NULL, '2016-03-31 08:07:42', NULL),
(16, 1, 4, 0, 20, 100, 100, 0, 0, 1, 0, 0, NULL, NULL, '2016-03-31 08:10:23', NULL),
(17, 1, 4, 0, 19, 100, 100, 0, 0, 2, 0, 0, NULL, NULL, '2016-03-31 08:10:23', NULL),
(18, 1, 4, 0, 18, 100, 100, 0, 0, 3, 0, 0, NULL, NULL, '2016-03-31 08:10:23', NULL),
(19, 1, 4, 0, 14, 100, 100, 0, 0, 4, 0, 0, NULL, NULL, '2016-03-31 08:10:23', NULL),
(20, 1, 4, 0, 8, 100, 100, 0, 0, 5, 0, 0, NULL, NULL, '2016-03-31 08:10:23', NULL),
(21, 1, 4, 0, 5, 100, 100, 0, 0, 6, 0, 0, NULL, NULL, '2016-03-31 08:10:23', NULL),
(22, 1, 4, 0, 2, 100, 100, 0, 0, 7, 0, 0, NULL, NULL, '2016-03-31 08:10:23', NULL),
(23, 1, 5, 0, 19, 100, 100, 0, 0, 1, 0, 0, NULL, NULL, '2016-03-31 08:13:25', NULL),
(24, 1, 5, 0, 18, 100, 100, 0, 0, 2, 0, 0, NULL, NULL, '2016-03-31 08:13:25', NULL),
(25, 1, 5, 0, 15, 100, 100, 0, 0, 3, 0, 0, NULL, NULL, '2016-03-31 08:13:25', NULL),
(26, 1, 5, 0, 14, 100, 100, 0, 0, 4, 0, 0, NULL, NULL, '2016-03-31 08:13:25', NULL),
(27, 1, 5, 0, 8, 100, 100, 0, 0, 5, 0, 0, NULL, NULL, '2016-03-31 08:13:25', NULL),
(28, 1, 5, 0, 5, 100, 100, 0, 0, 6, 0, 0, NULL, NULL, '2016-03-31 08:13:25', NULL),
(29, 1, 5, 0, 2, 100, 100, 0, 0, 7, 0, 0, NULL, NULL, '2016-03-31 08:13:25', NULL),
(30, 1, 5, 0, 9, 100, 100, 0, 0, 9, 0, 0, NULL, NULL, '2016-03-31 08:14:32', NULL),
(31, 2, 10, 0, 20, 100, 100, 0, 0, 1, 0, 0, NULL, NULL, '2016-03-31 08:17:03', NULL),
(32, 2, 10, 0, 8, 100, 100, 0, 0, 2, 0, 0, NULL, NULL, '2016-03-31 08:17:03', NULL),
(33, 2, 10, 0, 5, 100, 100, 0, 0, 3, 0, 0, NULL, NULL, '2016-03-31 08:17:03', NULL),
(34, 2, 10, 0, 2, 100, 100, 0, 0, 4, 0, 0, NULL, NULL, '2016-03-31 08:17:03', NULL),
(35, 1, 6, 0, 19, 100, 100, 0, 0, 1, 0, 0, NULL, NULL, '2016-03-31 08:24:54', NULL),
(36, 1, 6, 0, 18, 100, 100, 0, 0, 2, 0, 0, NULL, NULL, '2016-03-31 08:24:54', NULL),
(37, 1, 6, 0, 15, 100, 100, 0, 0, 3, 0, 0, NULL, NULL, '2016-03-31 08:24:54', NULL),
(38, 1, 6, 0, 14, 100, 100, 0, 0, 4, 0, 0, NULL, NULL, '2016-03-31 08:24:54', NULL),
(39, 1, 6, 0, 9, 100, 100, 0, 0, 5, 0, 0, NULL, NULL, '2016-03-31 08:24:54', NULL),
(40, 1, 6, 0, 8, 100, 100, 0, 0, 6, 0, 0, NULL, NULL, '2016-03-31 08:24:54', NULL),
(41, 1, 6, 0, 5, 100, 100, 0, 0, 7, 0, 0, NULL, NULL, '2016-03-31 08:24:54', NULL),
(42, 1, 6, 0, 2, 100, 100, 0, 0, 8, 0, 0, NULL, NULL, '2016-03-31 08:24:54', NULL),
(43, 1, 7, 0, 19, 100, 100, 0, 0, 1, 0, 0, NULL, NULL, '2016-03-31 08:29:15', NULL),
(44, 1, 7, 0, 18, 100, 100, 0, 0, 2, 0, 0, NULL, NULL, '2016-03-31 08:29:15', NULL),
(45, 1, 7, 0, 15, 100, 100, 0, 0, 3, 0, 0, NULL, NULL, '2016-03-31 08:29:15', NULL),
(46, 1, 7, 0, 14, 100, 100, 0, 0, 4, 0, 0, NULL, NULL, '2016-03-31 08:29:15', NULL),
(47, 1, 7, 0, 9, 100, 100, 0, 0, 5, 0, 0, NULL, NULL, '2016-03-31 08:29:15', NULL),
(48, 1, 7, 0, 8, 100, 100, 0, 0, 6, 0, 0, NULL, NULL, '2016-03-31 08:29:15', NULL),
(49, 1, 7, 0, 5, 100, 100, 0, 0, 7, 0, 0, NULL, NULL, '2016-03-31 08:29:15', NULL),
(50, 1, 7, 0, 2, 100, 100, 0, 0, 8, 0, 0, NULL, NULL, '2016-03-31 08:29:15', NULL),
(51, 1, 9, 1, 18, 100, 75, 0, 25, 1, 1, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(52, 1, 9, 1, 17, 100, 75, 0, 25, 2, 1, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(53, 1, 9, 2, 16, 100, 100, 0, 0, 3, 0, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(54, 1, 9, 1, 13, 100, 75, 0, 25, 4, 0, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(55, 1, 9, 1, 12, 100, 75, 0, 25, 5, 0, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(56, 1, 9, 1, 11, 100, 75, 0, 25, 6, 1, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(57, 1, 9, 2, 9, 100, 100, 0, 0, 7, 0, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(58, 1, 9, 0, 7, 100, 100, 0, 0, 8, 0, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(59, 1, 9, 0, 6, 100, 100, 0, 0, 9, 0, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(60, 1, 9, 0, 4, 100, 100, 0, 0, 10, 0, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(61, 1, 9, 0, 3, 100, 100, 0, 0, 11, 0, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(62, 1, 9, 0, 2, 100, 100, 0, 0, 12, 0, 0, NULL, NULL, '2016-03-31 08:35:04', NULL),
(63, 1, 9, 1, 1, 100, 75, 0, 25, 13, 1, 0, NULL, NULL, '2016-03-31 08:35:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject_setup`
--

CREATE TABLE IF NOT EXISTS `subject_setup` (
  `subsetid` int(11) NOT NULL,
  `sub_name` varchar(30) NOT NULL,
  `short_name` varchar(20) NOT NULL,
  `assosciate_with` int(11) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` int(11) NOT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `up_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_setup`
--

INSERT INTO `subject_setup` (`subsetid`, `sub_name`, `short_name`, `assosciate_with`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 'Heigher Mathmetics', 'H-math', 0, NULL, 2, '2016-03-31 07:52:56', 0),
(2, 'Genaral Mathmetics', 'G-math', 0, NULL, 2, '2016-03-31 07:52:56', 0),
(3, 'English 2th Paper', 'Eng-2', 0, NULL, 2, '2016-03-31 07:52:56', 0),
(4, 'English 1th Paper', 'Eng-1', 0, NULL, 2, '2016-03-31 07:52:56', 0),
(5, 'English', 'Eng', 0, NULL, 2, '2016-03-31 07:52:56', 0),
(6, 'Bangla 2th Paper', 'Bang-2', 0, NULL, 2, '2016-03-31 07:52:56', 0),
(7, 'Bangla 1th Paper', 'Bang-1', 0, NULL, 2, '2016-03-31 07:52:56', 0),
(8, 'Bangla', 'Bang', 0, NULL, 2, '2016-03-31 07:52:56', 0),
(9, 'Social Science', 'S-science', 0, NULL, 2, '2016-03-31 07:55:36', 0),
(10, 'History', 'His', 0, NULL, 2, '2016-03-31 07:55:36', 0),
(11, 'Biology', 'Biology', 0, NULL, 2, '2016-03-31 07:55:36', 0),
(12, 'Chymistry', 'Chy', 0, NULL, 2, '2016-03-31 07:55:36', 2),
(13, 'Physics', 'Phy', 0, NULL, 2, '2016-03-31 07:55:36', 0),
(14, 'Genarel Science', 'G-science', 0, NULL, 2, '2016-03-31 07:55:36', 0),
(15, 'Genaral Knowladge', 'G-knowladge', 0, NULL, 2, '2016-03-31 07:55:36', 0),
(16, 'Accounting', 'Acco', 0, NULL, 2, '2016-03-31 07:56:56', 0),
(17, 'Agriculture', 'Agre', 0, NULL, 2, '2016-03-31 07:57:36', 0),
(18, 'Computer Studis', 'Com', 0, NULL, 2, '2016-03-31 07:57:36', 0),
(19, 'Islamic Studeis', 'Is-studis', 0, NULL, 2, '2016-03-31 07:59:51', 0),
(20, 'Drawing ', 'Draw ', 0, NULL, 2, '2016-03-31 08:02:25', 3),
(21, 'Mathematics', 'Math', 0, NULL, 3, '2016-04-05 03:25:07', 0),
(22, 'Religion', 'Reli', 0, NULL, 3, '2016-04-05 03:26:18', 0),
(23, 'Hinduism', 'Hindu', 0, NULL, 3, '2016-04-05 03:31:33', 0),
(24, 'General Knowledge', 'Knowledge', 0, NULL, 3, '2016-04-05 03:38:34', 0),
(25, 'Practical', 'Prac', 0, NULL, 3, '2016-04-05 04:02:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE IF NOT EXISTS `syllabus` (
  `id` int(11) NOT NULL,
  `classs` varchar(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `pdf_details` varchar(1500) NOT NULL,
  `dates` date NOT NULL,
  `entry_user` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `classs`, `title`, `pdf_details`, `dates`, `entry_user`) VALUES
(1, '1', 'this is test', 'slide-two.jpg', '2016-04-01', '3');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_log`
--

CREATE TABLE IF NOT EXISTS `transaction_log` (
  `id` int(11) NOT NULL,
  `trans_id` bigint(11) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE IF NOT EXISTS `transport` (
  `id` int(11) NOT NULL,
  `route_name` varchar(200) DEFAULT NULL,
  `total_trans` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `route_fee` decimal(10,2) DEFAULT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `urlmapping`
--

CREATE TABLE IF NOT EXISTS `urlmapping` (
  `id` int(10) unsigned NOT NULL,
  `url` varchar(200) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `urlmapping`
--

INSERT INTO `urlmapping` (`id`, `url`, `log_date`, `status`) VALUES
(0, 'http://localhost/DW/digital_school_v.01/digital_scl_soft/', '2017-01-31 04:40:18', 0),
(1, 'http://127.0.0.1/digital_school/latest_school/', '2016-11-21 06:59:27', 1),
(2, 'http://192.168.2.107/digital_school_v.01/latest_school_21_11_16/', '2016-11-21 07:16:53', 1),
(3, 'http://192.168.2.107/digital_school_v.01/digital_scl_soft/', '2016-11-21 07:47:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE IF NOT EXISTS `user_reg` (
  `userid` int(11) NOT NULL,
  `ruleid` int(11) NOT NULL,
  `userN` varchar(80) NOT NULL,
  `fullname` varchar(80) NOT NULL,
  `logpass` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `sId` varchar(200) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`userid`, `ruleid`, `userN`, `fullname`, `logpass`, `phone`, `email`, `status`, `sId`, `e_date`, `e_user`, `up_date`, `up_user`) VALUES
(1, 1, 'shoriful', 'Md Shoriful Islam', '123', '01863792733', 'shorifulislam433@gmail.com', 1, '5eeb46930716c3c334457373e4bd8531', NULL, NULL, '2016-04-24 08:24:41', 'admin'),
(2, 1, 'mehedi', 'Md Mehedi Hassan Shamim', '123', '01863792733', 'mehedihasanshamim221@gmail.com', 0, '', NULL, NULL, '2016-04-06 14:12:43', NULL),
(3, 1, 'admin', 'Admin', '123', '01863792733', 'admin@gmail.com', 0, '', NULL, NULL, '2017-12-24 07:44:02', NULL),
(4, 1, 'admin1', 'Mehedi hasan shamim', '123', '01840239203', 'mehedihasanshamim25@yahoo.com', 0, '', '2016-04-02 12:18:00', 'admin', '2016-04-01 18:41:54', 'shorif'),
(5, 1, 'shorif', 'Shoriful Islam', '123', '01712005140', 'shorif@gmail.com', 0, '', '2016-04-02 12:06:00', 'admin', '2016-04-01 20:26:30', ''),
(6, 2, 'baten', 'Md. Abdul Baten', '01869840588', '01869840588', 'abc@gmail.com', 1, 'b355e091d2cda3339dd137178244bd68', '2016-05-24 12:39:00', 'admin', '2016-06-02 05:35:33', ''),
(7, 1, 'MOJUMDER', 'Bablu Mojumder', '01727302317', '01812937869', 'bablumd01@gmail.com', 1, '4a2150521c592e6a2615bb897a4ca8ba', '2016-05-25 12:27:00', 'admin', '2016-06-19 04:58:54', '');

-- --------------------------------------------------------

--
-- Table structure for table `vahicles`
--

CREATE TABLE IF NOT EXISTS `vahicles` (
  `vid` int(11) NOT NULL,
  `vnumber` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `route` varchar(200) NOT NULL,
  `capacity` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `euser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vahicles`
--

INSERT INTO `vahicles` (`vid`, `vnumber`, `name`, `route`, `capacity`, `rent`, `edate`, `euser`) VALUES
(1, 12, 'Van - 12', 'Basurhat to Kompanygonj', 15, 500, '2016-04-20 05:44:04', 3),
(2, 1234, 'Van-08', 'Basurhat bazer', 15, 250, '2016-05-10 06:14:53', 3),
(3, 1, 'Motor No-1', 'Basurhat to Notun bazer', 18, 800, '2016-05-25 05:22:25', 3),
(4, 3, 'Van-4', 'Basurhat', 20, 500, '2016-06-05 14:47:38', 7),
(5, 2, 'Motor No-2', 'basurhat to Manikpur', 40, 800, '2016-06-05 14:47:38', 7),
(6, 9, 'Van-4', 'Basurhat', 20, 500, '2016-06-05 14:52:02', 7),
(7, 8, 'Van-7', 'Basurhat', 20, 500, '2016-06-05 14:52:02', 7),
(8, 7, 'Van-6', 'Basurhat', 20, 500, '2016-06-05 14:52:02', 7),
(9, 6, 'Van-5', 'basurhat', 20, 500, '2016-06-05 14:52:02', 7);

-- --------------------------------------------------------

--
-- Table structure for table `van_assign`
--

CREATE TABLE IF NOT EXISTS `van_assign` (
  `assid` int(11) NOT NULL,
  `vanid` int(11) NOT NULL,
  `shiftid` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `sectionid` int(11) NOT NULL,
  `roll` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `year` int(11) NOT NULL,
  `edate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `udate` datetime NOT NULL,
  `euser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `van_assign`
--

INSERT INTO `van_assign` (`assid`, `vanid`, `shiftid`, `classid`, `sectionid`, `roll`, `amount`, `status`, `year`, `edate`, `udate`, `euser`) VALUES
(1, 3, 1, 1, 1, 2, 800, 0, 2016, '2016-05-25 05:24:05', '0000-00-00 00:00:00', 3),
(2, 3, 1, 1, 1, 1, 500, 1, 2016, '2016-05-25 05:24:05', '0000-00-00 00:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `version_catg`
--

CREATE TABLE IF NOT EXISTS `version_catg` (
  `verid` int(11) NOT NULL,
  `version_N` varchar(80) NOT NULL,
  `e_date` datetime DEFAULT NULL,
  `e_user` varchar(50) DEFAULT NULL,
  `up_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `up_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vice_principal_message`
--

CREATE TABLE IF NOT EXISTS `vice_principal_message` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `image` varchar(500) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vice_principal_message`
--

INSERT INTO `vice_principal_message` (`id`, `title`, `image`, `details`) VALUES
(1, 'Vice Principal Message', 'vice_principal.jpg', '<p>On behalf of all the staff members, I would like to welcome everyone to Loganville-Springfield Elementary School!!&nbsp; It is a privilege to serve as principal of Loganville.&nbsp; Our school has an outstanding reputation, <em>and I am proud to be part of such a wonderful program.&nbsp; Loganville-Springfield is filled with enthusiastic students willing to learn, supportive <strong>parents/guardians interested in their children''s education, and a&nbsp;dedicated professional staff committed to providing the students with a quality education.&nbsp;</strong></em></p>\n<div><em><strong>&nbsp;</strong></em></div>\n<div><strong>I would like to encourage&nbsp;each parent/guardian&nbsp;to stay active in your child''s education.&nbsp; I certainly realize that many of you lead busy lives, and it is often difficult to volunteer at school.&nbsp; However, taking just a few minutes in the evening to read to your child, talk with your child about school, or simply see that your child is organized for the next school day can have great benefits.&nbsp;</strong></div>\n<div>\n<div align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>\n<div align="left">Enjoy the 2014-2015 school year and all the excitement it will bring!&nbsp; Please feel free to contact any of us at Loganville-Springfield if you would like more information about our school.</div>\n<div align="left">&nbsp;</div>\n<div align="left">Sincerely,</div>\n<div align="left">&nbsp;</div>\n<div align="left">Scott A. Carl</div>\n<div align="left"><em>Principal</em></div>\n</div>\n<div id="spoon-plugin-kncgbdglledmjmpnikebkagnchfdehbm-2" style="display: none;">&nbsp;</div>');

-- --------------------------------------------------------

--
-- Table structure for table `welcome_message`
--

CREATE TABLE IF NOT EXISTS `welcome_message` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `welcome_message`
--

INSERT INTO `welcome_message` (`id`, `title`, `image`, `details`) VALUES
(1, 'Welcome ', 'welcome.jpg', '<p><strong>Khilgaon Model High School&nbsp;</strong>, located in Dhaka, is one of Bangladesh''s most important and earliest higher educational institutions. It offers <strong>S.S.C</strong>., five&nbsp;years schooling&nbsp;and two&nbsp;year <strong>H.S.C</strong>&nbsp;course in various majors. The school&nbsp;is affiliated with the National school. Several thousand students study here, it has a number of student halls and many students participate in politics. The school&nbsp;is affiliated with the National school. Several thousand students study here, it has a number of student halls and many students participate in politics. The school&nbsp;is affiliated with the National school. Several thousand students study here, it has a number of student<em> halls and many st<strong>udents participate in politics. The school&nbsp;is affiliated with the Nation</strong></em><strong>al school. Several thousand students study here, it has a number of student halls and many students participate in politics. The sch</strong>ool&nbsp;is affiliated with the National school. Several thousand students study here, it has a number of student halls and many students participate in politics. The school&nbsp;is affiliated with the National school. Several thousand stude<strong>nts study here, it has a number of student halls and many students participate in politics. The school&nbsp;is affiliated with the National school. Several thousand students study here, it has a number of student halls and many students participate in politics. The school&nbsp;is affiliated with the National school. Several thousand students study here, it has a number of student halls and many students participate in politics. The school&nbsp;is affiliated with the National sc</strong>hool. Several thousand students study here, it has a number of student halls and many students participate in politics.hello bangladesh..kemon aco sobal ??</p>\n<div id="spoon-plugin-kncgbdglledmjmpnikebkagnchfdehbm-2" style="display: none;">&nbsp;</div>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic_cal`
--
ALTER TABLE `academic_cal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_cre`
--
ALTER TABLE `account_cre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_balance`
--
ALTER TABLE `add_balance`
  ADD PRIMARY KEY (`baid`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_fee`
--
ALTER TABLE `admission_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_info`
--
ALTER TABLE `admission_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_result`
--
ALTER TABLE `admission_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advancepayment`
--
ALTER TABLE `advancepayment`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `application_catg`
--
ALTER TABLE `application_catg`
  ADD PRIMARY KEY (`appctgid`);

--
-- Indexes for table `application_fee`
--
ALTER TABLE `application_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_tbl`
--
ALTER TABLE `application_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_fees`
--
ALTER TABLE `app_fees`
  ADD PRIMARY KEY (`apfid`);

--
-- Indexes for table `app_list`
--
ALTER TABLE `app_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_validation`
--
ALTER TABLE `app_validation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billpay_catg`
--
ALTER TABLE `billpay_catg`
  ADD PRIMARY KEY (`bpid`);

--
-- Indexes for table `bk_payment`
--
ALTER TABLE `bk_payment`
  ADD PRIMARY KEY (`bkid`);

--
-- Indexes for table `book_catg`
--
ALTER TABLE `book_catg`
  ADD PRIMARY KEY (`bctg_id`);

--
-- Indexes for table `book_code`
--
ALTER TABLE `book_code`
  ADD PRIMARY KEY (`bcid`);

--
-- Indexes for table `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`blist_id`);

--
-- Indexes for table `book_sdistribute`
--
ALTER TABLE `book_sdistribute`
  ADD PRIMARY KEY (`bdis_id`);

--
-- Indexes for table `class_catg`
--
ALTER TABLE `class_catg`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `class_fee_sett`
--
ALTER TABLE `class_fee_sett`
  ADD PRIMARY KEY (`feeid`);

--
-- Indexes for table `class_froxsett`
--
ALTER TABLE `class_froxsett`
  ADD PRIMARY KEY (`froxid`);

--
-- Indexes for table `class_period`
--
ALTER TABLE `class_period`
  ADD PRIMARY KEY (`perid`);

--
-- Indexes for table `class_tehsett`
--
ALTER TABLE `class_tehsett`
  ADD PRIMARY KEY (`ctsid`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_admission`
--
ALTER TABLE `contact_admission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empee`
--
ALTER TABLE `empee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_catg`
--
ALTER TABLE `employee_catg`
  ADD PRIMARY KEY (`ecatgid`);

--
-- Indexes for table `emp_approved`
--
ALTER TABLE `emp_approved`
  ADD PRIMARY KEY (`levaprov`);

--
-- Indexes for table `emp_attendance`
--
ALTER TABLE `emp_attendance`
  ADD PRIMARY KEY (`eattenid`);

--
-- Indexes for table `emp_depart_catg`
--
ALTER TABLE `emp_depart_catg`
  ADD PRIMARY KEY (`edepid`);

--
-- Indexes for table `emp_levtype`
--
ALTER TABLE `emp_levtype`
  ADD PRIMARY KEY (`levid`);

--
-- Indexes for table `emp_login`
--
ALTER TABLE `emp_login`
  ADD PRIMARY KEY (`elogid`);

--
-- Indexes for table `emp_manage_pos`
--
ALTER TABLE `emp_manage_pos`
  ADD PRIMARY KEY (`posid`);

--
-- Indexes for table `emp_reqlev`
--
ALTER TABLE `emp_reqlev`
  ADD PRIMARY KEY (`reqid`);

--
-- Indexes for table `emp_salary_his`
--
ALTER TABLE `emp_salary_his`
  ADD PRIMARY KEY (`esalid`);

--
-- Indexes for table `emp_salary_incre`
--
ALTER TABLE `emp_salary_incre`
  ADD PRIMARY KEY (`eincid`);

--
-- Indexes for table `emp_type`
--
ALTER TABLE `emp_type`
  ADD PRIMARY KEY (`emptypeid`);

--
-- Indexes for table `emp_vacancy`
--
ALTER TABLE `emp_vacancy`
  ADD PRIMARY KEY (`vanid`);

--
-- Indexes for table `exm_catg`
--
ALTER TABLE `exm_catg`
  ADD PRIMARY KEY (`exm_ctgid`);

--
-- Indexes for table `exm_grade`
--
ALTER TABLE `exm_grade`
  ADD PRIMARY KEY (`gradid`);

--
-- Indexes for table `exm_markother`
--
ALTER TABLE `exm_markother`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exm_namectg`
--
ALTER TABLE `exm_namectg`
  ADD PRIMARY KEY (`exmnid`);

--
-- Indexes for table `exm_othercatg`
--
ALTER TABLE `exm_othercatg`
  ADD PRIMARY KEY (`othexmid`);

--
-- Indexes for table `exm_pdistribute`
--
ALTER TABLE `exm_pdistribute`
  ADD PRIMARY KEY (`pdisid`);

--
-- Indexes for table `exm_preceive`
--
ALTER TABLE `exm_preceive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exm_routine`
--
ALTER TABLE `exm_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exm_routine_sett`
--
ALTER TABLE `exm_routine_sett`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exm_seatplain`
--
ALTER TABLE `exm_seatplain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exm_teacher_schedul`
--
ALTER TABLE `exm_teacher_schedul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expance`
--
ALTER TABLE `expance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expance_catg`
--
ALTER TABLE `expance_catg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exp_invoice_log`
--
ALTER TABLE `exp_invoice_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `father_login`
--
ALTER TABLE `father_login`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `fee_catg`
--
ALTER TABLE `fee_catg`
  ADD PRIMARY KEY (`feectgid`);

--
-- Indexes for table `fstu_login`
--
ALTER TABLE `fstu_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_map`
--
ALTER TABLE `google_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades_catg`
--
ALTER TABLE `grades_catg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_setup`
--
ALTER TABLE `group_setup`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_catagory`
--
ALTER TABLE `image_catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_catg`
--
ALTER TABLE `income_catg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inc_invoice_log`
--
ALTER TABLE `inc_invoice_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infrastructure`
--
ALTER TABLE `infrastructure`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_gallery`
--
ALTER TABLE `library_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_info`
--
ALTER TABLE `library_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_ledger`
--
ALTER TABLE `main_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manageing_commitee`
--
ALTER TABLE `manageing_commitee`
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `mark_add`
--
ALTER TABLE `mark_add`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mark_convert`
--
ALTER TABLE `mark_convert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maximum_period`
--
ALTER TABLE `maximum_period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meritlist`
--
ALTER TABLE `meritlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_closing`
--
ALTER TABLE `monthly_closing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_status`
--
ALTER TABLE `online_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_income`
--
ALTER TABLE `other_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pass_markctg`
--
ALTER TABLE `pass_markctg`
  ADD PRIMARY KEY (`passid`);

--
-- Indexes for table `principal_message`
--
ALTER TABLE `principal_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regis_tbl`
--
ALTER TABLE `regis_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re_admission`
--
ALTER TABLE `re_admission`
  ADD PRIMARY KEY (`readid`);

--
-- Indexes for table `room_settup`
--
ALTER TABLE `room_settup`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`routineid`);

--
-- Indexes for table `routine_sett`
--
ALTER TABLE `routine_sett`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routine_shidule`
--
ALTER TABLE `routine_shidule`
  ADD PRIMARY KEY (`shidule_id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`ruleid`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schship`
--
ALTER TABLE `schship`
  ADD PRIMARY KEY (`schid`);

--
-- Indexes for table `section_tbl`
--
ALTER TABLE `section_tbl`
  ADD PRIMARY KEY (`sectionid`);

--
-- Indexes for table `shift_catg`
--
ALTER TABLE `shift_catg`
  ADD PRIMARY KEY (`shiftid`);

--
-- Indexes for table `slide_setting`
--
ALTER TABLE `slide_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sprofile`
--
ALTER TABLE `sprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_account`
--
ALTER TABLE `student_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_bill`
--
ALTER TABLE `stu_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_pay`
--
ALTER TABLE `stu_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stu_sship_amount`
--
ALTER TABLE `stu_sship_amount`
  ADD PRIMARY KEY (`sshipdisid`);

--
-- Indexes for table `subject_class`
--
ALTER TABLE `subject_class`
  ADD PRIMARY KEY (`subjid`);

--
-- Indexes for table `subject_setup`
--
ALTER TABLE `subject_setup`
  ADD PRIMARY KEY (`subsetid`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_log`
--
ALTER TABLE `transaction_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urlmapping`
--
ALTER TABLE `urlmapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `vahicles`
--
ALTER TABLE `vahicles`
  ADD PRIMARY KEY (`vid`);

--
-- Indexes for table `van_assign`
--
ALTER TABLE `van_assign`
  ADD PRIMARY KEY (`assid`);

--
-- Indexes for table `version_catg`
--
ALTER TABLE `version_catg`
  ADD PRIMARY KEY (`verid`);

--
-- Indexes for table `vice_principal_message`
--
ALTER TABLE `vice_principal_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welcome_message`
--
ALTER TABLE `welcome_message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `academic_cal`
--
ALTER TABLE `academic_cal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `account_cre`
--
ALTER TABLE `account_cre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `add_balance`
--
ALTER TABLE `add_balance`
  MODIFY `baid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `admission_fee`
--
ALTER TABLE `admission_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admission_info`
--
ALTER TABLE `admission_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `admission_result`
--
ALTER TABLE `admission_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `advancepayment`
--
ALTER TABLE `advancepayment`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `application_catg`
--
ALTER TABLE `application_catg`
  MODIFY `appctgid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `application_fee`
--
ALTER TABLE `application_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `application_tbl`
--
ALTER TABLE `application_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `app_fees`
--
ALTER TABLE `app_fees`
  MODIFY `apfid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_list`
--
ALTER TABLE `app_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_validation`
--
ALTER TABLE `app_validation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank_transfer`
--
ALTER TABLE `bank_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `billpay_catg`
--
ALTER TABLE `billpay_catg`
  MODIFY `bpid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bk_payment`
--
ALTER TABLE `bk_payment`
  MODIFY `bkid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `book_catg`
--
ALTER TABLE `book_catg`
  MODIFY `bctg_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `book_code`
--
ALTER TABLE `book_code`
  MODIFY `bcid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `book_list`
--
ALTER TABLE `book_list`
  MODIFY `blist_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `book_sdistribute`
--
ALTER TABLE `book_sdistribute`
  MODIFY `bdis_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `class_catg`
--
ALTER TABLE `class_catg`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `class_fee_sett`
--
ALTER TABLE `class_fee_sett`
  MODIFY `feeid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `class_froxsett`
--
ALTER TABLE `class_froxsett`
  MODIFY `froxid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class_period`
--
ALTER TABLE `class_period`
  MODIFY `perid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class_tehsett`
--
ALTER TABLE `class_tehsett`
  MODIFY `ctsid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_admission`
--
ALTER TABLE `contact_admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `empee`
--
ALTER TABLE `empee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_catg`
--
ALTER TABLE `employee_catg`
  MODIFY `ecatgid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `emp_approved`
--
ALTER TABLE `emp_approved`
  MODIFY `levaprov` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_attendance`
--
ALTER TABLE `emp_attendance`
  MODIFY `eattenid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_depart_catg`
--
ALTER TABLE `emp_depart_catg`
  MODIFY `edepid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emp_levtype`
--
ALTER TABLE `emp_levtype`
  MODIFY `levid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_login`
--
ALTER TABLE `emp_login`
  MODIFY `elogid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `emp_manage_pos`
--
ALTER TABLE `emp_manage_pos`
  MODIFY `posid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_reqlev`
--
ALTER TABLE `emp_reqlev`
  MODIFY `reqid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_salary_his`
--
ALTER TABLE `emp_salary_his`
  MODIFY `esalid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_salary_incre`
--
ALTER TABLE `emp_salary_incre`
  MODIFY `eincid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_type`
--
ALTER TABLE `emp_type`
  MODIFY `emptypeid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emp_vacancy`
--
ALTER TABLE `emp_vacancy`
  MODIFY `vanid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exm_catg`
--
ALTER TABLE `exm_catg`
  MODIFY `exm_ctgid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exm_grade`
--
ALTER TABLE `exm_grade`
  MODIFY `gradid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exm_markother`
--
ALTER TABLE `exm_markother`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exm_namectg`
--
ALTER TABLE `exm_namectg`
  MODIFY `exmnid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exm_othercatg`
--
ALTER TABLE `exm_othercatg`
  MODIFY `othexmid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exm_pdistribute`
--
ALTER TABLE `exm_pdistribute`
  MODIFY `pdisid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exm_preceive`
--
ALTER TABLE `exm_preceive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exm_routine`
--
ALTER TABLE `exm_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exm_routine_sett`
--
ALTER TABLE `exm_routine_sett`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exm_seatplain`
--
ALTER TABLE `exm_seatplain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exm_teacher_schedul`
--
ALTER TABLE `exm_teacher_schedul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `expance`
--
ALTER TABLE `expance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `expance_catg`
--
ALTER TABLE `expance_catg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exp_invoice_log`
--
ALTER TABLE `exp_invoice_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `facility`
--
ALTER TABLE `facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `father_login`
--
ALTER TABLE `father_login`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=239;
--
-- AUTO_INCREMENT for table `fee_catg`
--
ALTER TABLE `fee_catg`
  MODIFY `feectgid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `fstu_login`
--
ALTER TABLE `fstu_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `google_map`
--
ALTER TABLE `google_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `grades_catg`
--
ALTER TABLE `grades_catg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group_setup`
--
ALTER TABLE `group_setup`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `image_catagory`
--
ALTER TABLE `image_catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `income_catg`
--
ALTER TABLE `income_catg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `inc_invoice_log`
--
ALTER TABLE `inc_invoice_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `infrastructure`
--
ALTER TABLE `infrastructure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `library_gallery`
--
ALTER TABLE `library_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_info`
--
ALTER TABLE `library_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `main_ledger`
--
ALTER TABLE `main_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manageing_commitee`
--
ALTER TABLE `manageing_commitee`
  MODIFY `memberid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mark_add`
--
ALTER TABLE `mark_add`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mark_convert`
--
ALTER TABLE `mark_convert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `maximum_period`
--
ALTER TABLE `maximum_period`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `meritlist`
--
ALTER TABLE `meritlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `monthly_closing`
--
ALTER TABLE `monthly_closing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `online_status`
--
ALTER TABLE `online_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `other_income`
--
ALTER TABLE `other_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pass_markctg`
--
ALTER TABLE `pass_markctg`
  MODIFY `passid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `principal_message`
--
ALTER TABLE `principal_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `regis_tbl`
--
ALTER TABLE `regis_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `re_admission`
--
ALTER TABLE `re_admission`
  MODIFY `readid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `room_settup`
--
ALTER TABLE `room_settup`
  MODIFY `roomid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `routineid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `routine_sett`
--
ALTER TABLE `routine_sett`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `routine_shidule`
--
ALTER TABLE `routine_shidule`
  MODIFY `shidule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `ruleid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `schship`
--
ALTER TABLE `schship`
  MODIFY `schid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `section_tbl`
--
ALTER TABLE `section_tbl`
  MODIFY `sectionid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `shift_catg`
--
ALTER TABLE `shift_catg`
  MODIFY `shiftid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
