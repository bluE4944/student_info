package cn.xinan.controller;

import cn.xinan.domain.User;
import cn.xinan.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 登录控制器
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 16:48
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    LoginService loginService;

    /**
     * 管理员登录请求
     * @param user
     * @param model
     * @return
     */
    @RequestMapping("/adminLogin")
    public String login(User user,Model model){
        if (loginService.LoginOk(user)){
            //进入管理页面
            System.out.println("登录成功");
            User findUser = loginService.findUserByCondition(user);
            model.addAttribute("user",findUser);
            return "admin/prime";
        }
        System.out.println("登录失败");
        model.addAttribute("Msg","账号或密码错误");
        return "admin/login";
    }

    /**
     * 跳转管理员登录页面
     * @return
     */
    @RequestMapping("/adminIndex")
    public String toIndex(){
        return "admin/login";
    }

    /**
     * 跳转帮助页面
     * @return
     */
    @RequestMapping("/help")
    public String help(){
        return "system/help";
    }

    /**
     * 跳转忘记密码页面
     * @return
     */
    @RequestMapping("/rePassword")
    public String rePassword(){
        return "system/rePassword";
    }
}
