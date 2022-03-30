package cn.xinan.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 老师实体类
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 11:37
 */
public class Teacher implements Serializable {
    private Integer teacher_id;
    private String teacher_name;
    private String teacher_phone;
    private String teacher_email;
    private Date teacher_birthday;

    public Integer getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(Integer teacher_id) {
        this.teacher_id = teacher_id;
    }

    public String getTeacher_name() {
        return teacher_name;
    }

    public void setTeacher_name(String teacher_name) {
        this.teacher_name = teacher_name;
    }

    public String getTeacher_phone() {
        return teacher_phone;
    }

    public void setTeacher_phone(String teacher_phone) {
        this.teacher_phone = teacher_phone;
    }

    public String getTeacher_email() {
        return teacher_email;
    }

    public void setTeacher_email(String teacher_email) {
        this.teacher_email = teacher_email;
    }

    public Date getTeacher_birthday() {
        return teacher_birthday;
    }

    public void setTeacher_birthday(Date teacher_birthday) {
        this.teacher_birthday = teacher_birthday;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "teacher_id=" + teacher_id +
                ", teacher_name='" + teacher_name + '\'' +
                ", teacher_phone='" + teacher_phone + '\'' +
                ", teacher_email='" + teacher_email + '\'' +
                ", teacher_birthday=" + teacher_birthday +
                '}';
    }
}
