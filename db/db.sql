

CREATE TABLE `tl_liens` (
  `lien_id` int(11) NOT NULL,
  `lien_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien_titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lien_desc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_liens`
--

INSERT INTO `tl_liens` (`lien_id`, `lien_url`, `lien_titre`, `lien_desc`, `user_id`) VALUES
(1, 'https://cvtic.unilim.fr/', 'Campus Virtuel TIC', 'Site internet du CvTIC.', 1),
(2, 'https://duckduckgo.com/', 'Duck Duck Go', 'Le moteur de recherche qui ne trace pas ses utilisateurs.', 1),
(3, 'https://framasoft.org/', 'Framasoft', 'Un réseau dédié à la promotion du « libre » en général et du logiciel libre en particulier.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tl_tags`
--

CREATE TABLE `tl_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_tags`
--

INSERT INTO `tl_tags` (`tag_id`, `tag_name`) VALUES
(1, 'fac'),
(2, 'vieprivee'),
(3, 'opensource'),
(4, 'apprendre');

-- --------------------------------------------------------

--
-- Structure de la table `tl_tags_liens`
--

CREATE TABLE `tl_tags_liens` (
  `tag_id` int(11) NOT NULL,
  `lien_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_tags_liens`
--

INSERT INTO `tl_tags_liens` (`tag_id`, `lien_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `tl_users`
--

CREATE TABLE `tl_users` (
  `usr_id` int(11) NOT NULL,
  `usr_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(88) COLLATE utf8_unicode_ci NOT NULL,
  `usr_salt` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `usr_role` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ROLE_ADMIN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tl_users`
--

INSERT INTO `tl_users` (`usr_id`, `usr_name`, `usr_password`, `usr_salt`, `usr_role`) VALUES
(1, 'admin', 'LsJKppRTEPz4uKrkhScOE6HBSvHuaIcFbAX9FWC7h/f5HffX4TBcFt7p8M0hqvGzFXL+JV8TzEYePoimaosfMQ==', '>=28!7NLw!S37zLjs7Uu[nC', 'ROLE_ADMIN');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  ADD PRIMARY KEY (`lien_id`);

--
-- Index pour la table `tl_tags`
--
ALTER TABLE `tl_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Index pour la table `tl_users`
--
ALTER TABLE `tl_users`
  ADD PRIMARY KEY (`usr_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tl_liens`
--
ALTER TABLE `tl_liens`
  MODIFY `lien_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tl_tags`
--
ALTER TABLE `tl_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tl_users`
--
ALTER TABLE `tl_users`
  MODIFY `usr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

