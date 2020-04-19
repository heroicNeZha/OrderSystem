package com.sut.service;

import com.sut.model.User;

import java.util.List;

public interface UserService {
    List<User> customerList();

    List<User> employeeList();

    User getCustomer(int id);

    User getEmployee(int id);

    int editEmployee(User user);

    int addEmployee(User user);

    int deleteEmployee(int id);
}
