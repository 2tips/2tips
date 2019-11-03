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
            $('.add').click(function () {
                location.href = '/addToInfo?name='+$('#userName').val()+'&sex='+$('#userSex').val()+'&card='+$('#userCard').val()+'&address='+$('#userAddress').val()+'&phone='+$('#userPhone').val()
                    +'&applystatus='+$('#applyStatus').val()+'&date='+$('#expireDate').val()+'&userstatus='+$('#userStatus').val();
            })

        })
    </script>
</head>
<body>
<div class="alert alert-info">当前位置<b class="tip"></b>信息更新<b class="tip"></b>添加用户信息</div>

<table class="table table-striped table-bordered table-condensed list">
    <thead>
    <tr>
        <td colspan="6">添加用户信息 <i class="tip-up"></i></td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>序号 </td>
        <td>用户id </td>
        <td>姓名 </td>
        <td>性别 </td>
        <td>证件号</td>
        <td>住址 </td>
        <td>电话 </td>
        <td>申请状态 </td>
        <td>申请日期 </td>
        <td>用户状态  </td>
        <td>用户权限</td>
    </tr>
    <tr class="demo">
        <td><input type="text" size="5" id="id"/></td>
        <td><input type="text" size="5" id="userId"/></td>
        <td><input type="text" size="5" id="userName"/></td>
        <td><input type="text" size="5" id="userSex"/></td>
        <td><input type="text" size="5" id="userCard"/></td>
        <td><input type="text" size="5" id="userAddress"/></td>
        <td><input type="text" size="5" id="userPhone"/></td>
        <td><input type="text" size="5" id="applyStatus"/></td>
        <td><input type="text" size="5" id="expireDate"/></td>
        <td><input type="text" size="5" id="userStatus"/></td>
        <td><input type="text" size="5" id="authority"/></td>
        <td>
    </tr>
    </tbody>
    <tfoot>
    <tr>
        <td colspan="6"><a class="btn btn-mini btn-primary add">添加</a></td>
    </tr>
    </tfoot>
</table>
</body>
</html>