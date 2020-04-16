package com.sut.controller;

import com.sut.model.User;
import com.sut.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping(path = "/employee", method = RequestMethod.GET)
    @ResponseBody
    public List<User> employeeList() {
        List<User> result = userService.employeeList();
        return result;
    }

    @RequestMapping(path = "/customer", method = RequestMethod.GET)
    @ResponseBody
    public List<User> customerList() {
        List<User> result = userService.customerList();
        return result;
    }

    @RequestMapping(path = "/customer/{id}", method = RequestMethod.GET)
    @ResponseBody
    public User getCustomer(@PathVariable Integer id) {
        User result = userService.getCustomer(id);
        return result;
    }

    @RequestMapping(path = "/employee/{id}", method = RequestMethod.GET)
    @ResponseBody
    public User getEmployee(@PathVariable Integer id) {
        User result = userService.getEmployee(id);
        return result;
    }

    @RequestMapping(path = "/employee/", method = RequestMethod.PUT)
    public int editEmployee(@RequestParam("user") User user) {
        System.out.println(user.toString());
        return 4;
    }

    @RequestMapping(path = "/employee/", method = RequestMethod.POST)
    public int addEmployee(@RequestBody User user) {
        System.out.println(user.toString());
        return 4;
    }
}
