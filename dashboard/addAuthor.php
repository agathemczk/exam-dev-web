<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);
ob_start();

require_once("C:/MAMP/htdocs/PHP/exam/exam-dev-web/model/pdo.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (!empty($_POST['firstname']) && !empty($_POST['name'])) {
        $new_author = $dbPDO->prepare("INSERT INTO auteurs (prenom,nom) VALUES (:firstname, :name)");
            $new_author->execute([
            'firstname' => $_POST['firstname'],
            'name' => $_POST['name'],
        ]);
    }
}

?>

<h1>Add an author</h1>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
    <label for="firstname">Firstname :</label><br>
    <input type="text" id="firstname" name="firstname"><br>

    <label for="name">Lastname : :</label><br>
    <input type="text" id="name" name="name"><br>

    <input type="submit" value="Add">
</form>