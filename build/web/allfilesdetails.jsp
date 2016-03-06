<%@ page import="java.util.*,databaseconnection.*,java.sql.*"%>
<%
UserDetails ud=null;    	
 HashSet<UserDetails> udset=new HashSet<UserDetails>();     		 
try
    	 {
             
               Class.forName("com.mysql.jdbc.Driver");	
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root","root");
    	        PreparedStatement prepareStatement=connection.prepareStatement("SELECT * FROM SERVER");
    	       ResultSet resultSet=prepareStatement.executeQuery();
	        while(resultSet.next())
	        {
	    	ud=new UserDetails();
	    	ud.setUser(resultSet.getString(1));
	    	ud.setFirstname(resultSet.getString(2));
	    	ud.setLastname(resultSet.getString(3));
	    	ud.setDate(resultSet.getString(4));
	    	ud.setSport(resultSet.getString(5));
	    	ud.setAge(resultSet.getString(6));
	    	ud.setTelephone(resultSet.getString(7));
	    	ud.setPassword2(resultSet.getString(8));
	    	ud.setEmail2(resultSet.getString(9));
	    	ud.setComments(resultSet.getString(10));
	    	ud.setAgree(resultSet.getString(11));	    	
                udset.add(ud);
	    }
	  session.setAttribute("udset",udset);
            response.sendRedirect("displaydetails.jsp");
	 }
	 catch(Exception e)
	 {
	   e.printStackTrace();
	 }
		finally
		{}


%>