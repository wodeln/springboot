package com.bolean.service.impl;


import com.bolean.dao.UserMapper;
import com.bolean.service.UserService;
import com.bolean.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {
    /*@Autowired
    private UserMapper userMapper;


    @Override
    public List<User> getAllUser() {
        return userMapper.getAllUser();
    }*/
}
