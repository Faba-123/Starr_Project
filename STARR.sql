-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 08:32 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starr`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `ClientID` int(11) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `Phonenumber` varchar(15) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `dateOfRegistration` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`ClientID`, `fname`, `lname`, `dob`, `Phonenumber`, `email`, `address`, `dateOfRegistration`) VALUES
(4501, 'Donald', 'Trump', '1990-01-02', '+233556766543', 'Tema', 'donaldt@gmail.com', '2020-05-08'),
(4502, 'Miriam', 'Duke', '1999-08-02', '+23355456548', 'kumasi', 'miriam56@gmail.com', '2015-09-15'),
(4503, 'Piers', 'Morgan', '1980-01-03', '+233556788543', 'Tamale', 'piers23@gmail.com', '2018-10-24'),
(4504, 'Oliver', 'Junior', '1982-01-07', '+233596786573', 'Haatso', 'donjunior@gmail.com', '2020-09-15'),
(4505, 'Ivanka', 'Asare', '1990-11-10', '+100876766543', 'East legon', 'ivanaka@gmail.com', '2020-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'Becky Fins', 'beck.jay@gmail.com', 597834227, 'I want a birthday photoshoot and a normal one for my Instagram'),
(2, 'Benson Adjei', 'ben.12@gmail.com', 2078913145, '');

-- --------------------------------------------------------

--
-- Table structure for table `contentphotography`
--

CREATE TABLE `contentphotography` (
  `CPID` int(11) NOT NULL,
  `photoID` int(11) NOT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `TypeOfContent` varchar(50) DEFAULT NULL,
  `Price` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contentphotography`
--

INSERT INTO `contentphotography` (`CPID`, `photoID`, `Location`, `TypeOfContent`, `Price`) VALUES
(6791, 1601, 'Kwabenya', 'Blog', '2540.00'),
(6792, 1602, 'Kwabenya', 'Listicles', '3000.00'),
(6793, 1603, 'Kwabenya', 'Infographics', '5500.00'),
(6794, 1604, 'Accra', 'Podcast', '4240.00'),
(6795, 1601, 'Kotwi', 'Social Media', '7400.00'),
(6796, 1602, 'Kaaso', 'Blog', '1100.00'),
(6797, 1603, 'Madina', 'Infographics', '5000.00'),
(6798, 1602, 'Tarkwa', 'Social Media', '9000.00'),
(6799, 1604, 'Texas', 'Podcast', '3340.00'),
(6800, 1604, 'Ontario', 'Podcast', '2140.00');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseID` int(11) NOT NULL,
  `instructorID` int(11) NOT NULL,
  `E_MID` int(11) NOT NULL,
  `TypeOfCourse` varchar(50) DEFAULT NULL,
  `FloorLevel` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseID`, `instructorID`, `E_MID`, `TypeOfCourse`, `FloorLevel`) VALUES
(2001, 1300, 5500, 'ArtDesign', '8A'),
(2002, 1301, 5501, 'Graphic Design', '8B'),
(2003, 1302, 5502, 'Graphic Design', '8A'),
(2004, 1303, 5503, 'Photography', '8C'),
(2005, 1304, 5504, 'Graphic Design', '8E');

-- --------------------------------------------------------

--
-- Table structure for table `crudop`
--

