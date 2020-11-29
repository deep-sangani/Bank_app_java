
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Base64;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author deep
 */
public class getImgString {
 public static String getimg(String realpath,String no) throws FileNotFoundException, IOException{
         String path =realpath + "image" + File.separator + no;
               File initialFile = new File(path);
             
    InputStream is= new FileInputStream(initialFile);
      byte[] img = new byte[is.available()];
        is.read(img);
       String base64Image = Base64.getEncoder().encodeToString(img);
       return base64Image;
    }
}
