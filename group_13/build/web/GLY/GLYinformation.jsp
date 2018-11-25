<%-- 
    Document   : GLYinformation
    Created on : 2017-12-14, 21:30:57
    Author     : Zbiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center" >管理员信息</h1>
        <table align="center" border="5" style="width: 30%">
            <tr>
                <td>用户名</td>
                <td>密码</td>
                <td>
                    电话
                </td>
                <td>
                    等级
                </td>
            </tr>
            <tr>
                <td>
                    ${sessionScope.name}
                </td>
                <td>
                    ${sessionScope.password}
                </td>
                <td>
                    ${sessionScope.tel}
                </td>
                <td>
                    ${sessionScope.gader}
                    
                </td>
            </tr>
        </table>
                    <p style="text-align: center;font-size: 20px"><a href="GLYfrist.jsp" >回到首页</a></p>
    </body>
</html>
