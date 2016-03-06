<%  if(session.getAttribute("unamead")!= null)
    {
    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Secure  and Practical Outsourcing of Linear Programming in Cloud Computing</title>
<meta name="keywords" content="eye candy, free website template, CSS, HTML" />
<meta name="description" content="Eye Candy - free website template using blue and dark gray background. This layout includes a Flash XML Slider." />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
<!-- ..//JQuery Source\\.. -->
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
           <li><a href="adminpage.jsp" class="current">Home</a></li>
            <li><a href="search.jsp">Search</a></li>
            <li><a href="fileupload.jsp">File Upload</a></li>
            <li><a href="imageupload.jsp">Image Upload</a></li>
            <li><a href="textdata.jsp">Text Upload</a></li>
			<li><a href="details.jsp">User Details</a></li>
			
            <li><a href="signout.jsp">Logout</a></li>
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
    
    <table align="center" width="950"  style="border:1px solid #d2d2d2">
<tr>
<td class="paragraping">&nbsp;</td>
</tr>
<tr>
<td><img src="images/admin.JPG" width="950" height="345" /></td>
</tr>
<tr>
<td class="paragraping2" align="justify" style="color:#000000">
We propose to apply problem transformation for mechanism design. The general framework is adopted from a generic approach, 
while our instantiation is completely different and novel. In this framework, the process on cloud server can be represented 
by algorithm ProofGen and the process on customer can be organized into three algorithms (KeyGen, ProbEnc, ResultDec). 
These four algorithms are summarized below and will be instantiated later.<br><br>

• KeyGen(1k) → {K}. This is a randomized key generation algorithm which takes a system security parameter k, and returns a secret key K 
that is used later by customer to encrypt the target LP problem.<br><br>
 
• ProbEnc(K,_) → {_K}. This algorithm encrypts the input tuple _ into _K with the secret key K. According to problem transformation, 
the encrypted input _K has the same form as _, and thus defines the problem to be solved in the cloud.<br><br>

• ProofGen(_K) → {(y, 􀀀)}. This algorithm augments a generic solver that solves the problem _K to produce both the output y and a proof 􀀀. The output y later
decrypts to x, and 􀀀 is used later by the customer to verify the correctness of y or x.<br><br>
• ResultDec(K,_, y, 􀀀) → {x,⊥}. This algorithm may choose to verify either y or x via the proof 􀀀. In any case, a correct output x is produced by decrypting y using the secret K. The algorithm outputs ⊥ when the validation fails, indicating the cloud server was not performing the computation faithfully.

</td>
</tr>
</table>
        
        
       
    	<div class="cleaner"></div>
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
<%
 }
    else
    {
      response.sendRedirect("index.html");
    }
%>