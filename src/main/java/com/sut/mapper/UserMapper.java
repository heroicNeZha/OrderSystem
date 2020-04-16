package com.sut.mapper;

import com.sut.model.User;

import java.util.List;

public interface UserMapper {
    List<User> employeeList();

    List<User> customerList();

    User getCustomer(int id);

    User getEmployee(int id);
}
