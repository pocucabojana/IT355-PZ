/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentacar.service.impl;

import com.rentacar.model.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rentacar.dao.OrdersDao;
import com.rentacar.service.OrdersService;

/**
 *
 * @author BojanaPocuca
 */
@Service
public class OrderServiceImpl implements OrdersService {

    @Autowired
    private OrdersDao orderDao;

    @Override
    public Orders addOrders(Orders orders) {
        return orderDao.addOrders(orders);
    }

}
