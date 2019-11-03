<%@page isELIgnored="false" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Styles/admin-all.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/base.css"/>
    <script type="text/javascript" src="../Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/formui.css"/>
    <script type="text/javascript" src="../Scripts/tb.js"></script>
    <script type="text/javascript">
        $(function () {
            // $('#list').hide();
            $('.search').click(function () {
                location.href = '/searchUserInfo2?username='+$('#username').val()+'&status='+$('#status').val()+'&card='+$('#card').val();
            });
            $('#find').click(function () {
                $('#list').show();
            })
        })

    </script>
</head>
<body>
<div class="alert alert-info">当前位置<strong class="tip"></strong>查询界面<strong class="tip"></strong>用户信息</div>
<table class="tbform">
    <thead>
    <tr>
        <td colspan="6" class="auto-style2">&nbsp;请填写查询条件 </td>
    </tr>
    </thead>
    <tbody>
    <form action="/searchUserInfo2" method="post">

    </form>
    <tr>
        <td class="tdl">用户姓名</td>
        <td class="td_detail">
            <input type="text"  class="ipt" id="username2"/></td>
        <td class="tdl">用户状态 </td>
        <td>
            <select class="ipt" id="status2">
                <option></option>
                <option>正常</option>
                <option>欠费</option>
                <option>开户中</option>
            </select>
        </td>
    </tr>
    <tr>
        <td class="tdl">证件号 </td>
        <td class="detail">
            <input type="text" class="ipt" id="card2"/>
        </td>

        <td colspan="6" align="middle">
            <input class="btn search" id="find" type="button" value="查询" />
        </td>
    </tr>
    </tbody>
</table>
<table class="tb" id="list">
    <tbody>
    <tr>
        <th>序号 </th>
        <th>用户id</th>
        <th>用户名</th>
        <th>性别</th>
        <th>证件号 </th>
        <th>用户地址 </th>
        <th>电话 </th>
        <th>申请状态 </th>
        <th>日期 </th>
        <th>用户状态 </th>
        <th>操作</th>
    </tr>
    <c:forEach var="info" items="${userInfos}">
        <script type="text/javascript">
            $('.update').click(function () {
                var tdid = $("td.uid");
                var tduiu = $("td.userid");
                var tduname = $("td.uname");
                var tdsex = $("td.usex");
                var tducard = $("td.ucard");
                var tduadd = $("td.uaddress");
                var tdphone = $("td.uphone");
                var tduapp = $("td.uapplystatus");
                var tdudate = $("td.udate");
                var tdustatus = $("td.ustatus");
                location.href = '/updateToUserInfo?empID='+$("input[name=empId]",tdid).val()+'&empName='+$("input[name=empName]",tdname).val()+'&empSex='+$("input[name=empSex]",tdsex).val()+'&empDepartment='+$("input[name=empDepartment]",tddepartment).val()+'&empPhone='+$("input[name=empPhone]",tdphone).val();
            });
        </script>
        <tr>
            <td><input type="text" class="ipt uid" id="id" name="id" readonly value="${info.id}"></td>
            <td><input type="text" class="ipt userid" id="userid" name="userid" value="${info.userId}" readonly ></td>
            <td>${info.userName}<input type="text" class="ipt uname" id="userName" name="userName" ></td>
            <td>${info.userSex}<input type="text" class="ipt usex" id="userSex" name="userSex" ></td>
            <td>${info.userCard}<input type="text" class="ipt ucard" id="userCard" name="userCard" ></td>
            <td>${info.userAddress}<input type="text" class="ipt uaddress" id="userAddress" name="userAddress" ></td>
            <td>${info.userPhone}<input type="text" class="ipt uphone" id="userPhone" name="userPhone" ></td>
            <td><input type="text" class="ipt uapplystatus" id="applyStatus" name="applyStatus" value="${info.applyStatus}" readonly></td>
            <td><input type="text" class="ipt udate" id="expireDate" name="expireDate" value="${info.expireDate}" readonly></td>
            <td><input type="text" class="ipt ustatus" id="userStatus" name="userStatus" value="${info.userStatus}" readonly></td>
            <td><a class="btn btn-mini btn-danger update">修改</a> <a class="btn btn-mini btn-danger">删除</a></td>
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
        <%--<td>  </td>--%>
        <%--<td>&nbsp;</td>--%>
        <%--<td>&nbsp;</td>--%>
        <%--<td><a class="btn btn-mini btn-danger">修改</a> <a class="btn btn-mini btn-danger">删除</a></td>--%>
    <%--</tr>--%>
    </tbody>
</table>
</body>
</html>
