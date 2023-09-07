<%@ page language="java" contentType ="text/html; charset=UTF-8" %>
<%@ page import ="java.net.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>

<title> 쿠키값 읽어오기 </title>
</head>
<body>
<h3> 클라이언트의 요청과 함께 전송된 쿠키 값을 읽어옵니다. </h3>

<%
// 쿠키 값을 읽어와서 cookies[] 배열에 저장

Cookie[] cookies = request.getCookies(); // 실제 클라이언트의 쿠키

if(cookies != null){
    for(int i= 0; i<cookies.length;i++){
        out.println(cookies[i].getName() + "쿠키의 값은" + URLDecoder.decode(cookies[i].getValue())+ "<br>");
    }

} else {
    out.println("읽어온 쿠키가 없습니다.<br>");
}

//60초로 설정한 값들을 사라짐
//세션 생성시 자동으로 쿠키 하나 기록

%>

</body>
</html>