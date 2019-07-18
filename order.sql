-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2017 at 04:56 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `order`
--

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `card_no` varchar(50) NOT NULL,
  `pin` varchar(16) NOT NULL,
  `amount` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`card_no`, `pin`, `amount`) VALUES
('1234567891234567', '123', 4719);

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `id` int(45) NOT NULL,
  `day` varchar(15) DEFAULT NULL,
  `month` varchar(15) NOT NULL,
  `year` varchar(15) DEFAULT NULL,
  `delivery_cost` varchar(15) DEFAULT NULL,
  `employ_cost` varchar(15) DEFAULT NULL,
  `product_cost` varchar(15) DEFAULT NULL,
  `other_cost` varchar(15) DEFAULT NULL,
  `total_cost` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`id`, `day`, `month`, `year`, `delivery_cost`, `employ_cost`, `product_cost`, `other_cost`, `total_cost`) VALUES
(1, '3', '8', '2017', '140', '554', '554', '120', '1686'),
(2, '7', '8', '2017', '50', '75', '75', '21', '1246'),
(3, '9', '9', '2017', '1', '1', '1', '1', '4'),
(4, '10', '8', '2017', '12', '15', '15', '25', '152'),
(5, '10', '8', '2017', '300', '300', '300', '500', '3100'),
(6, '22', '10', '2017', '15', '50', '50', '15', '180');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `selon_tea` int(50) NOT NULL,
  `ispahani_tea` int(50) NOT NULL,
  `darjiling_tea` int(50) NOT NULL,
  `neslay_tea` int(50) NOT NULL,
  `powder_milk` int(50) NOT NULL,
  `sugger` int(50) NOT NULL,
  `message` varchar(100) NOT NULL DEFAULT 'we received your order. soon we deliver your products. Thanks',
  `delivery_status` tinyint(1) NOT NULL DEFAULT '0',
  `price` varchar(50) NOT NULL DEFAULT '0',
  `vat` varchar(50) NOT NULL DEFAULT '0',
  `total_price` varchar(50) NOT NULL DEFAULT '0',
  `delivery_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `email`, `selon_tea`, `ispahani_tea`, `darjiling_tea`, `neslay_tea`, `powder_milk`, `sugger`, `message`, `delivery_status`, `price`, `vat`, `total_price`, `delivery_type`) VALUES
(1, 'rakib@gmail.com', 1, 2, 2, 3, 1, 5, 'finished', 1, '1000', '150', '1150', 'Cash'),
(2, 'dilruba@gmail.com', 1, 2, 5, 4, 1, 2, 'finished', 1, '2000', '150', '2150', 'Cash'),
(3, 'test1@gmail.com', 5, 5, 5, 5, 5, 5, 'finished', 1, '1215', '161', '1939.55', 'Cash'),
(4, 'test2@gmail.com', 5, 5, 5, 5, 5, 5, 'we received your order. soon we deliver your products. Thanks', 0, '1215', '161.0', '1339.55', 'Pending'),
(5, 'test4@gmail.com', 14, 14, 14, 14, 14, 14, 'we received your order. soon we deliver your products. Thanks', 0, '3402', '450.8', '3852.8', 'Cash'),
(6, 'test5@gmail.com', 5, 5, 5, 5, 5, 5, 'we received your order. soon we deliver your products. Thanks', 0, '1215', '161.0', '1339.55', 'Pending'),
(7, 'test7@gmail.com', 5, 5, 5, 5, 5, 5, 'we received your order. soon we deliver your products. Thanks', 0, '1215', '161.0', '1339.55', 'Pending'),
(8, 'test8@gmail.com', 5, 5, 5, 5, 5, 5, 'we received your order. soon we deliver your products. Thanks', 0, '1215', '161.0', '1339.55', 'Card'),
(9, 'test8@gmail.com', 10, 10, 10, 10, 10, 10, 'we received your order. soon we deliver your products. Thanks', 0, '2430', '322.0', '2630.5', 'Card'),
(10, 'test6@gmail.com', 1, 2, 1, 2, 3, 4, 'we received your order. soon we deliver your products. Thanks', 0, '616', '83.2', '699.2', 'Pending'),
(11, 'test9@gmail.com', 1, 2, 1, 4, 2, 4, 'we received your order. soon we deliver your products. Thanks', 0, '561', '73.2', '634.2', 'Pending'),
(12, 'test10@gmail.com', 5, 5, 5, 5, 5, 5, 'we received your order. soon we deliver your products. Thanks', 0, '1215', '161.0', '1339.55', 'Card'),
(13, 'rakib@gmail.com', 1, 1, 1, 1, 1, 1, 'we received your order. soon we deliver your products. Thanks', 0, '243', '32.2', '275.2', 'Card'),
(14, 'dilruba@gmail.com', 1, 1, 0, 0, 1, 0, 'we received your order. soon we deliver your products. Thanks', 0, '168', '23.0', '191.0', 'Card'),
(15, 'test1@gmail.com', 1, 0, 0, 1, 0, 1, 'we received your order. soon we deliver your products. Thanks', 0, '70', '8.0', '78.0', 'Card'),
(16, 'test2@gmail.com', 0, 0, 0, 0, 1, 0, 'we received your order. soon we deliver your products. Thanks', 0, '125', '18.0', '143.0', 'Card'),
(17, 'test3@gmail.com', 0, 1, 0, 0, 0, 0, 'we received your order. soon we deliver your products. Thanks', 0, '28', '3.5', '31.5', 'Card'),
(18, 'test4@gmail.com', 5, 5, 5, 5, 5, 5, 'we received your order. soon we deliver your products. Thanks', 0, '1215', '161.0', '1339.55', 'Card'),
(19, 'test6@gmail.com', 0, 1, 0, 0, 0, 0, 'we received your order. soon we deliver your products. Thanks', 0, '28', '3.5', '31.5', 'Card'),
(23, 'rakib38@diit.info', 5, 5, 5, 5, 5, 5, 'we received your order. soon we deliver your products. Thanks', 0, '1215', '161.0', '1339.55', 'Pending'),
(24, 'test3@gmail.com', 5, 5, 5, 5, 5, 5, 'we received your order. soon we deliver your products. Thanks', 0, '1215', '161.0', '1339.55', 'Card'),
(25, 'test7@gmail.com', 1, 0, 1, 0, 0, 2, 'we received your order. soon we deliver your products. Thanks', 0, '75', '9.2', '84.2', 'Card'),
(26, 'rakib@gmail.com', 0, 0, 0, 0, 1, 0, 'we received your order. soon we deliver your products. Thanks', 0, '125', '18.0', '143.0', 'Card'),
(27, 'dilruba@gmail.com', 1, 1, 0, 0, 0, 0, 'we received your order. soon we deliver your products. Thanks', 0, '43', '5.0', '48.0', 'Pending'),
(28, 'test1@gmail.com', 1, 1, 0, 1, 0, 0, 'we received your order. soon we deliver your products. Thanks', 0, '78', '9.0', '87.0', 'Pending'),
(29, 'test1@gmail.com', 1, 0, 0, 0, 0, 1, 'we received your order. soon we deliver your products. Thanks', 0, '35', '4.0', '39.0', 'Card');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_name` varchar(50) NOT NULL,
  `price` varchar(50) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_name`, `price`, `vat`) VALUES
('darjiling_tea', '20', '2.7'),
('ispahani_tea', '28', '3.5'),
('neslay_tea', '35', '4'),
('powder_milk', '125', '18'),
('Selon Tea', '15', '1.5'),
('sugger', '20', '2.50');

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE `quantity` (
  `product_name` varchar(25) NOT NULL,
  `product_quantity` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quantity`
