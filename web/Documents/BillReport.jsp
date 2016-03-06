<%@ page language="java" import ="java.sql.*"%>
<html>
<head>
<title>Untitled Document</title>
</head>
<body bgcolor="#CCCCCC" text="#000000">
<%!Connection con=null;%>
<%!ResultSet rs=null;%>
<%!Statement st=null;%>
<%!int billno;%>
<%     billno=Integer.parseInt(request.getParameter("billno"));
	   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 	   con=DriverManager.getConnection("jdbc:odbc:telecom","telecom","telecom");
 	   st=con.createStatement();
 	   rs=st.executeQuery("select * from BILLDETAILS where bill_no="+billno+" "); 	
 %>
<div align="center"> 
  <h2><font face="Arial, Helvetica, sans-serif" color="#993300">Customer Phone 
    Bill Details</font> </h2>
  
  <form name="form1" method="post" action="">
    <table width="101%" border="1" bordercolor="#9966FF">
      <tr> 
        <td width="9%" height="25"> <div align="center">ReqID</div></td>
        <td width="8%"><div align="center">Bill NO</div></td>
        <td width="11%"><div align="center">Phone No</div></td>
        <td width="10%"><div align="center">Amount</div></td>
        <td width="14%"><div align="center">Sent Date </div></td>
        <td width="16%"><div align="center">Last Date Without Fine </div></td>
        <td width="15%"><div align="center">Connection Close Date </div></td>
        <td width="17%"><div align="center">Connection Type</div></td>
      </tr>
      <% while(rs.next()){%>
      <tr> 
        <td height="24">&nbsp;<%=rs.getInt(1)%></td>
        <td>&nbsp;<%=rs.getInt(2)%></td>
        <td>&nbsp;<%=rs.getString(3)%></td>
        <td>&nbsp;<%=rs.getDouble(4)%></td>
        <td>&nbsp;<%=rs.getString(5)%></td>
        <td>&nbsp;<%=rs.getString(6)%></td>
        <td>&nbsp;<%=rs.getString(7)%></td>
        <td>&nbsp;<%=rs.getString(8)%></td>
      </tr>
      <%}%>
    </table>
    <p>&nbsp; </p>
  </form>
  <h2 align="left">&nbsp;</h2>
  <h2><a href="./EnterBillId.jsp"><font size="3">BACK</font></a></h2>
</div>
</body>
</html>

