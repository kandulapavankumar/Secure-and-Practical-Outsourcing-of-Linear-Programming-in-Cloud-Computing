package Documents;

import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*;
import java.util.*;
import java.text.*;
import java.sql.*;
public class ret2 extends HttpServlet
{
    Connection con=null;
	Statement ps=null;	
	ResultSet rs=null;
	HttpSession ses=null;
	int t2=0;
	int imgid;
	int p=0;
	int[] acc=new int[10];
	float[] bal=new float[10];
	int i=0,j=0,k=0;
	int count=0;
	boolean fLag = false;
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException ,ServletException
	{
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
				
 		try
		{
		
     		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();    	 

			con=DriverManager.getConnection("jdbc:odbc:mydsn","scott","tiger");

			ps=con.createStatement();


			ses=req.getSession(true);

			t2=Integer.parseInt(req.getParameter("id"));
			String but=req.getParameter("but");
			System.out.println("welcome..1");
			if(but.equals("test"))
			{
	           	rs=ps.executeQuery("select imgid from customer where userid="+t2);
				while(rs.next())
				{
					imgid=rs.getInt(1);
					p=1;
				}
				
				req.setAttribute("imgid",imgid);

				//RequestDispatcher rd= req.getRequestDispatcher("imalog.jsp");
				//rd.forward(req,res); 
				System.out.println("welcome..2");
				rs=ps.executeQuery("select id,image from images where id="+imgid);
				while(rs.next())
				{
					File imageFile = new File("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/sujana/temp1.jpg");
					FileOutputStream fos=new FileOutputStream(imageFile);
					byte[] imageBytes;
					imageBytes = rs.getBytes(2);
					p=1;
					fos.write(imageBytes);
					fos.close();
					RequestDispatcher rd= req.getRequestDispatcher("imalog.jsp");
					rd.forward(req,res); 
				}
				rs.close();
				ps.close();
			}
			else
			{
					
				String s3=req.getParameter("pwd");
			
				String key="deceptive";
					int k3=key.length();
					int pt=s3.length();

					char[] ci=new char[50];
					char[] str=new char[100];
					
					char ceas='a';		
					int diff,t=0;
					for(i=0;i<key.length();i++)
						str[i]=key.charAt(i);
					
					if(k3<pt)
					{
						while(k3<pt)
						{
							str[i++]=s3.charAt(j);
							j++;
							if(j==s3.length())
								j=0;
											
							k3=k3+1;

						}
					}
					str[i++]='\0';
				
					for(i=0;i<pt;i++)
					{
						diff=Math.abs(str[i]-ceas);
						
						//System.out.print(d1+"  ");
						t=s3.charAt(i)+diff;
						if(t>122)
							t=t-26;
						ci[i]=(char)(t);
					}
		
				ci[i++]='\0';
				String str1=req.getParameter("pwd");
			System.out.println(str1);
				int p=0;
				System.out.println("welcome..3");
				rs=ps.executeQuery("select userid,lpwd,flag,plog from customer where userid="+t2);
				while(rs.next())
				{
					int userid=rs.getInt(1);
					String pwd=rs.getString(2);
					String f=rs.getString(3);
					String pL = rs.getString(4);
			System.out.println(f);
					String pL1 = pL.substring(0,11);
				System.out.println(pL1);
					java.sql.Timestamp currentTime = new java.sql.Timestamp(new java.util.Date().getTime());
					String cL = String.valueOf(currentTime);				
					String cL1 = cL.substring(0, 10);				
					System.out.println(cL1);
					DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					java.util.Date d = (java.util.Date)formatter.parse(cL);
					System.out.println(d);
					Format form = new SimpleDateFormat("dd-MMM-yyyy");
					String cL2 = form.format(d);
					
					int pt1 = Integer.parseInt(pL1.substring(0,4));
					int pt2 = Integer.parseInt(pL1.substring(5,7));
					int pt3 = Integer.parseInt(pL1.substring(8,11));
					System.out.println(pt3);		
					int ct1 = Integer.parseInt(cL1.substring(0,4));
					int ct2 = Integer.parseInt(cL1.substring(5,7));
					int ct3 = Integer.parseInt(cL1.substring(8,10));
				
					String strr=str1;

				System.out.println("welcome..4");
					if((t2==userid)&&(strr.equals(pwd))&&count<2&&(f.equals("a")))
					{
						p=1;							
						ses.setAttribute("userid",t2); 
						PreparedStatement p1=con.prepareStatement("update customer set plog=? where userid=?");
						p1.setString(1,cL2);
						p1.setInt(2,t2);
						int re=p1.executeUpdate();
						fLag = true;
					}
					else
					{
						if( f.equals("a") && (!(strr.equals(pwd))) && count < 2)
						{
							count = count + 1;
							RequestDispatcher rd= req.getRequestDispatcher("wrongp.html");
							rd.include(req,res); 
						}
						else if(f.equals("a") && count == 2)
						{
							PreparedStatement p1=con.prepareStatement("update customer set plog=?,flag=? where userid=?");
							p1.setString(1,cL2);
							p1.setString(2,"b");
							p1.setInt(3,t2);
							int re=p1.executeUpdate();
						
							
							pw.println("<html><body>");
							pw.println("<center><br><br><br><br><br><br><h1><b>UR ACCOUNTS ARE BLOCKED FOR 24 HOURS</b></h1>");
							pw.println("</center></body></html>");
							pw.close();
						}
						else if(f.equals("b"))
						{
							if (ct1 > pt1)
							{
								PreparedStatement p2=con.prepareStatement("update customer set flag=?,plog=? where userid=?");
								p2.setString(1,"a");
								p2.setString(2,cL2);
								p2.setInt(3,t2);
								int re=p2.executeUpdate(); 
								
								fLag = true;
							}
							else if (ct1 == pt1 && ct2 > pt2 )
							{
								PreparedStatement p3=con.prepareStatement("update customer set flag=?,plog=? where userid=?");
								p3.setString(1,"a");
								p3.setString(2,cL2);
								p3.setInt(3,t2);
								int re=p3.executeUpdate(); 
								
								fLag = true;

							}
							else if ( ct2 == pt2 && ct3 > pt3)
							{
								PreparedStatement p4=con.prepareStatement("update customer set flag=?,plog=? where userid=?");
								p4.setString(1,"a");
								p4.setString(2,cL2);
								p4.setInt(3,t2);
								int re=p4.executeUpdate();
								
								fLag = true;
							}
						}
					}
				}
			System.out.println("welcome..5");
				if (fLag)
				{
					ResultSet rs=ps.executeQuery("select accno,bal from account where userid="+t2);
					i=0;
					while(rs.next())
					{
						acc[i]=rs.getInt(1);
						bal[i]=rs.getFloat(2);
						i=i+1;
					}
					pw.println("<html><body bgcolor='#F0F8FF'>");
					pw.println("<br><br><br>");
					pw.println("<center><h2>List of Accounts</h2></center>");
					pw.println("<br>");
					pw.println("<center><table border='2' bordercolor='black'>");
					pw.println("<tr><th>Account Number<th>Balance</tr>");
					while(j<i)
					{
						pw.println("<tr><td align='center'>"+acc[j]+"<td>"+bal[j]+"</tr>");
						j=j+1;
					}
					pw.println("</table><br>");
					pw.println("<form method='post' action='./showdet'>");
					pw.println("<br><br>");
					pw.println("SELECT THE ACCOUNT U WANT TO LOGIN<BR>");
					pw.println("<br>");
					pw.println("<select name='sacc'>");
					while(k<i)
					{
						pw.println("<option value="+acc[k]+">"+acc[k]+"</option>");
						k=k+1;
					}
					pw.println("</select><input name='sub1' type='submit' value='submit'>");
					pw.println("<br><br><input name='sub1' type='submit' value='logout'>");

					pw.println("</center></body></html>");
					pw.close();
				}
				else {
					pw.println("<html><body>");
					pw.println("<center><br><br><br><br><br><br><h1><b>Login Failed</b></h1>");
					pw.println("</center></body></html>");
					pw.close();
			
				}		            
		}
		}
		catch(ClassNotFoundException e)
		{
			pw.println("exception"+e);
		}
		catch(SQLException e)
		{
			pw.println("exception"+e);	
		}	

        	catch(Exception e)
		{
			pw.println("can't load driver"+e.getMessage());
		}

	}
}