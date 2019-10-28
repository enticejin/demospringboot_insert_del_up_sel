package com.hsds.demo.mapper;

import com.hsds.demo.model.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {
    List<User> hello()throws Exception;
    List<User> userList();
}
