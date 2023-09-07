<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
    <title>로그인 상태확인</title>
</head>
<body>
<h3>쿠키를 체크해서 현재 로그인 상태인지 확인</h3>

<%

    String strCheck =(String)session.getAttribute("Login");

    if(strCheck != null) {
        if (strCheck.equals("SUCCESS"))
            out.println("현재 로그인한 상태입니다.<br>");
        else
            out.println("현재 로그인한 상태가 아닙니다.<br>");
    }else{
        out.println("현재 로그인한 상태가 아닙니다.<br>");
    }
    %>
</body>
</html>