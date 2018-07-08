package com.ygy.groupbuy.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.ygy.groupbuy.dao.OrderssMapper;

import com.ygy.groupbuy.pojo.Orderss;
import com.ygy.groupbuy.pojo.OrderssExample;
import com.ygy.groupbuy.pojo.OrderssExample.Criteria;
import com.ygy.groupbuy.services.OrderService;
@Service
public class OrderServiceImpl implements OrderService {
@Autowired
private OrderssMapper orderMapper;
@Override
public int savaOrder(Orderss order) {
	return orderMapper.insert(order);
	
}
@Override
public List<Orderss> getOrderByName(String ownname){
	OrderssExample example = new OrderssExample();
	Criteria criteria=		example.createCriteria();
	criteria.andOwnnameEqualTo(ownname);
	return orderMapper.selectByExample(example);
}
@Override
public int delOrderssById(int id) {
	
	return orderMapper.deleteByPrimaryKey(id);
}
}