<?php 
	$connect =  mysqli_connect('127.0.0.1','root','','marsel_pn_10'); 
	$query = mysqli_query($connect, "INSERT INTO twitter (logo, title, text, img) VALUES ('avatar.jpg', 'kek', '" . $_POST['text'] . "', 'background.jpg')");

	header('Location: http://marsel/twitter/index.php');

 ?>