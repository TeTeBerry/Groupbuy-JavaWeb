package com.ygy.groupbuy.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ygy.groupbuy.dao.PuserMapper;
import com.ygy.groupbuy.pojo.Puser;
import com.ygy.groupbuy.pojo.PuserExample;
import com.ygy.groupbuy.pojo.PuserExample.Criteria;
import com.ygy.groupbuy.services.PuserService;
@Service
public class PuserServiceImpl implements PuserService{
@Autowired
private PuserMapper puserMapper;
	
@Override
public Puser getPuser(String name) {
       PuserExample puserExample = new PuserExample();
      Criteria criteria = puserExample.createCriteria();
      criteria.andNameEqualTo(name);
      List<Puser> list = puserMapper.selectByExample(puserExample);
      for (Puser puser : list) {
    	  return puser;
	}   
		return null;
	}

}
