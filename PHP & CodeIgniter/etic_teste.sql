-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2019 at 05:04 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etic_teste`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Escapadinhas de fim-de-semana'),
(2, 'Escalada'),
(3, 'Praia e Sol'),
(4, 'Destinos exóticos');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(111) NOT NULL,
  `author` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `destination_id` int(111) NOT NULL,
  `date` datetime NOT NULL,
  `approved` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author`, `comment`, `destination_id`, `date`, `approved`) VALUES
(1, 'Benjamin', 'Nam vitae est massa. Quisque suscipit, ante in tristique fermentum, nisi arcu sollicitudin lorem, vitae ullamcorper lectus nibh quis sem. Mauris aliquam tortor in nibh ultricies consectetur.', 1, '2019-01-18 21:10:00', 1),
(2, 'Beatriz', 'Praesent consequat quam elementum, commodo velit sed, volutpat sem. Aenean consequat vitae dolor id sollicitudin.     ', 1, '2019-01-19 11:35:00', 1),
(3, 'Vicente', 'Suspendisse mattis interdum vulputate. Suspendisse condimentum semper magna sed ornare. Praesent consequat quam elementum, commodo velit sed, volutpat sem. Aenean consequat vitae dolor id sollicitudin. ', 3, '2019-01-20 16:05:00', 1),
(4, 'Leonor', 'Maecenas semper orci at eros rutrum, ut efficitur lorem pretium. Sed enim lacus, luctus eu sapien ut, tristique lobortis lectus. ', 4, '2019-01-21 14:46:00', 1),
(10, 'Ana', 'Suspendisse mattis interdum vulputate. Suspendisse condimentum semper magna sed ornare. Praesent consequat quam elementum, commodo velit sed, volutpat sem. Aenean consequat vitae dolor id sollicitudin. ', 2, '2019-01-21 16:05:00', 1),
(11, 'Maria', 'Fantástico!', 4, '2019-01-31 22:55:36', 1),
(12, 'Joana', 'Maecenas semper orci at eros rutrum, ut efficitur lorem pretium. Sed enim lacus, luctus eu sapien ut, tristique lobortis lectus. ', 1, '2019-02-27 16:23:42', 1),
(13, 'Benjamin', 'Nam vitae est massa. Quisque suscipit, ante in tristique fermentum, nisi arcu sollicitudin lorem, vitae ullamcorper lectus nibh quis sem. Mauris aliquam tortor in nibh ultricies consectetur.', 5, '2019-01-18 21:10:00', 1),
(14, 'Carlos', 'Nam vitae est massa. Quisque suscipit, ante in tristique fermentum, nisi arcu sollicitudin lorem, vitae ullamcorper lectus nibh quis sem. Mauris aliquam tortor in nibh ultricies consectetur.', 6, '2019-01-18 21:10:00', 1),
(15, 'Laura', 'Nam vitae est massa. Quisque suscipit, ante in tristique fermentum, nisi arcu sollicitudin lorem, vitae ullamcorper lectus nibh quis sem. Mauris aliquam tortor in nibh ultricies consectetur.', 7, '2019-01-18 21:10:00', 1),
(16, 'Laura', 'Suspendisse mattis interdum vulputate. Suspendisse condimentum semper magna sed ornare. Praesent consequat quam elementum, commodo velit sed, volutpat sem. Aenean consequat vitae dolor id sollicitudin. ', 8, '2019-01-18 21:10:00', 1),
(17, 'Sofia', 'Aenean consequat vitae dolor id sollicitudin. ', 9, '2019-01-18 21:10:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `text` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `highlight` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `publish` int(111) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `title`, `summary`, `text`, `image`, `price`, `highlight`, `category_id`, `date`, `publish`) VALUES
(1, 'Blue Eye', 'As cores maravilhosas de um lago único na Albânia.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ullamcorper rutrum sem non sagittis. Phasellus ullamcorper egestas imperdiet. Nunc felis ante, lacinia quis aliquet nec, dictum ut neque. Morbi dapibus mi aliquet, sollicitudin tellus et, vestibulum lectus. In consequat varius pharetra. Vivamus a auctor nisi. Quisque egestas tellus sit amet est vulputate, facilisis lacinia nisl suscipit. Suspendisse tempor neque ut nibh tincidunt, id pretium velit semper. Nullam sed consequat nisi. Vestibulum vestibulum lacinia magna, non luctus massa mattis ut. Donec ipsum ante, lacinia ac varius vitae, congue eget odio. Integer iaculis molestie nulla at accumsan. Quisque vel cursus eros. Proin diam dui, euismod sed nisl in, elementum dictum eros. Phasellus a imperdiet libero. Integer id posuere mauris, eget hendrerit lectus. Sed eleifend nisi nec tellus vestibulum, nec fermentum justo fringilla. Etiam ut lacus sit amet quam volutpat tempus id at purus. Sed eleifend aliquam efficitur. Suspendisse nunc mauris, venenatis eu feugiat a, ullamcorper eget nisl. Nam mollis, erat mattis vulputate imperdiet, velit sapien malesuada ante, eget hendrerit libero ante a leo. Nunc id odio accumsan, viverra mauris quis, varius leo.</p>', '2.jpg', '320.00', 1, 4, '2019-01-23', 1),
(2, 'Paris', 'Cidade da luz.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ullamcorper rutrum sem non sagittis. Phasellus ullamcorper egestas imperdiet. Nunc felis ante, lacinia quis aliquet nec, dictum ut neque. Morbi dapibus mi aliquet, sollicitudin tellus et, vestibulum lectus. In consequat varius pharetra. Vivamus a auctor nisi. Quisque egestas tellus sit amet est vulputate, facilisis lacinia nisl suscipit. Suspendisse tempor neque ut nibh tincidunt, id pretium velit semper. Nullam sed consequat nisi. Vestibulum vestibulum lacinia magna, non luctus massa mattis ut. Donec ipsum ante, lacinia ac varius vitae, congue eget odio. Integer iaculis molestie nulla at accumsan. Quisque vel cursus eros.  Proin diam dui, euismod sed nisl in, elementum dictum eros. Phasellus a imperdiet libero. Integer id posuere mauris, eget hendrerit lectus. Sed eleifend nisi nec tellus vestibulum, nec fermentum justo fringilla. Etiam ut lacus sit amet quam volutpat tempus id at purus. Sed eleifend aliquam efficitur. Suspendisse nunc mauris, venenatis eu feugiat a, ullamcorper eget nisl. Nam mollis, erat mattis vulputate imperdiet, velit sapien malesuada ante, eget hendrerit libero ante a leo. Nunc id odio accumsan, viverra mauris quis, varius leo.', '4.jpg', '99.00', 1, 1, '2019-01-22', 1),
(3, 'Quénia', 'Desfrute de uma experiência única entre os animais.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ullamcorper rutrum sem non sagittis. Phasellus ullamcorper egestas imperdiet. Nunc felis ante, lacinia quis aliquet nec, dictum ut neque. Morbi dapibus mi aliquet, sollicitudin tellus et, vestibulum lectus. In consequat varius pharetra. Vivamus a auctor nisi. Quisque egestas tellus sit amet est vulputate, facilisis lacinia nisl suscipit. Suspendisse tempor neque ut nibh tincidunt, id pretium velit semper. Nullam sed consequat nisi. Vestibulum vestibulum lacinia magna, non luctus massa mattis ut. Donec ipsum ante, lacinia ac varius vitae, congue eget odio. Integer iaculis molestie nulla at accumsan. Quisque vel cursus eros.  Proin diam dui, euismod sed nisl in, elementum dictum eros. Phasellus a imperdiet libero. Integer id posuere mauris, eget hendrerit lectus. Sed eleifend nisi nec tellus vestibulum, nec fermentum justo fringilla. Etiam ut lacus sit amet quam volutpat tempus id at purus. Sed eleifend aliquam efficitur. Suspendisse nunc mauris, venenatis eu feugiat a, ullamcorper eget nisl. Nam mollis, erat mattis vulputate imperdiet, velit sapien malesuada ante, eget hendrerit libero ante a leo. Nunc id odio accumsan, viverra mauris quis, varius leo.', '1.jpg', '1655.00', 0, 4, '2019-01-20', 1),
(4, 'Evereste', 'Sete dias para explorar o mais alto monte do mundo.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ullamcorper rutrum sem non sagittis. Phasellus ullamcorper egestas imperdiet. Nunc felis ante, lacinia quis aliquet nec, dictum ut neque. Morbi dapibus mi aliquet, sollicitudin tellus et, vestibulum lectus. In consequat varius pharetra. Vivamus a auctor nisi. Quisque egestas tellus sit amet est vulputate, facilisis lacinia nisl suscipit. Suspendisse tempor neque ut nibh tincidunt, id pretium velit semper. Nullam sed consequat nisi. Vestibulum vestibulum lacinia magna, non luctus massa mattis ut. Donec ipsum ante, lacinia ac varius vitae, congue eget odio. Integer iaculis molestie nulla at accumsan. Quisque vel cursus eros.  Proin diam dui, euismod sed nisl in, elementum dictum eros. Phasellus a imperdiet libero. Integer id posuere mauris, eget hendrerit lectus. Sed eleifend nisi nec tellus vestibulum, nec fermentum justo fringilla. Etiam ut lacus sit amet quam volutpat tempus id at purus. Sed eleifend aliquam efficitur. Suspendisse nunc mauris, venenatis eu feugiat a, ullamcorper eget nisl. Nam mollis, erat mattis vulputate imperdiet, velit sapien malesuada ante, eget hendrerit libero ante a leo. Nunc id odio accumsan, viverra mauris quis, varius leo.', '3.jpg', '1340.00', 0, 2, '2019-01-22', 1),
(5, 'Londres', 'Um fim-de-semana perfeito', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ullamcorper rutrum sem non sagittis. Phasellus ullamcorper egestas imperdiet. Nunc felis ante, lacinia quis aliquet nec, dictum ut neque. Morbi dapibus mi aliquet, sollicitudin tellus et, vestibulum lectus. In consequat varius pharetra. Vivamus a auctor nisi. Quisque egestas tellus sit amet est vulputate, facilisis lacinia nisl suscipit. Suspendisse tempor neque ut nibh tincidunt, id pretium velit semper. Nullam sed consequat nisi. Vestibulum vestibulum lacinia magna, non luctus massa mattis ut. Donec ipsum ante, lacinia ac varius vitae, congue eget odio. Integer iaculis molestie nulla at accumsan. Quisque vel cursus eros.  Proin diam dui, euismod sed nisl in, elementum dictum eros. Phasellus a imperdiet libero. Integer id posuere mauris, eget hendrerit lectus. Sed eleifend nisi nec tellus vestibulum, nec fermentum justo fringilla. Etiam ut lacus sit amet quam volutpat tempus id at purus. Sed eleifend aliquam efficitur. Suspendisse nunc mauris, venenatis eu feugiat a, ullamcorper eget nisl. Nam mollis, erat mattis vulputate imperdiet, velit sapien malesuada ante, eget hendrerit libero ante a leo. Nunc id odio accumsan, viverra mauris quis, varius leo.', '5.jpg', '87.00', 1, 1, '2019-01-18', 1),
(6, 'Tailândia', 'As praias que continuam em segredo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ullamcorper rutrum sem non sagittis. Phasellus ullamcorper egestas imperdiet. Nunc felis ante, lacinia quis aliquet nec, dictum ut neque. Morbi dapibus mi aliquet, sollicitudin tellus et, vestibulum lectus. In consequat varius pharetra. Vivamus a auctor nisi. Quisque egestas tellus sit amet est vulputate, facilisis lacinia nisl suscipit. Suspendisse tempor neque ut nibh tincidunt, id pretium velit semper. Nullam sed consequat nisi. Vestibulum vestibulum lacinia magna, non luctus massa mattis ut. Donec ipsum ante, lacinia ac varius vitae, congue eget odio. Integer iaculis molestie nulla at accumsan. Quisque vel cursus eros.  Proin diam dui, euismod sed nisl in, elementum dictum eros. Phasellus a imperdiet libero. Integer id posuere mauris, eget hendrerit lectus. Sed eleifend nisi nec tellus vestibulum, nec fermentum justo fringilla. Etiam ut lacus sit amet quam volutpat tempus id at purus. Sed eleifend aliquam efficitur. Suspendisse nunc mauris, venenatis eu feugiat a, ullamcorper eget nisl. Nam mollis, erat mattis vulputate imperdiet, velit sapien malesuada ante, eget hendrerit libero ante a leo. Nunc id odio accumsan, viverra mauris quis, varius leo.', '6.jpg', '740.00', 0, 3, '2019-01-22', 1),
(7, 'Barcelona', 'Colorida e vibrante, assim é uma das cidades mais atraentes da Europa.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ullamcorper rutrum sem non sagittis. Phasellus ullamcorper egestas imperdiet. Nunc felis ante, lacinia quis aliquet nec, dictum ut neque. Morbi dapibus mi aliquet, sollicitudin tellus et, vestibulum lectus. In consequat varius pharetra. Vivamus a auctor nisi. Quisque egestas tellus sit amet est vulputate, facilisis lacinia nisl suscipit. Suspendisse tempor neque ut nibh tincidunt, id pretium velit semper. Nullam sed consequat nisi. Vestibulum vestibulum lacinia magna, non luctus massa mattis ut. Donec ipsum ante, lacinia ac varius vitae, congue eget odio. Integer iaculis molestie nulla at accumsan. Quisque vel cursus eros.  Proin diam dui, euismod sed nisl in, elementum dictum eros. Phasellus a imperdiet libero. Integer id posuere mauris, eget hendrerit lectus. Sed eleifend nisi nec tellus vestibulum, nec fermentum justo fringilla. Etiam ut lacus sit amet quam volutpat tempus id at purus. Sed eleifend aliquam efficitur. Suspendisse nunc mauris, venenatis eu feugiat a, ullamcorper eget nisl. Nam mollis, erat mattis vulputate imperdiet, velit sapien malesuada ante, eget hendrerit libero ante a leo. Nunc id odio accumsan, viverra mauris quis, varius leo.', '7.jpg', '99.00', 0, 1, '2019-01-22', 1),
(8, 'Theth', 'Do alto das montanhas do leste da Europa.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ullamcorper rutrum sem non sagittis. Phasellus ullamcorper egestas imperdiet. Nunc felis ante, lacinia quis aliquet nec, dictum ut neque. Morbi dapibus mi aliquet, sollicitudin tellus et, vestibulum lectus. In consequat varius pharetra. Vivamus a auctor nisi. Quisque egestas tellus sit amet est vulputate, facilisis lacinia nisl suscipit. Suspendisse tempor neque ut nibh tincidunt, id pretium velit semper. Nullam sed consequat nisi. Vestibulum vestibulum lacinia magna, non luctus massa mattis ut. Donec ipsum ante, lacinia ac varius vitae, congue eget odio. Integer iaculis molestie nulla at accumsan. Quisque vel cursus eros.  Proin diam dui, euismod sed nisl in, elementum dictum eros. Phasellus a imperdiet libero. Integer id posuere mauris, eget hendrerit lectus. Sed eleifend nisi nec tellus vestibulum, nec fermentum justo fringilla. Etiam ut lacus sit amet quam volutpat tempus id at purus. Sed eleifend aliquam efficitur. Suspendisse nunc mauris, venenatis eu feugiat a, ullamcorper eget nisl. Nam mollis, erat mattis vulputate imperdiet, velit sapien malesuada ante, eget hendrerit libero ante a leo. Nunc id odio accumsan, viverra mauris quis, varius leo.', '8.jpg', '465.00', 0, 2, '2019-01-22', 1),
(9, 'Japão', 'Um país de florestas tropicais de bambu, de arrozais e cerejeiras.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras ullamcorper rutrum sem non sagittis. Phasellus ullamcorper egestas imperdiet. Nunc felis ante, lacinia quis aliquet nec, dictum ut neque. Morbi dapibus mi aliquet, sollicitudin tellus et, vestibulum lectus. In consequat varius pharetra. Vivamus a auctor nisi. Quisque egestas tellus sit amet est vulputate, facilisis lacinia nisl suscipit. Suspendisse tempor neque ut nibh tincidunt, id pretium velit semper. Nullam sed consequat nisi. Vestibulum vestibulum lacinia magna, non luctus massa mattis ut. Donec ipsum ante, lacinia ac varius vitae, congue eget odio. Integer iaculis molestie nulla at accumsan. Quisque vel cursus eros.  Proin diam dui, euismod sed nisl in, elementum dictum eros. Phasellus a imperdiet libero. Integer id posuere mauris, eget hendrerit lectus. Sed eleifend nisi nec tellus vestibulum, nec fermentum justo fringilla. Etiam ut lacus sit amet quam volutpat tempus id at purus. Sed eleifend aliquam efficitur. Suspendisse nunc mauris, venenatis eu feugiat a, ullamcorper eget nisl. Nam mollis, erat mattis vulputate imperdiet, velit sapien malesuada ante, eget hendrerit libero ante a leo. Nunc id odio accumsan, viverra mauris quis, varius leo.', '5.jpg', '1430.00', 0, 4, '2019-01-22', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