CREATE TABLE `crudop` (
  `crud_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crudop`
--

INSERT INTO `crudop` (`crud_id`, `name`, `email`, `password`, `image`) VALUES
(1, 'Belinda Gyan', 'bel.89@yahoo.com', 'vbh7860', ''),
(2, 'Mimi Kuaku', 'mimi12@gmail.com', '12345you', ''),
(3, 'John Gyamfi', 'joe.97@ashesi.edu.gh', '1234tiop', ''),
(6, 'Becky Hanson', 'beci12@gmail.com', '167%0[]', ''),
(10, 'David Kojo', 'kojo@gmail.com', '123458', ''),
(11, 'Becki Hollgan', 'hollgan.3@gmail.com', '12345', ''),
(12, 'Killy Asder', 'killy@hotmail.com', '123wdcgy()', ''),
(13, 'Jill Aseidu', 'jill@yahoo.com', '678ihbko', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeID` int(11) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `degree` varchar(25) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `ArrivalTime` datetime DEFAULT NULL,
  `DeptureTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employeeID`, `fname`, `lname`, `DOB`, `degree`, `email`, `ArrivalTime`, `DeptureTime`) VALUES
(11, 'Gloria', 'Jackson', '1995-09-15', 'Tertiary Level', 'gloria.jack@gmail.com', '2021-05-05 08:00:56', '2021-05-05 16:42:10'),
(12, 'Pele', 'Antwi', '1980-05-08', 'Masters', 'pele.antwi@gmail.com', '2021-05-05 08:15:20', '2021-05-05 17:03:10'),
(13, 'Opana', 'McJackson', '1990-09-15', 'Tertiary Level', 'opanMc@gmail.com', '2021-05-04 16:30:56', '2021-05-04 16:42:10'),
(14, 'Abena', 'Gymafi', '2000-12-05', 'Secondary Level', 'Abena.gyamfi@gmail.com', '2021-05-03 17:40:56', '2021-05-03 16:42:10'),
(15, 'Abu', 'Nsiah', '1963-02-14', 'Tertiary Level', 'Adu.nsiah@gmail.com', '2021-05-02 18:00:56', '2021-05-02 16:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `enrolled_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`enrolled_id`, `name`, `email`, `phone_number`, `course`) VALUES
(1, 'Miriam', 'faba.x0@gmail.com', '0207875662', 'Photography'),
(2, 'Benson Adjei', 'ben.12@gmail.com', '02078913145', 'Photography');

-- --------------------------------------------------------

--
-- Table structure for table `equipmentteam`
--

CREATE TABLE `equipmentteam` (
  `EquipmentteamID` int(11) NOT NULL,
  `salary` decimal(5,2) DEFAULT NULL,
  `FloorLevel` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipmentteam`
--

INSERT INTO `equipmentteam` (`EquipmentteamID`, `salary`, `FloorLevel`) VALUES
(900, '350.00', '3A'),
(901, '350.00', '3C'),
(902, '250.00', '3D'),
(903, '140.00', '3B'),
(904, '230.00', '3E');

-- --------------------------------------------------------

--
-- Table structure for table `equip_materials`
--

CREATE TABLE `equip_materials` (
  `E_MID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `nameofE_M` varchar(50) DEFAULT NULL,
  `dateOfPurchased` date DEFAULT NULL,
  `NumOfUsage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equip_materials`
--

INSERT INTO `equip_materials` (`E_MID`, `employeeID`, `nameofE_M`, `dateOfPurchased`, `NumOfUsage`) VALUES
(5500, 11, 'Canvas', '2018-03-15', 15),
(5501, 12, 'Photoshop', '2021-03-25', 20),
(5502, 13, 'Illustrator', '2020-07-05', 30),
(5503, 14, 'Canon EOS 6D', '2017-03-15', 5),
(5504, 15, 'Illustrator', '2019-03-15', 35);

-- --------------------------------------------------------

--
-- Table structure for table `eventphotography`
--

CREATE TABLE `eventphotography` (
  `EPID` int(11) NOT NULL,
  `photoID` int(11) NOT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `TypeOfEvent` varchar(50) DEFAULT NULL,
  `Price` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventphotography`
--

INSERT INTO `eventphotography` (`EPID`, `photoID`, `Location`, `TypeOfEvent`, `Price`) VALUES
(7891, 1605, 'Kwabenya', 'Wedding', '240.00'),
(7892, 1604, 'Haatso', 'NewBorn', '100.00'),
(7893, 1603, 'East Legon', 'Birthday', '450.00'),
(7894, 1602, 'Cantoment', 'Workshop', '200.00'),
(7895, 1601, 'Trasaco', 'Wedding', '500.00'),
(7896, 1602, 'Osu', 'Party', '350.00'),
(7897, 1603, 'Santasi', 'Seminar', '900.00'),
(7898, 1604, 'Kwadaso', 'NewBorn', '150.00'),
(7899, 1605, 'Breman', 'Birthday Party', '300.00'),
(7900, 1602, 'Ejisu', 'Concert', '600.00');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `instructorID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `salary` decimal(6,2) DEFAULT NULL,
  `Floorlevel` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructorID`, `employeeID`, `salary`, `Floorlevel`) VALUES
(1300, 11, '1600.00', '4D'),
(1301, 12, '5500.00', '4A'),
(1302, 13, '3400.00', '4C'),
(1303, 14, '2600.00', '4C'),
(1304, 15, '8600.00', '4E');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `managerID` int(11) NOT NULL,
  `salary` decimal(6,2) DEFAULT NULL,
  `FloorLevel` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`managerID`, `salary`, `FloorLevel`) VALUES
(1234, '7000.00', '5A'),
(1235, '6500.00', '5B'),
(1236, '4500.00', '5C'),
(1237, '9000.00', '5C'),
(1238, '8500.00', '5A');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `PackageID` int(11) NOT NULL,
  `typeofPackage` varchar(50) DEFAULT NULL,
  `Budget` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`PackageID`, `typeofPackage`, `Budget`) VALUES
(3445, 'Event Photography', '5000.00'),
(3455, 'Event Photography', '5000.00'),
(3456, 'Content Photography', '10000.00'),
(3457, 'Course', '35000.00'),
(3477, 'Course', '3000.00');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `card_number` int(14) NOT NULL,
  `client` varchar(30) NOT NULL,
  `cvv` int(3) NOT NULL,
  `mon` varchar(5) NOT NULL,
  `year` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `card_number`, `client`, `cvv`, `mon`, `year`) VALUES
(1, 2147483647, 'Wendy Shay', 123, 'Oct', '2024'),
(2, 2147483647, 'Becky Janson', 140, 'Sep', '2024'),
(3, 2147483647, 'Hydes Blank', 456, 'Nov', '2024'),
(4, 2147483647, 'Hydes Blank', 456, 'Nov', '2024'),
(5, 2147483647, 'Johnna Wales', 678, 'Nov', '2024');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethod`
--

CREATE TABLE `paymentmethod` (
  `PackageID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `TypeOfPayment` varchar(50) DEFAULT NULL,
  `DateOfPayment` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymentmethod`
--

INSERT INTO `paymentmethod` (`PackageID`, `ClientID`, `TypeOfPayment`, `DateOfPayment`) VALUES
(3455, 4501, 'Cheque', '2020-12-25 00:00:00'),
(3457, 4502, 'MobileMoney', '2021-11-18 00:00:00'),
(3456, 4503, 'Cash', '2021-01-10 00:00:00'),
(3455, 4504, 'Card', '2020-09-28 00:00:00'),
(3455, 4505, 'MobileMoney', '2020-07-12 00:00:00'),
(3455, 4502, 'Card', '2021-08-15 00:00:00'),
(3456, 4503, 'Cash', '2020-01-18 00:00:00'),
(3477, 4504, 'Cheque', '2020-10-16 00:00:00'),
(3455, 4501, 'Card', '2020-11-19 00:00:00'),
(3456, 4503, 'MobileMoney', '2020-12-20 00:00:00'),
(3455, 4502, 'Cash', '2020-01-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `photographer`
--

CREATE TABLE `photographer` (
  `photoID` int(11) NOT NULL,
  `PackageID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `salary` decimal(6,2) DEFAULT NULL,
  `FloorLevel` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photographer`
--

INSERT INTO `photographer` (`photoID`, `PackageID`, `employeeID`, `salary`, `FloorLevel`) VALUES
(1601, 3445, 11, '4460.00', '6A'),
(1602, 3455, 12, '5000.00', '6B'),
(1603, 3457, 13, '1000.00', '6A'),
(1604, 3456, 14, '5500.00', '6D'),
(1605, 3455, 15, '4760.00', '6C');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `managerID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `DateofPlan` date DEFAULT NULL,
  `NumOfAttendance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`managerID`, `employeeID`, `DateofPlan`, `NumOfAttendance`) VALUES
(1235, 11, '2020-06-13', 20),
(1236, 15, '2019-09-15', 25),
(1237, 12, '2020-07-17', 18),
(1238, 13, '2021-05-13', 6),
(1235, 14, '2018-12-05', 29),
(1236, 11, '2021-01-28', 35),
(1238, 13, '2021-05-13', 50),
(1237, 14, '2010-11-11', 20),
(1236, 15, '2018-06-13', 10),
(1238, 12, '2021-08-03', 99);

-- --------------------------------------------------------

--
-- Table structure for table `pricing`
--

CREATE TABLE `pricing` (
  `price_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `prices` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricing`
--

INSERT INTO `pricing` (`price_id`, `name`, `email`, `phone_number`, `prices`) VALUES
(1, 'Hydes Blank', 'blank.1@hotmail.com', '05912345678', 'Standard'),
(2, 'Johnna Wales', 'joan.1@hotmail.com', '02040897612', 'Basic');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `PackageID` int(11) NOT NULL,
  `startOfpromo` date DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `endOfpromo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`PackageID`, `startOfpromo`, `discount`, `endOfpromo`) VALUES
(3457, '2021-12-25', '15%', '2021-12-31'),
(3456, '2021-12-25', '10%', '2021-08-15'),
(3445, '2021-11-25', '25%', '2021-07-09'),
(3457, '2021-12-25', '30%', '2020-02-14'),
(3455, '2021-02-25', '15%', '2021-07-09'),
(3457, '2021-12-25', '20%', '2021-05-11'),
(3456, '2021-10-25', '5%', '2021-04-21'),
(3445, '2021-12-25', '35%', '2021-03-14'),
(3477, '2021-12-25', '50%', '2021-02-01'),
(3445, '2021-12-25', '70%', '2021-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `receptionteam`
--

CREATE TABLE `receptionteam` (
  `RecepID` int(11) NOT NULL,
  `salary` decimal(5,2) DEFAULT NULL,
  `FloorLevel` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receptionteam`
--

INSERT INTO `receptionteam` (`RecepID`, `salary`, `FloorLevel`) VALUES
(1100, '400.00', '2C'),
(1101, '450.00', '2E'),
(1102, '800.00', '2C'),
(1103, '500.00', '2A'),
(1104, '500.00', '2E');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `instructorID` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `periodOfCourse` varchar(50) DEFAULT NULL,
  `MeetingDays` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`instructorID`, `courseID`, `periodOfCourse`, `MeetingDays`) VALUES
(1300, 2002, '6weeks', 'Wed, Thurs'),
(1301, 2003, '6weeks', 'Mon, Tues'),
(1302, 2004, '7weeks', 'Thurs, Sat'),
(1303, 2005, '8weeks', 'Fri, Sat'),
(1304, 2003, '8weeks', 'Mon, Wed'),
(1302, 2002, '7weeks', 'Tues, Thurs'),
(1304, 2005, '5weeks', 'Wed, Sat'),
(1301, 2001, '6weeks', 'Mon, Fri'),
(1303, 2003, '4weeks', 'Thurs, Fri'),
(1304, 2005, '2weeks', 'Wed, Thurs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_client` (`fname`,`lname`,`dateOfRegistration`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `contentphotography`
--
ALTER TABLE `contentphotography`
  ADD PRIMARY KEY (`CPID`),
  ADD KEY `photoID` (`photoID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseID`),
  ADD KEY `instructorID` (`instructorID`),
  ADD KEY `E_MID` (`E_MID`);

--
-- Indexes for table `crudop`
--
ALTER TABLE `crudop`
  ADD PRIMARY KEY (`crud_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_name` (`lname`,`fname`,`ArrivalTime`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD PRIMARY KEY (`enrolled_id`);

--
-- Indexes for table `equipmentteam`
--
ALTER TABLE `equipmentteam`
  ADD PRIMARY KEY (`EquipmentteamID`);

--
-- Indexes for table `equip_materials`
--
ALTER TABLE `equip_materials`
  ADD PRIMARY KEY (`E_MID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- Indexes for table `eventphotography`
--
ALTER TABLE `eventphotography`
  ADD PRIMARY KEY (`EPID`),
  ADD KEY `photoID` (`photoID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`instructorID`),
  ADD KEY `istr_fk` (`employeeID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`managerID`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`PackageID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
  ADD KEY `PackageID` (`PackageID`),
  ADD KEY `ClientID` (`ClientID`),
  ADD KEY `pay_index` (`TypeOfPayment`,`DateOfPayment`);

--
-- Indexes for table `photographer`
--
ALTER TABLE `photographer`
  ADD PRIMARY KEY (`photoID`),
  ADD KEY `employeeID` (`employeeID`),
  ADD KEY `PackageID` (`PackageID`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD KEY `employeeID` (`employeeID`),
  ADD KEY `managerID` (`managerID`);

--
-- Indexes for table `pricing`
--
ALTER TABLE `pricing`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD KEY `idx_promo` (`PackageID`,`discount`);

--
-- Indexes for table `receptionteam`
--
ALTER TABLE `receptionteam`
  ADD PRIMARY KEY (`RecepID`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD KEY `instructorID` (`instructorID`),
  ADD KEY `courseID` (`courseID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4506;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contentphotography`
--
ALTER TABLE `contentphotography`
  MODIFY `CPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6801;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2006;

--
-- AUTO_INCREMENT for table `crudop`
--
ALTER TABLE `crudop`
  MODIFY `crud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `enrolled`
--
ALTER TABLE `enrolled`
  MODIFY `enrolled_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `equipmentteam`
--
ALTER TABLE `equipmentteam`
  MODIFY `EquipmentteamID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=905;

--
-- AUTO_INCREMENT for table `equip_materials`
--
ALTER TABLE `equip_materials`
  MODIFY `E_MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5505;

--
-- AUTO_INCREMENT for table `eventphotography`
--
ALTER TABLE `eventphotography`
  MODIFY `EPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7901;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `instructorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1305;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `managerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1239;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `PackageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3478;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photographer`
--
ALTER TABLE `photographer`
  MODIFY `photoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1606;

--
-- AUTO_INCREMENT for table `pricing`
--
ALTER TABLE `pricing`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `receptionteam`
--
ALTER TABLE `receptionteam`
  MODIFY `RecepID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1105;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contentphotography`
--
ALTER TABLE `contentphotography`
  ADD CONSTRAINT `contentphotography_ibfk_1` FOREIGN KEY (`photoID`) REFERENCES `photographer` (`photoID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`instructorID`) REFERENCES `instructor` (`instructorID`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`E_MID`) REFERENCES `equip_materials` (`E_MID`);

--
-- Constraints for table `equip_materials`
--
ALTER TABLE `equip_materials`
  ADD CONSTRAINT `equip_materials_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`);

--
-- Constraints for table `eventphotography`
--
ALTER TABLE `eventphotography`
  ADD CONSTRAINT `eventphotography_ibfk_1` FOREIGN KEY (`photoID`) REFERENCES `photographer` (`photoID`);

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `istr_fk` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`);

--
-- Constraints for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
  ADD CONSTRAINT `paymentmethod_ibfk_1` FOREIGN KEY (`PackageID`) REFERENCES `package` (`PackageID`),
  ADD CONSTRAINT `paymentmethod_ibfk_2` FOREIGN KEY (`ClientID`) REFERENCES `clients` (`ClientID`);

--
-- Constraints for table `photographer`
--
ALTER TABLE `photographer`
  ADD CONSTRAINT `photographer_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`),
  ADD CONSTRAINT `photographer_ibfk_2` FOREIGN KEY (`PackageID`) REFERENCES `package` (`PackageID`);

--
-- Constraints for table `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`),
  ADD CONSTRAINT `plans_ibfk_2` FOREIGN KEY (`managerID`) REFERENCES `manager` (`managerID`);

--
-- Constraints for table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `promotion_ibfk_1` FOREIGN KEY (`PackageID`) REFERENCES `package` (`PackageID`);

--
-- Constraints for table `teaches`
--
ALTER TABLE `teaches`
  ADD CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`instructorID`) REFERENCES `instructor` (`instructorID`),
  ADD CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
