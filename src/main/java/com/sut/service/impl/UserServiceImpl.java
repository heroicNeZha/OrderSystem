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

    @Override
    public User getCustomer(int id) {
        return userMapper.getCustomer(id);
    }

    @Override
    public User getEmployee(int id) {
        return userMapper.getEmployee(id);
    }

    @Override
    public int editEmployee(User user) {
        return userMapper.editEmployee(user);
    }

    @Override
    public int addEmployee(User user) {
        return userMapper.addEmployee(user);
    }

    @Override
    public int deleteEmployee(int id) {
        return userMapper.deleteEmployee(id);
    }
}
