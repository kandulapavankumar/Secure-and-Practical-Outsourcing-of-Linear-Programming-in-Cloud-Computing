<%@page import="encdec.FileEncrypt"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%@page import="java.io.*" %>
<%@page import="java.net.*" %>
<%@page import="org.apache.commons.net.ftp.FTP" %>
<%@page import="org.apache.commons.net.ftp.FTPClient" %>
<html>
    <head>
    </head>
    <body>
        <%
            Thread.sleep(100);
            ArrayList list = new ArrayList();
            ServletContext context = getServletContext();
            String fPath = "";
            String on = "";
            String rp = context.getRealPath("\\Documents\\");
            String dirName = rp.replace("\\build", "");
            System.out.println(dirName + "[[[[[[[[[[[[");
            String paramname = null;
            String name = null, key = null, limit = null, des = null, resumename = null;

            File file1 = null;

            try {

                MultipartRequest multi = new MultipartRequest(request, dirName, 10 * 1024 * 1024); // 10MB

                Enumeration params = multi.getParameterNames();
                while (params.hasMoreElements()) {
                    paramname = (String) params.nextElement();

                    if (paramname.equalsIgnoreCase("name")) {
                        name = multi.getParameter(paramname);
                    }
                    if (paramname.equalsIgnoreCase("key")) {
                        key = multi.getParameter(paramname);
                    }
                    if (paramname.equalsIgnoreCase("limit")) {
                        limit = multi.getParameter(paramname);
                    }

                    if (paramname.equalsIgnoreCase("des")) {
                        des = multi.getParameter(paramname);
                    }
                }

                int f = 0;
                Enumeration files = multi.getFileNames();
                while (files.hasMoreElements()) {
                    paramname = (String) files.nextElement();
                    if (paramname.equals("d1")) {
                        paramname = null;
                    }

                    if (paramname != null) {
                        f = 1;
                        resumename = multi.getFilesystemName(paramname);
                        String nm = context.getRealPath("\\Documents\\" + resumename);
                        fPath = nm.replace("\\build", "");
                        System.out.println(fPath + "nmnmnmnm");
                        file1 = new File(fPath);
                        on = file1.getName();
                        FileInputStream fs = new FileInputStream(file1);
                        list.add(fs);

                    }
                }
                FileInputStream fs1 = null;

                Connection con = databasecon.getconnection();

                PreparedStatement ps = con.prepareStatement("INSERT INTO filestore VALUES(?, AES_ENCRYPT(?, 'key'),?,?,?,?)");
                //INSERT INTO user_aes VALUES (AES_ENCRYPT('?','pass'),?,? );
                //INSERT INTO filestore(pass, email, resumename)VALUES(AES_ENCRYPT('"File123"','pass'),'mani@gmail.com','blob');

                ps.setString(1, name);
                ps.setString(2, key);
                ps.setString(3, limit);
                ps.setString(4, des);
                ps.setString(5, resumename);
                ps.setString(6, "offline");

                if (f == 0) {
                    ps.setObject(5, null);
                } else if (f == 1) {
                    fs1 = (FileInputStream) list.get(0);
                    ps.setBinaryStream(5, fs1, fs1.available());

                }
                int x = ps.executeUpdate();
				
				
				
				
                FileEncrypt.FileEncryptor(fPath, name, on);
                String mess = "File Is ";
                if (x != 0) {
                    session.setAttribute("mess", mess);

                    String server = "ftp://www.g5internship.com";
                    int port = 21;
                    String user = "hisus";
                    String pass = "One@1234";

                    FTPClient ftpClient = new FTPClient();
                    try {

                        ftpClient.connect(server, port);
                        ftpClient.login(user, pass);
                        ftpClient.enterLocalPassiveMode();
                        
                        System.out.println("connected hhhhhhhhhh");
                        System.out.println(on);
                        ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
                        System.out.println(name);
                        // APPROACH #1: uploads first file using an InputStream
                        String ff = fPath.replace("Documents", "doc1");
                        System.out.println(ff);
                        String f1 = ff.replace(on, name);
                        System.out.println(f1);
                        File firstLocalFile = new File(f1);

                        //String firstRemoteFile = resumename;
                        InputStream inputStream = new FileInputStream(firstLocalFile);

                        System.out.println("Start uploading first file");
                        boolean done = ftpClient.storeFile(name, inputStream);



                        if (done) {
                            System.out.println("The first file is uploaded successfully.");
                        }
                        inputStream.close();
                    } catch (Exception ex) {
                        System.out.println("Error: " + ex.getMessage());
                        ex.printStackTrace();
                    } finally {
                        try {
                            if (ftpClient.isConnected()) {
                                ftpClient.logout();
                                ftpClient.disconnect();
                            }
                        } catch (IOException ex) {
                            ex.printStackTrace();
                        }
                    }

                    response.sendRedirect("success.jsp");
                } else {
                    response.sendRedirect("failure.jsp");
                }

            } catch (Exception e) {
                out.println(e.getMessage());

            }

        %>
    </body>
</html>