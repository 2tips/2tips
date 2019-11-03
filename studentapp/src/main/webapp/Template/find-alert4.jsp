<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" pageEncoding="UTF-8" %>
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
                location.href = '/addToEmp?empName='+$('#empName').val()+'&empSex='+$('#empSex').val()+'&empPhone='+$('#empPhone').val()+'&empDepartment='+$('#empDepartment').val();
            })
        })
    </script>
</head>
<body>
<div class="alert alert-info">当前位置<b class="tip"></b>信息更新<b class="tip"></b>添加员工信息</div>

<table class="table table-striped table-bordered table-condensed list">
    <thead>
    <tr>
        <td colspan="6">添加员工信息 <i class="tip-up"></i></td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>姓名</td>
        <td>性别</td>
        <td>电话 </td>
        <td>部门</td>

    </tr>
    <tr class="demo">
        <td><input type="text" size="5" id="empName"/></td>
        <td><input type="text" size="5" id="empSex"/></td>
        <td><input type="text" size="5" id="empPhone"/></td>
        <td><input type="text" size="5" id="empDepartment"/></td>
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