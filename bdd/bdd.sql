CREATE TABLE `AnciensEtudiants` (
  `id` integer PRIMARY KEY,
  `nom` varchar(255),
  `prenom` varchar(255),
  `email` varchar(255),
  `date_de_naissance` date,
  `pays` varchar(255),
  `universite` varchar(255),
  `diplome` varchar(255),
  `annee_diplome` integer,
  `emploi_actuel` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `EtudiantsActuels` (
  `id` integer PRIMARY KEY,
  `nom` varchar(255),
  `prenom` varchar(255),
  `email` varchar(255),
  `date_de_naissance` date,
  `pays` varchar(255),
  `universite` varchar(255),
  `annee_entree` integer,
  `domaine_etudes` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `ForumsDiscussion` (
  `id` integer PRIMARY KEY,
  `sujet` varchar(255),
  `contenu` text,
  `anciensetudiants_id` integer,
  `created_at` timestamp
);

CREATE TABLE `Mentors` (
  `id` integer PRIMARY KEY,
  `anciensetudiants_id` integer,
  `domaine_mentorat` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `EvenementsEnLigne` (
  `id` integer PRIMARY KEY,
  `titre` varchar(255),
  `description` text,
  `date_evenement` date,
  `anciensetudiants_id` integer,
  `created_at` timestamp
);

CREATE TABLE `Projets` (
  `id` integer PRIMARY KEY,
  `titre` varchar(255),
  `description` text,
  `anciensetudiants_id` integer,
  `etudiantsactuels_id` integer,
  `created_at` timestamp
);

CREATE TABLE `Ressources` (
  `id` integer PRIMARY KEY,
  `titre` varchar(255),
  `description` text,
  `anciensetudiants_id` integer,
  `etudiantsactuels_id` integer,
  `created_at` timestamp
);

CREATE TABLE `Competences` (
  `id` integer PRIMARY KEY,
  `anciensetudiants_id` integer,
  `competence` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `ParcoursAcademiques` (
  `id` integer PRIMARY KEY,
  `anciensetudiants_id` integer,
  `diplome_obtenu` varchar(255),
  `annee_obtention` integer,
  `universite` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `ReseautageProfessionnel` (
  `id` integer PRIMARY KEY,
  `etudiantsactuels_id` integer,
  `anciensetudiants_id` integer,
  `date_reseau` date,
  `created_at` timestamp
);

ALTER TABLE `ForumsDiscussion` ADD FOREIGN KEY (`anciensetudiants_id`) REFERENCES `AnciensEtudiants` (`id`);

ALTER TABLE `Mentors` ADD FOREIGN KEY (`anciensetudiants_id`) REFERENCES `AnciensEtudiants` (`id`);

ALTER TABLE `EvenementsEnLigne` ADD FOREIGN KEY (`anciensetudiants_id`) REFERENCES `AnciensEtudiants` (`id`);

ALTER TABLE `Projets` ADD FOREIGN KEY (`anciensetudiants_id`) REFERENCES `AnciensEtudiants` (`id`);

ALTER TABLE `Projets` ADD FOREIGN KEY (`etudiantsactuels_id`) REFERENCES `EtudiantsActuels` (`id`);

ALTER TABLE `Ressources` ADD FOREIGN KEY (`anciensetudiants_id`) REFERENCES `AnciensEtudiants` (`id`);

ALTER TABLE `Ressources` ADD FOREIGN KEY (`etudiantsactuels_id`) REFERENCES `EtudiantsActuels` (`id`);

ALTER TABLE `Competences` ADD FOREIGN KEY (`anciensetudiants_id`) REFERENCES `AnciensEtudiants` (`id`);

ALTER TABLE `ParcoursAcademiques` ADD FOREIGN KEY (`anciensetudiants_id`) REFERENCES `AnciensEtudiants` (`id`);

ALTER TABLE `ReseautageProfessionnel` ADD FOREIGN KEY (`etudiantsactuels_id`) REFERENCES `EtudiantsActuels` (`id`);

ALTER TABLE `ReseautageProfessionnel` ADD FOREIGN KEY (`anciensetudiants_id`) REFERENCES `AnciensEtudiants` (`id`);
