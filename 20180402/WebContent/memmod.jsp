<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%!ResultSet getResultSet() {
		String dbURL = "jdbc:mysql://localhost:3306/shop";
		String dbUser = "root";
		String dbPassword = "";
		String query = "SELECT * FROM member_table01;";
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
	}%>

<style>
html, body {
	color:white;
	width: 100%;
	height: 100%;
	margin: 30px auto;
}

table, td {
	margin: auto;
	border: 1px solid white;
	border-collapse: collapse;
}

td {
	padding: 10px;
	width: 130px;
	text-align: center
}

.index {
	background: #ea8685;
}

#maincontent {
	text-align: center;
	float: center;
}
tr:hover{
	background: white;
	color: black;
	cursor: pointer;
}
</style>
</head>
<body>
	<div id='maincontent'>
		<h2>회원목록 조회 수정</h2>
		<p>
		<form>
			<table>
				<tr>
					<td class="index">회원번호</td>
					<td class="index">회원이름</td>
					<td class="index">전화번호</td>
					<td class="index">회원주소</td>
					<td class="index">가입날짜</td>
					<td class="index">회원등급</td>
					<td class="index">도시코드</td>
				</tr>
				<%
					String result = "";
					ResultSet rs = getResultSet();
					while (rs.next()) {
						result += "<tr onclick=\"location.href='mod.jsp?custno="+rs.getString(1)+"'\">";
						for (int i = 1; i <= 7; i++)
							result += "<td>" + rs.getString(i) + "</td>";
						result += "</tr>";
					}
					out.println(result);
				%>
			</table>
		</form>
		</p>
	</div>
</body>
</html>