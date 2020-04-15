package com.sut.controller;

import com.sut.model.User;
import com.sut.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("")
public class HomeController {
    @Autowired
    UserService userService;

    @RequestMapping("home")
    public String home(Model model) {
        return "admin/employee";
    }
}
