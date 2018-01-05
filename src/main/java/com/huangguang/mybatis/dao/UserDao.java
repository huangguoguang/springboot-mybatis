package com.huangguang.mybatis.dao;

import com.huangguang.mybatis.entity.User;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * <p>
 * Description:
 * User : huangguang
 * DATE : 2018-01-05 10:25
 */
public interface UserDao {
    List<User> getUserList();

    int save(User user);

}
