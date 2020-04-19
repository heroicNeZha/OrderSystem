package com.sut.controller;

import com.sut.model.User;
import com.sut.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("")
public class HomeController {
    @Autowired
    UserService userService;

    @RequestMapping("home")
    public ModelAndView home(Model model) {
        return new ModelAndView("admin/employee");
    }
}
