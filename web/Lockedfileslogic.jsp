
<%@page import="databaseconnection.Image"%>
<%@page import="databaseconnection.FileStore"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type"
			content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<%@ page import="java.util.*,java.sql.*"%>
		<%
		Connection connection=null;
		 FileStore fdl=null;
		 HashSet<FileStore>	fdlset=new HashSet<FileStore>(); 
		try { Class.forName("com.mysql.jdbc.Driver"); 
		connection =DriverManager.getConnection("jdbc:mysql://localhost:3306/image","root","root");
		PreparedStatement prepareStatement1=connection.prepareStatement("SELECT * FROM FileStore where status='offline'"); 
		ResultSet resultSet1=prepareStatement1.executeQuery();
		while(resultSet1.next()) { 
		fdl=new FileStore();
	    fdl.setName(resultSet1.getString(1));
	    fdl.setKey(resultSet1.getString(2));
	    fdl.setLimit(resultSet1.getString(3));
	    fdl.setDes(resultSet1.getString(4));
	    System.out.print(resultSet1.getString(5));
	    fdl.setStatus(resultSet1.getString(6));  
	     fdlset.add(fdl);
	      }
		session.setAttribute("fdlset",fdlset);
		 
		 Image idl=null;
		 HashSet<Image>	idlset=new HashSet<Image>(); 
		PreparedStatement prepareStatement2=connection.prepareStatement("SELECT * FROM image where status='offline'"); 
		ResultSet resultSet2=prepareStatement2.executeQuery();
		while(resultSet2.next()) { 
		idl=new Image();
	    idl.setName(resultSet2.getString(1));
	    idl.setKey(resultSet2.getString(2));
	    System.out.print(resultSet2.getString(4));
	    idl.setStatus(resultSet2.getString(5));  
	     idlset.add(idl);
	      }
		session.setAttribute("idlset",idlset);
		
		
		response.sendRedirect("fileloc.jsp"); } 
	
		catch(Exception e) {
		e.printStackTrace(); }
		 finally {
		connection.close();
		} %>

	</body>
</html>