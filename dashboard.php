<?php
session_start();

// Rediriger vers la page de login si non connecté
if (!isset($_SESSION['user'])) {
    header('Location: login.php');
    exit;
}

$user = $_SESSION['user'];
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tableau de bord</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .dashboard-container {
            max-width: 800px;
            margin: 2rem auto;
            padding: 2rem;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
            margin-bottom: 1.5rem;
        }
        .welcome-message {
            background-color: #e3f2fd;
            padding: 1rem;
            border-radius: 4px;
            margin-bottom: 2rem;
            border-left: 4px solid #5c6bc0;
        }
        .btn {
            display: inline-block;
            padding: 0.75rem 1.5rem;
            background-color: #e53935;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #c62828;
        }
        .role-admin {
            color: #d81b60;
            font-weight: bold;
        }
        .role-editor {
            color: #00897b;
            font-weight: bold;
        }
        .role-user {
            color: #5c6bc0;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1>Tableau de bord</h1>
        
        <div class="welcome-message">
            <?php 
            $roleClass = 'role-' . $user['role'];
            echo "<p>Bienvenue <strong>{$user['username']}</strong>, vous avez le rôle <span class=\"$roleClass\">{$user['role']}</span>.</p>";
            ?>
        </div>
        
        <p>Vous êtes maintenant connecté à votre espace personnel.</p>
        
        <a href="logout.php" class="btn">Se déconnecter</a>
    </div>
</body>
</html>