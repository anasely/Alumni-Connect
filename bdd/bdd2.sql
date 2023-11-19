CREATE TABLE `Etudiants` (
  `id` integer PRIMARY KEY,
  `nom` varchar(255),
  `prenom` varchar(255),
  `email` varchar(255),
  `date_de_naissance` date,
  `pays` varchar(255),
  `universite` varchar(255),
  `annee_entree` integer,
  `domaine_etudes` varchar(255),
  `statut` varchar(255) COMMENT 'Ancien ou Actuel',
  `created_at` timestamp
);

CREATE TABLE `ForumsDiscussion` (
  `id` integer PRIMARY KEY,
  `sujet` varchar(255),
  `contenu` text,
  `destinataire_id` integer,
  `emetteur_id` integer,
  `created_at` timestamp
);

CREATE TABLE `Mentors` (
  `id` integer PRIMARY KEY,
  `mentor_id` integer,
  `domaine_mentorat` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `EvenementsEnLigne` (
  `id` integer PRIMARY KEY,
  `titre` varchar(255),
  `description` text,
  `anciensetudiants_id` integer,
  `created_at` timestamp
);

CREATE TABLE `Projets` (
  `id` integer PRIMARY KEY,
  `titre` varchar(255),
  `description` text,
  `anciensetudiants_id` integer,
  `etudiants_id` integer,
  `created_at` timestamp
);

CREATE TABLE `Ressources` (
  `id` integer PRIMARY KEY,
  `titre` varchar(255),
  `description` text,
  `anciensetudiants_id` integer,
  `etudiants_id` integer,
  `created_at` timestamp
);

CREATE TABLE `Competences` (
  `id` integer PRIMARY KEY,
  `parcoursacademique_id` integer,
  `competence` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `ParcoursAcademiques` (
  `id` integer PRIMARY KEY,
  `etudiant_id` integer,
  `diplome_obtenu` varchar(255),
  `annee_obtention` integer,
  `universite` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `ReseautageProfessionnel` (
  `id` integer PRIMARY KEY,
  `etudiant_id` integer,
  `anciensetudiant_id` integer,
  `date_reseau` date,
  `created_at` timestamp
);

ALTER TABLE `ForumsDiscussion` ADD FOREIGN KEY (`destinataire_id`) REFERENCES `Etudiants` (`id`);

ALTER TABLE `ForumsDiscussion` ADD FOREIGN KEY (`emetteur_id`) REFERENCES `Etudiants` (`id`);

ALTER TABLE `Mentors` ADD FOREIGN KEY (`mentor_id`) REFERENCES `Etudiants` (`id`);

ALTER TABLE `EvenementsEnLigne` ADD FOREIGN KEY (`anciensetudiants_id`) REFERENCES `Etudiants` (`id`);

ALTER TABLE `Projets` ADD FOREIGN KEY (`anciensetudiants_id`) REFERENCES `Etudiants` (`id`);

ALTER TABLE `Projets` ADD FOREIGN KEY (`etudiants_id`) REFERENCES `Etudiants` (`id`);

ALTER TABLE `Ressources` ADD FOREIGN KEY (`anciensetudiants_id`) REFERENCES `Etudiants` (`id`);

ALTER TABLE `Ressources` ADD FOREIGN KEY (`etudiants_id`) REFERENCES `Etudiants` (`id`);

ALTER TABLE `Competences` ADD FOREIGN KEY (`parcoursacademique_id`) REFERENCES `ParcoursAcademiques` (`id`);

ALTER TABLE `ParcoursAcademiques` ADD FOREIGN KEY (`etudiant_id`) REFERENCES `Etudiants` (`id`);

ALTER TABLE `ReseautageProfessionnel` ADD FOREIGN KEY (`etudiant_id`) REFERENCES `Etudiants` (`id`);

ALTER TABLE `ReseautageProfessionnel` ADD FOREIGN KEY (`anciensetudiant_id`) REFERENCES `Etudiants` (`id`);
