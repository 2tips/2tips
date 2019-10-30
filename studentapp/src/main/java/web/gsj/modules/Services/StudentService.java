package web.gsj.modules.Services;

import org.springframework.stereotype.Service;
import web.gsj.modules.Entity.Student;
import web.gsj.modules.Entity.StudentExample;
import web.gsj.modules.Mapper.StudentMapper;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentService {

    @Resource
    private StudentMapper studentMapper;

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

}
