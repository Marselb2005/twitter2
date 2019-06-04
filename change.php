<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>HTMTMTT</title>
		<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
		<form action="update.php" method="POST">
			<?php echo '<input type="" name="text" value="'. $_POST['text'] . '">'; ?>
			<?php echo '<input type="" name="id" value="' . $_POST['id'] . '">'; ?>
			<button>Редактировать</button>
		</form>
</body>
</html>
