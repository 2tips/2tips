<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" pageEncoding="UTF-8" %>
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
            // $(".datepicker").datepicker();
            // $('#list').hide();
            $('.search').click(function () {
                location.href = '/searchEmpInfo?empID='+$('#empID').val()+'&empName='+$('#empName').val()+'&empDepartment='+$('#empDepartment').val()+'&empPhone='+$('#empPhone').val();
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
    <form action="/searchEmpInfo" method="post">
        <tr>
            <td class="tdl">员工id</td>
            <td class="detail">
                <input type="text" class="ipt" id="empId"  />
            </td>
            <td class="tdl">员工姓名</td>
            <td class="td_detail">
                <input type="text"  class="ipt" id="empName"/></td>
            <td class="tdl">员工部门 </td>
            <td>
                <select class="ipt" id="empDepartment">
                    <option></option>
                    <option>施工员工</option>
                    <option>普通员工</option>
                </select>
            </td>
        </tr>
        <tr>
            <td class="tdl">员工电话 </td>
            <td class="detail">
                <input type="text" class="ipt" id="empPhone"/>
            </td>
            <td colspan="6" align="right">
                <input class="btn search" id="find" type="button" value="查询" />
                <input class="btn" type="button" value="清空" /></td>
        </tr>
    </form>

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

    </tr>
    <c:forEach var="emp" items="${empInfos}">
        <tr>
            <td>${emp.empId}</td>
            <td>${emp.empName}</td>
            <td>${emp.empSex}</td>
            <td>${emp.empPhone}</td>
            <td>${emp.empDepartment}</td>
        </tr>
    </c:forEach>
    <%--<tr>--%>
        <%--<td><a>       </a></td>--%>
        <%--<td> </td>--%>
        <%--<td>  </td>--%>
        <%--<td>  </td>--%>
        <%--<td> </td>--%>
        <%--<td>&nbsp;</td>--%>
        <%--<td>&nbsp;</td>--%>
        <%--<td>&nbsp;</td>--%>
    <%--</tr>--%>

    </tbody>
</table>

</body>
</html>
