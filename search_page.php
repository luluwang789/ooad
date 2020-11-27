<!DOCTYPE html>
<?php session_start(); ?>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cart Page - Ustora Demo</title>
    <link rel="shortcut icon" href="img/logo.ico">
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/search.css">
    <script type="text/javascript" src="js/search.js"></script>
    <script type="text/javascript" src="js/Test.js"></script>
    <!-- <style type="text/css">

    </style> -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
   <body onload="showCart();Cart();total_Cart()">
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <?php include_once 'checkAccount.php'; ?>
                            
                            <li><a href="cart.php"><i class="fa fa-user"></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> Danh sách mượn của tôi</font></font></a></li>
                          
                            <?php include_once 'includes/login_logout.php'; ?>
                            
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <!-- <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Tiền Tệ: </font></font></span><span class="value"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">VND</font></font></span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">VND</font></font></a></li>
                                    <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">USD</font></font></a></li>
                                </ul>
                            </li> -->

                            <!-- <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Ngôn Ngữ: </font></font></span><span class="value"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Tiếng Việt</font></font></span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Tiếng Việt</font></font></a></li>
                                    <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Tiếng Anh</font></font></a></li>
                                </ul>
                            </li> -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <!-- <h1><a href="#"><img src="img/logo.png" height="150px" width="150px"></a></h1> -->
                        <h1><a href="#">Open Library</a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="cart.php"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Giỏ Hàng</font></font><span class="cart-amunt"><font style="vertical-align: inherit;"><font id="TongTien" style="vertical-align: inherit;"></font></font></span> <i class="fa fa-shopping-cart"></i> <span class="product-count"><font style="vertical-align: inherit;"><font id="soLuong" style="vertical-align: inherit;">1</font></font></span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div id="undefined-sticky-wrapper" class="sticky-wrapper" style="height: 60px;"><div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.php">TRANG CHỦ</a></li>
                        <li><a href="shop.php">SÁCH</a></li>
                        <li class="active"><a href="search_page.php?page=1">TÌM KIẾM SÁCH</a></li>
                        <li><a href="cart.php">DANH SÁCH MƯỢN</a></li>
                        <li><a href="information.php">THÔNG TIN</a></li>

                        <li><a href="contact.php">LIÊN HỆ</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div></div> <!-- End mainmenu area -->
    
    < <!-- End Page title area -->

    
            
          
          
            <div class="timKiem">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <form action="" method="post" id="">
                                <div style="text-align: center;font-size: 18px;margin-top: 10px">
                                    <b><i>Chi nhánh  </i></b>
                                    <select id="dsChiNhanh">
                                        <!-- <option value="CN001">Chi Nhánh 1</option>
                                        <option value="CN002">Chi Nhánh 2</option>
                                        <option value="CN003">Chi Nhánh 3</option> -->
                                    </select>
                                </div>
                                <br>
                                <input type="search" name="search" id="search" class="form-control" placeholder="Tìm kiếm....">
                                <br>
                                <center><input type="submit" id="inputSearch" value="Search" class="btn btn-primary"></center>
                            </form>
                        </div>
                        <div class="col-sm-3"></div>
                    </div>
                </div>
                
            </div>
        
    
      <div class="single-product-area">

         <div class="zigzag-bottom"></div>

         <div class="container">
            
            <div class="row">
               <div  id="contentProduct"></div>
               <div class="row">
                  <div class="col-md-12">
                     <div class="product-pagination text-center">
                        <nav>
                           <ul class="pagination" id="pageBar">
                              <!-- <li>1</li> -->
                           </ul>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2><span>Open Library</span></h2>
                        <p>Kho tàng sách phong phú đem lại nhiều lợi ích cho mọi người</p>
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Khách hàng </h2>
                        <ul>
                            <li><a href="#">Tài khoản</a></li>
                            <li><a href="#">Lịch sử mượn sách</a></li>
                            <li><a href="#">Danh sách mong muốn</a></li>
                            <li><a href="#">Liên hệ</a></li>
                            <li><a href="#">Trang đầu</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">Danh mục</h2>
                        <ul>
                            <li><a href="#">Loại sách</a></li>
                            <li><a href="#">Nhà xuất bản</a></li>
                            <li><a href="#">Tác giả</a></li>
                        </ul>                        
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2 class="footer-wid-title">Tin thông báo</h2>
                        <p>Đăng ký nhận tin của chúng tôi và nhận các ưu đãi độc quyền mà bạn sẽ không tìm thấy ở bất kỳ nơi nào khác. Hãy đăng ký ngay!</p>
                        <div class="newsletter-form">
                            <form action="#">
                                <input type="email" placeholder="Nhập email của bạn">
                                <input type="submit" value="Đăng ký">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">© 2020 SpaceTeam. </font><font style="vertical-align: inherit;">Đã đăng ký Bản quyền. </font></font><a href="http://www.freshdesignweb.com" target="_blank"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">freshDesignweb.com</font></font></a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
   
    <!-- Latest jQuery form server -->
    <script async="" src="https://www.google-analytics.com/analytics.js"></script><script src="https://code.jquery.com/jquery.min.js"></script>
    
    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
</html>
<script>
   var cn;
   
     $(document).ready(function(){
      //load combobox chi nhánh 
       $.ajax({
            url:"loadDSCN.php",
            success:function(result){
               $('#dsChiNhanh').html(result);
               cn=$('#dsChiNhanh').val();
               //html phân trang
              pagination(cn);
            }
        });

         //showContent mới load trang
         $.ajax({
                   url:"Page.php", 
                   method:"POST",
                   data:{idPage : 1,cn:'CN001'}, 
                   success:function(result){ 
                       $('#contentProduct').html(result);
                   }
           });

        function pagination(cn){
         $.ajax({
            url:"pageBar.php",
            method:"POST",
            data:{cn:cn},
            success:function(result){
               $('#pageBar').html(result);
            }
          });
       }
       
          function fnLaunch(ma){ 
            var cn= $('#dsChiNhanh').val();
            var urls="single-product.php?id="+ma+"&cn="+cn;
            window.open(urls, "_blank");
            // window.focus();
         }
         
        $('#log_out').click(function(){
            $.ajax({
               url: 'logout.php',
               success:function(result){

               }
            });
         });


        $('#inputSearch').click(function(){
            var cnhanh=$('#dsChiNhanh').val();
            var tenSach = $('#inputSearch').val();
            
              $.ajax({
               url:"search_book.php", 
               method:"POST",
               data:{cn:cnhanh, tenSach: tenSach}, 
               success:function(result){ 
                   $('#contentProduct').html(result);
               }
           });
        });
    });
     
</script>
