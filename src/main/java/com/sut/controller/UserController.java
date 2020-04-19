package com.sut.controller;

import com.sut.model.User;
import com.sut.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    @ResponseBody
    public Map<String, Object> editEmployee(@RequestBody User user) {
        Map<String, Object> map = new HashMap<>();
        if (userService.editEmployee(user) > 0) {
            map.put("result", "SUCCESS");
        } else {
            map.put("result", "没有更新");
        }
        return map;
    }

    @RequestMapping(path = "/employee/", method = RequestMethod.POST)
    public ModelAndView addEmployee(User user) {
        Map<String, Object> map = new HashMap<>();
        if (userService.addEmployee(user) > 0) {
            map.put("result", "SUCCESS");
        } else {
            map.put("result", "添加失败");
        }
        return new ModelAndView("admin/employee", map);
    }

    @RequestMapping(path = "/employee/", method = RequestMethod.DELETE)
    @ResponseBody
    public Map<String, Object> deleteEmployee(@RequestBody int id) {
        Map<String, Object> map = new HashMap<>();
        if (userService.deleteEmployee(id) > 0) {
            map.put("result", "SUCCESS");
        } else {
            map.put("result", "删除失败");
        }
        return map;
    }
}
