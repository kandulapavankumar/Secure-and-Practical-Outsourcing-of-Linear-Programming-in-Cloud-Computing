?<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Secure and Practical Outsourcing of Linear Programming in Cloud Computing</title>
<meta name="keywords" content="eye candy, free website template, CSS, HTML" />
<meta name="description" content="Eye Candy - free website template using blue and dark gray background. This layout includes a Flash XML Slider." />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />

		<script type="text/javascript" src="js/swfobject.js"></script>
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
            <li><a href="userregister.jsp" class="current">User Registration</a></li>
            <li><a href="userlogin.jsp" >User Login</a></li>
            <li><a href="adminlogin.jsp" >Admin Login</a></li>
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
    
   
    <!-- end of slider -->
    
   		<script>	
		$(document).ready(function() {
			// SUCCESS AJAX CALL, replace "success: false," by:     success : function() { callSuccessFunction() }, 
			
			$("#formID").validationEngine()
			
			
			//$.validationEngine.loadValidation("#date")
			//alert($("#formID").validationEngine({returnIsValid:true}))
			//$.validationEngine.buildPrompt("#date","This is an example","error")	 		 // Exterior prompt build example								 // input prompt close example
			//$.validationEngine.closePrompt(".formError",true) 							// CLOSE ALL OPEN PROMPTS
		});
		
		// JUST AN EXAMPLE OF VALIDATIN CUSTOM FUNCTIONS : funcCall[validate2fields]
		function validate2fields(){
			if($("#firstname").val() =="" || $("#lastname").val() == ""){
				return true;
			}else{
				return false;
			}
		}
		function addname()
		{
		  
  var uname=document.forms[0].user.value;
 

 if(uname=="")
 {
   alert("Give Proper Desired name");
   document.forms[0].user.value="";
 }

		}
                function checkdate()
		{
		  
  var date=document.forms[0].date.value;
 var re_reg=new RegExp("^[1-9][1-9][1-9][1-9]-[0-9][1-9]-[0-9][1-9]+$");

 if(!(re_reg.test(date)))
 {
   alert("Give Proper DOB");
   document.forms[0].date.value="";
 }

 

		}
                function checkphno()
{

  var re_phn=new RegExp("^[0-9]{10}$");
  var phn=document.forms[0].telephone.value;
   if(phn.length<10)
   {
     alert("Give proper Phone No it should contain minimum of 10 characters");
     document.forms[0].telephone.value="";
   }
  if(!(re_phn.test(phn)))
   {
     alert("Give Proper Phone No");
     document.forms[0].telephone.value="";
   }
  

}
 function validpass()
{
  var pass=document.forms[0].password.value;
  var repass=new RegExp("^[a-z0-9]+$");
  if(pass.length<6)
 {
   alert("Password should be minimum of 6 characters");
   document.forms[0].password.value="";
 }
 if(!(repass.test(pass)))
 {
   alert("Give proper password");
   document.forms[0].password.value="";
 }
}

 function cnfpass()
{
  var passc=document.forms[0].password2.value;
  var passw=document.forms[0].password.value;
  if(!(passc==passw))
 {
   alert("Conform Password and Password should be same");
   document.forms[0].password2.value="";
 }

 
}
function validemail()
{
  var email=document.forms[0].email.value;
  var reemail=new RegExp("^[a-z][a-z0-9.]+@[a-z]+.[a-z]{3}$");
   if(!(reemail.test(email)))
 {
   alert("Give Proper Email-Id");
   document.forms[0].email.value="";
 }
}
function cnfemail()
{
  var emailc=document.forms[0].email2.value;
  var emailw=document.forms[0].email.value;
  if(!(emailc==emailw))
 {
   alert("Conform email and email should be same");
   document.forms[0].email2.value="";
 }

 
}


	</script>
	<style type="text/css">
	#font
	{
	font-family:verdana;
	font-size:12px;
	font-color:green;
	padding:3px 3px 3px 3px;
	}
	</style>
</head>
<body bgcolor="#006CD9">
<table align="center" width="1024"  >
  
</table>
<table align="center" width="1024" class="post"  >
  <tr align="right" class="paragraping1"> 
  </tr>
