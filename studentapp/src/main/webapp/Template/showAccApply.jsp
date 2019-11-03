<%--
  Created by IntelliJ IDEA.
  User: WilliamL
  Date: 2019/7/18
  Time: 15:34
  To change this template use File | Settings | File Templates.
--%>
<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>开户审核</title>
    <link rel="stylesheet" type="text/css" href="../Styles/formui.css" /><link rel="stylesheet" type="text/css" href="../Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="../Styles/admin-all.css" />
    <script type="text/javascript" src="../Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
    <script type="text/javascript" src="../Scripts/tb.js"></script>
    <script type="text/javascript" src="../Scripts/acc.js"></script>
    <script type="text/javascript">
        // $(function () {
        //     $('.accapp').click(function () {
        //         alert("申请"+$('#accAppId').text()+$("#tempStatus").find("option:selected").text())
        //         window.location.href = '/apply/examAccApply?accId='+$('#accAppId').text()+'&userId='+$('#userId').text()
        //             +'&payType='+$('#payType').text()+'&status='+$("#tempStatus").find("option:selected").text();
        //     });
        // })
        function modify(accId,userId) {
            var v1 = $('#accAppId'+accId).text();
            var v2 = $('#userId'+userId).text();
            var v3 = $('#payType'+accId).text();
            var tempStatus = $("#tempStatus"+accId).find("option:selected").text();
            alert(v1 + v2 + v3 + tempStatus)
            // $("#status"+accId).text(tempStatus);
            // alert("申请,"+$('#accAppId'+accId).text()+$("#"+("tempStatus"+accId)).find("option:selected").text())
            window.location.href = '/apply/examAccApply?accId='+ v1 +'&userId='+ v2 +'&payType='+ v3 +'&status='+ tempStatus;
        }
    </script>
</head>
<body>
<div></div>
<div class="alert alert-info">当前位置<b class="tip"></b>审核界面<b class="tip"></b>审核申请</div>

<table class="tbform">
    <form action="/apply/findAccApply" method="post">
        <thead>
        <tr>
            <td colspan="6" class="auto-style2">&nbsp;请填写查询条件 </td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td class="tdl">申请单号</td>
            <td class="td_detail">
                <input id="text" name="accId"/></td>
            <td colspan="6" align="left">
                <input class="btn" id="find" type="submit" value="查询" />
        </tr>
        </tbody>
    </form>
</table>
<table class="tb" id="list">
    <tr>
        <th>申请单号</th>
        <th>用户编号</th>
        <th>用户姓名</th>
        <th>用户性别</th>
        <th>身份证号</th>
        <th>用户住址</th>
        <th>电话号码</th>
        <th>套餐类型</th>
        <th>申请状态</th>
        <th>操作</th>
    </tr>
    <c:forEach var="applies" items="${applies}">
        <tr>
            <td id=accAppId${applies.accId}>${applies.accId}</td>
            <td id=userId${applies.userId}>${applies.userId}</td>
            <td>${applies.name}</td>
            <td>${applies.sex}</td>
            <td>${applies.card}</td>
            <td>${applies.address}</td>
            <td>${applies.phone}</td>
            <td id=payType${applies.accId}>${applies.payType}</td>
            <td id=status${applies.accId}>${applies.status}</td>
            <td>
                <select id=tempStatus${applies.accId}>
                    <option>审核通过</option>
                    <option>审核不通过</option>
                </select>
                <input type="button" class="accapp" value="修改" onclick="modify(${applies.accId},${applies.userId})">
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
