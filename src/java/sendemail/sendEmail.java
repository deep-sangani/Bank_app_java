/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sendemail;
import java.util.*;  
import javax.mail.*;  
import javax.mail.internet.*;  
import static org.apache.tomcat.jni.User.username;
 

/**
 *
 * @author deep
 */
public class sendEmail {
    public static void smtp(){
         String to = "drsangani1210@gmail.com";//change accordingly  
      String from = "drsangani1210@pepisandbox.com";
      String host = "smtp.pepipost.com";//or IP address   
       final String username = "drsangani1210";//change accordingly
     final String password = "drsangani1210_13b7b2d43a3a2aeaa470767fafef8e92";//change accordingly
      
          Properties props = System.getProperties();  
     props.put("mail.smtp.auth", "true");
   
    // props.put("mail.smtp.starttls.enable", "true");
     props.put("mail.smtp.host", host);
     props.put("mail.smtp.port", "25");//587 or 25
    
    props.put("mail.transport.protocol", "smtps"); 
      
       // Get the Session object.
    Session session = Session.getInstance(props,
     new javax.mail.Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
           return new PasswordAuthentication(username, password);
        }
     });
      
          try{  
         MimeMessage message = new MimeMessage(session);  
         message.setFrom(new InternetAddress(from));  
         message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
         message.setSubject("DSFS - Depisit Amount");  
         message.setContent("<h1>Hello, Rs 5500. is deposit to your account..  </h1>","text/html");  
       
         // Send message  
         Transport.send(message);  
         System.out.println("message sent successfully....");  
  
      }catch (MessagingException mex) {mex.printStackTrace();}  
      
    }
    
    
}
