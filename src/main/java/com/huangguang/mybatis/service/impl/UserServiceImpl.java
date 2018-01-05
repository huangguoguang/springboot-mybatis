package com.huangguang.mybatis.service.impl;

import com.huangguang.mybatis.dao.UserDao;
import com.huangguang.mybatis.entity.User;
import com.huangguang.mybatis.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * <p>
 * Description:
 * User : huangguang
 * DATE : 2018-01-05 10:23
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public List<User> getUserList() {
        return userDao.getUserList();
    }

    @Override
    public int save(User user) {
        user.setCreateDate(new Date());
        user.setIsUse("1");
        return userDao.save(user);
    }
}
