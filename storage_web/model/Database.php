<?php

class Database{
	
	private $pdo;
	
	public function __construct(){
		$config = parse_ini_file("config.ini",true);
		$dsn = $config["database"]["dsn"];
		$username = $config["database"]["username"];
		$password = $config["database"]["password"];

		try{
            $this->pdo = new PDO($dsn, $username, $password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }catch(PDOException $e){
            echo $e->getMessage();
        }
		
	}
	
	public function query(string $querystring){
        try {
            $sql = $this->pdo->prepare($querystring);
            $sql->execute();

            return $sql;
        } catch (PDOException $e){
            echo $e->getMessage();
        }

		return false;
	}
}