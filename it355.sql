-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2017 at 11:59 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it355`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `authoritiesId` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `authority` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`authoritiesId`, `username`, `authority`) VALUES
(5, 'admin', 'ROLE_ADMIN'),
(8, 'bojana', 'ROLE_USER'),
(9, 'milan', 'ROLE_USER'),
(7, 'qwe', 'ROLE_USER'),
(10, 'sara', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `customerEmail` varchar(50) NOT NULL,
  `customerPhone` varchar(50) NOT NULL,
  `customerStreetName` varchar(50) NOT NULL,
  `customerCity` varchar(50) NOT NULL,
  `customerCountry` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerId`, `customerName`, `customerEmail`, `customerPhone`, `customerStreetName`, `customerCity`, `customerCountry`, `username`, `password`, `enabled`) VALUES
(3, 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 1),
(4, 'bojana', 'bojana@bojana.com', '0691324231', 'Kralja Petra 13', 'Beograd', 'Srbija', 'bojana', 'bojana', 1),
(5, 'Milan', 'milan@milan.com', '063323432', 'Njegoseva 55', 'Beograd', 'Srbija', 'milan', 'milan', 1),
(6, 'Sara', 'sara@sara.com', '064565342', 'Bilecka 33', 'Beograd', 'Srbija', 'sara', 'sara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordersId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `ordersName` varchar(50) DEFAULT NULL,
  `dateCreation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ordersId`, `username`, `ordersName`, `dateCreation`) VALUES
(2, 'bojana', 'New Order', '2017-06-27'),
(3, 'sara', 'New Order', '2017-06-28'),
(4, 'milan', 'New Order', '2017-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `ordersdetail`
--

CREATE TABLE `ordersdetail` (
  `ordersDetailId` int(11) NOT NULL,
  `productId` int(11) NOT NULL DEFAULT '0',
  `ordersId` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordersdetail`
--

INSERT INTO `ordersdetail` (`ordersDetailId`, `productId`, `ordersId`, `price`, `quantity`) VALUES
(3, 25, 3, '330.00', 1),
(4, 23, 4, '550.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(50) DEFAULT NULL,
  `productDescription` varchar(256) DEFAULT NULL,
  `productCategory` varchar(50) DEFAULT NULL,
  `productPrice` double DEFAULT NULL,
  `productStatus` varchar(50) DEFAULT NULL,
  `unitInStock` int(11) DEFAULT NULL,
  `productManufacturer` varchar(50) DEFAULT NULL,
  `productImage` varchar(250) DEFAULT NULL,
  `CATEGORY_ID` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `productDescription`, `productCategory`, `productPrice`, `productStatus`, `unitInStock`, `productManufacturer`, `productImage`, `CATEGORY_ID`, `id`, `description`, `name`, `price`) VALUES
(23, 'BMW', 'M4', 'Limuzina', 550, 'active', 2, 'Focus', '/RentACar/resources/images/bmw.jpg', NULL, 0, NULL, NULL, NULL),
(24, 'Volkswagen', 'Golf 7', 'Hecbek', 290, 'active', 4, 'Godo', '/RentACar/resources/images/golf7.jpg', NULL, 0, NULL, NULL, NULL),
(25, 'Mercedes', 'E klasa', 'Limuzina', 330, 'active', 3, 'Culke', '/RentACar/resources/images/mercedes.jpg', NULL, 0, NULL, NULL, NULL),
(26, 'Audi', 'A3', 'Hecbek', 250, NULL, 4, 'Kento', '/RentACar/resources/images/audi.jpg', NULL, 0, NULL, NULL, NULL),
(27, 'Volkswagen', 'Passat b6', 'Karavan', 170, 'active', 2, 'Horus', '/RentACar/resources/images/vw.jpg', NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `username`, `password`, `enabled`) VALUES
(4, 'filip.micic.2388', 'filip', 1),
(5, 'admin', 'admin', 1),
(6, 'micic.filip', 'micic123', 1),
(7, 'qwe', 'qwe', 1),
(8, 'bojana', 'bojana', 1),
(9, 'milan', 'milan', 1),
(10, 'sara', 'sara', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`authoritiesId`),
  ADD UNIQUE KEY `uni_username_role` (`authority`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerId`),
  ADD UNIQUE KEY `uni_username_email` (`customerEmail`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordersId`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD PRIMARY KEY (`ordersDetailId`),
  ADD KEY `productId` (`productId`),
  ADD KEY `ordersId` (`ordersId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `FK_aw9jgye45klh3ktuv4re138cd` (`CATEGORY_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`),
  ADD KEY `Index 2` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorities`
--
ALTER TABLE `authorities`
  MODIFY `authoritiesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ordersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ordersdetail`
--
ALTER TABLE `ordersdetail`
  MODIFY `ordersDetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_customer_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_customer` FOREIGN KEY (`username`) REFERENCES `customer` (`username`);

--
-- Constraints for table `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD CONSTRAINT `FK_ordersdetail_orders` FOREIGN KEY (`ordersId`) REFERENCES `orders` (`ordersId`),
  ADD CONSTRAINT `FK_ordersdetail_product` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_aw9jgye45klh3ktuv4re138cd` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
