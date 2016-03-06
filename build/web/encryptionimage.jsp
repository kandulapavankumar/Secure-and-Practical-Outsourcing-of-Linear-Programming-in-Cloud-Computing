<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%  if(session.getAttribute("email2")!= null)
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
            <li><a href="userpage.jsp" >Home</a></li>
            <li><a href="userpage.jsp">Search</a></li>
            <li><a href="encryptionimage.jsp" class="current" >Encryption/Decryption</a></li>
            <li><a href="signout.jsp">Logout</a></li>
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
    
   
<table align="center" width="950" class="post" >
<tr>
    <td width="475" height="520" valign="top" > 
      <table align="center" width="475" style="border:1px solid #d2d2d2;" bgcolor="#FFFFCC">
        <form name="idpasschbox" method="get" action="datadelete.jsp" onSubmit="return validation()">
<tr>
<td width="527" align="center" background="images/pattern_bg.gif" class="paragraping" style="color:#000000">Encryption</td>			
</tr>
          <% 
        Thread.sleep(100);
	Connection con2=null;
	Statement st2=null;
	ResultSet rs2=null;
	String sql2="select * from image";
	try
	{
	   con2=databasecon.getconnection();
	    st2=con2.createStatement();
	    rs2=st2.executeQuery(sql2);
		while(rs2.next())
	     {
		 
		
		 
		 
			String s1=rs2.getString(2);
			%>
			
          
			<tr>
			 
			 <td height="46" class="paragraping1">&nbsp;&nbsp;<img src="images/img04.gif">&nbsp;&nbsp;<font color="#FF0000" size="+1"><% out.println(rs2.getString(2));%></font></td>
			</tr>
			
           <%
      
String query1=rs2.getString(1);

%>
         
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
	     st2.close();
	      con2.close();
	}
            %> 
        </form>
      </table>

    </td>
    <td width="475" height="520" valign="top">
	<table align="center" width="475" style="border:1px solid #d2d2d2;" bgcolor="#FFCCFF">
        <form name="idpasschbox" method="get" action="datadelete.jsp" onSubmit="return validation()">
<tr>
<td width="404" align="center" background="images/pattern_bg.gif" class="paragraping" style="color:#000000">Decryption</td>			
</tr>
          <% 
		Thread.sleep(100);
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select * from image";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {
		 
		
		 
		 
			String s1=rs1.getString(1);
			%>
			
          
			<tr>
			 
			 <td height="46" class="paragraping1">&nbsp;&nbsp;<img src="images/online.jpg">&nbsp;&nbsp;<font color="#006600" size="+1"><% out.println(rs1.getString(1));%></font></td>
			</tr>
			
           <%
      
String query1=rs1.getString(1);

%>
         
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
	     st1.close();
	      con1.close();
	}
            %> 
        </form>
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