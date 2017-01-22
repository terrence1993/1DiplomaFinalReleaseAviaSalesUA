package com.gmail.zork93.Entities;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by Andrew on 12/21/2016.
 */
@Entity
@Table(name = "Orders")
public class Order {
    @Id
    @GeneratedValue

    private long id;
    private String userName;
    private String userSurname;
    private String totalPrice;


    @OneToOne()
    @JoinColumn(name = "taxi_id")
    private Taxi taxi;

    @OneToOne()
    @JoinColumn(name = "flight_id")
    private Flight flight;

    @OneToOne()
    @JoinColumn(name = "hotel_id")
    private Hotel hotel;

    @OneToOne()
    @JoinColumn(name = "customuser_id")
    private CustomUser customUser;

    public Order() {
    }

    public Order(String userName, String userSurname, String totalPrice) {
        this.userName = userName;
        this.userSurname = userSurname;
        this.totalPrice = totalPrice;
    }

    public Order(String userName, String userSurname, Flight flight, Hotel hotel, Taxi taxi, CustomUser customUser) {
        this.userName = userName;
        this.userSurname = userSurname;
        this.flight = flight;
        this.hotel = hotel;
        this.taxi = taxi;
        this.customUser  = customUser;
    }

    public Order(String userName, String userSurname, CustomUser customUser) {
        this.userName = userName;
        this.userSurname = userSurname;
        this.customUser = customUser;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserSurname() {
        return userSurname;
    }

    public void setUserSurname(String userSurname) {
        this.userSurname = userSurname;
    }

    public Taxi getTaxi() {
        return taxi;
    }

    public void setTaxi(Taxi taxi) {
        this.taxi = taxi;
    }

    public Flight getFlight() {
        return flight;
    }

    public void setFlight(Flight flight) {
        this.flight = flight;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public CustomUser getCustomUser() {
        return customUser;
    }

    public void setCustomUser(CustomUser customUser)
    {
        this.customUser = customUser;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }
}
