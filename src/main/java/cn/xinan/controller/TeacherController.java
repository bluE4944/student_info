package cn.xinan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author LILr
 * @version 1.0
 * @date 2020/7/2 10:30
 */
@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @RequestMapping("/prime")
    public String toTeacher(){
        return "teacher/prime";
    }
}
