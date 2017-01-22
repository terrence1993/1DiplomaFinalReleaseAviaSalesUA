package com.gmail.zork93.Hotel;

import com.gmail.zork93.Entities.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Andrew on 12/22/2016.
 */
@Service
public class HotelServiceImpl implements HotelService {
    @Autowired(required = false)
    private HotelRepository hotelRepository;

    @Override
    @Transactional
    public Hotel addHotel(Hotel hotel) {
        return hotelRepository.save(hotel);
    }

    @Override
    @Transactional
    public void delete(long id) {
        hotelRepository.delete(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Hotel getByName(String hotelName) {
        return hotelRepository.findByName(hotelName);
    }

    @Override
    @Transactional
    public Hotel updateHotel(Hotel hotel) {
        return hotelRepository.saveAndFlush(hotel);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Hotel> getAll() {
        return hotelRepository.findAll();
    }
}
