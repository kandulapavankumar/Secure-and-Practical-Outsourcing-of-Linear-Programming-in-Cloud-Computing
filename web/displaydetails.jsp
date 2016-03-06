<%@page import="databaseconnection.UserDetails,java.util.*"%>
<%@ page language="java"%>
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
            <li><a href="textdata.jsp">Text Upload</a></li>
            <li><a href="details.jsp" class="current">User Details</a></li>
            <li><a href="signout.jsp">Logout</a></li>
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
    
    
<table align="center" width="950" class="post" bgcolor="#DFF4FF" border="1">
<tr>
<tr>
<H1><i>USERDETAILS</i></H1>
</tr>
<%
HashSet<UserDetails> udset=(HashSet<UserDetails>)session.getAttribute("udset");
Iterator iterator1=udset.iterator();
UserDetails ud=null;
%>
<tr style="color:#000000">	
                        <th>User</th>
			<th>Firstname</th>
			<th>Lastname</th>
			<th>Date</th>
			<th>sport</th>
			<th>Age</th>
			<th>Telephone</th>
			<th>password2</th>
			<th>Email2</th>
			<th>comments</th>
			<th>Agree</th>		
</tr>

    <%
      while(iterator1.hasNext())
		  {
		   ud=(UserDetails)iterator1.next();
		   out.println("<tr WIDTH=554 ><td >"+ud.getUser()+"</td>");
		   out.println("<td WIDTH=254>"+ud.getFirstname()+"</td>");
		   out.println("<td WIDTH=254>"+ud.getLastname()+"</td>");
		   out.println("<td WIDTH=254>"+ud.getDate()+"</td>");
		   out.println("<td WIDTH=254>"+ud.getSport()+"</td>");
		   out.println("<td WIDTH=254>"+ud.getAge()+"</td>");
                   out.println("<td WIDTH=254>"+ud.getTelephone()+"</td>");
		   out.println("<td WIDTH=254>"+ud.getPassword2()+"</td>");
		   out.println("<td WIDTH=254>"+ud.getEmail2()+"</td>");
		   out.println("<td WIDTH=254>"+ud.getComments()+"</td>");
		   out.println("<td WIDTH=254>"+ud.getAgree()+"</td>");
		  }

%>
</table>
<br><br><br><br><br>
</td>
<br><br><br><br>
<td width="345" valign="top">

</td>
</tr>

</table>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/>
<br/>

       
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