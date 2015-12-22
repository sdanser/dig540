<?php
require_once('Item.php');

//instantiate 2 objects

//create new object of class Item and assign variable $shark
$shark = new Item("Kala Makala Shark Soprano Ukulele","http://ecx.images-amazon.com/images/I/514zVRJjtUL._SY355_.jpg", "46");
$shark->checkPrice();


$unicorn = new Item("Unicorn Pencil Sharpener","http://ecx.images-amazon.com/images/I/71eKgzHs8dL._SY355_.jpg", "6");
$unicorn->checkPrice();
//etc.


$response = $shark->checkPrice($userPrice)
 ?>
