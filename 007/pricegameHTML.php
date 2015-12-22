<?php

$rightResponse = "You got it! This item is $".$this->price."99.";
$hiResponse = "Too high! Try again.";
$loREsponse = "Too low! Try again.";

?>

<!DOCTYPE html>
<html>
	<head><title>What is the Right Price?</title>
	</head>
		<body>
		Can you guess the correct price for these items?*<br/>
		<ol>
			<li><b>Kala Makala Shark Soprano Ukulele</b><br/>
				<img src="http://ecx.images-amazon.com/images/I/514zVRJjtUL._SY355_.jpg" />
				<form  method="POST" action="">
				This item costs $<input name="dollar_amt"/>.99
				<input type="submit" value="Am I right?"/><br/>
				</form>
			</li>
