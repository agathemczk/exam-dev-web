<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);
ob_start();

if (isset($_GET['mangaId'])) {
    $mangaID = $_GET['mangaId'];

    require_once("C:/MAMP/htdocs/PHP/exam/exam-dev-web/model/pdo.php");
        $resultat_manga = $dbPDO->prepare("
        SELECT mangas.titre AS title, mangas.publication AS date, mangas.note AS mark,
        mangas.description AS synopsis, mangas.id AS id,
        auteurs.prenom AS firstname, auteurs.nom AS name,
        genres.libelle AS lib,
        personnages.nom AS perso
        FROM mangas
        JOIN auteurs ON mangas.auteur = auteurs.id
        JOIN genres ON mangas.genre = genres.id
        JOIN personnages ON mangas.personnage = personnages.id
        WHERE mangas.id = :mangaId
    ");

    $resultat_manga->bindParam(':mangaId', $mangaID, PDO::PARAM_INT);
    $resultat_manga->execute();
    $manga = $resultat_manga->fetch(PDO::FETCH_OBJ);

    if ($manga) {

        echo "<h2>$manga->title :</h2>";

        $release_date = DateTime::createFromFormat("Y-m-d", $manga->date);
        $date = $release_date->format("j F Y");

        echo "<p>Written by $manga->firstname $manga->name</p>";
        echo "</br>";
        echo "<p>Characters: $manga->perso</p>";
        echo "</br>";
        echo "<p>$date | $manga->lib | $manga->mark / 10</p>";
        echo "</br>";
        echo "<p>Description: $manga->synopsis</p>";

    }
}

?>
