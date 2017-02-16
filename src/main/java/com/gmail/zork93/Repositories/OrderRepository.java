package com.gmail.zork93.Repositories;

import com.gmail.zork93.Entities.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

/**
 * Created by Andrew on 12/21/2016.
 */
public interface OrderRepository extends JpaRepository<Order, Long> {
    @Query("select o from Order o where o.userName = :userName")
    Order findByName(@Param("userName") String userName);

//    @Query("select l from Order l where l.customuser_id = :id")
//    Order getByUsername(@Param("id") long id);
}
