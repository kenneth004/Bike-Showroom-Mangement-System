-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 16, 2020 at 05:12 AM
-- Server version: 5.7.20
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bike_showroom_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bike`
--

CREATE TABLE IF NOT EXISTS `bike` (
  `bike_id` int(11) NOT NULL,
  `bike_name` varchar(255) NOT NULL,
  `bike_type_id` int(11) NOT NULL,
  `bike_company_id` int(11) NOT NULL,
  `bike_price` varchar(255) NOT NULL,
  `bike_image` varchar(255) NOT NULL,
  `bike_description` text NOT NULL,
  `bike_fuel_type` varchar(255) NOT NULL,
  `bike_number` varchar(255) NOT NULL,
  `bike_length` varchar(255) NOT NULL,
  `bike_width` varchar(255) NOT NULL,
  `bike_height` varchar(255) NOT NULL,
  `bike_displacement` varchar(255) NOT NULL,
  `bike_max_power` varchar(255) NOT NULL,
  `bike_max_torque` varchar(255) NOT NULL,
  `bike_milage` varchar(255) NOT NULL,
  `bike_no_of_gears` varchar(255) NOT NULL,
  `bike_front_tyre` varchar(255) NOT NULL,
  `bike_rear_tyre` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bike`
--

INSERT INTO `bike` (`bike_id`, `bike_name`, `bike_type_id`, `bike_company_id`, `bike_price`, `bike_image`, `bike_description`, `bike_fuel_type`, `bike_number`, `bike_length`, `bike_width`, `bike_height`, `bike_displacement`, `bike_max_power`, `bike_max_torque`, `bike_milage`, `bike_no_of_gears`, `bike_front_tyre`, `bike_rear_tyre`) VALUES
(2, 'Hero Passion Pro', 6, 8, '50000', 'hero-passion-pro.jpg', 'Keyless chuck Swivel thumb rest Compact case stores all parts. Extension included Comes with a plastic holdle to place the screwdriver bits in it Magnetic bits are easy and tight to absorb into the handle. Handle with rubber wrap for comfortable grip. Comes with a plastic storage box Compact storage design^ convenient to place and carry Multi-functional Pocket Screwdriver Set.\n', '', '91', '', '', '', '', '', '', '', '', '', ''),
(3, 'Activa 4G', 5, 9, '60000', 'Activa 4G.jpg', 'It''s socks total bad car....it''s type sale sock. Footpath...I paid 165 but socks total price 30 only.... very very bad...plz don''t purchase..I am very sarrow.', '', '199', '', '', '', '', '', '', '', '', '', ''),
(4, 'Thunderbird 350x', 2, 6, '150000', 'thunder bird.png', 'I run about 40-50 kms a week. I bought this shoe after reading the reviews but am disappointed with this shoe. \n', 'Petrol', '350x', '2140 mm', '800 mm', '1030 mm', '400 cc', '19.8 bhp @ 5,250 rpm\n\n', '28 Nm @ 4,000 rpm\n\n', '37 km', '5', '19 inch', '19 inch'),
(5, 'Pulsar Bajaj', 7, 7, '70000', 'Pulsar.png', 'ARTS CHETAN COPPER GOLD PLATED LONG NECKLACE ST WITH JHUMKIES\n', 'Petrol', '12', '', '', '', '', '', '', '', '', '', ''),
(6, 'ScooterX', 4, 11, '40000', 'Suzuki_Scooter.jpeg', 'Car quality is excellent. Pure cotton. Fittings is just perfect. Nice colour combination. Thank you.\n', '', '15', '', '', '', '', '', '', '', '', '', ''),
(7, 'Apache', 3, 10, '65000', 'tvs-apache.jpg', 'Facial hair is a prominent feature of a man''s face and it needs to be groomed regularly if you want to maintain a suave image. Helping you do this is this Nova trimmer. It comes with 40 trim settings which let you trim and style your facial hair. This beard trimmer comes with length settings that range from 0.5 mm to 20 mm making it very useful no matter whether you want to maintain a clean-shaven look or a neat beard. The trimmer is designed with titanium coated blades that provide a superior cutting performance. Whats more it comes with washable body , which means it can be used even under the shower. This trimmer works for 90 mins on one quick charge. Designed in such a way that it works both in corded and cordless mode. It also comes with two combs for beard and head hair trimming.It also comes with universal voltage 110-240v which means it can be used worldwide. All these features are packed in this Trimmer with turbo boost motor for efficiency in trimming.', '', '97', '', '', '', '', '', '', '', '', '', ''),
(8, 'Bajaj Chekta', 4, 7, '52000', 'Bajaj_Chekta.jpg', 'The Lenovo PA10400 power bank is a high performance and quality car with 2 fast charge output for devices as mobile phone, tablet, etc. It has large capacity of 10400mAH.\n', '', '100', '', '', '', '', '', '', '', '', '', ''),
(9, 'Bullet 350', 2, 6, '175000', 'Bullet 350.jpg', 'Lens :- UV protective plastic Lens Size :- Medium 58mm Color:- Black color frame with full black lenses Waarnty:- 1 year against manufacturing defects Ideal for:- Men & Women\r\n', '', '32', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `booking_id` int(11) NOT NULL,
  `booking_customer_id` varchar(255) NOT NULL,
  `booking_bike_id` varchar(255) NOT NULL,
  `booking_amount` varchar(255) NOT NULL,
  `booking_date` varchar(255) NOT NULL,
  `booking_delivery_date` varchar(255) NOT NULL,
  `booking_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_customer_id`, `booking_bike_id`, `booking_amount`, `booking_date`, `booking_delivery_date`, `booking_description`) VALUES
