package com.gmail.zork93.Controllers;

import com.gmail.zork93.Entities.CustomUser;
import com.gmail.zork93.Services.*;
import com.gmail.zork93.Enum.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Andrew on 2/15/2017.
 */
@Controller
@Transactional
public class RegisterController {

    @Autowired
    private UserService userService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private TaxiService taxiService;

    @Autowired
    private HotelService hotelService;

    @Autowired
    private FlightService flightService;

    @Autowired
    private ShaPasswordEncoder encoder;

    @RequestMapping(value = "/newuser", method = RequestMethod.POST)
    public String update(@RequestParam String login, @RequestParam String password, @RequestParam(required = false) String email, @RequestParam(required = false) String phone, Model model) {
        if (userService.existsByLogin(login)) {
            model.addAttribute("exists", true);
            return "register";
        }

        String passHash = encoder.encodePassword(password, null);

        CustomUser dbUser = new CustomUser(login, passHash, UserRole.USER, email, phone);
        userService.addUser(dbUser);

        model.addAttribute("login",login);
        model.addAttribute("password", password);
        model.addAttribute("email",email);
        model.addAttribute("phone", phone);

        return "redirect:/signup-success";
    }

    @RequestMapping("/register")
    public String register() {
        return "register";
    }
}
