-- Création de la base de données 'transport_aerien'
CREATE DATABASE transport_aerien;

-- On sélectionne la base pour travailler dedans
USE transport_aerien;

-- Création de la table 'avions'
CREATE TABLE avions (
    id INT AUTO_INCREMENT PRIMARY KEY,        -- Identifiant unique auto-incrémenté
    modele VARCHAR(100) NOT NULL,             -- Nom du modèle de l'avion (ex: A320)
    constructeur VARCHAR(100) NOT NULL,       -- Nom du constructeur (ex: Airbus)
    capacite INT NOT NULL,                    -- Nombre maximum de passagers
    autonomie_km INT NOT NULL,                -- Autonomie maximale en kilomètres
    en_service BOOLEAN NOT NULL               -- Statut de l'avion (TRUE = en service, FALSE = retiré)
);

-- Insertion de 10 avions dans la table
INSERT INTO avions (modele, constructeur, capacite, autonomie_km, en_service) VALUES
('A320', 'Airbus', 180, 6150, TRUE),
('A380', 'Airbus', 853, 15200, TRUE),
('737 MAX', 'Boeing', 210, 6570, TRUE),
('747-400', 'Boeing', 416, 13450, FALSE),
('CSeries 300', 'Bombardier', 160, 6112, TRUE),
('MD-11', 'McDonnell Douglas', 293, 12555, FALSE),
('Concorde', 'Aérospatiale/BAC', 92, 7250, FALSE),
('E190', 'Embraer', 114, 4260, TRUE),
('CRJ900', 'Bombardier', 90, 2956, TRUE),
('Il-96', 'Ilyushin', 262, 11000, FALSE);


-- Niveau1.1 Voir tous les avions
SELECT * FROM avions;
-- NIveau1.2 Voir uniquement les colonnes modele et constructeur
SELECT modele, constructeur
FROM avions;

-- Niveau2.3 Voir les avions avec une capacité supérieure à 300 passagers
SELECT * FROM avions WHERE capacite > 300;

-- Niveau2.4 Voir les avions avec une autonomie inferieure à 7000 km
SELECT * FROM avions WHERE autonomie_km < 7000;

-- Niveau2.5 Voir ceux retirés du service
SELECT * FROM avions WHERE en_service = FALSE;

-- Niveau2.6 Voir les avions construits par Boeing
SELECT * FROM avions WHERE constructeur = 'Boeing';

-- Niveau2.7 Affiche les avions dont la capacité est comprise entre 100 et 300 inclus.
SELECT * FROM avions WHERE capacite BETWEEN 100 AND 300;

-- __________________________________________________________
-- Niveau2 en plus rajouté par moi ,  Voir les avions construits par Boeing ou Airbus
SELECT * FROM avions WHERE constructeur IN ('Boeing', 'Airbus');

-- Niveau2 Voir les avions construits par Boeing ou Airbus
SELECT * FROM avions WHERE constructeur IS 'Boeing' OR 'Airbus';
-- __________________________________________________________


-- Niveau3.8 Affiche tous les constructeurs sans doublons.
SELECT DISTINCT constructeur FROM avions;

-- Niveau3.9 Affiche tous les avions triés par autonomie (du plus faible au plus grand).
SELECT * FROM avions ORDER BY autonomie_km ASC;
-- Niveau3.10 Affiche tous les avions triés par autonomie (du plus grand au plus faible).
SELECT * FROM avions ORDER BY autonomie_km DESC;

--Niveau4.11 Affiche les 3 avions ayant la plus grande autonomie.
SELECT * FROM avions ORDER BY autonomie_km DESC LIMIT 3;

-- Niveau4.12 Affiche les 5  avions ayant la plus petite autonomie.
SELECT * FROM avions ORDER BY autonomie_km ASC LIMIT 5;

--NIveau4.13 Affiche les avions dont l’autonomie est entre 6000 et 1300
SELECT * FROM avions WHERE autonomie_km BETWEEN 6000 AND 13000;
-- _____________________________________________________________________




-- Niveau4.14 Affiche les avions dont le modèle commence par 'A'
SELECT * FROM avions WHERE modele LIKE 'A%';

-- Trier par autonomie décroissante
SELECT * FROM avions ORDER BY autonomie_km DESC;

-- Niveau2. Voir uniquement ceux en service
SELECT * FROM avions WHERE en_service = TRUE;


-- _____________________________________________________________
-- EXERCICE SQL6 N°1 Modifier l’autonomie du modèle A320 pour qu’elle passe à 6300 km.
 UPDATE avions
SET autonomie_km = 6300
WHERE modele = 'A320';


-- _____________________________________________________________
-- EXERCICE SQL6 N°2 Remplacer le constructeur McDonnell Douglas par Boeing.

UPDATE avions
SET constructeur = 'Boeing'
WHERE constructeur = 'McDonnell Douglas';

--_____________________________________________________________
-- EXERCICE SQL6 N°3 Augmenter la capacité de tous les avions de Bombardier de 10 places.

UPDATE avions
SET capacite = capacite + 10
WHERE constructeur = 'Bombardier';

-- _____________________________________________________________
-- EXERCICE SQL6 N°4 Supprimer les avions dont la capacité est inférieure à 100.

DELETE FROM avions
WHERE capacite < 100;

-- _____________________________________________________________
-- EXERCICE SQL6 N°5 Supprimer tous les avions qui ne sont plus en service.
DELETE FROM avions
WHERE en_service = FALSE;