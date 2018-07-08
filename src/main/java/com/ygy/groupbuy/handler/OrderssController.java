package com.ygy.groupbuy.handler;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ygy.groupbuy.pojo.User;
import com.ygy.groupbuy.services.OrderService;

@Controller
public class OrderssController {
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value = "/delorder/{id}", method = RequestMethod.GET)
	public String delShop(@PathVariable("id") int id ,HttpSession ss) {
		User attribute = (User) ss.getAttribute("loginUser");
		orderService.delOrderssById(id);
		ss.setAttribute("orders", orderService.getOrderByName(attribute.getName()));	
		return "orders";
		
	}
}
