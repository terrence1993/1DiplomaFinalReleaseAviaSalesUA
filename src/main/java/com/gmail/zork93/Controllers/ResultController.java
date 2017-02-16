package com.gmail.zork93.Controllers;

import com.gmail.zork93.Entities.CustomUser;
import com.gmail.zork93.Services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Andrew on 2/15/2017.
 */
@Controller
@Transactional
public class ResultController {

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

    @RequestMapping(value = "/result", method = RequestMethod.GET)
    public String result(Model model){

        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();
        CustomUser dbUser = userService.getUserByLogin(login);
        model.addAttribute("login", login);
        model.addAttribute("roles", user.getAuthorities());
        model.addAttribute("email", dbUser.getEmail());
        model.addAttribute("phone", dbUser.getPhone());

        return "result";
    }
}
