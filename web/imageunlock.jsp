<%@page import="java.sql.*,databaseconnection.*" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"

   "http://www.w3.org/TR/html4/loose.dtd">



<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>

    </head>

    <body>

        <%

        

         Connection con = databasecon.getconnection();



        String name=null;

        try

        {     

            name=request.getParameter("name");

                      

            PreparedStatement ps=con.prepareStatement("update image set status=\'offline\' where name=?");

            ps.setString(1, name);
            int x=ps.executeUpdate(); 

            if(x==0)

                {

                     out.println("Error while connecting database");

                }

            else

                {

                response.sendRedirect("adminpage.jsp");

               

                }

         }

         catch(Exception e)

        {

            out.println(e.getMessage());

        }         

        

        %>

    </body>

</html>

