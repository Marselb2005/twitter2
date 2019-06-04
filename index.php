<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>twitter</title>
		<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php $connect =  mysqli_connect('127.0.0.1','root','','marsel_pn_10'); 
$query = mysqli_query($connect,'SELECT * FROM twitter');
?>
	<div class="header">
		<div class="container-fluid bg-info">
			Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo sint tempora dignissimos autem maiores, ex, incidunt ratione corporis cum quae, praesentium neque optio nisi mollitia corrupti illo alias nesciunt ad.
		</div>
	</div>
	<div class="content">
		<div class="container bg-light">
		<div class="row mt-2">

				<!--Левая колонка-->
				<div class="col-3 bg-light pl-0">
				<div class="d-flex">
				<img src="img/background.jpg " width="285px">
				</div>
				<div class="d-flex">
				<img src="img/avatar.jpg" class="ava" class="ml-2">
				<div class="">
				<a href="">Marsel</a> 
				</div>
				<div class="">
				<a href="">@marsel211005</a>
				</div>
				</div>
				</div>

				<div class="col-6 success pl-2">

				<form action="baz.php" method="POST">
					<input type="" name="text">
					<button>Твитнуть</button>
				</form>

<?php for ($i=0; $i < $query->num_rows; $i++) { ?>
	<div class="row">

		<div class="col-2">
			<a href=""><?php $marsel = $query->fetch_assoc(); 
			echo '<img src = "img/' . $marsel['logo'] .'">'; ?></a>
		</div>
		<div class="col-10">
				<div class="d-flex">
			<h3><a href=""><?php  echo $marsel['title'];  ?></a></h3>		
							</div>
							<div>
								<?php echo $marsel['text']; ?>
							</div>
							<div>
								<?php echo  '<img class="w-100" src = "img/' . $marsel['img'] .'">'; ?>			
							</div>
							<form action="delete.php" method="POST">	
								<?php echo '<input style= "display: none"  name="id" value="' .$marsel['id']. '">	'; ?>
								<button>Удалить</button>
							</form>

							<form action="change.php" method="POST">
								<?php echo '<input type="hidden"name="text" value="' .$marsel['text']. '">	'; ?>
								<?php echo '<input type="hidden"name="id" value="' .$marsel['id']. '">	'; ?>
								<button>Редактировать</button>
							</form>
							</div>
							</div>
							<?php } ?>

							</div>

							<!--закончился середина-->
					</div>
				</div>
				<!--Правая колонка-->
				<div class="col-3 bg-dark pl-2">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae exercitationem, quas magnam sequi. Unde provident sequi nemo, repellat eveniet id corporis atque laboriosam placeat sunt distinctio earum sit, consequuntur est.
				</div>
			</div>
		</div>
	</div>
</body>
</html>