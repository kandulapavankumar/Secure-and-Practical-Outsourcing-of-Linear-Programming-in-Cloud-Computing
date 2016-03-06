<%	
	String user=request.getParameter("un");
	String pass=request.getParameter("pw");
	int user_id=12;
	if(user.equalsIgnoreCase("admin") && pass.equals("admin") )
   	{
            session.setAttribute("unamead", user);
            %>
        <jsp:forward page="adminpage.jsp"></jsp:forward> 	
   	<%}
   	else
   	{%>
   	<jsp:forward page="adminlogin.jsp"></jsp:forward> 	
   		
   	<%}
%>