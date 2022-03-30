package cn.xinan.service.impl;

import cn.xinan.dao.UserDao;
import cn.xinan.domain.User;
import cn.xinan.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


/**
 * 登录业务层实现类
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 15:34
 */
@Service("loginService")
public class LoginServiceImpl implements LoginService {

    @Qualifier("userDao")
    @Autowired
    private UserDao userDao;

    @Override
    public boolean LoginOk(User user) {
        //根据条件查找用户
        User findUser =  userDao.findUserByCondition(user);
        if(findUser!=null){
            //有用户
            if(findUser.getUser_status()<=1){
                //是管理员
                return true;
            }
        }
        return false;
    }

    @Override
    public User findUserByCondition(User user) {
        return userDao.findUserByCondition(user);
    }
}
