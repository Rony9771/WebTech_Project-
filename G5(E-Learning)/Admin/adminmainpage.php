<?php
session_start();
if(!isset($_SESSION['user'])){
	header('location:adminlogin.php');
}
?>

<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="utf-8" />
	<link rel="stylesheet" href="css/bootstrap.min.css" >
	<link rel="stylesheet" href="css/all.min.css" >
	<link rel="stylesheet" href="css/style.css" >
	

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@700&display=swap" rel="stylesheet">

    <title></title>
	
</head>
<body>
	
            <div class="heading text center-div text-uppercase text black mb-10">Admin Page*</div></br>
			<div class="container row"></div>
				<div class="admin-form">

						
						<nav class="navbar navbar-expand-sm navbar-dark bg-dark pl-10">
						  <div class="container-fluid">
							<a class="navbar-brand" href="adminmainpage.php">E-Learning</a>
							<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
							  <span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
							 <ul class="navbar-nav custom-nav pl-10">
								<li class="nav-item custom-nav-item"><a href="adminmainpage.php" class="nav-link">Main page</a></li>
								<li class="nav-item custom-nav-item"><a href="addstudent.php" class="nav-link">Add Student</a></li>
								<li class="nav-item custom-nav-item"><a href="addcourse.php" class="nav-link">Add Course</a></li>
							
							 </ul>	
							</div>
						  </div>
						</nav>
						</br></br>
						<ul class="widget widget-menu unstyled">

						
						<a href="logout.php" class="btn btn-danger">Logout</a>
						
						<script src="js/popper.min.js"></script>
						<script src="js/bootstrap.min.js"></script>
						<script src="js/all.min.js"></script>
	






</body>
</html>