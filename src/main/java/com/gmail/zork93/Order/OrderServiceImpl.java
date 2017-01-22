package com.gmail.zork93.Order;

import com.gmail.zork93.Entities.CustomUser;
import com.gmail.zork93.Entities.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Andrew on 12/22/2016.
 */
@Service
public class OrderServiceImpl implements OrderService {
    @Autowired(required = false)
    private OrderRepository orderRepository;

    @Override
    @Transactional
    public Order addOrder(Order order){
        return orderRepository.save(order);
    }

    @Override
    @Transactional
    public void delete (long id){
        orderRepository.delete(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Order getByName(String userName){
        return orderRepository.findByName(userName);
    }

    @Override
    public Order updateOrder(Order order) {
        return orderRepository.saveAndFlush(order);
    }

//    @Override
//    public Order getByUserName(long id) {
//        return orderRepository.getByUsername(id);
//    }

    @Override
    @Transactional(readOnly = true)
    public List<Order> getAll(){
        return orderRepository.findAll();
    }
}
