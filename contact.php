
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
    <img src="img/contact-banner.jpg" al="" />
    <div class="bredcrumb">
        <div class="container">
            <div class="row">   
                <div class="col-sm-12">
                    <h3>Contact us</h3>
                    <ul>
                        <li><a href="<?php echo $basepath;?>">Home</a></li>
                        <li><a href="javascript:void(0);">Contact us</a></li>                     
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="contact-section">
    <div class="container">
        <div class="row">   
            <div class="col-sm-12">
                <div class="page-tittle">
                    <h1>How To Find Us</h1>
                    <span>Address and Direction</span>
                </div>
            </div>
        </div>
        <div class="row">   
            <div class="col-sm-12">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25262047.486749507!2d157.31722957400797!3d-39.384624941411914!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6d2c200e17779687%3A0xb1d618e2756a4733!2sNew%20Zealand!5e0!3m2!1sen!2sin!4v1568826775861!5m2!1sen!2sin" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
            </div>          
        </div>
    </div>
    <div class="container" id="addressWrap">
        <div class="row">
            <div class="col-sm-4">
                <span><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                Demo Address
            </div>
            <div class="col-sm-4">
                <span><i class="fa fa-phone" aria-hidden="true"></i></span>
                <p>+1 9999999999</p>
            </div>
            <div class="col-sm-4">
                <span><i class="fa fa-envelope" aria-hidden="true"></i></span>
                <p>demo@gmail.com</p>
            </div>
        </div>      
    </div>
    <div class="container" id="enquery">
        <div class="row">
            <h1>Drop a message </h1>
        </div>
        <div class="row">


            <form method="post" id='contact_form'>
                <div id="processResults" style="display:none"></div>

                <div class="col-sm-5">
                    <div id='contactNameEN_error' class='error'> Please provide your Name.</div>  
                    <input type="text" placeholder="Name" name='contactNameEN' id='contactNameEN'/>
                    <div id='contactAccountUsername_error' class='error'> Please provide your email address</div>   
                    <input type="text" placeholder="Email" name='contactAccountUsername' id='contactAccountUsername'/>
                    <div id='contactTelephone_error' class='error'> Please provide your Phone Number.</div> 
                    <input type="text" placeholder="Phone" name="contactTelephone" id="contactTelephone"/>
                </div>
                <div class="col-sm-7">
                    <div id='contactMessage_error' class='error'> Please provide your Message.</div>
                    <textarea placeholder="Comment" name="contactMessage" id="contactMessage"></textarea>
                </div>
                <div class="col-sm-12">
                <div id='captcha_error' class='error'> Please provide the code as displayed on the image</div>
                        <img src="includes/verificationimage.php?<?php echo rand(0,9999);?>" title="verification image, type it in the box" class="input_code_img" style="margin-bottom:10px;"/>                    
                        <input type="text" class="form-control"  name="verImage" id="verImage"  placeholder="Conformation Code">
                </div>
                <div class="col-sm-12">
                    <input type="submit" class="btn" value="Submit" id='send_message'/>
                </div>

            </form>


        </div>      
    </div>
</section>

<?php include "lib/footer.inc.php" ?>

<link href="css/contactStyles.css" rel="stylesheet" type="text/css" /> 

</body>
</html>