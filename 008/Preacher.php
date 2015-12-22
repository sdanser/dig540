<?php
class Preacher{
  private $id;
  private $first_name;
  private $last_name;
  private $role;

//create new Preacher
public function __construct($first_name='', $last_name='', $role=''){
  //can't do if-empty because either first or last name might be empty! (But not both)
  $this->first_name = $_first_name;
  $this->last_name = $_last_name;
  $this->role = $_role;
}

//Read a Preacher from the database
public static function read($id){
  global $db;

  if($db){
    $q = $db->prepare('SELECT * from `preacher` where id =?');
    $q->execute(array($id));



  }

}




}




?>
