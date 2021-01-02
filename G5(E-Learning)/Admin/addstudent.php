<?php
session_start();
$con = mysqli_connect('localhost', 'root' );
?>

<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="utf-8" />
	<link rel="stylesheet" href="css/bootstrap.min.css" >
    <title></title>
	
</head>
<body>
    <header>
        <div class="container center-div">
            <div class="heading text center-div text-uppercase text black">Student information page*</div></br>
			<div class="container row"></div>
				<div class="admin-form">
						<div class="form-group">
							<label>Name</label>
							<input type="text" name="student" value="" class="form-control" autocomplete="off" >
						</div></br>
						<div class="form-group">
							<label>Email Id</label>
							<input type="text" name="emailid" value="" class="form-control" autocomplete="off" >
						</div></br>
						<div class="form-group">
							<label>Date of Birth</label>
							<input type="date" name="birthdate" value="" class="form-control" autocomplete="off" >
						</div></br>	
						<div class="form-group">
							<label>Blood group</label>
							<input type="text" name="bloodgroup" value="" class="form-control" autocomplete="off" >
						</div></br>	
						<div class="form-group">
							<label>Password</label>
							<input type="password" name="pass" value="" class="form-control" autocomplete="off" >
						</div></br>
						
						<input type="button" value="Add" href="checkstudentadd.php">
						<input type="button" value="Delete">
						<input type="button" value="Edit">
						
						
						
						
						
						
						
						
						
						
						'
					
				</div>
        </div>
    </header>

</body>
</html>