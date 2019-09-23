<?php $pagename = basename($_SERVER['PHP_SELF']); ?>
<!--======= Top Bar Starts Here =======-->

<!--======= Top Menu Starts =======-->
<header>
	<div id="toprow">
		<div class="container">	
			<div class="row">
				<div class="col-sm-12">
					
					<div class="left">
						<p><img src="img/phone_icon.jpg" alt="Contact" >+64 23223196<p>
						<p><img src="img/at_icon.jpg" alt="Email" /> Bodytherapy@gmail.com</p>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<div class="container">		
		<div class="row">
			<div class="col-sm-3">				
				<a href="<?php echo $basepath;?>">
					<img src="img/logo.jpg"  class="img-responsive logo" alt="Good Homoeopathy" />
				</a>
			</div>
			<nav>				
				<ul>
					<li><a href="<?php echo $basepath;?>" <?php if($pagename=='index.php'){ ?> class="active"<?php } ?>>HOME</a></li>
					<li><a href="<?php echo $basepath;?>about.php" <?php if($pagename=='about.php'){ ?> class="active"<?php } ?>>ABOUT US</a></li>
					<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">THERAPY TYPES
							<span class="caret"></span></a>
							<ul class="dropdown-menu">
							  <li><a href="deep_therapy.php">DEEP TISSUE THERAPY</a></li>
							  <li><a href="rock_therapy.php">ROCKTAPE THERAPY</a></li>
							  <li><a href="cup_therapy.php">CUPPING THERAPY</a></li>
							  <li><a href="cbd_therapy.php">CBD MASSAGE THERAPY</a></li>
							</ul>
					</li>
					<li><a href="<?php echo $basepath;?>book_appointment.php">BOOK AN APPOINTMENT</a></li>
					<li><a href="<?php echo $basepath;?>contact.php" <?php if($pagename=='contact.php'){ ?> class="active"<?php } ?>>CONTACT US </a></li>
					<?php
						if(empty($_SESSION['regid'])){
							?>
							<li><a href="<?php echo $basepath; ?>register.php" <?php if($pagename=='register.php'){ ?> class="active"<?php } ?>>REGISTER</a></li>
							<li><a href="<?php echo $basepath; ?>login.php" <?php if($pagename=='login.php'){ ?> class="active"<?php } ?>>LOGIN</a></li>
							<?php
						}
						else{
							?>
							<li><a href="<?php echo $basepath; ?>logout.php" <?php if($pagename=='logout.php'){ ?> class="active"<?php } ?>>LOGOUT</a></li>
							<?php
						}
					?>
					
				</ul>
			</nav>				
				
		</div>
	</div> <!-- container ends -->
</header>

<!--======= Mobile Menu Starts Here =======-->
<div class="mobile_menu"> </div>