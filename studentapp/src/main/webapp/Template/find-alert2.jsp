<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/base.css"/>
    <script type="text/javascript" src="../Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="../Scripts/ChurAlert.min.js?skin=blue"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <script type="text/javascript" src="../Scripts/chur-alert.1.0.js"></script>
    <script type="text/javascript" src="../Scripts/tb.js"></script>
    <link rel="stylesheet" type="text/css" href="../Styles/ui-lightness/jquery-ui-1.8.22.custom.css"/>
    <link rel="stylesheet" type="text/css" href="../Styles/formui.css"/>
    <script type="text/javascript">
        $(function () {
            $(".datepicker").datepicker();
            $('.search').click(function () {
                location.href = '/searchEmpInfo2?empID2='+$('#empID2').val()+'&empName2='+$('#empName2').val()+'&empDepartment2='+$('#empDepartment2').val()+'&empPhone2='+$('#empPhone2').val();
            });
            $('#find').click(function () {
                $('#list').show();
            })
        })


    </script>
</head>
<body>
<div class="alert alert-info">当前位置<b class="tip"></b>查询界面<b class="tip"></b>员工信息</div>
<table class="tbform">
    <thead>
    <tr>
        <td colspan="6" class="auto-style2">&nbsp;请填写查询条件 </td>
    </tr>
    </thead>
    <tbody>

    <form action="/searchEmpInfo2" method="post"></form>
    <tr>
        <td class="tdl">员工id</td>
        <td class="detail">
            <input type="text" class="ipt" id="empId2"/>
        </td>
        <td class="tdl">员工姓名</td>
        <td class="td_detail">
            <input type="text"  class="ipt"  id="empName2"/></td>
        <td class="tdl">员工部门 </td>
        <td>
            <select class="ipt" id="empDepartment2">
                <option></option>
                <option>施工员工</option>
                <option>普通员工</option>
            </select>
        </td>
    </tr>
    <tr>
        <td class="tdl">员工电话 </td>
        <td class="detail">
            <input type="text" class="ipt" id="empPhone2"/>
        </td>
        <td colspan="6" align="middle">
            <input class="btn search" id="find" type="button" value="查询" />
    </tr>
    </tbody>
</table>
<table class="tb" id="list">
    <tbody>
    <tr>
        <th>员工id</th>
        <th>员工姓名</th>
        <th>性别</th>
        <th>电话 </th>
        <th>员工部门 </th>
        <th >操作</th>
    </tr>

    <form action="/updateToEmp" method="post">
        <c:forEach var="emp" items="${empInfos2}" varStatus="status">
            <script type="text/javascript">
                $('.update').click(function () {
                    var tdid = $("td.eid");
                    var tdname = $("td.ename");
                    var tdsex = $("td.esex");
                    var tdphone = $("td.ephone");
                    var tddepartment = $("td.edepartment");
                    location.href = '/updateToEmp?empID='+$("input[name=empId]",tdid).val()+'&empName='+$("input[name=empName]",tdname).val()+'&empSex='+$("input[name=empSex]",tdsex).val()+'&empDepartment='+$("input[name=empDepartment]",tddepartment).val()+'&empPhone='+$("input[name=empPhone]",tdphone).val();
                });
            </script>
            <tr>
                <td ><input type="text"  class="ipt eid" id="empId" name="empId" value="${emp.empId}" readonly></td>
                <td>${emp.empName}<input type="text" class="ipt ename" id="empName" name="empName"></td>
                <td>${emp.empSex}<input type="text" class="ipt esex" id="empSex" name="empSex"></td>
                <td>${emp.empPhone}<input type="text" class="ipt ephone" id="empPhone" name="empPhone"></td>
                <td>${emp.empDepartment}<input type="text" class="ipt edepartment" id="empDepartment" name="empDepartment"></td>
                <td><button class="btn btn-mini btn-danger update" type="submit">修改</button> </td>
            </tr>
        </c:forEach>

    </form>
    </tbody>
</table>

</body>
</html>
