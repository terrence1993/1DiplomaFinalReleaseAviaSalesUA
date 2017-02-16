package com.gmail.zork93.Controllers;

import com.gmail.zork93.Entities.CustomUser;
import com.gmail.zork93.Services.*;
import com.gmail.zork93.Enum.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
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
public class AdminController {

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

    @RequestMapping(value = "/newuseradmin", method = RequestMethod.POST)
    public String updateUserViaAdmin(@RequestParam String login, @RequestParam String password, @RequestParam(required = false) String email, @RequestParam(required = false) String phone, Model model) {
        if (userService.existsByLogin(login)) {
            model.addAttribute("exists", true);
            return "tables";
        }


        String passHash = encoder.encodePassword(password, null);

        CustomUser dbUser = new CustomUser(login, passHash, UserRole.USER, email, phone);
        userService.addUser(dbUser);

        return "redirect:/tables";
    }

    @RequestMapping(value = "/tables/user_delete", method = RequestMethod.POST)
    public String deleteUser(@RequestParam(value = "toDeleteUser[]",required = false)long id, Model model){

        userService.delete(id);
        model.addAttribute("orders", orderService.getAll());
        model.addAttribute("customuser", userService.getAll());

        return "redirect:/tables";
    }

    @RequestMapping(value = "/tables/search_user", method = RequestMethod.POST)
    public String searchUser(@RequestParam String login){
        User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        CustomUser dbUser = userService.getUserByLogin(login);

        userService.getUserByLogin(login);

        dbUser.getLogin();
        dbUser.getEmail();
        dbUser.getId();
        dbUser.getPhone();
        dbUser.getPassword();

        userService.getAll();


        return "tables";
    }

    @RequestMapping(value = "/tables", method = RequestMethod.GET)
    public String tables(Model model){

        model.addAttribute("flights",flightService.getAll());
        model.addAttribute("hotels", hotelService.getAll());
        model.addAttribute("taxis", taxiService.getAll());
        model.addAttribute("orders", orderService.getAll());

        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();
        CustomUser dbUser = userService.getUserByLogin(login);
        model.addAttribute("login", login);
        model.addAttribute("password");
        model.addAttribute("email", dbUser.getEmail());
        model.addAttribute("phone", dbUser.getPhone());
        model.addAttribute("role", dbUser.getRole());
        model.addAttribute("customuser", userService.getAll());


        return "tables";
    }

    @RequestMapping("/blank")
    public String blank(){
        return "blank";
    }

    @RequestMapping("/buttons")
    public String buttons(){
        return "buttons";
    }

    @RequestMapping("/flot")
    public String flot(){
        return "flot";
    }

    @RequestMapping("/forms")
    public String forms(){
        return "forms";
    }

    @RequestMapping("/grid")
    public String grid(){
        return "grid";
    }

    @RequestMapping("/icons")
    public String icons(){
        return "icons";
    }

    @RequestMapping("/morris")
    public String morris(){
        return "morris";
    }

    @RequestMapping("/notifications")
    public String notifications(){
        return "notifications";
    }

    @RequestMapping("/panels-wells")
    public String panels_wells(){
        return "panels-wells";
    }

    @RequestMapping("/typography")
    public String typography(){
        return "typography";
    }

    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }
}
