<?php

class Shelf{

    private $db;

    public function __construct(){
        $this->db = new Database();
    }

    public function getShelves(){
        $sql = "SELECT * FROM shelves ORDER BY name";
        $shelves = $this->db->query($sql)->fetchAll();

        return $shelves;
    }

    public function getDataOfShelf($col, $id){
        $sql = "SELECT " . $col . " FROM shelves WHERE id='" . $id . "'" . "LIMIT 1";
        $name = $this->db->query($sql)->fetch();

        return $name[0];
    }

    public function getShelfIDs(){
        $sql = "SELECT id,name FROM shelves ORDER BY name";
        $shelves = $this->db->query($sql)->fetchAll();

        return $shelves;
    }

    public function addShelf($name, $device){
        $sql = "INSERT INTO shelves(name, device, actual_weight, registered_weight)" . 
        " VALUES('" . $name . "','" . $device . "','0','0')";

        $this->db->query($sql);

        (new History())->log("New shelf " . $name . " added controlled by " . $device . ".");
    }

    public function removeShelf($id){
        $sql = "DELETE FROM shelves WHERE id='" . $id . "'";
        $shelfName = $this->getDataOfShelf("name",$id);

        $this->db->query($sql);

        (new History())->log("Shelf " . $shelfName . " got removed.");
    }

    public function updateWeight($type,$weight,$shelf){
        $sql = "UPDATE shelves SET " . $type . "=" . $weight . " WHERE id='" . $shelf . "'";
        $shelfName = $this->getDataOfShelf("name",$shelf);

        $this->db->query($sql);

        (new History())->log("Updated the " . $type . " of shelf " . $shelfName . " to " . $weight . ".");
    }

}