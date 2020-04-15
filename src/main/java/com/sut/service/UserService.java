package com.sut.service;

import com.sut.model.User;

import java.util.List;

public interface UserService {
    List<User> customerList();

    List<User> employeeList();
}
