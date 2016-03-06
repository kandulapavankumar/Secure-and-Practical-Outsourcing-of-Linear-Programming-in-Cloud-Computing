package encdec;

 /**
02:  * Simple modification of "FileEncrypor.java".  The
03:  * previously encrypted "clear.txt.des" is read, decrypted
04:  * and written back as "clear.txt.dcr"
05:  */
 
 import java.io.*;
 import java.security.*;
import java.security.spec.InvalidKeySpecException;
 import javax.crypto.*;
 import javax.crypto.spec.*;
 import java.util.*;

public class FileDecryptor
 {
   private static String filename;
    private static String password;
   private static FileInputStream inFile;
    private static FileOutputStream outFile;

    /**
21:     * Note: All kinds of exceptions can be thrown in main.
22:     * See the API documentation for each method used.
23:     */

    public void FileDecryptor(String filename) throws FileNotFoundException, NoSuchAlgorithmException, InvalidKeySpecException, IOException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException{
          // File to decrypt.

    // filename = "C:\\Documents and Settings\\g5\\Desktop\\download\\hello.txt.des";
 
//     password = "super_secret";
     String password = "practical";
String fn=filename.replace("C:\\","");
       inFile = new FileInputStream(filename);
      outFile = new FileOutputStream("C:\\new\\"+fn);
      

       PBEKeySpec keySpec = new PBEKeySpec(password.toCharArray());
   SecretKeyFactory keyFactory =
         SecretKeyFactory.getInstance("PBEWithMD5AndDES");
     SecretKey passwordKey = keyFactory.generateSecret(keySpec);
//41: 
//42:       // Read in the previouly stored salt and set the iteration count.
//43: 
     byte[] salt = new byte[8];
      inFile.read(salt);
      int iterations = 100;

       PBEParameterSpec parameterSpec = new PBEParameterSpec(salt, iterations);
 
       // Create the cipher and initialize it for decryption.
 
     Cipher cipher = Cipher.getInstance("PBEWithMD5AndDES");
      cipher.init(Cipher.DECRYPT_MODE, passwordKey, parameterSpec);


       byte[] input = new byte[64];
       int bytesRead;
      while ((bytesRead = inFile.read(input)) != -1)
      {
        byte[] output = cipher.update(input, 0, bytesRead);
     if (output != null)
            outFile.write(output);
   }

      byte[] output = cipher.doFinal();
      if (output != null)
        outFile.write(output);

      inFile.close();
     outFile.flush();
    outFile.close();
        
    }
    
    
  public static void main(String[] args) throws Exception
    {
   FileDecryptor fd=new FileDecryptor() ;
       fd.FileDecryptor(filename);

  }
 }
