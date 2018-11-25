<%-- 
    Document   : GLYfrist
    Created on : 2017-12-13, 21:11:23
    Author     : Zbiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>标爷视察工作</title>
    </head>
    <style>
    /*h1{
        text-align: center
    }*/
     header {
            width: 100%;
            height: 80px;
            /*background-color: #CCCCCC;*/
            background-image: url('1.10.jpg')
        }
        
        #div1 {
            width: 40%;
            float: left;
            text-align: left;
            padding-left: 20px;
        }
        
        #div2 {
            width: 50%;
            float: left;
            text-align: right;
            padding-right: 10px;
        }
        
        li {
            display: inline;
        }
        article {
            width: 100%;
            height: 1050px
        }
        
        aside {
            /*margin: 0 auto;*/
            width: 100%;
            height: 80px;
        }
        
        #as1 {
            width: 20%;
            height: 80px;
            background-color: #121212;
            margin-left: 20%;
            text-align: left;
            float: left;
        }
        
        #as2 {
            width: 20%;
            height: 80px;
            background-color: #121212;
            text-align: left;
            float: left;
        }
        
        #as3 {
            width: 20%;
            height: 80px;
            background-color: #121212;
            text-align: left;
            float: left;
        }
        /*#as4 {
            width: 20%;
            height: 80px;
            background-color: #121212;
            text-align: left;
            float: left;
        }*/
    </style>
    </head>
    <body>
        <header>
        <div id="div1">
            <h1>
                <a href="index.jsp" style="color: black">标爷管理数据</a>
            </h1>
        </div>
        <div id="div2">
            <ul style="padding-top: 15px">
                <li><a href="GLYinformation.jsp" style="color: #333333; font-family:arial; font-weight:bold;">${sessionScope.name}</a></li> |
                <li><a href="/ZbiaoDemo/ZhuXiaoServlet" style="color: #333333; font-family:arial; font-weight:bold;">注销</a></li>
                <a href="zhuxiao.jsp"></a>
            </ul>
        </div>
    </header>
    <article>

        <br><br>

        <aside>
            <div id="as1">
                <h2>
                    <!--<a href="video/lanqiu.mp4" target="Myiframe" style="padding-left: 100px;color: #FFF5EE">动作库</a>-->
                    <a href="GLYquest.jsp" target="Myiframe" style="padding-left: 100px;color: #FFF5EE">信息查询</a>
                </h2>

            </div>
            <div id="as2">
                <h2>
                    <a href="Update.jsp" target="Myiframe" style="padding-left: 100px;color: #FFF5EE">修改信息</a>
                </h2>

            </div>
            <div id="as3">
                <h2>
                    <a href="GLYdelete.jsp" target="Myiframe" style="padding-left: 100px;color: #FFF5EE">删除用户
                    </a>
                </h2>

            </div>
            <!--<div id="as4">
                <h2>
                    <a href="赛事视频.mp4" target="Myiframe" style="padding-left: 100px;color: #FFF5EE">教学视频
                    </a>
                </h2>

            </div>-->
        </aside>
        <section>
            <div id="se1">
                <iframe src="" name="Myiframe" width="60%" height="600px"  style="align-content: center;margin-left: 20%;">
                    
                </iframe>
            </div>
                
        </section>
            

    </article>
    </body>
</html>
