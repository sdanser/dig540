<?php
//create class
class Item{
  //establish properties
  private $itemName='';
  private $img='';
  private $price=0;

  //I know what these responses will be, and they are the same for each instantiation. Do they need to be private?
  //And where do I establish the (text) values? Here, or elsewhere?
  //--public $hiResponse="Too high! Try again.";
  //--public $loResponse="Too low! Try again.";
  //--public $rightResponse="You got it! This item costs $".$this->price.".99.";

  public function __construct($_itemName, $_img, $_price){
    $this->itemName = $_itemName;
    $this->img = $_img;
    $this->price = $_price;

  }

  public function checkPrice($userPrice){//has to be different than below??
    return $userPrice - $this->price;

  }


  public function checkPrice($userPrice){
    if(empty($_userPrice)) return false;

    elseif($this->price == $userPrice){
     echo "You got it! This item costs $".$this->price.".99.";
    }
    elseif($this->price > $userPrice){
      echo "Too low! Try again.";
    }
    elseif($this->price < $userPrice){
      echo "Too high! Try again.";

      //Eventually figure out how to add conditions to make sure the number entered is numeric (or integer?)
    }
  }

}

?>
