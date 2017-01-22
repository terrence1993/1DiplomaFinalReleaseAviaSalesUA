package com.gmail.zork93.Entities;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by Andrew on 12/21/2016.
 */
@Entity
@Table(name = "Taxis")
public class Taxi {
    @Id
    @GeneratedValue
    private long id;

    private String taxiName;
    private String taxiType;
    private String taxiCompany;
    private String taxiPrice;


    public Taxi(String taxiName, String taxiType, String taxiCompany, String taxiPrice, Order order) {
        this.taxiName = taxiName;
        this.taxiType = taxiType;
        this.taxiCompany = taxiCompany;
        this.taxiPrice = taxiPrice;
    }

    public Taxi(String taxiName, String taxiCompany, String taxiType, String taxiPrice) {
        this.taxiName = taxiName;
        this.taxiCompany = taxiCompany;
        this.taxiType = taxiType;
        this.taxiPrice = taxiPrice;
    }

    public Taxi() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTaxiName() {
        return taxiName;
    }

    public void setTaxiName(String taxiName) {
        this.taxiName = taxiName;
    }

    public String getTaxiType() {
        return taxiType;
    }

    public void setTaxiType(String taxiType) {
        this.taxiType = taxiType;
    }

    public String getTaxiCompany() {
        return taxiCompany;
    }

    public void setTaxiCompany(String taxiCompany) {
        this.taxiCompany = taxiCompany;
    }

    public String getTaxiPrice() {
        return taxiPrice;
    }

    public void setTaxiPrice(String taxiPrice) {
        this.taxiPrice = taxiPrice;
    }

}

