package com.gmail.zork93.Flight;

import com.gmail.zork93.Entities.Flight;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by Andrew on 12/21/2016.
 */
public interface FlightRepository extends JpaRepository<Flight,Long>{
    @Query("select f from Flight f where f.code = :code")
    Flight findByCode(@Param("code") String code);
}
