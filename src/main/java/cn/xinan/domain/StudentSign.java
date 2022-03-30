package cn.xinan.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 签到表实体类（是这样说的吗）
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 11:53
 */
public class StudentSign implements Serializable {
    private Integer sign_id;
    private Integer student_id;
    private Integer course_id;
    private Date sign_time;
    private Student student;
    private Course course;

    public Integer getSign_id() {
        return sign_id;
    }

    public void setSign_id(Integer sign_id) {
        this.sign_id = sign_id;
    }

    public Integer getStudent_id() {
        return student_id;
    }

    public void setStudent_id(Integer student_id) {
        this.student_id = student_id;
    }

    public Integer getCourse_id() {
        return course_id;
    }

    public void setCourse_id(Integer course_id) {
        this.course_id = course_id;
    }

    public Date getSign_time() {
        return sign_time;
    }

    public void setSign_time(Date sign_time) {
        this.sign_time = sign_time;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    @Override
    public String toString() {
        return "StudentSign{" +
                "sign_id=" + sign_id +
                ", student_id=" + student_id +
                ", course_id=" + course_id +
                ", sign_time=" + sign_time +
                ", student=" + student +
                ", course=" + course +
                '}';
    }
}
