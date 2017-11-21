package com.bolean.controller;

import com.bolean.model.User;
import com.bolean.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Index")
public class IndexController {
    @Autowired
    private UserService userService;

    @RequestMapping("/index")
    public String index(){
        return "index";

    }

    @RequestMapping("/getAllUser")
    public String getAllUser(){
        List<User> userList = userService.getAllUser();
        System.out.print("22__________________");
        return "user_list";
    }
}
