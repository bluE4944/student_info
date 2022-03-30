package cn.xinan.domain;

import java.io.Serializable;

/**
 * 家长实体类
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 11:40
 */
public class Parent implements Serializable {
    private Integer parent_id;
    private Integer student_id;
    private String parent_named;
    private String parent_phone;
    private Student student;

    public Integer getParent_id() {
        return parent_id;
    }

    public void setParent_id(Integer parent_id) {
        this.parent_id = parent_id;
    }

    public Integer getStudent_id() {
        return student_id;
    }

    public void setStudent_id(Integer student_id) {
        this.student_id = student_id;
    }

    public String getParent_named() {
        return parent_named;
    }

    public void setParent_named(String parent_named) {
        this.parent_named = parent_named;
    }

    public String getParent_phone() {
        return parent_phone;
    }

    public void setParent_phone(String parent_phone) {
        this.parent_phone = parent_phone;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    @Override
    public String toString() {
        return "Parent{" +
                "parent_id=" + parent_id +
                ", student_id=" + student_id +
                ", parent_named='" + parent_named + '\'' +
                ", parent_phone='" + parent_phone + '\'' +
                ", student=" + student +
                '}';
    }
}
