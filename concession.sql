-- Création de la base
CREATE DATABASE IF NOT EXISTS concession;
USE concession;

-- Table MODELE : catalogue des modèles
CREATE TABLE modele (
    id_modele INT AUTO_INCREMENT PRIMARY KEY,
    marque VARCHAR(100) NOT NULL,
    nom_modele VARCHAR(100) NOT NULL,
    carburant VARCHAR(50),
    puissance INT,
    prix_catalogue DECIMAL(10, 2) NOT NULL
);

-- Table VEHICULE : véhicules en stock (n° série unique)
CREATE TABLE vehicule (
    num_serie VARCHAR(50) PRIMARY KEY,
    id_modele INT NOT NULL,
    date_arrivee DATE NOT NULL,
    etat ENUM('disponible', 'vendu', 'en préparation', 'en maintenance') NOT NULL,

    FOREIGN KEY (id_modele) REFERENCES modele(id_modele)
        ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Table CLIENT
CREATE TABLE client (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom_client VARCHAR(100) NOT NULL,
    prenom_client VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    telephone VARCHAR(20)
);

-- Table COMMANDE
CREATE TABLE commande (
    id_commande INT AUTO_INCREMENT PRIMARY KEY,
    date_commande DATE NOT NULL,
    montant DECIMAL(10,2) NOT NULL,

    num_serie VARCHAR(50) NOT NULL,
    id_client INT NOT NULL,

    FOREIGN KEY (num_serie) REFERENCES vehicule(num_serie)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (id_client) REFERENCES client(id_client)
        ON DELETE RESTRICT ON UPDATE CASCADE,

    -- Contrainte : un véhicule ne peut être vendu qu'une seule fois
    UNIQUE(num_serie)
);
