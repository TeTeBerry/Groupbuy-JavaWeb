package com.ygy.groupbuy.services;

import java.util.List;

import com.ygy.groupbuy.pojo.Furniture;

public interface FurnitureService {
	public int saveFurniture(Furniture record);
	public List<Furniture> getAll();
	public int delFurniture(int id);
	public int updataFurniture(Furniture furniture);
	public Furniture getFurnitureById(int id) ;
	public List<Furniture> getFurnitureByStyle(String style);
	public List<Furniture> getFurnitureLike(String value);
}
