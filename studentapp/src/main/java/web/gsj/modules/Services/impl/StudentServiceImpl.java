package web.gsj.modules.Services.impl;

import org.springframework.stereotype.Service;
import web.gsj.modules.Entity.Student;
import web.gsj.modules.Entity.StudentExample;
import web.gsj.modules.Entity.User;
import web.gsj.modules.Entity.UserExample;
import web.gsj.modules.Mapper.StudentMapper;
import web.gsj.modules.Mapper.UserMapper;
import web.gsj.modules.Services.StudentService;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Resource
    private StudentMapper studentMapper;
    @Resource
    private UserMapper userMapper;

    public List<Student> selectByExample(StudentExample studentExample){
        return studentMapper.selectByExample(studentExample);
    }

    public void addStudentInfo(Integer user_id,String stu_name,String stu_phone,String sex,
                               String stu_grade,String stu_degree,String stu_major,String stu_department){
        Student student = new Student();
        student.setStuId(user_id.toString());
        student.setStuName(stu_name);
        student.setStuPhone(stu_phone);
        student.setSex(sex);
        student.setStuGrade(stu_grade);
        student.setStuDegree(stu_degree);
        student.setStuMajor(stu_major);
        student.setStuDepartment(stu_department);
        studentMapper.insertSelective(student);
    }

    public void updateStudentInfo(Integer user_id,String stu_id,String stu_name,String stu_phone,String sex,
                                  String stu_grade,String stu_degree,String stu_major,String stu_department){
        Student student = new Student();
        student.setStuId(user_id.toString());
        student.setStuName(stu_name);
        student.setStuPhone(stu_phone);
        student.setSex(sex);
        student.setStuGrade(stu_grade);
        student.setStuDegree(stu_degree);
        student.setStuMajor(stu_major);
        student.setStuDepartment(stu_department);
        studentMapper.updateByPrimaryKeySelective(student);
    }

    public Student showStudentInfo(String username){
        Integer user_id = selectByUsername(username);
        Student student = new Student();
        student.setUserId(user_id);
        StudentExample example = new StudentExample();
        StudentExample.Criteria criteria = example.createCriteria();
        criteria.andUserIdEqualTo(user_id);
        List<Student> students = studentMapper.selectByExample(example);
        student = students.get(0);
        return student;
    }



    private Integer selectByUsername(String username){
        User student = new User();
        student.setUserName(username);
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andUserNameLike(username);
        List<User> users = userMapper.selectByExample(userExample);
        return users.get(0).getUserId();
    }

}
