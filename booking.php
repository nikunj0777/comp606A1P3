<?php include('admin/lib_include/connection.inc.php'); ?>
<!--Session start-->
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

  $book_type_array = explode("_",$_POST['book_type']);

  $book_type = $book_type_array[0];
  $price = $book_type_array[1];

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
    <style type="text/css">
      .error {color:#f00 !important;max-width: 100% !important;}
      .fc td, .fc th{cursor: pointer;}
    </style>
    
    <!--calender script start-->
    <link href='calender_scripts/fullcalendar.min.css' rel='stylesheet' />
    <script src='calender_scripts/moment.min.js'></script>
    <script src='calender_scripts/fullcalendar.min.js'></script>
    <!--calender script end-->
  </head>
  <body>
    <?php 
      $_SESSION['drid'] = 18;
      $drid = $_SESSION['drid'];//docter id
      $_SESSION['consolttype'] = 4;

      $consolttype= $_SESSION['consolttype']
    ?>
    <div class="wrapper">
      <div class="side-bar">
        <?php include "lib/therapy_leftside.inc.php";?>
      </div>
      <div class="content content-body">
        <?php include "lib/therapy_header.inc.php";?>
        <div class="container-fluid">
          <div class="dsb-content">
            <div class="panel tabbed-wrap cst-shadow">
              <div class="db-tabber">
                <ul class="nav nav-tabs">
                  <li class="active"> <a data-toggle="tab" href="#administrative-data"> Book Therapy Appointment (Step 1)</a></li>
                  <div class="col-sm-1 pull-right"> <h2> <a href="javascript:history.back();">Back</a> </h2> </div>
                </ul>
                <div class="tab-content">
                  <div id="administrative-data" class="tab-pane fade in active">
                    <div class="gn-form-wrap">
                      <form id="clinicinfo" method="post">
                        <div class="form-group col-sm-12">
                          <div class="form-group col-sm-12"> <h2>View Calender</h2> </div>
                          <div id='calendar' class="showdatecalendar"></div>
                        </div>
                      </form>
                      <div class="container-fluid row bottom-btn"></div>
                    </div>
                  </div><!--administrative-data end-->
                </div> 
              </div> 
            </div>
          </div>
        </div>   
      </div>
    </div> 

    <?php /*?>for click menu <?php */?>
    
    <!--Java script start from here-->
    <script type="text/javascript">
      $(document).ready(function(){
        $(".push_menu").click(function(){
          $(".wrapper").toggleClass("active");
        });
      });
    </script>

    <script type="text/javascript">
      $(document).ready(function() {
        var therapyId =  33;
        var book_type = "<?php echo $book_type; ?>";
        var price = "<?php echo $price; ?>";
        $.ajax({
          type : "post",
          url : "booktherapyappdetail.php",
          data :  {
            "therapyId": therapyId,
            "book_type": book_type,
            "price" : price,
          },
          success : function(data){
            $('.showdatecalendar').html(data);
          }
        });
      });
    </script> 
  </body>
</html>
