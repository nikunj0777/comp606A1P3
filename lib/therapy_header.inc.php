<div id="head">
	<div class="head-container">
		<div class="head-left-col">
			<ul>
				<li><a  class="push_menu"><i class="icon icon-toggle"></i></a></li>
			</ul>
		</div>
		<div class="head-right-col">
			<div class="dropdown settings-dd">
				<button class="icon icon-settings dropdown-toggle" type="button" data-toggle="dropdown">
				</button>
				<?php
					if(empty($_SESSION['regid'])) {
						?>
						<a href="<?php echo $basepath;?>login.php">login</a>
						<?php
					}
					else{
						?>
						<ul class="dropdown-menu dropdown-menu-right">
							<a href="<?php echo $basepath;?>logout.php">Logout</a></li>
						</ul>
						<?php
					}
				?>
			</div>
		</div>
	</div>
</div>
<style>
	*{
	  text-transform: uppercase;
	}
</style>