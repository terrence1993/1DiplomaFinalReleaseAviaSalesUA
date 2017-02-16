package com.gmail.zork93.Controllers;

import com.gmail.zork93.Entities.*;
import com.gmail.zork93.Services.*;
import org.springframework.beans.factory.annotation.Autowired;
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
public class MakeorderController {

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

    @RequestMapping("/makeorder")
    public String makeorder(){
        return "makeorder";
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

        model.addAttribute("code", code);
        model.addAttribute("way", way);
        model.addAttribute("city", city);
        model.addAttribute("company", company);
        model.addAttribute("flightClass", flightClass);
        model.addAttribute("flightPrice", flightPrice);
        model.addAttribute("hotelName", hotelName);
        model.addAttribute("hotelType", hotelType);
        model.addAttribute("amountOfRooms", amountOfRooms);
        model.addAttribute("taxiName", taxiName);
        model.addAttribute("taxiCompany", taxiCompany);
        model.addAttribute("taxiPrice", taxiPrice);
        model.addAttribute("taxiType",taxiType);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("userName", userName);
        model.addAttribute("userSurname", userSurname);


        return "/result";
    }
}
