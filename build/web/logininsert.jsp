<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title>JSP New admin page</title>
    </head>
    <body>
	<form>
	<% 
           session.setAttribute("email2",request.getParameter("email2"));
	session.setAttribute("password2",request.getParameter("password2"));
	
	String email2=(String)session.getAttribute("email2");	
String password2=(String)session.getAttribute("password2");		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from server where email2='"+email2+"' AND password2='"+password2+"'";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
	    if(rs.next())
	     {
		session.setAttribute("email2",email2);
		 %>	
		<jsp:forward page="userpage.jsp"/>
	    	<%
	             		    
	    }
	  out.println("Oop's! you are not Authenticated Person");
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
             </form>
       </body> 	
</html>