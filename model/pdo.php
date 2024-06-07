<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);
ob_start();
    
$servername = "localhost"; 
$username = "root";
$password = "root";
$dbname = "manga";

try {
    $dbPDO = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $dbPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo "La connexion a échouée : " . $e->getMessage();
}
?>