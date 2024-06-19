<?php

class History{

	private $db;

    public function __construct(){
        $this->db = new Database();
    }

    public function getLogs(){
    	$sql = "SELECT * FROM history ORDER BY timestamp DESC";
    	$logs = $this->db->query($sql)->fetchAll();

    	return $logs;
    } 

    public function log($message){
    	$sql = "INSERT INTO history(log) VALUES ('" . $message . "');";
    	$this->db->query($sql);
    }
}