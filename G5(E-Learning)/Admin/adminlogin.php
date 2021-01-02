<?php
session_start();
$con = mysqli_connect('localhost', 'root' );

?>



<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="utf-8" />
	<link rel="stylesheet" href="css/bootstrap.min.css" >
	<link rel="stylesheet" href="css/all.min.css" >
    <title>E-Learning</title>
	
</head>
<body>
    <header>
        <div class="container center-div">
            <div class="heading text center-div text-uppercase text black">Admin Login Page</div></br>
			<div class="container row"></div>
				<div class="admin-form">
					<form action="logincheck.php" method="POST" >
						<div class="form-group">
							<label>Email Id</label>
							<input type="text" name="user" value="" class="form-control" autocomplete="off" >
						</div>
						<div class="form-group">
							<label>Password</label>
							<input type="password" name="pass" value="" class="form-control" autocomplete="off" >
						</div>
						<input type="submit" class="btn btn-danger" name="submit" href="logincheck.php">
						
						
						<script src="js/popper.min.js"></script>
						<script src="js/bootstrap.min.js"></script>
						<script src="js/all.min.js"></script>
						
						
						
						
						
						
						'
					</form>
				</div>
        </div>
    </header>

</body>
</html>