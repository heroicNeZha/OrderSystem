package com.sut.mapper;

import com.sut.model.User;

import java.util.List;

public interface UserMapper {
    //    Customer
    User getCustomer(int id);

    List<User> customerList();

    //    Employee
    User getEmployee(int id);

    List<User> employeeList();

    int editEmployee(User user);

    int addEmployee(User user);

    int deleteEmployee(int id);
}
