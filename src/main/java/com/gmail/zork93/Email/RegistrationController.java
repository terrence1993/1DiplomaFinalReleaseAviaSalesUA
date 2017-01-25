package com.gmail.zork93.Email;

import com.gmail.zork93.Entities.CustomUser;
import com.gmail.zork93.User.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Andrew on 1/25/2017.
 */
@Controller
public class RegistrationController {

    @Autowired
    private UserService userService;

    @Autowired
    private NotificationService notificationService;

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

}
