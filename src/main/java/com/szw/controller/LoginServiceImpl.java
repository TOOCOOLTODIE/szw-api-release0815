package com.szw.controller;

import com.szw.common.RespBean;
import com.szw.entity.User;
import com.szw.mapper.UserDao;
import com.szw.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * @类名 LoginServiceImpl
 * @描述 登录控制类
 * @作者 szw
 * @日期 2020/7/4
 * @版本 1.0
 **/
@RestController
public class LoginServiceImpl implements LoginService{

    @Autowired
    UserDao userDao;

    @RequestMapping(value="/login",method = RequestMethod.POST)
    public RespBean login(@RequestParam String name,@RequestParam String password) {
        RespBean respBean = RespBean.build();

        User user = new User();
        user.setName(name);
        user.setPassword(password);
        int count = userDao.selectUserExist(user);
        if(count == 1){
            respBean.setMsg("登录成功！");
            respBean.setStatus(200);
            respBean.setObj(user);
            return respBean;
        }else if(count < 1){
            respBean.setMsg("账户名或者密码错误！");
            respBean.setStatus(401);
            respBean.setObj(user);
            return respBean;
        }
        respBean.setStatus(500);
        respBean.setMsg("登录失败！");
        respBean.setObj(null);
        return respBean;
    }


}
