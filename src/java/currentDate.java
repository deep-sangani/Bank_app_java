
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author deep
 */
public class currentDate {
    String date(){
         DateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
       Date date = new Date();
        String strDate= formatter.format(date);  
        return strDate;
    }
}
