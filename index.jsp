<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,
    inital-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>
<div>
    欢迎：滕枝含
    <form action="${pageContext.request.contextPath}/Jsp/viewall.jsp" method="post">
        <button class="btn1">查看所有
            <span></span><span></span>
            <span></span>
            <span></span>
        </button>
    </form>
    <form action="${pageContext.request.contextPath}/Jsp/addvideo.jsp" method="post">
        <button class="btn1">添加
            <span></span><span></span>
            <span></span>
            <span></span>
        </button>
    </form>
    <form action="${pageContext.request.contextPath}/usre/Loginout" method="post">
        <button class="btn">注销
            <span></span><span></span>
            <span></span>
            <span></span>
        </button>
    </form>

    <ul class="main">
        <c:forEach var="video" items="${videos}">
        <li>
            <form action="${pageContext.request.contextPath}/user/videofind"  method="post">
                <input type="hidden" name="id" value="${video.id}">
            <div class="flag">${video.name}</div>
            <input type="image"  src="/images/${video.jpgpath}" >
            </form>
        </li>
        </c:forEach>
    </ul>

</div>

</body>
</html>
