package cn.xinan.service;

import cn.xinan.domain.User;

/**
 * 登录业务层接口
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 17:06
 */
public interface LoginService {
    /**
     * 登录验证
     * @param user
     * @return
     */
    public boolean LoginOk(User user);

    /**
     * 在登录验证后使用此方法，保证user数据库中是有值的
     * 根据传进来的user条件查找user
     * @param user
     * @return
     */
    public User findUserByCondition(User user);
}
