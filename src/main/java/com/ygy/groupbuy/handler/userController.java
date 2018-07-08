package com.ygy.groupbuy.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ygy.groupbuy.pojo.Furniture;
import com.ygy.groupbuy.pojo.Puser;
import com.ygy.groupbuy.pojo.User;
import com.ygy.groupbuy.services.FurnitureService;
import com.ygy.groupbuy.services.OrderService;
import com.ygy.groupbuy.services.PuserService;
import com.ygy.groupbuy.services.ShopppingCartService;
import com.ygy.groupbuy.services.UserService;


@Controller
public class userController {
   @Autowired
   private UserService userService;
   @Autowired
   private PuserService puserService;
   @Autowired
   private FurnitureService furnitureService;
   @Autowired
   private ShopppingCartService shopppingCartService;
   @Autowired
   private OrderService orderService;
   
 @RequestMapping("/groupbuy")
  	public String logoust(HttpSession httpSession) {
	 List<Furniture> all = furnitureService.getAll();
	 httpSession.setAttribute("furnitures", all);
	 List<User> allUser=userService.allUser();
	 httpSession.setAttribute("allUser", allUser);
  		return "index";
  	}

 @RequestMapping("/login")
 public String login(String name,String password,String radio1,HttpSession httpSession) {
	 List<Furniture> all = furnitureService.getAll();
	 httpSession.setAttribute("furnitures", all);

	 if (radio1.equals("管理员")) {
		 Puser puser = puserService.getPuser(name);
		 if (puser !=null&&puser.getPass().equals(password)) {
			 httpSession.setAttribute("loginUsers", puser);
			return "furniturelist";
		}
				
	}if (radio1.equals("会员")) {
		User user = userService.getUser(name);
		 if (user !=null&&user.getPassword().equals(password)) {	
			    httpSession.setAttribute("shopppingCart",  shopppingCartService.getShoppingCartByname(name));
			    httpSession.setAttribute("orders",orderService.getOrderByName(name));
				 httpSession.setAttribute("loginUser", user);
				return "index";			
		}	
	}
	return "sorry";	 
 }
 @RequestMapping("/regist")
 public String regist(String name,String password,String phone,String adress,HttpSession httpSession) {
	 User user = userService.getUser(name);

	 if (user!=null) {
		 httpSession.setAttribute("user", user);
		 return "regist";
	}else {
		userService.insertUser(name, password, phone, adress);
		return "registSuccess";
	}
	 
 }
 @RequestMapping("/logoutServlet")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/groupbuy";
	}
 @RequestMapping(value="/updatauser",method=RequestMethod.POST)
 public String updataUser(User user,HttpSession httpSession) {
	 userService.updataUser(user);

	 httpSession.removeAttribute("loginUser");
	 httpSession.setAttribute("loginUser", user);
	 return "index";
 }
 @RequestMapping(value="/updatausers",method=RequestMethod.POST)
 public String updataUsers(String num,String name,String password,String phone,String adress,String money,String moneys,HttpSession httpSession) {
	 User user = new User();
	 user.setNum(Integer.parseInt(num));
	 user.setAdress(adress);
	 user.setName(name);
	 user.setPassword(password);
	 user.setPhone(phone);
	 System.out.println(money+moneys+name);
	 user.setMoney((Double.parseDouble(money)+Double.parseDouble(moneys))+"");
	 userService.updataUser(user);
	 httpSession.removeAttribute("loginUser");
	 httpSession.setAttribute("loginUser", user);
	 return "index";
 }
 @RequestMapping(value = "/userdel/{id}", method = RequestMethod.GET)
	public String delfurniture(@PathVariable("id") int id,HttpServletRequest httpSession) {
	userService.delUser(id);
	 List<User> allUser=userService.allUser();
	 httpSession.setAttribute("allUser", allUser);
		return "userlist";

	}
}
