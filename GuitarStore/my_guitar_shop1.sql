-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2021 at 05:01 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_guitar_shop1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE categories (
  categoryID        INT            NOT NULL   AUTO_INCREMENT,
  categoryName      VARCHAR(255)   NOT NULL,
  PRIMARY KEY (categoryID)
);

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryName`) VALUES
('Guitars'),
('Basses'),
('Drums');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE products (
  productID         INT            NOT NULL   AUTO_INCREMENT,
  categoryID        INT            NOT NULL,
  productCode       VARCHAR(10)    NOT NULL,
  productName       VARCHAR(255)   NOT NULL,
  listPrice         DECIMAL(10,2)  NOT NULL,
  PRIMARY KEY (productID), 
  INDEX categoryID (categoryID), 
  UNIQUE INDEX productCode (productCode)
);


--
-- Dumping data for table `products`
--

INSERT INTO `products` (`categoryID`, `productCode`, `productName`, `listPrice`) VALUES
(1, 'strat', 'Fender Stratocaster', '699.00'),
(1, 'les_paul', 'Gibson Les Paul', '1199.00'),
(1, 'sg', 'Gibson SG', '2517.00'),
(1, 'fg700s', 'Yamaha FG700S', '489.99'),
(1, 'washburn', 'Washburn D10S', '299.00'),
(1, 'rodriguez', 'Rodriguez Caballero 11', '415.00'),
(2, 'precision', 'Fender Precision', '799.99'),
(2, 'hofner', 'Hofner Icon', '499.99'),
(3, 'ludwig', 'Ludwig 5-piece Drum Set with Cymbals', '699.99'),
(3, 'tama', 'Tama 5-Piece Drum Set with Cymbals', '799.99');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
