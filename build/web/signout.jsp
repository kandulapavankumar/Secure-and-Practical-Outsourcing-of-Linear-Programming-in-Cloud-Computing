<%@ page import="java.sql.*"%>
<html>
    <head>
	<script language="JavaScript">
javascript:window.history.forward(1);
</script>
<head><title>User</title>
    </head>
    <body>
	<form>
	<% 
		
                session.invalidate();
                 out.println("<HTML>");
            out.println("<HEAD>");
            out.println("<SCRIPT>");
            out.println(" window.open('index.html','_top');");
            out.println("</SCRIPT>");
            out.println("</HEAD>");
            out.println("</HTML>");
    %>	
	
	</form>
       </body> 	
</html>