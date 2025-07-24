<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        p {
            color: #555;
        }
        a {
            display: inline-block;
            margin: 1rem 0;
            padding: 0.75rem 1.5rem;
            background-color: #5c6bc0;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #3f51b5;
        }
        a:visited {
            color: white;
        }
        a:active {
            background-color: #3949ab;
        }
        a:focus {
            outline: none;
            box-shadow: 0 0 0 2px rgba(92, 107, 192, 0.5);
        }
        a:disabled {
            background-color: #b0bec5;
            cursor: not-allowed;
        }
        a:disabled:hover {
            background-color: #b0bec5;
        }
    </style>
</head>
<body>

    <h1>Bienvenue sur la page d'accueil</h1>
    <p>Veuillez vous connecter pour accéder à votre tableau de bord.</p>
    
    <a href="login.php">Se connecter</a>    
    <a href="logout.php">Se déconnecter</a>
    <a href="dashboard.php">Dashboard - admin</a>
    

</body>
</html>