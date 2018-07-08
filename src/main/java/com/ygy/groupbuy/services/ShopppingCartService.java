package com.ygy.groupbuy.services;

import java.util.List;

import com.ygy.groupbuy.pojo.ShoppingCart;

public interface ShopppingCartService {
	public int savaShop(ShoppingCart shoppingCart );
	public List<ShoppingCart> getShoppingCartByname(String ownname);
	public ShoppingCart getShoppingCartByid(int id);
	public int delShoppingCartByid(int id) ;
}
