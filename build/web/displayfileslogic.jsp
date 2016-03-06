<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type"
			content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			FileStore fd = null;
			HashSet<FileStore> fdset = new HashSet<FileStore>();
			Connection connection = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/image", "root", "root");
				PreparedStatement prepareStatement1 = connection
						.prepareStatement("SELECT * FROM FILESTORE");
				ResultSet resultSet1 = prepareStatement1.executeQuery();
				while (resultSet1.next()) {
					fd = new FileStore();
					fd.setName(resultSet1.getString(1));
					fd.setKey(resultSet1.getString(2));
					fd.setLimit(resultSet1.getString(3));
					fd.setDes(resultSet1.getString(4));
					System.out.print(resultSet1.getString(5));
					fd.setStatus(resultSet1.getString(6));
					fdset.add(fd);
				}
				session.setAttribute("fdset", fdset);

				Image id = null;
				HashSet<Image> idset = new HashSet<Image>();
				PreparedStatement prepareStatement2 = connection
						.prepareStatement("SELECT * FROM IMAGE");
				ResultSet resultSet2 = prepareStatement2.executeQuery();
				while (resultSet2.next()) {
					id = new Image();
					id.setName(resultSet2.getString(1));
					id.setKey(resultSet2.getString(2));
					System.out.print(resultSet2.getString(4));
					id.setStatus(resultSet2.getString(5));
					idset.add(id);
				}
				session.setAttribute("idset", idset);

				Text td = null;
				HashSet<Text> tdset = new HashSet<Text>();
				PreparedStatement prepareStatement3 = connection
						.prepareStatement("SELECT * FROM TEXT");
				ResultSet resultSet3 = prepareStatement3.executeQuery();
				while (resultSet3.next()) {
					td = new Text();
					td.setQuery(resultSet3.getString(1));
					td.setId(resultSet3.getString(2));
					td.setPublish(resultSet3.getString(3));
					td.setAuthor(resultSet3.getString(4));
					td.setCost(resultSet3.getString(5));
					td.setMess(resultSet3.getString(6));
					td.setCtime(resultSet3.getString(7));
					tdset.add(td);
				}
				session.setAttribute("tdset", tdset);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
			connection.close();
			}
		%>
	</body>
</html>