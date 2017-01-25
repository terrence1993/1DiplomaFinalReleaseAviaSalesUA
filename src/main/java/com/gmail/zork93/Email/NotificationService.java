package com.gmail.zork93.Email;

import com.gmail.zork93.Entities.CustomUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

/**
 * Created by Andrew on 1/25/2017.
 */

@Service
public class NotificationService {

    private JavaMailSender javaMailSender;

    @Autowired
    public NotificationService(JavaMailSender javaMailSender){
        this.javaMailSender = javaMailSender;
    }

    public void sendNotification(CustomUser customUser) throws MailException{
        //send mail

        SimpleMailMessage mailMessage = new SimpleMailMessage();

        mailMessage.setTo(customUser.getEmail());
        mailMessage.setFrom("zork93@gmail.com");
        mailMessage.setSubject("Registration on AviaSalesUA!");
        mailMessage.setText("Dear "+customUser.getLogin()+", "+"welcome in our site. Thanks for the registration."+". "
                +"Your phone is: "+customUser.getPhone()+". "
                +"Your email: "+customUser.getEmail()+". "
                +"Your SHA password: "+customUser.getPassword()+".                               "
                +"Good Luck and have a nice day!");

        javaMailSender.send(mailMessage);
    }

}
