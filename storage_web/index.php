<?php

session_start();

require('functions.php');
require('model/Database.php');
require('model/Ware.php');
require ('model/Shelf.php');
require ('model/History.php');

$Ware = new Ware();
$Shelf = new Shelf();
$History = new History();


require('view/header.php');
require('routing.php');
require('view/footer.php');
