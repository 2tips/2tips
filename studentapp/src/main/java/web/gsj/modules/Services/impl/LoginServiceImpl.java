package web.gsj.modules.Services.impl;

import org.springframework.stereotype.Service;
import web.gsj.modules.Entity.User;
import web.gsj.modules.Entity.UserExample;
import web.gsj.modules.Mapper.UserMapper;
import web.gsj.modules.Services.LoginService;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {

    @Resource
    private UserMapper userMapper;

    public List<User> selectByExample(UserExample userExample){
        return userMapper.selectByExample(userExample);
    }

    public void addToUser(String username,String pwd){
        User user = new User();
        user.setUserName(username);
        user.setUserPwd(pwd);
        userMapper.insert(user);
    }

}
