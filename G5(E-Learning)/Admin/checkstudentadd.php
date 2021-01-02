<?php
session_start();
$con = mysqli_connect('localhost', 'root' );
if($con){
	echo "connection successful";
}else{
	echo "not connected";
}

$db = mysqli_select_db($con, 'addstudent');
if(isset($_POST['submit'])){
	$username = $_POST['student'];
	$email = $_POST['emailid'];
	$dateofbirth = $_POST['birthdate'];
	$blood = $_POST['bloodgroup'];
	$pass = $_POST['password'];
	
	$sql = " select * from studenttable where name ='$username' and email id='$email' and $date of birth='birthdate' and $blood group='bloodgroup' and
		pass ='$password' ";
		
		$query = mysqli_query($con,$sql);
		
		$row = mysqli_num_rows($query);
			if($row == 1){
				echo "submit successful";
				$_SESSION['name'] = $username;
				header('location: ../adminmainpage.php');
			}else{
				echo "submit failed";
				header('location:addstudent.php');
			}
		
}
?>