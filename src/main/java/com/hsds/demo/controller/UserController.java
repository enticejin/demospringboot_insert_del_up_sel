package com.hsds.demo.controller;

import com.hsds.demo.model.User;
import com.hsds.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @RequestMapping("helloDo")
    public String hello(){
      return "hello.jsp";
    }

    @RequestMapping(value = "successDo",method = RequestMethod.GET)
    public String success(){
        return "jsp/success.jsp";
    }

    @RequestMapping(value = "viewsDo",method = RequestMethod.GET)
    public String views(){
        return "WEB-INF/views/views.jsp";
    }

    @Autowired()
    private UserService userService;

    @RequestMapping(value = "userDo",method = RequestMethod.GET)
    public List<User> user(){
        List<User> hello = null;
        try{
            hello = userService.hello();
        } catch (Exception e) {
            System.out.println(e);
        }
        return hello;
    }

    @RequestMapping(value = "findAll")
    public String findAll(HttpServletRequest request){
        List<User> userList = userService.userList();

        request.setAttribute("userList",userList);
        System.out.println(userList);
        return "hello.jsp";
    }
}
