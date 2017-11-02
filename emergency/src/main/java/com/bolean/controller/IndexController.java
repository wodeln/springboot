package com.bolean.controller;

import com.bolean.dao.UserDao;
import com.bolean.model.User;
import com.bolean.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/Index")
public class IndexController {
    /*@Autowired
    private UserService userService;*/

    @Autowired
    private UserDao userDao;

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

   /* @RequestMapping("/getAllUser")
    public String getAllUser(){
        List<User> userList = userService.getAllUser();
        System.out.print("22__________________");
        return "user_list";
    }*/

   @RequestMapping("/save")
    public String save(){
       User user= new User();
       user.setUserName("zhaoyan");
       user.setPassWord("12345");
       userDao.save(user);
       return "index";
   }

   @RequestMapping("/getUserById")
    public String getUserById(){
//        List<User> userList = userDao.get
//       User user = userDao.findOne(new Long((long)1));
       User user = userDao.findAllByUserId(1);
        return "index";
   }

   @RequestMapping("getAllUser")
    public String getAllUsers(){
       List<User> userList = userDao.findAll();
        return "index";
   }
}
