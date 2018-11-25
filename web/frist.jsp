<%-- 
    Document   : frist
    Created on : 2017-12-6, 19:59:35
    Author     : Zbiao
--%>

<%@page import="bean.LoginBean"%>
<%@page import="frist.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            header{
                background-color:#F8F8F8;
                height:110px;
                border:1px solid #F0F0F0;
            }

            header span{
                float:left;
                margin-top:7px;
            }
            body{
                font-famile:"微软雅黑";

            }
            header a{
                float:right;
                margin-top:2px;
                margin-left:30px;
            }
        </style>
    </head>
    <body>
        <header>
            <%
                if (User.username == null) {

//                    if (session.getAttribute("name") == null) {

            %>
            <a href="login/login.xhtml"> 登录</a>
            <a href="register/Register.xhtml">注册</a>
            <%                } else {
            %>
            <a href="ZhuXiaoServlet">注销</a>
            <a href="information.xhtml"><%=User.username%></a>

            <%
                }
            %>
            <div class="center">

                <span><img src="phone/2.jpg" alt="商城" width="8%" height="5%" style="margin-left: 150px;margin-top: 0px" /></span>

                <h1><span style="text-align: center; color: palevioletred">强哥卖货</span></h1>

            </div>
        </header>
        <hr>

        
    
    
    <article>

        <aside>

        <p style="text-align: center;word-spacing: 30px;">
            <a href="" target="Myiframe">文学</a>
            <a href="" target="Myiframe">生活</a>
            <a href="" target="Myiframe">计算机</a>
            <a href="" target="Myiframe">外语</a>
            <a href="" target="Myiframe">励志</a>
            <a href="" target="Myiframe">经营</a>
            <a href="" target="Myiframe">少儿</a>
            <a href="" target="Myiframe">艺术</a>
            <a href="" target="Myiframe">科技</a>
            <a href="" target="Myiframe">原版</a>
            <a href="" target="Myiframe">生活百科</a>
            <a href="" style="color: green" target="Myiframe">全部商品目录</a>
            
        <p style="background-color: green">
            <span style="margin-left:  70%">

                <input  type="text" id="sousu" placeholder="请输入书名"/>
                <input type="submit" value="搜索" />
            </span>
        </p>
    </p>
        </aside>
        <section>
            <div id="se1">
                <iframe src="newjsf.xhtml" name="Myiframe" width="60%" height="1000px"  style="align-content: center;margin-left: 20%;">
                    
                </iframe>
            </div>
                
        </section>
            

    </article>

        
</body>
</html>
