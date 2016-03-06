<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
             <li><a href="adminpage.jsp" >Home</a></li>
            <li><a href="search.jsp">Search</a></li>
            <li><a href="fileupload.jsp">File Upload</a></li>
            <li><a href="imageupload.jsp">Image Upload</a></li>
            <li><a href="textdata.jsp">Text Upload</a></li>
            <li><a href="adminencryptionimage.jsp">Encrypt/Decrypt</a></li>
            <li><a href="signout.jsp">Logout</a></li>
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
    
    
<table align="center" width="1024" class="post" >
<tr>
<td width="601" height="520" valign="top" >
<table align="center" width="577" >
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
			<tr>
        <td width="569" height="47"  colspan="4" align="center" class="paragraping1" style="color:#000000"><img src="images/online.jpg">&nbsp;&nbsp;Welcome <font color="#FF0000">Admin</font></td>
		
		
       
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
</table>
<table align="center" width="578" style="border:1px solid #d2d2d2;" >
<tr>
<td background="images/pattern_bg.gif" class="paragraping" align="center">View your Information</td>
</tr>
</table>
<table align="center" width="578" style="border:1px solid #d2d2d2;" bgcolor="#A3BBD6" >
        <form name="idpasschbox" method="get" action="datadelete.jsp" onSubmit="return validation()">

          <% 
		Thread.sleep(100);
	String name = request.getParameter("name");
	Connection con1=null;
	Statement st1=null;
	ResultSet rs1=null;
	String sql1="select * from image where name='"+name+"'";
	try
	{
	   con1=databasecon.getconnection();
	    st1=con1.createStatement();
	    rs1=st1.executeQuery(sql1);
		while(rs1.next())
	     {
		 

			%>
          <tr> 
		   <td width="185" align="left" class="paragraping1" 
style="color:#000000">Image Name</td>
		   <td width="63">:</td>
            <td width="314" height="63" class="paragraping1"><font color="#FF0000" style="color:#000000"><% out.println(rs1.getString(1));%></font></td>
			</tr>
			<tr>


			 <td width="185"  align="left" class="paragraping1" 
style="color:#000000">Key</td>
			  <td>:</td>
			 <td height="68" class="paragraping1"><font color="#FF0000" style="color:#000000"><% out.println(rs1.getString(2));%></font></td>
			</tr>
			
			  <tr>
			  <td width="185" height="76" align="left" class="paragraping1" 
style="color:#000000">Description</td>
			   <td>:</td>
            <td class="paragraping1"><font color="#FF0000" style="color:#000000"><% out.println(rs1.getString(3));%></font></td>
			  </tr>
			  <tr>
			  <td width="185" height="66" align="left" class="paragraping1"><img src="images/File.jpg"></td>
			   <td>:</td>
            <td class="paragraping1"><a href="imageview.jsp?name=<%=name%>"><font color="#FF0000"><img src="images/img.jpg"></font></a></td>
			  </tr>
			 <tr>
			<td height="45" class="paragraping"  style="color:red;">File Name</td>
			<td width="286"  class="paragraping1" style="color:red"><a href="imageunlock.jsp?name=<% out.println(rs1.getString(1));%>" style="color:#FF0000">Image Unlock</a></td>
			<td width="286"  class="paragraping1"><a href="imagelock.jsp?name=<% out.println(rs1.getString(1));%>" 
style="color:#FF0000">Image lock</a></td>

			</tr>
           <%
      
String name1=rs1.getString(1);

%>
         
         
        </form>
      </table>

    </td>
<td width="411" height="520" valign="top">
			<%
Thread.sleep(1000);
    Integer hitsCount = 
      (Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 ){
       /* First visit */
       out.println("");
       hitsCount = 0;
    }else{
       /* return visit */
       out.println("");
       hitsCount = hitsCount-1;
    }
    application.setAttribute("hitCounter", hitsCount);
%> 
		  
</table>
</td></tr>
    
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