package com.ygy.groupbuy.handler;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ygy.groupbuy.pojo.Furniture;
import com.ygy.groupbuy.pojo.Orderss;
import com.ygy.groupbuy.pojo.ShoppingCart;
import com.ygy.groupbuy.pojo.User;
import com.ygy.groupbuy.services.FurnitureService;
import com.ygy.groupbuy.services.OrderService;
import com.ygy.groupbuy.services.ShopppingCartService;
import com.ygy.groupbuy.services.UserService;

@Controller
public class ShoppingCartController {
	@Autowired
	private ShopppingCartService cartService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private UserService userService;
	@Autowired
	private FurnitureService furnitureService;

	@RequestMapping(value = "/buy", method = RequestMethod.POST)
	public String savaShop(ShoppingCart shoppingCart, String buy, Orderss order, HttpSession s) {
		String attribute2 = (String) s.getAttribute("picture");
		Date day = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		shoppingCart.setFpicture(attribute2);
		order.setFpicture(attribute2);
		shoppingCart.setBuytime(df.format(day));
		order.setBuytime(df.format(day));
		System.out.println(order.getPrice());
		if (buy.equals("购买")) {
			User attribute = (User) s.getAttribute("loginUser");
			attribute.setMoney((Double.parseDouble(attribute.getMoney()) - shoppingCart.getPrice()) + "");
			userService.updataUser(attribute);
			orderService.savaOrder(order);
			s.setAttribute("orders", orderService.getOrderByName(attribute.getName()));
			Furniture furniture = (Furniture) s.getAttribute("findfurniture");
			furniture.setNumber((Integer.parseInt(furniture.getNumber())-shoppingCart.getFnum())+"");
			furnitureService.updataFurniture(furniture);
			return "sucess";
		}
		if (buy.equals("加入购物车")) {
			cartService.savaShop(shoppingCart);
			s.setAttribute("shopppingCart", cartService.getShoppingCartByname(shoppingCart.getOwnname()));
			return "index";
		}
		return "index";

	}

	@RequestMapping(value = "/buys/{id}", method = RequestMethod.GET)
	public String savaOrder(@PathVariable("id") int id, HttpSession ss) {
		ShoppingCart sh = cartService.getShoppingCartByid(id);
		User attribute = (User) ss.getAttribute("loginUser");
		if (Double.parseDouble(attribute.getMoney()) < sh.getPrice()) {
			return "sorry1";
		} else {
			Furniture furniture = (Furniture) ss.getAttribute("findfurniture");
			furniture.setNumber((Integer.parseInt(furniture.getNumber())-sh.getFnum())+"");
			furnitureService.updataFurniture(furniture);
			
			attribute.setMoney((Double.parseDouble(attribute.getMoney()) - sh.getPrice()) + "");
			userService.updataUser(attribute);
			Orderss s = new Orderss();
			s.setBuynum(sh.getBuynum());
			s.setBuytime(sh.getBuytime());
			s.setFname(sh.getFname());
			s.setPrice(sh.getPrice());
			s.setFnum(sh.getFnum());
			s.setFpicture(sh.getFpicture());
			s.setOwnname(sh.getOwnname());
			cartService.delShoppingCartByid(id);
			orderService.savaOrder(s);
			ss.setAttribute("shopppingCart", cartService.getShoppingCartByname(sh.getOwnname()));
			ss.setAttribute("orders", orderService.getOrderByName(attribute.getName()));
			return "sucess";
		}

	}

	@RequestMapping(value = "/delshop/{id}", method = RequestMethod.GET)
	public String delShop(@PathVariable("id") int id, HttpSession ss) {
		ShoppingCart sh = cartService.getShoppingCartByid(id);
		cartService.delShoppingCartByid(id);
		ss.setAttribute("shopppingCart", cartService.getShoppingCartByname(sh.getOwnname()));
		return "shopcart";
	}
}
