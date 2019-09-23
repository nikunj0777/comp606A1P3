<?php $pagename = basename($_SERVER['PHP_SELF']); ?>
<ul class="sidebar-container">
    <li class="menu-head">
        <img src="<?php echo $basepath; ?>img/logo.jpg" class="logo-md">
        <img src="<?php echo $basepath; ?>assets/images/logo-sm.png" class="logo-sm">
    </li>


    <div class="userinfo-top">
        <div class="media"><img src="assets/images/no-img.png">
            <span class="user-status" style="background:#33de80"></span>
        </div>
        
        <div class="media-info">
            <?php 
                if(!empty($_SESSION['customer_name'])) {
                    ?>
                    <h2><?php echo ucfirst($firstname);?></h2>
                    <?php
                }
            ?>
        </div>
    </div>
    <div class="menu">
        <li> <a href="<?php echo $basepath;?>dashboard.php" <?php if($pagename=='dashboard.php'){ ?> class="active" <?php }?>><i class="icon icon-home"></i> <span>My Appointments</span></a></li>
        <li><a href="<?php echo $basepath;?>book_appointment.php" <?php if($pagename=='booking.php'){ echo 'class="active"'; }?>><i class="icon icon-consultaion"></i><span>Book Appointment</span></a></li>
    </div>        
</ul>
