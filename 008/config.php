<?php
$dsn = 'mysql:dbname=planetca_540user;host=localhost;port=3306';
$name = 'WhereTF does this come from??';
$pass = '';

$db = false;

//Connect to database
try{
  $db = new PDO($dsn, $name, $pass);
  $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
}
  catch(PDOException $e){
    die('Could not connect to the database:<br/>'. $e);
  }


?>
