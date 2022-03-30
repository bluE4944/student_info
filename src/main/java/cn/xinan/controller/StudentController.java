package cn.xinan.controller;

import cn.xinan.domain.Student;
import cn.xinan.service.StudentService;
import cn.xinan.util.LayPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author LILr
 * @version 1.0
 * @date 2020/6/28 16:09
 */
@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    /**
     * 从前端获得不完整的分页对象，通过业务层方法构建一个完整分页对象传回前端
     * @param layPage
     * @return
     */
    @RequestMapping("/layPage")
    public @ResponseBody LayPage<Student>  getStudentLayPage(LayPage<Student> layPage){
        return studentService.getStudentLayPage(layPage);
    }

    /**
     * 保存学生
     * @param student
     * @return
     */
    @RequestMapping("/saveStudent")
    public String saveStudent(Student student, Model model){
        System.out.println(student);
        if (studentService.saveStudent(student)){
            //保存学生成功
            model.addAttribute("saveStudentMsg","保存成功！");
            return "admin/studentManager";
        }
        model.addAttribute("saveStudentMsg","保存学生失败，已有此学号的学生！");
        return "admin/studentManager";
    }


    @RequestMapping("/prime")
    public String toPrime(){
        return "student/prime";
    }

}
