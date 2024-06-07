<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);
ob_start();

require_once("C:/MAMP/htdocs/PHP/exam/exam-dev-web/model/pdo.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (!empty($_POST['libelle'])) {
        $new_gender = $dbPDO->prepare("INSERT INTO genres (libelle) VALUES (:libelle)");
            $new_gender->execute([
            'libelle' => $_POST['libelle'],
        ]);
    }
}

?>

<h1>Add a new genre</h1>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
    <label for="libelle">Genre of manga :</label><br>
    <input type="text" id="libelle" name="libelle"><br>
    <input type="submit" value="Add">
</form>