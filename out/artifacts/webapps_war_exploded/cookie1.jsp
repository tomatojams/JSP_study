<%@ page language="java" contentType ="text/html; charset=UTF-8" %>
<%@ page import ="java.net.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>

<title> 쿠키의 생성 </title>
</head>
<body>
<h3> 쿠키를 생성하고, 클라이언트에 저장합니다. </h3>

<%
// 쿠키의 생성
Cookie cookie1 = new Cookie("userName",URLEncoder.encode("김지한","UTF-8"));
Cookie cookie2 = new Cookie("userEmail",URLEncoder.encode("tomatojams@naver.com","UTF-8"));


//유효기간 설정
cookie1.setMaxAge(60);
cookie2.setMaxAge(60*60);


//클라이언트에 저장
response.addCookie(cookie1);
response.addCookie(cookie2);

// 서버에 있는 쿠키를 출력
out.println(cookie1.getName() +"쿠키의 값은"+cookie1.getValue()+"<br>");
out.println(cookie2.getName() + "쿠키의 값은"+cookie2.getValue()+"<br>");



%>

</body>
</html>