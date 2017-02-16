package com.gmail.zork93.Repositories;

import com.gmail.zork93.Entities.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by Andrew on 12/21/2016.
 */
public interface HotelRepository extends JpaRepository<Hotel,Long> {
    @Query("select h from Hotel h where h.hotelName = :hotelName")
    Hotel findByName(@Param("hotelName") String hotelName);
}
