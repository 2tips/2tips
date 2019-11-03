package web.gsj.modules.Controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
//import net.sf.json.JSONObject;
//import org.apache.taglibs.standard.lang.jstl.Constants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import web.gsj.modules.Entity.User;
import web.gsj.modules.Entity.UserExample;
import web.gsj.modules.Services.LoginService;
import web.gsj.modules.Utils.Constants;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/sys")
public class LoginController {

    @Resource
    private LoginService loginService;

    @RequestMapping("/login")
    @ResponseBody
    public String login(HttpSession session, String user) throws IOException {
        if (user == null || "".equals(user)){
            return "nodata";
        }else {
//            JSONObject userObject = JSONObject.fromObject(user);
//            User userObj = (User)userObject.toBean(userObject,User.class);

            ObjectMapper userObject = new ObjectMapper();
            User userObj = userObject.readValue(user,User.class);

            UserExample example = new UserExample();
            UserExample.Criteria criteria = example.createCriteria();
            criteria.andUserNameLike(userObj.getUserName());
            criteria.andUserPwdLike(userObj.getUserPwd());
            List<User> users = loginService.selectByExample(example);
            try {
                if (users != null && users.size()>0){
                    session.setAttribute(Constants.SESSION_USER,user);
                    return "success";
                }else {
                    return "uperror";
                }
            } catch (Exception e) {
                return "failed";
            }
        }
    }

    @RequestMapping("/register")
    @ResponseBody
    public String register(String user)throws IOException{
        if (user == null || "".equals(user)){
            return "nodata";
        } else {
            ObjectMapper userObject = new ObjectMapper();
            User userObj = userObject.readValue(user,User.class);

//             注册成功返回“success”
//             失败则返回“failed”
            return loginService.register(userObj.getUserName(),userObj.getUserPwd());
        }
    }


    @RequestMapping("/test")
    public String test(){
        return "/login.html";
    }
}
