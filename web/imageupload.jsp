<%@ page language="java" %>
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
	<script language="javascript">
		function validation()
		{  //var a=document.form3.key.value;
		    var b=document.form3.name.value;
			var c=document.form3.des.value;
			 var d=document.form3.image.value;
	
		    
		if(b=="")
		    {
		        alert("Please Enter Image Name");
				document.form3.name.focus();
		        return false;
		    }
			if(c=="")
		    {
		        alert("Please Enter Image Description");
				document.form3.des.focus();
		        return false;
		    }
		   
			if(document.form3.image.value=="")
			{
				alert("Please Upload your  file");
				document.form3.image.focus();
				return false;
		
			}
			
		

		    else
		    {
		        return true;
		     }
	
		}
	
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
    
   
<table align="center" width="950" class="post" >
<tr>
<td width="660" height="477" valign="top" ><br><br>
<table align="center" width="454"  style="border:1px solid #d2d2d2" bgcolor="#A3BBD6">
<FORM ENCTYPE="multipart/form-data" name="form3" ACTION="upload.jsp" METHOD="POST" onSubmit="return validation();">
<tr>
<td  colspan="2" class="paragraping" background="images/pattern_bg.gif" align="center" style="color:#000000">Upload Image Here</td>
</tr>
<tr>
<td width="237" height="53" class="paragraping1" style="color:#000000">Image Name:</td>
<td width="205"><input type="text" name="name" style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"></td>
</tr>
<%
Thread.sleep(1000);
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("!");
       hitsCount = 10;
    }else{
       /* return visit */
       out.println("");
       hitsCount = hitsCount+100;
    }
    application.setAttribute("hitCounter", hitsCount);
%> 
<tr>
<td height="48" class="paragraping1" style="color:#000000">Secret Key:</td>
<td><input type="text" name="key" value="Image<%=hitsCount%>" style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"></td>
</tr>
<tr>
<td height="54" class="paragraping1" style="color:#000000">Image Description:</td>
<td><input type="text" name="des" style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"></td>
</tr>
<tr>
<td height="61" class="paragraping1" style="color:#000000">Upload Image:</td>
<td><INPUT NAME="image" TYPE="file" style="border:1px #A8A8FF solid;font-family:verdana;padding:2px 2px 2px 2px;font-size:12px;"></td>
</tr>
<tr>
<td height="61" class="paragraping1"></td>
<td><input type="submit" name="sub" value="" class="submit">&nbsp;&nbsp;<input type="reset" name="clear" value="" class="clear">&nbsp;&nbsp;</td>
</tr>
</FORM>
</table>
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