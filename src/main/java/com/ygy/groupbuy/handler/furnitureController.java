package com.ygy.groupbuy.handler;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ygy.groupbuy.pojo.Furniture;
import com.ygy.groupbuy.services.FurnitureService;

@Controller
public class furnitureController {
	@Autowired
	private FurnitureService furnitureService;

	@RequestMapping("/allfurniture")
	public String getAllfurniture(HttpSession s) {
		List<Furniture> furniture = furnitureService.getAll();
		s.removeAttribute("furnitures");
		s.setAttribute("furnitures", furniture);
		return "furniturelist";

	}

	@RequestMapping(value = "/furnituredel/{id}", method = RequestMethod.GET)
	public String delfurniture(@PathVariable("id") int id) {
		furnitureService.delFurniture(id);
		return "redirect:/allfurniture";

	}

	@RequestMapping(value = "/updatafurniture/{id}", method = RequestMethod.GET)
	public String getfurnitureByid(@PathVariable("id") int id, HttpSession s) {
		Furniture furniture = furnitureService.getFurnitureById(id);
		s.setAttribute("upfurniture", furniture);
		return "updatafurniture";

	}

	@RequestMapping(value = "/addfurniture", method = RequestMethod.POST)
	public String savaFurniture(Furniture furniture,HttpServletRequest s) {
		if (furniture.getId() != null && furniture.getId() != 0) {
			furnitureService.updataFurniture(furniture);
		} else {
			furnitureService.saveFurniture(furniture);
		}
		List<Furniture> furnitures = furnitureService.getAll();
		s.setAttribute("furnitures", furnitures);
		return "publishSuccess";

	}

	@RequestMapping(value = "/furnitureListByStyle/{id}", method = RequestMethod.GET)
	public String getFurnitureByStyle(@PathVariable("id") int id, HttpSession session) {
		List<Furniture> furnitureByStyle = null;

		if (id == 1) {
			furnitureByStyle = furnitureService.getFurnitureByStyle("欧式");
		}
		if (id == 2) {
			furnitureByStyle = furnitureService.getFurnitureByStyle("古典");
		}
		if (id == 3) {
			furnitureByStyle = furnitureService.getFurnitureByStyle("中式");
		}
		session.setAttribute("furnitureListByStyle", furnitureByStyle);
		System.out.println("查出来的" + session.getAttribute("furnitureListByStyle"));

		return "stylelist";

	}

	@RequestMapping(value = "/findfurniture/{id}", method = RequestMethod.GET)
	public String findFurnitureByid(@PathVariable("id") int id, HttpSession s) {
		Furniture furniture = furnitureService.getFurnitureById(id);
		s.setAttribute("picture", furniture.getPicture());
		s.setAttribute("findfurniture", furniture);
		return "findfurniture";

	}

	@RequestMapping("/like")
	public String likeFurniture(String ss, HttpSession session, HttpServletRequest h) {
		List<Furniture> furnitureLike = furnitureService.getFurnitureLike(ss);
		session.setAttribute("furnitureListByStyle", furnitureLike);
		return "stylelist";
	}

}
