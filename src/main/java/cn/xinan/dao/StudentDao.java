package cn.xinan.dao;

import cn.xinan.domain.Student;
import cn.xinan.util.LayPage;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 学生持久层接口
 * @author LILr
 * @version 1.0
 * @date 2020/6/27 23:44
 */
@Repository("studentDao")
public interface StudentDao {

    /**
     * 查找所有学生
     * @return 学生集合
     */
    public List<Student> findAll();

    /**
     *  根据学号查找学生
     * @param student_number 学生学号
     * @return  找到的学生对象
     */
    public Student findStudentByNumber(Integer student_number);

    /**
     * 根据id查找一个学生
     * @param student_id 学生id
     * @return 找到的学生对象
     */
    public Student findStudentById(Integer student_id);

    /**
     * 根据传进来的条件查找学生
     * @param student
     * @return
     */
    public List<Student> findStudentByCondition(Student student);

    /**
     * 保存学生
     * @param student
     */
    public void saveStudent(Student student);

    /**
     * 查找学生总记录数
     * @return 总记录条数
     */
    public Integer findTotal();

    /**
     * 根据id删除学生
     * @param student_id 学生id
     */
    public void deleteStudent(Integer student_id);

    /**
     * 根据传进来的分页对象，查找分页后的学生记录
     * @param layPage 分页对象
     * @return 学生集合
     */
    public List<Student> findByStudentByLayPage(LayPage<Student> layPage);

    /**
     * 更新学生信息
     * @param student
     */
    public void updateStudent(Student student);
}
