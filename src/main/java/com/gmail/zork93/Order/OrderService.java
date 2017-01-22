package com.gmail.zork93.Order;

import com.gmail.zork93.Entities.CustomUser;
import com.gmail.zork93.Entities.Order;

import java.util.List;

/**
 * Created by Andrew on 12/22/2016.
 */
public interface OrderService {
    Order addOrder(Order order);
    void delete(long id);
    Order getByName(String userName);
    Order updateOrder(Order order);
//    Order getByUserName(long id);
    List<Order> getAll();
}
