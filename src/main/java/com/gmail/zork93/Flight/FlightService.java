package com.gmail.zork93.Flight;

import com.gmail.zork93.Entities.Flight;

import java.util.List;

/**
 * Created by Andrew on 12/22/2016.
 */
public interface FlightService {
    Flight addFlight(Flight flight);
    void delete(long id);
    Flight getByCode(String code);
    Flight updateFlight(Flight flight);
    List<Flight> getAll();
}
