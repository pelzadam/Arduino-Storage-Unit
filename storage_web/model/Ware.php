<?php

class Ware{

    private $db;

    public function __construct(){
        $this->db = new Database();
    }

    public function getWares($ware=null){
        $sql = !isset($ware)? "SELECT * FROM wares" : "SELECT * FROM wares where name LIKE '%" . $ware . "%'";
        $wares = $this->db->query($sql)->fetchAll();

        foreach($wares as $key => $w){
            $wares[$key]['shelf'] = (new Shelf())->getDataOfShelf("name",$w['shelf']);
        }

        return $wares;
    }

    public function getDataOfWare($col, $id){
        $sql = "SELECT " . $col . " FROM wares WHERE id='" . $id . "'" . "LIMIT 1";
        $name = $this->db->query($sql)->fetch();

        return $name[0];
    }

    public function getWaresOfShelf($device){
        $sql = "SELECT shelves.id, wares.name, wares.barcode, shelves.registered_weight, shelves.actual_weight FROM wares 
        INNER JOIN shelves ON wares.shelf = shelves.id 
        WHERE shelf =( SELECT id FROM shelves WHERE device='" . $device . "')";
        $wares = $this->db->query($sql)->fetchAll();

        return $wares;
    }

    public function calculateWeight($shelf){
        $weight = 0;
        $sql = "SELECT weight FROM wares WHERE shelf='" . $shelf . "'";
        $weights = $this->db->query($sql)->fetchAll();

        foreach($weights as $w){
            $weight+=$w['weight'];
        }
        
        return $weight;
    }

    public function addWare($ware, $shelf, $weight, $barcode){
        $sql = "INSERT INTO wares(name, shelf, weight, barcode)" . 
        " VALUES('" . $ware . "','" . $shelf . "','" . $weight . "','" . $barcode ."')";
        $shelfName = (new Shelf())->getDataOfShelf("name",$shelf);

        $this->db->query($sql);

        (new History())->log("New ware called " . $ware . " added to shelf " . $shelfName . " with the weight of " . $weight . ".");

        (new Shelf())->updateWeight('registered_weight',strval($this->calculateWeight($shelf)),$shelf);
    }

    public function removeWare($id){
        $sql = "DELETE FROM wares WHERE id='" . $id . "'";
        $shelf = $this->getDataOfWare("shelf",$id);
        $wareName = $this->getDataOfWare("name",$id);
        $shelfName = (new Shelf())->getDataOfShelf("name",$shelf);

        $this->db->query($sql);

        (new History())->log("Ware " . $wareName . " got removed from " . $shelfName . ".");

        (new Shelf())->updateWeight('registered_weight',strval($this->calculateWeight($shelf)),$shelf);
    }

}