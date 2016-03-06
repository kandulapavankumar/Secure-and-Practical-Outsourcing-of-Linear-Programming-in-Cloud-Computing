<%@page import="encdec.FileDecryptor"%>
<%@page import="org.apache.commons.net.ftp.FTP"%>
<%@page import="org.apache.commons.net.ftp.FTPClient"%>
<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Chennai Sunday</title>
<script language="JavaScript">

</script>
</head>

<body>		
<%
                
                
                
                String server = "ftp://www.g5internship.com";
            int port = 21;
            String user = "hisus";
            String pass = "One@1234";
            String sss = (String) session.getAttribute("imagename");

            FTPClient ftpClient = new FTPClient();
            try {

                ftpClient.connect(server, port);
                ftpClient.login(user, pass);
                ftpClient.enterLocalPassiveMode();
                ftpClient.setFileType(FTP.BINARY_FILE_TYPE);

                // APPROACH #1: using retrieveFile(String, OutputStream)
                String remoteFile1 = sss;
                File downloadFile1 = new File("C:/" + sss);
                String fn=downloadFile1.getAbsolutePath();
				OutputStream outputStream1 = new BufferedOutputStream(new FileOutputStream(downloadFile1));
                boolean success = ftpClient.retrieveFile(remoteFile1, outputStream1);
                outputStream1.close();

                if (success) {
				 FileDecryptor fd=new FileDecryptor();
                    fd.FileDecryptor(fn);
                    downloadFile1.delete();
                    out.println("File #1 has been downloaded successfully in c:\\new\\ .");
										
                                   } else {

                    out.println("File #1 has not been downloaded successfully.");
                }
            } catch (IOException ex) {
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


%>

</body>
</html>