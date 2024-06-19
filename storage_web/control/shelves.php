<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if(isset($_POST['addShelf'])){
        $Shelf->addShelf(validateData($_POST['name']), validateData($_POST['device']));
    }elseif(isset($_POST['deleteShelf'])){
        $Shelf->removeShelf(validateData($_POST['deleteShelf']));
    }
}

$data = $Shelf->getShelves();

require ("view/shelves.php");