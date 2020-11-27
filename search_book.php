<?php 
$conn = mysqli_connect("localhost","root","","qlthuvien");
	// include_once "content_product.php";
	//$page=$_POST['idPage'] - 1;

	$tenSach = mb_strtoupper($_POST['tenSach']);
	$cn=$_POST['cn'];
	
	$db=mysqli_query($conn,"select s.ID_Sach,s.TenSach,s.Gia,s.hinhAnh,sl.ID_ChiNhanh from sl_sach sl join sach s on sl.ID_Sach=s.ID_Sach where sl.ID_ChiNhanh='$cn' and sl.SL_Ton>0 and upper(s.TenSach) like N'%$tenSach%'");
	$html="";
	$cnt=0;
	while ($row = mysqli_fetch_array($db)) {
		$id_sach = $row['hinhAnh'];
		$sach = $row['TenSach'];
		$price = $row['Gia'];
		$pic = $row['hinhAnh'];
		$id_cn = $row['ID_ChiNhanh'];
		if ($cnt==0) $html.="<div class='col-md-12'>";
		$html.="<div class='col-md-3 col-sm-6'>
				   <div class='owl-item active' style='width: 212px; margin-right: 20px;'>
					   <div class='single-product'>
						<div class='product-f-image'>
						   <img src='$pic' alt=''>
							<div class='product-hover'>
							   <a style='cursor:pointer' class='add-to-cart-link' onclick='addCart(\"$id_sach\",\"$sach\",true,\"$id_cn\",\"$pic\")'><i class='fa fa-shopping-cart'></i> Thêm vào giỏ</a>
							   <a href='single-product.php?id=$id_sach&cn=$id_cn' class='view-details-link' ><i class='fa fa-link'></i> Xem chi tiết</a>
							</div>
						 </div>
						 <h2><p onclick='fnLaunch(\"$id_sach\")'; style='cursor: pointer;'>$sach</p></h2>
					   <div class='product-carousel-price'>
							 <ins>$price<u>đ</u></ins> 
					   </div>
					   <div class='product-wid-rating'>
						  <i class='fa fa-star'></i>
						  <i class='fa fa-star'></i>
						  <i class='fa fa-star'></i>
						  <i class='fa fa-star'></i>
						  <i class='fa fa-star'></i>
					   </div>
					</div>
				 </div>
			  </div>";
			$cnt++;
			  if ($cnt==4) {$html.= "</div>";$cnt=0;}
	  }
	 
	 echo $html;
	
 ?>