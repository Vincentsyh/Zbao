<%-- 
    Document   : bookInformation
    Created on : 2017-12-14, 23:18:56
    Author     : Zbiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery-2.2.3.min.js"></script>
        <script src="galleria/jquery-2.2.3.min.js" type="text/javascript"></script>
        <script src="galleria/galleria-1.4.2.min.js"></script>
        <script src="galleria/themes/classic/galleria.classic.min.js"></script>
        <style>
            .picBox {
                width: 100%;
                height: 250px;
                /*background-color: black;*/
                margin: 0;
            }
            article {
                width: 40%;
                height: 50px;
                background-color:black;
                float: left;
            }
        </style>
    </head>
    <body>
        <article>
            <div class="picBox">
                <img src="phone/wenxue/1.jpg" alt=""/>
                <img src="phone/bookImage/1.jpg" alt=""/>
                <img src="phone/bookImage/2.jpg" alt=""/>
                <img src="phone/bookImage/3.jpg" alt=""/>
            </div>

            <script>
                /*
                 步骤：
                 1、导入jQuery文件
                 2、导入galleria核心js文件
                 3、导入galleria主题js文件
                 4、调用Galleria对象的run方法启动放置图片的div的图片库效 果
                 */

                $(document).ready(function () {
                    Galleria.run(".picBox", {autoplay: 2000, transition: 'flash'});
                    //transition：过度效果，有 fade, slide, flash, pulse, fadeslide等值
                    //autoplay：幻灯片自动播放，可跟true或一个时间（毫秒）

                });
            </script>

        </article>
      
        <div style="margin-left:  400px">
            <h1>${sessionScope.bookName}</h1>
            <ul>
            
                <li><p style="font-size: 20px;color: red">强哥专卖店<span style="color: black">(走过路过不要错过！)</span></p></li>
                <li><p style="font-size: 20px">￥ ${sessionScope.monry}</p></li>
            <li><p style="font-size: 20px">月销量：  123</p></li>
            </ul>
            <p>
            
            <form action="BuyServlet" method="post">
                <input value="立即购买" type="submit" style="float: left;font-size: 20px" />
            </form>
            
            <form action="ShopCarServlet" method="post">
                <input value="加入购物车" type="submit"style="margin-left: 10px;font-size: 20px" />
            </form>
            </p>
        </div>
        <hr/>
        
        <p style="text-align: center;word-spacing: 90px;font-size: 30px;background-color: graytext">
            <a href="">全部评论</a> <a href=""style="color: green">详细信息</a> <a href="">商品推荐</a>
        </p>
        产品参数：
        <p>产品名称：三国演义&emsp; &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;是否是套装：否&emsp;&emsp;&emsp; &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;书名：三国演义</p>
        <p> 定价：20.00&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;出版社名称：北京联合出版社&emsp;&emsp;  &emsp;&emsp;作者：罗贯中</p>
        <p> 书名：三国演义&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; &emsp;&emsp;&emsp; &emsp;ISBN编号：98778550673234</p>
        <img src="phone/bookImage/4.jpg" alt="" width="100%"/>
    </body>
</html>
