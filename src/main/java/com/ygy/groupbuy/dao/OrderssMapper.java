package com.ygy.groupbuy.dao;

import com.ygy.groupbuy.pojo.Orderss;
import com.ygy.groupbuy.pojo.OrderssExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrderssMapper {
    int countByExample(OrderssExample example);

    int deleteByExample(OrderssExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Orderss record);

    int insertSelective(Orderss record);

    List<Orderss> selectByExample(OrderssExample example);

    Orderss selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Orderss record, @Param("example") OrderssExample example);

    int updateByExample(@Param("record") Orderss record, @Param("example") OrderssExample example);

    int updateByPrimaryKeySelective(Orderss record);

    int updateByPrimaryKey(Orderss record);
}