<%-- 
    Document   : XXCXquest
    Created on : 2017-11-10, 15:58:43
    Author     : Zbiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="text-align: center">所有用户信息</h1>
        <table border="1" align="center" style="width: 80%">
           
            
            <tr>
                <td>用户名</td> 
                <td>密码</td> 
                <td>昵称</td> 
                <td>性别</td> 
            </tr>
                    
            <c:forEach items="${requestScope.username}" var="l" varStatus="vs">
                <tr>
                    
                    <td>${l}</td>
                    <td>${requestScope.password.get(vs.index)}</td>
                    <td>${requestScope.nickname.get(vs.index)}</td>
                    <td>${requestScope.gander.get(vs.index)}</td>
                    
                </tr>
            </c:forEach>
            
        </table>
    </body>
</html>
