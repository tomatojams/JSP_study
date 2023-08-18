<%@ page language="java" contentType="text/html;charset=utf-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head>

<title> 세션의 생성 </title>
</head>
<body>
<h3> 세션정보를 보여줍니다. </h3>

<table border =1>
<tr>
    <td> 새로운세션 여부 </td>
    <td><%=session.isNew()%></td>
</tr>
<tr>
    <td> 세션 아이디 출력</td>
    <td><%=session.getId()%></td>
</tr>
<tr>
    <td>세션 생성시간 출력</td>
    <td><%=new java.util.Date(session.getCreationTime()).toString()%></td>
</tr>
<tr>
    <td>마지막 접속시간 출력</td>
    <td><%=new java.util.Date(session.getLastAccessedTime()).toString()%></td>
</tr>
<tr>
    <td>세션 ACtive 출력</td>
    <td><%=session.getMaxInactiveInterval()%></td>
</tr>
</table>

</body>
</html>