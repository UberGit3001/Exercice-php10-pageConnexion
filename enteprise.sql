-- Création de la base
CREATE DATABASE IF NOT EXISTS entreprise;
USE entreprise;

-- Table DEPARTEMENT
CREATE TABLE departement (
    id_dept INT AUTO_INCREMENT PRIMARY KEY,
    nom_dept VARCHAR(100) NOT NULL
);

-- Table EMPLOYE
CREATE TABLE employe (
    id_emp INT AUTO_INCREMENT PRIMARY KEY,
    nom_emp VARCHAR(100) NOT NULL,
    prenom_emp VARCHAR(100) NOT NULL,
    id_dept INT NOT NULL, -- Clé étrangère vers DEPARTEMENT
    FOREIGN KEY (id_dept) REFERENCES departement(id_dept)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Table PROJET
CREATE TABLE projet (
    id_projet INT AUTO_INCREMENT PRIMARY KEY,
    titre_projet VARCHAR(150) NOT NULL,
    budget DECIMAL(12,2) -- Peut être NULL (ex: projet sans budget)
);

-- Table PARTICIPATION (association Employé ↔ Projet avec rôle)
CREATE TABLE participation (
    id_emp INT,
    id_projet INT,
    role VARCHAR(100) NOT NULL,

    PRIMARY KEY (id_emp, id_projet), -- clé composée
    FOREIGN KEY (id_emp) REFERENCES employe(id_emp)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_projet) REFERENCES projet(id_projet)
        ON DELETE CASCADE ON UPDATE CASCADE
);
