INSERT INTO `tebex_boutique` (`id`, `category`, `name`, `descriptions`, `price`, `is_enabled`, `action`, `created_at`, `updated_at`) VALUES
(1, 2, 'Audi RS6', '', 2000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"rmodrs6\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(2, 2, 'Lamborghini Urus ', '', 2000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"urus2018\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(3, 2, 'Mercedes C63', '', 1500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"c63\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(4, 2, 'BMW BMCI', '', 1500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"bmci\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(5, 2, 'Mercedes CLS 53', '', 1500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"cls53\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(6, 2, 'Ferrari F12berlinetta', '', 1500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"fct\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(7, 2, 'Mercedes A45 AMG', '', 1500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"macla\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(8, 2, 'Brabus ML', '', 1500, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"mlbrabus\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(9, 2, 'Kawazaki KX 450', '', 1000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"kx450f\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(10, 2, 'Honda CB500', '', 1000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"cb500f\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(11, 2, 'Yamaha TMAX', '', 1000, 1, '{\"vehicles\":[{\"type\":\"car\",\"name\":\"tmaxdx\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(12, 1, 'AK-47 [PERM]', '', 2000, 1, '{\"weapons\":[{\"ammo\":50,\"name\":\"weapon_assaultrifle\"},]}', '2021-03-01 18:54:48', '2021-03-01 18:54:48'),
(13, 1, 'Thompson [PERM]', '', 2000, 1, '{\"weapons\":[{\"ammo\":50,\"name\":\"weapon_gusenberg\"},]}', '2021-03-01 18:54:48', '2021-03-01 18:54:48'),
(14, 1, 'Sniper Lourd [PERM]', '', 2000, 1, '{\"weapons\":[{\"ammo\":50,\"name\":\"weapon_heavysniper\"},]}', '2021-03-01 18:54:48', '2021-03-01 18:54:48'),
(15, 1, 'Tec-9 [PERM]', '', 1500, 1, '{\"weapons\":[{\"ammo\":50,\"name\":\"weapon_machinepistol\"},]}', '2021-03-01 18:54:48', '2021-03-01 18:54:48'),
(16, 4, '1 Million', '', 950, 1, '{\"bank\":[{\"count\":1000000,\"name\":\"money\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49'),
(17, 4, '2 Millions', '', 1800, 1, '{\"bank\":[{\"count\":2000000,\"name\":\"money\"}]}', '2020-11-01 02:09:49', '2020-11-01 02:09:49');

-- --------------------------------------------------------

--
-- Structure de la table `tebex_boutique_category`
--

CREATE TABLE `tebex_boutique_category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `descriptions` text NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tebex_boutique_category`
--

INSERT INTO `tebex_boutique_category` (`id`, `name`, `descriptions`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 'Armes', 'Choisis ton arme et va combattre !', 1, '2020-10-31 21:26:42', '2020-10-31 21:26:42'),
(2, 'Voitures/Moto', 'Choisis ton véhicule préféré !', 1, '2020-10-31 21:28:00', '2020-10-31 21:28:00'),
(4, 'Argent', 'Payer de l\'argent en jeux grâce au point boutique', 1, '2020-10-31 21:57:58', '2020-10-31 21:57:58');

-- --------------------------------------------------------

--
-- Structure de la table `tebex_players_wallet`
--

CREATE TABLE `tebex_players_wallet` (
  `id` int(11) NOT NULL,
  `identifiers` text NOT NULL,
  `transaction` text DEFAULT NULL,
  `price` text NOT NULL,
  `currency` text DEFAULT NULL,
  `points` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
