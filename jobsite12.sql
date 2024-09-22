-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2024 at 04:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobsite1`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cv_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `full_name`, `experience`, `contact_number`, `email`, `cv_file`) VALUES
(1, 'abiral panta', 'fresher', '987455145', 'abiral@gmail.com', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `employer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`employer_id`, `name`, `email`, `contact_number`, `location`, `password`, `created_at`) VALUES
(1, 'test company', 'test@gmail.com', '9841225689', 'kathmandu', '123456789', '2024-09-20 04:08:56'),
(3, 'test company', 'test1@gmail.com', '9841225689', 'kathmandu', '123456789', '2024-09-20 04:14:40'),
(4, 'First Company', 'testcompany@gmail.com', '9863689798', 'Kathmandu', '123456789', '2024-09-20 07:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `jobseekerinformation`
--

CREATE TABLE `jobseekerinformation` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `work_experience` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `portfolio_url` varchar(255) DEFAULT NULL,
  `linkedin_url` varchar(255) DEFAULT NULL,
  `desired_job_position` varchar(255) DEFAULT NULL,
  `salary_expectations` decimal(10,2) DEFAULT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobseekerinformation`
--

INSERT INTO `jobseekerinformation` (`id`, `full_name`, `email`, `contact_number`, `location`, `work_experience`, `education`, `skills`, `portfolio_url`, `linkedin_url`, `desired_job_position`, `salary_expectations`, `submission_date`) VALUES
(1, 'abiral panta', 'abiral@gmail.com', '987456123', 'kathmandu', 'fresher', 'bit', 'Html,css,js', '', '', 'front-end developer ', 30000.00, '2024-09-21 15:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `job_postings`
--

CREATE TABLE `job_postings` (
  `job_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `job_location` varchar(255) NOT NULL,
  `qualifications` text NOT NULL,
  `experience_requirements` text NOT NULL,
  `key_skills` text NOT NULL,
  `salary_range` varchar(100) DEFAULT NULL,
  `job_description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_postings`
--

INSERT INTO `job_postings` (`job_id`, `employer_id`, `job_title`, `company_name`, `job_location`, `qualifications`, `experience_requirements`, `key_skills`, `salary_range`, `job_description`, `created_at`) VALUES
(1, 3, 'test', 'gfhfhgf', 'hjghjgjh', 'hghjbjkgjk', 'hjghghjf', 'hghjjhgjh', '', 'gfkjfhhj', '2024-09-20 04:25:25'),
(2, 4, 'First Job', 'Abc company', 'kathmandu', 'BIT passed', '1 year in Laravel', 'laravel\r\ndesign', '', 'jdhskjhfjkshfjksdfhkjsdhfjk', '2024-09-20 07:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `job_seekers`
--

CREATE TABLE `job_seekers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_seekers`
--

INSERT INTO `job_seekers` (`id`, `name`, `email`, `mobile`, `username`, `password`, `created_at`) VALUES
(1, 'Barta Raj', 'bartaraj.pyakurel1@gmail.com', '9803297940', 'barta', '123456789', '2024-09-20 06:28:56'),
(2, 'test seeker', 'testseeker@gmail.com', '9876585695', 'testtest', '123456789', '2024-09-20 07:41:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`employer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `jobseekerinformation`
--
ALTER TABLE `jobseekerinformation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_postings`
--
ALTER TABLE `job_postings`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `job_seekers`
--
ALTER TABLE `job_seekers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `employer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobseekerinformation`
--
ALTER TABLE `jobseekerinformation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_postings`
--
ALTER TABLE `job_postings`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_seekers`
--
ALTER TABLE `job_seekers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
