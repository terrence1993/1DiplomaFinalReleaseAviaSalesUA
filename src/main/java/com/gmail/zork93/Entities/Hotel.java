package com.gmail.zork93.Entities;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by Andrew on 12/21/2016.
 */
@Entity
@Table(name = "Hotels")
public class Hotel {
    @Id
    @GeneratedValue
    private long id;

    private String hotelName;
    private String hotelType;
    private String amountOfRooms;
    private String hotelPrice;

     public Hotel(String hotelName, String hotelType, String amountOfRooms, String hotelPrice, Order order) {
        this.hotelName = hotelName;
        this.hotelType = hotelType;
        this.amountOfRooms = amountOfRooms;
        this.hotelPrice = hotelPrice;
    }

    public Hotel(String hotelName, String hotelType, String amountOfRooms, String hotelPrice) {
         this.hotelName = hotelName;
         this.hotelType = hotelType;
         this.amountOfRooms = amountOfRooms;
         this.hotelPrice = hotelPrice;
    }

    public Hotel() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getHotelName() {
        return hotelName;
    }

    public void setHotelName(String hotelName) {
        this.hotelName = hotelName;
    }

    public String getHotelType() {
        return hotelType;
    }

    public void setHotelType(String hotelType) {
        this.hotelType = hotelType;
    }

    public String getAmountOfRooms() {
        return amountOfRooms;
    }

    public void setAmountOfRooms(String amountOfRooms) {
        this.amountOfRooms = amountOfRooms;
    }

    public String getHotelPrice() {
        return hotelPrice;
    }

    public void setHotelPrice(String hotelPrice) {
        this.hotelPrice = hotelPrice;
    }

}
