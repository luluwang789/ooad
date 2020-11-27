<?php
	$connected = mysqli_connect("localhost","root","","qlthuvien");
	$id=$_POST['id'];
	$db=mysqli_query($connected,"SELECT * FROM xulivipham where NgayKT>now() and ID_DocGia='$id'");
	$check="1";

	foreach ($db as $arr) {
		$check="0";
		break;
	}
	echo $check;
?>