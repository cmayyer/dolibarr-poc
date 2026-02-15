<?php
// Utilisation : php deploy.php clientName
$clientName = $argv[1] ?? null;

if (!$clientName) {
    die("❌ Erreur : Vous devez spécifier NOM client (ex: php deploy.php clientTest)\n");
}

$baseDir = __DIR__ . "/clients/$clientName";

echo "🚀 Préparation du déploiement pour [$clientName]...\n";

// 1. Définition des variables dynamiques
$vars = [
    '{{CLIENT_ID}}'       => $clientName,
    '{{CLIENT_HOSTNAME}}' => $clientName . ".localhost",
    // '{{DB_USER}}'         => "user_" . $clientName, <- figé comme sur init.sql
    '{{DB_PASS}}'         => bin2hex(random_bytes(10)), // Pass DB aléatoire
    //'{{DOLI_ADMIN_PASS}}' => "Pass-" . bin2hex(random_bytes(4)), // MDP figé pour pouvoir utiliser le dump sql
];

// 2. Création de l'arborescence
@mkdir("$baseDir/conf", 0755, true);
@mkdir("$baseDir/documents", 0755, true);
@mkdir("$baseDir/sql", 0755, true);

// 3. Génération du .env à partir du template
$templateEnv = file_get_contents(__DIR__ . "/templates/.env");
$finalEnv = str_replace(array_keys($vars), array_values($vars), $templateEnv);
file_put_contents("$baseDir/.env", $finalEnv);

// 4. Copie des fichiers techniques
copy("templates/docker-compose.yml", "$baseDir/docker-compose.yml");
copy("templates/conf.php", "$baseDir/conf/conf.php");
copy("templates/init.sql", "$baseDir/sql/init.sql");

// 5. Sécurisation (Verrou d'installation)
touch("$baseDir/documents/install.lock");

echo "✅ Client prêt au déploiement !\n"; 

// 6. Lancement
echo "🐘 1. Démarrage de la base de données...\n";

// On lance uniquement le service 'db'
shell_exec("cd $baseDir && docker compose up -d db");

echo "⏳ Attente de l'initialisation de PostgreSQL (10s)...\n";
sleep(10); 

echo "🌐 2. Démarrage de Dolibarr...\n";
// On lance le reste (le service dolibarr)
shell_exec("cd $baseDir && docker compose up -d");

echo "✅ Client $clientName déployé !\n"; 
echo "🔗 URL : http://{$vars['{{CLIENT_HOSTNAME}}']}\n";