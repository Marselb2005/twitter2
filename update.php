<?php 
$connect =  mysqli_connect('127.0.0.1','root','','marsel_pn_10'); 
$query =mysqli_query( $connect,"UPDATE twitter SET text= '" .  $_POST['text'] . "'WHERE id='" . $_POST['id'] . "'");
	header('Location: http://marsel/twitter/index.php');
 ?>