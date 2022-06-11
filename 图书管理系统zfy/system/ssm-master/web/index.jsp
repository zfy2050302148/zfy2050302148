<%--
  Created by IntelliJ IDEA.
  User: 74771
  Date: 2022/1/19
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
      <style>
          h3{
              width: 252px;
              height: 63px;
              margin: 252px auto;
              text-align: center;
              line-height: 63px;
              background: chocolate;
              border-radius: 10px;
          }
          a{
              text-decoration: none;
              color: black;
              font-size: 38px;
          }
      </style>
  </head>
  <body>
 <h3>
   <a href="${pageContext.request.contextPath}/book/allBook">进入书籍页面</a>
 </h3>
  </body>
</html>
