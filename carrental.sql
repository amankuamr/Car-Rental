-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2025 at 11:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
(1, 'admin', '4ee22f3c3f4dd0618b05050117a2b2fb', '2025-05-16 04:57:44');

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
(5, 308667258, 'amankumar1948sahu@gmail.com', 10, '2025-04-02', '2025-04-05', 'rental', 2, '2025-04-25 03:34:12', '2025-04-29 06:38:00'),
(6, 551416562, 'amankumar1948sahu@gmail.com', 2, '2025-04-07', '2025-04-11', 'gg', 1, '2025-04-25 05:10:12', '2025-04-25 05:10:41'),
(7, 869284569, 'amankumar1948sahu@gmail.com', 9, '2025-04-07', '2025-04-10', 'gg', 1, '2025-04-25 06:23:05', '2025-04-25 06:23:49'),
(8, 413509363, 'amankumar1948sahu@gmail.com', 13, '2025-04-01', '2025-04-05', 'gg', 1, '2025-04-28 03:31:38', '2025-04-28 03:33:18');

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
(1, 'Maruti', '2025-04-05 16:24:34', '2025-04-25 04:53:54'),
(2, 'BMW', '2024-05-01 16:24:34', '2025-06-05 05:26:34'),
(3, 'Audi', '2024-05-01 16:24:34', '2025-06-05 05:26:34'),
(4, 'Nissan', '2024-05-01 16:24:34', '2025-06-05 05:26:34'),
(5, 'Toyota', '2024-05-01 16:24:34', '2025-06-05 05:26:34'),
(7, 'Volkswagon', '2024-05-01 16:24:34', '2024-06-05 05:26:34'),
(8, 'TATA', '2025-04-24 15:08:49', NULL),
(9, 'Renault', '2025-04-25 05:00:58', NULL),
(10, 'Mahindra', '2025-04-27 02:33:26', NULL),
(11, 'Ford', '2025-05-22 07:12:26', NULL);

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
(1, 'Tatisilwai, Ranchi, Jharkhand', 'info@gmail.com', '9572110000');

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

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Kunal ', 'kunal@gmail.com', '7977779798', 'I want to know you brach in Chandigarh?', '2024-06-04 09:34:51', 1),
(2, 'Aman Kumar', 'amankumar1948sahu@gmail.com', '9572112176', 'gg', '2025-04-24 16:38:28', 1),
(3, 'Aman Kumar', 'amankumar1948sahu@gmail.com', '9572110000', 'help', '2025-04-25 05:46:53', 1);

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
(1, 'Terms and Conditions', 'terms', '																				<h3 data-start=\"422\" data-end=\"453\"><strong data-start=\"426\" data-end=\"453\">1. Account Registration</strong></h3><ul data-start=\"454\" data-end=\"677\">\r\n<li data-start=\"454\" data-end=\"523\">\r\n<p data-start=\"456\" data-end=\"523\">Users must register by providing accurate and complete information.</p>\r\n</li>\r\n<li data-start=\"524\" data-end=\"608\">\r\n<p data-start=\"526\" data-end=\"608\">You are responsible for maintaining the confidentiality of your login credentials.</p>\r\n</li>\r\n<li data-start=\"609\" data-end=\"677\">\r\n<p data-start=\"611\" data-end=\"677\">Any unauthorized use of your account must be reported immediately.</p>\r\n</li>\r\n</ul><hr data-start=\"679\" data-end=\"682\"><h3 data-start=\"684\" data-end=\"716\"><strong data-start=\"688\" data-end=\"716\">2. User Responsibilities</strong></h3><ul data-start=\"717\" data-end=\"989\">\r\n<li data-start=\"717\" data-end=\"791\">\r\n<p data-start=\"719\" data-end=\"791\">Users must be at least 18 years old to create an account and rent a car.</p>\r\n</li>\r\n<li data-start=\"792\" data-end=\"906\">\r\n<p data-start=\"794\" data-end=\"906\">Users agree to provide valid and truthful identification and driving license details during the booking process.</p>\r\n</li>\r\n<li data-start=\"907\" data-end=\"989\">\r\n<p data-start=\"909\" data-end=\"989\">You are solely responsible for the content you post in testimonials or feedback.</p>\r\n</li>\r\n</ul><hr data-start=\"991\" data-end=\"994\"><h3 data-start=\"996\" data-end=\"1027\"><strong data-start=\"1000\" data-end=\"1027\">3. Booking and Payments</strong></h3><ul data-start=\"1028\" data-end=\"1299\">\r\n<li data-start=\"1028\" data-end=\"1097\">\r\n<p data-start=\"1030\" data-end=\"1097\">Car bookings are subject to availability and approval by the admin.</p>\r\n</li>\r\n<li data-start=\"1098\" data-end=\"1205\">\r\n<p data-start=\"1100\" data-end=\"1205\">Payment methods and policies (advance, refunds, cancellations) must be followed as stated during booking.</p>\r\n</li>\r\n<li data-start=\"1206\" data-end=\"1299\">\r\n<p data-start=\"1208\" data-end=\"1299\">Any changes or cancellations must be made within the allowed time frame to avoid penalties.</p>\r\n</li>\r\n</ul><hr data-start=\"1301\" data-end=\"1304\"><h3 data-start=\"1306\" data-end=\"1336\"><strong data-start=\"1310\" data-end=\"1336\">4. Rental Usage Policy</strong></h3><ul data-start=\"1337\" data-end=\"1597\">\r\n<li data-start=\"1337\" data-end=\"1413\">\r\n<p data-start=\"1339\" data-end=\"1413\">Users agree to use the rented vehicle responsibly and within legal limits.</p>\r\n</li>\r\n<li data-start=\"1414\" data-end=\"1492\">\r\n<p data-start=\"1416\" data-end=\"1492\">Any damage or misuse of the vehicle may result in penalties or legal action.</p>\r\n</li>\r\n<li data-start=\"1493\" data-end=\"1597\">\r\n<p data-start=\"1495\" data-end=\"1597\">Smoking, transporting illegal goods, or reckless driving in the rented vehicle is strictly prohibited.</p>\r\n</li>\r\n</ul><hr data-start=\"1599\" data-end=\"1602\"><h3 data-start=\"1604\" data-end=\"1627\"><strong data-start=\"1608\" data-end=\"1627\">5. Admin Rights</strong></h3><ul data-start=\"1628\" data-end=\"1827\">\r\n<li data-start=\"1628\" data-end=\"1729\">\r\n<p data-start=\"1630\" data-end=\"1729\">The admin has the right to approve, reject, or modify bookings and testimonials submitted by users.</p>\r\n</li>\r\n<li data-start=\"1730\" data-end=\"1827\">\r\n<p data-start=\"1732\" data-end=\"1827\">Admins can update car listings, content, and website policies at any time without prior notice.</p>\r\n</li>\r\n</ul><hr data-start=\"1829\" data-end=\"1832\"><h3 data-start=\"1834\" data-end=\"1857\"><strong data-start=\"1838\" data-end=\"1857\">6. Data Privacy</strong></h3><ul data-start=\"1858\" data-end=\"2049\">\r\n<li data-start=\"1858\" data-end=\"1942\">\r\n<p data-start=\"1860\" data-end=\"1942\">User data collected during registration or booking is stored securely using MySQL.</p>\r\n</li>\r\n<li data-start=\"1943\" data-end=\"2049\">\r\n<p data-start=\"1945\" data-end=\"2049\">We do not share personal information with third parties without user consent, except as required by law.</p>\r\n</li>\r\n</ul><hr data-start=\"2051\" data-end=\"2054\"><h3 data-start=\"2056\" data-end=\"2080\"><strong data-start=\"2060\" data-end=\"2080\">7. Website Usage</strong></h3><ul data-start=\"2081\" data-end=\"2291\">\r\n<li data-start=\"2081\" data-end=\"2196\">\r\n<p data-start=\"2083\" data-end=\"2196\">The design and content of the website, including animations and UI elements, are protected intellectual property.</p>\r\n</li>\r\n<li data-start=\"2197\" data-end=\"2291\">\r\n<p data-start=\"2199\" data-end=\"2291\">Users shall not copy, reuse, or distribute any part of the website without prior permission.</p>\r\n</li>\r\n</ul><hr data-start=\"2293\" data-end=\"2296\"><h3 data-start=\"2298\" data-end=\"2332\"><strong data-start=\"2302\" data-end=\"2332\">8. Limitation of Liability</strong></h3><ul data-start=\"2333\" data-end=\"2510\">\r\n<li data-start=\"2333\" data-end=\"2464\">\r\n<p data-start=\"2335\" data-end=\"2464\">We are not responsible for any loss, damage, or inconvenience caused by system errors, data breaches, or car availability issues.</p>\r\n</li>\r\n<li data-start=\"2465\" data-end=\"2510\">\r\n<p data-start=\"2467\" data-end=\"2510\">The use of our service is at your own risk.</p>\r\n</li>\r\n</ul><hr data-start=\"2512\" data-end=\"2515\"><h3 data-start=\"2517\" data-end=\"2550\"><strong data-start=\"2521\" data-end=\"2550\">9. Modifications to Terms</strong></h3><ul data-start=\"2551\" data-end=\"2693\">\r\n<li data-start=\"2551\" data-end=\"2693\">\r\n<p data-start=\"2553\" data-end=\"2693\">These Terms and Conditions may be updated at any time. Continued use of the website after changes indicates acceptance of the updated terms.</p>\r\n</li>\r\n</ul><hr data-start=\"2695\" data-end=\"2698\"><h3 data-start=\"2700\" data-end=\"2731\"><strong data-start=\"2704\" data-end=\"2731\">10. Contact Information</strong></h3><p align=\"justify\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"2732\" data-end=\"2888\">For questions or concerns related to these terms, please contact our support team at:<br data-start=\"2817\" data-end=\"2820\">Email: Support@gmail.com<br data-start=\"2852\" data-end=\"2855\">Phone: 957200000</p>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<p data-start=\"207\" data-end=\"489\">This Privacy Policy describes how we collect, use, store, and protect the personal information you provide while using our Car Rental Service Website. Your privacy is important to us, and we are committed to safeguarding your data in accordance with applicable laws and regulations.</p>\r\n<p data-start=\"491\" data-end=\"994\">When you visit our website, we may collect personal information such as your full name, email address, phone number, address, and driving license details. This information is typically collected during the account creation process, while booking a vehicle, or when interacting with our customer support team. In addition to this, we may automatically collect information related to your usage of the website, such as IP address, browser type, and device information, for analytics and security purposes.</p>\r\n<p data-start=\"996\" data-end=\"1385\">The information we collect is used primarily to provide and improve our services. This includes verifying your identity, managing your bookings, communicating important updates, processing payments, and ensuring a secure and user-friendly experience. We may also use your information to improve the website’s design and functionality and to better understand user preferences and behavior.</p>\r\n<p data-start=\"1387\" data-end=\"1701\">Your data is stored securely in our database, managed through MySQL, and protected using current best practices in data security. Access to your personal information is limited to authorized personnel only, and all necessary precautions are taken to prevent unauthorized access, disclosure, or misuse of your data.</p>\r\n<p data-start=\"1703\" data-end=\"1996\">We respect your privacy and do not sell, rent, or share your personal data with third parties for marketing purposes. However, in certain circumstances, we may share your information with trusted service providers who help us operate the website or with legal authorities when required by law.</p>\r\n<p data-start=\"1998\" data-end=\"2314\">By using our website, you agree to the terms outlined in this Privacy Policy. We reserve the right to update or modify this policy at any time, and any changes will be posted on this page with a revised effective date. Continued use of the website after such changes constitutes your acceptance of the updated terms.</p>\r\n<p data-start=\"2316\" data-end=\"2476\">If you have any questions or concerns regarding this policy or the way your data is handled, you may contact us through the information provided on the website.</p>'),
(3, 'About Us ', 'aboutus', '<div>Aman Kumar, Rani Kumari, and Sanaya Shree collaborated as a dedicated team to create this website as part of their college major project. Each member brought unique strengths to the table—Aman focused on backend development and database management, Rani specialized in front-end design and user experience, while Sanaya contributed with content creation and project coordination. Their combined efforts and diverse skill sets resulted in a well-rounded, functional, and visually appealing platform that reflects their passion for web development and teamwork.<span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif;\"></span></div>\r\n										'),
(11, 'FAQs', 'faqs', '										<p data-start=\"123\" data-end=\"175\" class=\"\"><strong data-start=\"123\" data-end=\"173\">Q1: What documents are required to rent a car?</strong></p>\r\n<blockquote data-start=\"176\" data-end=\"316\">\r\n<p data-start=\"178\" data-end=\"316\" class=\"\">You need a valid driver’s license, a government-issued ID (like a passport or Aadhaar card), and a credit/debit card for security deposit.</p>\r\n</blockquote>\r\n<hr data-start=\"318\" data-end=\"321\" class=\"\">\r\n<p data-start=\"323\" data-end=\"373\" class=\"\"><strong data-start=\"323\" data-end=\"371\">Q2: Is there an age limit for renting a car?</strong></p>\r\n<blockquote data-start=\"374\" data-end=\"479\">\r\n<p data-start=\"376\" data-end=\"479\" class=\"\">Yes, you must be at least 21 years old to rent a car. Some luxury vehicles require a minimum age of 25.</p>\r\n</blockquote>\r\n<hr data-start=\"481\" data-end=\"484\" class=\"\">\r\n<p data-start=\"486\" data-end=\"535\" class=\"\"><strong data-start=\"486\" data-end=\"533\">Q3: Can I rent a car without a credit card?</strong></p>\r\n<blockquote data-start=\"536\" data-end=\"673\">\r\n<p data-start=\"538\" data-end=\"673\" class=\"\">Most rentals require a credit card for the security deposit. However, some locations accept debit cards with additional identification.</p>\r\n</blockquote>\r\n<hr data-start=\"675\" data-end=\"678\" class=\"\">\r\n<p data-start=\"680\" data-end=\"732\" class=\"\"><strong data-start=\"680\" data-end=\"730\">Q4: Is insurance included in the rental price?</strong></p>\r\n<blockquote data-start=\"733\" data-end=\"849\">\r\n<p data-start=\"735\" data-end=\"849\" class=\"\">Basic insurance coverage is included. You can also opt for additional protection plans for complete peace of mind.</p>\r\n</blockquote>\r\n<hr data-start=\"851\" data-end=\"854\" class=\"\">\r\n<p data-start=\"856\" data-end=\"917\" class=\"\"><strong data-start=\"856\" data-end=\"915\">Q5: What happens if the car breaks down during my trip?</strong></p>\r\n<blockquote data-start=\"918\" data-end=\"1019\">\r\n<p data-start=\"920\" data-end=\"1019\" class=\"\">We provide 24/7 roadside assistance. Just call our support team and we’ll arrange help immediately.</p>\r\n</blockquote>\r\n<hr data-start=\"1021\" data-end=\"1024\" class=\"\">\r\n<p data-start=\"1026\" data-end=\"1070\" class=\"\"><strong data-start=\"1026\" data-end=\"1068\">Q6: Can I cancel or change my booking?</strong></p>\r\n<blockquote data-start=\"1071\" data-end=\"1206\">\r\n<p data-start=\"1073\" data-end=\"1206\" class=\"\">Yes, cancellations or modifications are allowed. Please check our cancellation policy for details — early changes may avoid any fees.</p>\r\n</blockquote>\r\n<hr data-start=\"1208\" data-end=\"1211\" class=\"\">\r\n<p data-start=\"1213\" data-end=\"1265\" class=\"\"><strong data-start=\"1213\" data-end=\"1263\">Q7: Do you offer delivery and pickup services?</strong></p>\r\n<blockquote data-start=\"1266\" data-end=\"1375\">\r\n<p data-start=\"1268\" data-end=\"1375\" class=\"\">Absolutely! We offer car delivery to your home, hotel, or office at an additional charge based on distance.</p>\r\n</blockquote>\r\n<hr data-start=\"1377\" data-end=\"1380\" class=\"\">\r\n<p data-start=\"1382\" data-end=\"1421\" class=\"\"><strong data-start=\"1382\" data-end=\"1419\">Q8: Are there any mileage limits?</strong></p>\r\n<blockquote data-start=\"1422\" data-end=\"1522\">\r\n<p data-start=\"1424\" data-end=\"1522\" class=\"\">Most rentals come with unlimited mileage. However, some premium cars may have a daily mileage cap.</p></blockquote>\r\n										');

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
(7, 'amankumar1948sahu@gmail.com', '2025-04-25 04:20:43');

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

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'demo@gmail.com', 'this rental service provides best service', '2025-04-25 03:29:59', 0),
(5, 'amankumar1948sahu@gmail.com', 'good service', '2025-04-25 06:24:33', 1);

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
(1, 'Test', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '6465465465', '', 'L-890, Gaur City Ghaziabad', 'Ghaziabad', 'India', '2024-05-01 14:00:49', '2024-06-05 05:27:37'),
(2, 'Amit', 'amikt12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '1425365214', NULL, NULL, NULL, NULL, '2024-06-05 05:31:05', NULL),
(4, 'Kshitiz', 'demo@gmail.com', '4ee22f3c3f4dd0618b05050117a2b2fb', '9192854566', NULL, NULL, NULL, NULL, '2025-04-25 03:29:15', NULL),
(5, 'tocyo', 'zxc@gmail.com', '37cfff3c04f95b22bcf166df586cd7a9', '284136413', NULL, NULL, NULL, NULL, '2025-04-25 06:21:15', NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-04-27 03:05:05', NULL),
(7, 'Aman', 'amankumar1948sahu@gmail.com', '3b4cda8888069ac083c517ae07ab38dd', '9572112176', NULL, NULL, NULL, NULL, '2025-05-16 04:58:18', NULL);

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
(1, 'Maruti Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 500, 'Petrol', 2019, 5, 'wagon-r-exterior-right-front-three-quarter-5.webp', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-10 07:04:35', '2025-04-24 15:51:31'),
(2, '5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 4000, 'Petrol', 2018, 5, 'new-5-series-exterior-right-front-three-quarter.webp', 'new-5-series-interior-front-row-seats.webp', 'new-5-series-interior-360-degree-camera-control.webp', 'bmw-new-5-series-dashboard17.webp', 'new-5-series-interior-gear-shifter-gear-shifter-stalk.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2024-05-10 07:04:35', '2025-04-24 16:32:47'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 3000, 'Petrol', 2017, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-05-10 07:04:35', '2024-06-05 05:30:33'),
(8, 'Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 1000, 'Petrol', 2018, 5, 'brezza-exterior-right-front-three-quarter-9.webp', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2024-05-10 07:04:35', '2025-04-25 04:57:13'),
(9, 'Maruti Suzuki Swift', 1, 'The Suzuki Swift is a popular compact hatchback known for its sporty design, nimble handling, and excellent fuel efficiency. It\'s a global model that has earned a reputation for reliability, affordability, and fun-to-drive characteristics, making it especially popular among urban drivers and first-time car buyers.', 2000, 'Petrol', 2019, 5, 'swift-exterior-right-front-three-quarter-31.webp', 'swift-interior-front-row-seats.webp', 'swift-interior-infotainment-system-6.webp', 'maruti-suzuki-swift-dashboard3.webp', 'swift-interior-bootspace.webp', 1, 1, NULL, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2025-04-24 15:05:52', NULL),
(10, 'Punch', 8, 'The Tata Punch is a compact SUV that blends the rugged stance of an SUV with the practicality of a hatchback. Built on Tata’s ALFA-ARC platform and designed with the company’s Impact 2.0 design language, it’s aimed at urban users who want style, high ground clearance, and a confident drive in city and semi-urban areas.\r\n\r\n', 1000, 'Petrol', 2023, 5, 'punch-exterior-right-front-three-quarter-57.webp', 'punch-interior-front-row-seats-12.webp', 'punch-interior-infotainment-system-2.webp', 'punch-interior-dashboard-7.webp', 'punch-interior-bootspace-6.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2025-04-24 15:11:15', NULL),
(11, 'Curvv', 8, '?The Tata Curvv is a distinctive SUV-coupé introduced by Tata Motors in 2024, available in both internal combustion engine (ICE) and electric vehicle (EV) variants. It combines a sleek, sloping roofline with robust SUV proportions, offering a blend of style, performance, and advanced features', 2000, 'Petrol', 2025, 5, 'curvv-exterior-right-front-three-quarter-15.webp', 'curvv-interior-rear-row-centre-arm-rest-2.webp', 'curvv-interior-360-degree-camera-control.webp', 'tata-curvv-dashboard2.webp', 'curvv-interior-sunroof-moonroof-2.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-04-24 16:27:38', NULL),
(12, 'Nexon', 8, '?The Tata Curvv is a distinctive SUV-coupé introduced by Tata Motors in 2024, available in both internal combustion engine (ICE) and electric vehicle (EV) variants. It combines a sleek, sloping roofline with robust SUV proportions, offering a blend of style, performance, and advanced features', 2000, 'Petrol', 2024, 5, 'nexon-exterior-right-front-three-quarter-75.webp', 'nexon-facelift-interior-rear-seats.webp', 'tata-nexon-facelift-dashboard17.webp', 'nexon-interior-bootspace-2.webp', 'tata-nexon-gear-shifter-gear-shifter-stalk12.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-04-24 16:29:52', NULL),
(13, 'Harrier', 8, 'The Harrier is a sturdy and imposing SUV, built on a Land Rover platform, and boasts a five-star safety rating. Its spacious and comfortable cabin is replete with tech, features, and a big boot. Driving it is an engaging experience thanks to a potent engine and well-balanced handling.', 2000, 'Petrol', 2023, 7, 'harrier-exterior-right-front-three-quarter-6.webp', 'harrier-facelift-interior-rear-seats-21.webp', 'harrier-facelift-interior-infotainment-system.webp', 'harrier-facelift-interior-dashboard-2.webp', 'harrier-facelift-interior-bootspace.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-04-24 16:35:27', NULL),
(14, 'Tiago', 8, 'The Tiago is Tata\'s compact hatchback with a nice design, reasonable space, and exciting features for an entry-level car. It continues to stand out with competitive pricing, mature ride, CNG efficiency, and a four-star safety rating.', 500, 'Petrol', 2019, 5, 'tiago-exterior-right-front-three-quarter-32.webp', 'tiago-interior-front-row-seats-2.webp', 'tiago-interior-infotainment-system-4.webp', 'tata-tiago-dashboard17.webp', 'tiago-interior-bootspace-2.webp', 1, NULL, 1, NULL, 1, 1, 1, 1, NULL, 1, 1, NULL, '2025-04-24 16:37:37', NULL),
(15, 'Fortuner', 5, 'The Fortuner commands the road with its imposing stance, 4x4 capability, and is known for Toyota\'s bulletproof reliability. It\'s a comfortable seven-seater SUV that covers long distances with ease and comfort.\r\n\r\n', 2000, 'Diesel', 2019, 7, 'fortuner-exterior-right-front-three-quarter-20.webp', 'fortuner-interior-second-row-centre-arm-rest.webp', 'fortuner-facelift-interior-music-system-9.webp', 'fortuner-interior-bootspace.webp', 'fortuner-interior-drive-mode-buttons-terrain-selector.webp', 1, NULL, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-04-24 16:58:18', NULL),
(16, 'Innova Crysta', 5, 'The Innova Crysta is a modern-day multi-purpose vehicle with bulletproof reliability, strong chassis, and an efficient but powerful diesel engine. The Crysta also offers a large cabin, seating for up to eight people, and plenty of storage options across all three rows. \r\n\r\n', 1500, 'Diesel', 2019, 8, 'innova-crysta-exterior-right-front-three-quarter-2.webp', 'innova-crysta-interior-front-row-seats.webp', 'innova-crysta-interior-infotainment-system-6.webp', 'innova-crysta-interior-dashboard.webp', 'toyota-innova-crysta-head-up-display-hud-2.webp', 1, NULL, 1, 1, NULL, 1, 1, 1, NULL, 1, 1, NULL, '2025-04-24 17:01:30', NULL),
(17, 'Magnite', 4, 'The 2024 Nissan Magnite gets a few cosmetic changes and new features. The nomenclature for the facelifted car has changed but the powertrain options remain unchanged with the 1.0-litre petrol engine and transmission options from the outgoing model.\r\n\r\n', 1000, 'Petrol', 2019, 5, 'magnite-facelift-exterior-right-front-three-quarter-2.webp', 'magnite-interior-rear-seats.webp', 'magnite-interior-infotainment-system.webp', 'magnite-interior-dashboard.webp', 'magnite-interior-bootspace-rear-seat-folded.webp', 1, 1, 1, 1, NULL, 1, NULL, 1, NULL, 1, 1, NULL, '2025-04-24 17:06:59', NULL),
(18, 'X-Trail', 4, 'The price of Nissan X Trail, a 7 seater Compact SUV, starts from of Rs. 49.92 Lakh. It is available in 1 variant, with an engine of 1498 cc and a choice of 1 transmission: Automatic. X-Trail comes with 7 airbags. Nissan X Trail has a ground clearance (unladen) of 210 mm and is available in 3 colours. Users have reported a mileage of 13.7 kmpl for X Trail.\r\n', 3000, 'Petrol', 2019, 7, 'x-trail-exterior-right-front-three-quarter-27.webp', 'x-trail-interior-third-row-seats.webp', 'nissan-x-trail-infotainment-system0.webp', 'x-trail-exterior-sunroof-moonroof.webp', 'x-trail-interior-bootspace-second-and-third-row-folded.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-04-25 03:22:26', NULL),
(19, 'Kiger', 9, 'The price of Renault Kiger, a 5 seater Compact SUV, ranges from Rs. 6.15 - 11.23 Lakh. It is available in 19 variants, with an engine of 999 cc and a choice of 2 transmissions: Manual and Automatic. Kiger has an NCAP rating of 4 stars and comes with 4 airbags. Renault Kiger has a ground clearance (unladen) of 205 mm and is available in 9 colours. Users have reported a mileage of 17.63 to 20.4 kmpl for Kiger.', 1000, 'Petrol', 2018, 5, 'kiger-exterior-right-front-three-quarter-9.webp', 'kiger-interior-front-row-seats-18.webp', 'kiger-interior-infotainment-system.webp', 'kiger-interior-dashboard.webp', 'kiger-interior-bootspace.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2025-04-25 05:02:20', NULL),
(20, 'Triber', 9, 'The price of Renault Triber, a 7 seater MUV/MPV, ranges from Rs. 6.15 - 8.98 Lakh. It is available in 11 variants, with an engine of 999 cc and a choice of 2 transmissions: Manual and Automatic. Triber has an NCAP rating of 4 stars and comes with 4 airbags. Renault Triber has a ground clearance (unladen) of 182 mm and is available in 10 colours. Users have reported a mileage of 18.2 to 19 kmpl for Triber.\r\n', 1000, 'Diesel', 2018, 5, 'triber-exterior-right-front-three-quarter-9.webp', 'triber-interior-third-row-seats.webp', 'triber-interior-dashboard-5.webp', 'triber-interior-bootspace.webp', 'triber-interior-ac-controls.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2025-04-25 05:05:20', NULL),
(21, 'XUV700', 10, 'The Mahindra XUV700 features a stylish design and a high-quality cabin, available in five-, six-, and seven-seater configurations. It boasts modern features, high safety ratings, strong performance from both diesel and petrol engine options, and impressive road dynamics, all at a competitive price within its segment.', 1500, 'Petrol', 2022, 7, 'xuv700-exterior-right-front-three-quarter-4.webp', 'xuv700-interior-third-row-seats.webp', 'xuv700-interior-dashboard-2.webp', 'xuv700-interior-sunroof-moonroof.webp', 'xuv700-interior-bootspace.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-04-27 02:34:44', NULL),
(22, 'XUV 3XO', 10, 'The Mahindra XUV 3XO offers a sorted ride and engaging drive, ample space, and modern-day equipment. While its boot space is limited, it isn\'t a deal-breaker, especially considering the compact SUV’s attractive pricing.', 1500, 'Petrol', 2022, 5, 'xuv-3xo-exterior-right-front-three-quarter-34.webp', 'xuv-3xo-interior-rear-seats-2.webp', 'xuv-3xo-interior-dashboard-2.webp', 'xuv-3xo-interior-inner-car-roof.webp', 'xuv-3xo-interior-bootspace-rear-seat-folded.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2025-04-27 02:36:51', NULL),
(23, 'Scorpio N', 10, 'The Scorpio N is a step up from the Scorpio Classic. Though it remains rugged with a commanding presence, it is a premium, large, spacious, and feature-loaded three-row SUV. It has got powerful engine options, seamlessly shifting auto gearboxes, and an absorbent ride, making it great for both city driving and long-distance journeys.', 2000, 'Diesel', 2024, 8, 'scorpio-n-exterior-right-front-three-quarter-76.webp', 'scorpio-n-interior-third-row-seats.webp', 'scorpio-n-interior-dashboard.webp', 'mahindra-scorpio-sunroof-moonroof62.webp', 'scorpio-n-interior-bootspace-5.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2025-04-27 02:38:39', NULL),
(24, 'Thar', 10, 'This new-gen Thar is still a two-door off-roader but drives reasonably well on the road. Its USP continues with durable construction and a rugged stance despite having a modern design. Both petrol and diesel engine options are powerful, offering 4x4 as well.', 1500, 'Petrol', 2020, 5, 'thar-exterior-right-front-three-quarter-37.webp', 'thar-interior-rear-seats.webp', 'thar-interior-inner-car-roof.webp', 'thar-interior-dashboard.webp', 'thar-exterior-open-boot-trunk-46.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-04-27 02:40:56', NULL),
(25, 'Urban Cruiser Hyryder', 5, 'The Hyryder has a handsome stance and exudes a unique and robust look. Inside its ergonomic and feature-laden cabin, there are large seats with a roomy interior.\r\n\r\n', 1500, 'Diesel', 2021, 5, 'hyryder-exterior-right-front-three-quarter-73.webp', 'hyryder-interior-front-row-seats-5.webp', 'urban-cruiser-hyryder-interior-roof-mounted-controls-sunroof-cabin-light-controls.webp', 'hyryder-interior-instrument-cluster-4.webp', 'urban-cruiser-hyryder-interior-bootspace.webp', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-04-27 02:43:08', NULL),
(26, 'Glanza', 5, 'The Toyota Glanza is a practical, user-friendly hatchback ideal for daily use. It offers reasonable performance, efficiency, ample interior space, and modern features, making it a great family car for the typical Indian buyer.', 1000, 'Petrol', 2019, 5, 'glanza-exterior-right-front-three-quarter-5.webp', 'glanza-interior-rear-seats-2.webp', 'glanza-interior-360-degree-camera-control.webp', 'glanza-interior-dashboard-switches.webp', 'glanza-interior-bootspace.webp', 1, 1, 1, NULL, 1, 1, 1, 1, NULL, NULL, 1, NULL, '2025-04-27 02:44:48', NULL),
(27, 'Figo', 11, 'Ford figo is a 5 seater Hatchback with the last recorded price of Rs. 5.23 - 8.37 Lakh. It is available in 16 variants, 1194 to 1499 cc engine options and 2 transmission options : Manual and Automatic. The figo is available in 5 colours. Ford figo mileage ranges from 16 kmpl to 25.5 kmpl.', 1000, 'Petrol', 2016, 5, 'figo-exterior-right-front-three-quarter-151689.avif', 'figo-interior-infotainment-system-2.avif', 'dashboard4.avif', 'instrument-cluster16.avif', 'bootspace26.avif', 1, 1, 1, 1, 1, 1, NULL, 1, NULL, NULL, 1, NULL, '2025-05-22 07:17:07', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
