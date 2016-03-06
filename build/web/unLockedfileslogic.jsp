
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type"
			content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title
	</head>
	<body>
		<%@ page import="java.util.*,java.sql.*"%>
		<%
		Connection connection=null;
		 FileStore fdul=null;
		 HashSet<FileStore>	fdulset=new HashSet<FileStore>(); 
		try { Class.forName("com.mysql.jdbc.Driver"); 
		connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root","root");
		PreparedStatement prepareStatement1=connection.prepareStatement("SELECT * FROM FileStore where status='online'"); 
		ResultSet resultSet1=prepareStatement1.executeQuery();
		while(resultSet1.next()) { 
		fdul=new FileStore();
	    fdul.setName(resultSet1.getString(1));
	    fdul.setKey(resultSet1.getString(2));
	    fdul.setLimit(resultSet1.getString(3));
	    fdul.setDes(resultSet1.getString(4));
	    System.out.print(resultSet1.getString(5));
	    fdul.setStatus(resultSet1.getString(6));  
	     fdulset.add(fdul);
	      }
		session.setAttribute("fdulset",fdulset);
		 
		 Image idul=null;
		 HashSet<Image>	idulset=new HashSet<Image>(); 
		PreparedStatement prepareStatement2=connection.prepareStatement("SELECT * FROM image where status='online'"); 
		ResultSet resultSet2=prepareStatement2.executeQuery();
		while(resultSet2.next()) { 
		idul=new Image();
	    idul.setName(resultSet2.getString(1));
	    idul.setKey(resultSet2.getString(2));
	    System.out.print(resultSet2.getString(4));
	    idul.setStatus(resultSet2.getString(5));  
	     idulset.add(idul);
	      }
		session.setAttribute("idulset",idulset);
		
		
		response.sendRedirect("fileloc.jsp"); } 
	
		catch(Exception e) {
		e.printStackTrace(); }
		 finally {
		connection.close();
		} %>

	</body>
</html>