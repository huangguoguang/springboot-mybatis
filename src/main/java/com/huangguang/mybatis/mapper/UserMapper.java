package com.huangguang.mybatis.mapper;

import com.huangguang.mybatis.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * <p>
 * Description:
 * User : huangguang
 * DATE : 2018-01-05 10:26
 */
@Repository
public interface UserMapper {
    List<User> getUserList();

    int saveUser(User user);
}
