<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Styles/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../Styles/admin-all.css" />
    <script type="text/javascript" src="../Scripts/jquery-1.7.2.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui-1.8.22.custom.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../Styles/ui-lightness/jquery-ui-1.8.22.custom.css" />
    <script type="text/javascript">
        $(function () {
            var _this = $('.list').find('thead');
            //折叠
            _this.click(function () {
                var i = $(this).find('i');
                if (i.attr('class') == 'tip-down') { i.attr('class', 'tip-up') } else { i.attr('class', 'tip-down') }
                $(this).parent().find('tbody').toggle();
            })
            //添加
            // $('.add').click(function () {
            //     location.href = '/user/pay?userId='+$('#userId').text()+'payType='+$('#payType').text()+'&tempDate='+$('#expireDate').text();
            // })
        })
        function modify(userId) {
            var v1 = $('#userId'+userId).text();
            var v2 = $('#payType'+userId).text();
            var v3 = $('#expireDate'+userId).text();
            // alert(v1+v2+v3)
            // var tempStatus = $("#tempStatus"+accId).find("option:selected").text();
            // alert(v1 + v2 + v3 + tempStatus)
            // $("#status"+accId).text(tempStatus);
            // alert("申请,"+$('#accAppId'+accId).text()+$("#"+("tempStatus"+accId)).find("option:selected").text())
            location.href = '/user/pay?userId='+ v1 +'&payType='+ v2 +'&tempDate='+ v3;
        }
    </script>
</head>
<body>
<div class="alert alert-info">当前位置<b class="tip"></b>缴费<b class="tip"></b>缴费</div>

<table class="table table-striped table-bordered table-condensed list">
    <thead>
    <tr>
        <td colspan="6">缴费 <i class="tip-up"></i></td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>id </td>
        <td>用户id</td>
        <td>支付类型</td>
        <td>开始日期</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${pays}" var="pays">
        <tr class="demo">
            <td>${pays.payId}</td>
            <td id=userId${pays.userId}>${pays.userId}</td>
            <td id=payType${pays.userId}>${pays.payType}</td>
            <td id=expireDate${pays.userId}>${pays.expireDate}</td>
            <td><input type="button" class="accapp" value="缴费" onclick="modify(${pays.userId})"></td>
        </tr>
    </c:forEach>

    </tbody>
    <%--<tfoot>--%>
    <%--<tr>--%>
        <%--<td colspan="6"><a class="btn btn-mini btn-primary add">确认缴费</a></td>--%>
    <%--</tr>--%>
    <%--</tfoot>--%>
</table>
</body>
</html>