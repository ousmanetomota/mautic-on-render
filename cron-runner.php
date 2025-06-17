<?php
// Sécurité : clé secrète
if (!isset($_GET['key']) || $_GET['key'] !== 'okacom2025') {
    http_response_code(403);
    die("Access denied.");
}

// Lancer les commandes cron de Mautic
passthru("php /var/www/html/bin/console mautic:segments:update");
passthru("php /var/www/html/bin/console mautic:campaigns:trigger");
passthru("php /var/www/html/bin/console mautic:emails:send");

echo "Mautic cron jobs executed.";
?>
