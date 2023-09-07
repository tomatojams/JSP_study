<%@ page language="java" contentType="text/html;charset=utf-8" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("UTF-8"); %>

<html>
<head><title> 데이타베이스 연결 테스트 </title></head>

<body>
<h3>데이타베이스를 연결해서 값을 출력합니다. </h3>

<%

//JDBC 드라이버 로드
Class.forName("org.mariadb.jdbc.Driver");

// 데이타베이스 연결 커넥션 객체생성 conn 
Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/mydb", "root","1234");

// Sql문을 실행하기 위한 statement 객체를 생성
Statement stmt = conn.createStatement();

//데이타 가져올 SQL문을 실행
ResultSet rs = stmt.executeQuery("SELECT st_name,st_addr,st_major FROM student WHERE st_sex = '남'");
// 쿼리문 실행하고 결과를 rs 객체에 테이블 형태로 저장 포인터는 맨앞에
// rs.first() 첫번째 커서이동 rs.next() 다음 레코드로 이동
//stmt.excuteUpdate("DELETE FROM student WHERE st_addr ="서울"); 지우고나서 결과가 없는 명령어

//가져운 데이타를 화면출력
out.println("<table border =1>");
out.println("<tr><td>이름</td><td>주소</td><td>전공</td></tr>");
while (rs.next()){ // 다음레코드 커서가 처음 이전에 위치해있음
out.println("<tr>");
    out.println("<td>"+rs.getString("st_name") + "</td>");
   // out.println("<td>"+rs.getString("st_sex") + "</td>");
    out.println("<td>"+rs.getString("st_addr") + "</td>");
    out.println("<td>"+rs.getString("st_major") + "</td>");
   // out.println("<td>"+rs.getString("st_contact") + "</td>");
    out.println("</tr>");
}
out.println("</table>");

rs.close();
stmt.close();
conn.close();

%>
</body>
</html>
