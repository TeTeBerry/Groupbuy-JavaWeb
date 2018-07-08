package com.ygy.groupbuy.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ygy.groupbuy.dao.ShoppingCartMapper;
import com.ygy.groupbuy.pojo.ShoppingCart;
import com.ygy.groupbuy.pojo.ShoppingCartExample;
import com.ygy.groupbuy.pojo.ShoppingCartExample.Criteria;
import com.ygy.groupbuy.services.ShopppingCartService;
@Service
public class ShoppingCartServiceImpl implements ShopppingCartService{
@Autowired
private ShoppingCartMapper cartMapper;
@Override	
public int savaShop(ShoppingCart shoppingCart ) {
	return cartMapper.insert(shoppingCart);
}	

@Override
public List<ShoppingCart> getShoppingCartByname(String ownname){
	ShoppingCartExample example = new  ShoppingCartExample();
	Criteria criteria = example.createCriteria();
	criteria.andOwnnameEqualTo(ownname);
	return cartMapper.selectByExample(example);
	}

@Override
public ShoppingCart getShoppingCartByid(int id) {
	return cartMapper.selectByPrimaryKey(id);
	
}
@Override
public int delShoppingCartByid(int id) {
	
return	cartMapper.deleteByPrimaryKey(id);
	
}
}
