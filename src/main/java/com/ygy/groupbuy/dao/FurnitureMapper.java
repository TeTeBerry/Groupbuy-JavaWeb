package com.ygy.groupbuy.dao;

import com.ygy.groupbuy.pojo.Furniture;
import com.ygy.groupbuy.pojo.FurnitureExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FurnitureMapper {
	List<Furniture> selectFurniture();
    int countByExample(FurnitureExample example);

    int deleteByExample(FurnitureExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Furniture record);

    int insertSelective(Furniture record);

    List<Furniture> selectByExample(FurnitureExample example);

    Furniture selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Furniture record, @Param("example") FurnitureExample example);

    int updateByExample(@Param("record") Furniture record, @Param("example") FurnitureExample example);

    int updateByPrimaryKeySelective(Furniture record);

    int updateByPrimaryKey(Furniture record);
}