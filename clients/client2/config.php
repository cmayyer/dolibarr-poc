<?php
/**
 * Configuration Dynamique SaaS
 * Lit les variables injectées par le docker-compose
 */

// --- 1. URLs et Chemins ---
$dolibarr_main_url_root = 'http://' . getenv('CLIENT_HOSTNAME');
$dolibarr_main_document_root = '/var/www/html';
$dolibarr_main_data_root = '/var/www/documents';

// --- 2. Base de Données (PostgreSQL) ---
$dolibarr_main_db_host = 'db-' . getenv('CLIENT_ID'); // Ex: db-c1
$dolibarr_main_db_port = '5432';
$dolibarr_main_db_name = 'dolibarr';
$dolibarr_main_db_user = getenv('DB_USER');
$dolibarr_main_db_pass = getenv('DB_PASS');
$dolibarr_main_db_type = 'pgsql';

// --- 3. Modules Personnalisés ---
// Indispensable pour que Dolibarr charge les modules copiés dans le Dockerfile
$dolibarr_main_url_root_alt = '/custom';
$dolibarr_main_document_root_alt = '/var/www/html/custom';

// --- 4. Paramètres Système ---
$dolibarr_main_db_character_set = 'utf8';
$dolibarr_main_prod = '1'; // Force le mode production (pas de logs verbeux)
$dolibarr_main_authentication = 'dolibarr';
?>
