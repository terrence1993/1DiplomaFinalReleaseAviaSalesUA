package com.gmail.zork93.Implementation;

import com.gmail.zork93.Entities.Flight;
import com.gmail.zork93.Repositories.FlightRepository;
import com.gmail.zork93.Services.FlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Andrew on 12/22/2016.
 */
@Service
public class FlightServiceImpl implements FlightService {

    @Autowired(required = false)
    private FlightRepository flightRepository;

    @Override
    @Transactional
    public Flight addFlight(Flight flight){
        return flightRepository.save(flight);
    }

    @Override
    @Transactional
    public void delete(long id) {
        flightRepository.delete(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Flight getByCode(String code) {
        return flightRepository.findByCode(code);
    }

    @Override
    @Transactional
    public Flight updateFlight(Flight flight) {
        return flightRepository.saveAndFlush(flight);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Flight> getAll() {
        return flightRepository.findAll();
    }


}
