<?php
	$connected = mysqli_connect("localhost","root","","qlthuvien");
	$id=$_POST['id'];
	$db=mysqli_query($connected,"SELECT ChucVu FROM nguoidung where id='$id'");
	$chucVu="";
	while ($row = mysqli_fetch_array($db)) {
		$chucVu=$arr['ChucVu'];
		break;
	}
	echo $chucVu;
?>