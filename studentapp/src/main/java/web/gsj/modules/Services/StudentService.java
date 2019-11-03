package web.gsj.modules.Services;

import org.springframework.stereotype.Service;
import web.gsj.modules.Entity.Student;
import web.gsj.modules.Entity.StudentExample;
import web.gsj.modules.Mapper.StudentMapper;

import javax.annotation.Resource;
import java.util.List;

@Service
public interface StudentService {

     /**
      * 查找
      */
     List<Student> selectByExample(StudentExample studentExample);

     /**
      * 添加个人信息
      * @param user_id
      * @param stu_name
      * @param stu_phone
      * @param sex
      * @param stu_grade
      * @param stu_degree
      * @param stu_major
      * @param stu_department
      */
     void addStudentInfo(Integer user_id,String stu_name,String stu_phone,String sex,
                               String stu_grade,String stu_degree,String stu_major,String stu_department);

     /**
      * 修改个人信息
      * @param user_id
      * @param stu_id
      * @param stu_name
      * @param stu_phone
      * @param sex
      * @param stu_grade
      * @param stu_degree
      * @param stu_major
      * @param stu_department
      */
     void updateStudentInfo(Integer user_id,String stu_id,String stu_name,String stu_phone,String sex,
                                  String stu_grade,String stu_degree,String stu_major,String stu_department);

     /**
      * 展示个人信息
      * @param username
      * @return
      */
     Student showStudentInfo(String username);


}
