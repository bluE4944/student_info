package cn.xinan.test.dao;

import cn.xinan.dao.UserDao;
import cn.xinan.domain.User;
import cn.xinan.util.LayPage;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 14:23
 */
public class UserDaoTest {
    ClassPathXmlApplicationContext ac;
    UserDao userDao;

    @Before
    public void init(){
        ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        userDao = (UserDao) ac.getBean("userDao");
    }

    @After
    public void destroy() throws Exception{
        ac.close();
    }
    /**
     * 测试查找所有
     */
    @Test
    public void testFindAll(){
        List<User> users = userDao.findAll();
        for (User user:users) {
            System.out.println(user);
        }
    }

    /**
     * 测试根据条件查找用户
     */
    @Test
    public void testFindUserByCondition(){
        User user = new User();
        User user1 = userDao.findUserByCondition(user);
        System.out.println(user1);
    }

    /**
     * 测试查找总记录
     */
    @Test
    public void testFindTotal(){
        Integer total = userDao.findTotal();
        System.out.println(total);
    }

    /**
     * 测试根据分页对象条件查找用户
     */
    @Test
    public void testFindLayPage(){
        Integer total = userDao.findTotal();
        LayPage<User> layPage = new LayPage<User>(1,5,total);
        User user = new User();
        layPage.setT(user);
        System.out.println(layPage.getStartIndex()+layPage.getT().toString());
        List<User> users = userDao.findByUserByLayPage(layPage);
        for (User user1:users
             ) {
            System.out.println("没有条件前:"+user1);
        }
        user.setUser_name("admin");
        layPage.setT(user);
        users = userDao.findByUserByLayPage(layPage);
        for (User user1:users
        ) {
            System.out.println("有条件后:"+user1);
        }
    }
}
