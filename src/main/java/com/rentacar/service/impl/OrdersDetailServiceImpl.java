/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentacar.service.impl;

import com.rentacar.dao.OrdersDetailDao;
import com.rentacar.model.OrdersDetail;
import com.rentacar.service.OrdersDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author BojanaPocuca
 */
@Service
public class OrdersDetailServiceImpl implements OrdersDetailService {

    @Autowired
    private OrdersDetailDao ordersDetailDao;

    @Override
    public void addOrdersDetail(OrdersDetail ordersDetail) {
        ordersDetailDao.addOrdersDetail(ordersDetail);
    }

}
