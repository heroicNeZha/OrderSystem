package com.sut.controller;

import com.sut.model.User;
import com.sut.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/users")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping(path = "/employees", method = RequestMethod.GET)
    @ResponseBody
    public List<User> employeeList(Model model) {
        List<User> users = userService.employeeList();
        return users;
    }

    @RequestMapping(path = "/customers", method = RequestMethod.GET)
    @ResponseBody
    public List<User> customerList(Model model) {
        List<User> users = userService.customerList();
        return users;
    }
}
