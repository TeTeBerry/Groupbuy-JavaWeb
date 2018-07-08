package com.ygy.groupbuy.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ygy.groupbuy.dao.FurnitureMapper;
import com.ygy.groupbuy.pojo.Furniture;
import com.ygy.groupbuy.pojo.FurnitureExample;
import com.ygy.groupbuy.pojo.FurnitureExample.Criteria;
import com.ygy.groupbuy.services.FurnitureService;

@Service
public class FurnitureServiceImpl implements FurnitureService{
@Autowired
private FurnitureMapper furnitureMapper;
@Override
public int saveFurniture(Furniture record) {
	int a = -1;
	a = furnitureMapper.insert(record);
	return a;
	
}
@Override
public List<Furniture> getAll(){
	List<Furniture> allFurniture = furnitureMapper.selectFurniture();
	return allFurniture;
	
}
@Override
public int delFurniture(int id) {
	return furnitureMapper.deleteByPrimaryKey(id);
	
}
@Override
public int updataFurniture(Furniture furniture) {
     return furnitureMapper.updateByPrimaryKey(furniture);
}
@Override
public Furniture getFurnitureById(int id) {
	
	return furnitureMapper.selectByPrimaryKey(id);
}
@Override
public List<Furniture> getFurnitureByStyle(String style){
	FurnitureExample example = new FurnitureExample();
	Criteria createCriteria = example.createCriteria();
      createCriteria.andStyleEqualTo(style);
    
	return  furnitureMapper.selectByExample(example);
	
}
@Override
public List<Furniture> getFurnitureLike(String value){
	FurnitureExample example = new FurnitureExample();
	Criteria createCriteria = example.createCriteria();
	createCriteria.andNameLike("%"+value+"%");
	return furnitureMapper.selectByExample(example);
	}

}
