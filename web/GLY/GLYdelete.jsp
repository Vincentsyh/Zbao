<%-- 
    Document   : GLYdelete
    Created on : 2017-11-6, 15:52:55
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
        <form action="/ZbiaoDemo/DeleteServlet" method="post">
            <h2 style="text-align: center">删除用户</h2>
            <em style="color: red"> 
                ${requestScope.bbb}
            </em>
            <table align = "center" border="3">
                <tr>
                    <td>删除的用户名：</td>
                    <td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>管理员姓名：</td>
                    <td><input type="text" name="GLYname"</td>
                </tr>
                <tr>
                    <td>删除时间：</td>
                    <td><input type="date" name="data"</td>
                    
                </tr>
                <tr>
                    <td>删除理由：</td>
                    <td><textarea rows="4"cols="25"></textarea></td>
                </tr>
                <tr>
                    <td><input type="submit" value="提交"</td>
                    <td><input type="reset" value="重置"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
