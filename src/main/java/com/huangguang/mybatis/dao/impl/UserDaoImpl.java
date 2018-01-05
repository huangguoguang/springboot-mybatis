package com.huangguang.mybatis.dao.impl;

import com.huangguang.mybatis.dao.UserDao;
import com.huangguang.mybatis.entity.User;
import com.huangguang.mybatis.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * <p>
 * Description:
 * User : huangguang
 * DATE : 2018-01-05 10:26
 */
@Service
public class UserDaoImpl implements UserDao {
    @Autowired
    private UserMapper userMapper;
    @Override
    public List<User> getUserList() {
        return userMapper.getUserList();
    }

    @Override
    public int save(User user) {
        return userMapper.saveUser(user);
    }
}
