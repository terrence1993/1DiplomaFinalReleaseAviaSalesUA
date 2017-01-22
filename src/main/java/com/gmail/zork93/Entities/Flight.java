package com.gmail.zork93.Entities;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by Andrew on 12/21/2016.
 */
@Entity
@Table(name = "Flights")
public class Flight {
    @Id
    @GeneratedValue
    private long id;

    private String way;
    private String city;
    private String code;
    private String company;
    private String flightClass;
    private String flightPrice;


    public Flight(String way, String city, String code, String company, String flightClass, String flightPrice, Order order) {
        this.way = way;
        this.city = city;
        this.code = code;
        this.company = company;
        this.flightClass = flightClass;
        this.flightPrice = flightPrice;

    }

    public Flight(String code, String city, String company, String way, String flightClass, String flightPrice) {
        this.code = code;
        this.city = city;
        this.company = company;
        this.way = way;
        this.flightClass = flightClass;
        this.flightPrice = flightPrice;
    }

    public Flight() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getWay() {
        return way;
    }

    public void setWay(String way) {
        this.way = way;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getFlightClass() {
        return flightClass;
    }

    public void setFlightClass(String flightClass) {
        this.flightClass = flightClass;
    }

    public String getFlightPrice() {
        return flightPrice;
    }

    public void setFlightPrice(String flightPrice) {
        this.flightPrice = flightPrice;
    }

}
