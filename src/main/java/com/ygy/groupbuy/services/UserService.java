package com.ygy.groupbuy.services;

import java.util.List;

import com.ygy.groupbuy.pojo.User;

public interface UserService {
	public User getUser(String name);
	public int insertUser(String name,String password,String phone,String adress);
	public int updataUser(User user);
	public List<User> allUser();
	public int delUser(int id);
}
