<%-- 
    Document   : GLYquest
    Created on : 2017-11-10, 14:45:18
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
        <h1 align="center">查询信息</h>
        <form action="/ZbiaoDemo/QuestUserXX" method="post">
            要查询的用户名：<input type="text" name="username">
            <input type="submit" value="查询"/><br>
            <a href="/ZbiaoDemo/XXCXServlet">查询所有用户的信息</a>
        </form>
    </body>
</html>