--

INSERT INTO `quantity` (`product_name`, `product_quantity`) VALUES
('darjiling_tea', 84),
('ispahani_tea', 63),
('neslay_tea', 84),
('powder_milk', 84),
('selon_tea', 201),
('sugger', 42);

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `name` varchar(40) NOT NULL,
  `shop_name` varchar(40) NOT NULL,
  `trade_licence_no` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `location` varchar(40) NOT NULL,
  `contact` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`name`, `shop_name`, `trade_licence_no`, `email`, `password`, `location`, `contact`) VALUES
('dilruba', 'aspBazar', '45826', 'dilruba@gmail.com', '123', 'dhaka', 123456789),
('Sunno Rakib', 'Sunno Corner', '456123', 'rakib38@diit.info', '123', 'Dhaka', 1680023583),
('rakib', 'tea@coffe', '12345', 'rakib@gmail.com', '123', 'Dhaka', 1680023583),
('rakib', 'Shopping Tea corner', '123456', 'rakibdiu2015@gmail.com', '123', 'Dhaka', 1680023583),
('test10', 'test10 Shop', '456789', 'test10@gmail.com', '123', 'Dhaka', 1754682345),
('test1', 'test1 shop', '564689', 'test1@gmail.com', '123', 'Dhaka', 125345687),
('test2', 'test2 Shop', '124563', 'test2@gmail.com', '123', 'Dhaka', 17450215),
('test3', 'test3 Shop', '456789', 'test3@gmail.com', '123', 'Dhaka', 1754682345),
('test4', 'test4 Shop', '456789', 'test4@gmail.com', '123', 'Dhaka', 1754682345),
('test5', 'test5 Shop', '456789', 'test5@gmail.com', '123', 'Dhaka', 1754682345),
('test6', 'test6 Shop', '456789', 'test6@gmail.com', '123', 'Dhaka', 1754682345),
('test7', 'test7 Shop', '456789', 'test7@gmail.com', '123', 'Dhaka', 1754682345),
('test8', 'test8 Shop', '456789', 'test8@gmail.com', '123', 'Dhaka', 1754682345),
('test9', 'test9 Shop', '456789', 'test9@gmail.com', '123', 'Dhaka', 1754682345);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`card_no`);

--
-- Indexes for table `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_name`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`product_name`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cost`
--
ALTER TABLE `cost`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`email`) REFERENCES `reg` (`email`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
