package com.ygy.groupbuy.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ygy.groupbuy.dao.UserMapper;
import com.ygy.groupbuy.pojo.User;
import com.ygy.groupbuy.pojo.UserExample;
import com.ygy.groupbuy.pojo.UserExample.Criteria;
import com.ygy.groupbuy.services.UserService;



@Service
public class UserServiceImpl implements UserService{
@Autowired
private UserMapper userMapper;

@Override
public User getUser(String name) {
	UserExample example = new UserExample();
	Criteria criteria = example.createCriteria();
	criteria.andNameEqualTo(name);
	List<User> list = userMapper.selectByExample(example);
	for (User user : list) {
		return user;
	}
	
	return null;
}


@Override
public int insertUser(String name,String password,String phone,String adress) {
	User user = new User();
    user.setName(name);
    user.setPassword(password);
    user.setPhone(phone);
    user.setAdress(adress);
    user.setMoney("0");
    int insert = userMapper.insert(user);
    return insert;
}
@Override
public int updataUser(User user) {
	return userMapper.updateByPrimaryKey(user);
	
}
@Override
public List<User> allUser(){
	return userMapper.selectAllUser();
	
}
@Override
public int delUser(int id) {
	return userMapper.deleteByPrimaryKey(id);
	
}
}
