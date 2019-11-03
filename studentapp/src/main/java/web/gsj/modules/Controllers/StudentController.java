package web.gsj.modules.Controllers;


import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import web.gsj.modules.Entity.Student;
import web.gsj.modules.Services.StudentService;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class StudentController {

    @Resource
    private StudentService studentService;

//    @RequestMapping("/showStudentInfo")
//    @ResponseBody
//    public String showStudentInfo(String username){
//        Student student = studentService.showStudentInfo(username);
//        if (student.getStuId() == null){
//            return "nodata";
//        }else {
//            return "'<td>'+"+student.getStuName()+"'</td>'+'<td>'+"+student.getStuPhone()+"'</td>'+'<td>'+"+student.getSex()+"'</td>'+'<td>'+"+
//                    student.getStuGrade()+"'</td>'+'<td>'+"+student.getStuDegree()+"'</td>'+'<td>'+"+student.getStuMajor()+"'</td>'+'<td>'+"+student.getStuDepartment()+"'</td>'";
//        }
//    }

    @RequestMapping("getStudentInfo")
    @ResponseBody
    public Object getStudentInfo(String username){
        Student student = studentService.showStudentInfo(username);

        List<Student> students = new ArrayList<>();
        students.add(student);
        Map map = new HashMap();
        map.put("result",200);
        map.put("item",students);
        return map;
    }
}
