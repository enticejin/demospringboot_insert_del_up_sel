package com.hsds.demo.service;
import com.hsds.demo.model.User;

import java.util.List;

public interface UserService {
   List<User> hello() throws Exception;
   List<User> userList();
}
