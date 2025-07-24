<?php
session_start();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Échec de connexion</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }
        .failed-container {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 500px;
        }
        h1 {
            color: #e53935;
            margin-bottom: 1.5rem;
        }
        p {
            color: #555;
            margin-bottom: 2rem;
        }
        .btn {
            display: inline-block;
            padding: 0.75rem 1.5rem;
            background-color: #5c6bc0;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #3f51b5;
        }
    </style>
</head>
<body>
    <div class="failed-container">
        <h1>Échec de connexion</h1>
        <p>Les identifiants que vous avez saisis sont incorrects. Veuillez réessayer.</p>
        <a href="login.php" class="btn">Retour à la page de connexion</a>
    </div>
</body>
</html>