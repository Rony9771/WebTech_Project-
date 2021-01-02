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
            <div class="heading text center-div text-uppercase text black">Course ADD page*</div></br>
			<div class="container row"></div>
				<div class="admin-form">
						<div class="form-group">
							<label>Name Of Course</label>
							<input type="text" name="student" value="" class="form-control" autocomplete="off" >
						</div></br>
						<div class="form-group">
							<label>Deuration Of Course</label>
							<input type="text" name="emailid" value="" class="form-control" autocomplete="off" >
						</div></br>
						<div class="form-group">
							<label>Notes</label>
							<input type="text" name="text" value="" class="form-control" autocomplete="off" >
						</div></br>	
						<div class="form-group">
							<label>Price</label>
							<input type="price" name="bloodgroup" value="$" class="form-control" autocomplete="off" >
						</div></br>	
						<input type="button" value="Add" href="checkstudentadd.php">
						<input type="button" value="Delete">
						
						
						
						
						
						
						
						
						
						'
					
				</div>
        </div>
    </header>

</body>
</html>