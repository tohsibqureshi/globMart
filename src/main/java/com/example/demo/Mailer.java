package com.example.demo;

    import java.util.Properties;    
    import javax.mail.*;    
    import javax.mail.internet.*;    
    public class Mailer{  
        public static void send(String to,String mailBody,String sub){  
              //Get properties object    
              Properties props = new Properties();    
              props.put("mail.smtp.host", "smtp.gmail.com");    
              props.put("mail.smtp.socketFactory.port", "465");    
              props.put("mail.smtp.socketFactory.class",    
                        "javax.net.ssl.SSLSocketFactory");
              props.put("mail.smtp.starttls.enable", "true");
              props.put("mail.smtp.auth", "true");    
              props.put("mail.smtp.port", "465");  
              
             // props.put("mail.transport.protocol", "smtp");
             // props.put("mail.smtp.port", "25");

              //get Session   
              Session session = Session.getInstance(props,    
               new javax.mail.Authenticator() {    
               protected PasswordAuthentication getPasswordAuthentication() {    
               return new PasswordAuthentication("javainuniversal@gmail.com","Java@123");  
               }    
              });    
              //compose message    
              try {    
               MimeMessage message = new MimeMessage(session);    
               message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
               
               message.setSubject(sub);    
               message.setText(mailBody);    
               //send message 
             
               Transport.send(message);    
               System.out.println("message sent successfully");    
              } catch (MessagingException e) {throw new RuntimeException(e);}    
                 
        }    
    }