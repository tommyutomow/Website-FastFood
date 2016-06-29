-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2016 at 07:04 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kfc`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `IDAdministrator` varchar(10) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

CREATE TABLE IF NOT EXISTS `alamat` (
  `IDCustomer` int(10) NOT NULL,
  `Jalan` varchar(25) NOT NULL,
  `NoRumah` varchar(3) NOT NULL,
  `Kabupaten` varchar(10) NOT NULL,
  `Kecamatan` varchar(10) NOT NULL,
  `KodePos` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`IDCustomer` int(10) NOT NULL,
  `NamaCustomer` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Salt` varchar(100) NOT NULL,
  `NoHandphone` varchar(13) NOT NULL,
  `Passalt` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`IDCustomer`, `NamaCustomer`, `Email`, `Username`, `Salt`, `NoHandphone`, `Passalt`) VALUES
(1, 'Tommy', 'tommyutomowijaya@gmail.com', 'tommy', '1950403508567023f4d614d3.75177933', '123456', 'deec8cc18e0f43ca43757e6d4b475b78'),
(2, 'KFC', 'KFC@gmail.com', 'KFC', '76500438456711716e2afd2.33586631', '123455678', 'fc2ddff0fb7d7bef3969595cc79b7edd'),
(3, 'tommy', 'tommyutomow@gmail.com', 'tom', '13129931135773f8f084c1a8.35019479', '0812234567890', '32452c0b74e9f6340f993fd0c95d9ddc');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE IF NOT EXISTS `delivery` (
  `DeliveryID` varchar(10) NOT NULL,
  `Order_ID` int(10) NOT NULL,
  `Delivery_Date` varchar(10) NOT NULL,
  `Delivery_Time` varchar(10) NOT NULL,
  `IDAdministrator` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `NamaCustomer` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(13) NOT NULL,
  `Message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE IF NOT EXISTS `orderdetail` (
  `OrderDetail_ID` varchar(10) NOT NULL,
  `ID_Produk` varchar(10) NOT NULL,
  `Order_ID` int(10) NOT NULL,
  `Quantity` int(3) NOT NULL,
  `Subtotal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetailhistory`
--

CREATE TABLE IF NOT EXISTS `orderdetailhistory` (
  `OrderDetail_ID` varchar(10) NOT NULL,
  `ID_Produk` varchar(10) NOT NULL,
  `Quantity` int(3) NOT NULL,
  `Subtotal` int(10) NOT NULL,
  `Username` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderhistory`
--

CREATE TABLE IF NOT EXISTS `orderhistory` (
  `Order_ID` int(10) NOT NULL,
  `Pesanan` varchar(255) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`Order_ID` int(10) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Pesanan` varchar(255) NOT NULL,
  `Total_Harga` int(10) NOT NULL,
  `Order_Status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Username`, `Pesanan`, `Total_Harga`, `Order_Status`) VALUES
(23, 'tommy', 'Banana  Muffin  Hazelnut Coffe - 1 pcs # French Fries Large - 1 pcs # ', 92000, 'ON PROCESS'),
(24, 'KFC', 'Banana  Muffin  Hazelnut Coffe - 1 pcs # Chicken Strips - 1 pcs # ', 102000, 'ON PROCESS'),
(25, 'KFC', 'French Garden Salad  Crips - 1 pcs # ', 35500, 'ON PROCESS');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE IF NOT EXISTS `paket` (
  `ID_Paket` varchar(10) NOT NULL,
  `NamaPaket` varchar(10) NOT NULL,
  `Harga` int(10) NOT NULL,
  `ID_Produk` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `ID_Produk` varchar(10) NOT NULL,
  `NamaProduk` varchar(25) NOT NULL,
  `Jenis` varchar(25) NOT NULL,
  `Deskripsi` varchar(255) NOT NULL,
  `Quantity` int(3) NOT NULL,
  `Harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE IF NOT EXISTS `promo` (
  `ID_Promo` varchar(10) NOT NULL,
  `NamaPromo` varchar(25) NOT NULL,
  `Harga` int(10) NOT NULL,
  `ID_Produk` varchar(10) NOT NULL,
  `MasaBerlaku` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
 ADD PRIMARY KEY (`IDAdministrator`);

--
-- Indexes for table `alamat`
--
ALTER TABLE `alamat`
 ADD UNIQUE KEY `IDCustomer` (`IDCustomer`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`IDCustomer`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
 ADD PRIMARY KEY (`DeliveryID`), ADD UNIQUE KEY `Order_ID` (`Order_ID`), ADD UNIQUE KEY `IDAdministrator` (`IDAdministrator`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
 ADD PRIMARY KEY (`OrderDetail_ID`), ADD UNIQUE KEY `ID_Produk` (`ID_Produk`), ADD UNIQUE KEY `Order_ID` (`Order_ID`);

--
-- Indexes for table `orderdetailhistory`
--
ALTER TABLE `orderdetailhistory`
 ADD UNIQUE KEY `OrderDetail_ID` (`OrderDetail_ID`);

--
-- Indexes for table `orderhistory`
--
ALTER TABLE `orderhistory`
 ADD UNIQUE KEY `Order_ID` (`Order_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
 ADD PRIMARY KEY (`ID_Paket`), ADD UNIQUE KEY `ID_Produk` (`ID_Produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
 ADD PRIMARY KEY (`ID_Produk`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
 ADD PRIMARY KEY (`ID_Promo`), ADD UNIQUE KEY `ID_Produk` (`ID_Produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `IDCustomer` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `Order_ID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `alamat`
--
ALTER TABLE `alamat`
ADD CONSTRAINT `alamat_ibfk_1` FOREIGN KEY (`IDCustomer`) REFERENCES `customer` (`IDCustomer`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`IDAdministrator`) REFERENCES `administrator` (`IDAdministrator`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `delivery_ibfk_3` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`ID_Produk`) REFERENCES `produk` (`ID_Produk`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `orderdetail_ibfk_3` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetailhistory`
--
ALTER TABLE `orderdetailhistory`
ADD CONSTRAINT `orderdetailhistory_ibfk_1` FOREIGN KEY (`OrderDetail_ID`) REFERENCES `orderdetail` (`OrderDetail_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderhistory`
--
ALTER TABLE `orderhistory`
ADD CONSTRAINT `orderhistory_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paket`
--
ALTER TABLE `paket`
ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`ID_Produk`) REFERENCES `produk` (`ID_Produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promo`
--
ALTER TABLE `promo`
ADD CONSTRAINT `promo_ibfk_1` FOREIGN KEY (`ID_Produk`) REFERENCES `produk` (`ID_Produk`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
