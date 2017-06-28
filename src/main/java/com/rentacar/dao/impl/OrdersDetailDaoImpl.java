/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rentacar.dao.impl;

import com.rentacar.dao.OrdersDetailDao;
import com.rentacar.model.OrdersDetail;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author BojanaPocuca
 */
@Repository
@Transactional
public class OrdersDetailDaoImpl implements OrdersDetailDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addOrdersDetail(OrdersDetail ordersDetail) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(ordersDetail);
        session.flush();
    }

}
