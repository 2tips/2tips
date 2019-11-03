<%@page pageEncoding="UTF-8" isELIgnored="false" %>
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
                location.href = '/searchUserInfo?username='+$('#username').val()+'&status='+$('#status').val()+'&card='+$('#card').val();
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
<form action="/searchUserInfo" method="post">
    <tr>
        <td class="tdl">用户姓名</td>
        <td class="td_detail">
            <input type="text"  class="ipt" id="username"/></td>
        <td class="tdl">用户状态 </td>
        <td>
            <select class="ipt" id="status">
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
            <input type="text" class="ipt" id="card"/>
        </td>
        <td colspan="6" align="right">
            <input class="btn search" id="find" type="button" value="查询" />
            </td>
    </tr>
</form>
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
        <th>管理权限 </th>
    </tr>
    <c:forEach var="info" items="${userInfos}">
        <tr>
            <td>${info.id}</td>
            <td>${info.userId}</td>
            <td>${info.userName}</td>
            <td>${info.userSex}</td>
            <td>${info.userCard}</td>
            <td>${info.userAddress}</td>
            <td>${info.userPhone}</td>
            <td>${info.applyStatus}</td>
            <td>${info.expireDate}</td>
            <td>${info.userStatus}</td>
            <td>${info.authority}</td>
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
    <%--</tr>--%>
    <!--   <tr class="even">
          <td><a>HS301-2005000020 </a></td>
          <td>现金</td>
          <td>票据 </td>
          <td>负责人 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>产品国内差旅费单据 </td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td><a>HS301-2005000020 </a></td>
          <td>CDMA-国内市场部 </td>
          <td>现金 </td>
          <td>负责人 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr class="even">
          <td><a>HS301-2005000020 </a></td>
          <td>银行承兑汇票</td>
          <td>谭晓松 </td>
          <td>负责人 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td><a>HS301-2005000020 </a></td>
          <td>银行存款</td>
          <td>谭晓松 </td>
          <td>任务成员 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr class="even">
          <td><a>HS301-2005000020 </a></td>
          <td>1209NewPro</td>
          <td>谭晓松 </td>
          <td>任务成员 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td><a>HS301-2005000020 </a></td>
          <td>testqzw</td>
          <td>谭晓松 </td>
          <td>负责人 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr class="even">
          <td><a>HS301-2005000020 </a></td>
          <td>银行存款</td>
          <td>执行中 </td>
          <td>负责人 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td><a>HS301-2005000020 </a></td>
          <td>testqzw</td>
          <td>指派中 </td>
          <td></td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr class="even">
          <td><a>HS301-2005000020 </a></td>
          <td>银行承兑汇票</td>
          <td>谭晓松 </td>
          <td>负责人 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td><a>HS301-2005000020 </a></td>
          <td>银行承兑汇票</td>
          <td>谭晓松 </td>
          <td>负责人 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>产品国内差旅费单据 </td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr class="even">
          <td><a>HS301-2005000020 </a></td>
          <td>银行承兑汇票</td>
          <td>上级取消 </td>
          <td>负责人 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td><a>HS301-2005000020 </a></td>
          <td>银行承兑汇票</td>
          <td>谭晓松 </td>
          <td>负责人 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr class="even">
          <td><a>HS301-2005000020 </a></td>
          <td>银行承兑汇票</td>
          <td>执行中 </td>
          <td>负责人 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>
      <tr>
          <td><a>HS301-2005000020 </a></td>
          <td>测试产品项目p</td>
          <td>上级取消 </td>
          <td>负责人 </td>
          <td>0.00</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
      </tr>-->
    </tbody>
</table>
</body>
</html>
