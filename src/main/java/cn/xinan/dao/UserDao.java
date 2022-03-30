package cn.xinan.dao;

import cn.xinan.domain.User;
import cn.xinan.util.LayPage;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用户持久层接口
 * @author LILr
 * @version 1.0
 * @date 2020/6/26 10:40
 */
@Repository("userDao")
public interface UserDao {

    /**
     * 查找所有用户
     * @return
     */
    public List<User> findAll();

    /**
     * 根据user_id查找用户
     * @param user_id
     * @return
     */
    public User findUserById(Integer user_id);

    /**
     * 根据条件动态查找用户
     * @param user
     * @return
     */
    public User findUserByCondition(User user);

    /**
     * 获取用户总记录数
     * @return
     */
    public Integer findTotal();

    /**
     * 保存用户
     * @param user
     */
    public void saveUser(User user);

    /**
     * 根据id删除用户
     * @param user_id
     */
    public void deleteUser(Integer user_id);

    /**
     * 跟据传进来的分页对象查询分页后的用户数据
     * @param layPage
     * @return
     */
    public List<User> findByUserByLayPage(LayPage<User> layPage);


}
