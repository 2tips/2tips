package web.gsj.modules.Services;

import org.springframework.stereotype.Service;
import web.gsj.modules.Entity.User;
import web.gsj.modules.Entity.UserExample;
import web.gsj.modules.Mapper.UserMapper;

import javax.annotation.Resource;
import java.util.List;


public interface LoginService {


    List<User> selectByExample(UserExample userExample);

/**
    注册
*/


     void addToUser(String username,String pwd);
//    {
//        User user = new User();
//        user.setUserName(username);
//        user.setUserPwd(pwd);
//        userMapper.insert(user);
//    }



}
