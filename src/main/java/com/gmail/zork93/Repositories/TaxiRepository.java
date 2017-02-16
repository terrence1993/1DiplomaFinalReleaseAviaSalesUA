package com.gmail.zork93.Repositories;

import com.gmail.zork93.Entities.Taxi;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by Andrew on 12/21/2016.
 */
public interface TaxiRepository extends JpaRepository<Taxi,Long>{
    @Query("select t from Taxi t where t.taxiName = :taxiName")
    Taxi findByName(@Param("taxiName") String taxiName);
}
