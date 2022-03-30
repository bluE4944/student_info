package cn.xinan.test.dao;

import cn.xinan.dao.StudentDao;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * 测试学生持久层
 * @author LILr
 * @version 1.0
 * @date 2020/6/28 11:07
 */
public class StudentDaoTest {
    private ClassPathXmlApplicationContext ac  ;
    private StudentDao studentDao;

    public void init(){
        ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        studentDao = (StudentDao) ac.getBean("studentDao");
    }

    @Test
    public void testFindAll(){

    }
}
