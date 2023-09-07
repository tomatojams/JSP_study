
<%@ page language="java" contentType="text/html;charset=utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>

    <title>세션의 데이타 사용 </title>
</head>
<body>
<h3> 세션에 사용자 정의 속성과 값을 부여하고 읽어옵니다. </h3>

<%
    session.setAttribute("userName", "김지한");
    session.setAttribute("userEmail","somatojam19@cuk.edu");

    String strName =(String) session.getAttribute("userName");
    String strEmail =(String) session.getAttribute("userEmail");

    out.println("세션ID:"+ session.getId()+"<br>");
    out.println("접속자이름:" + strName + "<br>");
    out.println("접속자 이메일:"+ strEmail + "<br>");
 %>

</body>
</html>