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

			<?PHP
				$i = $_POST['dollar_amt'];
				if(is_numeric($_POST['dollar_amt']) && ($i < 46)){
					echo "Too low! Try again.<br/>";
				}
				elseif(is_numeric($_POST['dollar_amt']) && ($i > 46)){
					echo "Too high! Try again.<br/>";
				}
				elseif(is_numeric($_POST['dollar_amt']) && ($i == 46)){
					$n = 0;
					while($n < 5){
						echo "You're right!<br/>";
					$n++;
					}
				}
			?>

			<br/><br/>
				<li><b>Unicorn Pencil Sharpener</b><br/>
				<img src="http://ecx.images-amazon.com/images/I/71eKgzHs8dL._SY355_.jpg"/>
				<form  method="POST" action="">
				This item costs $<input name="dollar_amt2"/>.99
				<input type="submit" value="Am I right?"/><br/>
				</form>
				</li>
				<?PHP
				$i = $_POST['dollar_amt2'];
				if(is_numeric($_POST['dollar_amt2']) && ($i < 6)){
					echo "Too low! Try again.<br/>";
				}
				elseif(is_numeric($_POST['dollar_amt2']) && ($i > 6)){
					echo "Too high! Try again.<br/>";
				}
				elseif(is_numeric($_POST['dollar_amt2']) && ($i == 6)){
					$n = 0;
					while($n < 5){
						echo "You're right!<br/>";
					$n++;
					}
				}
			?>
		</ol>
		<br/><br/>*These items are available on Amazon.com. Prices subject to change.<br/>
		This page should not be considered an endorsement of Amazon or the products listed.
		</body>
</html>