(10, '7', '5', '11000/-', '20 December,2018', '28 December,2018', 'Delivery on Time'),
(11, '6', '7', '10000/-', '13 December,2018', '25 December,2018', 'Delivery on Time'),
(12, '9', '3', '21000/-', '15 December,2018', '22 December,2018', 'Delivered'),
(13, '10', '4', '20000/-', '19 December,2018', '31 December,2018', 'Delivery Before Time');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(10) unsigned NOT NULL,
  `city_name` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Mumbai'),
(2, 'Delhi'),
(3, 'Chenai'),
(4, 'Banglore'),
(5, 'Varanasi'),
(6, 'Kolkatta'),
(7, 'Ghaziabad'),
(8, 'Aligarh'),
(9, 'Tundal'),
(10, 'Kanpur'),
(11, 'Allahabad'),
(12, 'Mirzapur'),
(13, 'Mughalsarai'),
(14, 'Bhabua Road'),
(15, 'Sasaram'),
(16, 'Gaya'),
(17, 'Howrah'),
(18, 'Kodarma'),
(19, 'Asansol'),
(20, 'Dhanbad');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_phone` varchar(255) NOT NULL,
  `company_city` varchar(255) NOT NULL,
  `company_state` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `company_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_email`, `company_phone`, `company_city`, `company_state`, `company_address`, `company_image`) VALUES
(7, 'Bajaj', 'contact@bajaj.com', '+918470010001', '8', '1', 'Aligarh', 'bajaj.png'),
(8, 'Honda', 'contact@honda.com', '+912234215667', '5', '1', 'Sector- 2B', 'honda.jpg'),
(9, 'Hero Honda', 'conact@herohonda.com', '+918376986802', '7', '1', 'Sector- 5', 'hero honda.png'),
(10, 'TVS', 'contact@honda.com', '+918376986802', '18', '1', 'Kodarma', 'tvs.png'),
(11, 'Suzuki', 'contact@suzuki.com', '+918376986802', '2', '3', 'Geeta Colony', 'suzuki.png');

--
-- Triggers `company`
--
DELIMITER $$
CREATE TRIGGER `Delete_Bikes` AFTER DELETE ON `company`
 FOR EACH ROW DELETE from bike where bike_company_id = OLD.company_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'India'),
(2, 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_id_number` varchar(255) NOT NULL,
  `customer_id_type` varchar(255) NOT NULL,
  `customer_gender` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_dob` varchar(255) NOT NULL,
  `customer_city` varchar(255) NOT NULL,
  `customer_state` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_pincode` varchar(255) NOT NULL,
  `customer_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_id_number`, `customer_id_type`, `customer_gender`, `customer_email`, `customer_phone`, `customer_dob`, `customer_city`, `customer_state`, `customer_address`, `customer_pincode`, `customer_image`) VALUES
