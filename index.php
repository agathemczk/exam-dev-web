<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);
ob_start();

require_once("model/pdo.php");

$resultat_manga = $dbPDO->prepare("
    SELECT mangas.titre AS title, mangas.publication AS date, mangas.id AS id,
    auteurs.prenom AS firstname,auteurs.nom AS name
    FROM mangas
    JOIN auteurs ON mangas.auteur = auteurs.id
");

$resultat_manga->execute();
$mangas = $resultat_manga->fetchAll(PDO::FETCH_CLASS);

echo "<h2> List of mangas : </h2>";
echo "<ul>";
foreach($mangas as $manga) {
    $release_date = DateTime::createFromFormat("Y-m-d", $manga->date);
    $year_date = $release_date->format("Y");
    
    echo "<li> <a href='./views/manga.php?mangaId=$manga->id'> $manga->title</a>
    - $manga->firstname $manga->name - $year_date </li>";

    echo "</br>";
}
echo "</ul>";

?>