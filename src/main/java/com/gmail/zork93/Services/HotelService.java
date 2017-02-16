package com.gmail.zork93.Services;

import com.gmail.zork93.Entities.Hotel;

import java.util.List;

/**
 * Created by Andrew on 12/22/2016.
 */
public interface HotelService {
    Hotel addHotel(Hotel hotel);
    void delete(long id);
    Hotel getByName(String hotelName);
    Hotel updateHotel(Hotel hotel);
    List<Hotel> getAll();
}
