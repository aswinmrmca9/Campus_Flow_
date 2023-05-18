-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 08:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `campus_bridge`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_college_details`
--

CREATE TABLE `tbl_college_details` (
  `college_name` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `post office` varchar(100) NOT NULL,
  `pin code` int(11) NOT NULL,
  `phone_no1` varchar(13) NOT NULL,
  `phone_no2` varchar(13) NOT NULL,
  `email1` varchar(50) NOT NULL,
  `email2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `department_name` varchar(50) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `block` varchar(50) NOT NULL,
  `room_name` varchar(20) NOT NULL,
  `dept_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`department_name`, `course_name`, `block`, `room_name`, `dept_id`) VALUES
('', '', '', '', ''),
('Department of Computer Applications', 'MCA', 'PG Block', 'D312', 'DCA01'),
('Department of Computer Science', 'Btech CS', 'W block', 'W213', 'DCS01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `id` bigint(20) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`id`, `district`) VALUES
(1, 'Ernakulam'),
(2, 'Kottayam'),
(3, 'Kannur'),
(4, 'Kasargod'),
(5, 'Wayanad'),
(6, 'Kozhikode'),
(7, 'Malappuram'),
(8, 'Palakkad'),
(9, 'Thrissur'),
(10, 'Idukki'),
(11, 'Alappuzha'),
(12, 'Pathanamthitta'),
(13, 'Kollam'),
(14, 'Thiruvananthapuram');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general_terms`
--

CREATE TABLE `tbl_general_terms` (
  `id` int(11) NOT NULL,
  `term_no` int(11) NOT NULL,
  `term_value` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE `tbl_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_type` varchar(50) NOT NULL,
  `item_category` varchar(50) NOT NULL,
  `stock_level` int(11) NOT NULL,
  `item_location` varchar(50) NOT NULL,
  `issue_to` varchar(50) NOT NULL,
  `added_date` date NOT NULL,
  `item_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item_attributes`
--

CREATE TABLE `tbl_item_attributes` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `attribute` varchar(50) NOT NULL,
  `attribute_value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` int(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`email`, `password`, `user_type`, `status`) VALUES
('admin123@gmail.com', 'admin1234', 0, 1),
('SNGS01', '9895762088', 2, 1),
('SNGT01', '8606871501', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `id` int(11) NOT NULL,
  `quotation_no` int(11) NOT NULL,
  `req_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `invoice_loc` varchar(100) NOT NULL,
  `date_time` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation`
--

CREATE TABLE `tbl_quotation` (
  `id` int(11) NOT NULL,
  `quotation_no` varchar(50) NOT NULL,
  `quotation_name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `pdf` varchar(100) NOT NULL,
  `accepting_last_date` date NOT NULL,
  `delivery_date` date NOT NULL,
  `created_date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quotation_items`
--

CREATE TABLE `tbl_quotation_items` (
  `id` int(11) NOT NULL,
  `quotation_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recieved_quot`
--

CREATE TABLE `tbl_recieved_quot` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `submitted_date` int(11) NOT NULL,
  `quot_no` int(11) NOT NULL,
  `quotation_pdf_loc` varchar(150) NOT NULL,
  `delivery_date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recieved_quot_attributes`
--

CREATE TABLE `tbl_recieved_quot_attributes` (
  `id` int(11) NOT NULL,
  `quot_no` varchar(50) NOT NULL,
  `itemid` varchar(50) NOT NULL,
  `attribute` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recieved_quot_details`
--

CREATE TABLE `tbl_recieved_quot_details` (
  `id` int(11) NOT NULL,
  `quotation_no` varchar(50) NOT NULL,
  `supplier_id` int(50) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request`
--

CREATE TABLE `tbl_request` (
  `req_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `request_name` varchar(50) NOT NULL,
  `request_type` varchar(50) NOT NULL,
  `request_date` date NOT NULL,
  `request_time` varchar(10) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request_item`
--

CREATE TABLE `tbl_request_item` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_request_item_attributes`
--

CREATE TABLE `tbl_request_item_attributes` (
  `id` int(11) NOT NULL,
  `attribute` varchar(50) NOT NULL,
  `attribute_value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `id` int(11) NOT NULL,
  `quotion_no` varchar(50) NOT NULL,
  `supplier_id` varchar(50) NOT NULL,
  `from_account` varchar(50) NOT NULL,
  `to_account` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `date_time` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_attributes`
--

CREATE TABLE `tbl_user_attributes` (
  `user_id` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `attribute` varchar(50) NOT NULL,
  `attribute_value` varchar(50) NOT NULL,
  `attribute_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_data`
--

CREATE TABLE `tbl_user_data` (
  `user_id` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `house_name` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `phone_no` varchar(13) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT 0,
  `dept_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_data`
--

INSERT INTO `tbl_user_data` (`user_id`, `email`, `full_name`, `house_name`, `place`, `district`, `state`, `phone_no`, `pin_code`, `user_status`, `dept_id`) VALUES
('SNGS01', 'alan123@gmail.com', 'Alan', 'Manackanirappel', 'Kolenchery', 'Ernakulam', 'Kerala', '9895762088', '682308', 1, 'DCA01'),
('SNGT01', 'aswinmr2088@gmail.com', 'Aswin', 'Manackanirappel', 'Kolenchery', 'Ernakulam', 'Kerala', '08606871501', '682308', 1, 'DCA01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_general_terms`
--
ALTER TABLE `tbl_general_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_item_attributes`
--
ALTER TABLE `tbl_item_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tbl_request`
--
ALTER TABLE `tbl_request`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `tbl_request_item`
--
ALTER TABLE `tbl_request_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_request_item_attributes`
--
ALTER TABLE `tbl_request_item_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_attributes`
--
ALTER TABLE `tbl_user_attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `tbl_user_data`
--
ALTER TABLE `tbl_user_data`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_general_terms`
--
ALTER TABLE `tbl_general_terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_item_attributes`
--
ALTER TABLE `tbl_item_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_request`
--
ALTER TABLE `tbl_request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_request_item`
--
ALTER TABLE `tbl_request_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
