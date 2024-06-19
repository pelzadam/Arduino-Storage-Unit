<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if(isset($_POST["addWare"])){
        $Ware->addWare(validateData($_POST['ware']),validateData($_POST['shelf']),validateData($_POST['weight']), validateData($_POST['barcode']));
    }elseif (isset($_POST["deleteWare"])) {
        $Ware->removeWare(validateData($_POST['deleteWare']));
    }

}

if (isset($_GET['search'])){
    $data = $Ware->getWares(validateData($_GET['search']));
}else{
    $data = $Ware->getWares();
}

$shelves = $Shelf->getShelfIDs();

require ("view/wares.php");