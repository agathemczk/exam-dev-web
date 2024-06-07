<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);
ob_start();

if (isset($_GET['genreId'])) {
    $genreID = $_GET['genreId'];

    require_once("C:/MAMP/htdocs/PHP/exam/exam-dev-web/model/pdo.php");

    $resulat_genre = $dbPDO->prepare("
        SELECT genres.libelle AS type, mangas.titre AS title, mangas.publication AS date,
        auteurs.prenom AS firstname, auteurs.nom AS name, mangas.note AS mark
        FROM genres
        LEFT JOIN mangas ON mangas.genre = genres.id
        LEFT JOIN auteurs ON mangas.auteur = auteurs.id
        WHERE genres.id = :genreId
    ");

    $resulat_genre->bindParam(':genreId', $genreID, PDO::PARAM_INT);
    $resulat_genre->execute();
    $manga_genre = $resulat_genre->fetchAll(PDO::FETCH_OBJ);

    if ($manga_genre) {
        echo "<h2>" . $manga_genre[0]->type . "</h2>";        
        echo "<ul>";
        foreach ($manga_genre as $manga) {
            if ($manga->title) {
                $release_year = DateTime::createFromFormat("Y-m-d", $manga->date)->format("Y");
                echo "<li>" . $manga->title . " - " . $manga->firstname . " " . $manga->name . " - " . $release_year . " - " . $manga->mark . " / 10 </li>";
            }
        }
        echo "</ul>";
    } 
}
?>
