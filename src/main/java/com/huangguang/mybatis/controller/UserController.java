package com.huangguang.mybatis.controller;

import com.huangguang.mybatis.entity.User;
import com.huangguang.mybatis.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * <p>
 * Description:
 * User : huangguang
 * DATE : 2018-01-05 10:21
 */
@RequestMapping(value = "user")
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "home")
    public String getHome() {
        return "home";
    }

    @RequestMapping(value = "list")
    public Object getList(Model model) {
        List<User> userList = userService.getUserList();
        model.addAttribute("userList", userList);
        return "list";
    }

    @RequestMapping(value = "toInsert")
    public Object insert() {
        return "insert";
    }

    @RequestMapping(value = "insert")
    public Object doInsert(@ModelAttribute("user") User user) {
        userService.save(user);
        return "redirect:/user/list";
    }
}
