<%@ page import="java.sql.*,java.util.*,databaseconnection.*"%>
<html>
    <head>
  


    <%
         Connection con = databasecon.getconnection();
		
	String query=null,id=null,publish=null,author=null,cost=null,mess=null;        	
        
        java.util.Calendar datetime=java.util.Calendar.getInstance(); 
	String currenttime=Integer.toString(datetime.get(java.util.Calendar.HOUR_OF_DAY))+":"+Integer.toString(datetime.get(java.util.Calendar.MINUTE))+":"+Integer.toString(datetime.get(java.util.Calendar.SECOND));
        String currentdate=Integer.toString(datetime.get(java.util.Calendar.YEAR))+":"+Integer.toString(((datetime.get(java.util.Calendar.MONTH))+1))+":"+Integer.toString(datetime.get(java.util.Calendar.DATE));
        
        try
        {
             
            
              PreparedStatement ps=con.prepareStatement("insert into text(query,id,publish,author,cost,mess,cdate,ctime) values(?, AES_ENCRYPT(?, 'key'),?,?,?,?,?,?)");
            
            query=request.getParameter("query");
            id=request.getParameter("id");
			 publish=request.getParameter("publish");
			  author=request.getParameter("author");
			   cost=request.getParameter("cost");
			   mess=request.getParameter("mess");
			
            ps.setString(1,query);
            ps.setString(2,id);
			ps.setString(3,publish);
			ps.setString(4,author);
			ps.setString(5,cost);
			ps.setString(6,mess);
            ps.setString(7,currentdate);
            ps.setString(8,currenttime);
			
            int x=ps.executeUpdate();
             if(x==0)
                {
                                }
            else
                {
                  response.sendRedirect("success.jsp");
                }
        }
        catch(Exception e)
        {
           
              out.println(e.getMessage());
              response.sendRedirect("failure.jsp");
        }
        finally
        {
            con.close();
        }
		
%>       
  


