<%@page import="shop.UpdateDB"%>
<%@page import="shop.InsertDB"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 정보 수정</title>
<%!

ResultSet getResultSet(String custno) {
	String dbURL = "jdbc:mysql://localhost:3306/shop";
	String dbUser = "root";
	String dbPassword = "";
	String query = "SELECT * FROM member_table01 where custno="+custno+";";
	ResultSet rs;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);
		Statement stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		return rs;
	} catch (Exception e) {
		return null;
	}
}
%>
<%
try{
	String tcustno=request.getParameter("custno");
	String tname=request.getParameter("name");
	String tphone=request.getParameter("phone");
	String taddress=request.getParameter("address");
	String tgrade=request.getParameter("grade");
	String tad=request.getParameter("ad");
	if(tname!=null && tphone!=null&& taddress!=null&& tgrade!=null&&tad!=null){
		UpdateDB up=new UpdateDB();
		up.update(tcustno, tname, tphone, taddress, tgrade, tad);
		out.print("<script>alert('수정 완료');location.href='memmod.jsp';</script>");
	}
}catch(Exception e){
}
%>
<style>
body{
	color: white;
}
</style>
</head>
<body>
<%
String custno=request.getParameter("custno");
String result = "";
ResultSet rs = getResultSet(custno);
while (rs.next()) {
		%>
		<form>
		회원번호<input type="text" name="custno" value="<%=rs.getString(1)%>" readonly="readonly"><br>
		회원이름<input type="text" name="name" value="<%=rs.getString(2)%>"><br>
		전화번호<input type="text" name="phone" value="<%=rs.getString(3)%>"><br>
		회원주소<input type="text" name="address" value="<%=rs.getString(4)%>"><br>
		가입날짜<input type="text" name="joindata" value="<%=rs.getString(5)%>" readonly="readonly"><br>
		회원등급<input type="text" name="grade" value="<%=rs.getString(6)%>" maxlength="1"><br>
		도시코드<input type="text" name="ad" value="<%=rs.getString(7)%>" maxlength="2"><br>
		<input type="submit" value="전송">
		<a href="memmod.jsp"></form><button type="button">뒤로가기</button></a>
		<%
}

%>
</body>
</html>