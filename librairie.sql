INSERT INTO auteurs (nom,email) 
VALUES 
                    ("George Sand", "gsand@example.com"),
                    ("Victor Hugo", "vhugo@example.com"),
                    ("Alexandre Dumas", "adumas@example.com"),
                    ("Gustave Flaubert", "gflaubert@example.com"),
                    ("Marcel Pagnol", "mpagnol@example.com");

INSERT INTO categories (nom) 
VALUES 
                    ("Roman historique"),
                    ("Poésie"),
                    ("Théâtre"),
                    ("Roman réaliste"),
                    ("Littérature jeunesse");

INSERT INTO livres (titre, date_creation, auteur_id, categorie_id)
VALUES
    -- George Sand
    ("La Mare au Diable", "1846-01-01", 1, 4),
    ("Indiana", "1832-01-03", 1, 4),
    
    -- Victor Hugo
    ("Les Misérables", "1862-09-18", 2, 1),
    ("Les Contemplations", "1856-11-06", 2, 2),

    -- Alexandre Dumas
    ("Le Comte de Monte-Cristo", "1845-05-08", 3, 1),
    ("Les Trois Mousquetaires", "1844-07-15", 3, 1),
    
    -- Gustave Flaubert
    ("Madame Bovary", "1857-04-24", 4, 4),
    ("Salammbô", "1862-12-04", 4, 1),
    
    -- Marcel Pagnol
    ("La Gloire de mon père", "1957-03-13", 5, 5),
    ("Marius", "1929-04-18", 5, 3);

-- =============================
-- EXERCICE 1
-- =============================

-- 1. Afficher tous les livres publiés avant 1900
SELECT * 
FROM livres 
WHERE date_creation < '1900-01-01';

-- 2. Afficher tous les livres triés du plus ancien au plus récent
SELECT * 
FROM livres 
ORDER BY date_creation ASC;

-- 3. Compter les livres publiés par décennie
SELECT 
    FLOOR(YEAR(date_creation) / 10) * 10 AS decennie,
    COUNT(*) AS nombre_livres
FROM livres
GROUP BY decennie
ORDER BY decennie;
