<?php 
session_start();

	include("connection.php");
	include("functions.php");

	$user_data = check_login($con);

?>

<!DOCTYPE html>
<html>
<head>
	<title>E-Learning</title>
</head>
<body>
	<center>
	<img src="e.jpg" alt="Italian Trulli" height="250" width="700">

	
	<h1>Welcome to E-Learning web page</h1>

	<br>
	<
	Hello Mr. <?php echo $user_data['user_name']; ?>>
	</center>
	<br> <br>
	<h4>
	<a href="profile.php">My profile</a><br/>

	<a href="CourseList.html"> Course List</a><br/>
	<a href="download.php"> Download lesson</a><br/>
	<a href="logout.php">Logout</a>
</h4>


</body>
</html>