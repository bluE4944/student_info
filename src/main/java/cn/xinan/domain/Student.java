package cn.xinan.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 学生实体类
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 11:34
 */
public class Student implements Serializable {
    private Integer student_id;
    private Integer student_number;
    private String student_name;
    private String student_sex;
    private Date student_birthday;

    public Integer getStudent_id() {
        return student_id;
    }

    public void setStudent_id(Integer student_id) {
        this.student_id = student_id;
    }

    public Integer getStudent_number() {
        return student_number;
    }

    public void setStudent_number(Integer student_number) {
        this.student_number = student_number;
    }

    public String getStudent_name() {
        return student_name;
    }

    public void setStudent_name(String student_name) {
        this.student_name = student_name;
    }

    public String getStudent_sex() {
        return student_sex;
    }

    public void setStudent_sex(String student_sex) {
        this.student_sex = student_sex;
    }

    public Date getStudent_birthday() {
        return student_birthday;
    }

    public void setStudent_birthday(Date student_birthday) {
        this.student_birthday = student_birthday;
    }

    @Override
    public String toString() {
        return "Student{" +
                "student_id=" + student_id +
                ", student_number='" + student_number + '\'' +
                ", student_name='" + student_name + '\'' +
                ", student_sex='" + student_sex + '\'' +
                ", student_birthday=" + student_birthday +
                '}';
    }
}
