<?php

if(isset($_GET['data'])){
	$data = $Ware->getWaresOfShelf($_GET['device']);
	echo json_encode($data);
}

if(isset($_GET['measurement'])){
	$data = $Ware->getWaresOfShelf($_GET['device']);
	$measurement = floatval($_GET['measurement']);
	$registered = floatval($data[0]['registered_weight']);
	$id = $data[0]['id'];

	if($registered>$measurement-1 && $registered<$measurement+1){
		$Shelf->updateWeight('actual_weight',$registered,$id);
		echo "Successfully updated shelf";
	}
}
