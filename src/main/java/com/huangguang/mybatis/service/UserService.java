package com.huangguang.mybatis.service;

import com.huangguang.mybatis.entity.User;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * <p>
 * Description:
 * User : huangguang
 * DATE : 2018-01-05 10:23
 */
public interface UserService {
    List<User> getUserList();

    int save(User user);
}
