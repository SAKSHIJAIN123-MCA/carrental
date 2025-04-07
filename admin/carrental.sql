-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 07, 2025 at 07:49 AM
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
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2025-05-01 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `name`, `email`, `comment`) VALUES
(0, 'sakshi jain', 'nareshjainmorenamp@gamil.com', 'NICE'),
(1, 'kumar shanu', 'nareshjain@gmail.com', 'awesome'),
(2, 'parul', 'parul@gmail.com', 'very good service');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(2, 212569501, 'sakshijainmorena@gmail.com', 2, '2025-02-06', '2025-02-07', 'no', 1, '2025-02-04 09:13:11', '2025-02-04 09:15:48'),
(3, 729093154, 'nareshjainmorenamp@gamil.com', 3, '2025-02-12', '2025-02-08', 'book', 0, '2025-02-17 10:57:51', NULL),
(4, 579575085, 'nareshjainmorenamp@gamil.com', 10, '2025-02-20', '2025-02-28', 'no', 1, '2025-02-17 11:23:18', '2025-02-17 11:24:26'),
(5, 864669645, 'sakshijainmorena@gmail.com', 17, '2025-02-28', '2025-03-08', 'BOOK', 1, '2025-02-17 11:56:14', '2025-02-17 11:56:58'),
(6, 410129046, 'nareshjainmorenamp@gamil.com', 12, '2025-02-21', '2025-02-23', 'Book only for 3 days', 0, '2025-02-21 08:23:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(9, 'sakshi brand', '2025-02-17 11:01:07', '2025-02-17 11:04:13'),
(10, 'Maruti', '2025-02-17 11:02:35', NULL),
(11, 'BMW', '2025-02-17 11:02:41', NULL),
(12, 'Audi', '2025-02-17 11:02:46', NULL),
(13, 'Nissan', '2025-02-17 11:03:20', NULL),
(14, 'Toyota', '2025-02-17 11:03:25', NULL),
(15, 'Volkswagen', '2025-02-17 11:03:56', NULL),
(16, 'suzuki', '2025-03-18 06:06:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'J&K Block, Laxmi Nagar, Gwalior', 'sakshijainmorena@gmail.com', '8817740964');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '										<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13.3333px;\">We offer a varied fleet of cars, ranging from the compact. All our vehicles have air conditioning, &nbsp;power steering, electric windows. All our vehicles are bought and maintained at official dealerships only. Automatic transmission cars are available in every booking class.&nbsp;</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\">As we are not affiliated with any specific automaker, we are able to provide a variety of vehicle makes and models for customers to rent.</span><div><span style=\"color: rgb(62, 62, 62); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 11px;\">ur mission is to be recognised as the global leader in Car Rental for companies and the public and private sector by partnering with our clients to provide the best and most efficient Cab Rental solutions and to achieve service excellence.</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\"><br></span></div>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(6, 'nareshjainmorenamp@gamil.com', '2025-02-17 10:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(3, 'sakshi jain', 'sakshijainmorena@gmail.com', 'de9477f2c72399b4e56a11c5987b9387', '8817740964', '15/08/01', 'J&K Block, Laxmi Nagar, Gwalior', 'Gwalior', 'India', '2025-02-04 09:10:40', '2025-02-20 14:37:36'),
(4, 'kumar shanu', 'nareshjainmorenamp@gamil.com', 'de9477f2c72399b4e56a11c5987b9387', '7987480753', '25/02/2000', 'Morena\r\nMP', 'Gwalior', 'Gwalior', '2025-02-17 10:49:10', '2025-02-20 14:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(9, 'sakshi', 8, 'no', 5, 'CNG', 2003, 7, 'room-1.jpg', 'room-2.jpg', 'room1.jpeg', 'room-3.jpg', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, '2025-02-04 09:05:11', NULL),
(10, 'car', 9, 'ac car', 5000, 'CNG', 2018, 7, 'car img1.jpg', 'car img2.webp', 'car img3.jpg', 'car img4.jpeg', 'car img5.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2025-02-17 11:09:38', NULL),
(11, 'Car', 10, 'Maruti cars are known for their affordability, fuel efficiency, and reliability, making them a popular choice among Indian consumers. With a wide range of models from hatchbacks to SUVs, Maruti Suzuki offers budget-friendly and technologically advanced vehicles for diverse needs. ?????\r\n\r\n\r\n\r\n\r\nMaruti cars are known for their affordability, fuel efficiency, and reliability, making them a popular choice among Indian consumers. With a wide range of models from hatchbacks to SUVs, Maruti Suzuki offers budget-friendly and technologically advanced vehicles for diverse needs. ?????\r\n\r\n\r\n\r\n\r\nMaruti cars are known for their affordability, fuel efficiency and reliability.\r\n\r\n\r\n\r\n\r\n\r\n', 2000, 'CNG', 2015, 11, 'car img4.jpeg', 'car img3.jpg', 'car img1.jpg', 'car img4.jpeg', '', 1, NULL, 1, NULL, NULL, 1, 1, 1, NULL, 1, NULL, 1, '2025-02-17 11:29:41', NULL),
(12, 'CAR', 11, 'BMW (Bayerische Motoren Werke) is a German luxury automobile brand known for its high-performance vehicles, advanced technology, and premium design. It offers a range of sedans, SUVs, and sports cars, including popular models like the BMW 3 Series, 5 Series, X5, X7, and M Series.', 3000, 'Diesel', 2011, 8, 'car img3.jpg', 'car img5.jpeg', 'car img4.jpeg', 'car img1.jpg', '', 1, NULL, NULL, NULL, 1, 1, 1, NULL, 1, NULL, NULL, 1, '2025-02-17 11:31:25', NULL),
(13, 'CAR', 12, '**Audi** is a German luxury automobile manufacturer known for its **cutting-edge technology, premium design, and high-performance vehicles**. It offers a wide range of **sedans, SUVs, and sports cars**, including popular models like the **Audi A4, A6, Q5, Q7, and the high-performance RS series**.  \r\n\r\nAudi cars are famous for their **Quattro all-wheel drive system, advanced infotainment, and sleek design**. Prices vary by model and features, typically ranging from **$40,000 to $200,000+ USD**. ?????', 8000, 'Diesel', 2019, 5, 'car img2.webp', 'car img3.jpg', 'car img5.jpeg', 'car img4.jpeg', '', 1, 1, NULL, NULL, 1, 1, NULL, NULL, 1, NULL, 1, NULL, '2025-02-17 11:43:51', NULL),
(14, 'shift', 13, 'The **Suzuki Swift** is a stylish and fuel-efficient hatchback known for its **compact design, smooth performance, and affordability**. It features a **1.2L petrol engine, manual & automatic transmission options, and a comfortable interior with modern tech**.  \r\n\r\nWith a sporty look and great mileage, it\'s a popular choice for city driving. The price of the **Swift** ranges from **$10,000 to $20,000 USD**, depending on the variant and features. ?????', 7000, 'Petrol', 2002, 8, 'car img3.jpg', 'car img5.jpeg', 'car img1.jpg', 'car img4.jpeg', '', NULL, 1, 1, 1, NULL, 1, 1, 1, NULL, 1, 1, 1, '2025-02-17 11:45:19', NULL),
(15, 'JEEP', 14, 'Toyota is a well-known Japanese automobile brand, famous for its reliability, durability, and innovation. The company offers a broad range of vehicles, including sedans, SUVs, trucks, hybrids, and electric vehicles. Popular models include the Toyota Corolla, Camry, RAV4, Highlander, and the hybrid Prius.\r\n\r\n', 5000, 'Petrol', 2020, 6, 'car img3.jpg', 'car img1.jpg', 'car img4.jpeg', 'car img5.jpeg', '', 1, 1, 1, NULL, NULL, 1, 1, NULL, NULL, 1, 1, 1, '2025-02-17 11:46:51', NULL),
(16, 'CAR', 15, '**Volkswagen** is a German automaker renowned for its **high-quality, reliable, and innovative vehicles**. The brand offers a wide range of models, including **compact cars, sedans, hatchbacks, and SUVs**. Popular models include the **Volkswagen Golf, Jetta, Passat, Tiguan, and the electric ID.4**.\r\n\r\nVolkswagen cars are known for their **excellent build quality, smooth performance, and advanced technology features**. The price range for Volkswagen vehicles typically starts around **$20,000 USD** and can go up to **$50,000+ USD**, depending on the model and features. ?????', 4000, 'CNG', 2018, 7, 'car img4.jpeg', 'car img5.jpeg', 'car img4.jpeg', 'car img1.jpg', 'car img2.webp', 1, 1, NULL, NULL, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, '2025-02-17 11:48:03', NULL),
(17, 'CAR', 11, '**BMW (Bayerische Motoren Werke)** is a German luxury automobile brand known for its high-performance vehicles, advanced technology, and premium design. It offers a range of **sedans, SUVs, and sports cars**, including popular models like the **BMW 3 Series, 5 Series, X5, X7, and M Series**.  \r\n\r\nBMW cars are recognized for their **precision engineering, luxury interiors, and dynamic driving experience**. Prices vary depending on the model and features, typically ranging from **$40,000 to $150,000+ USD**. ?????', 4000, 'Petrol', 2018, 7, 'car img1.jpg', 'car img3.jpg', 'car img5.jpeg', 'car img4.jpeg', '', 1, 1, NULL, 1, 1, 1, NULL, 1, 1, NULL, NULL, 1, '2025-02-17 11:49:50', NULL),
(18, 'Volkswagen', 11, 'Volkswagen (VW) is a German automobile manufacturer known for producing reliable, stylish, and technologically advanced vehicles. The brand is part of the Volkswagen Group, which owns Audi, Porsche, Bentley, and several other car brands. VW is recognized for its engineering, safety, and performance across a wide range of models.\r\n\r\n', 500, 'CNG', 2005, 11, 'car img1.jpg', 'car img2.webp', 'car img3.jpg', 'car img4.jpeg', 'car img5.jpeg', 1, NULL, NULL, NULL, 1, 1, 1, 1, 1, NULL, NULL, 1, '2025-02-21 09:45:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
