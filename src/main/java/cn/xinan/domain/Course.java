package cn.xinan.domain;

import java.io.Serializable;

/**
 * 课程实体类
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 11:42
 */
public class Course implements Serializable {
    private Integer course_id;
    private String course_name;
    private String course_theme;

    public Integer getCourse_id() {
        return course_id;
    }

    public void setCourse_id(Integer course_id) {
        this.course_id = course_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getCourse_theme() {
        return course_theme;
    }

    public void setCourse_theme(String course_theme) {
        this.course_theme = course_theme;
    }

    @Override
    public String toString() {
        return "Course{" +
                "course_id=" + course_id +
                ", course_name='" + course_name + '\'' +
                ", course_theme='" + course_theme + '\'' +
                '}';
    }
}
