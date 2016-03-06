<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
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

	<link href="style.css" rel="stylesheet" type="text/css" />	
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
           
			<li><a href="encryptionfile.jsp">Encryption/Decryption</a></li>
			<li><a href="signout.jsp">Logout</a></li>
			</ul>
    </div> <!-- end of templatemo_menu -->
    
    <table align="center" width="1024" class="post" >
<tr>
<td width="652" height="489" valign="top" >
<table align="center" width="652" style="border:1px solid #d2d2d2" bgcolor="#A3BBD6">
 <tr bgcolor="#0075EA">
<td height="31" colspan="2" class="paragraping"  style="color:white;" align="center">Unlock Files</td>
</tr>

<% 
    String name=request.getParameter("name");
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select * from filestore where status= \'offline\' and name='"+name+"'";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {

			%>
			<tr>
			<td width="215" height="31" class="paragraping"  style="color:red;">File Name</td>
			<td width="425" height="61"  class="paragraping1" style="color:#000000" ><% out.println(rs1.getString(1));%></td>	
			</tr>
			<tr>
			<td height="31" class="paragraping"  style="color:red;">Key</td>
			<td width="425" height="61"  class="paragraping1" style="color:#000000"><% out.println(rs1.getString(2));%></td>	
			</tr>
			<tr>
			<td height="31" class="paragraping"  style="color:red;">Description</td>
			<td width="425" height="61"  class="paragraping1" style="color:#000000"><% out.println(rs1.getString(4));%></td>	
			</tr>
			<tr>
			<td height="31" class="paragraping"  style="color:red;"><img src="images/File.jpg"></td>
			 <td width="425"  class="paragraping1"><a href="userfileview.jsp?name=<% out.println(rs1.getString(1));%>"><img src="images/down.jpg"></a></td>
			</tr>
						
	 <%
      
String name1=rs1.getString(1);

%>

	    	<%
			
	     }
		
	  
	}
	catch(SQLException e1)
	{
		out.println("OOP'S");
		System.out.println(e1);
	
	 }

	
            %> 
			
			
 </table>
 <br><br>
 </td>
<td width="360" valign="top">
<%
Thread.sleep(1000);
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("!");
       hitsCount = 0;
    }else{
       /* return visit */
       out.println("");
       hitsCount = hitsCount-1;
    }
    application.setAttribute("hitCounter", hitsCount);
%> 
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