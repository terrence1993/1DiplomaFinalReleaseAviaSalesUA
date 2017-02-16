package com.gmail.zork93.Implementation;

import com.gmail.zork93.Entities.Taxi;
import com.gmail.zork93.Repositories.TaxiRepository;
import com.gmail.zork93.Services.TaxiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Andrew on 12/22/2016.
 */
@Service
public class TaxiServiceImpl implements TaxiService {

    @Autowired(required = false)
    private TaxiRepository taxiRepository;


    @Override
    @Transactional
    public Taxi addTaxi(Taxi taxi) {
        return taxiRepository.save(taxi);
    }

    @Override
    @Transactional
    public void delete(long id) {
        taxiRepository.delete(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Taxi getByName(String taxiName) {
        return taxiRepository.findByName(taxiName);
    }

    @Override
    @Transactional
    public Taxi updateTaxi(Taxi taxi) {
        return taxiRepository.saveAndFlush(taxi);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Taxi> getAll() {
        return taxiRepository.findAll();
    }
}
