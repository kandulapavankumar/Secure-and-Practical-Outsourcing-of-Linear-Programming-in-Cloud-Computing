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
                    alert("Please search your Image");
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
                <td width="1016" height="477" valign="top" >
                    <table align="center" width="996" >
                        <%
                            String email2 = (String) session.getAttribute("email2");
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            String sql = "select * from server where email2='" + email2 + "'";
                            try {
                                con = databasecon.getconnection();
                                st = con.createStatement();
                                rs = st.executeQuery(sql);
                                while (rs.next()) {




                                    String s1 = rs.getString(9);
                        %>	

                        <td width="988" height="47"  colspan="4" align="right" class="paragraping1" style="color:#000000"><img src="images/online.jpg">&nbsp;&nbsp;Welcome <font color="#FF0000">Admin</font></td>



            </tr>

            <%

                    }


                } catch (SQLException e1) {
                    out.println("Your given didn't match to our database");
                    System.out.println(e1);

                } finally {
                    st.close();
                    con.close();
                }
            %>
        </table><br>
        <table align="center" width="768" style="border:1px solid #d2d2d2;">
            <form action="adminimage1.jsp" name="f" method="get" onSubmit="return valid();">
                <tr>
                    <td colspan="3" class="paragraping1" align="center"><font color="#FF0000" size="+1">Search Image Here</font></td>
                </tr>
                <tr>
                    <td width="148" height="74" class="paragraping1" style="color:#000000">Search Your Files:</td>
                    <td width="608"><input type="text" name="name" style="border:1px solid skyblue;font-family:verdana;color:red;padding:5px 5px 5px 5px;width:500px;height:25px;">&nbsp;&nbsp;
                        <input type="submit" name="sub" value="" class="search">
                    </td>
                </tr>
                <tr>
                    <td class="paragraping1" colspan="3" align="center">
                <a href="adminimage.jsp">Image</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="adminfile.jsp">File</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="admindata.jsp">Text</a>
    </td>
                </tr>    
            </form>    
        </table><br>

        <table align="center" width="650">
            <tr>
                <td height="74" class="paragraping1"><img src="images/architect.JPG" width="767" height="380"></td>
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