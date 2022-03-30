package cn.xinan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 21:16
 */
@Controller
@RequestMapping("/views")
public class ViewsController {

    /**
     * 跳转学生管理页面
     * @return
     */
    @RequestMapping("/studentManager")
    public String jumpStudentManager(){
        return "admin/studentManager";
    }

    /**
     * 跳转学生管理页面
     * @return
     */
    @RequestMapping("/welcome")
    public String jumpWelcome(){
        return "admin/welcome";
    }

    /**
     * 跳转学生管理页面
     * @return
     */
    @RequestMapping("/teacherManager")
    public String jumpTeacherManager(){
        return "admin/teacherManager";
    }

    /**
     * 跳转学生管理页面
     * @return
     */
    @RequestMapping("/systemManager")
    public String jumpSystemManager(){
        return "admin/systemManager";
    }

}
