<?php

function isUri(string $uri){
	$address = explode("?", $_SERVER["REQUEST_URI"]);
	
	if ($uri == $address[0]){
		return true;
	}
}

function validateData($data){
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	

    return $data;
}
