<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);
ob_start();

require_once("C:/MAMP/htdocs/PHP/exam/exam-dev-web/model/pdo.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (!empty($_POST['title']) && !empty($_POST['author_id']) && !empty($_POST['genre_id']) && !empty($_POST['date']) && !empty($_POST['personnage_id']) && !empty($_POST['note']) && !empty($_POST['description'])) {
        $new_manga = $dbPDO->prepare("INSERT INTO mangas (titre, auteur, genre, publication, personnage, note, description) VALUES (:title, :author_id, :genre_id, :date, :personnage_id, :note, :description)");
            $new_manga->execute([
            'title' => $_POST['title'],
            'author_id' => $_POST['author_id'],
            'genre_id' => $_POST['genre_id'],
            'date' => $_POST['date'],
            'personnage_id' => $_POST['personnage_id'],
            'note' => $_POST['note'],
            'description' => $_POST['description']
        ]);
    }
}

?>

<h1>Add a manga</h1>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
    <label for="title">Tile:</label><br>
    <input type="text" id="title" name="title"><br>

    <input type="submit" value="Ajouter">
</form>