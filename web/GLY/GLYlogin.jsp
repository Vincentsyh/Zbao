<%-- 
    Document   : GLYlogin
    Created on : 2017-12-13, 21:09:11
    Author     : Zbiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>管理员</title>
    </head>
    <body>
        <p style="text-align: center"> 
            <em style="color: red;text-align: center"> 
                ${requestScope.msg}
            </em>
           </p>
                <form  action="/ZbiaoDemo/GLYservlet" method="post">
                    <p align="center">管理员登录</p>
                    <table align="center" border="2" style="width: 20%">

                        <tr>
                            <td>用户名：</td>
                            <td><input type="text" name="username"/></td>
                        </tr>
                        <tr>
                            <td>密&emsp;码：</td>
                            <td><input type="password" name="password"/></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="登录"/></td>
                            <td><input type="reset" value="重置"/></td>
                        </tr>
                 

            </table>

        </form>

    </body>
</html>
