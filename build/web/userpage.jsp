
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%  if(session.getAttribute("email2")!= null)
    {
    
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Secure and Practical Outsourcing of Linear Programming in Cloud Computing</title>
<meta name="keywords" content="eye candy, free website template, CSS, HTML" />
<meta name="description" content="Eye Candy - free website template using blue and dark gray background. This layout includes a Flash XML Slider." />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
<script language="JavaScript">
		function valid()
		{
		var a = document.f.name.value;
		
		
		if(a=="")
        {
        alert("Please search your File");
	    document.f.name.focus();
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
            <li><a href="userpage.jsp" class="current">Home</a></li>
            <li><a href="userpage.jsp">Search</a></li>
           
			<li><a href="signout.jsp">Log out</a></li>
			
            <li></li>
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
    
    
        	
    
        
        <table align="center" width="1024" class="post" >
<tr>
<td width="1016" height="477" valign="top" >
<table align="center" width="996" >
		<% 
		String email2=(String)session.getAttribute("email2");
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from server where email2='"+email2+"'";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		while(rs.next())
	     {
		 
		
		 
		 
			String s1=rs.getString(9);
			%>	
			
        <td width="980" height="47"  colspan="4" align="right" class="paragraping1" style="color:#000000"><img src="images/online.jpg">&nbsp;&nbsp;Welcome <font color="#FF0000">
          <% out.println(rs.getString(9));%></font></td>
		
		
       
		</tr>
		
	    	<%
			
	     }
		
	  
	}
	catch(SQLException e1)
	{
		out.println("Your given didn't match to our database");
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
</table><br>
<table align="center" width="768" style="border:1px solid #d2d2d2;">
<form action="data1.jsp" name="f" method="get" onSubmit="return valid();">
<tr>
<td colspan="3" class="paragraping1" align="center"><font color="#FF0000" size="+1">Please Select Image/File/Text</font></td>
</tr>

<tr>
<td width="148" height="74" class="paragraping1" style="color:#000000">Search Your Files:</td>
<td width="608"><input type="text" name="name" style="border:1px solid skyblue;font-family:verdana;color:red;padding:5px 5px 5px 5px;width:500px;height:25px;">&nbsp;&nbsp;
<input type="submit" name="sub" value="" class="search">
</td>
</tr>
<tr>
<td class="paragraping1" colspan="3" align="center">
<a href="image.jsp">Image</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="file.jsp">File</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="data.jsp">Text</a>
</td>
</tr>  
</form>    
</table><br>
     
<table align="center" width="650">
<tr>
<td height="74" class="paragraping1"><img src="images/user1.JPG"></td>
</tr>    
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