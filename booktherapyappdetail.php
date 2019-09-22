<?php include('admin/lib_include/connection.inc.php'); ?>
<?php
    ob_start();
    session_start();
    $ses_id= session_id();
    if(empty($_SESSION['regid'])) 
    { 
      header('location: '.$basepath.'login.php');
    }
?> 
<?php 
  $drid = $_SESSION['drid'];
  $consolttype = $_SESSION['consolttype'];
  $book_type = $_REQUEST['book_type'];
  $price = $_REQUEST['price'];
?>
<?php include "lib/therapy_top.inc.php"; ?>
<!--calender script start-->
<link href='calender_scripts/fullcalendar.min.css' rel='stylesheet' />
<script src='calender_scripts/moment.min.js'></script>
<script src='calender_scripts/fullcalendar.min.js'></script> 
<!--calender script end-->
<style type="text/css">
.past_date {
  color: black !important;
  background-color: #eaeaea !important;
  opacity: 1 !important;
}
</style>
<?php  
  $therapyId = $_POST['therapyId']; //Get Clinic id

  //fetch according to date
  $dbc->where('slotclinic_id', $therapyId);
  $dbc->where('slotinfotype', $consolttype);
  $dbc->where('docterid', $drid);
  $getslotinfo = $dbc->get('dateslot_detail', null);
  $totl = count($getslotinfo);

  //fetch according to defaut time
  $dbc->where('clinicname_id', $therapyId);
  $dbc->where('docterid', $drid);
  $getdefaultslotinfo = $dbc->get('therapydayslot', null);
  $checktotval = count($getdefaultslotinfo);
?>

<script type="text/javascript"> 
  $(document).ready(function() {
    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        // right: 'month,agendaWeek,agendaDay'
        right: 'month'
      },
      defaultView: 'month',
      editable: false,
      eventRender: function(event, element, view) {                   
        var ntoday = new Date().getTime();
        var eventEnd = moment( event.end ).valueOf();
        var eventStart = moment( event.start ).valueOf();
        if (!event.end){
          if (eventStart < ntoday){
            element.addClass("past_date");
            element.children().addClass("past_date");
          }
        }
        else {
          if (eventEnd < ntoday){
            element.addClass("past_date");
            element.children().addClass("past_date");
          }
        }
      },
      //on event got to link start    
      eventClick: function(event, jsEvent, view, start) {
        var evtslotid = event.id; //event slot id

        <?php
          if(!empty($therapyId)){
            ?>
            var evtclinid = <?php echo $therapyId;?>; 
            var book_type = "<?php echo $book_type; ?>";
            var price = "<?php echo $price; ?>";
  
            var evttoday = new Date(event.start);
            var evtselDate = moment(evttoday).format('YYYY-MM-DD');

            //current date
            var cal_current_date = new Date();
            var calcurrentdate = moment(cal_current_date).format('YYYY-MM-DD');
            
            var doctrids = <?php echo $drid?>;
            var consolttype = <?php echo $consolttype?>;

            if (evtselDate >= calcurrentdate) {
              window.location.href = "slotbookprocess.php?drid=" + doctrids + "&selectclicnic=" + evtclinid + "&eventslotid=" + evtslotid + "&consolttypeview=" + consolttype + "&selectdate=" + evtselDate + "&book_type=" + book_type + "&price=" + price;
            }else{
              alert("You can not select previous Date !");
            }
            <?php
          }
        ?>
      },
      events: [
        //check default slot start 
        <?php
          if($checktotval>0){
            foreach($getdefaultslotinfo as $rowdefaultslotinfo){
              $mainslotid = $rowdefaultslotinfo['id']; //time slot id
              $maindayid = $rowdefaultslotinfo['clinic_dayid'];

              $tfrom = $rowdefaultslotinfo['consulation_time_from'];
              $tto = $rowdefaultslotinfo['consulation_time_to'];

              $dbc->where('slotclinic_id', $therapyId);
              $dbc->where('slotinfotype', '3');
              $dbc->where('docterid', $drid);
              $getslotinfo = $dbc->get('dateslot_detail', null);
              $totl = count($getslotinfo);
              ?>
              {
                id: '<?php echo $mainslotid;?>',
                title: '<?php echo $tfrom.' : '.$tto;?>',
                ///start: '10:00 am',  
                //end: '11:00 am',  
                dow: [ <?php echo $maindayid;?> ],
              },
              <?php
            }//while end
          }//if end
        ?>
      ]
    });
  });
</script> 
