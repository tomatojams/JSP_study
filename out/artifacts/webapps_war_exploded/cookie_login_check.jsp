<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
  <title>로그인 상태확인</title>
</head>
<body>
<h3>쿠키를 체크해서 현재 로그인 상태인지 확인</h3>

<%

  // 쿠키값을 읽어와서 cookies[] 배열에 저장
  Cookie[] cookies = request.getCookies();
  for(int i=0;i< cookies.length;i++){
    // 쿠키 중에서 이름이 Login인 경우
    if(cookies[i].getName().equals("Login")){
      //Login의 값이 "SUCCESS"인지 검사
      if(cookies[i].getValue().equals("SUCCESS"))
        out.println("현재 로그인한 상태입니다.<br>");
      else
        out.println("현재 로그인한 상태가 아닙니다<br>");
    }
  }

%>
</body>
</html>