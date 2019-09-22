<?php include("admin/lib_include/connection.inc.php"); ?>
<?php
	ob_start();
    session_start();
    $ses_id= session_id();
    if(empty($_SESSION['regid']))
    {
        header('location: '.$basepath.'login.php');
    }

    $userid = (int)$_SESSION['regid'];
    $dbc->where("publish", 0);
    $dbc->where("id", $userid);
    $row_loginuser = $dbc->getOne('customers', null);
    $firstname = $row_loginuser['firstname'];
?>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Therapy</title>
<meta name="description" content="">
<meta name="keywords" content="" />
<meta name="author" content="">
<?php include "lib/top.inc.php" ?>
</head>
<body>
<?php include "lib/header.inc.php" ?>
<!-- Showcase Section Starts here -->
<section id="sub-banner">
	<img src="img/about-banner.jpg" alt="" />
	<div class="bredcrumb">
		<div class="container">
			<div class="row">	
				<div class="col-sm-12">
					<h3>Book your Appointment</h3>
					<ul>
						<li><a href="<?php echo $basepath;?>">Home</a></li>
						<li><a href="javascript:void(0);">Book an Appointment</a></li>						
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>


<!-- Therpapy Massage Booking System Start -->


<section id="about-section">
	<div class="container">
		<div class="row">

		<form action="booking.php" method="post">
			<div class="col-sm-12" style="height:150px; background:#f5f5f5; border:1px solid lightgray;  margin-top:40px;">
				
				<div class="col-sm-4">
					<br>
					<p><h1>Cup therpy Massage</h1></p>
					<h3>Cost : $50</h3>
				</div>
				<div class="col-sm-8 text-right ">
					<button type="submit" name="book_type" class="btn-success" value="Cup therpy_50" style="height:36px; width:200px; margin-top:50px;">Book Now</button>
				</div>
			
			</div>
			
			<div class="col-sm-12" style="height:150px; background:#f5f5f5; border:1px solid lightgray;  margin-top:40px;">
				
				<div class="col-sm-4">
					<br>
					<p><h1>Deep Tissue therpy Massage</h1></p>
					<h3>Cost : $75</h3>
				</div>
				<div class="col-sm-8 text-right ">
					<button type="submit" name="book_type" class="btn-success" value="Deep Tissue therpy_75" style="height:36px; width:200px; margin-top:50px;">Book Now</button>
				</div>
			
			</div>
			
			
			<div class="col-sm-12" style="height:150px; background:#f5f5f5; border:1px solid lightgray;  margin-top:40px;">
				
				<div class="col-sm-4">
					<br>
					<p><h1>Rocktape therpy Massage</h1></p>
					<h3>Cost : $35</h3>
				</div>
				<div class="col-sm-8 text-right ">
					<button type="submit" name="book_type" class="btn-success" value="Rocktape therpy_35" style="height:36px; width:200px; margin-top:50px;">Book Now</button>
				</div>
			
			</div>
		</form>
		</div>
	</div>
</section>

<!-- Therpapy Massage Booking System End -->



<?php include "lib/footer.inc.php" ?>

