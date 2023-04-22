-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2023 at 03:42 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `softhospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `act`
--

CREATE TABLE `act` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `wording` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `category_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `procedures` json DEFAULT NULL,
  `profit_marge` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `act`
--

INSERT INTO `act` (`id`, `hospital_id`, `wording`, `created_at`, `is_deleted`, `category_id`, `price`, `cost`, `procedures`, `profit_marge`) VALUES
(1, 1, 'Schéma quinine adulte / enfant', '2023-04-19 05:05:34', 1, 1, '30.00', '20.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 50),
(2, 1, 'Siture / pointe', '2023-04-19 05:09:28', 1, 1, '3.00', '2.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 50),
(3, 1, 'Observation au lit / jour', '2023-04-19 05:09:28', 0, 1, '20.00', '16.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(4, 1, 'Pansement', '2023-04-19 05:09:30', 1, 1, '3.13', '2.70', '[{\"item\": \"\", \"quantity\": \"\"}]', 16),
(5, 1, 'Pansement cordon ombilical', '2023-04-19 05:09:30', 1, 1, '2.24', '2.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 12),
(6, 1, 'Soins infirmiers pp', '2023-04-19 05:09:30', 0, 1, '1.34', '1.20', '[{\"item\": \"\", \"quantity\": \"\"}]', 12),
(7, 1, 'Fiche CPS', '2023-04-19 05:27:24', 1, 2, '2.24', '2.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 12),
(8, 1, 'Rendez-vous Médical généraliste / spécialiste', '2023-04-19 05:27:25', 1, 2, '5.00', '4.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(9, 1, 'CPN', '2023-04-19 05:27:26', 0, 2, '5.00', '4.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(10, 1, 'RDV / CPN généraliste / spécialiste', '2023-04-19 05:27:26', 0, 2, '5.00', '4.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(11, 1, 'Infusion', '2023-04-19 05:46:50', 0, 3, '5.00', '4.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(12, 1, 'Ponction exploratoire', '2023-04-19 05:46:51', 0, 3, '20.00', '16.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(13, 1, 'Ponction lombaire', '2023-04-19 05:46:51', 1, 3, '0.00', '0.00', '[]', 0),
(14, 1, 'Ponction lombaire', '2023-04-19 05:49:03', 0, 3, '50.00', '40.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(15, 1, 'Caution d\'hospitalisation', '2023-04-19 06:05:40', 0, 1, '100.00', '80.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(16, 1, 'Accouchement eutocique + 3jours d\'observation', '2023-04-19 06:20:55', 0, 4, '150.00', '120.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(17, 1, 'Accouchement dystocique', '2023-04-19 06:20:57', 0, 4, '250.00', '200.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(18, 1, 'Accouchement sans CPN', '2023-04-19 06:20:58', 0, 4, '200.00', '160.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(19, 1, 'Tocolyse', '2023-04-19 06:21:00', 0, 4, '25.00', '20.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(20, 1, 'Réanimation du bébé', '2023-04-19 06:21:01', 0, 4, '100.00', '80.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(21, 1, 'Césarienne', '2023-04-19 06:28:36', 0, 5, '650.00', '520.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(22, 1, 'Hernie unilatérale', '2023-04-19 06:28:38', 0, 5, '250.00', '200.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(23, 1, 'Hernie bilatérale', '2023-04-19 06:28:39', 0, 5, '350.00', '280.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(24, 1, 'Hydrocèle', '2023-04-19 06:28:39', 0, 5, '300.00', '240.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(25, 1, 'Appendicectomie', '2023-04-19 06:28:40', 0, 5, '350.00', '280.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(26, 1, 'Kyste synoviale', '2023-04-19 06:30:39', 0, 5, '100.00', '80.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(27, 1, 'Prostatectomie', '2023-04-19 06:30:39', 0, 5, '3500.00', '2800.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(28, 1, 'Circoncision', '2023-04-19 06:30:40', 0, 5, '25.00', '20.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(29, 1, 'Hystérectomie', '2023-04-19 06:30:40', 0, 5, '1000.00', '800.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(30, 1, 'Torsion testiculaire', '2023-04-19 06:30:40', 0, 5, '300.00', '240.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(31, 1, 'Péritonite sans perforation', '2023-04-19 06:32:37', 0, 5, '1200.00', '960.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(32, 1, 'Péritonite avec résection intestinale', '2023-04-19 06:32:38', 0, 5, '1500.00', '1200.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(33, 1, 'Grossesse extra utérine rompue', '2023-04-19 06:32:38', 0, 5, '650.00', '520.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(34, 1, 'Incision et drainage des petits / gros abcès', '2023-04-19 06:32:38', 0, 5, '50.00', '40.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(35, 1, 'Frein de langue', '2023-04-19 06:32:39', 0, 5, '20.00', '16.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(36, 1, 'Kystectomie unilatérale', '2023-04-19 06:35:15', 0, 5, '250.00', '200.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(37, 1, 'Kystectomie bilatérale', '2023-04-19 06:35:15', 0, 5, '450.00', '360.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(38, 1, 'Révision utérine 0 à 8 S.A / 16 à 24 S.A', '2023-04-19 06:35:16', 0, 5, '350.00', '280.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(39, 1, 'Ligature des trompes', '2023-04-19 06:35:16', 0, 5, '250.00', '200.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(40, 1, 'Cerclage du col', '2023-04-19 06:35:17', 0, 5, '400.00', '320.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(41, 1, 'Hydrotubation intubation', '2023-04-19 06:36:16', 0, 5, '70.00', '56.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(42, 1, 'Incision et drainage de phlegmon', '2023-04-19 06:36:17', 0, 5, '100.00', '80.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(43, 1, 'Myomectomie', '2023-04-19 06:49:20', 0, 5, '700.00', '560.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(44, 1, 'Hernie étranglée', '2023-04-19 06:49:20', 0, 5, '300.00', '240.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(45, 1, 'Lipomectomie', '2023-04-19 06:49:21', 0, 5, '100.00', '80.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(46, 1, 'Laparotomie exploratrice', '2023-04-19 06:54:33', 0, 5, '1250.00', '1000.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(47, 1, 'Transfusion', '2023-04-19 07:09:07', 0, 6, '50.00', '40.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(48, 1, 'Réhydratation pour hypovolémie', '2023-04-19 07:09:07', 0, 6, '20.00', '16.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(49, 1, 'Soins primaires', '2023-04-19 07:09:08', 0, 6, '10.00', '8.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(50, 1, 'Perfusion', '2023-04-19 07:10:46', 0, 7, '25.00', '20.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(51, 1, 'Injection + Infusion', '2023-04-19 07:10:47', 0, 7, '2.24', '2.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 12),
(52, 1, 'Perfusion, injection ou infusion', '2023-04-19 07:10:48', 0, 7, '30.00', '24.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(53, 1, 'Observation en urgence', '2023-04-19 07:10:48', 0, 7, '50.00', '40.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(54, 1, 'Soins en hospitalier par jour', '2023-04-19 07:10:48', 0, 7, '35.00', '28.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25),
(55, 1, 'Schéma loxène par séance', '2023-04-19 07:11:15', 0, 7, '20.00', '16.00', '[{\"item\": \"\", \"quantity\": \"\"}]', 25);

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int NOT NULL,
  `author_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `hospital_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `author_id`, `title`, `description`, `slug`, `created_at`, `hospital_id`) VALUES
(1, 7, 'Enregistrement d\'un patient', 'Ajout d\'un nouveau patient : Okomba', '/okomba-mimi', '2023-04-21 09:58:07', 1),
(2, 7, 'Nouvelle consultation', 'Enregistrement d\'une nouvelle fiche \n Patient(e) : Okomba  Mimi', '/okomba-mimi', '2023-04-21 10:06:54', 1),
(3, 11, 'Enregistrement d\'un patient', 'Ajout d\'un nouveau patient : kamango', '/kamango-jean-lipenz', '2023-04-21 12:08:48', 1),
(4, 1, 'Enregistrement d\'un patient', 'Ajout d\'un nouveau patient : Mukadi', '/mukadi-parfait', '2023-04-21 12:08:48', 1),
(5, 11, 'Nouvelle consultation', 'Enregistrement d\'une nouvelle fiche \n Patient(e) : kamango likwanjanja jean lipenz', '/kamango-likwanjanja-jean-lipenz', '2023-04-21 12:16:50', 1),
(6, 1, 'Nouvelle consultation', 'Enregistrement d\'une nouvelle fiche \n Patient(e) : kamango likwanjanja jean lipenz', '/kamango-likwanjanja-jean-lipenz', '2023-04-22 08:11:51', 1),
(7, 1, 'Enregistrement d\'un patient', 'Ajout d\'un nouveau patient : lifwa', '/lifwa-adivin', '2023-04-22 14:52:12', 1),
(8, 1, 'Nouvelle consultation', 'Enregistrement d\'une nouvelle fiche \n Patient(e) : lifwa  adivin', '/lifwa-adivin', '2023-04-22 14:58:01', 1),
(9, 1, 'Publication des résultats d\'examens', 'Publication des résultats des examens du patient : lifwa  adivin', NULL, '2023-04-22 15:21:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acts_invoice_basket`
--

CREATE TABLE `acts_invoice_basket` (
  `id` int NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `act_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `acts_invoice_basket`
--

INSERT INTO `acts_invoice_basket` (`id`, `invoice_id`, `act_id`, `price`, `date`) VALUES
(1, 1, 54, '35.00', '2023-04-21'),
(2, 1, 53, '50.00', '2023-04-21'),
(3, 2, 54, '35.00', '2023-04-21'),
(4, 2, 53, '50.00', '2023-04-21'),
(5, 3, 54, '35.00', '2023-04-22'),
(6, 3, 52, '30.00', '2023-04-22'),
(7, 4, 54, '35.00', '2023-04-22'),
(8, 4, 52, '30.00', '2023-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `act_category`
--

CREATE TABLE `act_category` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `act_category`
--

INSERT INTO `act_category` (`id`, `hospital_id`, `name`, `created_at`, `is_deleted`) VALUES
(1, 1, 'Acte / activité', '2023-04-19 05:04:22', 0),
(2, 1, 'Vaccination', '2023-04-19 05:04:22', 0),
(3, 1, 'Autres actes et soins ambulatoires', '2023-04-19 05:04:22', 0),
(4, 1, 'Maternité', '2023-04-19 05:04:23', 0),
(5, 1, 'Chirurgie générale', '2023-04-19 05:04:23', 0),
(6, 1, 'Soins en urgence / Réanimation', '2023-04-19 06:38:43', 0),
(7, 1, 'Soins hospitaliers / Observation', '2023-04-19 06:38:43', 0);

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `office_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_account_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`id`, `hospital_id`, `office_id`, `service_id`, `user_id`, `user_account_id`, `name`, `last_name`, `first_name`, `sex`, `phone`, `email`, `created_at`, `is_deleted`, `full_name`) VALUES
(1, 1, 1, NULL, 1, 2, 'Msambya', 'Mkyoba', 'Toto', 'H', '0998911893', 'msambyamkyoba@gmail.com', '2023-04-18 13:11:23', 0, 'Msambya Mkyoba Toto'),
(2, 1, 1, NULL, 1, 3, 'Kasongo', '', 'Scott', 'F', '0815067450', '', '2023-04-18 13:14:30', 0, 'Kasongo  Scott'),
(3, 1, 4, NULL, 1, 4, 'mobila', 'mbenga', 'Tania ', 'F', '0819464920', '', '2023-04-18 13:28:38', 0, 'mobila mbenga Tania'),
(4, 1, 2, NULL, 1, 8, 'omba', '', 'placide', 'H', '0829782601', 'ombaplacide.com@gmail.com', '2023-04-18 17:28:23', 0, 'omba  placide'),
(5, 1, 3, NULL, 1, 7, 'mpwa', '', 'solange', 'F', '0821133055', '', '2023-04-18 17:29:01', 0, 'mpwa  solange'),
(6, 1, 4, NULL, 1, 6, 'Okitolenga', 'mayce', '', 'H', '0841292825', '', '2023-04-18 17:29:51', 0, 'Okitolenga mayce'),
(7, 1, 5, NULL, 1, 5, 'kaya', '', 'Sharon ', 'F', '0815806061', '', '2023-04-18 17:30:32', 0, 'kaya  Sharon'),
(8, 1, 4, NULL, 1, 9, 'Botuli', 'Emamela', 'Eric', 'H', '0821791753', '', '2023-04-19 13:17:00', 0, 'Botuli Emamela Eric'),
(9, 1, 2, NULL, 1, 10, 'Tshibambe', 'Tshiondo', 'Richard', 'H', '0855102428', '', '2023-04-19 13:54:30', 0, 'Tshibambe Tshiondo Richard'),
(10, 1, 3, NULL, 1, 11, 'Balambomba', 'Likwanjanja', 'Samantha', 'F', '0841364472', 'samanthakibambekamango@gmail.com', '2023-04-21 10:43:10', 0, 'Balambomba Likwanjanja Samantha');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int NOT NULL,
  `doctor_id` int DEFAULT NULL,
  `consultation_id` int DEFAULT NULL,
  `patient_id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `is_complete` tinyint(1) NOT NULL,
  `appointment_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctor_id`, `consultation_id`, `patient_id`, `hospital_id`, `user_id`, `is_complete`, `appointment_date`, `created_at`, `is_deleted`, `description`, `reason`, `full_name`) VALUES
(1, 2, 1, 1, 1, 7, 0, '2023-04-21 08:06:54', '2023-04-21 10:06:54', 0, NULL, 'Consultation', 'Okomba  Mimi'),
(2, 2, 2, 2, 1, 11, 0, '2023-04-21 11:16:50', '2023-04-21 12:16:50', 0, NULL, 'Consultation', 'kamango likwanjanja jean lipenz'),
(3, 2, NULL, 2, 1, 11, 0, '2023-04-24 10:00:00', '2023-04-21 12:19:30', 0, '', 'consultation', 'kamango likwanjanja jean lipenz'),
(4, 6, 3, 2, 1, 1, 0, '2023-04-22 08:10:33', '2023-04-22 08:11:51', 0, NULL, 'Consultation', 'kamango likwanjanja jean lipenz'),
(5, 6, 4, 4, 1, 1, 0, '2023-04-22 14:58:01', '2023-04-22 14:58:01', 0, NULL, 'Consultation', 'lifwa  adivin');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `bedroom_id` int DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `it_has_taken` tinyint(1) DEFAULT NULL,
  `cost` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bedroom`
--

CREATE TABLE `bedroom` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `hospital_id` int DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `description` varchar(53) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bedroom_category`
--

CREATE TABLE `bedroom_category` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `box`
--

CREATE TABLE `box` (
  `id` int NOT NULL,
  `hospital_id` int NOT NULL,
  `sum` decimal(10,2) DEFAULT NULL,
  `output_sum` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `box`
--

INSERT INTO `box` (`id`, `hospital_id`, `sum`, `output_sum`) VALUES
(1, 1, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `box_expense`
--

CREATE TABLE `box_expense` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `doc_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `box_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `box_historic`
--

CREATE TABLE `box_historic` (
  `id` int NOT NULL,
  `box_id` int NOT NULL,
  `tag` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `box_input`
--

CREATE TABLE `box_input` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `porter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `doc_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `box_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `box_output`
--

CREATE TABLE `box_output` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `doc_ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `box_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE `consultation` (
  `id` int NOT NULL,
  `patient_id` int NOT NULL,
  `file_id` int DEFAULT NULL,
  `hospital_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `doctor_id` int DEFAULT NULL,
  `is_complete` tinyint(1) NOT NULL,
  `temperature` decimal(9,0) DEFAULT NULL,
  `weight` decimal(9,2) DEFAULT NULL,
  `arterial_tension` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cardiac_frequency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respiratory_frequency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oxygen_saturation` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `diagnostic` longtext COLLATE utf8mb4_unicode_ci,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL,
  `followed` json DEFAULT NULL,
  `medicines_prescriptions` json DEFAULT NULL,
  `treatments_descriptions` longtext COLLATE utf8mb4_unicode_ci,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultation`
--

INSERT INTO `consultation` (`id`, `patient_id`, `file_id`, `hospital_id`, `user_id`, `created_at`, `is_deleted`, `doctor_id`, `is_complete`, `temperature`, `weight`, `arterial_tension`, `cardiac_frequency`, `respiratory_frequency`, `oxygen_saturation`, `note`, `diagnostic`, `comment`, `full_name`, `is_published`, `followed`, `medicines_prescriptions`, `treatments_descriptions`, `age`) VALUES
(1, 1, 1, 1, 7, '2023-04-21 10:06:54', 0, 2, 0, NULL, NULL, NULL, NULL, '22', '100°%', '', '', '', 'Okomba  Mimi', 1, '[{\"date\": \"2023-04-21\", \"weight\": \"25\", \"temperature\": \"36\", \"arterialTension\": \"\", \"cardiacFrequency\": \"97\", \"oxygenSaturation\": \"100°%\", \"respiratoryFrequency\": \"22\"}, {\"date\": \"2023-04-21\", \"weight\": \"0\", \"temperature\": \"0\", \"arterialTension\": \"\", \"cardiacFrequency\": \"\", \"oxygenSaturation\": \"100°%\", \"respiratoryFrequency\": \"22\"}, {\"date\": \"2023-04-21\", \"weight\": \"0\", \"temperature\": \"0\", \"arterialTension\": \"\", \"cardiacFrequency\": \"\", \"oxygenSaturation\": \"100°%\", \"respiratoryFrequency\": \"22\"}]', '[]', NULL, NULL),
(2, 2, 14, 1, 11, '2023-04-21 12:16:50', 0, 2, 0, NULL, NULL, NULL, NULL, '', '99%', '', '', '', 'kamango likwanjanja jean lipenz', 1, '[{\"date\": \"2023-04-21\", \"weight\": \"70\", \"temperature\": \"36\", \"arterialTension\": \"14/7\", \"cardiacFrequency\": \"111\", \"oxygenSaturation\": \"99%\", \"respiratoryFrequency\": \"\"}, {\"date\": \"2023-04-21\", \"weight\": \"0\", \"temperature\": \"0\", \"arterialTension\": \"\", \"cardiacFrequency\": \"\", \"oxygenSaturation\": \"99%\", \"respiratoryFrequency\": \"\"}]', '[]', NULL, NULL),
(3, 2, 11, 1, 1, '2023-04-22 08:11:51', 0, 6, 0, NULL, NULL, NULL, NULL, '', '', '', '', '', 'kamango likwanjanja jean lipenz', 1, '[{\"date\": \"2023-04-22\", \"weight\": \"0\", \"temperature\": \"0\", \"arterialTension\": \"\", \"cardiacFrequency\": \"\", \"oxygenSaturation\": \"\", \"respiratoryFrequency\": \"\"}]', '[]', NULL, NULL),
(4, 4, 13, 1, 1, '2023-04-22 14:58:01', 0, 6, 0, NULL, NULL, NULL, NULL, '', '', '', '', '', 'lifwa  adivin', 0, '[{\"date\": \"2023-04-22\", \"weight\": \"0\", \"temperature\": \"0\", \"arterialTension\": \"\", \"cardiacFrequency\": \"\", \"oxygenSaturation\": \"\", \"respiratoryFrequency\": \"\"}, {\"date\": \"2023-04-22\", \"weight\": \"0\", \"temperature\": \"0\", \"arterialTension\": \"\", \"cardiacFrequency\": \"\", \"oxygenSaturation\": \"\", \"respiratoryFrequency\": \"\"}]', '[]', NULL, 32);

-- --------------------------------------------------------

--
-- Table structure for table `consultations_type`
--

CREATE TABLE `consultations_type` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `wording` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultations_type`
--

INSERT INTO `consultations_type` (`id`, `hospital_id`, `wording`, `created_at`, `is_deleted`, `price`) VALUES
(1, 1, 'consultation générale', '2023-04-19 05:02:14', 0, '10.00'),
(2, 1, 'consultation en urgence', '2023-04-19 05:02:15', 0, '15.00'),
(3, 1, 'consultation spécialité', '2023-04-19 05:03:03', 0, '20.00'),
(4, 1, 'Schéma quinine', '2023-04-19 08:42:32', 0, '30.00'),
(5, 1, 'Suture / pointe', '2023-04-19 08:43:51', 0, '3.00'),
(6, 1, 'Fiche CPS', '2023-04-19 08:47:27', 0, '2.24'),
(7, 1, 'Rendez-vous Médical (généraliste)', '2023-04-19 08:49:10', 0, '5.00'),
(8, 1, 'Rendez-vous Médical (spécialiste)', '2023-04-19 08:49:46', 0, '10.00'),
(9, 1, 'Vaccination', '2023-04-19 08:50:46', 0, '0.50'),
(10, 1, 'Autres actes et soins ambulatoires', '2023-04-19 08:52:36', 0, '0.50'),
(11, 1, 'Maternité', '2023-04-19 08:53:13', 0, '0.50'),
(12, 1, 'Chirurgie générale', '2023-04-19 08:53:42', 0, '0.50'),
(13, 1, 'Soins en urgence / Réanimation', '2023-04-19 08:55:59', 0, '0.50'),
(14, 1, 'Soins hospitaliers / Observation', '2023-04-19 08:56:50', 0, '0.50');

-- --------------------------------------------------------

--
-- Table structure for table `consultation_act`
--

CREATE TABLE `consultation_act` (
  `consultation_id` int NOT NULL,
  `act_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultation_act`
--

INSERT INTO `consultation_act` (`consultation_id`, `act_id`) VALUES
(1, 53),
(1, 54),
(2, 53),
(2, 54),
(3, 52),
(3, 54),
(4, 52),
(4, 54);

-- --------------------------------------------------------

--
-- Table structure for table `consultation_exam`
--

CREATE TABLE `consultation_exam` (
  `consultation_id` int NOT NULL,
  `exam_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultation_exam`
--

INSERT INTO `consultation_exam` (`consultation_id`, `exam_id`) VALUES
(1, 5),
(1, 35),
(4, 14),
(4, 15),
(4, 35);

-- --------------------------------------------------------

--
-- Table structure for table `consultation_treatment`
--

CREATE TABLE `consultation_treatment` (
  `consultation_id` int NOT NULL,
  `treatment_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consumption_unit`
--

CREATE TABLE `consumption_unit` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `wording` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `covenant`
--

CREATE TABLE `covenant` (
  `id` int NOT NULL,
  `denomination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `focal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `logo_id` int DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `covenant_invoice`
--

CREATE TABLE `covenant_invoice` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `covenant_id` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `leftover` decimal(10,2) DEFAULT NULL,
  `is_complete` tinyint(1) NOT NULL,
  `v_ta` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `released_at` datetime DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `currency` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL,
  `year` int DEFAULT NULL,
  `month` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files_price` decimal(10,2) DEFAULT NULL,
  `total_acts_baskets` decimal(10,2) DEFAULT NULL,
  `total_exams_baskets` decimal(10,2) DEFAULT NULL,
  `total_nursing_price` decimal(10,2) DEFAULT NULL,
  `hosp_price` decimal(10,2) DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int NOT NULL,
  `hospital_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destocking_of_medicines`
--

CREATE TABLE `destocking_of_medicines` (
  `id` int NOT NULL,
  `medicine_id` int DEFAULT NULL,
  `loss` decimal(10,2) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `destock_medicine_for_hospital`
--

CREATE TABLE `destock_medicine_for_hospital` (
  `id` int NOT NULL,
  `medicine_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230422063256', '2023-04-22 06:58:11', 456),
('DoctrineMigrations\\Version20230422143731', '2023-04-22 14:39:37', 1052);

-- --------------------------------------------------------

--
-- Table structure for table `drugstore_supply`
--

CREATE TABLE `drugstore_supply` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `hospital_id` int DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `released` datetime DEFAULT NULL,
  `provider_id` int DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `currency` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drugstore_supply_medicine`
--

CREATE TABLE `drugstore_supply_medicine` (
  `drugstore_supply_id` int NOT NULL,
  `medicine_id` int NOT NULL,
  `id` int NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `quantity_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_qty` int DEFAULT NULL,
  `v_ta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `wording` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `category_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `hospital_id`, `wording`, `created_at`, `is_deleted`, `category_id`, `price`) VALUES
(1, 1, 'Hémoglobine glyquée', '2023-04-19 07:56:58', 0, 1, '25.00'),
(2, 1, 'Hémoglobine (Hb)', '2023-04-19 07:56:58', 0, 1, '4.00'),
(3, 1, 'Hématocrite (Ht)', '2023-04-19 07:56:59', 0, 1, '5.00'),
(4, 1, 'Globules Rouge (GR)', '2023-04-19 07:56:59', 0, 1, '5.00'),
(5, 1, 'Globules Blancs (Gb)', '2023-04-19 07:56:59', 0, 1, '6.00'),
(6, 1, 'Formule leucocytaire (FL)', '2023-04-19 08:00:19', 0, 1, '10.00'),
(7, 1, 'Vitesse de sédimentation (VS)', '2023-04-19 08:00:19', 0, 1, '4.00'),
(8, 1, 'Plaquettes (Pq)', '2023-04-19 08:00:20', 0, 1, '6.00'),
(9, 1, 'Electrophorèse d\'hémoglobine', '2023-04-19 08:00:20', 0, 1, '25.00'),
(10, 1, 'Réticulocytes (RT)', '2023-04-19 08:00:21', 0, 1, '7.00'),
(11, 1, 'Temps de saignement (Ts)', '2023-04-19 08:02:37', 0, 1, '3.00'),
(12, 1, 'Temps de coagulation (Tc)', '2023-04-19 08:02:37', 0, 1, '3.00'),
(13, 1, 'Test d\'Emmel', '2023-04-19 08:02:38', 0, 1, '5.00'),
(14, 1, 'Groupe sanguin (GS)', '2023-04-19 08:02:38', 0, 1, '10.00'),
(15, 1, 'Widal', '2023-04-19 08:06:02', 0, 2, '10.00'),
(16, 1, 'HIV / Détermine', '2023-04-19 08:06:02', 0, 2, '3.00'),
(17, 1, 'VDRL (TDR)', '2023-04-19 08:06:03', 0, 2, '2.00'),
(18, 1, 'ASLO', '2023-04-19 08:06:03', 0, 2, '15.00'),
(19, 1, 'Test de Grossesse (TG)', '2023-04-19 08:06:04', 0, 2, '5.00'),
(20, 1, 'Ag HBS (TDR)', '2023-04-19 08:08:48', 0, 2, '8.00'),
(21, 1, 'AC HVC (TDR)', '2023-04-19 08:08:49', 0, 2, '8.00'),
(22, 1, 'AC HBV (TDR)', '2023-04-19 08:08:50', 0, 2, '8.00'),
(23, 1, 'Facteur humanoïde', '2023-04-19 08:08:50', 0, 2, '20.00'),
(24, 1, 'AC Helicobacter pilori', '2023-04-19 08:08:50', 0, 2, '15.00'),
(25, 1, 'T3', '2023-04-19 08:12:10', 0, 3, '50.00'),
(26, 1, 'T4', '2023-04-19 08:12:11', 0, 3, '50.00'),
(27, 1, 'Proclatine', '2023-04-19 08:12:11', 0, 3, '45.00'),
(28, 1, 'Œstrogène (Œstrone et Œstradiol)', '2023-04-19 08:12:12', 0, 3, '60.00'),
(29, 1, 'Testostérone ', '2023-04-19 08:12:12', 0, 3, '50.00'),
(30, 1, 'Progestérone', '2023-04-19 08:14:13', 0, 3, '50.00'),
(31, 1, 'Œstradiol', '2023-04-19 08:14:14', 0, 3, '35.00'),
(32, 1, 'Œstrone', '2023-04-19 08:14:15', 0, 3, '35.00'),
(33, 1, 'B-HCG', '2023-04-19 08:14:15', 0, 3, '65.00'),
(34, 1, 'Insuline', '2023-04-19 08:14:16', 0, 3, '50.00'),
(35, 1, 'Goutte épaisse (GE)', '2023-04-19 08:17:51', 0, 4, '3.00'),
(36, 1, 'Goutte Fraiche (GF)', '2023-04-19 08:17:51', 0, 4, '3.00'),
(37, 1, 'Selle directes', '2023-04-19 08:17:51', 0, 4, '4.00'),
(38, 1, 'Selle après coloration', '2023-04-19 08:17:52', 0, 4, '10.00'),
(39, 1, 'Sédiment urinaire (SU) / Culot urinaire', '2023-04-19 08:17:53', 0, 4, '3.00'),
(40, 1, 'Urines complètes', '2023-04-19 08:19:42', 0, 4, '10.00'),
(41, 1, 'Urines de 24 heures', '2023-04-19 08:19:42', 0, 4, '15.00'),
(42, 1, 'Glycémie', '2023-04-19 08:21:55', 0, 5, '3.00'),
(43, 1, 'Hyper glycémie Perros', '2023-04-19 08:21:55', 0, 5, '10.00'),
(44, 1, 'Urée', '2023-04-19 08:21:56', 0, 5, '15.00'),
(45, 1, 'Créatinine', '2023-04-19 08:21:56', 0, 5, '15.00'),
(46, 1, 'Acide urique (dans le sang)', '2023-04-19 08:21:57', 0, 5, '15.00'),
(47, 1, 'Acide urique (dans les urines)', '2023-04-19 08:23:31', 0, 5, '15.00'),
(48, 1, 'SGOT/ASAT', '2023-04-19 08:23:33', 0, 5, '15.00'),
(49, 1, 'SGPT/ALAT', '2023-04-19 08:23:33', 0, 5, '15.00'),
(50, 1, 'Bilirubine totale', '2023-04-19 08:23:34', 0, 5, '10.00'),
(51, 1, 'Bilirubine directe', '2023-04-19 08:23:34', 0, 5, '10.00'),
(52, 1, 'Bilirubine indirecte', '2023-04-19 08:25:27', 0, 5, '10.00'),
(53, 1, 'Cholestérol total', '2023-04-19 08:25:27', 0, 5, '30.00'),
(54, 1, 'Cholestérol HDL', '2023-04-19 08:25:28', 0, 5, '15.00'),
(55, 1, 'Cholestérol LDL/LDH', '2023-04-19 08:25:29', 0, 5, '15.00'),
(56, 1, 'Lipides total', '2023-04-19 08:25:29', 0, 5, '10.00'),
(57, 1, 'Triglycéride', '2023-04-19 08:30:15', 0, 5, '10.00'),
(58, 1, 'CRP', '2023-04-19 08:30:15', 0, 5, '15.00'),
(59, 1, 'Na+', '2023-04-19 08:30:16', 0, 5, '15.00'),
(60, 1, 'K+', '2023-04-19 08:30:16', 0, 5, '15.00'),
(61, 1, 'CI-', '2023-04-19 08:30:17', 0, 5, '15.00'),
(62, 1, 'Ca+', '2023-04-19 08:31:01', 0, 5, '15.00'),
(63, 1, 'Mg+', '2023-04-19 08:31:02', 0, 5, '15.00'),
(64, 1, 'PSA', '2023-04-19 08:31:02', 0, 5, '35.00'),
(65, 1, 'FU à frais', '2023-04-19 08:33:52', 0, 6, '4.00'),
(66, 1, 'FV à frais', '2023-04-19 08:33:53', 0, 6, '4.00'),
(67, 1, 'Uroculaire +ATB (ECBU)', '2023-04-19 08:33:53', 0, 6, '25.00'),
(68, 1, 'Coproculture + ATB', '2023-04-19 08:33:54', 0, 6, '25.00'),
(69, 1, 'Hémoculture + ATB', '2023-04-19 08:33:54', 0, 6, '25.00'),
(70, 1, 'Spermoculture indirecte (post coïtal) test d\'hunier', '2023-04-19 08:36:54', 0, 6, '25.00'),
(71, 1, 'Spermoculture + ATB', '2023-04-19 08:36:55', 0, 6, '35.00'),
(72, 1, 'Spermogramme / Séance', '2023-04-19 08:36:55', 0, 6, '10.00'),
(73, 1, 'Variaculture (pus, FV, LCR)', '2023-04-19 08:36:56', 0, 6, '25.00'),
(74, 1, 'Coloration de gram', '2023-04-19 08:36:56', 0, 6, '10.00'),
(75, 1, 'Meares stamey (EPS et URO) + Prélèvement', '2023-04-19 08:37:40', 0, 6, '20.00');

-- --------------------------------------------------------

--
-- Table structure for table `exams_invoice_basket`
--

CREATE TABLE `exams_invoice_basket` (
  `id` int NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `exam_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams_invoice_basket`
--

INSERT INTO `exams_invoice_basket` (`id`, `invoice_id`, `exam_id`, `price`) VALUES
(1, 1, 35, '3.00'),
(2, 1, 5, '6.00'),
(3, 4, 14, '10.00'),
(4, 4, 35, '3.00'),
(5, 4, 15, '10.00');

-- --------------------------------------------------------

--
-- Table structure for table `exam_category`
--

CREATE TABLE `exam_category` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_category`
--

INSERT INTO `exam_category` (`id`, `hospital_id`, `name`, `created_at`) VALUES
(1, 1, 'HEMATOLOGIE', '2023-04-19 07:54:00'),
(2, 1, 'SEROLOGIE', '2023-04-19 07:54:01'),
(3, 1, 'HORMONOLOGIE', '2023-04-19 07:54:01'),
(4, 1, 'PARASITOLOGIE', '2023-04-19 07:54:02'),
(5, 1, 'BIOCHIMIE', '2023-04-19 07:54:02'),
(6, 1, 'MICROBIOLOGIE', '2023-04-19 07:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `denomination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_id` int DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `user_id`, `denomination`, `unit_name`, `created_at`, `tel`, `email`, `logo_id`, `is_deleted`, `address`) VALUES
(1, 1, 'Saint André Medical Center', 'SAMC', NULL, '09989911893', 'med.center@saintandremedicalcenter.org', 1, 0, '4ème Rue Résidentiel n°348   C/ Limete/Kinshasa. Réf : Parquet Général');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalization`
--

CREATE TABLE `hospitalization` (
  `id` int NOT NULL,
  `consultation_id` int DEFAULT NULL,
  `bed_id` int DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `released_at` datetime NOT NULL,
  `leave_at` datetime DEFAULT NULL,
  `days_counter` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_object`
--

CREATE TABLE `image_object` (
  `id` int NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `hospital_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_object`
--

INSERT INTO `image_object` (`id`, `file_path`, `created_at`, `hospital_id`) VALUES
(1, '643e86c3e979e_logo_st_andre_med_center.jpg', '2023-04-18 13:02:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `consultation_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `leftover` decimal(10,2) DEFAULT NULL,
  `is_complete` tinyint(1) NOT NULL,
  `released_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `user_id` int DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `v_ta` double DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `hospital_id`, `patient_id`, `consultation_id`, `amount`, `total_amount`, `paid`, `leftover`, `is_complete`, `released_at`, `is_deleted`, `user_id`, `discount`, `v_ta`, `full_name`, `updated_at`, `sub_total`, `currency`, `is_published`) VALUES
(1, 1, 1, 1, '189.00', '189.00', '0.00', '189.00', 0, '2023-04-21 10:06:54', 0, 7, NULL, NULL, 'Okomba  Mimi', NULL, '189.00', '$', 0),
(2, 1, 2, 2, '85.50', '85.50', '0.00', '85.50', 0, '2023-04-21 12:16:50', 0, 11, NULL, NULL, 'kamango likwanjanja jean lipenz', NULL, '85.50', '$', 0),
(3, 1, 2, 3, '65.50', '65.50', '0.00', '65.50', 0, '2023-04-22 08:11:51', 0, 1, NULL, NULL, 'kamango likwanjanja jean lipenz', NULL, '65.50', '$', 0),
(4, 1, 4, 4, '88.50', '88.50', '0.00', '88.50', 0, '2023-04-22 14:58:01', 0, 1, NULL, NULL, 'lifwa  adivin', NULL, '88.50', '$', 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_storic`
--

CREATE TABLE `invoice_storic` (
  `id` int NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `nursing_id` int DEFAULT NULL,
  `covenant_invoice_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE `lab` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `consultation_id` int DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_prescriber_id` int DEFAULT NULL,
  `user_publisher_id` int DEFAULT NULL,
  `results` json DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`id`, `hospital_id`, `user_id`, `consultation_id`, `note`, `comment`, `updated_at`, `created_at`, `patient_id`, `is_published`, `full_name`, `user_prescriber_id`, `user_publisher_id`, `results`, `age`) VALUES
(1, 1, 1, 1, '', NULL, NULL, '2023-04-21 10:06:54', 1, 0, 'Okomba  Mimi', 1, NULL, '[]', NULL),
(2, 1, 1, 4, '', '', '2023-04-22 15:21:20', '2023-04-22 14:58:01', 4, 1, 'lifwa  adivin', 1, 1, '[{\"exam\": \"Groupe sanguin (GS)\", \"result\": \"lklklk\", \"normalValue\": \"popo\"}, {\"exam\": \"Goutte épaisse (GE)\", \"result\": \"kkj\", \"normalValue\": \",n\"}, {\"exam\": \"Widal\", \"result\": \"jhh\", \"normalValue\": \"gfg\"}]', 32);

-- --------------------------------------------------------

--
-- Table structure for table `lab_result`
--

CREATE TABLE `lab_result` (
  `id` int NOT NULL,
  `lab_id` int DEFAULT NULL,
  `exam_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lab_result`
--

INSERT INTO `lab_result` (`id`, `lab_id`, `exam_id`) VALUES
(1, 1, 35),
(2, 1, 5),
(3, 2, 14),
(4, 2, 35),
(5, 2, 15);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int NOT NULL,
  `consumption_unit_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `sub_category_id` int DEFAULT NULL,
  `hospital_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wording` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `days_remainder` int DEFAULT NULL,
  `released` datetime DEFAULT NULL,
  `total_quantity` double DEFAULT NULL,
  `v_ta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicines_sold`
--

CREATE TABLE `medicines_sold` (
  `id` int NOT NULL,
  `medicine_id` int NOT NULL,
  `invoice_id` int NOT NULL,
  `quantity` double NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sum` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `gain` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_categories`
--

CREATE TABLE `medicine_categories` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `wording` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_invoice`
--

CREATE TABLE `medicine_invoice` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `hospital_id` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `released` datetime DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `v_ta` double DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_sub_categories`
--

CREATE TABLE `medicine_sub_categories` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `hospital_id` int DEFAULT NULL,
  `wording` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nursing`
--

CREATE TABLE `nursing` (
  `id` int NOT NULL,
  `consultation_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `hospital_id` int DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `v_ta` double DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `leftover` decimal(10,2) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival_dates` json DEFAULT NULL,
  `released_at_items` json DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `is_payed` tinyint(1) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acts` json DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nursing`
--

INSERT INTO `nursing` (`id`, `consultation_id`, `created_at`, `patient_id`, `is_published`, `comment`, `hospital_id`, `is_completed`, `amount`, `total_amount`, `discount`, `v_ta`, `paid`, `leftover`, `full_name`, `arrival_dates`, `released_at_items`, `sub_total`, `is_payed`, `currency`, `acts`, `age`) VALUES
(1, 1, '2023-04-21 10:06:54', 1, 0, NULL, 1, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 'Okomba  Mimi', '[]', '[]', '0.00', 0, NULL, '[{\"isDone\": false, \"wording\": \"Soins en hospitalier par jour\", \"procedures\": [{\"item\": \"\", \"quantity\": \"\"}], \"releasedAt\": \"2023-04-21\"}, {\"isDone\": false, \"wording\": \"Observation en urgence\", \"procedures\": [{\"item\": \"\", \"quantity\": \"\"}], \"releasedAt\": \"2023-04-21\"}]', NULL),
(2, 2, '2023-04-21 12:16:50', 2, 0, '', 1, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 'kamango likwanjanja jean lipenz', '[]', '[]', '0.00', 0, NULL, '[{\"isDone\": true, \"wording\": \"Soins en hospitalier par jour\", \"procedures\": [{\"item\": \"ceftriaxone\", \"quantity\": \"1G\"}, {\"item\": \"cifin metro\", \"quantity\": \"2 BOITE\"}], \"releasedAt\": \"2023-04-21\"}, {\"isDone\": true, \"wording\": \"Observation en urgence\", \"procedures\": [{\"item\": \"schema laxcis\", \"quantity\": \"500ML SM 1 QMPOULE DE LAXIS\"}], \"releasedAt\": \"2023-04-21\"}]', NULL),
(3, 3, '2023-04-22 08:11:51', 2, 0, NULL, 1, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 'kamango likwanjanja jean lipenz', '[]', '[]', '0.00', 0, '$', '[{\"isDone\": false, \"wording\": \"Soins en hospitalier par jour\", \"procedures\": [{\"item\": \"\", \"quantity\": \"\"}], \"releasedAt\": \"2023-04-22\"}, {\"isDone\": false, \"wording\": \"Perfusion, injection ou infusion\", \"procedures\": [{\"item\": \"\", \"quantity\": \"\"}], \"releasedAt\": \"2023-04-22\"}]', NULL),
(4, 4, '2023-04-22 14:58:01', 4, 0, NULL, 1, 0, '0.00', '0.00', NULL, NULL, '0.00', '0.00', 'lifwa  adivin', '[]', '[]', '0.00', 0, NULL, '[{\"isDone\": false, \"wording\": \"Soins en hospitalier par jour\", \"procedures\": [{\"item\": \"\", \"quantity\": \"\"}], \"releasedAt\": \"2023-04-22\"}, {\"isDone\": false, \"wording\": \"Perfusion, injection ou infusion\", \"procedures\": [{\"item\": \"\", \"quantity\": \"\"}], \"releasedAt\": \"2023-04-22\"}]', 32);

-- --------------------------------------------------------

--
-- Table structure for table `nursing_treatment`
--

CREATE TABLE `nursing_treatment` (
  `id` int NOT NULL,
  `nursing_id` int DEFAULT NULL,
  `treatment_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `medicines` json DEFAULT NULL,
  `leave_at` datetime DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `hospital_id`, `title`, `created_at`, `is_deleted`) VALUES
(1, 1, 'médecin', '2023-04-18 12:59:47', 0),
(2, 1, 'laborantin(e)', '2023-04-18 12:59:48', 0),
(3, 1, 'infirmier(e)', '2023-04-18 12:59:48', 0),
(4, 1, 'docteur', '2023-04-18 13:27:45', 0),
(5, 1, 'caissier(e)', '2023-04-18 17:27:15', 0),
(6, 1, 'pharmacien(ne)', '2023-04-18 17:27:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `parameters`
--

CREATE TABLE `parameters` (
  `id` int NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `second_currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hospital_id` int DEFAULT NULL,
  `f_operation` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_operation` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parameters`
--

INSERT INTO `parameters` (`id`, `currency`, `rate`, `created_at`, `updated_at`, `second_currency`, `name`, `code`, `second_code`, `hospital_id`, `f_operation`, `l_operation`) VALUES
(1, '$', '2230.00', '2023-04-18 16:41:12', NULL, 'Fc', '(US) United States of America \' $ \'', 'US', 'CD', 1, '*', '/');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `covenant_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `private_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private_key_exists` tinyint(1) NOT NULL,
  `profile_id` int DEFAULT NULL,
  `hospital_id` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `user_id`, `covenant_id`, `name`, `last_name`, `first_name`, `sex`, `birth_date`, `birth_place`, `marital_status`, `tel`, `email`, `father`, `mother`, `address`, `created_at`, `is_deleted`, `private_key`, `is_private_key_exists`, `profile_id`, `hospital_id`, `age`, `nationality`, `full_name`) VALUES
(1, 7, NULL, 'Okomba', '', 'Mimi', 'F', '2019-04-01', 'Kinshasa', 'none', '09998175401', '', '', '', 'Yolo', '2023-04-21 09:58:07', 0, NULL, 0, NULL, 1, 4, '', 'Okomba  Mimi'),
(2, 11, NULL, 'kamango', 'likwanjanja', 'jean lipenz', 'M', '1957-12-31', 'kisangani', 'married', '0841196570', '', '', '', 'SALUMU 29 SALONGO LIMETE', '2023-04-21 12:08:48', 0, NULL, 0, NULL, 1, 66, 'CONGOLAISE', 'kamango likwanjanja jean lipenz'),
(3, 1, NULL, 'Mukadi', NULL, 'Parfait', 'M', NULL, NULL, NULL, '0843210565', NULL, NULL, NULL, NULL, '2023-04-21 12:08:48', 0, NULL, 0, NULL, 1, NULL, NULL, 'Mukadi  Parfait'),
(4, 1, NULL, 'lifwa', '', 'adivin', 'M', '1991-03-05', '', 'single', '0843210565', '', '', '', '', '2023-04-22 14:52:12', 0, NULL, 0, NULL, 1, 32, '', 'lifwa  adivin');

-- --------------------------------------------------------

--
-- Table structure for table `pdf_object`
--

CREATE TABLE `pdf_object` (
  `id` int NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_image_object`
--

CREATE TABLE `personal_image_object` (
  `id` int NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_image_object`
--

INSERT INTO `personal_image_object` (`id`, `file_path`, `created_at`, `user_id`) VALUES
(1, '643ea49344d9c_20533915.jpg', '2023-04-18 15:09:23', 3),
(2, '643ea4945c989_unnamed.png', '2023-04-18 15:09:24', 2),
(3, '643ea497736d7_318176535_680042623575578_7852027593791427384_n.jpg', '2023-04-18 15:09:27', 1),
(4, '643ea49b42d61_1123013.jpg', '2023-04-18 15:09:31', 4),
(5, '643ea631afd8a_1094421.jpg', '2023-04-18 15:16:17', 3),
(6, '643ea8368c41d_Screenshot_20230418-113255.jpg', '2023-04-18 15:24:54', 3),
(7, '643eab1a33648_1667850610186.jpg', '2023-04-18 15:37:14', 3),
(8, '643ec6e6bf8c7_placide.jpg', '2023-04-18 17:35:50', 8),
(9, '643ec71925244_solange.png', '2023-04-18 17:36:41', 7),
(10, '643ec743b453f_WhatsApp Image 2023-04-11 à 15.33.32.jpg', '2023-04-18 17:37:23', 6),
(11, '643fdd08d7218_logo_st_andre_med_center.jpg', '2023-04-19 13:22:32', 1),
(12, '643fdd09b2620_ed9232764bbfeaf0c47b0f07eaab6f68.jpg', '2023-04-19 13:22:33', 9),
(13, '643fe6bac699f_WhatsApp Image 2023-04-19 à 14.01.39.jpg', '2023-04-19 14:03:54', 10),
(14, '643fe6bcd470f_WhatsApp Image 2023-02-04 at 18.56.43.jpeg', '2023-04-19 14:03:56', 1),
(15, '64426cf6e81cb_20533915.jpg', '2023-04-21 12:01:10', 11);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int NOT NULL,
  `consultation_id` int DEFAULT NULL,
  `lab_id` int DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `hospital_id` int DEFAULT NULL,
  `descriptions` longtext COLLATE utf8mb4_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  `orders` json DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `consultation_id`, `lab_id`, `patient_id`, `user_id`, `hospital_id`, `descriptions`, `updated_at`, `is_published`, `orders`, `full_name`) VALUES
(1, 4, 2, 4, NULL, 1, NULL, NULL, 0, '[]', 'lifwa  adivin');

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `wording` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `focal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `wording` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`id`, `hospital_id`, `wording`, `category_id`, `price`, `created_at`, `is_deleted`) VALUES
(1, 1, 'Soins infirmiers PP', 1, '2.24', '2023-04-19 07:22:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_category`
--

CREATE TABLE `treatment_category` (
  `id` int NOT NULL,
  `hospital_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `treatment_category`
--

INSERT INTO `treatment_category` (`id`, `hospital_id`, `name`, `created_at`) VALUES
(1, 1, 'Acte / activité', '2023-04-19 07:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `u_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hospital_center_id` int DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `profile_id` int DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `created_at`, `u_id`, `user_id`, `email`, `hospital_center_id`, `tel`, `is_active`, `is_deleted`, `profile_id`, `name`) VALUES
(1, 'root', '[\"ROLE_OWNER_ADMIN\"]', '$2y$13$IolIFjvqAqtst1aAW6MLUeL0V5.CvqYe72HwP0eH54KGJBhidlUeO', '2023-04-18 11:28:28', '643e7edc2b8771', NULL, '', 1, '0841364472', 1, 0, 11, NULL),
(2, 'msambya', '[\"ROLE_MD\"]', '$2y$13$tXhI0Y1mryyHCricGioGVOzLZRFSbytyiG.O0qfv38l2KeT3bwH9a', '2023-04-18 13:12:04', '643e7edc2b8771', 1, 'msambyamkyoba@gmail.com', 1, '0998911893', 1, 0, 2, 'Msambya Toto'),
(3, 'kasongo', '[\"ROLE_DOCTOR\"]', '$2y$13$s4rbE66y56OLLRqQQnD2H.2EYiAw2zaexW0TzOWoGfeOrMUQKFK.G', '2023-04-18 13:15:07', '643e7edc2b8771', 1, '', 1, '0815067450', 1, 0, 7, 'Kasongo Scott'),
(4, 'mobila', '[\"ROLE_DOCTOR\"]', '$2y$13$eTvIpEtCLY25k0GKCwEueO1Umocsuazx54w4lBcYS72h3VjjGZg/i', '2023-04-18 13:29:05', '643e7edc2b8771', 1, '', 1, '0819464920', 1, 0, 4, 'mobila Tania '),
(5, 'sharon', '[\"ROLE_LOCKER\"]', '$2y$13$V4UozBw8d31z7FF8OIGBfObx5LqXkjZpPcoVCe6RO2anCUTjzT.pO', '2023-04-18 17:31:02', '643e7edc2b8771', 1, '', 1, '0815806061', 1, 0, NULL, 'kaya Sharon '),
(6, 'mayce', '[\"ROLE_DOCTOR\"]', '$2y$13$TUEC/yy0zFJUn3jAaLJtGuVqZxTDOUTsNvDYpfu9MSjVfIh01MxFK', '2023-04-18 17:31:19', '643e7edc2b8771', 1, NULL, 1, '0841292825', 1, 0, 10, 'Okitolenga Mayce'),
(7, 'mpwa', '[\"ROLE_NURSE\"]', '$2y$13$cM5NWdqZxKdyLwRe9AvFB.RI5zlsGN5RpNt5x89yu8gKghOZ7qpji', '2023-04-18 17:31:39', '643e7edc2b8771', 1, '', 1, '0821133055', 1, 0, 9, 'mpwa solange'),
(8, 'placide', '[\"ROLE_LAB\"]', '$2y$13$vFSn0j.asl4qDrI8x6QjT.qJwfSLcjIrBaLK1T4IjhDB5etx6e/gi', '2023-04-18 17:31:58', '643e7edc2b8771', 1, 'ombaplacide.com@gmail.com', 1, '0829782601', 1, 0, 8, 'omba placide'),
(9, 'botuli', '[\"ROLE_DOCTOR\"]', '$2y$13$2PFWSAFD3TXIWQenpsXkF.iU25D2w2NLpKlZxRdQQM9Wu5xR5FvHy', '2023-04-19 13:18:47', '643e7edc2b8771', 1, '', 1, '0821791753', 1, 0, 12, 'Botuli Eric'),
(10, 'richard', '[\"ROLE_LAB\"]', '$2y$13$/lL./exaIHjZ6HlLW3GntumIHWfq6SCq7A2UtRgrRUxgZBEMzKPFW', '2023-04-19 13:54:51', '643e7edc2b8771', 1, '', 1, '0855102428', 1, 0, 13, 'Tshibambe Richard'),
(11, 'samantha', '[\"ROLE_NURSE\"]', '$2y$13$v4VH/bI371o9luut/3/QE.W1TLRwMAEaZ6DUTqWAGEqvyqakzmzzy', '2023-04-21 10:43:38', '643e7edc2b8771', 1, 'samanthakibambekamango@gmail.com', 1, '0841364472', 1, 0, 15, 'Balambomba Samantha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `act`
--
ALTER TABLE `act`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AFECF54463DBB69` (`hospital_id`),
  ADD KEY `IDX_AFECF54412469DE2` (`category_id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B5F1AFE5F675F31B` (`author_id`),
  ADD KEY `IDX_B5F1AFE563DBB69` (`hospital_id`);

--
-- Indexes for table `acts_invoice_basket`
--
ALTER TABLE `acts_invoice_basket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_18E3BB2E2989F1FD` (`invoice_id`),
  ADD KEY `IDX_18E3BB2ED1A55B28` (`act_id`);

--
-- Indexes for table `act_category`
--
ALTER TABLE `act_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_30337BDC63DBB69` (`hospital_id`);

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_268B9C9D3C0C9956` (`user_account_id`),
  ADD KEY `IDX_268B9C9D63DBB69` (`hospital_id`),
  ADD KEY `IDX_268B9C9DFFA0C224` (`office_id`),
  ADD KEY `IDX_268B9C9DED5CA9E6` (`service_id`),
  ADD KEY `IDX_268B9C9DA76ED395` (`user_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_FE38F84462FF6CDF` (`consultation_id`),
  ADD KEY `IDX_FE38F84487F4FB17` (`doctor_id`),
  ADD KEY `IDX_FE38F8446B899279` (`patient_id`),
  ADD KEY `IDX_FE38F84463DBB69` (`hospital_id`),
  ADD KEY `IDX_FE38F844A76ED395` (`user_id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E647FCFF63DBB69` (`hospital_id`),
  ADD KEY `IDX_E647FCFFBDB6797C` (`bedroom_id`);

--
-- Indexes for table `bedroom`
--
ALTER TABLE `bedroom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E615435112469DE2` (`category_id`),
  ADD KEY `IDX_E615435163DBB69` (`hospital_id`);

--
-- Indexes for table `bedroom_category`
--
ALTER TABLE `bedroom_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1F4C876C63DBB69` (`hospital_id`);

--
-- Indexes for table `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8A9483A63DBB69` (`hospital_id`);

--
-- Indexes for table `box_expense`
--
ALTER TABLE `box_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_34F8139763DBB69` (`hospital_id`),
  ADD KEY `IDX_34F81397A76ED395` (`user_id`),
  ADD KEY `IDX_34F8139712469DE2` (`category_id`),
  ADD KEY `IDX_34F81397D8177B3F` (`box_id`);

--
-- Indexes for table `box_historic`
--
ALTER TABLE `box_historic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FC952DF2D8177B3F` (`box_id`);

--
-- Indexes for table `box_input`
--
ALTER TABLE `box_input`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A102EE3F63DBB69` (`hospital_id`),
  ADD KEY `IDX_A102EE3FA76ED395` (`user_id`),
  ADD KEY `IDX_A102EE3FD8177B3F` (`box_id`);

--
-- Indexes for table `box_output`
--
ALTER TABLE `box_output`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6276540863DBB69` (`hospital_id`),
  ADD KEY `IDX_62765408A76ED395` (`user_id`),
  ADD KEY `IDX_6276540812469DE2` (`category_id`),
  ADD KEY `IDX_62765408D8177B3F` (`box_id`);

--
-- Indexes for table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_964685A66B899279` (`patient_id`),
  ADD KEY `IDX_964685A693CB796C` (`file_id`),
  ADD KEY `IDX_964685A663DBB69` (`hospital_id`),
  ADD KEY `IDX_964685A6A76ED395` (`user_id`),
  ADD KEY `IDX_964685A687F4FB17` (`doctor_id`);

--
-- Indexes for table `consultations_type`
--
ALTER TABLE `consultations_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DA0F005163DBB69` (`hospital_id`);

--
-- Indexes for table `consultation_act`
--
ALTER TABLE `consultation_act`
  ADD PRIMARY KEY (`consultation_id`,`act_id`),
  ADD KEY `IDX_D236ADFE62FF6CDF` (`consultation_id`),
  ADD KEY `IDX_D236ADFED1A55B28` (`act_id`);

--
-- Indexes for table `consultation_exam`
--
ALTER TABLE `consultation_exam`
  ADD PRIMARY KEY (`consultation_id`,`exam_id`),
  ADD KEY `IDX_1372260C62FF6CDF` (`consultation_id`),
  ADD KEY `IDX_1372260C578D5E91` (`exam_id`);

--
-- Indexes for table `consultation_treatment`
--
ALTER TABLE `consultation_treatment`
  ADD PRIMARY KEY (`consultation_id`,`treatment_id`),
  ADD KEY `IDX_3EF32AD662FF6CDF` (`consultation_id`),
  ADD KEY `IDX_3EF32AD6471C0366` (`treatment_id`);

--
-- Indexes for table `consumption_unit`
--
ALTER TABLE `consumption_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_114B66C463DBB69` (`hospital_id`);

--
-- Indexes for table `covenant`
--
ALTER TABLE `covenant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F4EB80F763DBB69` (`hospital_id`),
  ADD KEY `IDX_F4EB80F7F98F144A` (`logo_id`);

--
-- Indexes for table `covenant_invoice`
--
ALTER TABLE `covenant_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_58A21C4463DBB69` (`hospital_id`),
  ADD KEY `IDX_58A21C44DA91032A` (`covenant_id`),
  ADD KEY `IDX_58A21C44A76ED395` (`user_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CD1DE18A63DBB69` (`hospital_id`);

--
-- Indexes for table `destocking_of_medicines`
--
ALTER TABLE `destocking_of_medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_535BD9F2F7D140A` (`medicine_id`),
  ADD KEY `IDX_535BD9FA76ED395` (`user_id`);

--
-- Indexes for table `destock_medicine_for_hospital`
--
ALTER TABLE `destock_medicine_for_hospital`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5CD4372F2F7D140A` (`medicine_id`),
  ADD KEY `IDX_5CD4372FA76ED395` (`user_id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `drugstore_supply`
--
ALTER TABLE `drugstore_supply`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7F862433D8698A76` (`document`),
  ADD KEY `IDX_7F862433A76ED395` (`user_id`),
  ADD KEY `IDX_7F86243363DBB69` (`hospital_id`),
  ADD KEY `IDX_7F862433A53A8AA` (`provider_id`);

--
-- Indexes for table `drugstore_supply_medicine`
--
ALTER TABLE `drugstore_supply_medicine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DC49F8AB55F5935` (`drugstore_supply_id`),
  ADD KEY `IDX_DC49F8A2F7D140A` (`medicine_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_38BBA6C663DBB69` (`hospital_id`),
  ADD KEY `IDX_38BBA6C612469DE2` (`category_id`);

--
-- Indexes for table `exams_invoice_basket`
--
ALTER TABLE `exams_invoice_basket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7782193A2989F1FD` (`invoice_id`),
  ADD KEY `IDX_7782193A578D5E91` (`exam_id`);

--
-- Indexes for table `exam_category`
--
ALTER TABLE `exam_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_452856F263DBB69` (`hospital_id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C02DDB3863DBB69` (`hospital_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4282C85BA76ED395` (`user_id`),
  ADD KEY `IDX_4282C85BF98F144A` (`logo_id`);

--
-- Indexes for table `hospitalization`
--
ALTER TABLE `hospitalization`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_40CF089162FF6CDF` (`consultation_id`),
  ADD KEY `IDX_40CF089188688BB9` (`bed_id`),
  ADD KEY `IDX_40CF089163DBB69` (`hospital_id`);

--
-- Indexes for table `image_object`
--
ALTER TABLE `image_object`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7B0F52463DBB69` (`hospital_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9065174462FF6CDF` (`consultation_id`),
  ADD KEY `IDX_9065174463DBB69` (`hospital_id`),
  ADD KEY `IDX_906517446B899279` (`patient_id`),
  ADD KEY `IDX_90651744A76ED395` (`user_id`);

--
-- Indexes for table `invoice_storic`
--
ALTER TABLE `invoice_storic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DFA4BEF72989F1FD` (`invoice_id`),
  ADD KEY `IDX_DFA4BEF7A76ED395` (`user_id`),
  ADD KEY `IDX_DFA4BEF7936DC252` (`nursing_id`),
  ADD KEY `IDX_DFA4BEF7CF7D7FED` (`covenant_invoice_id`);

--
-- Indexes for table `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_61D6B1C462FF6CDF` (`consultation_id`),
  ADD KEY `IDX_61D6B1C463DBB69` (`hospital_id`),
  ADD KEY `IDX_61D6B1C4A76ED395` (`user_id`),
  ADD KEY `IDX_61D6B1C46B899279` (`patient_id`),
  ADD KEY `IDX_61D6B1C4C00413CC` (`user_publisher_id`),
  ADD KEY `IDX_61D6B1C476EF8C3F` (`user_prescriber_id`);

--
-- Indexes for table `lab_result`
--
ALTER TABLE `lab_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_86B24747628913D5` (`lab_id`),
  ADD KEY `IDX_86B24747578D5E91` (`exam_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_58362A8D224EAF84` (`consumption_unit_id`),
  ADD KEY `IDX_58362A8D12469DE2` (`category_id`),
  ADD KEY `IDX_58362A8DF7BFE87C` (`sub_category_id`),
  ADD KEY `IDX_58362A8D63DBB69` (`hospital_id`),
  ADD KEY `IDX_58362A8DA76ED395` (`user_id`);

--
-- Indexes for table `medicines_sold`
--
ALTER TABLE `medicines_sold`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A1116C852F7D140A` (`medicine_id`),
  ADD KEY `IDX_A1116C852989F1FD` (`invoice_id`);

--
-- Indexes for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_665A0CBA63DBB69` (`hospital_id`);

--
-- Indexes for table `medicine_invoice`
--
ALTER TABLE `medicine_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9D9E605AA76ED395` (`user_id`),
  ADD KEY `IDX_9D9E605A63DBB69` (`hospital_id`);

--
-- Indexes for table `medicine_sub_categories`
--
ALTER TABLE `medicine_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FA70B6DE12469DE2` (`category_id`),
  ADD KEY `IDX_FA70B6DE63DBB69` (`hospital_id`);

--
-- Indexes for table `nursing`
--
ALTER TABLE `nursing`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_883C8A1462FF6CDF` (`consultation_id`),
  ADD KEY `IDX_883C8A146B899279` (`patient_id`),
  ADD KEY `IDX_883C8A1463DBB69` (`hospital_id`);

--
-- Indexes for table `nursing_treatment`
--
ALTER TABLE `nursing_treatment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6138D4C8936DC252` (`nursing_id`),
  ADD KEY `IDX_6138D4C8471C0366` (`treatment_id`),
  ADD KEY `IDX_6138D4C8A76ED395` (`user_id`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_74516B0263DBB69` (`hospital_id`);

--
-- Indexes for table `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_69348FE63DBB69` (`hospital_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1ADAD7EBA76ED395` (`user_id`),
  ADD KEY `IDX_1ADAD7EBDA91032A` (`covenant_id`),
  ADD KEY `IDX_1ADAD7EBCCFA12B8` (`profile_id`),
  ADD KEY `IDX_1ADAD7EB63DBB69` (`hospital_id`);

--
-- Indexes for table `pdf_object`
--
ALTER TABLE `pdf_object`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_image_object`
--
ALTER TABLE `personal_image_object`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E1053F56A76ED395` (`user_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1FBFB8D962FF6CDF` (`consultation_id`),
  ADD UNIQUE KEY `UNIQ_1FBFB8D9628913D5` (`lab_id`),
  ADD KEY `IDX_1FBFB8D96B899279` (`patient_id`),
  ADD KEY `IDX_1FBFB8D9A76ED395` (`user_id`),
  ADD KEY `IDX_1FBFB8D963DBB69` (`hospital_id`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_92C4739C63DBB69` (`hospital_id`),
  ADD KEY `IDX_92C4739CA76ED395` (`user_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E19D9AD263DBB69` (`hospital_id`),
  ADD KEY `IDX_E19D9AD2AE80F5DF` (`department_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98013C3163DBB69` (`hospital_id`),
  ADD KEY `IDX_98013C3112469DE2` (`category_id`);

--
-- Indexes for table `treatment_category`
--
ALTER TABLE `treatment_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_94E6519863DBB69` (`hospital_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD KEY `IDX_8D93D649A76ED395` (`user_id`),
  ADD KEY `IDX_8D93D64994CF6872` (`hospital_center_id`),
  ADD KEY `IDX_8D93D649CCFA12B8` (`profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `act`
--
ALTER TABLE `act`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `acts_invoice_basket`
--
ALTER TABLE `acts_invoice_basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `act_category`
--
ALTER TABLE `act_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bedroom`
--
ALTER TABLE `bedroom`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bedroom_category`
--
ALTER TABLE `bedroom_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `box`
--
ALTER TABLE `box`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `box_expense`
--
ALTER TABLE `box_expense`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `box_historic`
--
ALTER TABLE `box_historic`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `box_input`
--
ALTER TABLE `box_input`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `box_output`
--
ALTER TABLE `box_output`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consultation`
--
ALTER TABLE `consultation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `consultations_type`
--
ALTER TABLE `consultations_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `consumption_unit`
--
ALTER TABLE `consumption_unit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `covenant`
--
ALTER TABLE `covenant`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `covenant_invoice`
--
ALTER TABLE `covenant_invoice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destocking_of_medicines`
--
ALTER TABLE `destocking_of_medicines`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `destock_medicine_for_hospital`
--
ALTER TABLE `destock_medicine_for_hospital`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drugstore_supply`
--
ALTER TABLE `drugstore_supply`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drugstore_supply_medicine`
--
ALTER TABLE `drugstore_supply_medicine`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `exams_invoice_basket`
--
ALTER TABLE `exams_invoice_basket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam_category`
--
ALTER TABLE `exam_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hospitalization`
--
ALTER TABLE `hospitalization`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_object`
--
ALTER TABLE `image_object`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice_storic`
--
ALTER TABLE `invoice_storic`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab`
--
ALTER TABLE `lab`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lab_result`
--
ALTER TABLE `lab_result`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicines_sold`
--
ALTER TABLE `medicines_sold`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_invoice`
--
ALTER TABLE `medicine_invoice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_sub_categories`
--
ALTER TABLE `medicine_sub_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nursing`
--
ALTER TABLE `nursing`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nursing_treatment`
--
ALTER TABLE `nursing_treatment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `parameters`
--
ALTER TABLE `parameters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pdf_object`
--
ALTER TABLE `pdf_object`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_image_object`
--
ALTER TABLE `personal_image_object`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `treatment_category`
--
ALTER TABLE `treatment_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `act`
--
ALTER TABLE `act`
  ADD CONSTRAINT `FK_AFECF54412469DE2` FOREIGN KEY (`category_id`) REFERENCES `act_category` (`id`),
  ADD CONSTRAINT `FK_AFECF54463DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `FK_B5F1AFE563DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_B5F1AFE5F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `acts_invoice_basket`
--
ALTER TABLE `acts_invoice_basket`
  ADD CONSTRAINT `FK_18E3BB2E2989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `FK_18E3BB2ED1A55B28` FOREIGN KEY (`act_id`) REFERENCES `act` (`id`);

--
-- Constraints for table `act_category`
--
ALTER TABLE `act_category`
  ADD CONSTRAINT `FK_30337BDC63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `FK_268B9C9D3C0C9956` FOREIGN KEY (`user_account_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_268B9C9D63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_268B9C9DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_268B9C9DED5CA9E6` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `FK_268B9C9DFFA0C224` FOREIGN KEY (`office_id`) REFERENCES `office` (`id`);

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `FK_FE38F84462FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`),
  ADD CONSTRAINT `FK_FE38F84463DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_FE38F8446B899279` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  ADD CONSTRAINT `FK_FE38F84487F4FB17` FOREIGN KEY (`doctor_id`) REFERENCES `agent` (`id`),
  ADD CONSTRAINT `FK_FE38F844A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `bed`
--
ALTER TABLE `bed`
  ADD CONSTRAINT `FK_E647FCFF63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_E647FCFFBDB6797C` FOREIGN KEY (`bedroom_id`) REFERENCES `bedroom` (`id`);

--
-- Constraints for table `bedroom`
--
ALTER TABLE `bedroom`
  ADD CONSTRAINT `FK_E615435112469DE2` FOREIGN KEY (`category_id`) REFERENCES `bedroom_category` (`id`),
  ADD CONSTRAINT `FK_E615435163DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `bedroom_category`
--
ALTER TABLE `bedroom_category`
  ADD CONSTRAINT `FK_1F4C876C63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `box`
--
ALTER TABLE `box`
  ADD CONSTRAINT `FK_8A9483A63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `box_expense`
--
ALTER TABLE `box_expense`
  ADD CONSTRAINT `FK_34F8139712469DE2` FOREIGN KEY (`category_id`) REFERENCES `expense_category` (`id`),
  ADD CONSTRAINT `FK_34F8139763DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_34F81397A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_34F81397D8177B3F` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`);

--
-- Constraints for table `box_historic`
--
ALTER TABLE `box_historic`
  ADD CONSTRAINT `FK_FC952DF2D8177B3F` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`);

--
-- Constraints for table `box_input`
--
ALTER TABLE `box_input`
  ADD CONSTRAINT `FK_A102EE3F63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_A102EE3FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_A102EE3FD8177B3F` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`);

--
-- Constraints for table `box_output`
--
ALTER TABLE `box_output`
  ADD CONSTRAINT `FK_6276540812469DE2` FOREIGN KEY (`category_id`) REFERENCES `expense_category` (`id`),
  ADD CONSTRAINT `FK_6276540863DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_62765408A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_62765408D8177B3F` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`);

--
-- Constraints for table `consultation`
--
ALTER TABLE `consultation`
  ADD CONSTRAINT `FK_964685A663DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_964685A66B899279` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  ADD CONSTRAINT `FK_964685A687F4FB17` FOREIGN KEY (`doctor_id`) REFERENCES `agent` (`id`),
  ADD CONSTRAINT `FK_964685A693CB796C` FOREIGN KEY (`file_id`) REFERENCES `consultations_type` (`id`),
  ADD CONSTRAINT `FK_964685A6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `consultations_type`
--
ALTER TABLE `consultations_type`
  ADD CONSTRAINT `FK_DA0F005163DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `consultation_act`
--
ALTER TABLE `consultation_act`
  ADD CONSTRAINT `FK_D236ADFE62FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D236ADFED1A55B28` FOREIGN KEY (`act_id`) REFERENCES `act` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consultation_exam`
--
ALTER TABLE `consultation_exam`
  ADD CONSTRAINT `FK_1372260C578D5E91` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1372260C62FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consultation_treatment`
--
ALTER TABLE `consultation_treatment`
  ADD CONSTRAINT `FK_3EF32AD6471C0366` FOREIGN KEY (`treatment_id`) REFERENCES `treatment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3EF32AD662FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consumption_unit`
--
ALTER TABLE `consumption_unit`
  ADD CONSTRAINT `FK_114B66C463DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `covenant`
--
ALTER TABLE `covenant`
  ADD CONSTRAINT `FK_F4EB80F763DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_F4EB80F7F98F144A` FOREIGN KEY (`logo_id`) REFERENCES `image_object` (`id`);

--
-- Constraints for table `covenant_invoice`
--
ALTER TABLE `covenant_invoice`
  ADD CONSTRAINT `FK_58A21C4463DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_58A21C44A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_58A21C44DA91032A` FOREIGN KEY (`covenant_id`) REFERENCES `covenant` (`id`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `FK_CD1DE18A63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `destocking_of_medicines`
--
ALTER TABLE `destocking_of_medicines`
  ADD CONSTRAINT `FK_535BD9F2F7D140A` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`),
  ADD CONSTRAINT `FK_535BD9FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `destock_medicine_for_hospital`
--
ALTER TABLE `destock_medicine_for_hospital`
  ADD CONSTRAINT `FK_5CD4372F2F7D140A` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`),
  ADD CONSTRAINT `FK_5CD4372FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `drugstore_supply`
--
ALTER TABLE `drugstore_supply`
  ADD CONSTRAINT `FK_7F86243363DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_7F862433A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`),
  ADD CONSTRAINT `FK_7F862433A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `drugstore_supply_medicine`
--
ALTER TABLE `drugstore_supply_medicine`
  ADD CONSTRAINT `FK_DC49F8A2F7D140A` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`),
  ADD CONSTRAINT `FK_DC49F8AB55F5935` FOREIGN KEY (`drugstore_supply_id`) REFERENCES `drugstore_supply` (`id`);

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `FK_38BBA6C612469DE2` FOREIGN KEY (`category_id`) REFERENCES `exam_category` (`id`),
  ADD CONSTRAINT `FK_38BBA6C663DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `exams_invoice_basket`
--
ALTER TABLE `exams_invoice_basket`
  ADD CONSTRAINT `FK_7782193A2989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `FK_7782193A578D5E91` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`);

--
-- Constraints for table `exam_category`
--
ALTER TABLE `exam_category`
  ADD CONSTRAINT `FK_452856F263DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD CONSTRAINT `FK_C02DDB3863DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `FK_4282C85BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_4282C85BF98F144A` FOREIGN KEY (`logo_id`) REFERENCES `image_object` (`id`);

--
-- Constraints for table `hospitalization`
--
ALTER TABLE `hospitalization`
  ADD CONSTRAINT `FK_40CF089162FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`),
  ADD CONSTRAINT `FK_40CF089163DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_40CF089188688BB9` FOREIGN KEY (`bed_id`) REFERENCES `bed` (`id`);

--
-- Constraints for table `image_object`
--
ALTER TABLE `image_object`
  ADD CONSTRAINT `FK_7B0F52463DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FK_9065174462FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`),
  ADD CONSTRAINT `FK_9065174463DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_906517446B899279` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  ADD CONSTRAINT `FK_90651744A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `invoice_storic`
--
ALTER TABLE `invoice_storic`
  ADD CONSTRAINT `FK_DFA4BEF72989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `FK_DFA4BEF7936DC252` FOREIGN KEY (`nursing_id`) REFERENCES `nursing` (`id`),
  ADD CONSTRAINT `FK_DFA4BEF7A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_DFA4BEF7CF7D7FED` FOREIGN KEY (`covenant_invoice_id`) REFERENCES `covenant_invoice` (`id`);

--
-- Constraints for table `lab`
--
ALTER TABLE `lab`
  ADD CONSTRAINT `FK_61D6B1C462FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`),
  ADD CONSTRAINT `FK_61D6B1C463DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_61D6B1C46B899279` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  ADD CONSTRAINT `FK_61D6B1C476EF8C3F` FOREIGN KEY (`user_prescriber_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_61D6B1C4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_61D6B1C4C00413CC` FOREIGN KEY (`user_publisher_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `lab_result`
--
ALTER TABLE `lab_result`
  ADD CONSTRAINT `FK_86B24747578D5E91` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`id`),
  ADD CONSTRAINT `FK_86B24747628913D5` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`);

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `FK_58362A8D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `medicine_categories` (`id`),
  ADD CONSTRAINT `FK_58362A8D224EAF84` FOREIGN KEY (`consumption_unit_id`) REFERENCES `consumption_unit` (`id`),
  ADD CONSTRAINT `FK_58362A8D63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_58362A8DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_58362A8DF7BFE87C` FOREIGN KEY (`sub_category_id`) REFERENCES `medicine_sub_categories` (`id`);

--
-- Constraints for table `medicines_sold`
--
ALTER TABLE `medicines_sold`
  ADD CONSTRAINT `FK_A1116C852989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `medicine_invoice` (`id`),
  ADD CONSTRAINT `FK_A1116C852F7D140A` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`);

--
-- Constraints for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  ADD CONSTRAINT `FK_665A0CBA63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `medicine_invoice`
--
ALTER TABLE `medicine_invoice`
  ADD CONSTRAINT `FK_9D9E605A63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_9D9E605AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `medicine_sub_categories`
--
ALTER TABLE `medicine_sub_categories`
  ADD CONSTRAINT `FK_FA70B6DE12469DE2` FOREIGN KEY (`category_id`) REFERENCES `medicine_categories` (`id`),
  ADD CONSTRAINT `FK_FA70B6DE63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `nursing`
--
ALTER TABLE `nursing`
  ADD CONSTRAINT `FK_883C8A1462FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`),
  ADD CONSTRAINT `FK_883C8A1463DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_883C8A146B899279` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`);

--
-- Constraints for table `nursing_treatment`
--
ALTER TABLE `nursing_treatment`
  ADD CONSTRAINT `FK_6138D4C8471C0366` FOREIGN KEY (`treatment_id`) REFERENCES `treatment` (`id`),
  ADD CONSTRAINT `FK_6138D4C8936DC252` FOREIGN KEY (`nursing_id`) REFERENCES `nursing` (`id`),
  ADD CONSTRAINT `FK_6138D4C8A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `office`
--
ALTER TABLE `office`
  ADD CONSTRAINT `FK_74516B0263DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `parameters`
--
ALTER TABLE `parameters`
  ADD CONSTRAINT `FK_69348FE63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `FK_1ADAD7EB63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_1ADAD7EBA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_1ADAD7EBCCFA12B8` FOREIGN KEY (`profile_id`) REFERENCES `image_object` (`id`),
  ADD CONSTRAINT `FK_1ADAD7EBDA91032A` FOREIGN KEY (`covenant_id`) REFERENCES `covenant` (`id`);

--
-- Constraints for table `personal_image_object`
--
ALTER TABLE `personal_image_object`
  ADD CONSTRAINT `FK_E1053F56A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `FK_1FBFB8D9628913D5` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`),
  ADD CONSTRAINT `FK_1FBFB8D962FF6CDF` FOREIGN KEY (`consultation_id`) REFERENCES `consultation` (`id`),
  ADD CONSTRAINT `FK_1FBFB8D963DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_1FBFB8D96B899279` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  ADD CONSTRAINT `FK_1FBFB8D9A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `provider`
--
ALTER TABLE `provider`
  ADD CONSTRAINT `FK_92C4739C63DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_92C4739CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `FK_E19D9AD263DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_E19D9AD2AE80F5DF` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `FK_98013C3112469DE2` FOREIGN KEY (`category_id`) REFERENCES `treatment_category` (`id`),
  ADD CONSTRAINT `FK_98013C3163DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `treatment_category`
--
ALTER TABLE `treatment_category`
  ADD CONSTRAINT `FK_94E6519863DBB69` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D64994CF6872` FOREIGN KEY (`hospital_center_id`) REFERENCES `hospital` (`id`),
  ADD CONSTRAINT `FK_8D93D649A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_8D93D649CCFA12B8` FOREIGN KEY (`profile_id`) REFERENCES `personal_image_object` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
