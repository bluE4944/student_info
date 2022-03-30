package cn.xinan.service.impl;

import cn.xinan.dao.StudentDao;
import cn.xinan.domain.Student;
import cn.xinan.service.StudentService;
import cn.xinan.util.LayPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.swing.plaf.synth.SynthTableUI;
import java.util.List;

/**
 * 学生业务层实现类
 * @author LILr
 * @version 1.0
 * @date 2020/6/28 16:16
 */
@Service("studentService")
public class StudentServiceImpl implements StudentService {

    @Qualifier("studentDao")
    @Autowired
    private StudentDao studentDao;


    @Override
    public LayPage<Student> getStudentLayPage(LayPage<Student> layPage) {
        //从数据库获得总记录数并设置layPage对象的总记录的值
        layPage.setTotalRecord(studentDao.findTotal());
        if (layPage.getT()==null) {
            //student为空，创建一个对象
            layPage.setT(new Student());
        }
        //创建一个构建好的分页对象
        LayPage<Student> newLayPage = new LayPage<>(layPage.getPageNum(),layPage.getPageSize(),layPage.getTotalRecord(),layPage.getT());
        //从数据库获取学生集合
        List<Student> list = studentDao.findByStudentByLayPage(newLayPage);
        newLayPage.setList(list);
        return newLayPage;
    }

    @Override
    public boolean saveStudent(Student student) {
        //根据学号查找学生对象
        Student studentByNumber = studentDao.findStudentByNumber(student.getStudent_number());
        if (studentByNumber == null){
            //没有此学号的学生
            studentDao.saveStudent(student);
            //保存成功
            return true;
        }else {
            //有此学号的学生 保存失败
            return false;
        }
    }


}
