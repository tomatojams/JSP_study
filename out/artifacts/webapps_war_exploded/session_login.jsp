<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>로그인처리</title>
</head>
<body>
<h3>전송받은 아이디와 패스워드를 검사해서 로그인 처리합니다.</h3>

<%
    // 전송받은 아이디와 패스워드를 변수에 저장

    String strId = request.getParameter("userId");
    String strPassword = request.getParameter("userPassword");

    if(strId.equals("tomatojams") && strPassword.equals("1234")){

        session.setAttribute("Login", "SUCCESS");
        out.println("로그인에 성공했습니다.<br>");

    }else{

        session.setAttribute("Login","FAIL");
        out.println("로그인에 실패했습니다.<br>");


    }

%>
</body>
</html>