<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
 <script type="text/javascript">
	$(document).ready(function(){
		$("#login_frm").submit(function(){

			 //remove previous class and add new "myinfo" class
	        $("#msgbox").removeClass().addClass('myinfo').text('Validating Your Login ').fadeIn(2000);

			
			this.timer = setTimeout(function () {
				$.ajax({
		          	url: 'check.jsp',
		          	data: 'un='+ $('#login_id').val() +'&pw=' + $('#password').val(),
		          	type: 'post',
		   			success: function(msg){
						if(msg != 'ERROR') // Message Sent, check and redirect
						{				// and direct to the success page
							
							$("#msgbox").html('Login Verified, Logging in.....').addClass('myinfo').fadeTo(900,1,
			                  function()
			                  {
			                     //redirect to secure page
			                     document.location='login.jsp?user='+msg;
			                  });
	
						}
						else
						{
							$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
		                	{
			                  //add message and change the class of the box and start fading
			                  $(this).html('Sorry, Wrong Combination Of Username And Password.').removeClass().addClass('myerror').fadeTo(900,1);
			                });
	
						}
					}
				
				});
			}, 200);
			return false;
 		});		

	});

 </script>
</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Secure and Practical Outsourcing of Linear Programming in Cloud Computing</title>
<meta name="keywords" content="eye candy, free website template, CSS, HTML" />
<meta name="description" content="Eye Candy - free website template using blue and dark gray background. This layout includes a Flash XML Slider." />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />

		
</head>
<body>

<div id="templatemo_wrapper">

	<div id="">

      <div id="site_title" style="font:Verdana, Arial, Helvetica, sans-serif">
         <br>
          <h2 style="color:#000"> <p><strong>Secure  and Practical Outsourcing of Linear Programming in <br><br>Cloud Computing</strong></p></h2>
      </div>
    
    </div> <!-- end of header -->
    
    <div id="templatemo_menu">
    
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="userregister.jsp">User Registration</a></li>
            <li><a href="userlogin.jsp" >User Login</a></li>
            <li></li>
            <li><a href="adminlogin.jsp" class="current">Admin Login</a></li>
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
    
   
    <!-- end of slider -->
    
    <div id="templatemo_content">
    	
        <h1>ADMIN LOGIN</h1>
        
        
       <table align="center" width="102" class="post" >
<tr>
<td width="660" height="477" valign="top" >l
<table align="center" width="658"  >

   <form name="login_frm" id="login_frm" action="check.jsp" method="post">
    <div id="login_box">
      <div id="login_header">
            Login
      </div>
      <div id="form_val">
        <div class="label">User Id :</div>
        <div class="control"><input type="text" name="un" id="login_id"/></div>
        
        <div class="label">Password:</div>
        <div class="control"><input type="password" name="pw" id="password"/></div>
        <div style="clear:both;height:0px;"></div>
      
      	<div id="msgbox"></div>
      </div>
      <div id="login_footer">
        <label>
        <input type="submit" name="login" id="login" value="Login" class="send_button" />
        </label>
      </div>
    </div>
</form>
</table>
</td>
</tr>
</table>

    	
	</div> <!-- end of content -->
    
</div> <!-- end of wrapper -->

<div id="templatemo_footer_wrapper">

	
    	<div class="cleaner"></div>
    </div> <!-- end of footer -->
</div> <!-- end of footer wrapper -->    

<div id="templatemo_copyright_wrapper">

	<div id="templatemo_copyright">
    
		Copyright © 2013 <a href="#">SNIST</a> | 
        Designed by <a href="http://www.templatemo.com" target="_parent">A1</a>
        
        
    </div> <!-- end of templatemo_copyright -->
    
</div> <!-- end of copyright wrapper -->

</body>
</html>