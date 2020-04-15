package com.sut.service.impl;

import com.sut.mapper.UserMapper;
import com.sut.model.User;
import com.sut.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> customerList() {
        return userMapper.customerList();
    }

    @Override
    public List<User> employeeList() {
        return userMapper.employeeList();
    }
}
