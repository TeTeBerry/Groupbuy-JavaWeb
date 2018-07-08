package com.ygy.groupbuy.services;


import java.util.List;

import com.ygy.groupbuy.pojo.Orderss;

public interface OrderService {
	public int savaOrder(Orderss order);
	public List<Orderss> getOrderByName(String ownname);
	public int delOrderssById(int id);
}
