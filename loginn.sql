-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2019 at 09:06 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginn`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(2, 'pendot', 'pendot@gmail.com', 'users-vector-icon-png_260862.jpg', '$2y$10$pIZsixXf/2EpBQlS3cV2fOE52Eew/HoCutUxYBbaiS9LpNsVFWBIi', 2, 1, 1564841209),
(9, 'fendik', 'Fenfen@gmail.com', 'user.png', '$2y$10$Nwm7q0TZjl.kb3RfXsIrsebMpT9dBpa7eZaPWMKrMJNAX92febgDW', 1, 1, 1567647838),
(10, 'stefanus', 'stefanus@gmail.com', 'default.jpg', '$2y$10$u83VhuJZkxlnI/R2L37z8Ow3.2pRQ7GGlkO85eFJlC.0clU.96Tz6', 2, 0, 1569469994),
(11, 'steven', 'steven@gmail.com', 'default.jpg', '$2y$10$Olyqq6d1ncGSMH7Qa/Feg.UiZuqAdnIi4T3YPkSwD1hjh6vVoi0K2', 2, 0, 1569470145),
(12, 'stefanussad', 'stefanussad93@gmail.com', 'default.jpg', '$2y$10$Od1OcHHnGsojKTO910CEYeW1HMIjW8jKfPnnZoQulujPYD8GXG/Oe', 2, 0, 1571277360),
(13, 'stefanussad', 'stefanussad@gmail.com', 'default.jpg', '$2y$10$ZnbjKNmgeSK9f2MlcEgTLuiOeEwozK6VS4.CC/dY7VIOA1Ftqz2Cm', 2, 0, 1571277407),
(14, 'qwertrty', 'qwerty@gmail.com', 'default.jpg', '$2y$10$gCOMOqYgFpkkXQn0iPWLNuwxvpMSGdxVUv2LZQfjKPVbo8rEl58DG', 2, 0, 1571278574),
(15, 'qwertrty', '21sacah002@gmail.com', 'default.jpg', '$2y$10$84xeHver8OYlJUjIJLYyNO7D5ODjGPFvnKF3Eg3ybybLGSa.YTWTS', 2, 0, 1571278666),
(16, 'stefan1', 'stefan1@gmail.com', 'default.jpg', '$2y$10$2qWRFnl94kXZTc1aNdYPsukMpfIhrJ810GRG8.56yEF2MK1MvbE..', 2, 0, 1571280364),
(17, 'stef1', 'stef1@gmail.com', 'default.jpg', '$2y$10$cS2gM4qT20YHoYeZN1nWseOv02FKZJrVD92Bd1IBDJritqj/uIrba', 2, 0, 1571280484);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(22, 1, 1),
(25, 1, 11),
(26, 2, 2),
(27, 2, 11),
(33, 1, 2),
(34, 4, 2),
(35, 4, 3),
(41, 1, 3),
(42, 1, 4),
(43, 2, 4),
(44, 1, 5),
(45, 2, 5),
(46, 3, 4),
(47, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(5, 'User'),
(6, 'Menu');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(4, 6, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 6, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(20, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(21, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(22, 4, 'Beranda', 'navigasi', 'fas fa-fw fa-tachometer-alt', 1),
(23, 4, 'Kategori', 'navigasi/kategori', 'fas fa-fw fa-book', 1),
(24, 5, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(25, 5, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user', 1),
(26, 5, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(2, 'stefanus@gmail.com', 'rUOfJ+im+2+gHA/z1MH/hNcLpNrEpeJc859eACMaVSg=', 1569469994),
(3, 'steven@gmail.com', '6ZJ38fSWBv/p5fD2M0OLYmPY+o+AqmHu+DI5p+5BCWk=', 1569470145),
(4, 'stefanussad93@gmail.com', '/Ph6kS7J5lZu5MKSm6RzErpeKpTPYQGLJrcdYilDVIw=', 1571277360),
(5, 'stefanussad@gmail.com', '73GFdjRfeiFkt5e1Ilg3KlvYUTS/s7apiDYt0J9BGUY=', 1571277407),
(6, 'qwerty@gmail.com', 'JXz3fEqzCOnDmBX2tTq073VWmX7oiqVo46cn/tWr5QY=', 1571278574),
(7, '21sacah002@gmail.com', 'cqgTOa607Sc2+seGODfsvHG/NHPYGzannFgEpH8BM/E=', 1571278666),
(8, 'stefan1@gmail.com', '1BfboWT2Rz1deA1XOjs+gKPHRbOMlaWgrlI6CC2MczE=', 1571280364),
(9, 'stef1@gmail.com', 'wnoawN5t7p7tE6E2I6fVVapAPTgdCpIlbCz+0/NAvS4=', 1571280484);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
