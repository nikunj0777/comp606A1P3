<?php include('admin/lib_include/connection.inc.php'); ?>
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
<!DOCTYPE html>
<html>    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Therapy</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <?php include "lib/therapy_top.inc.php"; ?>
    </head>
    <body>	
		<div class="wrapper">
    	    <div class="side-bar">
                <?php include "lib/therapy_leftside.inc.php";?>
    	    </div>   
            <div class="content content-body">
                <?php include "lib/therapy_header.inc.php";?>
                <div class="container-fluid">
                    <div class="dsb-content">
                        <div class="col-md-12 db-cols-wrap">
                            <div class="row">
                                <div class="heading"><h2>Please Wait....</h2></div>
                                <?php
                                    $appid = (int)$_GET['appid'];

                                    $updateData = Array(
                                        'statusbooked' => 0,
                                    );

                                    $dbc->where('bid', $appid);
                                    $updateQuery = $dbc->update('booked_appointment', $updateData);
                                    if($updateQuery){
                                        header('refresh:2;url='.$basepath.'dashboard.php');
                                    }
                                ?>
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
		</div>
        <script type="text/javascript">
            $(document).ready(function(){
                $(".push_menu").click(function(){
                    $(".wrapper").toggleClass("active");
                });
            });
        </script>
    </body>
</html>