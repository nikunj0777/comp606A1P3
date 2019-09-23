
<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="col-sm-4 widget">
				<h3><span>Navigation</span></h3>
				<ul class="fnav">
					<li><a href="<?php echo $basepath;?>">HOME</a></li>
					<li><a href="<?php echo $basepath;?>about.php">ABOUT US</a></li>
					<li><a href="<?php echo $basepath;?>contact.php">CONTACT US</a></li>
					<li><a href="<?php echo $basepath;?>book_appointment.php">BOOK AN APPOINTMENT</a></li>
					<?php
						if(empty($_SESSION['regid'])){
							?>
							<li><a href="<?php echo $basepath; ?>register.php">REGISTER</a></li>
							<li><a href="<?php echo $basepath; ?>login.php">LOGIN</a></li>
							<?php
						}
						else{
							?>
							<li><a href="<?php echo $basepath; ?>logout.php">LOGOUT</a></li>
							<?php
						}
					?>
				</ul>
			</div>			

			<div class="col-sm-4 widget">
				<h3><span>Get in touch </span></h3>
				<div class="address-widget">
					<p><i class="fa fa-home" aria-hidden="true"></i> Frankton, New Zealand </p>
					<p><i class="fa fa-phone" aria-hidden="true"></i> 0201234567</p>
					<p><i class="fa fa-envelope" aria-hidden="true"></i>Bodytherapy@gmail.com</p>
				</div>
				
			</div>	
			
					<div id="processResults" style="display:block"></div>
                    <div id='mail_success' class='success' style="color:green;font-size:16px;top:10px;">Thank you very much for subscribing.<br /></div>
                    <div id='mail_fail' style="color:red; text-align:center; font-size:16px;top:10px;" class='error'>There was an error while trying to save your details, please try again later. </div>

				    </form>

				</div>
			</div>	
			
			
			
		</div>		
	</div>
	<p class="copyright">Copyright <?php echo date('Y');?>. All Rights Reserved.</p>
</footer>

<!-- All Javasripts included here -->
<script type="text/javascript" src="js/vendor/jquery-1.11.3.min.js"></script>  
<script type="text/javascript" src="js/vendor/bootstrap.min-3.3.6.js"></script>
<script type="text/javascript" src="js/jquery.meanmenu.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/plugins.js"></script>

<script type="text/javascript" src="js/jquery.validate.js"></script>

<link href="css/contactStyles.css" rel="stylesheet" type="text/css" /> 
