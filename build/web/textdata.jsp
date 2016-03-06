<%@ page import="java.sql.*,databaseconnection.*, java.util.HashSet, java.util.Iterator"%>

<%@ page import="java.lang.*"%>
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
<script language="JavaScript">
		function valid()
		{
		var a = document.f.query.value;
		var b = document.f.id.value;
		var c = document.f.publish.value;
		var d = document.f.author.value;
		var e = document.f.cost.value;
		var f = document.f.mess.value;
		if(a=="")
		{
		alert("Enter Book Name");
		document.f.query.focus();
		return false;
		}
		if(b=="")
		{
		alert("Enter Book ID");
		document.f.id.focus();
		return false;
		}
		if(c=="")
		{
		alert("Book Published By");
		document.f.publish.focus();
		return false;
		}
		if(d=="")
		{
		alert("Enter book Author Name");
		document.f.author.focus();
		return false;
		}
		if(e=="")
		{
		alert("Enter Book Price");
		document.f.cost.focus();
		return false;
		}
		if(f=="")
		{
		alert("Enter Book Description");
		document.f.mess.focus();
		return false;
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
            <li><a href="adminpage.jsp" >Home</a></li>
			<li><a href="search.jsp">Search</a></li>
           <li><a href="fileupload.jsp">File Upload</a></li>
            <li><a href="imageupload.jsp">Image Upload</a></li>
            <li><a href="textdata.jsp" class="current">Text Upload</a></li>
			<li><a href="details.jsp">User Details</a></li>
            <li><a href="signout.jsp">Logout</a></li>
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
    
    
<table align="center" width="950" class="post" >
<tr>
<td width="660" height="477" valign="top" ><br><br>
<form action="queryinsert.jsp" method="get" name="f" onSubmit="return valid();">
 <table align="center" width="487" style="border:1px solid green;" bgcolor="#A3BBD6" >
  
<tr>
<td colspan="2" bgcolor="#930000" align="center"><font class="paragraping1"><font color="#FFFFFF">Add Text Details</font></font></td>
</tr>			
<tr>
<td width="174" height="40" class="paragraping1" style="color:#000000">Book Name:</td>
<td width="301"><input type="text" name="query" size="30" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;width:180px;"></td>
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
       hitsCount = hitsCount+10;
    }
    application.setAttribute("hitCounter", hitsCount);
%> 
<tr>
<td width="174" height="40" class="paragraping1" style="color:#000000">Book ID:</td>
<td width="301"><input type="text" name="id" value="File<%=hitsCount%>" size="30" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;width:180px;"></td>
</tr>
<tr>
<td width="174" height="40" class="paragraping1" style="color:#000000">Published By:</td>
<td width="301"><input type="text" name="publish" size="30" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;width:180px;"></td>
</tr>
<tr>
<td width="174" height="40" class="paragraping1" style="color:#000000">Author Name:</td>
<td width="301"><input type="text" name="author" size="30" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;width:180px;"></td>
</tr>
<tr>
<td width="174" height="40" class="paragraping1" style="color:#000000">Book Price:</td>
<td width="301"><input type="text" name="cost" size="30" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;width:180px;"></td>
</tr>
<tr>
<td width="174" height="40" class="paragraping1" style="color:#000000">Book Description:</td>
<td width="301"><textarea name="mess" cols="50" rows="7" style="border:1px solid skyblue;font-family:verdana;color:red;font-size:12px;padding:2px 2px 2px 2px;"></textarea></td>
</tr>
<tr>
<td height="36" class="paragraping2"></td>
<td width="301"><input type="submit" name="sub" value="" class="submit">&nbsp;&nbsp;<input type="reset" name="clear" value="" class="clear"></td>
</tr>
 </table>
 </form>
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