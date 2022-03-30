package cn.xinan.service;

import cn.xinan.domain.Student;
import cn.xinan.util.LayPage;

import java.util.List;

/**
 * 学生业务层接口
 * @author LILr
 * @version 1.0
 * @date 2020/6/28 16:14
 */
public interface StudentService {

    /**
     * 根据前端传进来的分页数据，获得分页后的学生分页数据
     * @param layPage
     * @return
     */
    public LayPage<Student> getStudentLayPage(LayPage<Student> layPage);

    /**
     * 保存学生
     * @param student 前端传来的保存学生的对象
     * @return 保存成功与否
     */
    public boolean saveStudent(Student student);
}
