<%-- 
    Document   : UpdateServlet
    Created on : 2017-10-23, 22:02:37
    Author     : biaobiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="/ZbiaoDemo/UpdateServlet">
            <p align="center">修改密码</p>
            
            <em style="color: red"> 
                ${requestScope.aaa}
            </em>
            <table align="center" border="3">
                <tr>
                    <td>用户名：</td>
                    <td><input type="text" name="username"</td>
                </tr>
                <tr>
                    <td>原密码：</td>
                    <td><input type="text" name="yuan"</td>
                </tr>
                <tr>
                    <td>新密码：</td>
                    <td><input type="password" name="xin"</td>
                </tr>
                <tr>
                    <td>确认密码：</td>
                    <td><input type="password" name="xin1"</td>
                </tr>
                <tr>
                    <td><input type="submit" value="确定"</td>
                    <td><input type="reset" value="重置"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
