package com.gmail.zork93.Taxi;

import com.gmail.zork93.Entities.Taxi;

import java.util.List;

/**
 * Created by Andrew on 12/22/2016.
 */
public interface TaxiService {
    Taxi addTaxi(Taxi taxi);
    void delete(long id);
    Taxi getByName(String taxiName);
    Taxi updateTaxi(Taxi taxi);
    List<Taxi> getAll();
}
