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
            $("#tabs").tabs();
        })
    </script>
</head>
<body>
<div class="alert alert-info">当前位置<b class="tip"></b>缴费<b class="tip"></b>关于我们</div>
<div id="tabs">
    <ul>
        <li><a href="#tabs-1">功能需求1</a></li>
        <li><a href="#tabs-2">功能需求2</a></li>
        <li><a href="#tabs-3">功能需求3</a></li>
    </ul>
    <div id="tabs-1">
        <p>系统主要完成对有线电视缴费的管理，包括前台管理部、施工维修部和后台模块。系统可以完成对有线电视用户信息的浏览、查询、添加、删除、修改、报表以及户口信息打印等功能。</p>
    </div>
    <div id="tabs-2">
        <p>1、前台服务模块包括开户申请、故障申请、停机申请、缴费和修改用户信息。
            2、后台管理模块包括审核入网审核、故障审核、停机审核，还有添加员工信息、修改员工信息和员工的部门分配。</p>
    </div>
    <div id="tabs-3">
        <p>3、施工管理模块包括入网施工、故障施工、停机施工、施工查询。
            4、可对缴费情况进行简单的统计分析。</p>
    </div>
</div>

</body>
</html>
