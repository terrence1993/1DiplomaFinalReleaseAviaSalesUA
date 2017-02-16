package com.gmail.zork93.Controllers;

import com.gmail.zork93.Services.NotificationService;
import com.gmail.zork93.Entities.CustomUser;
import com.gmail.zork93.Services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Andrew on 1/25/2017.
 */
@Controller
public class EmailController {

    @Autowired
    private UserService userService;

    @Autowired
    private NotificationService notificationService;

    @Autowired
    private JavaMailSender javaMailSender;

    @RequestMapping("/signup-success")
    public String signupSuccess(CustomUser customUser, Model model){

        CustomUser dbUser = userService.getUserByLogin(customUser.getLogin());

        model.addAttribute("login", dbUser.getLogin());
        model.addAttribute("roles", dbUser.getPassword());
        model.addAttribute("email", dbUser.getEmail());
        model.addAttribute("phone", dbUser.getPhone());

        try {
            notificationService.sendNotification(dbUser);
        }
        catch (MailException e){
            //catch error
        }

        return "/signup-success";
    }

    @RequestMapping(value = "/feedback-success", method = RequestMethod.POST)
    public String feedbackSuccess(HttpServletRequest request){

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        SimpleMailMessage mailMessage = new SimpleMailMessage();

        mailMessage.setTo("herokuaviasalesua@gmail.com");
        mailMessage.setFrom("herokuaviasalesua@gmail.com");
        mailMessage.setSubject("From " + name + " ("+email+")");
        mailMessage.setText(message);

        javaMailSender.send(mailMessage);

        return "/feedback-success";
    }

}