</table>
<table align="center" width="950" class="post" >
<tr>
<td width="660" valign="top" style=" background-color: #A3BBD6">
<div >
 <div align="center" class="post"><font size="+1" style="color:#000000">User Registration</font></div> 
          <form id="formID" class="formular" method="post" action="insert.jsp">
			<fieldset>
			
				<legend style="color:#000000">User informations</legend>
				<table>
				<label>
				
					<tr><span><td style="color:#000000">Desired username :  </td></span>
					<td><input value=""  type="text" name="user" id="user" onblur="addname()" /></td>
				</tr></label><br>
				<label>
					<tr><td><span style="color:#000000">First name (optional)</span></td>
					<td><input value=""   type="text" name="firstname" id="firstname" /></td>
				</tr></label><br>
				<label>
					<tr><td><span style="color:#000000">Last name : </span></td>
					<td><input value=""   type="text" id="lastname" name="lastname"  /></td>
				</tr></label>
				</table>
				<span><font color="#FF0000">Gender :</font></span><br>
					
					<input class="validate[required] radio" type="radio" name="data[User][preferedColor]"  id="radio1"  value="5">&nbsp;<font color="#006600">Male</font> 
					
					<input class="validate[required] radio" type="radio" name="data[User][preferedColor]"  id="radio2"  value="3"/>&nbsp;<font color="#006600">Female</font>
					
			<br>
			
					<span><font color="#FF0000">Interested In : </font></span><br>
				
					<input  type="checkbox"  name="data[User3][preferedColor]" id="data[User3][preferedColor]" value="5">&nbsp;<font color="#006600">File</font>
					
					<input  type="checkbox" name="data[User3][preferedColor]" id="maxcheck2"  value="3"/>&nbsp;<font color="#006600">Image</font>
				
					<input  type="checkbox" name="data[User3][preferedColor]" id="maxcheck3"  value="9"/>
				&nbsp;<font color="#006600">Text</font>
				<table> 
				<label>
					<tr><span><td style="color:#000000">Date : (format YYYY-MM-DD)</td></span>
					<td><input value="1988-12-10"   type="text" name="date"  id="date" onBlur="checkdate()" /></td>
	</tr>			</label>
				<br>
				<label>
				<tr>
					<td><span style="color:#000000">Ranking Area 1:</span></td>
				    <td><select name="sport" class="validate[required]"  id="sport" style="font-family:verdana;" >
                      <option value="">Choose a Area</option>
                      <option value="File">File</option>
                      <option value="Image">Image</option>
                      <option value="Text">Text</option>
                    </select></td>
				</tr></label>
				<br>
				<label><tr>
					<td><span style="color:#000000">Age : </span></td>
					<td><input value=""   type="text" name="age"  id="age"  /></td>
					</label>
				</tr></label>
					<br>
				<label><tr>
					<td><span style="color:#000000">Telephone : </span></td>
					<td><input value=""   type="text" name="telephone"  id="telephone" onBlur="checkphno()" /></td>
				</tr></label><br>
				</table>
			</fieldset>
			<fieldset>
				<legend style="color:#000000">Password</legend>
				<label>
					<span style="color:#000000">Password : </span>
                                        <input value=""   type="password" name="password"  id="password" onblur="validpass()" />
				</label>
				<label>
					<span style="color:#000000">Confirm password : </span>
					<input value=""   type="password" name="password2"  id="password2" onBlur="cnfpass()" />
				</label>
			</fieldset>
			<fieldset>
				<legend style="color:#000000">Email</legend>
				<label>
					<span style="color:#000000">Email address : </span>
					<input value=""   type="text" name="email" id="email"  onBlur="validemail()"/>
				</label>
				<label>
					<span style="color:#000000">Confirm email address : </span>
					<input value=""  type="text" name="email2"  id="email2" onBlur="cnfemail()" />
				</label>
			</fieldset>
			<fieldset>
				<legend style="color:#000000">Comments</legend>
				<label>
					<span style="color:#000000">Description : </span>

					<textarea value="ced@hotmail.com"  name="comments" id="comments" /> </textarea>
				</label>

			</fieldset>
			<fieldset>
				<legend style="color:#000000">Conditions</legend>
				<div class="infos" style="color:#000000">Checking this box indicates that you accept terms of use. If you do not accept these terms, do not use this website : </div>
				<label>
					<br><input class="validate[required] checkbox" type="checkbox"  id="agree"  name="agree"/>
					<span class="checkbox" style="color:#000000">I accept terms of use.</span>
					
				</label>
			</fieldset>
<input class="submit" type="submit" style="font-family:verdana;font-size:0px;color:blue;/>
<hr/>
</form>
</div>
<%
 	String temp=null;
 	
 	temp=request.getParameter("message");
 	
 	if(temp!=null && temp.equalsIgnoreCase("success"))
 	{
 %>
 <br>

 		<table align="left" width="400" cellspacing="1" cellpadding="1" style="border: 1px #A0A0A0 solid;">
 			<tr>
 				<td align="left" class="paragraping">
 					<font color="green" face="verdana" size="2">
 						Server Successfully Registred! <br>
						
 					</font>
 				</td>
 			</tr>
 		</table>
		</td>
</tr>
</table>
<%
 	}
  %>
</td>
<td width="345" valign="top">

</td>
</tr>
</table> 
<table width="1024" align="center" >
  <tr> 
   
  </tr>
</table>
</body>
</html>
    	
	</div> 
    <!-- end of content -->
    
</div> <!-- end of wrapper -->

<div id="templatemo_footer_wrapper">

	
    	<div class="cleaner"></div>
    </div> <!-- end of footer -->
</div> <!-- end of footer wrapper -->    

<div id="templatemo_copyright_wrapper">

	<div id="templatemo_copyright">
    
		Copyright  2013 <a href="#">SNIST</a> | 
        Designed by <a href="http://www.templatemo.com" target="_parent">A1</a>
        
        
    </div> <!-- end of templatemo_copyright -->
    
</div> <!-- end of copyright wrapper -->

</body>
</html>