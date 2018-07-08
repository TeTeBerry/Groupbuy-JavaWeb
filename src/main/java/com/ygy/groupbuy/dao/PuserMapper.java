package com.ygy.groupbuy.dao;

import com.ygy.groupbuy.pojo.Puser;
import com.ygy.groupbuy.pojo.PuserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PuserMapper {
    int countByExample(PuserExample example);

    int deleteByExample(PuserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Puser record);

    int insertSelective(Puser record);

    List<Puser> selectByExample(PuserExample example);

    Puser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Puser record, @Param("example") PuserExample example);

    int updateByExample(@Param("record") Puser record, @Param("example") PuserExample example);

    int updateByPrimaryKeySelective(Puser record);

    int updateByPrimaryKey(Puser record);
}