(6, 'Reeta Agrwal', '12312345', '3', '2', 'reeta@gmail.com', '+918376986802', '24 December 1984', '2', '3', 'Geeta Colony', '110031', 'Mr. Arnaz.JPG'),
(7, 'Anuj Shah', '12456789', '2', '1', 'anuj@gmail.com', '+918470010001', '6 February 1982', '8', '1', 'Aligarh', '876554', '1335-833b-here-youre-not-a-man-without-a-mustache10.jpg'),
(8, 'Anil Jaiswal', '12348997', '4', '1', 'anil@gmail.com', '+912234215667', '28 August 1978', '5', '1', 'Sector- 2B', '1234234', 'image-2-1.jpg'),
(9, 'Susmita Singh', '123789', '5', '2', 'susmita@gmail.com', '+918376986802', '19 December 1984', '7', '1', 'Sector- 5', '9865789', '1-fAUbT83-8LeqRTIGWEpRMQ.png'),
(10, 'Naman Jaiswal', '1238990', '2', '1', 'naman@gmail.com', '+918376986802', '24 December 1984', '18', '1', 'Kodarma', '8755435', 'images.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
  `gender_id` int(11) NOT NULL,
  `gender_title` varchar(255) NOT NULL,
  `gender_description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gender_id`, `gender_title`, `gender_description`) VALUES
(1, 'Male', 'Male'),
(2, 'Female', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `login_id` int(11) NOT NULL,
  `login_user` varchar(255) NOT NULL,
  `login_password` varchar(255) NOT NULL,
  `login_level` varchar(255) NOT NULL,
  `login_date` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_user`, `login_password`, `login_level`, `login_date`) VALUES
(1, 'admin', 'test', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'UttarnPradesh'),
(2, 'Madhya Pradesh'),
(3, 'Delhi'),
(4, 'Bihar');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `type_description`) VALUES
(1, 'Standard', 'Hatchback Cars'),
(2, 'Cruiser', 'Cruiser Bikes'),
(3, 'Sport', 'Sport Bikes'),
(4, 'Scooters', 'Scooters'),
(5, 'Scooty', 'Scooty'),
(6, 'Touring\n', 'Touring Bikes'),
(7, 'Off-Road', 'Off-Road Bikes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `user_level_id` varchar(255) NOT NULL DEFAULT '2',
  `user_username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_add1` varchar(255) NOT NULL,
  `user_add2` varchar(255) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_state` varchar(255) NOT NULL,
  `user_country` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_dob` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_level_id`, `user_username`, `user_password`, `user_name`, `user_add1`, `user_add2`, `user_city`, `user_state`, `user_country`, `user_email`, `user_mobile`, `user_gender`, `user_dob`, `user_image`) VALUES
(7, '2', 'customer', 'test', 'Amit Kumar', 'House no : 768', 'Sector 2B', '2', '1', '2', 'amit@gmail.com', '9324324546', '', '26 December,2015', 'doctor1.jpg'),
(8, '2', 'suman', 'test', 'Suman Singh', 'House no : 768', 'Sector 2A', '1', '2', '1', 'suman@gmail.com', '987654321', '', '13 January,1961', 'doctor3.jpg'),
(10, '2', 'manasa', 'test', 'Manasa', 'New Delhi', 'India', '2', '2', '1', 'manasa@gmail.com', '9876543212', '', '18 January,1968', 'doctor2.jpg'),
(16, '1', 'admin', 'test', 'Kaushal Kishore', 'House No : 355, Sector 23', 'Sector 2A', '1', '1', '1', 'kaushal.rahuljaiswal@gmail.com', '9567654565', '', '10 March,2016', 'Image.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bike`
--
ALTER TABLE `bike`
  ADD PRIMARY KEY (`bike_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bike`
--
ALTER TABLE `bike`
  MODIFY `bike_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
