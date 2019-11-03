<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>入网施工</title>
    <link rel="stylesheet" type="text/css" href="../Styles/formui.css" /><link rel="stylesheet" type="text/css" href="../Styles/base.css"/>
    <link rel="stylesheet" type="text/css" href="../Styles/admin-all.css" />
    <script type="text/javascript" src="../Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
    <script type="text/javascript" src="../Scripts/tb.js"></script>
    <script type="text/javascript" src="../Scripts/acc.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.test').click(function () {
                alert("订单号"+$('#accId').text()+$("#tempStatus").find("option:selected").text())
                window.location.href = '/build/changeAccStatus?accId='+$('#accId').text()+'&status='+$("#tempStatus").find("option:selected").text();
            });
        })
    </script>
</head>
<body>
<div></div>
<div class="alert alert-info">当前位置<b class="tip"></b>查询界面<b class="tip"></b>施工查询</div>
<table class="tbform">
    <form action="/build/findAccBuild" method="post">
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
<tbody>
<tr>
    <th>施工编号</th>
    <th>申请单号</th>
    <th>施工状态</th>
    <th>操作</th>
</tr>
<c:forEach var="accBuildes" items="${accBuildes}">
    <tr>
        <td>${accBuildes.id}</td>
        <td id="accId">${accBuildes.accId}</td>
        <td>${accBuildes.status}</td>
        <td>
            <select id="tempStatus">
                <option>施工完成</option>
                <option>施工失败</option>
            </select>
            <input type="button" class="test" value="修改">
        </td>
    </tr>
</c:forEach>

</tbody>
</table>
</body>
</html>