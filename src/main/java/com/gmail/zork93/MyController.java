package com.gmail.zork93;

import com.gmail.zork93.Entities.*;
import com.gmail.zork93.Flight.FlightService;
import com.gmail.zork93.Hotel.HotelService;
import com.gmail.zork93.Order.OrderService;
import com.gmail.zork93.Taxi.TaxiService;
import com.gmail.zork93.User.UserRole;
import com.gmail.zork93.User.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Transactional
public class MyController {
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

    @RequestMapping("/")
    public String index(Model model){
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();

        CustomUser dbUser = userService.getUserByLogin(login);

        model.addAttribute("login", login);
        model.addAttribute("roles", user.getAuthorities());
        model.addAttribute("email", dbUser.getEmail());
        model.addAttribute("phone", dbUser.getPhone());

        return "index";
    }


    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestParam(required = false) String email, @RequestParam(required = false) String phone) {
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();

        CustomUser dbUser = userService.getUserByLogin(login);
        dbUser.setEmail(email);
        dbUser.setPhone(phone);

        userService.updateUser(dbUser);

        return "redirect:/";
    }

    @RequestMapping(value = "/newuser", method = RequestMethod.POST)
    public String update(@RequestParam String login, @RequestParam String password, @RequestParam(required = false) String email, @RequestParam(required = false) String phone, Model model) {
        if (userService.existsByLogin(login)) {
            model.addAttribute("exists", true);
            return "register";
        }

        ShaPasswordEncoder encoder = new ShaPasswordEncoder();
        String passHash = encoder.encodePassword(password, null);

        CustomUser dbUser = new CustomUser(login, passHash, UserRole.USER, email, phone);
        userService.addUser(dbUser);

        return "redirect:/";
    }

    @RequestMapping(value = "/newuseradmin", method = RequestMethod.POST)
    public String updateUserViaAdmin(@RequestParam String login, @RequestParam String password, @RequestParam(required = false) String email, @RequestParam(required = false) String phone, Model model) {
        if (userService.existsByLogin(login)) {
            model.addAttribute("exists", true);
            return "tables";
        }

        ShaPasswordEncoder encoder = new ShaPasswordEncoder();
        String passHash = encoder.encodePassword(password, null);

        CustomUser dbUser = new CustomUser(login, passHash, UserRole.USER, email, phone);
        userService.addUser(dbUser);

        return "redirect:/tables";
    }

    @RequestMapping(value = "/neworder", method = RequestMethod.POST)
    public String updateOrder(@RequestParam String userName,
                              @RequestParam String userSurname,
                              @RequestParam (required = false)String totalPrice,
                              @RequestParam (required = false)String amountOfRooms,
                              @RequestParam (required = false)String hotelName,
                              @RequestParam (required = false)String hotelType,
                              @RequestParam (required = false)String hotelPrice,
                              @RequestParam (required = false)String code,
                              @RequestParam String way,
                              @RequestParam (required = false)String city,
                              @RequestParam (required = false)String company,
                              @RequestParam (required = false)String flightClass,
                              @RequestParam (required = false)String flightPrice,
                              @RequestParam (required = false)String taxiName,
                              @RequestParam (required = false)String taxiCompany,
                              @RequestParam (required = false)String taxiType,
                              @RequestParam (required = false)String taxiPrice,
                              Model model) {

        Order dbOrder = new Order(userName,userSurname,totalPrice);
        orderService.addOrder(dbOrder);

        Flight dbFlight = new Flight(code, city, company, way, flightClass, flightPrice);
        flightService.addFlight(dbFlight);

        Hotel dbHotel = new Hotel(hotelName, hotelType, amountOfRooms, hotelPrice);
        hotelService.addHotel(dbHotel);

        Taxi dbTaxi = new Taxi(taxiName, taxiCompany, taxiType, taxiPrice);
        taxiService.addTaxi(dbTaxi);

        model.addAttribute("1code", code);
        model.addAttribute("1way", way);
        model.addAttribute("1city", city);
        model.addAttribute("1company", company);
        model.addAttribute("1flightClass", flightClass);
        model.addAttribute("1flightPrice", flightPrice);
        model.addAttribute("1hotelName", hotelName);
        model.addAttribute("1hotelType", hotelType);
        model.addAttribute("1amountOfRooms", amountOfRooms);
        model.addAttribute("1taxiName", taxiName);
        model.addAttribute("1taxiCompany", taxiCompany);
        model.addAttribute("1taxiPrice", taxiPrice);
        model.addAttribute("1taxiType",taxiType);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("userName", userName);
        model.addAttribute("userSurname", userSurname);

        return "redirect:/result";
    }

    @RequestMapping(value = "/result", method = RequestMethod.GET)
    public String result(Model model){

        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String login = user.getUsername();
        CustomUser dbUser = userService.getUserByLogin(login);
        model.addAttribute("login", login);
        model.addAttribute("roles", user.getAuthorities());
        model.addAttribute("email", dbUser.getEmail());
        model.addAttribute("phone", dbUser.getPhone());

        return "result";
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
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
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

    @RequestMapping("/register")
    public String register() {
        return "register";
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

    @RequestMapping("/makeorder")
    public String makeorder(){
        return "makeorder";
    }

    @RequestMapping("/admin")
    public String admin(){
        return "admin";
    }

    @RequestMapping("/unauthorized")
    public String unauthorized(Model model){
        User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        model.addAttribute("login", user.getUsername());
        return "unauthorized";
    }
}
