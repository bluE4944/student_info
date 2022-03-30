package cn.xinan.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 班级实体类
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 11:48
 */
public class Clazz implements Serializable {
    private Integer clazz_id;
    private Integer student_id;
    private Integer teacher_id;
    private String clazz_time;
    private Date clazz_start;
    private Date clazz_end;
    private Student student;
    private Teacher teacher;

    public Integer getClazz_id() {
        return clazz_id;
    }

    public void setClazz_id(Integer clazz_id) {
        this.clazz_id = clazz_id;
    }

    public Integer getStudent_id() {
        return student_id;
    }

    public void setStudent_id(Integer student_id) {
        this.student_id = student_id;
    }

    public Integer getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(Integer teacher_id) {
        this.teacher_id = teacher_id;
    }

    public String getClazz_time() {
        return clazz_time;
    }

    public void setClazz_time(String clazz_time) {
        this.clazz_time = clazz_time;
    }

    public Date getClazz_start() {
        return clazz_start;
    }

    public void setClazz_start(Date clazz_start) {
        this.clazz_start = clazz_start;
    }

    public Date getClazz_end() {
        return clazz_end;
    }

    public void setClazz_end(Date clazz_end) {
        this.clazz_end = clazz_end;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    @Override
    public String toString() {
        return "Clazz{" +
                "clazz_id=" + clazz_id +
                ", student_id=" + student_id +
                ", teacher_id=" + teacher_id +
                ", clazz_time='" + clazz_time + '\'' +
                ", clazz_start=" + clazz_start +
                ", clazz_end=" + clazz_end +
                ", student=" + student +
                ", teacher=" + teacher +
                '}';
    }
}
